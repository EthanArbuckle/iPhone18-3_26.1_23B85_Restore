@interface BLSHFlipbookHistoryFrame
- (BLSHFlipbookHistoryFrame)initWithFrame:(id)a3;
- (BLSHRenderedFlipbookFrame)hostFrame;
- (BOOL)isRetainingSurface;
- (__IOSurface)rawSurface;
- (__IOSurface)surface;
- (unint64_t)retainedMemoryUsage;
- (void)stopRetainingSurface;
@end

@implementation BLSHFlipbookHistoryFrame

- (BLSHFlipbookHistoryFrame)initWithFrame:(id)a3
{
  v5 = a3;
  v6 = [v5 presentationTime];
  v7 = [v5 frameId];
  [v5 apl];
  v9 = v8;
  [v5 aplDimming];
  v11 = v10;
  v12 = [v5 memoryUsage];
  [v5 rawSurfaceFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v5 isInverted];
  v22 = [v5 bls_specifier];
  v23 = [v5 bls_uuid];
  v28.receiver = self;
  v28.super_class = BLSHFlipbookHistoryFrame;
  LODWORD(v24) = v9;
  LODWORD(v25) = v11;
  v26 = [(BLSDiagnosticFlipbookFrame *)&v28 initWithPresentationTime:v6 frameId:v7 apl:v12 aplDimming:v21 memoryUsage:v22 rawSurfaceFrameRect:v23 inverted:v24 specifier:v25 uuid:v14, v16, v18, v20];

  if (v26)
  {
    v26->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v26->_hostFrame, v5);
    objc_storeStrong(&v26->_lock_retainedHostFrame, a3);
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
  v3 = [(BLSHRenderedFlipbookFrame *)self->_lock_retainedHostFrame memoryUsage];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
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
  v3 = [WeakRetained surface];

  return v3;
}

- (__IOSurface)rawSurface
{
  WeakRetained = objc_loadWeakRetained(&self->_hostFrame);
  v3 = [WeakRetained rawSurface];

  return v3;
}

- (BLSHRenderedFlipbookFrame)hostFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_hostFrame);

  return WeakRetained;
}

@end