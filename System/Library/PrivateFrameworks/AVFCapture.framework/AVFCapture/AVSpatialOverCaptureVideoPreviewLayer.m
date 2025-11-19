@interface AVSpatialOverCaptureVideoPreviewLayer
- (AVSpatialOverCaptureVideoPreviewLayer)initWithLayer:(id)a3;
- (BOOL)performContentUpdates:(id)a3;
- (CGAffineTransform)captureDeviceTransformForSensorSize:(SEL)a3 previewSize:(CGSize)a4 sensorToPreviewVTScalingMode:(CGSize)a5 applyDynamicAspectRatio:(id)a6;
- (CGPoint)primaryCaptureRectCenterPoint;
- (CGRect)overCaptureRect;
- (CGRect)primaryCaptureRect;
- (CGSize)contentSize;
- (double)primaryCaptureRectAspectRatio;
- (id)_initWithSession:(id)a3 makeConnection:(BOOL)a4;
- (id)addConnection:(id)a3 error:(id *)a4;
- (id)semanticStyle;
- (id)semanticStyles;
- (id)semanticStylesRegions;
- (int64_t)overCaptureStatus;
- (int64_t)primaryCaptureRectUniqueID;
- (void)_handleSpatialNotification:(id)a3 payload:(id)a4;
- (void)_setPrimaryCaptureRectAspectRatio:(double)a3 centerPoint:(CGPoint)a4 trueVideoTransitionPercentComplete:(double)a5 smartFramingTransitionPercentComplete:(double)a6 smartFramingTransitionTargetFieldOfView:(id)a7;
- (void)_updatePrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:(BOOL)a3 center:(CGPoint *)a4 aspectRatio:(double *)a5;
- (void)_updateSemanticStyleRenderingSupported;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)dealloc;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)didUpdatePreviewImageQueueSlot:(unsigned int)a3 imageQueue:(id)a4 rotationDegrees:(double)a5 size:(CGSize)a6;
- (void)getPrimaryCaptureRectCenter:(CGPoint *)a3 aspectRatio:(double *)a4 uniqueID:(int64_t *)a5;
- (void)getPrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:(BOOL)a3 center:(CGPoint *)a4 aspectRatio:(double *)a5 uniqueID:(int64_t *)a6;
- (void)layoutSublayers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeConnection:(id)a3;
- (void)setAutomaticallyDimsOverCaptureRegion:(BOOL)a3;
- (void)setPrimaryAndOverCaptureCompositingEnabled:(BOOL)a3;
- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4;
- (void)setSemanticStyleRenderingEnabled:(BOOL)a3;
- (void)setSemanticStyles:(id)a3 semanticStylesRegions:(id)a4;
@end

@implementation AVSpatialOverCaptureVideoPreviewLayer

