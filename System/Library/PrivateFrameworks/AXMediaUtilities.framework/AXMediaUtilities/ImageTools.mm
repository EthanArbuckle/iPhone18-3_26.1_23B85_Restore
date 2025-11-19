@interface ImageTools
+ (BOOL)writeImage:(CGImage *)a3 toFile:(id)a4 error:(id *)a5;
+ (CGContext)createARGBBitmapContextWithImage:(CGImage *)a3;
+ (CGImage)loadCGImageEXIFRotatedFromData:(id)a3 error:(id *)a4;
+ (CGImage)loadCGImageEXIFRotatedFromSource:(CGImageSource *)a3 error:(id *)a4;
+ (CGImage)loadCGImageEXIFRotatedFromURL:(id)a3 error:(id *)a4;
+ (CGImage)loadCGImageFromURL:(id)a3 error:(id *)ImageAtIndex;
+ (CGImage)newCGImageFromPlanar8VImageBuffer:(const vImage_Buffer *)a3 error:(id *)a4;
+ (CGImage)newCGImageFromRGBA8VImageBuffer:(const vImage_Buffer *)a3 error:(id *)a4;
+ (CGImage)rotateImage:(CGImage *)a3 accordingToEXIFOrientation:(int)a4;
+ (CGImage)rotateImage:(CGImage *)a3 withAngle:(float)a4 andXFlip:(BOOL)a5 andYFlip:(BOOL)a6;
+ (__CFString)guessType:(id)a3;
+ (__CVBuffer)loadCVPixelBuffer420YpCbCr8FromURL:(id)a3 error:(id *)a4;
+ (__CVBuffer)loadCVPixelBufferARGB8FromURL:(id)a3 error:(id *)a4;
+ (id)getValueForTag:(id)a3 inObject:(id)a4 depth:(int)a5 parent:(id)a6;
+ (id)numberOfChannelsInImageData:(id)a3 error:(id *)a4;
+ (id)saveCGImage:(const CGImage *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6;
+ (id)saveCVPixelBuffer420YpCbCr8:(__CVBuffer *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6;
+ (id)saveCVPixelBufferPlane8:(int)a3 from:(__CVBuffer *)a4 withName:(id)a5 inFolder:(id)a6 error:(id *)a7;
+ (id)saveCVPixelBufferRGBA8:(__CVBuffer *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6;
+ (id)saveRawBuffer:(void *)a3 withWidth:(unsigned int)a4 andHeight:(unsigned int)a5 andRowBytes:(unsigned int)a6 withName:(id)a7 inFolder:(id)a8 error:(id *)a9;
+ (id)saveVImageBufferPlanar8:(const vImage_Buffer *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6;
+ (id)saveVImageBufferPlanar8ToData:(const vImage_Buffer *)a3 deriveTypeFromFileName:(id)a4 error:(id *)a5;
+ (id)saveVImageBufferPlanar8ToJPEGData:(const vImage_Buffer *)a3 withCompressionQuality:(float)a4 error:(id *)a5;
+ (id)saveVImageBufferRGBA8:(const vImage_Buffer *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6;
+ (id)saveVImageBufferRGBA8ToData:(const vImage_Buffer *)a3 deriveTypeFromFileName:(id)a4 error:(id *)a5;
+ (id)saveVImageBufferRGBA8ToJPEGData:(const vImage_Buffer *)a3 withCompressionQuality:(float)a4 error:(id *)a5;
+ (id)writeImageToData:(CGImage *)a3 type:(__CFString *)a4 error:(id *)a5;
+ (int64_t)create420YCbCr8BufferFromPlanar8Buffer:(void *)a3 withWidth:(int)a4 andWithHeight:(int)a5 andWithBytesPerRow:(unint64_t)a6 toLumaBuffer:(void *)a7 withBytesPerRowLuma:(unint64_t)a8 andToChromaBuffer:(void *)a9 withBytesPerRowChroma:(unint64_t)a10;
+ (int64_t)create420YCbCr8BufferFromRGB8Buffer:(void *)a3 withWidth:(int)a4 andWithHeight:(int)a5 andWithBytesPerRow:(unint64_t)a6 andAlphaFirst:(BOOL)a7 toLumaBuffer:(void *)a8 withBytesPerRowLuma:(unint64_t)a9 andToChromaBuffer:(void *)a10 withBytesPerRowChroma:(unint64_t)a11;
+ (int64_t)createRGB8BufferFrom420Y8BiPlanarBuffer:(void *)a3 withBytesPerRowLuma:(unint64_t)a4 andFrom420CbCr8Buffer:(void *)a5 withBytesPerRowChroma:(unint64_t)a6 andWithWidth:(int)a7 andWithHeight:(int)a8 andAlphaFirst:(BOOL)a9 toRGB8Buffer:(void *)__b withBytesPerRowDst:(unint64_t)a11;
+ (int64_t)createRGB8BufferFrom420Y8PlanarBuffer:(void *)a3 withBytesPerRowY:(unint64_t)a4 andFrom420Cb8Buffer:(void *)a5 withBytesPerRowCb:(unint64_t)a6 andFrom420Cr8Buffer:(void *)a7 withBytesPerRowCr:(unint64_t)a8 andWithWidth:(int)a9 andWithHeight:(int)a10 andAlphaFirst:(BOOL)a11 toRGB8Buffer:(void *)__b withBytesPerRowDst:(unint64_t)a13;
+ (int64_t)extractLumaFromBGRA8Buffer:(void *)a3 withWidth:(int)a4 andWithHeight:(int)a5 andWithBytesPerRow:(unint64_t)a6 toBuffer:(void *)a7 withBytesPerRow:(unint64_t)a8;
+ (vImage_Buffer)getVImageBufferFromCGImage:(SEL)a3 error:(CGImage *)a4;
+ (vImage_Buffer)getVImageBufferFromCGImageLuma:(SEL)a3 error:(CGImage *)a4;
+ (vImage_Buffer)getVImageBufferFromCVPixelBuffer:(SEL)a3 channel:(__CVBuffer *)a4 error:(int)a5;
+ (vImage_Buffer)loadVImageBufferEXIFRotatedFromData:(id)a3 error:(id *)a4;
+ (vImage_Buffer)loadVImageBufferEXIFRotatedFromURL:(id)a3 error:(id *)a4;
+ (vImage_Buffer)loadVImageBufferFromData:(id)a3 isRaw:(BOOL)a4 lumaOnly:(BOOL)a5 error:(id *)a6;
+ (vImage_Buffer)loadVImageBufferFromURL:(id)a3 lumaOnly:(BOOL)a4 error:(id *)a5;
+ (void)loadRawBufferFromData:(id)a3 width:(unsigned int *)a4 height:(unsigned int *)a5 rowBytes:(unsigned int *)a6 error:(id *)a7;
+ (void)loadRawBufferFromURL:(id)a3 width:(unsigned int *)a4 height:(unsigned int *)a5 rowBytes:(unsigned int *)a6 error:(id *)a7;
@end

@implementation ImageTools

+ (__CFString)guessType:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  if (![v4 length])
  {
    v5 = v3;

    v4 = v5;
  }

  if ([v4 isEqualToString:@"png"])
  {
    v6 = MEMORY[0x1E6982F28];
  }

  else if ([v4 isEqualToString:@"jpg"])
  {
    v6 = MEMORY[0x1E6982E58];
  }

  else if ([v4 isEqualToString:@"tiff"])
  {
    v6 = MEMORY[0x1E6983008];
  }

  else if ([v4 isEqualToString:@"bmp"])
  {
    v6 = MEMORY[0x1E6982CE0];
  }

  else
  {
    if (![v4 isEqualToString:@"raw"])
    {
      v7 = 0;
      goto LABEL_14;
    }

    v6 = MEMORY[0x1E6982F88];
  }

  v7 = [*v6 identifier];

LABEL_14:
  return v7;
}

+ (id)getValueForTag:(id)a3 inObject:(id)a4 depth:(int)a5 parent:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [v10 allKeys];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          if ([v16 isEqualToString:v9])
          {
            v24 = [v10 objectForKeyedSubscript:v16];
            goto LABEL_21;
          }

          v17 = [v10 objectForKey:v16];
          v18 = [a1 getValueForTag:v9 inObject:v17 depth:(a5 + 1) parent:v10];
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = 0;
      goto LABEL_23;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v10;
    v19 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v11);
          }

          v23 = [a1 getValueForTag:v9 inObject:*(*(&v26 + 1) + 8 * j) depth:(a5 + 1) parent:{v11, v26}];
        }

        v20 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }
  }

  v24 = 0;
LABEL_21:

LABEL_23:

  return v24;
}

