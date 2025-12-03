@interface AVCaptureDeviceRotationCoordinator
+ (void)initialize;
- (AVCaptureDeviceRotationCoordinator)initWithDevice:(AVCaptureDevice *)device previewLayer:(CALayer *)previewLayer;
- (BOOL)_isExternalDeviceType:(id)type;
- (double)_systemReferenceAngleForDeviceOrientation:(int64_t)orientation;
- (id)description;
- (int64_t)_currentDeviceOrientation;
- (void)_calculateVideoRotationAngleForHorizonLevelCaptureWithDeviceOrientation:(int64_t)orientation;
- (void)_calculateVideoRotationAngleForHorizonLevelPreviewWithSystemReferenceAngle:(double)angle;
- (void)_handleActiveInterfaceOrientationUpdate:(id)update;
- (void)_handleSystemReferenceAngleDidChangeNotification:(id)notification;
- (void)_updateVideoRotationAngleForHorizonLevelCapture;
- (void)_updateVideoRotationAngleForHorizonLevelPreview;
- (void)dealloc;
- (void)externalDisplayLayerObserver:(id)observer visibiltyChanged:(BOOL)changed;
- (void)handleVideoPreviewLayerDidBecomeVisibleNotification:(id)notification;
@end

@implementation AVCaptureDeviceRotationCoordinator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (AVCaptureDeviceRotationCoordinator)initWithDevice:(AVCaptureDevice *)device previewLayer:(CALayer *)previewLayer
{
  v28.receiver = self;
  v28.super_class = AVCaptureDeviceRotationCoordinator;
  v6 = [(AVCaptureDeviceRotationCoordinator *)&v28 init];
  if (v6)
  {
    v6->_coordinatorWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:v6];
    v6->_deviceWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:device];
    v6->_devicePosition = [(AVCaptureDevice *)device position];
    if (previewLayer)
    {
      v6->_previewLayerWeakReference = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:previewLayer];
    }

    v6->_videoRotationAngleForHorizonLevelPreview = 0.0;
    v6->_videoRotationAngleForHorizonLevelCapture = 0.0;
    v7 = *MEMORY[0x1E6987608];
    v8 = [AVCaptureDevice authorizationStatusForMediaType:*MEMORY[0x1E6987608]];
    v10 = v8 == AVAuthorizationStatusAuthorized || v8 == AVAuthorizationStatusNotDetermined;
    v6->_monitorSystemReferenceAngle = v10;
    v11 = [(AVCaptureDevice *)device hasMediaType:v7]&& v6->_monitorSystemReferenceAngle;
    if (!previewLayer)
    {
      LOBYTE(v11) = 0;
    }

    v6->_monitorSystemReferenceAngle = v11;
    v12 = [(AVCaptureDeviceRotationCoordinator *)v6 _isExternalDeviceType:[(AVCaptureDevice *)device deviceType]];
    v13 = v6->_monitorSystemReferenceAngle && !v12;
    v6->_monitorSystemReferenceAngle &= !v12;
    if (v13 == 1)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v24 = __66__AVCaptureDeviceRotationCoordinator_initWithDevice_previewLayer___block_invoke;
      v25 = &unk_1E786EAA8;
      v26 = v6;
      v27 = previewLayer;
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v24(block);
      }

      else
      {
        dispatch_async_and_wait(MEMORY[0x1E69E96A0], block);
      }
    }

    v6->_monitorDeviceOrientation = v10;
    v6->_monitorDeviceOrientation &= [(AVCaptureDevice *)device hasMediaType:v7];
    v14 = [(AVCaptureDeviceRotationCoordinator *)v6 _isExternalDeviceType:[(AVCaptureDevice *)device deviceType]];
    v15 = v6->_monitorDeviceOrientation && !v14;
    v6->_monitorDeviceOrientation &= !v14;
    if (v15 == 1)
    {
      coordinatorWeakReference = v6->_coordinatorWeakReference;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __66__AVCaptureDeviceRotationCoordinator_initWithDevice_previewLayer___block_invoke_4;
      handler[3] = &unk_1E786EBE0;
      handler[4] = coordinatorWeakReference;
      notify_register_dispatch("com.apple.backboardd.rawOrientation", &v6->_deviceOrientationNotificationToken, MEMORY[0x1E69E96A0], handler);
      v19 = __66__AVCaptureDeviceRotationCoordinator_initWithDevice_previewLayer___block_invoke_5;
      v20 = &unk_1E786EC08;
      v21 = v6;
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v19(&v18);
      }

      else
      {
        dispatch_async_and_wait(MEMORY[0x1E69E96A0], &v18);
      }
    }
  }

  return v6;
}

