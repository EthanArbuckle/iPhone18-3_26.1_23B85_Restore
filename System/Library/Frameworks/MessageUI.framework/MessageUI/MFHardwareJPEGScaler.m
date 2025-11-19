@interface MFHardwareJPEGScaler
- (BOOL)_decodeImageToIOSurface;
- (BOOL)_isJPEGImage:(CGImageSource *)a3;
- (BOOL)scaleImageToFitLargestDimension:(id)a3 dataConsumer:(id)a4;
- (MFHardwareJPEGScaler)initWithImageData:(id)a3 imageSource:(CGImageSource *)a4;
- (void)dealloc;
@end

@implementation MFHardwareJPEGScaler

- (MFHardwareJPEGScaler)initWithImageData:(id)a3 imageSource:(CGImageSource *)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = MFHardwareJPEGScaler;
  v8 = [(MFHardwareJPEGScaler *)&v15 init];
  if (v8 && MGGetBoolAnswer() && [(MFHardwareJPEGScaler *)v8 _isJPEGImage:a4])
  {
    objc_storeStrong(&v8->_imageData, a3);
    v9 = CGImageSourceCopyPropertiesAtIndex(a4, 0, 0);
    v8->_imageProperties = v9;
    v10 = [CFDictionaryGetValue(v9 *MEMORY[0x1E696DED8])];
    v11 = [CFDictionaryGetValue(v8->_imageProperties *MEMORY[0x1E696DEC8])];
    v13 = v10 < 8185 && v11 < 4093;
    v8->_canHardwareScaleImage = v13;
  }

  return v8;
}

- (void)dealloc
{
  imageProperties = self->_imageProperties;
  if (imageProperties)
  {
    CFRelease(imageProperties);
  }

  ioSurfaceRef = self->_ioSurfaceRef;
  if (ioSurfaceRef)
  {
    CFRelease(ioSurfaceRef);
  }

  v5.receiver = self;
  v5.super_class = MFHardwareJPEGScaler;
  [(MFHardwareJPEGScaler *)&v5 dealloc];
}

- (BOOL)_isJPEGImage:(CGImageSource *)a3
{
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:CGImageSourceGetType(a3)];
  v4 = [v3 conformsToType:*MEMORY[0x1E6982E58]];

  return v4;
}

- (BOOL)_decodeImageToIOSurface
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [v3 initWithObjectsAndKeys:{*MEMORY[0x1E695E4D0], *MEMORY[0x1E6993BD0], 0}];
  v5 = MEMORY[0x1BFB4B040](self->_imageData, v4, &self->_ioSurfaceRef);
  if (v5)
  {
    self->_canHardwareScaleImage = 0;
  }

  v6 = v5 != 0;

  return v6;
}

- (BOOL)scaleImageToFitLargestDimension:(id)a3 dataConsumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_canHardwareScaleImage || [v6 intValue] > 4092)
  {
    goto LABEL_3;
  }

  ioSurfaceRef = self->_ioSurfaceRef;
  if (!ioSurfaceRef)
  {
    if ([(MFHardwareJPEGScaler *)self _decodeImageToIOSurface])
    {
LABEL_3:
      v8 = 0;
      goto LABEL_23;
    }

    ioSurfaceRef = self->_ioSurfaceRef;
  }

  pixelTransferSessionOut = 0;
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], ioSurfaceRef, 0, &pixelBufferOut);
  VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  Width = IOSurfaceGetWidth(self->_ioSurfaceRef);
  IOSurfaceGetHeight(self->_ioSurfaceRef);
  buffer = 0;
  [v6 intValue];
  pixelBuffer = 0;
  if (Width < 4093)
  {
    FigCreateIOSurfaceBackedCVPixelBuffer();
    VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, pixelBuffer);
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
  }

  else
  {
    destinationBuffer = 0;
    FigCreateIOSurfaceBackedCVPixelBuffer();
    VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, 0);
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
    FigCreateIOSurfaceBackedCVPixelBuffer();
    VTPixelTransferSessionTransferImage(pixelTransferSessionOut, 0, pixelBuffer);
    CVPixelBufferRelease(0);
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  CFRetain(IOSurface);
  CVPixelBufferRelease(pixelBuffer);
  v12 = objc_alloc(MEMORY[0x1E695DF20]);
  LODWORD(v13) = *"fff?";
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v15 = [v12 initWithObjectsAndKeys:{v14, *MEMORY[0x1E696D338], 0}];

  LODWORD(destinationBuffer) = 0;
  v16 = MEMORY[0x1BFB4B020](IOSurface, v15, &buffer, &destinationBuffer);
  v8 = v16 == 0;
  if (v16)
  {
    if (!IOSurface)
    {
      goto LABEL_18;
    }
  }

  else
  {
    IOSurfaceLock(buffer, 1u, 0);
    v17 = objc_alloc(MEMORY[0x1E69AD6B0]);
    BaseAddress = IOSurfaceGetBaseAddress(buffer);
    v19 = [v17 initWithBytesNoCopy:BaseAddress length:destinationBuffer freeWhenDone:0];
    if (self->_imageProperties)
    {
      EXIFJPEGData = CGImageCreateEXIFJPEGData();
      [v7 appendData:EXIFJPEGData];
    }

    else
    {
      [v7 appendData:v19];
    }

    IOSurfaceUnlock(buffer, 1u, 0);

    if (!IOSurface)
    {
      goto LABEL_18;
    }
  }

  CFRelease(IOSurface);
LABEL_18:
  if (buffer)
  {
    CFRelease(buffer);
  }

  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

LABEL_23:
  return v8;
}

@end