+ (CGImage)rotateImage:(CGImage *)a3 withAngle:(float)a4 andXFlip:(BOOL)a5 andYFlip:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = (a4 * 3.1416) / 180.0;
  v11 = __sincosf_stret(v10);
  v12 = fabsf(v11.__cosval);
  v13 = fabsf(v11.__sinval);
  Width = CGImageGetWidth(a3);
  v15 = (v13 * CGImageGetHeight(a3)) + (Width * v12);
  v16 = CGImageGetWidth(a3);
  v17 = (v12 * CGImageGetHeight(a3)) + (v16 * v13);
  AlphaInfo = CGImageGetAlphaInfo(a3);
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  ColorSpace = CGImageGetColorSpace(a3);
  v21 = CGBitmapContextCreate(0, v15, v17, BitsPerComponent, 0, ColorSpace, AlphaInfo);
  CGContextSetAllowsAntialiasing(v21, 0);
  CGContextSetShouldAntialias(v21, 0);
  CGContextSetInterpolationQuality(v21, kCGInterpolationLow);
  memset(&v33, 0, sizeof(v33));
  v22 = v15;
  v23 = v17;
  if (v6)
  {
    v24 = -1.0;
  }

  else
  {
    v23 = 0.0;
    v24 = 1.0;
  }

  if (v7)
  {
    v25 = -1.0;
  }

  else
  {
    v22 = 0.0;
    v25 = 1.0;
  }

  CGAffineTransformMakeTranslation(&v33, v22, v23);
  v31 = v33;
  CGAffineTransformScale(&transform, &v31, v25, v24);
  v33 = transform;
  if (a4 != 0.0)
  {
    memset(&transform, 0, sizeof(transform));
    CGAffineTransformMakeTranslation(&transform, (v15 * 0.5), (v17 * 0.5));
    t1 = transform;
    CGAffineTransformRotate(&v31, &t1, v10);
    transform = v31;
    t1 = v31;
    CGAffineTransformTranslate(&v31, &t1, (v17 * -0.5), (v15 * -0.5));
    transform = v31;
    t1 = v31;
    v29 = v33;
    CGAffineTransformConcat(&v31, &t1, &v29);
    v33 = v31;
  }

  transform = v33;
  CGContextConcatCTM(v21, &transform);
  v26 = CGImageGetWidth(a3);
  v34.size.height = CGImageGetHeight(a3);
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = v26;
  CGContextDrawImage(v21, v34, a3);
  CGContextFlush(v21);
  Image = CGBitmapContextCreateImage(v21);
  CGContextRelease(v21);
  return Image;
}

+ (CGImage)rotateImage:(CGImage *)a3 accordingToEXIFOrientation:(int)a4
{
  if (a4 <= 4)
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        v4 = 0.0;
        goto LABEL_21;
      }

      if (a4 == 4)
      {
        v4 = 0.0;
LABEL_15:
        v5 = 0;
LABEL_22:
        v7 = 1;
        return [ImageTools rotateImage:a3 withAngle:v5 andXFlip:v7 andYFlip:v4];
      }

      return CGImageCreateCopy(a3);
    }

    v4 = 0.0;
LABEL_17:
    v5 = 1;
    goto LABEL_18;
  }

  if (a4 > 6)
  {
    if (a4 != 7)
    {
      if (a4 == 8)
      {
        LODWORD(v4) = -1028390912;
LABEL_21:
        v5 = 1;
        goto LABEL_22;
      }

      return CGImageCreateCopy(a3);
    }

    LODWORD(v4) = 1119092736;
    goto LABEL_17;
  }

  if (a4 == 5)
  {
    LODWORD(v4) = 1119092736;
    goto LABEL_15;
  }

  LODWORD(v4) = -1028390912;
  v5 = 0;
LABEL_18:
  v7 = 0;
  return [ImageTools rotateImage:a3 withAngle:v5 andXFlip:v7 andYFlip:v4];
}

+ (CGContext)createARGBBitmapContextWithImage:(CGImage *)a3
{
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  ColorSpace = CGImageGetColorSpace(a3);
  if (CGColorSpaceGetModel(ColorSpace))
  {
    DeviceGray = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v8 = 2;
    if (DeviceGray)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D920];
    v15 = @"Could not allocate color space";
    goto LABEL_10;
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  v8 = 0;
  if (!DeviceGray)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = malloc_type_malloc(4 * Width * Height, 0xD40662FBuLL);
  if (!v9)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D920];
    v15 = @"Could not allocate bitmap memory";
    goto LABEL_10;
  }

  v10 = CGBitmapContextCreate(v9, Width, Height, 8uLL, 4 * Width, DeviceGray, v8);
  if (!v10)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D920];
    v15 = @"Could not allocate context";
LABEL_10:
    v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
    objc_exception_throw(v16);
  }

  v11 = v10;
  CGColorSpaceRelease(DeviceGray);
  return v11;
}

+ (CGImage)loadCGImageFromURL:(id)a3 error:(id *)ImageAtIndex
{
  v5 = a3;
  v6 = CGImageSourceCreateWithURL(v5, 0);
  if (v6)
  {
    v7 = v6;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
    CFRelease(v7);
  }

  else if (ImageAtIndex)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: Could not create image from URL %@", v5];
    *ImageAtIndex = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:v8];

    ImageAtIndex = 0;
  }

  return ImageAtIndex;
}

+ (CGImage)loadCGImageEXIFRotatedFromSource:(CGImageSource *)a3 error:(id *)a4
{
  if (a3)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(a3, 0, 0);
    v6 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
    v7 = [ImageTools getValueForTag:@"Orientation" inObject:v6];
    if (v7)
    {
      v8 = [ImageTools getValueForTag:@"Orientation" inObject:v6];
      v9 = [v8 intValue];

      v10 = [ImageTools rotateImage:ImageAtIndex accordingToEXIFOrientation:v9];
      CFRelease(ImageAtIndex);
      ImageAtIndex = v10;
    }

    CFRelease(a3);
  }

  else if (a4)
  {
    [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"could not create image from data"];
    *a4 = ImageAtIndex = 0;
  }

  else
  {
    return 0;
  }

  return ImageAtIndex;
}

+ (CGImage)loadCGImageEXIFRotatedFromURL:(id)a3 error:(id *)a4
{
  v6 = CGImageSourceCreateWithURL(a3, 0);
  v7 = [a1 loadCGImageEXIFRotatedFromSource:v6 error:a4];
  CFRelease(v6);
  return v7;
}

+ (CGImage)loadCGImageEXIFRotatedFromData:(id)a3 error:(id *)a4
{
  v6 = CGImageSourceCreateWithData(a3, 0);
  v7 = [a1 loadCGImageEXIFRotatedFromSource:v6 error:a4];
  CFRelease(v6);
  return v7;
}

+ (void)loadRawBufferFromData:(id)a3 width:(unsigned int *)a4 height:(unsigned int *)a5 rowBytes:(unsigned int *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = v11;
  if (v11)
  {
    [v11 getBytes:a4 range:{0, 4}];
    [v12 getBytes:a5 range:{4, 4}];
    [v12 getBytes:a6 range:{8, 4}];
    v13 = *a5 * *a6;
    v14 = malloc_type_malloc(v13, 0x6EFA000CuLL);
    [v12 getBytes:v14 range:{12, v13}];
  }

  else
  {
    if (a7)
    {
      *a7 = [AX_CVML_Error createNSErrorWithStatus:16757 andMessage:@"Failed to load raw buffer"];
    }

    v14 = 0;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
  }

  return v14;
}

+ (void)loadRawBufferFromURL:(id)a3 width:(unsigned int *)a4 height:(unsigned int *)a5 rowBytes:(unsigned int *)a6 error:(id *)a7
{
  v11 = MEMORY[0x1E695DEF0];
  v12 = [a3 path];
  v13 = [v11 dataWithContentsOfFile:v12];

  v14 = [ImageTools loadRawBufferFromData:v13 width:a4 height:a5 rowBytes:a6 error:a7];
  return v14;
}

+ (id)numberOfChannelsInImageData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: data is nil"];
    if (a4)
    {
      *a4 = [AX_CVML_Error createNSErrorWithStatus:16765 andMessage:v11];
    }

    goto LABEL_9;
  }

  v7 = CGImageSourceCreateWithData(v5, 0);
  if (!v7 || (v8 = v7, ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0), CFRelease(v8), !ImageAtIndex))
  {
LABEL_9:
    v12 = -1;
    goto LABEL_14;
  }

  if (CGImageGetBitsPerPixel(ImageAtIndex) == 32)
  {
    v10 = MEMORY[0x1E695F1C0];
  }

  else
  {
    if (CGImageGetBitsPerPixel(ImageAtIndex) != 8)
    {
      if (a4)
      {
        [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Format not supported (input image must be 32 or 8 bits per pixels)"];
        *a4 = v13 = 0;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_13;
    }

    v10 = MEMORY[0x1E695F128];
  }

  v13 = CGColorSpaceCreateWithName(*v10);
LABEL_13:
  CFRelease(ImageAtIndex);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v13);
  CGColorSpaceRelease(v13);
  v12 = NumberOfComponents;
LABEL_14:
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v12];

  return v15;
}