- (void)_updateSemanticStyleRenderingSupported
{
  v3 = [objc_msgSend(-[AVCaptureConnection sourceDevice](-[AVCaptureVideoPreviewLayer connection](self "connection")];
  objc_sync_enter(self);
  semanticStyleRenderingSupported = self->_semanticStyleRenderingSupported;
  if (v3)
  {
    semanticStyleRenderingEnabled = 0;
    v6 = 0;
  }

  else
  {
    semanticStyleRenderingEnabled = self->_semanticStyleRenderingEnabled;
    v6 = [(NSArray *)self->_semanticStyles count]!= 0;
  }

  objc_sync_exit(self);
  if (semanticStyleRenderingSupported == v3)
  {
    if (!semanticStyleRenderingEnabled)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyleRenderingSupported"];
    if (!semanticStyleRenderingEnabled)
    {
LABEL_6:
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyleRenderingEnabled"];
  [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"maxSemanticStyles"];
  if (v6)
  {
LABEL_7:
    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyle"];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyles"];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStylesRegions"];
  }

LABEL_8:
  objc_sync_enter(self);
  self->_semanticStyleRenderingSupported = v3;
  if (semanticStyleRenderingEnabled)
  {
    self->_semanticStyleRenderingEnabled = 0;
    self->_maxSemanticStyles = 0;
  }

  if (!v6)
  {
    objc_sync_exit(self);
    if (!semanticStyleRenderingEnabled)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  self->_semanticStyles = objc_alloc_init(MEMORY[0x1E695DEC8]);
  self->_semanticStylesRegions = objc_alloc_init(MEMORY[0x1E695DEC8]);
  objc_sync_exit(self);
  [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStylesRegions"];
  [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyles"];
  [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyle"];
  if (semanticStyleRenderingEnabled)
  {
LABEL_17:
    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"maxSemanticStyles"];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyleRenderingEnabled"];
  }

LABEL_18:
  if (semanticStyleRenderingSupported != v3)
  {

    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyleRenderingSupported"];
  }
}

- (id)semanticStyles
{
  v2 = self->_semanticStyles;

  return v2;
}

- (id)semanticStyle
{
  v2 = [(NSArray *)self->_semanticStyles firstObject];

  return v2;
}

- (double)primaryCaptureRectAspectRatio
{
  os_unfair_lock_lock(&self->_primaryCaptureRectLock);
  primaryCaptureRectAspectRatio = self->_primaryCaptureRectAspectRatio;
  os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
  return primaryCaptureRectAspectRatio;
}

- (CGPoint)primaryCaptureRectCenterPoint
{
  os_unfair_lock_lock(&self->_primaryCaptureRectLock);
  x = self->_primaryCaptureRectCenterPoint.x;
  y = self->_primaryCaptureRectCenterPoint.y;
  os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
  v5 = x;
  v6 = y;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)layoutSublayers
{
  v23.receiver = self;
  v23.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v23 layoutSublayers];
  if (self->_automaticallyDimsOverCaptureRegion)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v22 = *MEMORY[0x1E695EFF8];
    v21 = 0.0;
    [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromFrontFacingCamera];
    [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromExternalCamera];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self getPrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:AVCapturePlatformMountsCamerasInLandscapeOrientation() center:&v22 aspectRatio:&v21 uniqueID:0];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self bounds];
    *(&v22 + 1) = *(&v22 + 1) * v3;
    [(AVSpatialOverCaptureVideoPreviewLayer *)self bounds];
    v4 = v21;
    *&v22 = *&v22 * v5;
    [(AVSpatialOverCaptureVideoPreviewLayer *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v24.width = 1.0;
    v24.height = v4;
    v27.origin.x = v7;
    v27.origin.y = v9;
    v27.size.width = v11;
    v27.size.height = v13;
    v25 = AVMakeRectWithAspectRatioInsideRect(v24, v27);
    width = v25.size.width;
    height = v25.size.height;
    v16 = *(&v22 + 1) - v25.size.width * 0.5;
    v17 = *&v22 - v25.size.height * 0.5;
    v18 = *MEMORY[0x1E695F058];
    v25.origin.x = v16;
    v25.origin.y = v17;
    [(CALayer *)self->_topDimmingOverlay setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v25.size.width, CGRectGetMinY(v25)];
    v26.origin.x = v16;
    v26.origin.y = v17;
    v26.size.width = width;
    v26.size.height = height;
    MaxY = CGRectGetMaxY(v26);
    [(AVSpatialOverCaptureVideoPreviewLayer *)self bounds];
    [(CALayer *)self->_bottomDimmingOverlay setFrame:v18, MaxY, width, v20 - MaxY];
    [MEMORY[0x1E6979518] commit];
  }
}

- (int64_t)overCaptureStatus
{
  os_unfair_lock_lock(&self->_primaryCaptureRectLock);
  overCaptureStatus = self->_overCaptureStatus;
  os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
  return overCaptureStatus;
}

- (id)semanticStylesRegions
{
  v2 = self->_semanticStylesRegions;

  return v2;
}

- (id)_initWithSession:(id)a3 makeConnection:(BOOL)a4
{
  v14.receiver = self;
  v14.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  v4 = [(AVCaptureVideoPreviewLayer *)&v14 _initWithSession:a3 makeConnection:a4];
  v5 = v4;
  if (v4)
  {
    v4[14] = 0;
    __asm { FMOV            V0.2D, #0.5 }

    *(v4 + 4) = _Q0;
    *(v4 + 10) = 0x3FF5555555555555;
    *(v4 + 14) = [objc_opt_class() uniqueID];
    v5[208] = 1;
    *(v5 + 20) = 0;
    *(v5 + 21) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v5 + 11) = _Q0;
    v12 = *(MEMORY[0x1E695F058] + 16);
    *(v5 + 8) = *MEMORY[0x1E695F058];
    *(v5 + 9) = v12;
    [v5 setAutomaticallyDimsOverCaptureRegion:1];
    *(v5 + 33) = objc_alloc_init(MEMORY[0x1E695DEC8]);
    *(v5 + 34) = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v5;
}

- (AVSpatialOverCaptureVideoPreviewLayer)initWithLayer:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19.receiver = self;
    v19.super_class = AVSpatialOverCaptureVideoPreviewLayer;
    v5 = [(AVCaptureVideoPreviewLayer *)&v19 initWithLayer:a3];
    v6 = v5;
    if (v5)
    {
      v5->_isPresentationLayer = 1;
      v5->_primaryCaptureRectLock._os_unfair_lock_opaque = 0;
      v18 = *MEMORY[0x1E695EFF8];
      v16 = 0;
      v17 = 0.0;
      [a3 getPrimaryCaptureRectCenter:&v18 aspectRatio:&v17 uniqueID:&v16];
      v6->_primaryCaptureRectCenterPoint = v18;
      v6->_primaryCaptureRectAspectRatio = v17;
      v6->_primaryCaptureRectUniqueID = v16;
      [a3 primaryCaptureRect];
      v6->_primaryCaptureRect.origin.x = v7;
      v6->_primaryCaptureRect.origin.y = v8;
      v6->_primaryCaptureRect.size.width = v9;
      v6->_primaryCaptureRect.size.height = v10;
      [a3 overCaptureRect];
      v6->_overCaptureRect.origin.x = v11;
      v6->_overCaptureRect.origin.y = v12;
      v6->_overCaptureRect.size.width = v13;
      v6->_overCaptureRect.size.height = v14;
      v6->_primaryAndOverCaptureCompositingEnabled = [a3 isPrimaryAndOverCaptureCompositingEnabled];
      -[AVSpatialOverCaptureVideoPreviewLayer setAutomaticallyDimsOverCaptureRegion:](v6, "setAutomaticallyDimsOverCaptureRegion:", [a3 automaticallyDimsOverCaptureRegion]);
      v6->_semanticStyleRenderingSupported = [a3 isSemanticStyleRenderingSupported];
      v6->_semanticStyleRenderingEnabled = [a3 isSemanticStyleRenderingEnabled];
      v6->_semanticStyles = [objc_msgSend(a3 "semanticStyles")];
      v6->_semanticStylesRegions = [objc_msgSend(a3 "semanticStylesRegions")];
      v6->_maxSemanticStyles = [a3 maxSemanticStyles];
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  self->_semanticStyles = 0;

  self->_semanticStylesRegions = 0;
  v3.receiver = self;
  v3.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v3 dealloc];
}

- (void)_setPrimaryCaptureRectAspectRatio:(double)a3 centerPoint:(CGPoint)a4 trueVideoTransitionPercentComplete:(double)a5 smartFramingTransitionPercentComplete:(double)a6 smartFramingTransitionTargetFieldOfView:(id)a7
{
  y = a4.y;
  x = a4.x;
  v31 = a4;
  v30 = a3;
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromExternalCamera];
  v14 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
  self->_lastAspectCenterUpdateTime = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_lock(&self->_primaryCaptureRectLock);
  primaryCaptureRectAspectRatio = self->_primaryCaptureRectAspectRatio;
  v16 = y != self->_primaryCaptureRectCenterPoint.y || x != self->_primaryCaptureRectCenterPoint.x;
  v17 = @"FieldOfViewNone" != a7 && self->_primaryCaptureRectSmartFramingTransitionPercentComplete != a6;
  v24 = 120;
  lastCamerasMountedInLandscapeOrientation = self->_lastCamerasMountedInLandscapeOrientation;
  os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
  v19 = v16;
  if (primaryCaptureRectAspectRatio != a3 || v16 || (lastCamerasMountedInLandscapeOrientation == v14 ? (v20 = !v17) : (v20 = 0), !v20))
  {
    if (primaryCaptureRectAspectRatio != a3)
    {
      [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"primaryCaptureRectAspectRatio"];
    }

    if (v16)
    {
      [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"primaryCaptureRectCenterPoint"];
    }

    os_unfair_lock_lock(&self->_primaryCaptureRectLock);
    self->_primaryCaptureRectAspectRatio = a3;
    self->_primaryCaptureRectCenterPoint = v31;
    self->_primaryCaptureRectTrueVideoTransitionPercentComplete = a5;
    self->_primaryCaptureRectSmartFramingTransitionPercentComplete = a6;
    self->_primaryCaptureRectSmartFramingTransitionTargetFieldOfView = a7;
    v21 = [objc_opt_class() uniqueID];
    self->_primaryCaptureRectUniqueID = v21;
    self->_lastCamerasMountedInLandscapeOrientation = v14;
    os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
    [(AVSpatialOverCaptureVideoPreviewLayer *)self _updatePrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:v14 center:&v31 aspectRatio:&v30];
    if (![(AVCaptureSession *)[(AVCaptureVideoPreviewLayer *)self session] isBeingConfiguredOnCurrentThread])
    {
      if ([MEMORY[0x1E6979518] currentState])
      {
        v22 = [(AVSpatialOverCaptureVideoPreviewLayer *)self context];
        v23 = [objc_alloc(MEMORY[0x1E698F7A0]) initWithPort:{objc_msgSend(v22, "createFencePort")}];
        [v22 setFencePort:{objc_msgSend(v23, "port")}];
      }

      else
      {
        v23 = 0;
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __200__AVSpatialOverCaptureVideoPreviewLayer__setPrimaryCaptureRectAspectRatio_centerPoint_trueVideoTransitionPercentComplete_smartFramingTransitionPercentComplete_smartFramingTransitionTargetFieldOfView___block_invoke;
      v25[3] = &unk_1E786EF30;
      *&v25[7] = v30;
      v26 = v31;
      v27 = a5;
      v28 = a6;
      v29 = v21;
      v25[4] = a7;
      v25[5] = v23;
      v25[6] = self;
      [(AVCaptureVideoPreviewLayer *)self performFigCaptureSessionOperationSafelyUsingBlock:v25, 120];
    }

    [(AVCaptureVideoPreviewLayer *)self setCaptureDeviceTransformNeedsUpdate];
    if (v19)
    {
      [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"primaryCaptureRectCenterPoint"];
    }

    if (primaryCaptureRectAspectRatio != a3)
    {
      [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"primaryCaptureRectAspectRatio"];
    }
  }

  if (self->_automaticallyDimsOverCaptureRegion)
  {
    [(AVSpatialOverCaptureVideoPreviewLayer *)self setNeedsLayout];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self layoutIfNeeded];
  }
}

void __200__AVSpatialOverCaptureVideoPreviewLayer__setPrimaryCaptureRectAspectRatio_centerPoint_trueVideoTransitionPercentComplete_smartFramingTransitionPercentComplete_smartFramingTransitionTargetFieldOfView___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
    [v14 setObject:v4 forKeyedSubscript:*MEMORY[0x1E698FD80]];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
    [v14 setObject:v5 forKeyedSubscript:*MEMORY[0x1E698FD90]];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 72)];
    [v14 setObject:v6 forKeyedSubscript:*MEMORY[0x1E698FD98]];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80)];
    [v14 setObject:v7 forKeyedSubscript:*MEMORY[0x1E698FDB0]];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 88)];
    [v14 setObject:v8 forKeyedSubscript:*MEMORY[0x1E698FDA0]];
    [v14 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E698FDA8]];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 96)];
    [v14 setObject:v9 forKeyedSubscript:*MEMORY[0x1E698FDB8]];
    v10 = *(a1 + 40);
    if (v10)
    {
      [v14 setObject:v10 forKeyedSubscript:*MEMORY[0x1E698FD88]];
    }

    v11 = [*(a1 + 48) sinkID];
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v12)
    {
      v12(a2, v11, *MEMORY[0x1E698FDD8], v14);
    }
  }

  else
  {
    v13 = *(a1 + 48);
    if ((*(v13 + 121) & 1) == 0)
    {
      *(v13 + 121) = 1;
    }
  }
}

