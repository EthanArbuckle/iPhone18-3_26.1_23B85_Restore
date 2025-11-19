@interface ARSession
- (BOOL)isVIORunning;
- (BOOL)isVLFRunning;
- (void)updateCameraFocusLensPosition:(float)a3;
@end

@implementation ARSession

- (void)updateCameraFocusLensPosition:(float)a3
{
  v5 = [(ARSession *)self configuration];
  v6 = [v5 isAutoFocusEnabled];

  v7 = sub_100CE7EE8();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if ((v6 & 1) == 0)
  {
    if (v8)
    {
      *buf = 134349056;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Auto focus is disabled; will try to manually set lens position", buf, 0xCu);
    }

    v7 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:1];
    if ([v7 isLockingFocusWithCustomLensPositionSupported])
    {
      [v7 lensPosition];
      v10 = vabds_f32(a3, v9);
      v11 = sub_100CE7EE8();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v10 >= 2.2204e-16)
      {
        if (v12)
        {
          *buf = 134349312;
          v22 = self;
          v23 = 2048;
          v24 = a3;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Will lock lens position with value: %f", buf, 0x16u);
        }

        v20 = 0;
        v16 = [v7 lockForConfiguration:&v20];
        v11 = v20;
        v17 = sub_100CE7EE8();
        v18 = v17;
        if (v16)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            v22 = self;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Successfully locked camera", buf, 0xCu);
          }

          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100CE7F3C;
          v19[3] = &unk_101650C00;
          v19[4] = self;
          [v7 setFocusModeLockedWithLensPosition:v19 completionHandler:COERCE_DOUBLE(LODWORD(a3))];
          [v7 unlockForConfiguration];
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349314;
            v22 = self;
            v23 = 2112;
            v24 = *&v11;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%{public}p] Could not lock camera: %@", buf, 0x16u);
          }
        }

        goto LABEL_22;
      }

      if (v12)
      {
        *buf = 134349312;
        v22 = self;
        v23 = 2048;
        v24 = a3;
        v13 = "[%{public}p] Lens position is already %f; will not update";
        v14 = v11;
        v15 = 22;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
      }
    }

    else
    {
      v11 = sub_100CE7EE8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v22 = self;
        v13 = "[%{public}p] Locking focus with custom lens position is not supported on the current device";
        v14 = v11;
        v15 = 12;
        goto LABEL_12;
      }
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v8)
  {
    *buf = 134349056;
    v22 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Auto focus is enabled; will NOT manually set lens position", buf, 0xCu);
  }

LABEL_23:
}

- (BOOL)isVLFRunning
{
  if (![(ARSession *)self state])
  {
    v3 = [(ARSession *)self technique];
    v4 = [v3 vioThrottled];

    if (!v4)
    {
      return 0;
    }
  }

  v5 = [(ARSession *)self configuration];
  v6 = [v5 isVLF];

  return v6;
}

- (BOOL)isVIORunning
{
  if (![(ARSession *)self state])
  {
    v3 = [(ARSession *)self technique];
    v4 = [v3 vioThrottled];

    if (!v4)
    {
      return 0;
    }
  }

  v5 = [(ARSession *)self configuration];
  v6 = [v5 isVIO];

  return v6;
}

@end