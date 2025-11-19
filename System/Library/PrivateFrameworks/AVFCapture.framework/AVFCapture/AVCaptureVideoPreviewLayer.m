@interface AVCaptureVideoPreviewLayer
+ (AVCaptureVideoPreviewLayer)layerWithSession:(AVCaptureSession *)session;
+ (AVCaptureVideoPreviewLayer)layerWithSessionWithNoConnection:(AVCaptureSession *)session;
+ (void)initialize;
- (AVCaptureConnection)connection;
- (AVCaptureSession)session;
- (AVCaptureVideoOrientation)orientation;
- (AVCaptureVideoPreviewLayer)initWithLayer:(id)a3;
- (AVLayerVideoGravity)videoGravity;
- (AVMetadataObject)transformedMetadataObjectForMetadataObject:(AVMetadataObject *)metadataObject;
- (BOOL)_filtersAreOptimized:(id)a3 exceptionReason:(id *)a4;
- (BOOL)_setVideoPreviewFilters:(id)a3 checkForExceptionalInput:(BOOL)a4 exceptionReason:(id *)a5;
- (BOOL)_zoomPictureInPictureOverlaySupported;
- (BOOL)automaticallyAdjustsMirroring;
- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4;
- (BOOL)isDeferredStartEnabled;
- (BOOL)isDepthDataDeliveryEnabled;
- (BOOL)isDepthDataDeliverySupported;
- (BOOL)isFilterRenderingEnabled;
- (BOOL)isMirrored;
- (BOOL)isMirroringSupported;
- (BOOL)isOrientationSupported;
- (BOOL)isPaused;
- (BOOL)isPortraitAutoSuggestEnabled;
- (BOOL)isPortraitAutoSuggestSupported;
- (BOOL)isUnoptimizedFilterRenderingEnabled;
- (BOOL)isZoomPictureInPictureOverlayEnabled;
- (BOOL)isZoomPictureInPictureOverlaySupported;
- (CGAffineTransform)_updateTransformForMetadataOutputCorrections:(SEL)a3;
- (CGAffineTransform)captureDeviceTransformForSensorSize:(SEL)a3 previewSize:(CGSize)a4 sensorToPreviewVTScalingMode:(CGSize)a5 applyDynamicAspectRatio:(id)a6;
- (CGPoint)captureDevicePointOfInterestForPoint:(CGPoint)pointInLayer;
- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)captureDevicePointOfInterest;
- (CGRect)metadataOutputRectOfInterestForRect:(CGRect)rectInLayerCoordinates;
- (CGRect)rectForMetadataOutputRectOfInterest:(CGRect)rectInMetadataOutputCoordinates;
- (CGRect)zoomPictureInPictureOverlayRect;
- (double)previewRotationDegrees;
- (id)_initWithSession:(id)a3 makeConnection:(BOOL)a4;
- (id)_input;
- (id)addConnection:(id)a3 error:(id *)a4;
- (id)sinkID;
- (id)videoPreviewFilters;
- (unsigned)imageQueueSlot;
- (void)_handleNotification:(id)a3 payload:(id)a4;
- (void)_setPortraitLightingEffectStrengthFromDeviceInput;
- (void)_setSensorAndEstimatedPreviewSizes;
- (void)_setSimulatedApertureFromDeviceInput;
- (void)_updateCaptureDeviceTransform;
- (void)_updateDepthDataDeliverySupported;
- (void)_updatePortraitAutoSuggestSupported;
- (void)_updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:(BOOL)a3;
- (void)_updatePreviewTransforms;
- (void)_updateSemanticStyleRenderingSupported;
- (void)_updateZoomPIPOverlayRect:(CGRect)a3;
- (void)_updateZoomPictureInPictureOverlaySupported;
- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)attachToFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)bumpChangeSeed;
- (void)centerSublayer:(int64_t)a3;
- (void)dealloc;
- (void)detachFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3;
- (void)didUpdatePreviewFormatDescription:(opaqueCMFormatDescription *)a3;
- (void)didUpdatePreviewImageQueueSlot:(unsigned int)a3 imageQueue:(id)a4 rotationDegrees:(double)a5 size:(CGSize)a6;
- (void)handleChangedActiveFormat:(id)a3 forDevice:(id)a4;
- (void)layerDidBecomeVisible:(BOOL)a3;
- (void)layoutSublayers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performFigCaptureSessionOperationSafelyUsingBlock:(id)a3;
- (void)removeConnection:(id)a3;
- (void)setAutomaticallyAdjustsMirroring:(BOOL)automaticallyAdjustsMirroring;
- (void)setBounds:(CGRect)a3;
- (void)setCaptureDeviceTransformNeedsUpdate;
- (void)setDeferredStartEnabled:(BOOL)a3;
- (void)setDepthDataDeliveryEnabled:(BOOL)a3;
- (void)setFilterRenderingEnabled:(BOOL)a3;
- (void)setMirrored:(BOOL)mirrored;
- (void)setOrientation:(AVCaptureVideoOrientation)orientation;
- (void)setPortraitAutoSuggestEnabled:(BOOL)a3;
- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4;
- (void)setSemanticStyleRenderingEnabled:(BOOL)a3;
- (void)setSession:(AVCaptureSession *)session;
- (void)setSessionWithNoConnection:(AVCaptureSession *)session;
- (void)setUnoptimizedFilterRenderingEnabled:(BOOL)a3;
- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity;
- (void)setVideoPreviewFilters:(id)a3;
- (void)setZoomPictureInPictureOverlayEnabled:(BOOL)a3;
@end

@implementation AVCaptureVideoPreviewLayer

+ (void)initialize
{
  if (objc_opt_class() == a1 || objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();

    objc_opt_class();
  }
}

- (void)_updateDepthDataDeliverySupported
{
  v3 = [objc_msgSend(-[AVCaptureConnection sourceDevice](self->_internal->connection "sourceDevice")];
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = self->_internal;
  depthDataDeliverySupported = v5->depthDataDeliverySupported;
  v7 = (v3 & 1) == 0 && v5->depthDataDeliveryEnabled;
  objc_sync_exit(internal);
  if (depthDataDeliverySupported != v3)
  {
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"depthDataDeliverySupported"];
  }

  if (v7)
  {
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"depthDataDeliveryEnabled"];
  }

  v8 = self->_internal;
  objc_sync_enter(v8);
  self->_internal->depthDataDeliverySupported = v3;
  if (v7)
  {
    self->_internal->depthDataDeliveryEnabled = 0;
    objc_sync_exit(v8);
    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"depthDataDeliveryEnabled"];
  }

  else
  {
    objc_sync_exit(v8);
  }

  if (depthDataDeliverySupported != v3)
  {

    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"depthDataDeliverySupported"];
  }
}

- (void)_updatePortraitAutoSuggestSupported
{
  v3 = [objc_msgSend(-[AVCaptureConnection sourceDevice](self->_internal->connection "sourceDevice")];
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = self->_internal;
  portraitAutoSuggestSupported = v5->portraitAutoSuggestSupported;
  v7 = (v3 & 1) == 0 && v5->portraitAutoSuggestEnabled;
  objc_sync_exit(internal);
  if (portraitAutoSuggestSupported != v3)
  {
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"portraitAutoSuggestSupported"];
  }

  if (v7)
  {
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"portraitAutoSuggestEnabled"];
  }

  v8 = self->_internal;
  objc_sync_enter(v8);
  self->_internal->portraitAutoSuggestSupported = v3;
  if (v7)
  {
    self->_internal->portraitAutoSuggestEnabled = 0;
    objc_sync_exit(v8);
    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"portraitAutoSuggestEnabled"];
  }

  else
  {
    objc_sync_exit(v8);
  }

  if (portraitAutoSuggestSupported != v3)
  {

    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"portraitAutoSuggestSupported"];
  }
}

- (BOOL)_zoomPictureInPictureOverlaySupported
{
  v2 = [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourceDevice];
  v3 = [v2 deviceType] == @"AVCaptureDeviceTypeBuiltInDualCamera" || objc_msgSend(v2, "deviceType") == @"AVCaptureDeviceTypeBuiltInTripleCamera" || objc_msgSend(v2, "deviceType") == @"AVCaptureDeviceTypeBuiltInTelephotoCamera";
  v4 = [v2 activeFormat];
  if (v4)
  {
    [v4 lowestSupportedVideoFrameDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  CMTimeMake(&v6, 1, 60);
  return CMTimeCompare(&time1, &v6) >= 0 && v3;
}

- (void)_setSensorAndEstimatedPreviewSizes
{
  connection = self->_internal->connection;
  Dimensions = CMVideoFormatDescriptionGetDimensions([objc_msgSend(-[AVCaptureConnection sourceDevice](connection "sourceDevice")]);
  v5 = Dimensions;
  v6 = HIDWORD(Dimensions);
  if (Dimensions >= 1 && SHIDWORD(Dimensions) >= 1)
  {
    v8 = AVCaptureMainScreenPixelSize();
    v10 = v8;
    v11 = v9;
    if (v8 >= v9)
    {
      v13 = v9;
      v14 = v10;
    }

    else
    {
      [(AVCaptureConnection *)connection sourcesFromFrontFacingCamera];
      [(AVCaptureConnection *)connection sourcesFromExternalCamera];
      v12 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
      if (v12)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      if (v12)
      {
        v14 = v11;
      }

      else
      {
        v14 = v10;
      }
    }

    v15 = v5;
    v16 = v6;
    if ((v6 * v5) > (v11 * v10))
    {
      if (v15 / v16 >= v14 / v13)
      {
        LODWORD(v6) = (((v14 & 0xFFFFFFFE) * v6) / v5) & 0xFFFFFFFE;
        v5 = v14 & 0xFFFFFFFE;
      }

      else
      {
        v5 = (((v13 & 0xFFFFFFFE) * v5) / v6) & 0xFFFFFFFE;
        LODWORD(v6) = v13 & 0xFFFFFFFE;
      }
    }

    internal = self->_internal;
    objc_sync_enter(internal);
    v18 = self->_internal;
    v18->sensorSize.width = v15;
    v18->sensorSize.height = v16;
    v19 = self->_internal;
    v19->previewSize.width = v5;
    v19->previewSize.height = v6;
    [(AVCaptureVideoPreviewLayer *)self _updateCaptureDeviceTransform];

    objc_sync_exit(internal);
  }
}

- (AVCaptureConnection)connection
{
  v2 = self->_internal->connection;

  return v2;
}

- (void)_updateZoomPictureInPictureOverlaySupported
{
  v3 = [(AVCaptureVideoPreviewLayer *)self _zoomPictureInPictureOverlaySupported];
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = self->_internal;
  if (v5->zoomPictureInPictureOverlaySupported != v3)
  {
    zoomPictureInPictureOverlayEnabled = v5->zoomPictureInPictureOverlayEnabled;
    x = v5->zoomPictureInPictureOverlayRect.origin.x;
    y = v5->zoomPictureInPictureOverlayRect.origin.y;
    width = v5->zoomPictureInPictureOverlayRect.size.width;
    height = v5->zoomPictureInPictureOverlayRect.size.height;
    if (v3)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v13 = *MEMORY[0x1E695F058];
      v14 = *(MEMORY[0x1E695F058] + 8);
      v15 = *(MEMORY[0x1E695F058] + 16);
      v16 = *(MEMORY[0x1E695F058] + 24);
      v19.origin.x = *MEMORY[0x1E695F058];
      v19.origin.y = v14;
      v19.size.width = v15;
      v19.size.height = v16;
      v11 = !CGRectEqualToRect(v19, v5->zoomPictureInPictureOverlayRect);
      x = v13;
      y = v14;
      width = v15;
      height = v16;
      v12 = zoomPictureInPictureOverlayEnabled;
      LOBYTE(zoomPictureInPictureOverlayEnabled) = 0;
    }

    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"zoomPictureInPictureOverlaySupported"];
    if (v12)
    {
      [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"zoomPictureInPictureOverlayEnabled"];
    }

    if (v11)
    {
      [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"zoomPictureInPictureOverlayRect"];
    }

    self->_internal->zoomPictureInPictureOverlaySupported = v3;
    v17 = self->_internal;
    v17->zoomPictureInPictureOverlayRect.origin.x = x;
    v17->zoomPictureInPictureOverlayRect.origin.y = y;
    v17->zoomPictureInPictureOverlayRect.size.width = width;
    v17->zoomPictureInPictureOverlayRect.size.height = height;
    self->_internal->zoomPictureInPictureOverlayEnabled = zoomPictureInPictureOverlayEnabled;
    if (v11)
    {
      [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"zoomPictureInPictureOverlayRect"];
    }

    if (v12)
    {
      [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"zoomPictureInPictureOverlayEnabled"];
    }

    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"zoomPictureInPictureOverlaySupported"];
  }

  objc_sync_exit(internal);
}