- (void)setPrimaryAndOverCaptureCompositingEnabled:(BOOL)a3
{
  if (self->_primaryAndOverCaptureCompositingEnabled != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_primaryAndOverCaptureCompositingEnabled = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__AVSpatialOverCaptureVideoPreviewLayer_setPrimaryAndOverCaptureCompositingEnabled___block_invoke;
    v5[3] = &unk_1E786EF58;
    v5[4] = self;
    v6 = a3;
    [(AVCaptureVideoPreviewLayer *)self performFigCaptureSessionOperationSafelyUsingBlock:v5];
  }
}

uint64_t __84__AVSpatialOverCaptureVideoPreviewLayer_setPrimaryAndOverCaptureCompositingEnabled___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [*(result + 32) sinkID];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:*(v3 + 40)];
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *MEMORY[0x1E698FDD0];

      return v8(a2, v4, v9, v5);
    }
  }

  return result;
}

- (int64_t)primaryCaptureRectUniqueID
{
  os_unfair_lock_lock(&self->_primaryCaptureRectLock);
  primaryCaptureRectUniqueID = self->_primaryCaptureRectUniqueID;
  os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
  return primaryCaptureRectUniqueID;
}

- (void)getPrimaryCaptureRectCenter:(CGPoint *)a3 aspectRatio:(double *)a4 uniqueID:(int64_t *)a5
{
  os_unfair_lock_lock(&self->_primaryCaptureRectLock);
  primaryCaptureRectCenterPoint = self->_primaryCaptureRectCenterPoint;
  primaryCaptureRectAspectRatio = self->_primaryCaptureRectAspectRatio;
  primaryCaptureRectUniqueID = self->_primaryCaptureRectUniqueID;
  os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
  if (a3)
  {
    *a3 = primaryCaptureRectCenterPoint;
  }

  if (a4)
  {
    *a4 = primaryCaptureRectAspectRatio;
  }

  if (a5)
  {
    *a5 = primaryCaptureRectUniqueID;
  }
}

