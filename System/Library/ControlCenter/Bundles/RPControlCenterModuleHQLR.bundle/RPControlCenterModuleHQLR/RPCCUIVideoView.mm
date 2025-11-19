@interface RPCCUIVideoView
+ (CGSize)defaultSize;
- (BOOL)enqueueSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (CGSize)intrinsicContentSize;
- (RPCCUIVideoView)init;
- (id)sampleBufferRenderer;
- (void)applyTransformForExternalCamera;
- (void)applyTransformForPortrait;
- (void)applyTransformWithOrientation;
- (void)applyTransformationForLandscapeLeft;
- (void)applyTransformationForLandscapeRight;
- (void)applyTransformationForPortraitUpsideDown;
- (void)flushVideoView;
- (void)updateIntrinsicContentSize:(CGSize)a3;
@end

@implementation RPCCUIVideoView

- (RPCCUIVideoView)init
{
  v9.receiver = self;
  v9.super_class = RPCCUIVideoView;
  v2 = [(RPCCUIVideoView *)&v9 init];
  v3 = v2;
  if (v2)
  {
    currentRotation = v2->_currentRotation;
    v2->_currentRotation = &off_31F90;

    v3->_mirrorType = 0;
    v3->_orientation = 0;
    portType = v3->_portType;
    v3->_portType = &stru_31A68;

    deviceType = v3->_deviceType;
    v3->_deviceType = &off_31F90;

    v3->_intrinsic = xmmword_24C70;
    [(RPCCUIVideoView *)v3 setClipsToBounds:1];
    v7 = [(RPCCUIVideoView *)v3 layer];
    [v7 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
  }

  return v3;
}

- (void)updateIntrinsicContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13.width = width;
    v13.height = height;
    v6 = NSStringFromCGSize(v13);
    v7 = 136446722;
    v8 = "[RPCCUIVideoView updateIntrinsicContentSize:]";
    v9 = 1024;
    v10 = 51;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d size=%@", &v7, 0x1Cu);
  }

  self->_intrinsic.width = width;
  self->_intrinsic.height = height;
  [(RPCCUIVideoView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsic.width;
  height = self->_intrinsic.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (CGSize)defaultSize
{
  v2 = 270.0;
  v3 = 160.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)sampleBufferRenderer
{
  v2 = [(RPCCUIVideoView *)self layer];
  v3 = [v2 sampleBufferRenderer];

  return v3;
}

- (void)flushVideoView
{
  v2 = [(RPCCUIVideoView *)self sampleBufferRenderer];
  [v2 flushWithRemovalOfDisplayedImage:1 completionHandler:0];
}

- (BOOL)enqueueSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v33 = a3;
  v5 = CMCopyDictionaryOfAttachments(kCFAllocatorDefault, a3, 1u);
  v6 = v5;
  if (!v5)
  {
    v11 = [(RPCCUIVideoView *)self currentInterfaceOrientation];
    v34 = 0;
    v12 = &stru_31A68;
    v10 = &off_31F90;
    v13 = &off_31F90;
    goto LABEL_18;
  }

  v7 = CFDictionaryGetValue(v5, @"MetadataDictionary");
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"RotationDegrees"];

    if (v9)
    {
      v10 = [v8 objectForKeyedSubscript:@"RotationDegrees"];
    }

    else
    {
      v10 = &off_31F90;
    }

    v14 = [v8 objectForKeyedSubscript:@"MirroredVertical"];

    if (v14)
    {
      v34 = 1;
    }

    else
    {
      v15 = [v8 objectForKeyedSubscript:@"MirroredHorizontal"];
      v16 = v15 != 0;

      v34 = 2 * v16;
    }

    v17 = [v8 objectForKeyedSubscript:@"PortType"];

    if (v17)
    {
      v12 = [v8 objectForKeyedSubscript:@"PortType"];
    }

    else
    {
      v12 = &stru_31A68;
    }

    v18 = [v8 objectForKeyedSubscript:@"DeviceType"];

    if (v18)
    {
      v13 = [v8 objectForKeyedSubscript:@"DeviceType"];
    }

    else
    {
      v13 = &off_31F90;
    }
  }

  else
  {
    v34 = 0;
    v12 = &stru_31A68;
    v13 = &off_31F90;
    v10 = &off_31F90;
  }

  v11 = [(RPCCUIVideoView *)self currentInterfaceOrientation];
  if (v10)
  {
LABEL_18:
    if (![(NSNumber *)self->_currentRotation isEqualToNumber:v10])
    {
      goto LABEL_23;
    }
  }

  if (v34 == self->_mirrorType && self->_orientation == v11 && [(__CFString *)v12 isEqualToString:self->_portType]&& v13 == self->_deviceType)
  {
    v29 = 0;
    if (!v6)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_23:
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v13;
    currentRotation = self->_currentRotation;
    v32 = v6;
    v21 = [NSNumber numberWithInteger:self->_orientation];
    v22 = [NSNumber numberWithInteger:v11];
    *buf = 136448258;
    *&buf[4] = "[RPCCUIVideoView enqueueSampleBuffer:]";
    *&buf[12] = 1024;
    *&buf[14] = 115;
    *&buf[18] = 2112;
    *&buf[20] = currentRotation;
    v13 = v19;
    *&buf[28] = 2112;
    *&buf[30] = v10;
    *&buf[38] = 1024;
    *&buf[40] = v34;
    *&buf[44] = 2112;
    *&buf[46] = v21;
    v38 = 2112;
    v39 = v22;
    v40 = 2112;
    v41 = v12;
    v42 = 2112;
    v43 = v19;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d currentRotation=%@ newRotation=%@ mirrorType=%d _orientation=%@ orientation=%@ portType=%@ deviceType=%@", buf, 0x54u);

    v6 = v32;
  }

  objc_storeStrong(&self->_currentRotation, v10);
  self->_mirrorType = v34;
  self->_orientation = v11;
  objc_storeStrong(&self->_portType, v12);
  objc_storeStrong(&self->_deviceType, v13);
  if ([(NSNumber *)v13 intValue]== 15 && [(__CFString *)v12 isEqualToString:@"PortTypeFront"])
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[RPCCUIVideoView enqueueSampleBuffer:]";
      *&buf[12] = 1024;
      *&buf[14] = 123;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d external camera", buf, 0x12u);
    }

    [(RPCCUIVideoView *)self applyTransformForExternalCamera];
  }

  else if ([(__CFString *)v12 containsString:@"PortTypeBack"])
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[RPCCUIVideoView enqueueSampleBuffer:]";
      *&buf[12] = 1024;
      *&buf[14] = 127;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d back camera", buf, 0x12u);
    }

    [(RPCCUIVideoView *)self applyTransformWithOrientation];
    if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FA8]|| [(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FC0])
    {
      v23 = [(RPCCUIVideoView *)self layer];
      v24 = v23;
      if (v23)
      {
        [v23 affineTransform];
      }

      else
      {
        memset(buf, 0, 48);
      }

      CGAffineTransformScale(&v36, buf, -1.0, 1.0);
      v25 = [(RPCCUIVideoView *)self layer];
      v26 = v25;
      *buf = *&v36.a;
      *&buf[16] = *&v36.c;
      v27 = *&v36.tx;
    }

    else
    {
      v28 = [(RPCCUIVideoView *)self layer];
      v24 = v28;
      if (v28)
      {
        [v28 affineTransform];
      }

      else
      {
        memset(buf, 0, 48);
      }

      CGAffineTransformScale(&v35, buf, 1.0, -1.0);
      v25 = [(RPCCUIVideoView *)self layer];
      v26 = v25;
      *buf = *&v35.a;
      *&buf[16] = *&v35.c;
      v27 = *&v35.tx;
    }

    *&buf[32] = v27;
    [v25 setAffineTransform:buf];
  }

  else
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[RPCCUIVideoView enqueueSampleBuffer:]";
      *&buf[12] = 1024;
      *&buf[14] = 135;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d front camera", buf, 0x12u);
    }

    [(RPCCUIVideoView *)self applyTransformWithOrientation];
  }

  v29 = 1;
  if (v6)
  {
LABEL_52:
    CFRelease(v6);
  }