- (void)_updatePreviewTransforms
{
  connection = self->_internal->connection;
  [(AVCaptureVideoPreviewLayer *)self centerSublayer:[(AVCaptureConnection *)connection _videoOrientation]];
  gravity = self->_internal->gravity;
  v5 = [(AVCaptureConnection *)connection _videoOrientation];
  v6 = [(AVCaptureConnection *)connection isVideoMirrored];
  v7 = [(AVCaptureConnection *)connection sourcesFromFrontFacingCamera];
  v8 = [(AVCaptureConnection *)connection sourcesFromExternalCamera];
  internal = self->_internal;
  previewRotationDegrees = internal->previewRotationDegrees;
  [(AVCaptureVideoPreviewLayer *)self bounds];
  v11 = v10;
  v13 = v12;
  v14 = self->_internal;
  oddScreenWidth = v14->oddScreenWidth;
  oddScreenScale = v14->oddScreenScale;
  width = internal->previewSize.width;
  height = internal->previewSize.height;
  v19 = *(MEMORY[0x1E69792E8] + 112);
  *&v43.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v43.m43 = v19;
  v20 = *(MEMORY[0x1E69792E8] + 80);
  *&v43.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v43.m33 = v20;
  v21 = *(MEMORY[0x1E69792E8] + 16);
  *&v43.m11 = *MEMORY[0x1E69792E8];
  *&v43.m13 = v21;
  v22 = *(MEMORY[0x1E69792E8] + 48);
  *&v43.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v43.m23 = v22;
  v23 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
  v24 = -3;
  if (v23)
  {
    v24 = -1;
  }

  v25 = v24 + v5;
  if (v25 >= 2)
  {
    v26 = width;
  }

  else
  {
    v26 = height;
  }

  if (v25 >= 2)
  {
    v27 = height;
  }

  else
  {
    v27 = width;
  }

  if (oddScreenWidth != 0.0 && oddScreenScale != 0.0)
  {
    v28 = v25 >= 2 ? v13 : v11;
    v29 = oddScreenScale * v28;
    v32 = oddScreenWidth == v29;
    v30 = height;
    v31 = vabds_f32(v29, v30);
    v32 = v32 && v31 == 1.0;
    if (v32)
    {
      if (v25 >= 2)
      {
        v26 = width;
      }

      else
      {
        v26 = oddScreenWidth;
      }

      if (v25 >= 2)
      {
        v27 = oddScreenWidth;
      }

      else
      {
        v27 = width;
      }
    }
  }

  if (v26 != *MEMORY[0x1E695F060] || v27 != *(MEMORY[0x1E695F060] + 8))
  {
    if ([(NSString *)gravity isEqualToString:*MEMORY[0x1E69874E0]])
    {
      v34 = v11 / v26;
      v35 = v13 / v27;
    }

    else
    {
      v36 = [(NSString *)gravity isEqualToString:*MEMORY[0x1E69874F0]];
      v37 = fmin(v11 / v26, v13 / v27);
      v34 = fmax(v11 / v26, v13 / v27);
      if (v36)
      {
        v35 = v34;
      }

      else
      {
        v35 = v37;
      }

      if (!v36)
      {
        v34 = v37;
      }
    }

    v43.m11 = v34;
    v43.m22 = v35;
    if (AVCapturePlatformMountsCamerasInLandscapeOrientation())
    {
      v38 = 0.0;
      if (v5 <= 2)
      {
        if (v5 != 1)
        {
          if (v5 == 2)
          {
            v39 = !v8;
LABEL_53:
            v38 = 270.0;
            v40 = 90.0;
            goto LABEL_56;
          }

LABEL_58:
          v44 = v43;
          CATransform3DRotate(&v43, &v44, (v38 - previewRotationDegrees) * 3.14159265 / 180.0, 0.0, 0.0, 1.0);
          goto LABEL_59;
        }

        v39 = !v8;
LABEL_55:
        v38 = 90.0;
        v40 = 270.0;
LABEL_56:
        if (!v39)
        {
          v38 = v40;
        }

        goto LABEL_58;
      }

      if (v5 == 3)
      {
        if (!v8 && v7)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v5 != 4)
        {
          goto LABEL_58;
        }

        if (v8 || !v7)
        {
LABEL_48:
          v39 = !v6;
          v38 = 180.0;
          v40 = 0.0;
          goto LABEL_56;
        }
      }

      v38 = 180.0;
      if (!v6)
      {
        v38 = 0.0;
      }

      goto LABEL_58;
    }

    if (v5 == 4)
    {
      if (!v7)
      {
LABEL_50:
        v39 = !v6;
        goto LABEL_55;
      }
    }

    else
    {
      if (v5 != 3)
      {
        v38 = 0.0;
        if (v5 == 2)
        {
          v38 = 180.0;
        }

        goto LABEL_58;
      }

      if (v7)
      {
        goto LABEL_50;
      }
    }

    v39 = !v6;
    goto LABEL_53;
  }

LABEL_59:
  sublayer = self->_internal->sublayer;
  v44 = v43;
  [(CALayer *)sublayer setTransform:&v44];
  [(AVCaptureVideoPreviewLayer *)self _updateCaptureDeviceTransform];
}

- (void)_updateCaptureDeviceTransform
{
  v3 = [-[AVCaptureConnection sourceDevice](self->_internal->connection "sourceDevice")];
  internal = self->_internal;
  [(AVCaptureVideoPreviewLayer *)self captureDeviceTransformForSensorSize:internal->sensorToPreviewVTScalingMode previewSize:v3 ^ 1u sensorToPreviewVTScalingMode:internal->sensorSize.width applyDynamicAspectRatio:internal->sensorSize.height, internal->previewSize.width, internal->previewSize.height];
  internal->captureDeviceTransform = v5;
}

- (void)_setPortraitLightingEffectStrengthFromDeviceInput
{
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0_8();
    FigDebugAssert3();
  }

  internal = self->_internal;
  if (internal->figCaptureSession)
  {
    v4 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](internal->connection "inputPorts")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      figCaptureSession = self->_internal->figCaptureSession;
      v6 = [(AVCaptureVideoPreviewLayer *)self sinkID];
      v7 = MEMORY[0x1E696AD98];
      [v4 portraitLightingEffectStrength];
      v8 = [v7 numberWithFloat:?];
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v9)
      {
        v10 = *MEMORY[0x1E698FDC8];

        v9(figCaptureSession, v6, v10, v8);
      }
    }
  }
}

- (BOOL)isDepthDataDeliveryEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->depthDataDeliveryEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (AVCaptureSession)session
{
  v2 = self->_internal->session;

  return v2;
}

- (void)bumpChangeSeed
{
  [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"changeSeed"];
  atomic_fetch_add_explicit(&self->_internal->changeSeed, 1u, memory_order_relaxed);

  [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"changeSeed"];
}

- (BOOL)isDepthDataDeliverySupported
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->depthDataDeliverySupported;
  objc_sync_exit(internal);
  return v2;
}

- (BOOL)isPortraitAutoSuggestSupported
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->portraitAutoSuggestSupported;
  objc_sync_exit(internal);
  return v2;
}

- (id)videoPreviewFilters
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = [(NSArray *)self->_internal->videoPreviewFilters copy];
  objc_sync_exit(internal);

  return v4;
}

- (BOOL)isZoomPictureInPictureOverlaySupported
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->zoomPictureInPictureOverlaySupported;
  objc_sync_exit(internal);
  return v2;
}

- (BOOL)isFilterRenderingEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->filterRenderingEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (BOOL)isPortraitAutoSuggestEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->portraitAutoSuggestEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (BOOL)isZoomPictureInPictureOverlayEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->zoomPictureInPictureOverlayEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (BOOL)isDeferredStartEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->deferredStartEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (id)sinkID
{
  v2 = self->_internal->sinkID;

  return v2;
}