- (void)_updatePrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:(BOOL)a3 center:(CGPoint *)a4 aspectRatio:(double *)a5
{
  if (!a3)
  {
    if (a4)
    {
      *a4 = vextq_s8(*a4, *a4, 8uLL);
    }

    if (a5)
    {
      *a5 = 1.0 / *a5;
    }
  }
}

- (void)getPrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:(BOOL)a3 center:(CGPoint *)a4 aspectRatio:(double *)a5 uniqueID:(int64_t *)a6
{
  v8 = a3;
  [(AVSpatialOverCaptureVideoPreviewLayer *)self getPrimaryCaptureRectCenter:a4 aspectRatio:a5 uniqueID:a6];

  [(AVSpatialOverCaptureVideoPreviewLayer *)self _updatePrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:v8 center:a4 aspectRatio:a5];
}

- (void)setAutomaticallyDimsOverCaptureRegion:(BOOL)a3
{
  if (self->_automaticallyDimsOverCaptureRegion != a3)
  {
    v15 = v3;
    v16 = v4;
    v5 = a3;
    self->_automaticallyDimsOverCaptureRegion = a3;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    if (v5)
    {
      v13 = 0u;
      v14 = 0u;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v8 = CFAutorelease(DeviceRGB);
      v9 = CGColorCreate(v8, &v13);
      v10 = CFAutorelease(v9);
      v11 = [MEMORY[0x1E6979398] layer];
      self->_topDimmingOverlay = v11;
      [(CALayer *)v11 setBackgroundColor:v10];
      [(AVSpatialOverCaptureVideoPreviewLayer *)self addSublayer:self->_topDimmingOverlay];
      v12 = [MEMORY[0x1E6979398] layer];
      self->_bottomDimmingOverlay = v12;
      [(CALayer *)v12 setBackgroundColor:v10];
      [(AVSpatialOverCaptureVideoPreviewLayer *)self addSublayer:self->_bottomDimmingOverlay];
    }

    else
    {
      [(CALayer *)self->_topDimmingOverlay removeFromSuperlayer];
      self->_topDimmingOverlay = 0;
      [(CALayer *)self->_bottomDimmingOverlay removeFromSuperlayer];
      self->_bottomDimmingOverlay = 0;
    }

    [MEMORY[0x1E6979518] commit];
  }
}

