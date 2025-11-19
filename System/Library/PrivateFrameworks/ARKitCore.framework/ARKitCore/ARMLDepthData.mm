@interface ARMLDepthData
- (ARMLDepthData)initWithTimestamp:(double)a3 depthBuffer:(__CVBuffer *)a4 confidenceBuffer:(__CVBuffer *)a5 source:(int64_t)a6;
- (ARMLDepthData)initWithTimestamp:(double)a3 depthBuffer:(__CVBuffer *)a4 source:(int64_t)a5;
- (CGSize)depthBufferSize;
- (NSString)description;
- (__CVBuffer)singleFrameConfidenceBuffer;
- (__CVBuffer)singleFrameDepthBuffer;
- (void)dealloc;
- (void)setConfidenceMap:(__CVBuffer *)a3;
- (void)setNormalsBuffer:(__CVBuffer *)a3;
- (void)setSingleFrameConfidenceBuffer:(__CVBuffer *)a3;
- (void)setSingleFrameDepthBuffer:(__CVBuffer *)a3;
@end

@implementation ARMLDepthData

- (ARMLDepthData)initWithTimestamp:(double)a3 depthBuffer:(__CVBuffer *)a4 source:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = ARMLDepthData;
  v8 = [(ARMLDepthData *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_timestamp = a3;
    v10 = CVPixelBufferRetain(a4);
    v9->_singleFrameDepthBuffer = 0;
    v9->_singleFrameDepthBufferLock._os_unfair_lock_opaque = 0;
    v9->_depthBuffer = v10;
    v9->_source = a5;
  }

  return v9;
}

- (ARMLDepthData)initWithTimestamp:(double)a3 depthBuffer:(__CVBuffer *)a4 confidenceBuffer:(__CVBuffer *)a5 source:(int64_t)a6
{
  v7 = [(ARMLDepthData *)self initWithTimestamp:a4 depthBuffer:a6 source:a3];
  if (v7)
  {
    v7->_confidenceBuffer = CVPixelBufferRetain(a5);
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

- (void)setSingleFrameDepthBuffer:(__CVBuffer *)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_singleFrameDepthBufferLock);
    singleFrameDepthBuffer = self->_singleFrameDepthBuffer;
    if (singleFrameDepthBuffer)
    {
      CVPixelBufferRelease(singleFrameDepthBuffer);
    }

    self->_singleFrameDepthBuffer = a3;
    CVPixelBufferRetain(a3);

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

- (void)setSingleFrameConfidenceBuffer:(__CVBuffer *)a3
{
  singleFrameConfidenceBuffer = self->_singleFrameConfidenceBuffer;
  if (singleFrameConfidenceBuffer != a3)
  {
    CVPixelBufferRelease(singleFrameConfidenceBuffer);
    self->_singleFrameConfidenceBuffer = CVPixelBufferRetain(a3);
  }
}

- (void)setNormalsBuffer:(__CVBuffer *)a3
{
  normalsBuffer = self->_normalsBuffer;
  if (normalsBuffer != a3)
  {
    CVPixelBufferRelease(normalsBuffer);
    self->_normalsBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setConfidenceMap:(__CVBuffer *)a3
{
  confidenceMap = self->_confidenceMap;
  if (confidenceMap != a3)
  {
    CVPixelBufferRelease(confidenceMap);
    self->_confidenceMap = a3;

    CVPixelBufferRetain(a3);
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
  v2 = [(ARMLDepthData *)self depthBuffer];
  if (v2)
  {
    v3 = v2;
    Width = CVPixelBufferGetWidth(v2);
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