- (void)setCaptureDeviceTransformNeedsUpdate
{
  internal = self->_internal;
  objc_sync_enter(internal);
  [(AVCaptureVideoPreviewLayer *)self _updateCaptureDeviceTransform];

  objc_sync_exit(internal);
}

- (void)layoutSublayers
{
  [MEMORY[0x1E6979518] begin];
  if (self->_internal->disableActions)
  {
    [MEMORY[0x1E6979518] setDisableActions:1];
  }

  else
  {
    v3 = [(AVCaptureVideoPreviewLayer *)self animationForKey:@"bounds"];
    if (v3 || (v3 = [(AVCaptureVideoPreviewLayer *)self animationForKey:@"bounds.size"]) != 0 || (v3 = [(AVCaptureVideoPreviewLayer *)self animationForKey:@"bounds.origin"]) != 0)
    {
      v4 = v3;
      v5 = MEMORY[0x1E6979518];
      [v3 duration];
      [v5 setAnimationDuration:?];
      [MEMORY[0x1E6979518] setAnimationTimingFunction:{objc_msgSend(v4, "timingFunction")}];
    }
  }

  internal = self->_internal;
  if (internal->previewSize.width != *MEMORY[0x1E695F060] || internal->previewSize.height != *(MEMORY[0x1E695F060] + 8))
  {
    objc_sync_enter(self->_internal);
    [(AVCaptureVideoPreviewLayer *)self _updatePreviewTransforms];
    objc_sync_exit(internal);
  }

  [MEMORY[0x1E6979518] commit];
  v8.receiver = self;
  v8.super_class = AVCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v8 layoutSublayers];
}

- (void)centerSublayer:(int64_t)a3
{
  [(AVCaptureVideoPreviewLayer *)self bounds];
  v8 = v7;
  v10 = v9;
  if (v5 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    v12 = v5;
    v13 = v6;
    [(CALayer *)self->_internal->sublayer position];
    v15 = v14;
    v17 = v16;
    v18 = v8 + v12 * 0.5;
    v19 = v10 + v13 * 0.5;
    internal = self->_internal;
    if (internal->oddScreenWidth != 0.0 && internal->oddScreenScale != 0.0)
    {
      [(AVCaptureConnection *)internal->connection sourcesFromFrontFacingCamera];
      [(AVCaptureConnection *)self->_internal->connection sourcesFromExternalCamera];
      v21 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
      v22 = -3;
      if (v21)
      {
        v22 = -1;
      }

      v23 = v22 + a3;
      internal = self->_internal;
      if (v23 >= 2)
      {
        v24 = v13;
      }

      else
      {
        v24 = v12;
      }

      oddScreenScale = internal->oddScreenScale;
      v26 = v24 * oddScreenScale;
      if (internal->oddScreenWidth == v26)
      {
        height = internal->previewSize.height;
        if (vabds_f32(v26, height) == 1.0)
        {
          v18 = (v18 * oddScreenScale + 0.5) / oddScreenScale;
          v19 = (v19 * oddScreenScale + 0.5) / oddScreenScale;
        }
      }
    }

    if (v15 != v18 || v17 != v19)
    {
      sublayer = internal->sublayer;

      [(CALayer *)sublayer setPosition:v18, v19];
    }
  }
}

+ (AVCaptureVideoPreviewLayer)layerWithSession:(AVCaptureSession *)session
{
  v3 = [objc_alloc(objc_opt_class()) initWithSession:session];

  return v3;
}

+ (AVCaptureVideoPreviewLayer)layerWithSessionWithNoConnection:(AVCaptureSession *)session
{
  v3 = [objc_alloc(objc_opt_class()) initWithSessionWithNoConnection:session];

  return v3;
}

- (id)_initWithSession:(id)a3 makeConnection:(BOOL)a4
{
  v4 = a4;
  v21.receiver = self;
  v21.super_class = AVCaptureVideoPreviewLayer;
  v6 = [(AVCaptureVideoPreviewLayer *)&v21 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVCaptureVideoPreviewLayerInternal);
    v6->_internal = v7;
    if (v7)
    {
      if (AVCaptureSessionIsLaunchPrewarmingEnabled())
      {
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9 = objc_opt_class();
        v10 = [v8 initWithFormat:@"<%@>", NSStringFromClass(v9)];
      }

      else
      {
        v10 = AVIdentifierForObject(v6);
      }

      [(AVCaptureVideoPreviewLayer *)v6 setSinkID:v10];
      v6->_internal->figCaptureSessionSyncQueue = dispatch_queue_create("capture.videopreview.FigCaptureSessionSyncQueue", 0);
      v6->_internal->weakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v6];
      v6->_internal->orientation = 1;
      v6->_internal->automaticallyAdjustsMirroring = 1;
      internal = v6->_internal;
      v12 = MEMORY[0x1E695EFD0];
      v13 = *(MEMORY[0x1E695EFD0] + 16);
      *&internal->captureDeviceTransform.tx = *(MEMORY[0x1E695EFD0] + 32);
      v14 = *v12;
      *&internal->captureDeviceTransform.c = v13;
      *&internal->captureDeviceTransform.a = v14;
      v6->_internal->previewRotationDegrees = 0.0;
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
      [(AVCaptureVideoPreviewLayer *)v6 setMasksToBounds:1];
      [(AVCaptureVideoPreviewLayer *)v6 setVideoGravity:*MEMORY[0x1E69874E8]];
      [(AVCaptureVideoPreviewLayer *)v6 setEdgeAntialiasingMask:0];
      [(AVCaptureVideoPreviewLayer *)v6 setInheritsTiming:0];
      v6->_internal->sublayer = objc_alloc_init(MEMORY[0x1E6979398]);
      [(CALayer *)v6->_internal->sublayer setAllowsDisplayCompositing:1];
      [(AVCaptureVideoPreviewLayer *)v6 addSublayer:v6->_internal->sublayer];
      [(CALayer *)v6->_internal->sublayer setEdgeAntialiasingMask:0];
      [(CALayer *)v6->_internal->sublayer setContentsGravity:*MEMORY[0x1E6979DD0]];
      [(AVCaptureVideoPreviewLayer *)v6 centerSublayer:1];
      v15 = MGCopyAnswer();
      if (v15)
      {
        v16 = v15;
        valuePtr = 0;
        Value = CFDictionaryGetValue(v15, @"main-screen-width");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
          if ((valuePtr & 0x100000000) != 0)
          {
            v6->_internal->oddScreenWidth = SHIDWORD(valuePtr);
          }
        }

        if (v6->_internal->oddScreenWidth != 0.0)
        {
          v18 = CFDictionaryGetValue(v16, @"main-screen-scale");
          if (v18)
          {
            CFNumberGetValue(v18, kCFNumberFloatType, &valuePtr);
            v6->_internal->oddScreenScale = *&valuePtr;
          }
        }

        CFRelease(v16);
      }

      v6->_internal->videoPreviewFilters = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [MEMORY[0x1E6979518] commit];
      if (v4)
      {
        [(AVCaptureVideoPreviewLayer *)v6 setSession:a3];
      }

      else
      {
        [(AVCaptureVideoPreviewLayer *)v6 setSessionWithNoConnection:a3];
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (double)previewRotationDegrees
{
  internal = self->_internal;
  objc_sync_enter(internal);
  previewRotationDegrees = self->_internal->previewRotationDegrees;
  objc_sync_exit(internal);
  return previewRotationDegrees;
}

- (AVCaptureVideoPreviewLayer)initWithLayer:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v16.receiver = self;
  v16.super_class = AVCaptureVideoPreviewLayer;
  self = [(AVCaptureVideoPreviewLayer *)&v16 initWithLayer:a3];
  if (!self)
  {
    return self;
  }

  v5 = objc_alloc_init(AVCaptureVideoPreviewLayerInternal);
  self->_internal = v5;
  if (!v5)
  {
LABEL_6:

    return 0;
  }

  if (AVCaptureSessionIsLaunchPrewarmingEnabled())
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_opt_class();
    v8 = [v6 initWithFormat:@"<%@>", NSStringFromClass(v7)];
  }

  else
  {
    v8 = AVIdentifierForObject(self);
  }

  [(AVCaptureVideoPreviewLayer *)self setSinkID:v8];
  self->_internal->isPresentationLayer = 1;
  self->_internal->gravity = [a3 videoGravity];
  self->_internal->session = [a3 session];
  self->_internal->connection = [a3 connection];
  if (!self->_internal->connection)
  {
    self->_internal->orientation = [a3 _orientation];
    self->_internal->automaticallyAdjustsMirroring = [a3 _automaticallyAdjustsMirroring];
    self->_internal->mirrored = [a3 _isMirrored];
  }

  [a3 previewRotationDegrees];
  self->_internal->previewRotationDegrees = v9;
  self->_internal->depthDataDeliverySupported = [a3 isDepthDataDeliverySupported];
  self->_internal->depthDataDeliveryEnabled = [a3 isDepthDataDeliveryEnabled];
  self->_internal->filterRenderingEnabled = [a3 isFilterRenderingEnabled];
  self->_internal->unoptimizedFilterRenderingEnabled = [a3 isUnoptimizedFilterRenderingEnabled];
  self->_internal->videoPreviewFilters = [a3 videoPreviewFilters];
  self->_internal->semanticStyleRenderingSupported = [a3 isSemanticStyleRenderingSupported];
  self->_internal->semanticStyleRenderingEnabled = [a3 isSemanticStyleRenderingEnabled];
  self->_internal->semanticStyle = [a3 semanticStyle];
  self->_internal->zoomPictureInPictureOverlaySupported = [a3 isZoomPictureInPictureOverlaySupported];
  self->_internal->zoomPictureInPictureOverlayEnabled = [a3 isZoomPictureInPictureOverlayEnabled];
  internal = self->_internal;
  [a3 zoomPictureInPictureOverlayRect];
  internal->zoomPictureInPictureOverlayRect.origin.x = v11;
  internal->zoomPictureInPictureOverlayRect.origin.y = v12;
  internal->zoomPictureInPictureOverlayRect.size.width = v13;
  internal->zoomPictureInPictureOverlayRect.size.height = v14;
  self->_internal->portraitAutoSuggestEnabled = [a3 isPortraitAutoSuggestEnabled];
  self->_internal->portraitAutoSuggestSupported = [a3 isPortraitAutoSuggestSupported];
  self->_internal->deferredStartEnabled = [a3 isDeferredStartEnabled];
  return self;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    v4 = self->_internal;
    session = v4->session;
    if (session)
    {
      if (!v4->isPresentationLayer)
      {
        [(AVCaptureSession *)session _removeVideoPreviewLayer:self];
        [(AVCaptureVideoPreviewLayer *)self removeConnection:self->_internal->connection];
        session = self->_internal->session;
      }

      v4 = self->_internal;
    }

    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] commit];
    v6 = self->_internal;
    if (v6->figCaptureSession)
    {
      [(AVCaptureVideoPreviewLayer *)self detachFromFigCaptureSession:?];
      v6 = self->_internal;
    }

    self->_internal = 0;
  }

  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  v7.receiver = self;
  v7.super_class = AVCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v7 dealloc];
  [MEMORY[0x1E6979518] commit];
}