- (void)setSemanticStyleRenderingEnabled:(BOOL)a3
{
  if (!a3)
  {
    p_semanticStyleRenderingEnabled = &self->_semanticStyleRenderingEnabled;
    if (!self->_semanticStyleRenderingEnabled)
    {
      return;
    }

    v6 = [(NSArray *)self->_semanticStyles count];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"maxSemanticStyles"];
    if (v6)
    {
      [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyle"];
      [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyles"];
      [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStylesRegions"];

      self->_semanticStyles = objc_alloc_init(MEMORY[0x1E695DEC8]);
      self->_semanticStylesRegions = objc_alloc_init(MEMORY[0x1E695DEC8]);
      self->_maxSemanticStyles = 0;
      [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStylesRegions"];
      [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyles"];
      [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyle"];
    }

    else
    {
      self->_maxSemanticStyles = 0;
    }

    goto LABEL_12;
  }

  if (self->_semanticStyleRenderingSupported)
  {
    p_semanticStyleRenderingEnabled = &self->_semanticStyleRenderingEnabled;
    if (self->_semanticStyleRenderingEnabled == a3)
    {
      return;
    }

    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"maxSemanticStyles"];
    self->_maxSemanticStyles = 3;
LABEL_12:
    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"maxSemanticStyles"];
    *p_semanticStyleRenderingEnabled = a3;

    [(AVCaptureVideoPreviewLayer *)self bumpChangeSeed];
    return;
  }

  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v7);
  }

  NSLog(&cfstr_SuppressingExc.isa, v7);
}

- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4
{
  if (![(AVSpatialOverCaptureVideoPreviewLayer *)self isSemanticStyleRenderingEnabled])
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v12);
    }

    NSLog(&cfstr_SuppressingExc.isa, v12);
    return;
  }

  if ([-[AVSpatialOverCaptureVideoPreviewLayer semanticStyles](self "semanticStyles")] != 1 || objc_msgSend(-[AVSpatialOverCaptureVideoPreviewLayer semanticStylesRegions](self, "semanticStylesRegions"), "count") != 1)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v7 = [objc_msgSend(-[AVSpatialOverCaptureVideoPreviewLayer semanticStyles](self "semanticStyles")];
  v15.origin.x = vpl_valueToRect([-[AVSpatialOverCaptureVideoPreviewLayer semanticStylesRegions](self "semanticStylesRegions")]);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 1.0;
  v16.size.height = 1.0;
  v8 = CGRectEqualToRect(v15, v16);
  v9 = v8;
  if (v7 && v8)
  {
    return;
  }

  if ((v7 & 1) == 0)
  {
LABEL_12:
    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyle"];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyles"];

    self->_semanticStyles = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a3, 0}];
    v10 = 1;
    v11 = 1;
    if (v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStylesRegions"];

    v11 = 0;
    self->_semanticStylesRegions = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{vpl_rectToValue(0.0, 0.0, 1.0, 1.0), 0}];
    goto LABEL_14;
  }

  v10 = 0;
  if (!v8)
  {
    goto LABEL_13;
  }

  v11 = 1;
LABEL_14:
  if ([(AVCaptureSession *)[(AVCaptureVideoPreviewLayer *)self session] isBeingConfigured])
  {
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__AVSpatialOverCaptureVideoPreviewLayer_setSemanticStyle_animated___block_invoke;
    v13[3] = &unk_1E786EF80;
    v14 = a4;
    v13[4] = a3;
    v13[5] = self;
    [(AVCaptureVideoPreviewLayer *)self performFigCaptureSessionOperationSafelyUsingBlock:v13];
    if (v11)
    {
LABEL_16:
      if (!v10)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStylesRegions"];
  if (v10)
  {
LABEL_17:
    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyles"];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyle"];
  }
}

uint64_t __67__AVSpatialOverCaptureVideoPreviewLayer_setSemanticStyle_animated___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(result + 32);
    if (v4)
    {
      v5 = MEMORY[0x1E698F7C8];
      [v4 toneBias];
      v7 = v6;
      [*(v3 + 32) warmthBias];
      LODWORD(v9) = v8;
      LODWORD(v10) = v7;
      v11 = [v5 semanticStyleWithToneBias:v10 warmthBias:v9];
      v12 = *MEMORY[0x1E698FDF0];
      v26[0] = v11;
      v13 = *MEMORY[0x1E698FDE8];
      v25[0] = v12;
      v25[1] = v13;
      v26[1] = [MEMORY[0x1E696AD98] numberWithBool:*(v3 + 48)];
      v14 = MEMORY[0x1E695DF20];
      v15 = v26;
      v16 = v25;
      v17 = 2;
    }

    else
    {
      v24 = [MEMORY[0x1E696AD98] numberWithBool:{*(v3 + 48), *MEMORY[0x1E698FDE8]}];
      v14 = MEMORY[0x1E695DF20];
      v15 = &v24;
      v16 = &v23;
      v17 = 1;
    }

    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
    v19 = [*(v3 + 40) sinkID];
    VTable = CMBaseObjectGetVTable();
    v21 = *(VTable + 16);
    result = VTable + 16;
    v22 = *(v21 + 8);
    if (v22)
    {
      return v22(a2, v19, *MEMORY[0x1E698FDE0], v18);
    }
  }

  return result;
}

