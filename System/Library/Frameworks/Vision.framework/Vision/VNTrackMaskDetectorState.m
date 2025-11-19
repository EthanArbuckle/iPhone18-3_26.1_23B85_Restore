@interface VNTrackMaskDetectorState
- (VNTrackMaskDetectorState)init;
- (VNTrackMaskDetectorState)initWithFrameUpdateSpacing:(id *)a3 mask:(__CVBuffer *)a4;
- (void)dealloc;
@end

@implementation VNTrackMaskDetectorState

- (void)dealloc
{
  CVPixelBufferRelease(self->_previousKey);
  CVPixelBufferRelease(self->_previousValue);
  CVPixelBufferRelease(self->_hiddenMaskBuffer);
  CVPixelBufferRelease(self->_hiddenMaskBufferOutput);
  CVPixelBufferRelease(self->_previousKeyOutput);
  CVPixelBufferRelease(self->_previousValueOutput);
  CVPixelBufferRelease(self->_outputMask);
  CVPixelBufferRelease(self->_quality);
  CVPixelBufferRelease(self->_output);
  CVPixelBufferRelease(self->_inititalMask);
  self->_inititalMask = 0;
  v3.receiver = self;
  v3.super_class = VNTrackMaskDetectorState;
  [(VNTrackMaskDetectorState *)&v3 dealloc];
}

- (VNTrackMaskDetectorState)initWithFrameUpdateSpacing:(id *)a3 mask:(__CVBuffer *)a4
{
  v6 = [(VNTrackMaskDetectorState *)self init];
  v7 = v6;
  if (v6)
  {
    v8 = *&a3->var0;
    v6->_frameUpdateSpacing.epoch = a3->var3;
    *&v6->_frameUpdateSpacing.value = v8;
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    VNCVPixelBufferCreateUsingIOSurface(Width, Height, 0x4C303068u, 0, &v7->_inititalMask);
    inititalMask = v7->_inititalMask;
    if (inititalMask)
    {
      objc_opt_self();
      v12 = CVPixelBufferGetWidth(a4);
      if (v12 == CVPixelBufferGetWidth(inititalMask) && (v13 = CVPixelBufferGetHeight(a4), v13 == CVPixelBufferGetHeight(inititalMask)))
      {
        CVPixelBufferLockBaseAddress(a4, 1uLL);
        CVPixelBufferLockBaseAddress(inititalMask, 0);
        v14 = CVPixelBufferGetWidth(a4);
        v15 = CVPixelBufferGetHeight(a4);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
        v17 = CVPixelBufferGetBytesPerRow(inititalMask);
        src.data = CVPixelBufferGetBaseAddress(a4);
        src.height = v15;
        src.width = v14;
        src.rowBytes = BytesPerRow;
        v21.data = CVPixelBufferGetBaseAddress(inititalMask);
        v21.height = v15;
        v21.width = v14;
        v21.rowBytes = v17;
        v18 = vImageConvert_PlanarFtoPlanar16F(&src, &v21, 0);
        CVPixelBufferUnlockBaseAddress(inititalMask, 0);
        CVPixelBufferUnlockBaseAddress(a4, 1uLL);
        if (v18)
        {
          v19 = [VNError errorForInternalErrorWithLocalizedDescription:@"conversion from FP32 to FP16 failed"];
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = [VNError errorForInternalErrorWithLocalizedDescription:@"Pixel buffers are of different dimensions"];
      }
    }
  }

  return v7;
}

- (VNTrackMaskDetectorState)init
{
  v6.receiver = self;
  v6.super_class = VNTrackMaskDetectorState;
  result = [(VNTrackMaskDetectorState *)&v6 init];
  if (result)
  {
    result->_firstFrame = 1;
    v3 = MEMORY[0x1E6960CC0];
    v4 = *MEMORY[0x1E6960CC0];
    *&result->_frameUpdateSpacing.value = *MEMORY[0x1E6960CC0];
    v5 = *(v3 + 16);
    result->_frameUpdateSpacing.epoch = v5;
    *&result->_lastUpdatePTS.value = v4;
    result->_lastUpdatePTS.epoch = v5;
    *&result->_lastProcessedPTS.value = v4;
    result->_lastProcessedPTS.epoch = v5;
    result->_confidence = 0.0;
  }

  return result;
}

@end