@interface BLSHFlipbookHistoryFrame
- (BLSHFlipbookHistoryFrame)initWithFrame:(id)frame;
- (BLSHRenderedFlipbookFrame)hostFrame;
- (BOOL)isRetainingSurface;
- (__IOSurface)rawSurface;
- (__IOSurface)surface;
- (unint64_t)retainedMemoryUsage;
- (void)stopRetainingSurface;
@end

@implementation BLSHFlipbookHistoryFrame

- (BLSHFlipbookHistoryFrame)initWithFrame:(id)frame
{
  frameCopy = frame;
  presentationTime = [frameCopy presentationTime];
  frameId = [frameCopy frameId];
  [frameCopy apl];
  v9 = v8;
  [frameCopy aplDimming];
  v11 = v10;
  memoryUsage = [frameCopy memoryUsage];
  [frameCopy rawSurfaceFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  isInverted = [frameCopy isInverted];
  bls_specifier = [frameCopy bls_specifier];
  bls_uuid = [frameCopy bls_uuid];
  v28.receiver = self;
  v28.super_class = BLSHFlipbookHistoryFrame;
  LODWORD(v24) = v9;
  LODWORD(v25) = v11;
  v26 = [(BLSDiagnosticFlipbookFrame *)&v28 initWithPresentationTime:presentationTime frameId:frameId apl:memoryUsage aplDimming:isInverted memoryUsage:bls_specifier rawSurfaceFrameRect:bls_uuid inverted:v24 specifier:v25 uuid:v14, v16, v18, v20];

  if (v26)
  {
    v26->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v26->_hostFrame, frameCopy);
    objc_storeStrong(&v26->_lock_retainedHostFrame, frame);
  }

  return v26;
}

- (BOOL)isRetainingSurface
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_retainedHostFrame != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)retainedMemoryUsage
{
  os_unfair_lock_lock(&self->_lock);
  memoryUsage = [(BLSHRenderedFlipbookFrame *)self->_lock_retainedHostFrame memoryUsage];
  os_unfair_lock_unlock(&self->_lock);
  return memoryUsage;
}

- (void)stopRetainingSurface
{
  os_unfair_lock_lock(&self->_lock);
  lock_retainedHostFrame = self->_lock_retainedHostFrame;
  self->_lock_retainedHostFrame = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (__IOSurface)surface
{
  WeakRetained = objc_loadWeakRetained(&self->_hostFrame);
  surface = [WeakRetained surface];

  return surface;
}

- (__IOSurface)rawSurface
{
  WeakRetained = objc_loadWeakRetained(&self->_hostFrame);
  rawSurface = [WeakRetained rawSurface];

  return rawSurface;
}

- (BLSHRenderedFlipbookFrame)hostFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_hostFrame);

  return WeakRetained;
}

@end