uint64_t __66__AVCaptureDeviceRotationCoordinator_initWithDevice_previewLayer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  *(*(a1 + 32) + 80) = objc_alloc_init(getFBSOrientationObserverClass());
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AVCaptureDeviceRotationCoordinator_initWithDevice_previewLayer___block_invoke_2;
  v4[3] = &unk_1E786EBB8;
  v4[4] = v2;
  [*(*(a1 + 32) + 80) setHandler:v4];
  [*(a1 + 32) _updateVideoRotationAngleForHorizonLevelPreview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  *(*(a1 + 32) + 40) = [[AVCaptureVisibilityHelperLayer alloc] initWithDelegate:*(a1 + 32)];
  return [*(a1 + 40) addSublayer:*(*(a1 + 32) + 40)];
}

void __66__AVCaptureDeviceRotationCoordinator_initWithDevice_previewLayer___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) referencedObject];
  if (v3)
  {
    v4 = v3;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {

      [v4 _handleActiveInterfaceOrientationUpdate:a2];
    }

    else
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __66__AVCaptureDeviceRotationCoordinator_initWithDevice_previewLayer___block_invoke_3;
      v5[3] = &unk_1E786EAA8;
      v5[4] = v4;
      v5[5] = a2;
      dispatch_async(MEMORY[0x1E69E96A0], v5);
    }
  }
}

void *__66__AVCaptureDeviceRotationCoordinator_initWithDevice_previewLayer___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) referencedObject];
  if (result)
  {

    return [result _updateVideoRotationAngleForHorizonLevelCapture];
  }

  return result;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(AVCaptureVisibilityHelperLayer *)self->_rotationHelperLayer removeFromSuperlayer];

  if (self->_monitorSystemReferenceAngle)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  [(FBSOrientationObserver *)self->_activeInterfaceOrientationObserver invalidate];

  if (self->_monitorDeviceOrientation)
  {
    notify_cancel(self->_deviceOrientationNotificationToken);
  }

  v3.receiver = self;
  v3.super_class = AVCaptureDeviceRotationCoordinator;
  [(AVCaptureDeviceRotationCoordinator *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureDeviceRotationCoordinator debugDescription](self, "debugDescription")];
}

- (BOOL)_isExternalDeviceType:(id)type
{
  if ([type isEqualToString:@"AVCaptureDeviceTypeExternal"])
  {
    return 1;
  }

  return [type isEqualToString:@"AVCaptureDeviceTypeContinuityCamera"];
}

- (void)handleVideoPreviewLayerDidBecomeVisibleNotification:(id)notification
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(AVCaptureDeviceRotationCoordinator *)self _updateVideoRotationAngleForHorizonLevelPreview];
}

- (void)externalDisplayLayerObserver:(id)observer visibiltyChanged:(BOOL)changed
{
  changedCopy = changed;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (changedCopy)
  {

    [(AVCaptureDeviceRotationCoordinator *)self _updateVideoRotationAngleForHorizonLevelPreview];
  }
}

- (void)_updateVideoRotationAngleForHorizonLevelPreview
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"UISSystemReferenceAngleMode AVUISSystemReferenceAngleModeForContextID(uint32_t)") description:{@"AVCaptureDeviceRotationCoordinator.m", 49, @"%s", dlerror()}];
  __break(1u);
}