+ (vImage_Buffer)loadVImageBufferFromData:(id)a3 isRaw:(BOOL)a4 lumaOnly:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = v9;
  if (a6)
  {
    if (v9)
    {
      if (v8)
      {
LABEL_4:
        if (v7)
        {
          NSLog(&cfstr_IgnoringLumaon.isa);
        }

        v11 = malloc_type_malloc(0x20uLL, 0x1080040ABB4582EuLL);
        v12 = 0;
        v13 = 0;
        v11->data = [ImageTools loadRawBufferFromData:v10 width:&v11->width height:&v11->height rowBytes:&v11->rowBytes error:a6];
        goto LABEL_41;
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: data is nil"];
      *a6 = [AX_CVML_Error createNSErrorWithStatus:16765 andMessage:v14];

      if (v8)
      {
        goto LABEL_4;
      }
    }

    v15 = CGImageSourceCreateWithData(v10, 0);
    v11 = v15;
    if (v15)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, 0);
      CFRelease(v11);
      if (ImageAtIndex)
      {
        if (CGImageGetBitsPerPixel(ImageAtIndex) == 32)
        {
          v11 = malloc_type_malloc(0x20uLL, 0x1080040ABB4582EuLL);
          v11->height = CGImageGetHeight(ImageAtIndex);
          Width = CGImageGetWidth(ImageAtIndex);
          v11->width = Width;
          v18 = Width;
          height = v11->height;
          v20 = height;
          if (v7)
          {
            v21 = (Width + 15) & 0xFFFFFFFFFFFFFFF0;
            v11->rowBytes = v21;
            v22 = malloc_type_malloc(height * v21, 0xCCF57178uLL);
            v11->data = v22;
            if (v22)
            {
              v12 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
              v24 = v11->height;
              v23 = v11->width;
              BytesPerRow = CGImageGetBytesPerRow(ImageAtIndex);
              v26 = CGBitmapContextCreate(0, v23, v24, 8uLL, BytesPerRow, v12, 0x2002u);
              v13 = v26;
              if (v26)
              {
                v57.origin.x = 0.0;
                v57.origin.y = 0.0;
                v57.size.width = v18;
                v57.size.height = v20;
                CGContextDrawImage(v26, v57, ImageAtIndex);
              }

              else
              {
                *a6 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to create the context"];
              }

              Data = CGBitmapContextGetData(v13);
              v48 = [ImageTools extractLumaFromBGRA8Buffer:Data withWidth:LODWORD(v11->width) andWithHeight:LODWORD(v11->height) andWithBytesPerRow:CGBitmapContextGetBytesPerRow(v13) toBuffer:v11->data withBytesPerRow:v11->rowBytes];
              if (v48 != 128)
              {
                v49 = v48;
                v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CVML_getStatusDescription(v48)];
                *a6 = [AX_CVML_Error createNSErrorWithStatus:v49 andMessage:v50];
              }

              goto LABEL_40;
            }
          }

          else
          {
            v38 = CGImageGetBytesPerRow(ImageAtIndex);
            v11->rowBytes = v38;
            v39 = malloc_type_malloc(v11->height * v38, 0xAC90DE12uLL);
            v11->data = v39;
            if (v39)
            {
              v12 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
              v40 = v11->data;
              v41 = v11->height;
              v42 = v11->width;
              rowBytes = v11->rowBytes;
              BitmapInfo = CGImageGetBitmapInfo(ImageAtIndex);
              v45 = CGBitmapContextCreate(v40, v42, v41, 8uLL, rowBytes, v12, BitmapInfo);
              if (v45)
              {
                v13 = v45;
              }

              else
              {
                v13 = CGBitmapContextCreate(v11->data, v11->width, v11->height, 8uLL, v11->rowBytes, v12, 1u);
                if (!v13)
                {
                  v46 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to create the context"];
                  goto LABEL_29;
                }
              }

              v59.origin.x = 0.0;
              v59.origin.y = 0.0;
              v59.size.width = v18;
              v59.size.height = v20;
              CGContextDrawImage(v13, v59, ImageAtIndex);
              goto LABEL_40;
            }
          }
        }

        else
        {
          if (CGImageGetBitsPerPixel(ImageAtIndex) != 8)
          {
            v46 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Format not supported (input image must be 32 or 8 bits per pixels)"];
            v11 = 0;
            goto LABEL_28;
          }

          v11 = malloc_type_malloc(0x20uLL, 0x1080040ABB4582EuLL);
          v11->height = CGImageGetHeight(ImageAtIndex);
          v28 = CGImageGetWidth(ImageAtIndex);
          v29 = v11->height;
          v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
          v11->width = v28;
          v11->rowBytes = v30;
          v31 = malloc_type_malloc(v29 * v30, 0xD55B787uLL);
          v11->data = v31;
          if (v31)
          {
            v32 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
            v34 = v11->height;
            v33 = v11->width;
            v35 = CGImageGetBytesPerRow(ImageAtIndex);
            v36 = CGImageGetBitmapInfo(ImageAtIndex);
            v37 = CGBitmapContextCreate(0, v33, v34, 8uLL, v35, v32, v36);
            v13 = v37;
            if (v37)
            {
              v58.size.width = v28;
              v58.size.height = v29;
              v58.origin.x = 0.0;
              v58.origin.y = 0.0;
              CGContextDrawImage(v37, v58, ImageAtIndex);
            }

            else
            {
              *a6 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to create the context"];
            }

            v51 = CGBitmapContextGetData(v13);
            if (v11->height)
            {
              v52 = v51;
              v53 = 0;
              v54 = v11->data;
              do
              {
                v55 = CGBitmapContextGetBytesPerRow(v13);
                memcpy(v54, v52, v55);
                v52 += CGBitmapContextGetBytesPerRow(v13);
                v54 += v11->rowBytes;
                ++v53;
              }

              while (v53 < v11->height);
            }

            CGColorSpaceRelease(v32);
            v12 = 0;
            goto LABEL_40;
          }
        }

        v46 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to allocate the image buffer"];
LABEL_28:
        v12 = 0;
        v13 = 0;
LABEL_29:
        *a6 = v46;
LABEL_40:
        CFRelease(ImageAtIndex);
        goto LABEL_41;
      }

      v27 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not extract first image from bundle"];
      v11 = 0;
    }

    else
    {
      v27 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not create image from data"];
    }

    v12 = 0;
    v13 = 0;
    *a6 = v27;
LABEL_41:
    CGContextRelease(v13);
    CGColorSpaceRelease(v12);
    goto LABEL_42;
  }

  v11 = 0;
LABEL_42:

  return v11;
}

+ (vImage_Buffer)loadVImageBufferFromURL:(id)a3 lumaOnly:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v7 = a3;
  v8 = [v7 absoluteString];
  v9 = [ImageTools guessType:v8];

  v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7];

  v11 = [ImageTools loadVImageBufferFromData:v10 isRaw:CFEqual(v9 lumaOnly:*MEMORY[0x1E6982F88]) != 0 error:v6, a5];
  return v11;
}

+ (vImage_Buffer)loadVImageBufferEXIFRotatedFromURL:(id)a3 error:(id *)a4
{
  v5 = [ImageTools loadCGImageEXIFRotatedFromURL:a3 error:?];
  if (a4)
  {
    if (*a4)
    {
      a4 = 0;
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      [ImageTools getVImageBufferFromCGImage:v5 error:a4];
      a4 = malloc_type_malloc(0x20uLL, 0x1080040ABB4582EuLL);
      *a4 = *&v7[0];
      *(a4 + 1) = *(v7 + 8);
      a4[3] = *(&v7[1] + 1);
    }
  }

  CGImageRelease(v5);
  return a4;
}

+ (vImage_Buffer)loadVImageBufferEXIFRotatedFromData:(id)a3 error:(id *)a4
{
  v5 = [ImageTools loadCGImageEXIFRotatedFromData:a3 error:?];
  if (a4)
  {
    if (*a4)
    {
      a4 = 0;
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      [ImageTools getVImageBufferFromCGImage:v5 error:a4];
      a4 = malloc_type_malloc(0x20uLL, 0x1080040ABB4582EuLL);
      *a4 = *&v7[0];
      *(a4 + 1) = *(v7 + 8);
      a4[3] = *(&v7[1] + 1);
    }
  }

  CGImageRelease(v5);
  return a4;
}

+ (__CVBuffer)loadCVPixelBufferARGB8FromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  pixelBufferOut = 0;
  v6 = CGImageSourceCreateWithURL(v5, 0);
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: Could not create image from URL %@", v5];
    if (a4)
    {
      *a4 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:v14];
    }

    goto LABEL_9;
  }

  v7 = v6;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
  CFRelease(v7);
  if (!ImageAtIndex)
  {
    if (a4)
    {
      [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not extract first image from bundle"];
      v15 = 0;
      v16 = 0;
      v13 = 0;
      *a4 = v17 = 0;
      goto LABEL_31;
    }

LABEL_9:
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_31;
  }

  if (CGImageGetBitsPerPixel(ImageAtIndex) == 32)
  {
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(ImageAtIndex);
    IOSurfacePropertiesDictionary = ImageTools_fcssCreateIOSurfacePropertiesDictionary(Width, Height, 32);
    if (IOSurfacePropertiesDictionary)
    {
      v12 = IOSurfacePropertiesDictionary;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{IOSurfacePropertiesDictionary, *MEMORY[0x1E69660D8], 0}];
      CFRelease(v12);
      v19 = *MEMORY[0x1E695E480];
      v20 = CGImageGetWidth(ImageAtIndex);
      v21 = CGImageGetHeight(ImageAtIndex);
      if (!CVPixelBufferCreate(v19, v20, v21, 0x20u, v13, &pixelBufferOut))
      {
        CVPixelBufferLockBaseAddress(pixelBufferOut, 1uLL);
        v22 = CVPixelBufferGetWidth(pixelBufferOut);
        v23 = CVPixelBufferGetHeight(pixelBufferOut);
        v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
        v25 = CVPixelBufferGetWidth(pixelBufferOut);
        v26 = CVPixelBufferGetHeight(pixelBufferOut);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
        v28 = CGBitmapContextCreate(BaseAddress, v25, v26, 8uLL, BytesPerRow, v15, 6u);
        if (v28)
        {
          v16 = v28;
          v34.size.height = v23;
          v34.size.width = v22;
          v34.origin.x = 0.0;
          v34.origin.y = 0.0;
          CGContextDrawImage(v28, v34, ImageAtIndex);
        }

        else if (a4)
        {
          [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to create the context"];
          *a4 = v16 = 0;
        }

        else
        {
          v16 = 0;
        }

        v17 = 1;
        goto LABEL_30;
      }

      if (a4)
      {
        v18 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to create the CVPixelBuffer"];
        v17 = 0;
        goto LABEL_20;
      }

      v17 = 0;
LABEL_25:
      v16 = 0;
      v15 = 0;
      goto LABEL_30;
    }

    if (a4)
    {
      *a4 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to create the IOSurface properties"];
    }

    ModuleDescription = CVML_getModuleDescription(16766);
    StatusDescription = CVML_getStatusDescription(0x417EuLL);
    syslog(3, "%s error %lld:%s in %s @ %s:%d\n", ModuleDescription, -2, StatusDescription, "+[ImageTools loadCVPixelBufferARGB8FromURL:error:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 727);
LABEL_24:
    v17 = 0;
    v13 = 0;
    goto LABEL_25;
  }

  if (!a4)
  {
    goto LABEL_24;
  }

  v18 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Format not supported (input image must be 32 bits per pixels)"];
  v17 = 0;
  v13 = 0;
LABEL_20:
  v16 = 0;
  v15 = 0;
  *a4 = v18;
LABEL_30:
  CFRelease(ImageAtIndex);
LABEL_31:
  CGContextRelease(v16);
  CGColorSpaceRelease(v15);
  if (v17)
  {
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 1uLL);
  }

  v31 = pixelBufferOut;

  return v31;
}