- (void)setSemanticStyles:(id)a3 semanticStylesRegions:(id)a4
{
  if (![(AVSpatialOverCaptureVideoPreviewLayer *)self isSemanticStyleRenderingEnabled])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    goto LABEL_28;
  }

  v7 = [a3 count];
  if (v7 != [a4 count])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    goto LABEL_28;
  }

  if (![a3 count])
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    goto LABEL_28;
  }

  v8 = [a3 count];
  if (v8 <= [(AVSpatialOverCaptureVideoPreviewLayer *)self maxSemanticStyles])
  {
    if ([a4 count] != 1)
    {
      v14 = 0;
      while (1)
      {
        v15 = v14++;
        if (v14 < [a4 count])
        {
          break;
        }

LABEL_25:
        if (v14 >= [a4 count] - 1)
        {
          goto LABEL_10;
        }
      }

      v16 = v14;
      while (1)
      {
        v17 = [a4 objectAtIndexedSubscript:v15];
        v18 = [a4 objectAtIndexedSubscript:v16];
        v19 = vpl_valueToRect(v17);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = vpl_valueToRect(v18);
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v42.origin.x = v19;
        v42.origin.y = v21;
        v42.size.width = v23;
        v42.size.height = v25;
        v43.origin.x = v26;
        v43.origin.y = v28;
        v43.size.width = v30;
        v43.size.height = v32;
        if (CGRectIntersectsRect(v42, v43))
        {
          break;
        }

        if (++v16 >= [a4 count])
        {
          goto LABEL_25;
        }
      }

      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      v33 = MEMORY[0x1E696AEC0];
      v34 = vpl_rectToString(v19, v21, v23, v25);
      [v33 stringWithFormat:@"Region %d (%@) and region %d (%@) may not overlap", v15, v34, v16, vpl_rectToString(v26, v28, v30, v32)];
      goto LABEL_28;
    }

LABEL_10:
    v11 = [(NSArray *)self->_semanticStyles isEqual:a3];
    v12 = [(NSArray *)self->_semanticStylesRegions isEqual:a4];
    v13 = v12;
    if (v11 && (v12 & 1) != 0)
    {
      return;
    }

    if ((v11 & 1) == 0)
    {
      [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyle"];
      [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyles"];

      self->_semanticStyles = [a3 copy];
    }

    if ((v13 & 1) == 0)
    {
      [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStylesRegions"];

      self->_semanticStylesRegions = [a4 copy];
    }

    if ([(AVCaptureSession *)[(AVCaptureVideoPreviewLayer *)self session] isBeingConfigured])
    {
      if (v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ([MEMORY[0x1E6979518] currentState])
      {
        v36 = [(AVSpatialOverCaptureVideoPreviewLayer *)self context];
        v37 = [objc_alloc(MEMORY[0x1E698F7A0]) initWithPort:{objc_msgSend(v36, "createFencePort")}];
        [v36 setFencePort:{objc_msgSend(v37, "port")}];
      }

      else
      {
        v37 = 0;
      }

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __81__AVSpatialOverCaptureVideoPreviewLayer_setSemanticStyles_semanticStylesRegions___block_invoke;
      v41[3] = &unk_1E786EFA8;
      v41[4] = self;
      v41[5] = v37;
      [(AVCaptureVideoPreviewLayer *)self performFigCaptureSessionOperationSafelyUsingBlock:v41];

      if (v13)
      {
LABEL_18:
        if (v11)
        {
          return;
        }

        goto LABEL_36;
      }
    }

    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStylesRegions"];
    if (v11)
    {
      return;
    }

LABEL_36:
    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyles"];
    [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyle"];
    return;
  }

  v9 = MEMORY[0x1E695DF30];
  v10 = *MEMORY[0x1E695D940];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"May only pass up to %d semantic styles and regions", -[AVSpatialOverCaptureVideoPreviewLayer maxSemanticStyles](self, "maxSemanticStyles"), v38, v39, v40];
LABEL_28:
  v35 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v35);
  }

  NSLog(&cfstr_SuppressingExc.isa, v35);
}

void __81__AVSpatialOverCaptureVideoPreviewLayer_setSemanticStyles_semanticStylesRegions___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = *(*(a1 + 32) + 264);
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = MEMORY[0x1E698F7C8];
          [v10 toneBias];
          v13 = v12;
          [v10 warmthBias];
          LODWORD(v15) = v14;
          LODWORD(v16) = v13;
          [v4 addObject:{objc_msgSend(v11, "semanticStyleWithToneBias:warmthBias:", v16, v15)}];
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v7);
    }

    v17 = [MEMORY[0x1E698F7D0] semanticStyleSetWithSemanticStyles:v4 regions:*(*(a1 + 32) + 272)];
    if (v17)
    {
      [v21 setObject:v17 forKeyedSubscript:*MEMORY[0x1E698FDF8]];
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      [v21 setObject:v18 forKeyedSubscript:*MEMORY[0x1E698FD88]];
    }

    v19 = [*(a1 + 32) sinkID];
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v20)
    {
      v20(a2, v19, *MEMORY[0x1E698FDE0], v21);
    }
  }
}

- (BOOL)performContentUpdates:(id)a3
{
  if ([MEMORY[0x1E6979518] currentState])
  {
    (*(a3 + 2))(a3);
  }

  else
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v4);
    }

    NSLog(&cfstr_SuppressingExc.isa, v4);
  }

  return 0;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v6.receiver = self;
  v6.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:a6];
}