- (void)_calculateVideoRotationAngleForHorizonLevelPreviewWithSystemReferenceAngle:(double)angle
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_monitorSystemReferenceAngle)
  {
    [AVCaptureDeviceRotationCoordinator _calculateVideoRotationAngleForHorizonLevelPreviewWithSystemReferenceAngle:];
    return;
  }

  referencedObject = [(AVWeakReference *)self->_previewLayerWeakReference referencedObject];
  v6 = FigCaptureCameraRequires180DegreesRotation();
  if (referencedObject)
  {
    if (angle == 0.0)
    {
      v7 = ((self->_devicePosition != 2) | v6 & 1) == 0;
      v8 = 270.0;
      v9 = 90.0;
    }

    else
    {
      v8 = 90.0;
      if (angle == 90.0)
      {
        if (v6)
        {
          v10 = 180.0;
        }

        else
        {
          v10 = 0.0;
        }

        goto LABEL_12;
      }

      if (angle == -90.0)
      {
        v7 = v6 == 0;
        v8 = 180.0;
        v9 = 0.0;
      }

      else
      {
        if (angle != 180.0)
        {
          v10 = 0.0;
LABEL_12:
          v11 = FigCaptureFrontCameraRotationAngle();
          if (self->_devicePosition == 2 && (v11 == 270 || v11 == 90))
          {
            v10 = ((v11 + v10) % 360);
          }

          videoRotationAngleForHorizonLevelPreview = self->_videoRotationAngleForHorizonLevelPreview;
          if (v10 != videoRotationAngleForHorizonLevelPreview || !self->_isInitialVideoRotationAngleForHorizonLevelPreviewSet)
          {
            if (dword_1EB3859B8)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            self->_isInitialVideoRotationAngleForHorizonLevelPreviewSet = 1;
            if (v10 != videoRotationAngleForHorizonLevelPreview)
            {
              [(AVCaptureDeviceRotationCoordinator *)self willChangeValueForKey:@"videoRotationAngleForHorizonLevelPreview"];
              self->_videoRotationAngleForHorizonLevelPreview = v10;
              [(AVCaptureDeviceRotationCoordinator *)self didChangeValueForKey:@"videoRotationAngleForHorizonLevelPreview"];
            }
          }

          return;
        }

        v7 = ((self->_devicePosition != 2) | v6 & 1) == 0;
        v9 = 270.0;
      }
    }

    if (v7)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    goto LABEL_12;
  }
}

- (void)_handleSystemReferenceAngleDidChangeNotification:(id)notification
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  referencedObject = [(AVWeakReference *)self->_previewLayerWeakReference referencedObject];
  if (referencedObject)
  {
    v6 = [objc_msgSend(referencedObject "context")];
    userInfo = [notification userInfo];
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v8 = getUISSystemReferenceAngleAffectedContextIDsKeySymbolLoc_ptr;
    v14 = getUISSystemReferenceAngleAffectedContextIDsKeySymbolLoc_ptr;
    if (!getUISSystemReferenceAngleAffectedContextIDsKeySymbolLoc_ptr)
    {
      v9 = UIKitServicesLibrary();
      v12[3] = dlsym(v9, "UISSystemReferenceAngleAffectedContextIDsKey");
      getUISSystemReferenceAngleAffectedContextIDsKeySymbolLoc_ptr = v12[3];
      v8 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v8)
    {
      [AVCaptureDeviceRotationCoordinator _handleSystemReferenceAngleDidChangeNotification:];
    }

    v10 = [userInfo objectForKeyedSubscript:*v8];
    if ([v10 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v6)}])
    {
      [(AVCaptureDeviceRotationCoordinator *)self _updateVideoRotationAngleForHorizonLevelPreview];
    }
  }
}

- (void)_handleActiveInterfaceOrientationUpdate:(id)update
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);

  [(AVCaptureDeviceRotationCoordinator *)self _updateVideoRotationAngleForHorizonLevelPreview];
}

- (double)_systemReferenceAngleForDeviceOrientation:(int64_t)orientation
{
  result = 0.0;
  if ((orientation - 2) <= 2)
  {
    return dbl_1A92AB148[orientation - 2];
  }

  return result;
}

- (void)_updateVideoRotationAngleForHorizonLevelCapture
{
  _currentDeviceOrientation = [(AVCaptureDeviceRotationCoordinator *)self _currentDeviceOrientation];

  [(AVCaptureDeviceRotationCoordinator *)self _calculateVideoRotationAngleForHorizonLevelCaptureWithDeviceOrientation:_currentDeviceOrientation];
}

