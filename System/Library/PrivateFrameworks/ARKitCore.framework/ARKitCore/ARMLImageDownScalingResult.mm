@interface ARMLImageDownScalingResult
- (ARMLImageDownScalingResult)initWithPixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGSize)interest cropRegion:(CGRect)region;
- (CGRect)cropRegion;
- (CGSize)imageResolution;
- (CGSize)regionOfInterest;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)buffer;
- (void)setUndistortedPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation ARMLImageDownScalingResult

- (ARMLImageDownScalingResult)initWithPixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGSize)interest cropRegion:(CGRect)region
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  v9 = interest.height;
  v10 = interest.width;
  v15.receiver = self;
  v15.super_class = ARMLImageDownScalingResult;
  v12 = [(ARMLImageDownScalingResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(ARMLImageDownScalingResult *)v12 setPixelBuffer:buffer];
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

- (void)setPixelBuffer:(__CVBuffer *)buffer
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer != buffer)
  {
    CVPixelBufferRelease(pixelBuffer);
    self->_pixelBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setUndistortedPixelBuffer:(__CVBuffer *)buffer
{
  undistortedPixelBuffer = self->_undistortedPixelBuffer;
  if (undistortedPixelBuffer != buffer)
  {
    CVPixelBufferRelease(undistortedPixelBuffer);
    self->_undistortedPixelBuffer = buffer;

    CVPixelBufferRetain(buffer);
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