- (void)setSession:(AVCaptureSession *)session
{
  if (self->_internal->session != session && ([(AVCaptureSession *)session isEqual:?]& 1) == 0)
  {
    v5 = [(AVCaptureSession *)self->_internal->session isRunning];
    internal = self->_internal;
    if (!v5)
    {
      v7 = [(AVCaptureSession *)internal->session isBeingConfigured];
      internal = self->_internal;
      if (!v7)
      {
        if (internal->figCaptureSession)
        {
          [(AVCaptureVideoPreviewLayer *)self detachFromFigCaptureSession:?];
          internal = self->_internal;
        }
      }
    }

    v8 = internal->session;
    if (v8)
    {
      [(AVCaptureSession *)v8 _removeVideoPreviewLayer:self];

      self->_internal->session = 0;
    }

    if (session)
    {
      self->_internal->session = session;
      v10 = 0;
      if (![(AVCaptureSession *)session _addVideoPreviewLayer:self exceptionReason:&v10])
      {
        v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v9);
        }

        NSLog(&cfstr_SuppressingExc.isa, v9);
      }
    }
  }
}

- (void)setSessionWithNoConnection:(AVCaptureSession *)session
{
  if (self->_internal->session != session && ([(AVCaptureSession *)session isEqual:?]& 1) == 0)
  {
    v5 = self->_internal->session;
    if (v5)
    {
      [(AVCaptureSession *)v5 _removeVideoPreviewLayer:self];

      self->_internal->session = 0;
    }

    if (session)
    {
      self->_internal->session = session;
      v7 = 0;
      if (![(AVCaptureSession *)session _addVideoPreviewLayerWithNoConnection:self exceptionReason:&v7])
      {
        v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v6);
        }

        NSLog(&cfstr_SuppressingExc.isa, v6);
      }
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_internal->disableActions = [MEMORY[0x1E6979518] disableActions];
  v8.receiver = self;
  v8.super_class = AVCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v8 setBounds:x, y, width, height];
}

- (void)handleChangedActiveFormat:(id)a3 forDevice:(id)a4
{
  [(AVCaptureVideoPreviewLayer *)self _updateDepthDataDeliverySupported:a3];
  [(AVCaptureVideoPreviewLayer *)self _updateSemanticStyleRenderingSupported];
  [(AVCaptureVideoPreviewLayer *)self _updateZoomPictureInPictureOverlaySupported];
  [(AVCaptureVideoPreviewLayer *)self _updatePortraitAutoSuggestSupported];

  [(AVCaptureVideoPreviewLayer *)self _updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (AVCaptureVideoPreviewLayerVideoMirroredChangedContext == a6)
  {
    v10 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], a4), "BOOLValue"}];
    if (v10 != [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}])
    {
      internal = self->_internal;
      objc_sync_enter(internal);
      v12 = self->_internal;
      if (v12->previewSize.width != *MEMORY[0x1E695F060] || v12->previewSize.height != *(MEMORY[0x1E695F060] + 8))
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
        [(AVCaptureVideoPreviewLayer *)self _updatePreviewTransforms];
        [MEMORY[0x1E6979518] commit];
      }

      objc_sync_exit(internal);

      [(AVCaptureVideoPreviewLayer *)self bumpChangeSeed];
    }
  }

  else if (AVCaptureVideoPreviewLayerAutomaticallyAdjustsVideoMirroringChangedContext == a6)
  {
    v15 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0]), "BOOLValue"}];
    if (([objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "BOOLValue"}] & 1) == 0 && v15)
    {
      [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"mirrored"];
      v16 = self->_internal;
      objc_sync_enter(v16);
      v17 = [a4 isVideoMirrored];
      v18 = [(AVCaptureConnection *)self->_internal->connection sourcesFromFrontFacingCamera];
      objc_sync_exit(v16);
      if (v17 != v18)
      {
        [a4 _setVideoMirrored:v18];
      }

      [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"mirrored"];
    }
  }

  else if (AVCaptureVideoPreviewLayerVideoOrientationChangedContext == a6)
  {
    v19 = [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], a4), "intValue"}];
    if (v19 != [objc_msgSend(a5 objectForKeyedSubscript:{*MEMORY[0x1E696A500]), "intValue"}])
    {
      v20 = self->_internal;
      objc_sync_enter(v20);
      v21 = self->_internal;
      if (v21->previewSize.width != *MEMORY[0x1E695F060] || v21->previewSize.height != *(MEMORY[0x1E695F060] + 8))
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
        [(AVCaptureVideoPreviewLayer *)self _updatePreviewTransforms];
        [MEMORY[0x1E6979518] commit];
      }

      objc_sync_exit(v20);
    }
  }

  else if (AVCaptureVideoPreviewLayerDeviceInputPortraitLightingEffectStrengthChangedContext == a6)
  {
    v8 = [a5 objectForKeyedSubscript:{*MEMORY[0x1E696A4F0], a4}];
    if (([v8 isEqual:{objc_msgSend(a5, "objectForKeyedSubscript:", *MEMORY[0x1E696A500])}] & 1) == 0)
    {
      figCaptureSessionSyncQueue = self->_internal->figCaptureSessionSyncQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__AVCaptureVideoPreviewLayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E786EC08;
      block[4] = self;
      dispatch_sync(figCaptureSessionSyncQueue, block);
    }
  }
}

- (AVLayerVideoGravity)videoGravity
{
  if (self->_internal->gravity)
  {
    return self->_internal->gravity;
  }

  else
  {
    return *MEMORY[0x1E69874E8];
  }
}

- (void)setVideoGravity:(AVLayerVideoGravity)videoGravity
{
  gravity = self->_internal->gravity;
  if ((videoGravity != 0) == (gravity == 0) || ![(NSString *)gravity isEqualToString:videoGravity])
  {
    v6 = [(NSString *)videoGravity copyWithZone:0];

    self->_internal->gravity = v6;
    internal = self->_internal;
    if (internal->previewSize.width != *MEMORY[0x1E695F060] || internal->previewSize.height != *(MEMORY[0x1E695F060] + 8))
    {
      [MEMORY[0x1E6979518] begin];
      if (([MEMORY[0x1E6979518] disableActions] & 1) == 0)
      {
        v9 = [(AVCaptureVideoPreviewLayer *)self animationForKey:@"bounds"];
        if (v9 || (v9 = [(AVCaptureVideoPreviewLayer *)self animationForKey:@"bounds.size"]) != 0 || (v9 = [(AVCaptureVideoPreviewLayer *)self animationForKey:@"bounds.origin"]) != 0)
        {
          v10 = v9;
          v11 = MEMORY[0x1E6979518];
          [v9 duration];
          [v11 setAnimationDuration:?];
          [MEMORY[0x1E6979518] setAnimationTimingFunction:{objc_msgSend(v10, "timingFunction")}];
        }
      }

      v12 = self->_internal;
      objc_sync_enter(v12);
      [(AVCaptureVideoPreviewLayer *)self _updatePreviewTransforms];
      objc_sync_exit(v12);
      v13 = MEMORY[0x1E6979518];

      [v13 commit];
    }
  }
}

- (BOOL)isOrientationSupported
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"AVCaptureConnection's -isVideoOrientationSupported");
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  connection = self->_internal->connection;
  if (connection)
  {
    v9 = [(AVCaptureConnection *)connection isVideoOrientationSupported];
  }

  else
  {
    v9 = 1;
  }

  objc_sync_exit(internal);
  return v9;
}

- (AVCaptureVideoOrientation)orientation
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"AVCaptureConnection's -videoOrientation");
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v8 = self->_internal;
  connection = v8->connection;
  if (connection)
  {
    orientation = [(AVCaptureConnection *)connection videoOrientation];
  }

  else
  {
    orientation = v8->orientation;
  }

  objc_sync_exit(internal);
  return orientation;
}

- (void)setOrientation:(AVCaptureVideoOrientation)orientation
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"))
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v6 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"1") & 1) == 0)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v7, self, v8, @"AVCaptureConnection's -setVideoOrientation:");
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v10 = self->_internal;
  connection = v10->connection;
  if (connection)
  {
    [(AVCaptureConnection *)connection setVideoOrientation:orientation];
  }

  else
  {
    v10->orientation = orientation;
  }

  objc_sync_exit(internal);
}

- (BOOL)isMirroringSupported
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"AVCaptureConnection's -isVideoMirroringSupported");
    }
  }

  return 1;
}

- (BOOL)automaticallyAdjustsMirroring
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"AVCaptureConnection's -automaticallyAdjustsVideoMirroring");
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v8 = self->_internal;
  connection = v8->connection;
  if (connection)
  {
    automaticallyAdjustsMirroring = [(AVCaptureConnection *)connection automaticallyAdjustsVideoMirroring];
  }

  else
  {
    automaticallyAdjustsMirroring = v8->automaticallyAdjustsMirroring;
  }

  objc_sync_exit(internal);
  return automaticallyAdjustsMirroring;
}

- (void)setAutomaticallyAdjustsMirroring:(BOOL)automaticallyAdjustsMirroring
{
  v3 = automaticallyAdjustsMirroring;
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"))
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v6 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"1") & 1) == 0)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v7, self, v8, @"AVCaptureConnection's -setAutomaticallyAdjustsVideoMirroring:");
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v10 = self->_internal;
  connection = v10->connection;
  if (connection)
  {
    objc_sync_exit(internal);

    [(AVCaptureConnection *)connection setAutomaticallyAdjustsVideoMirroring:v3];
  }

  else
  {
    v10->automaticallyAdjustsMirroring = v3;

    objc_sync_exit(internal);
  }
}

