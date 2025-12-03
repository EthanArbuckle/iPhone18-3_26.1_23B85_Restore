@interface VNMPImageData
- (VNMPImageData)initWithCVPixelBufferImage:(__CVBuffer *)image externalImageId:(id)id andExifTimestampString:(id)string error:(id *)error;
- (VNMPImageData)initWithCVPixelBufferImage:(__CVBuffer *)image externalImageId:(id)id andExifTimestampValue:(int64_t)value error:(id *)error;
- (VNMPImageData)initWithVImage:(vImage_Buffer *)image externalImageId:(id)id andExifTimestampString:(id)string error:(id *)error;
- (VNMPImageData)initWithVImage:(vImage_Buffer *)image externalImageId:(id)id andExifTimestampValue:(int64_t)value error:(id *)error;
- (void)dealloc;
@end

@implementation VNMPImageData

- (void)dealloc
{
  if (self->_freeImageInDealloc)
  {
    [VNMPUtils freeVImageBuffer:self->_image];
    self->_image = 0;
  }

  imageCVPixelBuffer = self->_imageCVPixelBuffer;
  if (imageCVPixelBuffer)
  {
    CVPixelBufferRelease(imageCVPixelBuffer);
    self->_imageCVPixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = VNMPImageData;
  [(VNMPImageData *)&v4 dealloc];
}

- (VNMPImageData)initWithCVPixelBufferImage:(__CVBuffer *)image externalImageId:(id)id andExifTimestampValue:(int64_t)value error:(id *)error
{
  idCopy = id;
  if (!error)
  {
    __assert_rtn("[VNMPImageData initWithCVPixelBufferImage:externalImageId:andExifTimestampValue:error:]", "MPImageData.m", 62, "error != nil");
  }

  v12 = idCopy;
  v16.receiver = self;
  v16.super_class = VNMPImageData;
  v13 = [(VNMPImageData *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_freeImageInDealloc = 1;
    v13->_image = 0;
    v13->_imageCVPixelBuffer = image;
    CVPixelBufferRetain(image);
    objc_storeStrong(&v14->_externalImageId, id);
    v14->_exifTimestamp = value;
  }

  return v14;
}

- (VNMPImageData)initWithCVPixelBufferImage:(__CVBuffer *)image externalImageId:(id)id andExifTimestampString:(id)string error:(id *)error
{
  idCopy = id;
  error = [(VNMPImageData *)self initWithCVPixelBufferImage:image externalImageId:idCopy andExifTimestampValue:[VNMPUtils error:"parseExifTimestamp:" parseExifTimestamp:string], error];

  return error;
}

- (VNMPImageData)initWithVImage:(vImage_Buffer *)image externalImageId:(id)id andExifTimestampValue:(int64_t)value error:(id *)error
{
  idCopy = id;
  if (!error)
  {
    __assert_rtn("[VNMPImageData initWithVImage:externalImageId:andExifTimestampValue:error:]", "MPImageData.m", 29, "error != nil");
  }

  v12 = idCopy;
  v17.receiver = self;
  v17.super_class = VNMPImageData;
  v13 = [(VNMPImageData *)&v17 init];
  v14 = v13;
  if (v13 && (v13->_freeImageInDealloc = 1, v13->_image = image, v13->_imageCVPixelBuffer = 0, objc_storeStrong(&v13->_externalImageId, id), v14->_exifTimestamp = value, image->width > image->rowBytes >> 2))
  {
    [VNMPUtils createErrorWithCode:3196 andMessage:@"ERROR: The input image does not seem to be 8888"];
    *error = v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (VNMPImageData)initWithVImage:(vImage_Buffer *)image externalImageId:(id)id andExifTimestampString:(id)string error:(id *)error
{
  idCopy = id;
  error = [(VNMPImageData *)self initWithVImage:image externalImageId:idCopy andExifTimestampValue:[VNMPUtils error:"parseExifTimestamp:" parseExifTimestamp:string], error];

  return error;
}

@end