+ (__CVBuffer)loadCVPixelBuffer420YpCbCr8FromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = 16768;
  pixelBufferOut = 0;
  v7 = CGImageSourceCreateWithURL(v5, 0);
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: Could not create image from URL %@", v5];
    if (a4)
    {
      *a4 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:v17];
    }

    v16 = 0;
    goto LABEL_37;
  }

  v8 = v7;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
  DataProvider = CGImageGetDataProvider(ImageAtIndex);
  v11 = CGDataProviderCopyData(DataProvider);
  CFRelease(v8);
  if (ImageAtIndex)
  {
    if (CGImageGetBitsPerPixel(ImageAtIndex) == 32 || CGImageGetBitsPerPixel(ImageAtIndex) == 8)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      IOSurfacePropertiesDictionary = ImageTools_fcssCreateIOSurfacePropertiesDictionary(Width, Height, 875704422);
      if (IOSurfacePropertiesDictionary)
      {
        v15 = IOSurfacePropertiesDictionary;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{IOSurfacePropertiesDictionary, *MEMORY[0x1E69660D8], 0}];
        CFRelease(v15);
        v19 = *MEMORY[0x1E695E480];
        v20 = CGImageGetWidth(ImageAtIndex);
        v21 = CGImageGetHeight(ImageAtIndex);
        if (CVPixelBufferCreate(v19, v20, v21, 0x34323066u, v16, &pixelBufferOut))
        {
          v18 = 0;
          goto LABEL_34;
        }

        CVPixelBufferLockBaseAddress(pixelBufferOut, 1uLL);
        BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
        AlphaInfo = CGImageGetAlphaInfo(ImageAtIndex);
        v24 = (BitsPerPixel >> 3);
        if (v24 == 4)
        {
          v50 = AlphaInfo == kCGImageAlphaFirst;
          BytePtr = CFDataGetBytePtr(v11);
          v46 = CGImageGetWidth(ImageAtIndex);
          v36 = CGImageGetHeight(ImageAtIndex);
          BytesPerRow = CGImageGetBytesPerRow(ImageAtIndex);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
          v40 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
          v41 = [ImageTools create420YCbCr8BufferFromRGB8Buffer:BytePtr withWidth:v46 andWithHeight:v36 andWithBytesPerRow:BytesPerRow andAlphaFirst:v50 toLumaBuffer:BaseAddressOfPlane withBytesPerRowLuma:BytesPerRowOfPlane andToChromaBuffer:v40 withBytesPerRowChroma:CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 1uLL)];
          v6 = v41;
          v18 = 1;
          if ((v41 & 0x80) != 0)
          {
            goto LABEL_34;
          }

          v30 = v41 | 0xFFFFFFFFFFFFFF80;
          ModuleDescription = CVML_getModuleDescription(v41);
          StatusDescription = CVML_getStatusDescription(v6);
          v33 = 870;
        }

        else if (v24 == 1)
        {
          v49 = CFDataGetBytePtr(v11);
          v47 = CGImageGetWidth(ImageAtIndex);
          v45 = CGImageGetHeight(ImageAtIndex);
          v25 = CGImageGetBytesPerRow(ImageAtIndex);
          v26 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 0);
          v27 = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 0);
          v18 = 1;
          v28 = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, 1uLL);
          v29 = [ImageTools create420YCbCr8BufferFromPlanar8Buffer:v49 withWidth:v47 andWithHeight:v45 andWithBytesPerRow:v25 toLumaBuffer:v26 withBytesPerRowLuma:v27 andToChromaBuffer:v28 withBytesPerRowChroma:CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, 1uLL)];
          v6 = v29;
          if ((v29 & 0x80) != 0)
          {
            goto LABEL_34;
          }

          v30 = v29 | 0xFFFFFFFFFFFFFF80;
          ModuleDescription = CVML_getModuleDescription(v29);
          StatusDescription = CVML_getStatusDescription(v6);
          v33 = 857;
        }

        else
        {
          if (a4)
          {
            *a4 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"unexpected number of bytes per pixels"];
          }

          v6 = 16747;
          v30 = -21;
          ModuleDescription = CVML_getModuleDescription(16747);
          StatusDescription = CVML_getStatusDescription(0x416BuLL);
          v33 = 875;
        }

        syslog(3, "%s error %lld:%s in %s @ %s:%d\n", ModuleDescription, v30, StatusDescription, "+[ImageTools loadCVPixelBuffer420YpCbCr8FromURL:error:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", v33);
        v18 = 1;
LABEL_34:
        CFRelease(ImageAtIndex);
        if (v11)
        {
LABEL_35:
          CFRelease(v11);
          if ((v18 & 1) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        goto LABEL_24;
      }

      v6 = 16766;
      if (a4)
      {
        *a4 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to create the IOSurface properties"];
      }

      v34 = CVML_getModuleDescription(16766);
      v35 = CVML_getStatusDescription(0x417EuLL);
      syslog(3, "%s error %lld:%s in %s @ %s:%d\n", v34, -2, v35, "+[ImageTools loadCVPixelBuffer420YpCbCr8FromURL:error:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 828);
    }

    else if (a4)
    {
      [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Format not supported (input image must be 32 bits per pixels)"];
      v18 = 0;
      *a4 = v16 = 0;
      goto LABEL_34;
    }

    v18 = 0;
    v16 = 0;
    goto LABEL_34;
  }

  if (a4)
  {
    [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not extract first image from bundle"];
    v16 = 0;
    *a4 = v18 = 0;
    if (v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (v11)
    {
      goto LABEL_35;
    }
  }

LABEL_24:
  if (v18)
  {
LABEL_36:
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 1uLL);
  }

LABEL_37:
  if (v6 != 128)
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: Could not load 420YpCbCr8 buffer"];
    if (a4)
    {
      *a4 = [AX_CVML_Error createNSErrorWithStatus:v6 andMessage:v42];
    }
  }

  v43 = pixelBufferOut;

  return v43;
}