- (void)_calculateVideoRotationAngleForHorizonLevelCaptureWithDeviceOrientation:(int64_t)orientation
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_monitorDeviceOrientation)
  {
    [AVCaptureDeviceRotationCoordinator _calculateVideoRotationAngleForHorizonLevelCaptureWithDeviceOrientation:];
    return;
  }

  v5 = FigCaptureCameraRequires180DegreesRotation();
  if (!self->_isInitialVideoRotationAngleForHorizonLevelCaptureSet && (orientation - 5) <= 1 && !self->_previewLayerWeakReference)
  {
    v6 = objc_alloc_init(getFBSOrientationObserverClass());
    orientation = [v6 activeInterfaceOrientation];
    if (dword_1EB3859B8)
    {
      v29 = 0;
      v28 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [v6 invalidate];
  }

  if (orientation <= 2)
  {
    if (orientation != 1)
    {
      if (orientation == 2)
      {
        v8 = ((self->_devicePosition != 2) | v5 & 1) == 0;
        v9 = 90.0;
        v10 = 270.0;
        goto LABEL_18;
      }

LABEL_15:
      if (self->_isInitialVideoRotationAngleForHorizonLevelCaptureSet)
      {
        videoRotationAngleForHorizonLevelCapture = self->_videoRotationAngleForHorizonLevelCapture;
      }

      else if (self->_previewLayerWeakReference)
      {
        videoRotationAngleForHorizonLevelCapture = self->_videoRotationAngleForHorizonLevelPreview;
      }

      else
      {
        v29 = 0;
        v28 = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v18 = v29;
        if (os_log_type_enabled(v17, v28))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v22 = 136315650;
          v23 = "[AVCaptureDeviceRotationCoordinator _calculateVideoRotationAngleForHorizonLevelCaptureWithDeviceOrientation:]";
          v24 = 2114;
          selfCopy2 = self;
          v26 = 1024;
          LODWORD(v27) = orientation;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        videoRotationAngleForHorizonLevelCapture = 0.0;
      }

      goto LABEL_28;
    }

    v8 = ((self->_devicePosition != 2) | v5 & 1) == 0;
    v9 = 270.0;
    v10 = 90.0;
LABEL_18:
    if (v8)
    {
      videoRotationAngleForHorizonLevelCapture = v9;
    }

    else
    {
      videoRotationAngleForHorizonLevelCapture = v10;
    }

    goto LABEL_24;
  }

  if (orientation != 3)
  {
    if (orientation != 4)
    {
      goto LABEL_15;
    }

    v8 = v5 == 0;
    v9 = 180.0;
    v10 = 0.0;
    goto LABEL_18;
  }

  if (v5)
  {
    videoRotationAngleForHorizonLevelCapture = 180.0;
  }

  else
  {
    videoRotationAngleForHorizonLevelCapture = 0.0;
  }

LABEL_24:
  v12 = FigCaptureFrontCameraRotationAngle();
  if (self->_devicePosition == 2 && (v12 == 270 || v12 == 90))
  {
    videoRotationAngleForHorizonLevelCapture = ((v12 + videoRotationAngleForHorizonLevelCapture) % 360);
  }

LABEL_28:
  v13 = self->_videoRotationAngleForHorizonLevelCapture;
  if (videoRotationAngleForHorizonLevelCapture != v13 || !self->_isInitialVideoRotationAngleForHorizonLevelCaptureSet)
  {
    if (dword_1EB3859B8)
    {
      v29 = 0;
      v28 = OS_LOG_TYPE_DEFAULT;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v15 = v29;
      if (os_log_type_enabled(v14, v28))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v22 = 136315650;
        v23 = "[AVCaptureDeviceRotationCoordinator _calculateVideoRotationAngleForHorizonLevelCaptureWithDeviceOrientation:]";
        v24 = 2114;
        selfCopy2 = self;
        v26 = 2048;
        v27 = videoRotationAngleForHorizonLevelCapture;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_isInitialVideoRotationAngleForHorizonLevelCaptureSet = 1;
    if (videoRotationAngleForHorizonLevelCapture != v13)
    {
      [(AVCaptureDeviceRotationCoordinator *)self willChangeValueForKey:@"videoRotationAngleForHorizonLevelCapture"];
      self->_videoRotationAngleForHorizonLevelCapture = videoRotationAngleForHorizonLevelCapture;
      [(AVCaptureDeviceRotationCoordinator *)self didChangeValueForKey:@"videoRotationAngleForHorizonLevelCapture"];
    }
  }

  if (self->_monitorSystemReferenceAngle && self->_previewLayerSystemReferenceAngleMode == 1)
  {
    [(AVCaptureDeviceRotationCoordinator *)self _updateVideoRotationAngleForHorizonLevelPreview];
  }
}

- (int64_t)_currentDeviceOrientation
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  state64 = 0;
  notify_get_state(self->_deviceOrientationNotificationToken, &state64);
  return state64;
}

- (void)_handleSystemReferenceAngleDidChangeNotification:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *getUISSystemReferenceAngleAffectedContextIDsKey(void)") description:{@"AVCaptureDeviceRotationCoordinator.m", 46, @"%s", dlerror()}];
  __break(1u);
}

@end