- (CGAffineTransform)captureDeviceTransformForSensorSize:(SEL)a3 previewSize:(CGSize)a4 sensorToPreviewVTScalingMode:(CGSize)a5 applyDynamicAspectRatio:(id)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  v44 = *MEMORY[0x1E695EFF8];
  v43 = 0.0;
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection:a6] sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromExternalCamera];
  v13 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
  [(AVSpatialOverCaptureVideoPreviewLayer *)self getPrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:v13 center:&v44 aspectRatio:&v43 uniqueID:0];
  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v9;
  }

  if (v13)
  {
    v15 = v9;
  }

  else
  {
    v15 = v10;
  }

  v16 = width / height;
  memset(&v42, 0, sizeof(v42));
  v17 = *MEMORY[0x1E69840E8];
  v41.receiver = self;
  v41.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  v18 = v14 / v15;
  [CGAffineTransform captureDeviceTransformForSensorSize:sel_captureDeviceTransformForSensorSize_previewSize_sensorToPreviewVTScalingMode_applyDynamicAspectRatio_ previewSize:v17 sensorToPreviewVTScalingMode:0 applyDynamicAspectRatio:?];
  v19 = *MEMORY[0x1E695EFD0];
  v20 = *(MEMORY[0x1E695EFD0] + 16);
  *&v40.a = *MEMORY[0x1E695EFD0];
  *&v40.c = v20;
  v21 = *(MEMORY[0x1E695EFD0] + 32);
  *&v40.tx = v21;
  v22 = v43;
  if (v43 > 0.0)
  {
    v33 = v21;
    v34 = v20;
    v35 = v19;
    if (v43 == v18)
    {
      v27 = [-[AVCaptureConnection sourceDevice](-[AVCaptureVideoPreviewLayer connection](self "connection")];
      v28 = v27 / ([-[AVCaptureConnection sourceDevice](-[AVCaptureVideoPreviewLayer connection](self "connection")] >> 32);
      v29 = v28 > 0.0;
      v30 = v43 == 1.0;
      if (v28 == v43)
      {
        v30 = 0;
      }

      v31 = fmax(v28, 1.0);
      if (v29 && v30)
      {
        v26 = v31;
      }

      else
      {
        v26 = 1.0;
      }
    }

    else
    {
      if (v43 <= v16)
      {
        v23 = width / height;
      }

      else
      {
        v23 = v43;
      }

      v24 = fmax(v18 / v23, 1.0);
      if (v43 >= v16)
      {
        v22 = width / height;
      }

      v25 = fmax(v22 / v18, 1.0);
      if (v16 > v18)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }
    }

    CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
    *&t1.a = v35;
    *&t1.c = v34;
    *&t1.tx = v33;
    CGAffineTransformConcat(&v40, &t1, &t2);
    CGAffineTransformMakeScale(&t1, v26, v26);
    v37 = v40;
    CGAffineTransformConcat(&t2, &v37, &t1);
    v40 = t2;
    CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
    v37 = v40;
    CGAffineTransformConcat(&t2, &v37, &t1);
    v21 = v33;
    v20 = v34;
    v40 = t2;
    v19 = v35;
  }

  *&t2.a = v19;
  *&t2.c = v20;
  *&t2.tx = v21;
  if (*&v44 != 0.5 || *(&v44 + 1) != 0.5)
  {
    CGAffineTransformMakeTranslation(&t2, fmax(v16 / v18, 1.0) * (*&v44 + -0.5), fmax(1.0 / (v16 / v18), 1.0) * (*(&v44 + 1) + -0.5));
  }

  v37 = v40;
  v36 = t2;
  CGAffineTransformConcat(&t1, &v37, &v36);
  v37 = v42;
  return CGAffineTransformConcat(retstr, &t1, &v37);
}

- (id)addConnection:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  return [(AVCaptureVideoPreviewLayer *)&v5 addConnection:a3 error:a4];
}