- (BOOL)isMirrored
{
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"))
  {
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v4 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"1") & 1) == 0)
    {
      v5 = objc_opt_class();
      v6 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v5, self, v6, @"AVCaptureConnection's -isVideoMirrored");
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  v8 = self->_internal;
  connection = v8->connection;
  if (connection)
  {
    mirrored = [(AVCaptureConnection *)connection isVideoMirrored];
  }

  else
  {
    mirrored = v8->mirrored;
  }

  objc_sync_exit(internal);
  return mirrored;
}

- (void)setMirrored:(BOOL)mirrored
{
  v3 = mirrored;
  if (AVGestaltGetBoolAnswer(@"AVGQCaptureVPLOrientationAndMirroringPropertiesAreDeprecated"))
  {
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (([v6 isEqualToString:@"YES"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"1") & 1) == 0)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(a2);
      NSLog(&cfstr_Warning0xXIsDe.isa, v7, self, v8, @"AVCaptureConnection's -setVideoMirrored:");
    }
  }

  internal = self->_internal;
  objc_sync_enter(internal);
  connection = self->_internal->connection;
  if (connection)
  {
    objc_sync_exit(internal);

    [(AVCaptureConnection *)connection setVideoMirrored:v3];
    return;
  }

  if ([(AVCaptureVideoPreviewLayer *)self isMirroringSupported])
  {
    if (![(AVCaptureVideoPreviewLayer *)self automaticallyAdjustsMirroring])
    {
      self->_internal->mirrored = v3;
      goto LABEL_17;
    }

    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v11);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v11);
    }
  }

  NSLog(&cfstr_SuppressingExc.isa, v11);
LABEL_17:

  objc_sync_exit(internal);
}

- (void)setDeferredStartEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(AVCaptureVideoPreviewLayer *)self isDeferredStartSupported]|| !v3)
  {
    internal = self->_internal;
    objc_sync_enter(internal);
    v7 = self->_internal;
    if (v7->deferredStartEnabled != v3)
    {
      v7->deferredStartEnabled = v3;
      [(AVCaptureVideoPreviewLayer *)self bumpChangeSeed];
    }

    objc_sync_exit(internal);
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

- (BOOL)isPaused
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->isPaused;
  objc_sync_exit(internal);
  return v2;
}

- (void)setDepthDataDeliveryEnabled:(BOOL)a3
{
  v3 = a3;
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = self->_internal;
  if (v3 && !v6->depthDataDeliverySupported)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  else if (v6->depthDataDeliveryEnabled != v3)
  {
    v6->depthDataDeliveryEnabled = v3;
    objc_sync_exit(internal);

    [(AVCaptureVideoPreviewLayer *)self bumpChangeSeed];
    return;
  }

  objc_sync_exit(internal);
}

- (void)setFilterRenderingEnabled:(BOOL)a3
{
  v3 = a3;
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = self->_internal;
  if (v6->filterRenderingEnabled == v3)
  {

    objc_sync_exit(internal);
  }

  else
  {
    v6->filterRenderingEnabled = v3;
    objc_sync_exit(internal);

    [(AVCaptureVideoPreviewLayer *)self bumpChangeSeed];
  }
}

- (void)setPortraitAutoSuggestEnabled:(BOOL)a3
{
  v3 = a3;
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = self->_internal;
  if (v3 && !v6->portraitAutoSuggestSupported)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  else if (v6->portraitAutoSuggestEnabled != v3)
  {
    v6->portraitAutoSuggestEnabled = v3;
    objc_sync_exit(internal);

    [(AVCaptureVideoPreviewLayer *)self bumpChangeSeed];
    return;
  }

  objc_sync_exit(internal);
}

- (void)setVideoPreviewFilters:(id)a3
{
  v4 = 0;
  if (![(AVCaptureVideoPreviewLayer *)self _setVideoPreviewFilters:a3 checkForExceptionalInput:1 exceptionReason:&v4])
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }
}

- (BOOL)isUnoptimizedFilterRenderingEnabled
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LOBYTE(v2) = v2->_internal->unoptimizedFilterRenderingEnabled;
  objc_sync_exit(internal);
  return v2;
}

- (void)setUnoptimizedFilterRenderingEnabled:(BOOL)a3
{
  v3 = a3;
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = self->_internal;
  if (v6->unoptimizedFilterRenderingEnabled != v3)
  {
    v6->unoptimizedFilterRenderingEnabled = v3;
    if (!v3)
    {
      v8 = 0;
      if (![(AVCaptureVideoPreviewLayer *)self _filtersAreOptimized:self->_internal->videoPreviewFilters exceptionReason:&v8])
      {
        v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
        if (AVCaptureShouldThrowForAPIViolations())
        {
          objc_exception_throw(v7);
        }

        NSLog(&cfstr_SuppressingExc.isa, v7);
      }
    }
  }

  objc_sync_exit(internal);
}

- (void)setSemanticStyleRenderingEnabled:(BOOL)a3
{
  internal = self->_internal;
  if (!a3)
  {
    if (!internal->semanticStyleRenderingEnabled)
    {
      return;
    }

    if (internal->semanticStyle)
    {
      [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyle"];

      self->_internal->semanticStyle = 0;
      [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyle"];
      internal = self->_internal;
    }

    goto LABEL_8;
  }

  if (internal->semanticStyleRenderingSupported)
  {
    if (internal->semanticStyleRenderingEnabled == a3)
    {
      return;
    }

LABEL_8:
    internal->semanticStyleRenderingEnabled = a3;

    [(AVCaptureVideoPreviewLayer *)self bumpChangeSeed];
    return;
  }

  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations())
  {
    objc_exception_throw(v6);
  }

  NSLog(&cfstr_SuppressingExc.isa, v6);
}

- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4
{
  internal = self->_internal;
  if (internal->semanticStyleRenderingEnabled)
  {
    if (![(AVSemanticStyle *)internal->semanticStyle isEqual:?])
    {
      [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyle"];

      self->_internal->semanticStyle = a3;
      if (![(AVCaptureSession *)[(AVCaptureVideoPreviewLayer *)self session] isBeingConfigured])
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __56__AVCaptureVideoPreviewLayer_setSemanticStyle_animated___block_invoke;
        v9[3] = &unk_1E786EF80;
        v10 = a4;
        v9[4] = a3;
        v9[5] = self;
        [(AVCaptureVideoPreviewLayer *)self performFigCaptureSessionOperationSafelyUsingBlock:v9];
      }

      [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyle"];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v8);
    }

    NSLog(&cfstr_SuppressingExc.isa, v8);
  }
}

uint64_t __56__AVCaptureVideoPreviewLayer_setSemanticStyle_animated___block_invoke(uint64_t result, uint64_t a2)
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

- (unsigned)imageQueueSlot
{
  v2 = self;
  internal = self->_internal;
  objc_sync_enter(internal);
  LODWORD(v2) = v2->_internal->imageQueueSlot;
  objc_sync_exit(internal);
  return v2;
}

- (void)setZoomPictureInPictureOverlayEnabled:(BOOL)a3
{
  v3 = a3;
  internal = self->_internal;
  objc_sync_enter(internal);
  v6 = self->_internal;
  if (v3 && !v6->zoomPictureInPictureOverlaySupported)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v7);
    }

    NSLog(&cfstr_SuppressingExc.isa, v7);
  }

  else if (v6->zoomPictureInPictureOverlayEnabled != v3)
  {
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"zoomPictureInPictureOverlayEnabled"];
    self->_internal->zoomPictureInPictureOverlayEnabled = v3;
    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"zoomPictureInPictureOverlayEnabled"];
    [(AVCaptureVideoPreviewLayer *)self bumpChangeSeed];
  }

  objc_sync_exit(internal);
}

- (CGRect)zoomPictureInPictureOverlayRect
{
  internal = self->_internal;
  objc_sync_enter(internal);
  v4 = self->_internal;
  x = v4->zoomPictureInPictureOverlayRect.origin.x;
  y = v4->zoomPictureInPictureOverlayRect.origin.y;
  width = v4->zoomPictureInPictureOverlayRect.size.width;
  height = v4->zoomPictureInPictureOverlayRect.size.height;
  objc_sync_exit(internal);
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_updateZoomPIPOverlayRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  internal = self->_internal;
  objc_sync_enter(internal);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (!CGRectEqualToRect(v11, self->_internal->zoomPictureInPictureOverlayRect))
  {
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"zoomPictureInPictureOverlayRect"];
    v9 = self->_internal;
    v9->zoomPictureInPictureOverlayRect.origin.x = x;
    v9->zoomPictureInPictureOverlayRect.origin.y = y;
    v9->zoomPictureInPictureOverlayRect.size.width = width;
    v9->zoomPictureInPictureOverlayRect.size.height = height;
    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"zoomPictureInPictureOverlayRect"];
  }

  objc_sync_exit(internal);
}

- (void)layerDidBecomeVisible:(BOOL)a3
{
  v3 = a3;
  internal = self->_internal;
  objc_sync_enter(internal);
  self->_internal->visible = v3;
  objc_sync_exit(internal);
  if (v3)
  {
    if (dword_1ED8068C0)
    {
      v11 = 0;
      v10 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  }

  v9.receiver = self;
  v9.super_class = AVCaptureVideoPreviewLayer;
  [(AVCaptureVideoPreviewLayer *)&v9 layerDidBecomeVisible:v3];
}

- (id)addConnection:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    self->_internal->connection = a3;
    [a3 _setVideoOrientation:self->_internal->orientation];
    [a3 setAutomaticallyAdjustsVideoMirroring:self->_internal->automaticallyAdjustsMirroring];
    if (([a3 automaticallyAdjustsVideoMirroring] & 1) == 0)
    {
      [a3 setVideoMirrored:self->_internal->mirrored];
    }

    [(AVCaptureConnection *)self->_internal->connection addObserver:self forKeyPath:@"videoMirrored" options:3 context:AVCaptureVideoPreviewLayerVideoMirroredChangedContext];
    [(AVCaptureConnection *)self->_internal->connection addObserver:self forKeyPath:@"automaticallyAdjustsVideoMirroring" options:3 context:AVCaptureVideoPreviewLayerAutomaticallyAdjustsVideoMirroringChangedContext];
    [(AVCaptureConnection *)self->_internal->connection addObserver:self forKeyPath:@"videoOrientation" options:3 context:AVCaptureVideoPreviewLayerVideoOrientationChangedContext];
    v6 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](self->_internal->connection "inputPorts")];
    [v6 addObserver:self forKeyPath:@"portraitLightingEffectStrength" options:3 context:AVCaptureVideoPreviewLayerDeviceInputPortraitLightingEffectStrengthChangedContext];
    [(AVCaptureVideoPreviewLayer *)self _setSensorAndEstimatedPreviewSizes];
    [(AVCaptureVideoPreviewLayer *)self _updateDepthDataDeliverySupported];
    [(AVCaptureVideoPreviewLayer *)self _updateSemanticStyleRenderingSupported];
    [(AVCaptureVideoPreviewLayer *)self _updateZoomPictureInPictureOverlaySupported];
    [(AVCaptureVideoPreviewLayer *)self _updatePortraitAutoSuggestSupported];
    [(AVCaptureVideoPreviewLayer *)self _updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:0];
  }

  return a3;
}