LABEL_53:
  v30 = [(RPCCUIVideoView *)self sampleBufferRenderer];
  [v30 enqueueSampleBuffer:v33];

  return v29;
}

- (void)applyTransformForExternalCamera
{
  memset(&v26, 0, sizeof(v26));
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FA8])
  {
    v3 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v3;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, -1.57079633);
    mirrorType = self->_mirrorType;
    if (mirrorType == 2)
    {
      v25 = v26;
      CGAffineTransformScale(&v23, &v25, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v23.a;
      *&v25.c = *&v23.c;
      v7 = *&v23.tx;
    }

    else
    {
      v25 = v26;
      if (mirrorType == 1)
      {
        CGAffineTransformScale(&v24, &v25, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v24.a;
        *&v25.c = *&v24.c;
        v7 = *&v24.tx;
      }

      else
      {
        CGAffineTransformScale(&v22, &v25, -1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v22.a;
        *&v25.c = *&v22.c;
        v7 = *&v22.tx;
      }
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FD8])
  {
    v8 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v8;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, 3.14159265);
    v9 = self->_mirrorType;
    if (v9)
    {
      if (v9 != 2)
      {
        return;
      }

      v25 = v26;
      CGAffineTransformScale(&v21, &v25, 1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v21.a;
      *&v25.c = *&v21.c;
      v7 = *&v21.tx;
    }

    else
    {
      v25 = v26;
      CGAffineTransformScale(&v20, &v25, -1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v20.a;
      *&v25.c = *&v20.c;
      v7 = *&v20.tx;
    }
  }

  else
  {
    v10 = [(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FC0];
    v11 = *&CGAffineTransformIdentity.a;
    v12 = *&CGAffineTransformIdentity.c;
    if (v10)
    {
      *&v25.a = *&CGAffineTransformIdentity.a;
      *&v25.c = v12;
      *&v25.tx = *&CGAffineTransformIdentity.tx;
      CGAffineTransformRotate(&v26, &v25, 1.57079633);
      v13 = self->_mirrorType;
      if (v13 == 2)
      {
        v25 = v26;
        CGAffineTransformScale(&v18, &v25, -1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v18.a;
        *&v25.c = *&v18.c;
        v7 = *&v18.tx;
      }

      else
      {
        v25 = v26;
        if (v13 == 1)
        {
          CGAffineTransformScale(&v19, &v25, 1.0, 1.0);
          v5 = [(RPCCUIVideoView *)self layer];
          v6 = v5;
          *&v25.a = *&v19.a;
          *&v25.c = *&v19.c;
          v7 = *&v19.tx;
        }

        else
        {
          CGAffineTransformScale(&v17, &v25, -1.0, 1.0);
          v5 = [(RPCCUIVideoView *)self layer];
          v6 = v5;
          *&v25.a = *&v17.a;
          *&v25.c = *&v17.c;
          v7 = *&v17.tx;
        }
      }
    }

    else
    {
      *&v25.a = *&CGAffineTransformIdentity.a;
      *&v25.c = v12;
      *&v25.tx = *&CGAffineTransformIdentity.tx;
      CGAffineTransformRotate(&v26, &v25, 0.0);
      v14 = self->_mirrorType;
      if (v14)
      {
        if (v14 != 1)
        {
          return;
        }

        v25 = v26;
        CGAffineTransformScale(&v16, &v25, -1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v16.a;
        *&v25.c = *&v16.c;
        v7 = *&v16.tx;
      }

      else
      {
        v25 = v26;
        CGAffineTransformScale(&v15, &v25, -1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v15.a;
        *&v25.c = *&v15.c;
        v7 = *&v15.tx;
      }
    }
  }

  *&v25.tx = v7;
  [v5 setAffineTransform:&v25];
}

- (void)applyTransformWithOrientation
{
  orientation = self->_orientation;
  if (orientation <= 2)
  {
    if (orientation == 2)
    {
      [(RPCCUIVideoView *)self applyTransformationForPortraitUpsideDown];
      return;
    }

LABEL_7:
    [(RPCCUIVideoView *)self applyTransformForPortrait];
    return;
  }

  if (orientation != 3)
  {
    if (orientation == 4)
    {
      [(RPCCUIVideoView *)self applyTransformationForLandscapeRight];
      return;
    }

    goto LABEL_7;
  }

  [(RPCCUIVideoView *)self applyTransformationForLandscapeLeft];
}

- (void)applyTransformForPortrait
{
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FA8])
  {
    memset(&v25, 0, sizeof(v25));
    v3 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v3;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v24, 0.0);
    mirrorType = self->_mirrorType;
    if (mirrorType)
    {
      if (mirrorType != 1)
      {
        return;
      }

      v24 = v25;
      CGAffineTransformScale(&v23, &v24, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v23.a;
      *&v24.c = *&v23.c;
      v7 = *&v23.tx;
    }

    else
    {
      v24 = v25;
      CGAffineTransformScale(&v22, &v24, -1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v22.a;
      *&v24.c = *&v22.c;
      v7 = *&v22.tx;
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FD8])
  {
    memset(&v25, 0, sizeof(v25));
    v8 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v8;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v24, -1.57079633);
    v9 = self->_mirrorType;
    if (v9 == 2)
    {
      v24 = v25;
      CGAffineTransformScale(&v20, &v24, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v20.a;
      *&v24.c = *&v20.c;
      v7 = *&v20.tx;
    }

    else
    {
      v24 = v25;
      if (v9 == 1)
      {
        CGAffineTransformScale(&v21, &v24, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v24.a = *&v21.a;
        *&v24.c = *&v21.c;
        v7 = *&v21.tx;
      }

      else
      {
        CGAffineTransformScale(&v19, &v24, 1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v24.a = *&v19.a;
        *&v24.c = *&v19.c;
        v7 = *&v19.tx;
      }
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FC0])
  {
    memset(&v25, 0, sizeof(v25));
    v10 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v10;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v24, 0.0);
    v11 = self->_mirrorType;
    if (v11)
    {
      if (v11 != 2)
      {
        return;
      }

      v24 = v25;
      CGAffineTransformScale(&v18, &v24, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v18.a;
      *&v24.c = *&v18.c;
      v7 = *&v18.tx;
    }

    else
    {
      v24 = v25;
      CGAffineTransformScale(&v17, &v24, 1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v17.a;
      *&v24.c = *&v17.c;
      v7 = *&v17.tx;
    }
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    v12 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v12;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v24, 1.57079633);
    v13 = self->_mirrorType;
    if (v13 == 2)
    {
      v24 = v25;
      CGAffineTransformScale(&v15, &v24, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v15.a;
      *&v24.c = *&v15.c;
      v7 = *&v15.tx;
    }

    else
    {
      v24 = v25;
      if (v13 == 1)
      {
        CGAffineTransformScale(&v16, &v24, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v24.a = *&v16.a;
        *&v24.c = *&v16.c;
        v7 = *&v16.tx;
      }

      else
      {
        CGAffineTransformScale(&v14, &v24, 1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v24.a = *&v14.a;
        *&v24.c = *&v14.c;
        v7 = *&v14.tx;
      }
    }
  }

  *&v24.tx = v7;
  [v5 setAffineTransform:&v24];
}

- (void)applyTransformationForLandscapeRight
{
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FA8])
  {
    memset(&v26, 0, sizeof(v26));
    v3 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v3;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, -1.57079633);
    mirrorType = self->_mirrorType;
    if (mirrorType == 2)
    {
      v25 = v26;
      CGAffineTransformScale(&v23, &v25, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v23.a;
      *&v25.c = *&v23.c;
      v7 = *&v23.tx;
    }

    else
    {
      v25 = v26;
      if (mirrorType == 1)
      {
        CGAffineTransformScale(&v24, &v25, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v24.a;
        *&v25.c = *&v24.c;
        v7 = *&v24.tx;
      }

      else
      {
        CGAffineTransformScale(&v22, &v25, 1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v22.a;
        *&v25.c = *&v22.c;
        v7 = *&v22.tx;
      }
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FD8])
  {
    memset(&v26, 0, sizeof(v26));
    v8 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v8;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, -3.14159265);
    v9 = self->_mirrorType;
    if (v9)
    {
      v25 = v26;
      if (v9 == 2)
      {
        CGAffineTransformScale(&v21, &v25, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v21.a;
        *&v25.c = *&v21.c;
        v7 = *&v21.tx;
      }

      else
      {
        CGAffineTransformScale(&v19, &v25, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v19.a;
        *&v25.c = *&v19.c;
        v7 = *&v19.tx;
      }
    }

    else
    {
      v25 = v26;
      CGAffineTransformScale(&v20, &v25, -1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v20.a;
      *&v25.c = *&v20.c;
      v7 = *&v20.tx;
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FC0])
  {
    memset(&v26, 0, sizeof(v26));
    v10 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v10;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, 1.57079633);
    v11 = self->_mirrorType;
    if (v11 == 2)
    {
      v25 = v26;
      CGAffineTransformScale(&v17, &v25, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v17.a;
      *&v25.c = *&v17.c;
      v7 = *&v17.tx;
    }

    else
    {
      v25 = v26;
      if (v11 == 1)
      {
        CGAffineTransformScale(&v18, &v25, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v18.a;
        *&v25.c = *&v18.c;
        v7 = *&v18.tx;
      }

      else
      {
        CGAffineTransformScale(&v16, &v25, 1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v16.a;
        *&v25.c = *&v16.c;
        v7 = *&v16.tx;
      }
    }
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
    v12 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v12;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, 0.0);
    v13 = self->_mirrorType;
    if (v13)
    {
      if (v13 != 1)
      {
        return;
      }

      v25 = v26;
      CGAffineTransformScale(&v15, &v25, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v15.a;
      *&v25.c = *&v15.c;
      v7 = *&v15.tx;
    }

    else
    {
      v25 = v26;
      CGAffineTransformScale(&v14, &v25, -1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v14.a;
      *&v25.c = *&v14.c;
      v7 = *&v14.tx;
    }
  }

  *&v25.tx = v7;
  [v5 setAffineTransform:&v25];
}

- (void)applyTransformationForPortraitUpsideDown
{
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FA8])
  {
    memset(&v25, 0, sizeof(v25));
    v3 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v3;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v24, -3.14159265);
    mirrorType = self->_mirrorType;
    if (mirrorType)
    {
      if (mirrorType != 2)
      {
        return;
      }

      v24 = v25;
      CGAffineTransformScale(&v23, &v24, 1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v23.a;
      *&v24.c = *&v23.c;
      v7 = *&v23.tx;
    }

    else
    {
      v24 = v25;
      CGAffineTransformScale(&v22, &v24, -1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v22.a;
      *&v24.c = *&v22.c;
      v7 = *&v22.tx;
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FD8])
  {
    memset(&v25, 0, sizeof(v25));
    v8 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v8;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v24, 1.57079633);
    v9 = self->_mirrorType;
    if (v9 == 2)
    {
      v24 = v25;
      CGAffineTransformScale(&v20, &v24, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v20.a;
      *&v24.c = *&v20.c;
      v7 = *&v20.tx;
    }

    else
    {
      v24 = v25;
      if (v9 == 1)
      {
        CGAffineTransformScale(&v21, &v24, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v24.a = *&v21.a;
        *&v24.c = *&v21.c;
        v7 = *&v21.tx;
      }

      else
      {
        CGAffineTransformScale(&v19, &v24, 1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v24.a = *&v19.a;
        *&v24.c = *&v19.c;
        v7 = *&v19.tx;
      }
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FC0])
  {
    memset(&v25, 0, sizeof(v25));
    v10 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v10;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v24, 0.0);
    v11 = self->_mirrorType;
    if (v11)
    {
      if (v11 != 1)
      {
        return;
      }

      v24 = v25;
      CGAffineTransformScale(&v18, &v24, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v18.a;
      *&v24.c = *&v18.c;
      v7 = *&v18.tx;
    }

    else
    {
      v24 = v25;
      CGAffineTransformScale(&v17, &v24, -1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v17.a;
      *&v24.c = *&v17.c;
      v7 = *&v17.tx;
    }
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
    v12 = *&CGAffineTransformIdentity.c;
    *&v24.a = *&CGAffineTransformIdentity.a;
    *&v24.c = v12;
    *&v24.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v25, &v24, -1.57079633);
    v13 = self->_mirrorType;
    if (v13 == 2)
    {
      v24 = v25;
      CGAffineTransformScale(&v15, &v24, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v24.a = *&v15.a;
      *&v24.c = *&v15.c;
      v7 = *&v15.tx;
    }

    else
    {
      v24 = v25;
      if (v13 == 1)
      {
        CGAffineTransformScale(&v16, &v24, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v24.a = *&v16.a;
        *&v24.c = *&v16.c;
        v7 = *&v16.tx;
      }

      else
      {
        CGAffineTransformScale(&v14, &v24, 1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v24.a = *&v14.a;
        *&v24.c = *&v14.c;
        v7 = *&v14.tx;
      }
    }
  }

  *&v24.tx = v7;
  [v5 setAffineTransform:&v24];
}

- (void)applyTransformationForLandscapeLeft
{
  if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FA8])
  {
    memset(&v26, 0, sizeof(v26));
    v3 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v3;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, 1.57079633);
    mirrorType = self->_mirrorType;
    if (mirrorType == 2)
    {
      v25 = v26;
      CGAffineTransformScale(&v23, &v25, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v23.a;
      *&v25.c = *&v23.c;
      v7 = *&v23.tx;
    }

    else
    {
      v25 = v26;
      if (mirrorType == 1)
      {
        CGAffineTransformScale(&v24, &v25, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v24.a;
        *&v25.c = *&v24.c;
        v7 = *&v24.tx;
      }

      else
      {
        CGAffineTransformScale(&v22, &v25, 1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v22.a;
        *&v25.c = *&v22.c;
        v7 = *&v22.tx;
      }
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FD8])
  {
    memset(&v26, 0, sizeof(v26));
    v8 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v8;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, 0.0);
    v9 = self->_mirrorType;
    if (v9 == 2)
    {
      v25 = v26;
      CGAffineTransformScale(&v20, &v25, 1.0, 1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v20.a;
      *&v25.c = *&v20.c;
      v7 = *&v20.tx;
    }

    else
    {
      v25 = v26;
      if (v9 == 1)
      {
        CGAffineTransformScale(&v21, &v25, -1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v21.a;
        *&v25.c = *&v21.c;
        v7 = *&v21.tx;
      }

      else
      {
        CGAffineTransformScale(&v19, &v25, -1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v19.a;
        *&v25.c = *&v19.c;
        v7 = *&v19.tx;
      }
    }
  }

  else if ([(NSNumber *)self->_currentRotation isEqualToNumber:&off_31FC0])
  {
    memset(&v26, 0, sizeof(v26));
    v10 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v10;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, -1.57079633);
    v11 = self->_mirrorType;
    if (v11 == 2)
    {
      v25 = v26;
      CGAffineTransformScale(&v17, &v25, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v17.a;
      *&v25.c = *&v17.c;
      v7 = *&v17.tx;
    }

    else
    {
      v25 = v26;
      if (v11 == 1)
      {
        CGAffineTransformScale(&v18, &v25, 1.0, 1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v18.a;
        *&v25.c = *&v18.c;
        v7 = *&v18.tx;
      }

      else
      {
        CGAffineTransformScale(&v16, &v25, 1.0, -1.0);
        v5 = [(RPCCUIVideoView *)self layer];
        v6 = v5;
        *&v25.a = *&v16.a;
        *&v25.c = *&v16.c;
        v7 = *&v16.tx;
      }
    }
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
    v12 = *&CGAffineTransformIdentity.c;
    *&v25.a = *&CGAffineTransformIdentity.a;
    *&v25.c = v12;
    *&v25.tx = *&CGAffineTransformIdentity.tx;
    CGAffineTransformRotate(&v26, &v25, 0.0);
    v13 = self->_mirrorType;
    if (v13)
    {
      if (v13 != 2)
      {
        return;
      }

      v25 = v26;
      CGAffineTransformScale(&v15, &v25, -1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v15.a;
      *&v25.c = *&v15.c;
      v7 = *&v15.tx;
    }

    else
    {
      v25 = v26;
      CGAffineTransformScale(&v14, &v25, 1.0, -1.0);
      v5 = [(RPCCUIVideoView *)self layer];
      v6 = v5;
      *&v25.a = *&v14.a;
      *&v25.c = *&v14.c;
      v7 = *&v14.tx;
    }
  }

  *&v25.tx = v7;
  [v5 setAffineTransform:&v25];
}

@end