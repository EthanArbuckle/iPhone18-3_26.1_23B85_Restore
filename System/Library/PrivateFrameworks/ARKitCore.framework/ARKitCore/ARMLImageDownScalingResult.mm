@interface ARMLImageDownScalingResult
- (ARMLImageDownScalingResult)initWithPixelBuffer:(__CVBuffer *)a3 regionOfInterest:(CGSize)a4 cropRegion:(CGRect)a5;
- (CGRect)cropRegion;
- (CGSize)imageResolution;
- (CGSize)regionOfInterest;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)a3;
- (void)setUndistortedPixelBuffer:(__CVBuffer *)a3;
@end

@implementation ARMLImageDownScalingResult

- (ARMLImageDownScalingResult)initWithPixelBuffer:(__CVBuffer *)a3 regionOfInterest:(CGSize)a4 cropRegion:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.height;
  v10 = a4.width;
  v15.receiver = self;
  v15.super_class = ARMLImageDownScalingResult;
  v12 = [(ARMLImageDownScalingResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(ARMLImageDownScalingResult *)v12 setPixelBuffer:a3];
    v13->_regionOfInterest.width = v10;
    v13->_regionOfInterest.height = v9;
    v13->_cropRegion.origin.x = x;
    v13->_cropRegion.origin.y = y;
    v13->_cropRegion.size.width = width;
    v13->_cropRegion.size.height = height;
  }

  return v13;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  undistortedPixelBuffer = self->_undistortedPixelBuffer;
  if (undistortedPixelBuffer)
  {
    CVPixelBufferRelease(undistortedPixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = ARMLImageDownScalingResult;
  [(ARMLImageDownScalingResult *)&v4 dealloc];
}

- (void)setPixelBuffer:(__CVBuffer *)a3
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer != a3)
  {
    CVPixelBufferRelease(pixelBuffer);
    self->_pixelBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setUndistortedPixelBuffer:(__CVBuffer *)a3
{
  undistortedPixelBuffer = self->_undistortedPixelBuffer;
  if (undistortedPixelBuffer != a3)
  {
    CVPixelBufferRelease(undistortedPixelBuffer);
    self->_undistortedPixelBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (CGSize)imageResolution
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(self->_pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (CGSize)regionOfInterest
{
  width = self->_regionOfInterest.width;
  height = self->_regionOfInterest.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)cropRegion
{
  x = self->_cropRegion.origin.x;
  y = self->_cropRegion.origin.y;
  width = self->_cropRegion.size.width;
  height = self->_cropRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end