- (void)removeConnection:(id)a3
{
  v3.receiver = self;
  v3.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v3 removeConnection:a3];
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v22.receiver = self;
  v22.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v22 attachSafelyToFigCaptureSession:?];
  if (a3)
  {
    if (self->_havePendingPrimaryCaptureRectChange)
    {
      self->_havePendingPrimaryCaptureRectChange = 0;
      os_unfair_lock_lock(&self->_primaryCaptureRectLock);
      primaryCaptureRectCenterPoint = self->_primaryCaptureRectCenterPoint;
      primaryCaptureRectAspectRatio = self->_primaryCaptureRectAspectRatio;
      v20 = primaryCaptureRectCenterPoint;
      primaryCaptureRectTrueVideoTransitionPercentComplete = self->_primaryCaptureRectTrueVideoTransitionPercentComplete;
      primaryCaptureRectSmartFramingTransitionPercentComplete = self->_primaryCaptureRectSmartFramingTransitionPercentComplete;
      primaryCaptureRectSmartFramingTransitionTargetFieldOfView = self->_primaryCaptureRectSmartFramingTransitionTargetFieldOfView;
      primaryCaptureRectUniqueID = self->_primaryCaptureRectUniqueID;
      os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
      [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromFrontFacingCamera];
      [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromExternalCamera];
      [(AVSpatialOverCaptureVideoPreviewLayer *)self _updatePrimaryCaptureRectWithCamerasMountedInLandscapeOrientation:AVCapturePlatformMountsCamerasInLandscapeOrientation() center:&v20 aspectRatio:&primaryCaptureRectAspectRatio];
      v19[0] = [MEMORY[0x1E696AD98] numberWithDouble:{primaryCaptureRectAspectRatio, *MEMORY[0x1E698FD80]}];
      v18[1] = *MEMORY[0x1E698FD90];
      v19[1] = [MEMORY[0x1E696AD98] numberWithDouble:v20.x];
      v18[2] = *MEMORY[0x1E698FD98];
      v19[2] = [MEMORY[0x1E696AD98] numberWithDouble:v20.y];
      v18[3] = *MEMORY[0x1E698FDB0];
      v19[3] = [MEMORY[0x1E696AD98] numberWithDouble:primaryCaptureRectTrueVideoTransitionPercentComplete];
      v18[4] = *MEMORY[0x1E698FDA0];
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:primaryCaptureRectSmartFramingTransitionPercentComplete];
      v11 = *MEMORY[0x1E698FDA8];
      v19[4] = v10;
      v19[5] = primaryCaptureRectSmartFramingTransitionTargetFieldOfView;
      v12 = *MEMORY[0x1E698FDB8];
      v18[5] = v11;
      v18[6] = v12;
      v19[6] = [MEMORY[0x1E696AD98] numberWithLongLong:primaryCaptureRectUniqueID];
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];
      v14 = [(AVCaptureVideoPreviewLayer *)self sinkID];
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v15)
      {
        v15(a3, v14, *MEMORY[0x1E698FDD8], v13);
      }
    }
  }

  v16 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v17 = [(AVCaptureVideoPreviewLayer *)self weakReference];
  [v16 addListenerWithWeakReference:v17 callback:socvpl_figCaptureSessionNotification name:*MEMORY[0x1E698FEA0] object:a3 flags:0];
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v6 = [(AVCaptureVideoPreviewLayer *)self weakReference];
  [v5 removeListenerWithWeakReference:v6 callback:socvpl_figCaptureSessionNotification name:*MEMORY[0x1E698FEA0] object:a3];
  v7.receiver = self;
  v7.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v7 detachSafelyFromFigCaptureSession:a3];
}

- (void)didUpdatePreviewImageQueueSlot:(unsigned int)a3 imageQueue:(id)a4 rotationDegrees:(double)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = *&a3;
  [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"contentSize"];
  self->_contentSize.width = width;
  self->_contentSize.height = height;
  [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"contentSize"];
  v12.receiver = self;
  v12.super_class = AVSpatialOverCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v12 didUpdatePreviewImageQueueSlot:v10 imageQueue:a4 rotationDegrees:a5 size:width, height];
}

- (void)_handleSpatialNotification:(id)a3 payload:(id)a4
{
  if ([objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqualToString:", -[AVCaptureVideoPreviewLayer sinkID](self, "sinkID")}])
  {
    if ([a3 isEqualToString:*MEMORY[0x1E698FEA0]])
    {
      v7 = [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FD58]), "integerValue"}];
      if (v7 != [(AVSpatialOverCaptureVideoPreviewLayer *)self overCaptureStatus])
      {
        [(AVSpatialOverCaptureVideoPreviewLayer *)self willChangeValueForKey:@"overCaptureStatus"];
        os_unfair_lock_lock(&self->_primaryCaptureRectLock);
        self->_overCaptureStatus = v7;
        os_unfair_lock_unlock(&self->_primaryCaptureRectLock);
        [(AVSpatialOverCaptureVideoPreviewLayer *)self didChangeValueForKey:@"overCaptureStatus"];
        if (self->_automaticallyDimsOverCaptureRegion)
        {
          if ([-[AVCaptureConnection sourceDevice](-[AVCaptureVideoPreviewLayer connection](self "connection")])
          {
            v8 = 0.4;
          }

          else if (CFAbsoluteTimeGetCurrent() - self->_lastAspectCenterUpdateTime >= 0.3)
          {
            v8 = 3.0;
          }

          else
          {
            v8 = 0.4;
          }

          v9 = 0;
          if ((v7 - 2) <= 4)
          {
            v9 = qword_1A92AB198[v7 - 2];
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = v9;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v11 = CFAutorelease(DeviceRGB);
          v12 = CGColorCreate(v11, &v14);
          v13 = CFAutorelease(v12);
          [MEMORY[0x1E6979518] begin];
          [MEMORY[0x1E6979518] setAnimationDuration:v8];
          [(CALayer *)self->_topDimmingOverlay setBackgroundColor:v13];
          [(CALayer *)self->_bottomDimmingOverlay setBackgroundColor:v13];
          [MEMORY[0x1E6979518] commit];
        }
      }
    }
  }
}

- (CGRect)primaryCaptureRect
{
  x = self->_primaryCaptureRect.origin.x;
  y = self->_primaryCaptureRect.origin.y;
  width = self->_primaryCaptureRect.size.width;
  height = self->_primaryCaptureRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)overCaptureRect
{
  x = self->_overCaptureRect.origin.x;
  y = self->_overCaptureRect.origin.y;
  width = self->_overCaptureRect.size.width;
  height = self->_overCaptureRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end