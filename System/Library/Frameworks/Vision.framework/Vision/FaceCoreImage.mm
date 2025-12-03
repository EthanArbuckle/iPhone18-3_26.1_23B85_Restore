@interface FaceCoreImage
- (FaceCoreImage)initWithCGImage:(CGImage *)image;
- (FaceCoreImage)initWithCVPixelBuffer:(__CVBuffer *)buffer;
- (FaceCoreImage)initWithWidth:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row buffer:(void *)buffer freeWhenDone:(BOOL)done;
- (char)alignedImageData;
- (void)dealloc;
@end

@implementation FaceCoreImage

- (FaceCoreImage)initWithWidth:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row buffer:(void *)buffer freeWhenDone:(BOOL)done
{
  selfCopy = buffer;
  if (buffer)
  {
    v13.receiver = self;
    v13.super_class = FaceCoreImage;
    self = [(FaceCoreImage *)&v13 init];
    if (self)
    {
      self->_width = width;
      self->_height = height;
      self->_bytesPerRow = row;
      self->_freeWhenDone = done;
      self->_rawDataBuffer = selfCopy;
      self->_alignedDataBuffer = 0;
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (FaceCoreImage)initWithCVPixelBuffer:(__CVBuffer *)buffer
{
  if (CVPixelBufferGetPixelFormatType(buffer) == 1111970369)
  {
    bufferCopy = buffer;
    if (buffer)
    {
      CVPixelBufferRetain(buffer);
    }

    apple::vision::LockedPixelImageBuffer<unsigned char const[4],1ull>::LockedPixelImageBuffer(&src.data, &bufferCopy);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&bufferCopy);
    height = src.height;
    width = src.width;
    dest.data = malloc_type_malloc(src.height * src.width, 0x100004077774924uLL);
    dest.height = height;
    dest.width = width;
    dest.rowBytes = width;
    vImageMatrixMultiply_ARGB8888ToPlanar8(&src, &dest, convert32BGRAToGrayscale(__CVBuffer *)::coefficients, 256, convert32BGRAToGrayscale(__CVBuffer *)::prebias, 0, 0);
    data = dest.data;
    v8 = dest.height;
    v9 = dest.width;
    apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::~BaseAddressLock(&v16);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v15);
    self = [(FaceCoreImage *)self initWithWidth:v9 height:v8 bytesPerRow:v9 buffer:data freeWhenDone:1];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FaceCoreImage)initWithCGImage:(CGImage *)image
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v7 = dispatch_get_global_queue(0, 0);
  v8 = [(FaceCoreImage *)self initWithWidth:Width height:Height bytesPerRow:Width buffer:apple::vision::libraries::facecore::utils::aev::AEVConversionUtils::convertCGImageToGrayscale(image freeWhenDone:v7), 1];

  return v8;
}

- (void)dealloc
{
  free(self->_alignedDataBuffer);
  if (self->_freeWhenDone)
  {
    free(self->_rawDataBuffer);
  }

  v3.receiver = self;
  v3.super_class = FaceCoreImage;
  [(FaceCoreImage *)&v3 dealloc];
}

- (char)alignedImageData
{
  width = self->_width;
  if (width == self->_bytesPerRow)
  {
    p_rawDataBuffer = &self->_rawDataBuffer;
  }

  else
  {
    p_rawDataBuffer = &self->_alignedDataBuffer;
    if (!self->_alignedDataBuffer)
    {
      self->_alignedDataBuffer = malloc_type_malloc(self->_height * width, 0x100004077774924uLL);
      if (SLODWORD(self->_height) >= 1)
      {
        v5 = 0;
        LODWORD(v6) = 0;
        v7 = 0;
        v8 = self->_width;
        do
        {
          memcpy(&self->_alignedDataBuffer[v7], &self->_rawDataBuffer[v6], v8);
          v8 = self->_width;
          v7 += v8;
          v6 = self->_bytesPerRow + v6;
          ++v5;
        }

        while (v5 < SLODWORD(self->_height));
      }
    }
  }

  return *p_rawDataBuffer;
}

@end