- (void)removeConnection:(id)a3
{
  if (a3 && [a3 isEqual:self->_internal->connection])
  {
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"connection"];
    internal = self->_internal;
    if (!internal->isPresentationLayer)
    {
      [(AVCaptureConnection *)internal->connection removeObserver:self forKeyPath:@"videoMirrored" context:AVCaptureVideoPreviewLayerVideoMirroredChangedContext];
      [(AVCaptureConnection *)self->_internal->connection removeObserver:self forKeyPath:@"automaticallyAdjustsVideoMirroring" context:AVCaptureVideoPreviewLayerAutomaticallyAdjustsVideoMirroringChangedContext];
      [(AVCaptureConnection *)self->_internal->connection removeObserver:self forKeyPath:@"videoOrientation" context:AVCaptureVideoPreviewLayerVideoOrientationChangedContext];
      v6 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](self->_internal->connection "inputPorts")];
      [v6 removeObserver:self forKeyPath:@"portraitLightingEffectStrength" context:AVCaptureVideoPreviewLayerDeviceInputPortraitLightingEffectStrengthChangedContext];
      self->_internal->orientation = [a3 _videoOrientation];
      self->_internal->automaticallyAdjustsMirroring = [a3 automaticallyAdjustsVideoMirroring];
      self->_internal->mirrored = [a3 isVideoMirrored];
      internal = self->_internal;
    }

    self->_internal->connection = 0;
    v7 = self->_internal;
    objc_sync_enter(v7);
    v8 = self->_internal;
    v8->sensorSize.width = 0.0;
    v8->sensorSize.height = 0.0;
    v9 = self->_internal;
    v9->previewSize.width = 0.0;
    v9->previewSize.height = 0.0;
    [(AVCaptureVideoPreviewLayer *)self _updateCaptureDeviceTransform];
    objc_sync_exit(v7);
    [(AVCaptureVideoPreviewLayer *)self _updateDepthDataDeliverySupported];
    [(AVCaptureVideoPreviewLayer *)self _updateSemanticStyleRenderingSupported];
    [(AVCaptureVideoPreviewLayer *)self _updateZoomPictureInPictureOverlaySupported];
    [(AVCaptureVideoPreviewLayer *)self _updatePortraitAutoSuggestSupported];

    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"connection"];
  }
}

- (BOOL)canAddConnection:(id)a3 failureReason:(id *)a4
{
  v7 = [a3 mediaType];
  if (([v7 isEqualToString:*MEMORY[0x1E6987608]] & 1) == 0)
  {
    v8 = 1;
    goto LABEL_5;
  }

  if (self->_internal->connection)
  {
    v8 = 2;
LABEL_5:
    v9 = AVCaptureOutputConnectionFailureReasonString(v8, self, a3);
    result = 0;
    *a4 = v9;
    return result;
  }

  return 1;
}

- (void)attachToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  figCaptureSessionSyncQueue = self->_internal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVCaptureVideoPreviewLayer_attachToFigCaptureSession___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

const void *__56__AVCaptureVideoPreviewLayer_attachToFigCaptureSession___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v4 = *(v3 + 32);
  if (result != v4)
  {
    if (v4)
    {
      __56__AVCaptureVideoPreviewLayer_attachToFigCaptureSession___block_invoke_cold_1();
    }

    *(v3 + 32) = result;
    if (result)
    {
      CFRetain(result);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 attachSafelyToFigCaptureSession:v6];
  }

  return result;
}

- (void)attachSafelyToFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  weakReference = self->_internal->weakReference;
  [v5 addListenerWithWeakReference:weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FD68] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FD70] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FD78] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FD60] object:a3 flags:0];
  [v5 addListenerWithWeakReference:weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FE98] object:a3 flags:0];
  v7 = *MEMORY[0x1E698FEA8];

  [v5 addListenerWithWeakReference:weakReference callback:vpl_figCaptureSessionNotification name:v7 object:a3 flags:0];
}

- (void)detachFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  figCaptureSessionSyncQueue = self->_internal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__AVCaptureVideoPreviewLayer_detachFromFigCaptureSession___block_invoke;
  v4[3] = &unk_1E786ECD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

void __58__AVCaptureVideoPreviewLayer_detachFromFigCaptureSession___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2[6] + 32);
  if (v3)
  {
    if (*(a1 + 40) != v3)
    {
      __58__AVCaptureVideoPreviewLayer_detachFromFigCaptureSession___block_invoke_cold_1();
    }

    [v2 detachSafelyFromFigCaptureSession:?];
    v4 = *(*(*(a1 + 32) + 48) + 32);
    if (v4)
    {
      CFRelease(v4);
      *(*(*(a1 + 32) + 48) + 32) = 0;
    }
  }
}

- (void)detachSafelyFromFigCaptureSession:(OpaqueFigCaptureSession *)a3
{
  v5 = [MEMORY[0x1E6987F48] notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FD68] object:a3];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FD70] object:a3];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FD78] object:a3];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FD60] object:a3];
  [v5 removeListenerWithWeakReference:self->_internal->weakReference callback:vpl_figCaptureSessionNotification name:*MEMORY[0x1E698FE98] object:a3];
  weakReference = self->_internal->weakReference;
  v7 = *MEMORY[0x1E698FEA8];

  [v5 removeListenerWithWeakReference:weakReference callback:vpl_figCaptureSessionNotification name:v7 object:a3];
}

- (void)performFigCaptureSessionOperationSafelyUsingBlock:(id)a3
{
  figCaptureSessionSyncQueue = self->_internal->figCaptureSessionSyncQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__AVCaptureVideoPreviewLayer_performFigCaptureSessionOperationSafelyUsingBlock___block_invoke;
  v4[3] = &unk_1E786F078;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(figCaptureSessionSyncQueue, v4);
}

- (CGPoint)captureDevicePointOfInterestForPoint:(CGPoint)pointInLayer
{
  y = pointInLayer.y;
  x = pointInLayer.x;
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = self->_internal;
  tx = v5->captureDeviceTransform.tx;
  ty = v5->captureDeviceTransform.ty;
  v10 = *&v5->captureDeviceTransform.c;
  v11 = *&v5->captureDeviceTransform.a;
  objc_sync_exit(internal);
  *&v14.a = v11;
  *&v14.c = v10;
  v14.tx = tx;
  v14.ty = ty;
  CGAffineTransformInvert(&v15, &v14);
  v8 = vaddq_f64(*&v15.tx, vmlaq_n_f64(vmulq_n_f64(*&v15.c, y), *&v15.a, x));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (CGPoint)pointForCaptureDevicePointOfInterest:(CGPoint)captureDevicePointOfInterest
{
  y = captureDevicePointOfInterest.y;
  x = captureDevicePointOfInterest.x;
  internal = self->_internal;
  objc_sync_enter(internal);
  v7 = self->_internal;
  a = v7->captureDeviceTransform.a;
  b = v7->captureDeviceTransform.b;
  c = v7->captureDeviceTransform.c;
  d = v7->captureDeviceTransform.d;
  tx = v7->captureDeviceTransform.tx;
  ty = v7->captureDeviceTransform.ty;
  objc_sync_exit(internal);
  v14 = tx + y * c + a * x;
  v15 = ty + y * d + b * x;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)_input
{
  memset(v4, 0, sizeof(v4));
  result = [(NSArray *)[(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] inputPorts] countByEnumeratingWithState:v4 objects:&v3 count:16];
  if (result)
  {
    return [**(&v4[0] + 1) input];
  }

  return result;
}

- (AVMetadataObject)transformedMetadataObjectForMetadataObject:(AVMetadataObject *)metadataObject
{
  v5 = [(AVMetadataObject *)metadataObject input];
  if (v5 != [(AVCaptureVideoPreviewLayer *)self _input])
  {
    return 0;
  }

  v7 = [(AVMetadataObject *)metadataObject originalMetadataObject];
  internal = self->_internal;
  objc_sync_enter(internal);
  v9 = self->_internal;
  v10 = *&v9->captureDeviceTransform.c;
  v14 = *&v9->captureDeviceTransform.a;
  v15 = v10;
  v16 = *&v9->captureDeviceTransform.tx;
  v11 = [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] isVideoMirrored];
  rollAdjustment = self->_internal->rollAdjustment;
  objc_sync_exit(internal);
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  return [AVMetadataObject derivedMetadataObjectFromMetadataObject:v7 withTransform:v13 isVideoMirrored:v11 rollAdjustment:rollAdjustment];
}