+ (id)saveCVPixelBufferPlane8:(int)a3 from:(__CVBuffer *)a4 withName:(id)a5 inFolder:(id)a6 error:(id *)a7
{
  v10 = a5;
  v11 = a6;
  if ([v10 length])
  {
    if (v11)
    {
      v12 = [v11 stringByAppendingPathComponent:v10];
    }

    else
    {
      v13 = NSTemporaryDirectory();
      v12 = [v13 stringByAppendingPathComponent:v10];
    }

    CVPixelBufferLockBaseAddress(a4, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a4, a3);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a4, a3);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a4, a3);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a4, a3);
    v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    v19 = CGDataProviderCreateWithData(0, BaseAddressOfPlane, HeightOfPlane * BytesPerRowOfPlane, 0);
    v20 = CGImageCreate(WidthOfPlane, HeightOfPlane, 8uLL, 8uLL, BytesPerRowOfPlane, v18, 0, v19, 0, 0, kCGRenderingIntentDefault);
    v21 = CGImageDestinationCreateWithURL([MEMORY[0x1E695DFF8] fileURLWithPath:v12], +[ImageTools guessType:](ImageTools, "guessType:", v10), 1uLL, 0);
    CGImageDestinationAddImage(v21, v20, 0);
    CGImageDestinationFinalize(v21);
    CVPixelBufferUnlockBaseAddress(a4, 1uLL);
    CGImageRelease(v20);
    CGDataProviderRelease(v19);
    CGColorSpaceRelease(v18);
    CFRelease(v21);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)saveCVPixelBufferRGBA8:(__CVBuffer *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a5;
  if ([v8 length])
  {
    if (v9)
    {
      v10 = [v9 stringByAppendingPathComponent:v8];
    }

    else
    {
      v11 = NSTemporaryDirectory();
      v10 = [v11 stringByAppendingPathComponent:v8];
    }

    CVPixelBufferLockBaseAddress(a3, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v16 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v17 = CGDataProviderCreateWithData(0, BaseAddress, Height * BytesPerRow, 0);
    v18 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, v16, 0, v17, 0, 0, kCGRenderingIntentDefault);
    v19 = CGImageDestinationCreateWithURL([MEMORY[0x1E695DFF8] fileURLWithPath:v10], +[ImageTools guessType:](ImageTools, "guessType:", v8), 1uLL, 0);
    CGImageDestinationAddImage(v19, v18, 0);
    CGImageDestinationFinalize(v19);
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    CGImageRelease(v18);
    CGDataProviderRelease(v17);
    CGColorSpaceRelease(v16);
    CFRelease(v19);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)saveCVPixelBuffer420YpCbCr8:(__CVBuffer *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  pixelBufferOut = 0;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  IOSurfacePropertiesDictionary = ImageTools_fcssCreateIOSurfacePropertiesDictionary(Width, Height, 32);
  if (IOSurfacePropertiesDictionary)
  {
    v14 = IOSurfacePropertiesDictionary;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{IOSurfacePropertiesDictionary, *MEMORY[0x1E69660D8], 0}];
    CFRelease(v14);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    v16 = *MEMORY[0x1E695E480];
    v17 = CVPixelBufferGetWidth(a3);
    v18 = CVPixelBufferGetHeight(a3);
    if (CVPixelBufferCreate(v16, v17, v18, 0x20u, v15, &pixelBufferOut))
    {
      v42 = 16766;
      ModuleDescription = CVML_getModuleDescription(16766);
      StatusDescription = CVML_getStatusDescription(0x417EuLL);
      syslog(3, "%s error %lld:%s in %s @ %s:%d\n", ModuleDescription, -2, StatusDescription, "+[ImageTools saveCVPixelBuffer420YpCbCr8:withName:inFolder:error:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 1042);
LABEL_18:
      v45 = 0;
      goto LABEL_20;
    }

    CVPixelBufferLockBaseAddress(pixelBufferOut, 1uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    if (PixelFormatType > 1714696751)
    {
      if (PixelFormatType == 2033463856 || PixelFormatType == 1714696752)
      {
        v54 = v10;
        v55 = a6;
        v56 = v9;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        v33 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
        v34 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
        v35 = CVPixelBufferGetBaseAddressOfPlane(a3, 2uLL);
        v36 = CVPixelBufferGetBytesPerRowOfPlane(a3, 2uLL);
        v37 = CVPixelBufferGetWidth(a3);
        v38 = CVPixelBufferGetHeight(a3);
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
        LOBYTE(v50) = 0;
        v40 = [ImageTools createRGB8BufferFrom420Y8PlanarBuffer:BaseAddressOfPlane withBytesPerRowY:BytesPerRowOfPlane andFrom420Cb8Buffer:v33 withBytesPerRowCb:v34 andFrom420Cr8Buffer:v35 withBytesPerRowCr:v36 andWithWidth:__PAIR64__(v38 andWithHeight:v37) andAlphaFirst:v50 toRGB8Buffer:BaseAddress withBytesPerRowDst:CVPixelBufferGetBytesPerRow(pixelBufferOut)];
        v42 = v40;
        if ((v40 & 0x80) == 0)
        {
          v28 = v40 | 0xFFFFFFFFFFFFFF80;
          v29 = CVML_getModuleDescription(v40);
          v30 = CVML_getStatusDescription(v42);
          v31 = 1061;
          goto LABEL_17;
        }

LABEL_19:
        a6 = v55;
        v9 = v56;
        v10 = v54;
        v45 = [ImageTools saveCVPixelBufferRGBA8:pixelBufferOut withName:v56 inFolder:v54 error:v55];
LABEL_20:
        CVPixelBufferUnlockBaseAddress(a3, 1uLL);
        if (pixelBufferOut)
        {
          CVPixelBufferRelease(pixelBufferOut);
        }

        goto LABEL_22;
      }
    }

    else if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
    {
      v54 = v10;
      v55 = a6;
      v56 = v9;
      v20 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
      v21 = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
      v22 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
      v23 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
      v24 = CVPixelBufferGetWidth(a3);
      v25 = CVPixelBufferGetHeight(a3);
      v26 = CVPixelBufferGetBaseAddress(pixelBufferOut);
      LOBYTE(v49) = 0;
      v27 = [ImageTools createRGB8BufferFrom420Y8BiPlanarBuffer:v20 withBytesPerRowLuma:v21 andFrom420CbCr8Buffer:v22 withBytesPerRowChroma:v23 andWithWidth:v24 andWithHeight:v25 andAlphaFirst:v49 toRGB8Buffer:v26 withBytesPerRowDst:CVPixelBufferGetBytesPerRow(pixelBufferOut)];
      v42 = v27;
      if ((v27 & 0x80) == 0)
      {
        v28 = v27 | 0xFFFFFFFFFFFFFF80;
        v29 = CVML_getModuleDescription(v27);
        v30 = CVML_getStatusDescription(v42);
        v31 = 1074;
LABEL_17:
        syslog(3, "%s error %lld:%s in %s @ %s:%d\n", v29, v28, v30, "+[ImageTools saveCVPixelBuffer420YpCbCr8:withName:inFolder:error:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", v31);
        v45 = 0;
        a6 = v55;
        v9 = v56;
        v10 = v54;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v42 = 16747;
    v48 = CVML_getModuleDescription(16747);
    v52 = CVML_getStatusDescription(0x416BuLL);
    syslog(3, "%s error %lld:%s in %s @ %s:%d\n", v48, -21, v52, "+[ImageTools saveCVPixelBuffer420YpCbCr8:withName:inFolder:error:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 1079);
    goto LABEL_18;
  }

  if (a6)
  {
    *a6 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Failed to create the IOSurface properties"];
  }

  v42 = 16766;
  v43 = CVML_getModuleDescription(16766);
  v44 = CVML_getStatusDescription(0x417EuLL);
  syslog(3, "%s error %lld:%s in %s @ %s:%d\n", v43, -2, v44, "+[ImageTools saveCVPixelBuffer420YpCbCr8:withName:inFolder:error:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 1027);
  v15 = 0;
  v45 = 0;
LABEL_22:
  if (v42 != 128)
  {
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR: Could not save 420YpCbCr8 buffer"];
    if (a6)
    {
      *a6 = [AX_CVML_Error createNSErrorWithStatus:v42 andMessage:v46];
    }
  }

  return v45;
}

+ (CGImage)newCGImageFromPlanar8VImageBuffer:(const vImage_Buffer *)a3 error:(id *)a4
{
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  v7 = CGDataProviderCreateWithData(0, a3->data, a3->height * a3->rowBytes, 0);
  if (!v7)
  {
    if (a4)
    {
      [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not create data provider."];
      *a4 = v10 = 0;
      if (!v6)
      {
        return v10;
      }
    }

    else
    {
      v10 = 0;
      if (!v6)
      {
        return v10;
      }
    }

LABEL_9:
    CGColorSpaceRelease(v6);
    return v10;
  }

  v8 = v7;
  v9 = CGImageCreate(a3->width, a3->height, 8uLL, 8uLL, a3->rowBytes, v6, 0, v7, 0, 0, kCGRenderingIntentDefault);
  v10 = v9;
  if (a4 && !v9)
  {
    *a4 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not create image."];
  }

  CGDataProviderRelease(v8);
  if (v6)
  {
    goto LABEL_9;
  }

  return v10;
}

+ (id)saveVImageBufferPlanar8ToJPEGData:(const vImage_Buffer *)a3 withCompressionQuality:(float)a4 error:(id *)a5
{
  v7 = [ImageTools newCGImageFromPlanar8VImageBuffer:a3 error:?];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF88] data];
    v9 = [*MEMORY[0x1E6982E58] identifier];
    v10 = CGImageDestinationCreateWithData(v8, v9, 1uLL, 0);

    if (v10)
    {
      v12 = MEMORY[0x1E695DF20];
      *&v11 = a4;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
      CGImageDestinationSetProperties(v10, [v12 dictionaryWithObjectsAndKeys:{v13, *MEMORY[0x1E696D338], 0}]);

      CGImageDestinationAddImage(v10, v7, 0);
      if (!CGImageDestinationFinalize(v10))
      {
        if (a5)
        {
          *a5 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not finalize image."];
        }

        v8 = 0;
      }

      CFRelease(v10);
      CGImageRelease(v7);
      v8 = v8;
      v7 = v8;
    }

    else
    {
      if (a5)
      {
        *a5 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not create image destination."];
      }

      CGImageRelease(v7);
      v7 = 0;
    }
  }

  return v7;
}

+ (id)saveVImageBufferPlanar8ToData:(const vImage_Buffer *)a3 deriveTypeFromFileName:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [ImageTools newCGImageFromPlanar8VImageBuffer:a3 error:a5];
  if (v8)
  {
    v9 = v8;
    v10 = [ImageTools writeImageToData:v8 type:[ImageTools guessType:v7] error:a5];
    CGImageRelease(v9);
  }

  else
  {
    CGImageRelease(0);
    v10 = 0;
  }

  return v10;
}

+ (id)saveVImageBufferPlanar8:(const vImage_Buffer *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (![v9 length])
  {
    v11 = 0;
LABEL_8:
    v11 = v11;
    v16 = v11;
    goto LABEL_9;
  }

  if (v10)
  {
    v11 = [v10 stringByAppendingPathComponent:v9];
  }

  else
  {
    v12 = NSTemporaryDirectory();
    v11 = [v12 stringByAppendingPathComponent:v9];
  }

  v13 = [ImageTools newCGImageFromPlanar8VImageBuffer:a3 error:a6];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = v13;
  v15 = [ImageTools writeImage:v13 toFile:v11 error:a6];
  CGImageRelease(v14);
  if (v15)
  {
    goto LABEL_8;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

+ (CGImage)newCGImageFromRGBA8VImageBuffer:(const vImage_Buffer *)a3 error:(id *)a4
{
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v7 = CGDataProviderCreateWithData(0, a3->data, a3->height * a3->rowBytes, 0);
  if (!v7)
  {
    if (a4)
    {
      [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not create data provider."];
      *a4 = v10 = 0;
      if (!v6)
      {
        return v10;
      }
    }

    else
    {
      v10 = 0;
      if (!v6)
      {
        return v10;
      }
    }

LABEL_9:
    CGColorSpaceRelease(v6);
    return v10;
  }

  v8 = v7;
  v9 = CGImageCreate(a3->width, a3->height, 8uLL, 0x20uLL, a3->rowBytes, v6, 0, v7, 0, 0, kCGRenderingIntentDefault);
  v10 = v9;
  if (a4 && !v9)
  {
    *a4 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not create image."];
  }

  CGDataProviderRelease(v8);
  if (v6)
  {
    goto LABEL_9;
  }

  return v10;
}

+ (id)writeImageToData:(CGImage *)a3 type:(__CFString *)a4 error:(id *)a5
{
  v8 = [MEMORY[0x1E695DF88] data];
  v9 = CGImageDestinationCreateWithData(v8, a4, 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    CGImageDestinationAddImage(v9, a3, 0);
    if (!CGImageDestinationFinalize(v10))
    {
      if (a5)
      {
        *a5 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not finalize image."];
      }

      v8 = 0;
    }

    CFRelease(v10);
    v8 = v8;
    v11 = v8;
  }

  else if (a5)
  {
    [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not create image destination."];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)saveVImageBufferRGBA8ToJPEGData:(const vImage_Buffer *)a3 withCompressionQuality:(float)a4 error:(id *)a5
{
  v7 = [ImageTools newCGImageFromRGBA8VImageBuffer:a3 error:?];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF88] data];
    v9 = [*MEMORY[0x1E6982E58] identifier];
    v10 = CGImageDestinationCreateWithData(v8, v9, 1uLL, 0);

    if (v10)
    {
      v12 = MEMORY[0x1E695DF20];
      *&v11 = a4;
      v13 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
      CGImageDestinationSetProperties(v10, [v12 dictionaryWithObjectsAndKeys:{v13, *MEMORY[0x1E696D338], 0}]);

      CGImageDestinationAddImage(v10, v7, 0);
      if (!CGImageDestinationFinalize(v10))
      {
        if (a5)
        {
          *a5 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not finalize image."];
        }

        v8 = 0;
      }

      CFRelease(v10);
      CGImageRelease(v7);
      v8 = v8;
      v7 = v8;
    }

    else
    {
      if (a5)
      {
        *a5 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not create image destination."];
      }

      CGImageRelease(v7);
      v7 = 0;
    }
  }

  return v7;
}

+ (id)saveVImageBufferRGBA8ToData:(const vImage_Buffer *)a3 deriveTypeFromFileName:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [ImageTools newCGImageFromRGBA8VImageBuffer:a3 error:a5];
  if (v8)
  {
    v9 = v8;
    v10 = [ImageTools writeImageToData:v8 type:[ImageTools guessType:v7] error:a5];
    CGImageRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)writeImage:(CGImage *)a3 toFile:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E695DFF8];
  v8 = a4;
  v9 = [v7 fileURLWithPath:v8];
  v10 = [ImageTools guessType:v8];

  v11 = CGImageDestinationCreateWithURL(v9, v10, 1uLL, 0);
  if (v11)
  {
    v12 = v11;
    CGImageDestinationAddImage(v11, a3, 0);
    v13 = CGImageDestinationFinalize(v12);
    v14 = v13;
    if (a5 && !v13)
    {
      *a5 = [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not finalize image."];
    }

    CFRelease(v12);
  }

  else if (a5)
  {
    [AX_CVML_Error createNSErrorWithStatus:16766 andMessage:@"Could not finalize image."];
    *a5 = v14 = 0;
  }

  else
  {
    return 0;
  }

  return v14;
}

+ (id)saveVImageBufferRGBA8:(const vImage_Buffer *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (![v9 length])
  {
    v11 = 0;
LABEL_10:
    v11 = v11;
    v15 = v11;
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = [v10 stringByAppendingPathComponent:v9];
  }

  else
  {
    v12 = NSTemporaryDirectory();
    v11 = [v12 stringByAppendingPathComponent:v9];
  }

  v13 = [ImageTools newCGImageFromRGBA8VImageBuffer:a3 error:a6];
  if (v13)
  {
    v14 = v13;
    if (![ImageTools writeImage:v13 toFile:v11 error:a6])
    {

      v11 = 0;
    }

    CGImageRelease(v14);
    goto LABEL_10;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

+ (id)saveCGImage:(const CGImage *)a3 withName:(id)a4 inFolder:(id)a5 error:(id *)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if ([v8 length])
  {
    if (v9)
    {
      v10 = [v9 stringByAppendingPathComponent:v8];
    }

    else
    {
      v11 = NSTemporaryDirectory();
      v10 = [v11 stringByAppendingPathComponent:v8];
    }

    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1AE37B000, v13, OS_LOG_TYPE_DEFAULT, "Saving image to URL: %@", &v20, 0xCu);
    }

    v14 = CGImageDestinationCreateWithURL(v12, [ImageTools guessType:v8], 1uLL, 0);
    if (v14)
    {
      v15 = v14;
      CGImageDestinationAddImage(v14, a3, 0);
      v16 = CGImageDestinationFinalize(v15);
      v17 = AXLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [MEMORY[0x1E696AD98] numberWithBool:v16];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_1AE37B000, v17, OS_LOG_TYPE_DEFAULT, "Succe: %@", &v20, 0xCu);
      }

      CFRelease(v15);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)saveRawBuffer:(void *)a3 withWidth:(unsigned int)a4 andHeight:(unsigned int)a5 andRowBytes:(unsigned int)a6 withName:(id)a7 inFolder:(id)a8 error:(id *)a9
{
  v21 = a5;
  v22 = a4;
  v20 = a6;
  v13 = a7;
  v14 = a8;
  if ([v13 length])
  {
    if (v14)
    {
      v15 = [v14 stringByAppendingPathComponent:v13];
    }

    else
    {
      v16 = NSTemporaryDirectory();
      v15 = [v16 stringByAppendingPathComponent:v13];
    }

    v17 = a5 * a6;
    v18 = [MEMORY[0x1E695DF88] dataWithLength:v17 + 12];
    [v18 replaceBytesInRange:0 withBytes:{4, &v22}];
    [v18 replaceBytesInRange:4 withBytes:{4, &v20}];
    [v18 replaceBytesInRange:8 withBytes:{4, &v21}];
    [v18 replaceBytesInRange:12 withBytes:{v17, a3}];
    [v18 writeToFile:v15 atomically:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (vImage_Buffer)getVImageBufferFromCVPixelBuffer:(SEL)a3 channel:(__CVBuffer *)a4 error:(int)a5
{
  retstr->data = 0;
  retstr->height = 0;
  retstr->width = 0;
  if (CVPixelBufferGetPlaneCount(a4))
  {
    retstr->data = CVPixelBufferGetBaseAddressOfPlane(a4, a5);
    retstr->height = CVPixelBufferGetHeightOfPlane(a4, a5);
    retstr->width = CVPixelBufferGetWidthOfPlane(a4, a5);
    result = CVPixelBufferGetBytesPerRowOfPlane(a4, a5);
  }

  else
  {
    retstr->data = CVPixelBufferGetBaseAddress(a4);
    retstr->height = CVPixelBufferGetHeight(a4);
    retstr->width = CVPixelBufferGetWidth(a4);
    result = CVPixelBufferGetBytesPerRow(a4);
  }

  retstr->rowBytes = result;
  return result;
}

+ (vImage_Buffer)getVImageBufferFromCGImageLuma:(SEL)a3 error:(CGImage *)a4
{
  v7 = [ImageTools createARGBBitmapContextWithImage:a4, a5];
  Width = CGImageGetWidth(a4);
  Height = CGImageGetHeight(a4);
  v30.size.width = Width;
  v30.size.height = Height;
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  CGContextDrawImage(v7, v30, a4);
  Data = CGBitmapContextGetData(v7);
  retstr->height = Height;
  retstr->width = Width;
  v28 = Width;
  v11 = (Width + 15) & 0xFFFFFFFFFFFFFFF0;
  retstr->rowBytes = v11;
  v25 = Data;
  v26 = v11;
  v12 = malloc_type_malloc(v11 * Height, 0x34E52018uLL);
  retstr->data = v12;
  v27 = Height;
  if (Height >= 1)
  {
    v13 = v12;
    v14 = 0;
    v15 = Width & 0x7FFFFFFF;
    v16 = v25;
    do
    {
      if (v28 >= 1)
      {
        v17 = 0;
        LODWORD(v18) = 0;
        do
        {
          ColorSpace = CGImageGetColorSpace(a4);
          Model = CGColorSpaceGetModel(ColorSpace);
          v21 = v18;
          v18 = v18 + 1;
          if (Model)
          {
            v22 = v16[v18];
            LODWORD(v18) = v21 + 4;
            v23 = (77 * v22 + 151 * v16[v21 + 2] + 28 * v16[v21 + 3]) >> 8;
          }

          else
          {
            v23 = (255 * v16[v21]) >> 8;
          }

          v13[v17++] = v23;
        }

        while (v15 != v17);
      }

      v16 += CGBitmapContextGetBytesPerRow(v7);
      v13 += v26;
      ++v14;
    }

    while (v14 != v27);
  }

  CGContextRelease(v7);

  free(v25);
  return result;
}

+ (vImage_Buffer)getVImageBufferFromCGImage:(SEL)a3 error:(CGImage *)a4
{
  DataProvider = CGImageGetDataProvider(a4);
  v8 = CGDataProviderCopyData(DataProvider);
  retstr->width = CGImageGetWidth(a4);
  retstr->height = CGImageGetHeight(a4);
  retstr->rowBytes = CGImageGetBytesPerRow(a4);
  Length = CFDataGetLength(v8);
  v10 = malloc_type_malloc(Length, 0x22E126BEuLL);
  retstr->data = v10;
  BytePtr = CFDataGetBytePtr(v8);
  v12 = CFDataGetLength(v8);
  memcpy(v10, BytePtr, v12);

  CFRelease(v8);
  return result;
}

+ (int64_t)extractLumaFromBGRA8Buffer:(void *)a3 withWidth:(int)a4 andWithHeight:(int)a5 andWithBytesPerRow:(unint64_t)a6 toBuffer:(void *)a7 withBytesPerRow:(unint64_t)a8
{
  if (a3 && a7)
  {
    v8 = 16768;
    if (a5)
    {
      v9 = 0;
      v10 = a5;
      v11 = a4 - 8;
      v12 = a4;
      v13 = a4 - 8;
      v14 = a7 + 8;
      v15 = a3;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          v25 = vld4_s8(a3);
          a3 = a3 + 32;
          v18 = v16;
          v19 = v17;
          *a7 = vaddhn_s16(vmlal_u8(vmull_u8(v25.val[1], 0x9696969696969696), v25.val[0], 0x1D1D1D1D1D1D1D1DLL), vmull_u8(v25.val[2], 0x4C4C4C4C4C4C4C4CLL));
          a7 = a7 + 8;
          v16 += 8;
          v17 += 8;
        }

        while (v16 <= v11);
        if (v16 < v12)
        {
          v20 = v13 - v18;
          v21 = v15;
          do
          {
            *v19++ = (29 * *v21 + 150 * v21[1] + 76 * v21[2]) >> 8;
            v21 += 4;
            --v20;
          }

          while (v20);
        }

        v15 += a6;
        ++v9;
        v14 += a8;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v8 = 16765;
    ModuleDescription = CVML_getModuleDescription(16765);
    StatusDescription = CVML_getStatusDescription(0x417DuLL);
    syslog(3, "%s error %lld:%s in %s @ %s:%d\n", ModuleDescription, -3, StatusDescription, "+[ImageTools extractLumaFromBGRA8Buffer:withWidth:andWithHeight:andWithBytesPerRow:toBuffer:withBytesPerRow:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 1537);
  }

  return v8;
}

+ (int64_t)create420YCbCr8BufferFromPlanar8Buffer:(void *)a3 withWidth:(int)a4 andWithHeight:(int)a5 andWithBytesPerRow:(unint64_t)a6 toLumaBuffer:(void *)a7 withBytesPerRowLuma:(unint64_t)a8 andToChromaBuffer:(void *)a9 withBytesPerRowChroma:(unint64_t)a10
{
  v11 = a7;
  v15 = a3;
  v16 = a9;
  if (a3 && a7 && a9)
  {
    if (a5 >= 1)
    {
      v18 = a5;
      v19 = a3;
      do
      {
        memcpy(v11, v19, a4);
        v19 += a6;
        v11 += a8;
        --v18;
      }

      while (v18);
    }

    if (a5 >> 1 < 1)
    {
      return 16768;
    }

    else
    {
      v20 = 0;
      v21 = &v15[a6];
      v22 = 2 * a6;
      v17 = 16768;
      do
      {
        if (a4 >= 1)
        {
          v23 = 1;
          v24 = v16;
          do
          {
            *v24++ = (v15[v23] + v15[v23 - 1] + v21[v23 - 1] + v21[v23]) >> 2;
            v25 = v23 + 1;
            v23 += 2;
          }

          while (v25 < a4);
        }

        v21 += v22;
        v15 += v22;
        v16 += a10;
        ++v20;
      }

      while (v20 != a5 >> 1);
    }
  }

  else
  {
    v17 = 16765;
    ModuleDescription = CVML_getModuleDescription(16765);
    StatusDescription = CVML_getStatusDescription(0x417DuLL);
    syslog(3, "%s error %lld:%s in %s @ %s:%d\n", ModuleDescription, -3, StatusDescription, "+[ImageTools create420YCbCr8BufferFromPlanar8Buffer:withWidth:andWithHeight:andWithBytesPerRow:toLumaBuffer:withBytesPerRowLuma:andToChromaBuffer:withBytesPerRowChroma:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 1615);
  }

  return v17;
}

+ (int64_t)create420YCbCr8BufferFromRGB8Buffer:(void *)a3 withWidth:(int)a4 andWithHeight:(int)a5 andWithBytesPerRow:(unint64_t)a6 andAlphaFirst:(BOOL)a7 toLumaBuffer:(void *)a8 withBytesPerRowLuma:(unint64_t)a9 andToChromaBuffer:(void *)a10 withBytesPerRowChroma:(unint64_t)a11
{
  v13 = a10;
  if (a3 && a8 && a10)
  {
    v14 = 16768;
    v15 = a5 >> 1;
    v16 = a4 >> 1;
    v17 = 2 * (a6 - 4 * a4) + 8;
    v18 = (a6 - 4 * a4) + 12;
    v19 = a3 + a7;
    do
    {
      v20 = 0;
      v21 = &v19[v17];
      v22 = &v19[v18];
      v23 = v19;
      v24 = v16;
      do
      {
        v19 = v21;
        v25 = v22;
        v26 = a8 + v20;
        v27 = &v13[v20];
        LOBYTE(v11) = *v23;
        LOBYTE(v12) = v23[1];
        *&v28 = LODWORD(v12) * 0.5872;
        v29 = *&v28 + (LODWORD(v11) * 0.2988);
        LOBYTE(v28) = v23[2];
        v30 = v28;
        v31 = (v29 + (v30 * 0.114)) + 0.5;
        v32 = v31;
        if (v31 < 0.0)
        {
          LOBYTE(v32) = 0;
        }

        if (v31 > 255.0)
        {
          LOBYTE(v32) = -1;
        }

        *v26 = v32;
        LOBYTE(v31) = *v23;
        LOBYTE(v30) = v23[1];
        *&v33 = LODWORD(v30) * -0.3391;
        v34 = *&v33 + (LODWORD(v31) * -0.1726);
        LOBYTE(v33) = v23[2];
        v35 = v33;
        v36 = (v34 + (v35 * 0.5117)) + 128.5;
        v37 = v36;
        if (v36 < 0.0)
        {
          LOBYTE(v37) = 0;
        }

        if (v36 > 255.0)
        {
          LOBYTE(v37) = -1;
        }

        *v27 = v37;
        LOBYTE(v36) = *v23;
        LOBYTE(v35) = v23[1];
        *&v38 = LODWORD(v35) * -0.4282;
        v39 = *&v38 + (LODWORD(v36) * 0.5115);
        LOBYTE(v38) = v23[2];
        v40 = v38;
        v41 = (v39 + (v40 * -0.083)) + 128.5;
        v42 = v41;
        if (v41 < 0.0)
        {
          LOBYTE(v42) = 0;
        }

        if (v41 > 255.0)
        {
          LOBYTE(v42) = -1;
        }

        v27[1] = v42;
        LOBYTE(v41) = v23[4];
        LOBYTE(v40) = v23[5];
        *&v43 = LODWORD(v40) * 0.5872;
        v44 = *&v43 + (LODWORD(v41) * 0.2988);
        LOBYTE(v43) = v23[6];
        v45 = v43;
        v46 = (v44 + (v45 * 0.114)) + 0.5;
        v47 = v46;
        if (v46 < 0.0)
        {
          LOBYTE(v47) = 0;
        }

        if (v46 > 255.0)
        {
          LOBYTE(v47) = -1;
        }

        v26[1] = v47;
        LOBYTE(v46) = *v27;
        LOBYTE(v45) = v23[4];
        *&v48 = LODWORD(v45);
        v49 = LODWORD(v46) + (*&v48 * -0.1726);
        LOBYTE(v48) = v23[5];
        *&v50 = v48;
        v51 = v49 + (*&v50 * -0.3391);
        LOBYTE(v50) = v23[6];
        v52 = v50;
        v53 = ((v51 + (v52 * 0.5117)) + 128.5) * 0.5;
        v54 = v53;
        if (v53 < 0.0)
        {
          LOBYTE(v54) = 0;
        }

        if (v53 > 255.0)
        {
          LOBYTE(v54) = -1;
        }

        *v27 = v54;
        LOBYTE(v53) = v27[1];
        LOBYTE(v52) = v23[4];
        *&v55 = LODWORD(v52);
        v56 = LODWORD(v53) + (*&v55 * 0.5115);
        LOBYTE(v55) = v23[5];
        *&v57 = v55;
        v58 = v56 + (*&v57 * -0.4282);
        LOBYTE(v57) = v23[6];
        v12 = v57;
        v11 = ((v58 + (v12 * -0.083)) + 128.5) * 0.5;
        if (v11 <= 255.0)
        {
          if (v11 >= 0.0)
          {
            v59 = v11;
          }

          else
          {
            LOBYTE(v59) = 0;
          }
        }

        else
        {
          LOBYTE(v59) = -1;
        }

        v23 += 8;
        v27[1] = v59;
        v20 += 2;
        v21 = v19 + 8;
        v22 = v25 + 8;
        --v24;
      }

      while (v24);
      v60 = a9;
      v61 = v16;
      do
      {
        v62 = a8 + v60;
        LOBYTE(v11) = *(v25 - 2);
        LOBYTE(v12) = *(v25 - 3);
        *&v63 = LODWORD(v12) * 0.5872;
        v64 = *&v63 + (LODWORD(v11) * 0.2988);
        LOBYTE(v63) = *(v25 - 4);
        *&v65 = v63;
        *&v66 = (v64 + (*&v65 * 0.114)) + 0.5;
        *v62 = *&v66;
        LOBYTE(v66) = v25[2];
        LOBYTE(v65) = v25[1];
        *&v67 = v65 * 0.5872;
        v68 = *&v67 + (v66 * 0.2988);
        LOBYTE(v67) = *v25;
        v12 = v67;
        v11 = (v68 + (v12 * 0.114)) + 0.5;
        v62[1] = v11;
        v19 += 8;
        v60 += 2;
        v25 += 8;
        --v61;
      }

      while (v61);
      a8 = a8 + a9 + a9;
      v13 += a11;
      --v15;
    }

    while (v15);
  }

  else
  {
    v14 = 16765;
    ModuleDescription = CVML_getModuleDescription(16765);
    StatusDescription = CVML_getStatusDescription(0x417DuLL);
    syslog(3, "%s error %lld:%s in %s @ %s:%d\n", ModuleDescription, -3, StatusDescription, "+[ImageTools create420YCbCr8BufferFromRGB8Buffer:withWidth:andWithHeight:andWithBytesPerRow:andAlphaFirst:toLumaBuffer:withBytesPerRowLuma:andToChromaBuffer:withBytesPerRowChroma:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 1666);
  }

  return v14;
}

+ (int64_t)createRGB8BufferFrom420Y8PlanarBuffer:(void *)a3 withBytesPerRowY:(unint64_t)a4 andFrom420Cb8Buffer:(void *)a5 withBytesPerRowCb:(unint64_t)a6 andFrom420Cr8Buffer:(void *)a7 withBytesPerRowCr:(unint64_t)a8 andWithWidth:(int)a9 andWithHeight:(int)a10 andAlphaFirst:(BOOL)a11 toRGB8Buffer:(void *)__b withBytesPerRowDst:(unint64_t)a13
{
  if (a7 && a5 && a3 && __b)
  {
    v19 = a10 >> 1;
    memset(__b, 255, a10 * a13);
    v20 = 0;
    v21 = __b + a11 + 4;
    v22 = a3 + 1;
    do
    {
      if (a9 >= 1)
      {
        v23 = 0;
        v24 = &v21[a13 * v20];
        v25 = v20 + 1;
        v26 = &v22[a4 * v25];
        v27 = &v22[a4 * v20];
        v28 = &v21[a13 * v25];
        v29 = v20 >> 1;
        v30 = a7 + v29 * a8;
        v31 = a5 + v29 * a6;
        do
        {
          v32 = *v31++;
          v33 = v32 - 128;
          v34 = *v30++;
          v35 = v34 - 128;
          v36 = *(v27 - 1);
          v37 = 1404 * (v34 - 128) + 512;
          v38 = (v36 + (v37 >> 10)) & ~((v36 + (v37 >> 10)) >> 31);
          if (v38 >= 255)
          {
            LOBYTE(v38) = -1;
          }

          *(v24 - 4) = v38;
          v39 = -713 * v35 - 343 * v33 + 512;
          v40 = (v36 + (v39 >> 10)) & ~((v36 + (v39 >> 10)) >> 31);
          if (v40 >= 255)
          {
            LOBYTE(v40) = -1;
          }

          *(v24 - 3) = v40;
          v41 = 1773 * v33 + 512;
          v42 = (v36 + (v41 >> 10)) & ~((v36 + (v41 >> 10)) >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          *(v24 - 2) = v42;
          v43 = *(v26 - 1);
          v44 = (v43 + (v37 >> 10)) & ~((v43 + (v37 >> 10)) >> 31);
          if (v44 >= 255)
          {
            LOBYTE(v44) = -1;
          }

          *(v28 - 4) = v44;
          v45 = (v43 + (v39 >> 10)) & ~((v43 + (v39 >> 10)) >> 31);
          if (v45 >= 255)
          {
            LOBYTE(v45) = -1;
          }

          *(v28 - 3) = v45;
          v46 = (v43 + (v41 >> 10)) & ~((v43 + (v41 >> 10)) >> 31);
          if (v46 >= 255)
          {
            LOBYTE(v46) = -1;
          }

          *(v28 - 2) = v46;
          v48 = *v27;
          v27 += 2;
          v47 = v48;
          v49 = (v48 + (v37 >> 10)) & ~((v48 + (v37 >> 10)) >> 31);
          if (v49 >= 255)
          {
            LOBYTE(v49) = -1;
          }

          *v24 = v49;
          v50 = (v47 + (v39 >> 10)) & ~((v47 + (v39 >> 10)) >> 31);
          if (v50 >= 255)
          {
            LOBYTE(v50) = -1;
          }

          v24[1] = v50;
          v51 = (v47 + (v41 >> 10)) & ~((v47 + (v41 >> 10)) >> 31);
          if (v51 >= 255)
          {
            LOBYTE(v51) = -1;
          }

          v24[2] = v51;
          v53 = *v26;
          v26 += 2;
          v52 = v53;
          v54 = (v53 + (v37 >> 10)) & ~((v53 + (v37 >> 10)) >> 31);
          if (v54 >= 255)
          {
            LOBYTE(v54) = -1;
          }

          *v28 = v54;
          v55 = (v52 + (v39 >> 10)) & ~((v52 + (v39 >> 10)) >> 31);
          if (v55 >= 255)
          {
            LOBYTE(v55) = -1;
          }

          v56 = (v52 + (v41 >> 10)) & ~((v52 + (v41 >> 10)) >> 31);
          if (v56 >= 255)
          {
            LOBYTE(v56) = -1;
          }

          v23 += 2;
          v24 += 8;
          v28[1] = v55;
          v28[2] = v56;
          v28 += 8;
        }

        while (v23 < a9);
      }

      v20 += 2;
      --v19;
    }

    while (v19);
    return 16768;
  }

  else
  {
    v18 = 16765;
    ModuleDescription = CVML_getModuleDescription(16765);
    StatusDescription = CVML_getStatusDescription(0x417DuLL);
    syslog(3, "%s error %lld:%s in %s @ %s:%d\n", ModuleDescription, -3, StatusDescription, "+[ImageTools createRGB8BufferFrom420Y8PlanarBuffer:withBytesPerRowY:andFrom420Cb8Buffer:withBytesPerRowCb:andFrom420Cr8Buffer:withBytesPerRowCr:andWithWidth:andWithHeight:andAlphaFirst:toRGB8Buffer:withBytesPerRowDst:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 1769);
  }

  return v18;
}

+ (int64_t)createRGB8BufferFrom420Y8BiPlanarBuffer:(void *)a3 withBytesPerRowLuma:(unint64_t)a4 andFrom420CbCr8Buffer:(void *)a5 withBytesPerRowChroma:(unint64_t)a6 andWithWidth:(int)a7 andWithHeight:(int)a8 andAlphaFirst:(BOOL)a9 toRGB8Buffer:(void *)__b withBytesPerRowDst:(unint64_t)a11
{
  if (a5 && a3 && __b)
  {
    v17 = a8 >> 1;
    memset(__b, 255, a8 * a11);
    v18 = 0;
    v19 = __b + a9 + 4;
    v20 = a3 + 1;
    do
    {
      if (a7 >= 1)
      {
        v21 = 0;
        v22 = &v19[a11 * v18];
        v23 = v18 + 1;
        v24 = &v20[a4 * v23];
        v25 = &v20[a4 * v18];
        v26 = &v19[a11 * v23];
        v27 = a5 + (v18 >> 1) * a6;
        do
        {
          v28 = *v27 - 128;
          v29 = v27[1] - 128;
          v30 = *(v25 - 1);
          v31 = 1404 * v29 + 512;
          v32 = (v30 + (v31 >> 10)) & ~((v30 + (v31 >> 10)) >> 31);
          if (v32 >= 255)
          {
            LOBYTE(v32) = -1;
          }

          *(v22 - 4) = v32;
          v33 = -713 * v29 - 343 * v28 + 512;
          v34 = (v30 + (v33 >> 10)) & ~((v30 + (v33 >> 10)) >> 31);
          if (v34 >= 255)
          {
            LOBYTE(v34) = -1;
          }

          *(v22 - 3) = v34;
          v35 = 1773 * v28 + 512;
          v36 = (v30 + (v35 >> 10)) & ~((v30 + (v35 >> 10)) >> 31);
          if (v36 >= 255)
          {
            LOBYTE(v36) = -1;
          }

          *(v22 - 2) = v36;
          v37 = *(v24 - 1);
          v38 = (v37 + (v31 >> 10)) & ~((v37 + (v31 >> 10)) >> 31);
          if (v38 >= 255)
          {
            LOBYTE(v38) = -1;
          }

          *(v26 - 4) = v38;
          v39 = (v37 + (v33 >> 10)) & ~((v37 + (v33 >> 10)) >> 31);
          if (v39 >= 255)
          {
            LOBYTE(v39) = -1;
          }

          *(v26 - 3) = v39;
          v40 = (v37 + (v35 >> 10)) & ~((v37 + (v35 >> 10)) >> 31);
          if (v40 >= 255)
          {
            LOBYTE(v40) = -1;
          }

          *(v26 - 2) = v40;
          v42 = *v25;
          v25 += 2;
          v41 = v42;
          v43 = (v42 + (v31 >> 10)) & ~((v42 + (v31 >> 10)) >> 31);
          if (v43 >= 255)
          {
            LOBYTE(v43) = -1;
          }

          *v22 = v43;
          v44 = (v41 + (v33 >> 10)) & ~((v41 + (v33 >> 10)) >> 31);
          if (v44 >= 255)
          {
            LOBYTE(v44) = -1;
          }

          v22[1] = v44;
          v45 = (v41 + (v35 >> 10)) & ~((v41 + (v35 >> 10)) >> 31);
          if (v45 >= 255)
          {
            LOBYTE(v45) = -1;
          }

          v22[2] = v45;
          v47 = *v24;
          v24 += 2;
          v46 = v47;
          v48 = (v47 + (v31 >> 10)) & ~((v47 + (v31 >> 10)) >> 31);
          if (v48 >= 255)
          {
            LOBYTE(v48) = -1;
          }

          v49 = (v46 + (v33 >> 10)) & ~((v46 + (v33 >> 10)) >> 31);
          if (v49 >= 255)
          {
            LOBYTE(v49) = -1;
          }

          v50 = (v46 + (v35 >> 10)) & ~((v46 + (v35 >> 10)) >> 31);
          *v26 = v48;
          if (v50 >= 255)
          {
            LOBYTE(v50) = -1;
          }

          v21 += 2;
          v22 += 8;
          v26[1] = v49;
          v26[2] = v50;
          v26 += 8;
          v27 += 2;
        }

        while (v21 < a7);
      }

      v18 += 2;
      --v17;
    }

    while (v17);
    return 16768;
  }

  else
  {
    v16 = 16765;
    ModuleDescription = CVML_getModuleDescription(16765);
    StatusDescription = CVML_getStatusDescription(0x417DuLL);
    syslog(3, "%s error %lld:%s in %s @ %s:%d\n", ModuleDescription, -3, StatusDescription, "+[ImageTools createRGB8BufferFrom420Y8BiPlanarBuffer:withBytesPerRowLuma:andFrom420CbCr8Buffer:withBytesPerRowChroma:andWithWidth:andWithHeight:andAlphaFirst:toRGB8Buffer:withBytesPerRowDst:]", "/Library/Caches/com.apple.xbs/Sources/AccessibilityMediaUtilities/AXMediaUtilities/source/ImageTools.m", 1873);
  }

  return v16;
}

@end