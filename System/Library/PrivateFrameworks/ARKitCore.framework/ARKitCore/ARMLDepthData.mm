@interface ARMLDepthData
- (ARMLDepthData)initWithTimestamp:(double)timestamp depthBuffer:(__CVBuffer *)buffer confidenceBuffer:(__CVBuffer *)confidenceBuffer source:(int64_t)source;
- (ARMLDepthData)initWithTimestamp:(double)timestamp depthBuffer:(__CVBuffer *)buffer source:(int64_t)source;
- (CGSize)depthBufferSize;
- (NSString)description;
- (__CVBuffer)singleFrameConfidenceBuffer;
- (__CVBuffer)singleFrameDepthBuffer;
- (void)dealloc;
- (void)setConfidenceMap:(__CVBuffer *)map;
- (void)setNormalsBuffer:(__CVBuffer *)buffer;
- (void)setSingleFrameConfidenceBuffer:(__CVBuffer *)buffer;
- (void)setSingleFrameDepthBuffer:(__CVBuffer *)buffer;
@end

@implementation ARMLDepthData

- (ARMLDepthData)initWithTimestamp:(double)timestamp depthBuffer:(__CVBuffer *)buffer source:(int64_t)source
{
  v12.receiver = self;
  v12.super_class = ARMLDepthData;
  v8 = [(ARMLDepthData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = timestamp;
    v10 = CVPixelBufferRetain(buffer);
    v9->_singleFrameDepthBuffer = 0;
    v9->_singleFrameDepthBufferLock._os_unfair_lock_opaque = 0;
    v9->_depthBuffer = v10;
    v9->_source = source;
  }

  return v9;
}

- (ARMLDepthData)initWithTimestamp:(double)timestamp depthBuffer:(__CVBuffer *)buffer confidenceBuffer:(__CVBuffer *)confidenceBuffer source:(int64_t)source
{
  v7 = [(ARMLDepthData *)self initWithTimestamp:buffer depthBuffer:source source:timestamp];
  if (v7)
  {
    v7->_confidenceBuffer = CVPixelBufferRetain(confidenceBuffer);
  }

  return v7;
}

- (__CVBuffer)singleFrameDepthBuffer
{
  os_unfair_lock_lock(&self->_singleFrameDepthBufferLock);
  singleFrameDepthBuffer = self->_singleFrameDepthBuffer;
  if (!singleFrameDepthBuffer)
  {
    singleFrameDepthBuffer = self->_depthBuffer;
  }

  os_unfair_lock_unlock(&self->_singleFrameDepthBufferLock);
  return singleFrameDepthBuffer;
}

- (void)setSingleFrameDepthBuffer:(__CVBuffer *)buffer
{
  if (buffer)
  {
    os_unfair_lock_lock(&self->_singleFrameDepthBufferLock);
    singleFrameDepthBuffer = self->_singleFrameDepthBuffer;
    if (singleFrameDepthBuffer)
    {
      CVPixelBufferRelease(singleFrameDepthBuffer);
    }

    self->_singleFrameDepthBuffer = buffer;
    CVPixelBufferRetain(buffer);

    os_unfair_lock_unlock(&self->_singleFrameDepthBufferLock);
  }
}

- (__CVBuffer)singleFrameConfidenceBuffer
{
  result = self->_singleFrameConfidenceBuffer;
  if (!result)
  {
    return self->_confidenceBuffer;
  }

  return result;
}

- (void)setSingleFrameConfidenceBuffer:(__CVBuffer *)buffer
{
  singleFrameConfidenceBuffer = self->_singleFrameConfidenceBuffer;
  if (singleFrameConfidenceBuffer != buffer)
  {
    CVPixelBufferRelease(singleFrameConfidenceBuffer);
    self->_singleFrameConfidenceBuffer = CVPixelBufferRetain(buffer);
  }
}

- (void)setNormalsBuffer:(__CVBuffer *)buffer
{
  normalsBuffer = self->_normalsBuffer;
  if (normalsBuffer != buffer)
  {
    CVPixelBufferRelease(normalsBuffer);
    self->_normalsBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setConfidenceMap:(__CVBuffer *)map
{
  confidenceMap = self->_confidenceMap;
  if (confidenceMap != map)
  {
    CVPixelBufferRelease(confidenceMap);
    self->_confidenceMap = map;

    CVPixelBufferRetain(map);
  }
}

- (void)dealloc
{
  singleFrameDepthBuffer = self->_singleFrameDepthBuffer;
  if (singleFrameDepthBuffer != self->_depthBuffer)
  {
    CVPixelBufferRelease(singleFrameDepthBuffer);
  }

  singleFrameConfidenceBuffer = self->_singleFrameConfidenceBuffer;
  if (singleFrameConfidenceBuffer != self->_confidenceBuffer)
  {
    CVPixelBufferRelease(singleFrameConfidenceBuffer);
  }

  normalsBuffer = self->_normalsBuffer;
  if (normalsBuffer)
  {
    CVPixelBufferRelease(normalsBuffer);
  }

  CVPixelBufferRelease(self->_depthBuffer);
  CVPixelBufferRelease(self->_confidenceBuffer);
  CVPixelBufferRelease(self->_confidenceMap);
  v6.receiver = self;
  v6.super_class = ARMLDepthData;
  [(ARMLDepthData *)&v6 dealloc];
}

- (CGSize)depthBufferSize
{
  depthBuffer = [(ARMLDepthData *)self depthBuffer];
  if (depthBuffer)
  {
    v3 = depthBuffer;
    Width = CVPixelBufferGetWidth(depthBuffer);
    Height = CVPixelBufferGetHeight(v3);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v6 = Width;
  result.height = Height;
  result.width = v6;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(ARMLDepthData *)self timestamp];
  v7 = [v3 stringWithFormat:@"%@(%p): %f", v5, self, v6];

  return v7;
}

@end