- (CGAffineTransform)_updateTransformForMetadataOutputCorrections:(SEL)a3
{
  v6 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v6;
  *&retstr->tx = *&a4->tx;
  v7 = [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromExternalCamera];
  v8 = AVCapturePlatformMountsCamerasInLandscapeOrientation();
  internal = self->_internal;
  objc_sync_enter(internal);
  rollAdjustment = self->_internal->rollAdjustment;
  v11 = rollAdjustment != 270.0 && rollAdjustment != 90.0;
  v12 = rollAdjustment != 180.0 && rollAdjustment != 0.0;
  result = objc_sync_exit(internal);
  if (v7)
  {
    if (!v8 || ([(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromExternalCamera], result = FigCaptureCameraRequires180DegreesRotation(), (result & 1) == 0))
    {
      if ((v11 || !v8) && (v12 || v8))
      {
        CGAffineTransformMakeScale(&t2, 1.0, -1.0);
        v14 = *&retstr->c;
        *&t1.a = *&retstr->a;
        *&t1.c = v14;
        *&t1.tx = *&retstr->tx;
        CGAffineTransformConcat(retstr, &t1, &t2);
        [(AVCaptureVideoPreviewLayer *)self bounds];
        v16 = v15;
        v17 = 0.0;
      }

      else
      {
        CGAffineTransformMakeScale(&t2, -1.0, 1.0);
        v18 = *&retstr->c;
        *&t1.a = *&retstr->a;
        *&t1.c = v18;
        *&t1.tx = *&retstr->tx;
        CGAffineTransformConcat(retstr, &t1, &t2);
        [(AVCaptureVideoPreviewLayer *)self bounds];
        v17 = v19;
        v16 = 0.0;
      }

      CGAffineTransformMakeTranslation(&t1, v17, v16);
      v20 = *&retstr->c;
      *&v22.a = *&retstr->a;
      *&v22.c = v20;
      *&v22.tx = *&retstr->tx;
      result = CGAffineTransformConcat(&t2, &v22, &t1);
      v21 = *&t2.c;
      *&retstr->a = *&t2.a;
      *&retstr->c = v21;
      *&retstr->tx = *&t2.tx;
    }
  }

  return result;
}

- (CGRect)metadataOutputRectOfInterestForRect:(CGRect)rectInLayerCoordinates
{
  height = rectInLayerCoordinates.size.height;
  width = rectInLayerCoordinates.size.width;
  y = rectInLayerCoordinates.origin.y;
  x = rectInLayerCoordinates.origin.x;
  internal = self->_internal;
  objc_sync_enter(internal);
  v9 = self->_internal;
  v10 = *&v9->captureDeviceTransform.c;
  *&v21.a = *&v9->captureDeviceTransform.a;
  *&v21.c = v10;
  *&v21.tx = *&v9->captureDeviceTransform.tx;
  objc_sync_exit(internal);
  v20 = v21;
  [(AVCaptureVideoPreviewLayer *)self _updateTransformForMetadataOutputCorrections:&v20];
  v19 = v21;
  CGAffineTransformInvert(&v20, &v19);
  v21 = v20;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v23 = CGRectApplyAffineTransform(v22, &v20);
  v11 = v23.origin.x;
  v12 = v23.origin.y;
  v13 = v23.size.width;
  v14 = v23.size.height;
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromExternalCamera];
  if (AVCapturePlatformMountsCamerasInLandscapeOrientation())
  {
    v15 = v14;
    v14 = v13;
    v16 = v12;
    v12 = v11;
  }

  else
  {
    v15 = v13;
    v16 = v11;
  }

  v17 = v12;
  v18 = v14;
  result.size.height = v15;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

- (CGRect)rectForMetadataOutputRectOfInterest:(CGRect)rectInMetadataOutputCoordinates
{
  height = rectInMetadataOutputCoordinates.size.height;
  width = rectInMetadataOutputCoordinates.size.width;
  y = rectInMetadataOutputCoordinates.origin.y;
  x = rectInMetadataOutputCoordinates.origin.x;
  internal = self->_internal;
  objc_sync_enter(internal);
  v9 = self->_internal;
  v10 = *&v9->captureDeviceTransform.c;
  *&v16.a = *&v9->captureDeviceTransform.a;
  *&v16.c = v10;
  *&v16.tx = *&v9->captureDeviceTransform.tx;
  objc_sync_exit(internal);
  v15 = v16;
  [(AVCaptureVideoPreviewLayer *)self _updateTransformForMetadataOutputCorrections:&v15];
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)[(AVCaptureVideoPreviewLayer *)self connection] sourcesFromExternalCamera];
  if (AVCapturePlatformMountsCamerasInLandscapeOrientation())
  {
    v11 = x;
    x = y;
    v12 = width;
    width = height;
  }

  else
  {
    v11 = y;
    v12 = height;
  }

  v15 = v16;
  v13 = x;
  v14 = width;
  return CGRectApplyAffineTransform(*&v11, &v15);
}

- (CGAffineTransform)captureDeviceTransformForSensorSize:(SEL)a3 previewSize:(CGSize)a4 sensorToPreviewVTScalingMode:(CGSize)a5 applyDynamicAspectRatio:(id)a6
{
  v7 = a7;
  height = a5.height;
  width = a5.width;
  v11 = a4.height;
  v12 = a4.width;
  v15 = [(AVCaptureVideoPreviewLayer *)self connection];
  [(AVCaptureVideoPreviewLayer *)self bounds];
  v44.origin.x = v16;
  v44.origin.y = v17;
  v44.size.width = v18;
  v44.size.height = v19;
  CGRectEqualToRect(*MEMORY[0x1E695F058], v44);
  v20 = *MEMORY[0x1E695EFD0];
  v21 = *(MEMORY[0x1E695EFD0] + 16);
  *&v43.a = *MEMORY[0x1E695EFD0];
  *&v43.c = v21;
  v22 = *(MEMORY[0x1E695EFD0] + 32);
  *&v43.tx = v22;
  if (v7)
  {
    v37 = v22;
    v38 = v21;
    v39 = v20;
    if ([-[AVCaptureConnection sourceDevice](v15 "sourceDevice")])
    {
      v23 = v12 / v11;
      v24 = width / height;
      v25 = v24 <= v23;
      if (v24 != v23)
      {
        v26 = v23 / v24;
        v27 = v24 / v23;
        if (v25)
        {
          v27 = v26;
        }

        v28 = fmax(v27, 1.0);
        CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
        *&t1.a = v39;
        *&t1.c = v38;
        *&t1.tx = v37;
        CGAffineTransformConcat(&v43, &t1, &t2);
        CGAffineTransformMakeScale(&t1, v28, v28);
        v40 = v43;
        CGAffineTransformConcat(&t2, &v40, &t1);
        v43 = t2;
        CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
        v40 = v43;
        CGAffineTransformConcat(&t2, &v40, &t1);
        v43 = t2;
        a6 = *MEMORY[0x1E69840E8];
      }
    }
  }

  memset(&t2, 0, sizeof(t2));
  [(AVCaptureConnection *)v15 sourcesFromFrontFacingCamera];
  [(AVCaptureConnection *)v15 sourcesFromExternalCamera];
  [(AVCaptureConnection *)v15 videoRotationAngle];
  v30 = v29;
  internal = self->_internal;
  [(AVCaptureVideoPreviewLayer *)self bounds];
  AVCaptureVideoTransformForCaptureDevice(a6, 1, v30, &internal->rollAdjustment, 1, self->_internal->gravity, &t2, v12, v11, width, height, v32, v33, v34, v35, 1, [(AVCaptureConnection *)v15 isVideoMirrored]);
  t1 = v43;
  v40 = t2;
  return CGAffineTransformConcat(retstr, &t1, &v40);
}

- (void)_updateSemanticStyleRenderingSupported
{
  v3 = [objc_msgSend(-[AVCaptureConnection sourceDevice](self->_internal->connection "sourceDevice")];
  internal = self->_internal;
  objc_sync_enter(internal);
  v5 = self->_internal;
  semanticStyleRenderingSupported = v5->semanticStyleRenderingSupported;
  if (v3)
  {
    semanticStyleRenderingEnabled = 0;
    v8 = 0;
  }

  else
  {
    semanticStyleRenderingEnabled = v5->semanticStyleRenderingEnabled;
    v8 = v5->semanticStyle != 0;
  }

  objc_sync_exit(internal);
  if (semanticStyleRenderingSupported == v3)
  {
    if (!semanticStyleRenderingEnabled)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyleRenderingSupported"];
    if (!semanticStyleRenderingEnabled)
    {
LABEL_6:
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyleRenderingEnabled"];
  if (v8)
  {
LABEL_7:
    [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"semanticStyle"];
  }

LABEL_8:
  v9 = self->_internal;
  objc_sync_enter(v9);
  self->_internal->semanticStyleRenderingSupported = v3;
  if (semanticStyleRenderingEnabled)
  {
    self->_internal->semanticStyleRenderingEnabled = 0;
  }

  if (!v8)
  {
    objc_sync_exit(v9);
    if (!semanticStyleRenderingEnabled)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  self->_internal->semanticStyle = 0;
  objc_sync_exit(v9);
  [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyle"];
  if (semanticStyleRenderingEnabled)
  {
LABEL_17:
    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyleRenderingEnabled"];
  }

LABEL_18:
  if (semanticStyleRenderingSupported != v3)
  {

    [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"semanticStyleRenderingSupported"];
  }
}

- (BOOL)_filtersAreOptimized:(id)a3 exceptionReason:(id *)a4
{
  connection = self->_internal->connection;
  if (!connection)
  {
    return 1;
  }

  v7 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(objc_msgSend(-[AVCaptureConnection sourceDevice](connection, "sourceDevice"), "activeFormat"), "optimizedVideoPreviewFilterNames")}];
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(a3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(a3);
        }

        [v8 addObject:{objc_msgSend(*(*(&v16 + 1) + 8 * v12++), "name")}];
      }

      while (v10 != v12);
      v10 = [a3 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }

  [v8 minusSet:v7];
  if (![v8 count])
  {
    return 1;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The following filters are unsupported: %@", objc_msgSend(v8, "allObjects")];
  result = 0;
  *a4 = v13;
  return result;
}

- (BOOL)_setVideoPreviewFilters:(id)a3 checkForExceptionalInput:(BOOL)a4 exceptionReason:(id *)a5
{
  v16 = 0;
  if (!a4)
  {
    p_internal = &self->_internal;
    internal = self->_internal;
    objc_sync_enter(internal);
    goto LABEL_10;
  }

  if (!a3)
  {
    v13 = @"videoPreviewFilters must be a non-nil value (empty array is permissible)";
LABEL_18:
    v16 = v13;
LABEL_19:
    result = 0;
    if (a5)
    {
      *a5 = v16;
    }

    return result;
  }

  if ((AVCaptureClientHasEntitlement(AVCaptureEntitlementFilterRendering) & 1) == 0)
  {
    v13 = @"App lacks proper entitlements";
    goto LABEL_18;
  }

  if ([a3 count] && !-[AVCaptureVideoPreviewLayer isFilterRenderingEnabled](self, "isFilterRenderingEnabled"))
  {
    v13 = @"filterRenderingEnabled must be set to YES before setting videoPreviewFilters with a non-empty array";
    goto LABEL_18;
  }

  p_internal = &self->_internal;
  internal = self->_internal;
  objc_sync_enter(internal);
  if (!self->_internal->unoptimizedFilterRenderingEnabled && ![(AVCaptureVideoPreviewLayer *)self _filtersAreOptimized:a3 exceptionReason:&v16])
  {
    objc_sync_exit(internal);
    goto LABEL_19;
  }

LABEL_10:

  (*p_internal)->videoPreviewFilters = [a3 copy];
  v10 = (*p_internal)->depthDataDeliveryEnabled || (*p_internal)->portraitAutoSuggestEnabled;
  objc_sync_exit(internal);
  figCaptureSessionSyncQueue = (*p_internal)->figCaptureSessionSyncQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__AVCaptureVideoPreviewLayer__setVideoPreviewFilters_checkForExceptionalInput_exceptionReason___block_invoke;
  v14[3] = &unk_1E7875C20;
  v14[4] = self;
  v14[5] = a3;
  v15 = v10 & 1;
  dispatch_sync(figCaptureSessionSyncQueue, v14);
  return 1;
}

void *__95__AVCaptureVideoPreviewLayer__setVideoPreviewFilters_checkForExceptionalInput_exceptionReason___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result[6] + 32);
  if (v3)
  {
    v4 = [result sinkID];
    v5 = *(a1 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v6)
    {
      v6(v3, v4, *MEMORY[0x1E698FDC0], v5);
    }

    result = [*(a1 + 40) count];
    if (result && *(a1 + 48) == 1)
    {
      [*(a1 + 32) _setSimulatedApertureFromDeviceInput];
      v7 = *(a1 + 32);

      return [v7 _setPortraitLightingEffectStrengthFromDeviceInput];
    }
  }

  return result;
}

- (void)didUpdatePreviewFormatDescription:(opaqueCMFormatDescription *)a3
{
  v5 = [(AVCaptureConnection *)self->_internal->connection sourceDevice];
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  v7 = [v5 activeFormat];
  v8 = CMVideoFormatDescriptionGetDimensions([v7 formatDescription]);
  internal = self->_internal;
  objc_sync_enter(internal);
  IsHDR = AVCaptureColorSpaceIsHDR([v5 activeColorSpace]);
  v11 = HIDWORD(Dimensions);
  v12 = self->_internal;
  v13 = IsHDR && !v12->requestedPreferredDynamicRangeHigh;
  previewRotationDegrees = v12->previewRotationDegrees;
  v15 = previewRotationDegrees == 90.0;
  if (previewRotationDegrees == 270.0)
  {
    v15 = 1;
  }

  v16 = !v15;
  if (v15)
  {
    v17 = HIDWORD(Dimensions);
  }

  else
  {
    v17 = Dimensions;
  }

  if (!v16)
  {
    LODWORD(v11) = Dimensions;
  }

  v12->previewSize.width = v17;
  self->_internal->previewSize.height = v11;
  self->_internal->sensorSize.width = v8.width;
  self->_internal->sensorSize.height = v8.height;
  self->_internal->sensorToPreviewVTScalingMode = [v7 vtScalingMode];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  [(AVCaptureVideoPreviewLayer *)self _updatePreviewTransforms];
  [MEMORY[0x1E6979518] commit];
  objc_sync_exit(internal);
  if (v13)
  {

    [(AVCaptureVideoPreviewLayer *)self _updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:0];
  }
}

- (void)didUpdatePreviewImageQueueSlot:(unsigned int)a3 imageQueue:(id)a4 rotationDegrees:(double)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  internal = self->_internal;
  objc_sync_enter(internal);
  if (dword_1ED8068C0)
  {
    v19 = 0;
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_internal->previewRotationDegrees = a5;
  if (a4)
  {
    self->_internal->imageQueueSlot = a3;
    if (width != 0.0 && height != 0.0)
    {
      v14 = self->_internal;
      previewRotationDegrees = v14->previewRotationDegrees;
      if (previewRotationDegrees == 90.0 || previewRotationDegrees == 270.0)
      {
        v14->previewSize.width = height;
        v14 = self->_internal;
      }

      else
      {
        v14->previewSize.width = width;
        width = height;
      }

      v14->previewSize.height = width;
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    [(AVCaptureVideoPreviewLayer *)self _updatePreviewTransforms];
    [(CALayer *)self->_internal->sublayer setContents:a4];
    [MEMORY[0x1E6979518] commit];
  }

  objc_sync_exit(internal);
}

- (void)_handleNotification:(id)a3 payload:(id)a4
{
  if (![objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FCD8]), "isEqualToString:", -[AVCaptureVideoPreviewLayer sinkID](self, "sinkID")}])
  {
    return;
  }

  if ([a3 isEqualToString:*MEMORY[0x1E698FD68]])
  {
    internal = self->_internal;
    if (internal->isPreviewing)
    {
LABEL_32:
      if (dword_1ED8068C0)
      {
        v48 = 0;
        v47 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v22 = v48;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v47))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (v23)
        {
          v38 = 136315394;
          v39 = "[AVCaptureVideoPreviewLayer _handleNotification:payload:]";
          v40 = 2114;
          v41 = self;
          LODWORD(v36) = 22;
          v34 = &v38;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
      return;
    }

    if ([(CALayer *)internal->sublayer contents]|| (AVCaptureClientIsCameraOrDerivative() & 1) == 0 && !AVCaptureClientIsInternalTestTool())
    {
LABEL_9:
      [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"previewing"];
      self->_internal->isPreviewing = 1;
      if (dword_1ED8068C0)
      {
        v48 = 0;
        v47 = OS_LOG_TYPE_DEFAULT;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"previewing", v34, v36];
      goto LABEL_32;
    }

    v8 = self->_internal;
    didStartPreviewingWithImageQueueNilCount = v8->didStartPreviewingWithImageQueueNilCount;
    if (didStartPreviewingWithImageQueueNilCount < 1)
    {
      v8->didStartPreviewingWithImageQueueNilCount = didStartPreviewingWithImageQueueNilCount + 1;
      goto LABEL_9;
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected image queue is nil, error (%d).", 4294894096];
    v48 = 0;
    v47 = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(rect.origin.x) = 138412290;
    *(&rect.origin.x + 4) = v24;
    p_rect = &rect;
    v26 = _os_log_send_and_compose_impl();
    FigCaptureGetFrameworkRadarComponent();
    v37 = 0;
    LOBYTE(p_rect) = 1;
    FigCapturePleaseFileRadar();
    free(v26);
    v48 = 0;
    v47 = OS_LOG_TYPE_DEFAULT;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = v48;
    if (os_log_type_enabled(v27, v47))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      imageQueueSlot = self->_internal->imageQueueSlot;
      v38 = 136315906;
      v39 = "[AVCaptureVideoPreviewLayer _handleNotification:payload:]";
      v40 = 2114;
      v41 = self;
      v42 = 1024;
      v43 = imageQueueSlot;
      v44 = 2114;
      v45 = v24;
      LODWORD(v37) = 38;
      p_rect = &v38;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [v24 UTF8String];
    v31 = abort_with_reason();
    [(AVCaptureVideoPreviewLayer *)v31 _updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:v32, v33];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD70]])
  {
    if (self->_internal->isPreviewing)
    {
      [(AVCaptureVideoPreviewLayer *)self willChangeValueForKey:@"previewing"];
      self->_internal->isPreviewing = 0;

      [(AVCaptureVideoPreviewLayer *)self didChangeValueForKey:@"previewing"];
    }
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD78]])
  {
    v11 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FC48]];

    [(AVCaptureVideoPreviewLayer *)self didUpdatePreviewFormatDescription:v11];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FD60]])
  {

    [(AVCaptureVideoPreviewLayer *)self _updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:1];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FE98]])
  {
    v12 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FAF0]];
    v13 = [v12 intValue];
    v14 = [a4 objectForKeyedSubscript:*MEMORY[0x1E698FAE0]];
    v15 = v14;
    if (v12 && !v14)
    {
      v15 = [MEMORY[0x1E6979320] objectForSlot:v13];
    }

    [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FB00]), "floatValue"}];
    v17 = v16;
    [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FAF8]), "floatValue"}];
    v19 = v18;
    [objc_msgSend(a4 objectForKeyedSubscript:{*MEMORY[0x1E698FAE8]), "floatValue"}];

    [(AVCaptureVideoPreviewLayer *)self didUpdatePreviewImageQueueSlot:v13 imageQueue:v15 rotationDegrees:v17 size:v19, v20];
  }

  else if ([a3 isEqualToString:*MEMORY[0x1E698FEA8]])
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation([a4 objectForKeyedSubscript:*MEMORY[0x1E6990020]], &rect))
    {
      [(AVCaptureVideoPreviewLayer *)self _updateZoomPIPOverlayRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    }
  }
}

- (void)_updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:(BOOL)a3
{
  v3 = a3;
  internal = self->_internal;
  objc_sync_enter(internal);
  IsHDR = AVCaptureColorSpaceIsHDR([-[AVCaptureConnection sourceDevice](self->_internal->connection "sourceDevice")]);
  v7 = IsHDR;
  v8 = IsHDR ^ v3;
  if (v8 == 1)
  {
    self->_internal->requestedPreferredDynamicRangeHigh = IsHDR;
  }

  v11 = self->_internal->sublayer;
  v9 = objc_sync_exit(internal);
  v10 = v11;
  if (v8)
  {
    v9 = [(AVCaptureVideoPreviewLayer *)v7 _updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:v11];
    v10 = v11;
  }

  MEMORY[0x1EEE66BB8](v9, v10);
}

- (void)_setSimulatedApertureFromDeviceInput
{
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0_8();
    FigDebugAssert3();
  }

  internal = self->_internal;
  if (internal->figCaptureSession)
  {
    v4 = [-[NSArray firstObject](-[AVCaptureConnection inputPorts](internal->connection "inputPorts")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 device];
      [v4 simulatedAperture];

      [v5 _setSimulatedAperture:?];
    }
  }
}

- (uint64_t)_updatePreferredDynamicRangeForFirstPreviewFrameDisplayed:(char)a1 .cold.1(char a1, void *a2)
{
  v3 = MEMORY[0x1E69792A0];
  if ((a1 & 1) == 0)
  {
    v3 = MEMORY[0x1E69792A8];
  }

  v4 = *v3;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [a2 setPreferredDynamicRange:v4];
  v5 = MEMORY[0x1E6979518];

  return [v5 commit];
}

@end