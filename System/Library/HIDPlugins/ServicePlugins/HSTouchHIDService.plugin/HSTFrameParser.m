@interface HSTFrameParser
- (BOOL)_handleContactFrame:(id)a3;
- (BOOL)_handleDriverExternalMessageFrame:(id)a3;
- (BOOL)_handleDriverNotificationFrame:(id)a3;
- (BOOL)_handleFirmwareEventFrame:(id)a3;
- (BOOL)_handlePointerFrame:(id)a3;
- (BOOL)_handleTimestampSyncFrame:(id)a3;
- (BOOL)handleHSDecode:(void *)a3;
- (BOOL)handleHSEncode:(void *)a3;
- (BOOL)unpackFrame29Contact:(UnpackedContact *)a3 fromData:(id)a4 withByteOffset:(unsigned __int8)a5;
- (BOOL)unpackFrame29Header:(UnpackedHeader *)a3 fromData:(id)a4;
- (BOOL)unpackFrame31Contact:(UnpackedContact *)a3 fromData:(id)a4 withByteOffset:(unsigned __int8)a5;
- (BOOL)unpackFrame31Header:(UnpackedHeader *)a3 fromData:(id)a4;
- (HSTFrameParser)initWithConfig:(const Config *)a3;
- (id)contactFrameFromData:(id)a3;
- (id)parseContactFrame29:(id)a3;
- (id)parseContactFrame31:(id)a3;
- (id)parseContactFrame44:(id)a3;
- (id)parseContactFrame75:(id)a3;
- (id)parseRelativePointerFrame82:(id)a3;
- (id)pointerFrameFromData:(id)a3;
- (unsigned)_driverToHSTNotification:(const DriverNotificationHeader *)a3;
- (unsigned)_driverToHSTNotificationWithContext:(const DriverNotification *)a3;
- (unsigned)_driverUserSpaceToHSTNotification:(const DriverNotification *)a3;
- (unsigned)_firmwareToHSTNotification:(unsigned __int8)a3;
- (unsigned)majorRadiusFromCode:(unsigned __int8)a3;
- (unsigned)minorRadiusFromCode:(unsigned __int8)a3;
- (unsigned)zforceFromCode:(unsigned __int8)a3;
- (unsigned)zsignalFromCode:(unsigned __int8)a3;
- (void)_handleDebugStateEvent:(id)a3;
- (void)_handleFrame:(id)a3;
- (void)_handleResetEvent:(id)a3;
- (void)handleConsume:(id)a3;
- (void)sanitizeContactFrame:(id)a3;
@end

@implementation HSTFrameParser

- (HSTFrameParser)initWithConfig:(const Config *)a3
{
  v9.receiver = self;
  v9.super_class = HSTFrameParser;
  v4 = [(HSStage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    sensorSize = a3->sensorSize;
    v4->_config.surfaceCoordinates = a3->surfaceCoordinates;
    v4->_config.sensorSize = sensorSize;
    v4->_lastFWTimestamp = 0;
    v4->_lastFrameNumber = 0;
    v4->_duplicateContactCount = 0;
    v7 = v4;
  }

  return v5;
}

- (id)parseContactFrame29:(id)a3
{
  v6 = a3;
  v24 = v6;
  if (!v6)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  *(v27 + 7) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = 0xAAAAAAAAAAAAAAAALL;
  if (![(HSTFrameParser *)self unpackFrame29Header:v27 fromData:v6])
  {
    v20 = 0;
    goto LABEL_20;
  }

  v7 = objc_opt_new();
  *(v7 + 24) = self->_lastFrameNumber + 1;
  objc_storeStrong((v7 + 8), a3);
  *(v7 + 32) = 1000 * *(v27 + 6);
  v8 = (self->_config.surfaceCoordinates.right - self->_config.surfaceCoordinates.left) | ((self->_config.surfaceCoordinates.top - self->_config.surfaceCoordinates.bottom) << 32);
  if ((*(v7 + 80) & 1) == 0)
  {
    *(v7 + 80) = 1;
  }

  *(v7 + 72) = v8;
  v9 = BYTE5(v27[0]);
  if ((*(v7 + 128) & 1) == 0)
  {
    *(v7 + 128) = 1;
  }

  *(v7 + 124) = v9;
  std::vector<HSTPipeline::Contact>::resize((v7 + 48), BYTE6(v27[1]));
  if (*(v7 + 56) == *(v7 + 48))
  {
LABEL_14:
    v20 = v7;
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    *v25 = 0xAAAAAAAAAAAAAAAALL;
    *v26 = 0xAAAAAAAAAAAAAAAALL;
    if ([(HSTFrameParser *)self unpackFrame29Contact:v25 fromData:v6 withByteOffset:(8 * v11) & 0xF8 | 6u])
    {
      break;
    }

LABEL_13:
    ++v11;
    v10 += 64;
    if (v11 >= (*(v7 + 56) - *(v7 + 48)) >> 6)
    {
      goto LABEL_14;
    }
  }

  if (LOBYTE(v26[1]) < 0x20u)
  {
    v13 = (*(v7 + 48) + v10);
    v13->i8[0] = v26[1];
    v13->i8[1] = v26[3];
    v13->i8[2] = HIBYTE(v26[2]);
    v13->i8[3] = 1;
    v13[2] = ((10 * v25[0] - self->_config.surfaceCoordinates.left) | ((10 * v25[1] - self->_config.surfaceCoordinates.bottom) << 32));
    v13[3].i8[0] = 1;
    v14 = v25[2];
    v15 = v25[3];
    v16 = 10 * v25[3];
    v13[5].i32[0] = 10 * v25[2];
    v13[5].i32[1] = v16;
    LOWORD(v12) = *(&v26[1] + 1);
    v17 = v26[0];
    v18.f64[0] = v12 * 3.14159265;
    v18.f64[1] = v26[0];
    v13[6] = vcvt_f32_f64(vmulq_f64(v18, xmmword_D8450));
    v19 = vcvtd_n_f64_s32(contactDensityFromRadii(v17, v14, v15, 620, 440), 8uLL);
    v13[7].f32[0] = v19;
    v13[1] = 0;
    v6 = v24;
    goto LABEL_13;
  }

  v21 = MTLoggingPlugin();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "";
    v30 = 2080;
    v31 = "";
    v32 = 2080;
    v33 = "[HSTFrameParser parseContactFrame29:]";
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Exceeded max contact count", buf, 0x20u);
  }

  v20 = 0;
LABEL_19:

LABEL_20:

  return v20;
}

- (id)parseContactFrame31:(id)a3
{
  v6 = a3;
  v24 = v6;
  if (!v6)
  {
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  memset(v26, 170, 12);
  if (![(HSTFrameParser *)self unpackFrame31Header:v26 fromData:v6])
  {
    v20 = 0;
    goto LABEL_20;
  }

  v7 = objc_opt_new();
  *(v7 + 24) = self->_lastFrameNumber + 1;
  objc_storeStrong((v7 + 8), a3);
  *(v7 + 44) |= BYTE2(v26[0]);
  *(v7 + 32) = 1000 * *(v26 + 3);
  v8 = (self->_config.surfaceCoordinates.right - self->_config.surfaceCoordinates.left) | ((self->_config.surfaceCoordinates.top - self->_config.surfaceCoordinates.bottom) << 32);
  if ((*(v7 + 80) & 1) == 0)
  {
    *(v7 + 80) = 1;
  }

  *(v7 + 72) = v8;
  v9 = BYTE1(v26[0]);
  if ((*(v7 + 128) & 1) == 0)
  {
    *(v7 + 128) = 1;
  }

  *(v7 + 124) = v9;
  std::vector<HSTPipeline::Contact>::resize((v7 + 48), BYTE3(v26[1]));
  if (*(v7 + 56) == *(v7 + 48))
  {
LABEL_14:
    v20 = v7;
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    memset(v25, 170, 18);
    if ([(HSTFrameParser *)self unpackFrame31Contact:v25 fromData:v6 withByteOffset:(9 * v11 + 4)])
    {
      break;
    }

LABEL_13:
    ++v11;
    v10 += 64;
    if (v11 >= (*(v7 + 56) - *(v7 + 48)) >> 6)
    {
      goto LABEL_14;
    }
  }

  if (LOBYTE(v25[5]) < 0x20u)
  {
    v13 = (*(v7 + 48) + v10);
    v13->i8[0] = v25[5];
    v13->i8[1] = v25[7];
    v13->i8[2] = HIBYTE(v25[6]);
    v13->i8[3] = 1;
    v13[2] = ((10 * v25[0] - self->_config.surfaceCoordinates.left) | ((10 * v25[1] - self->_config.surfaceCoordinates.bottom) << 32));
    v13[3].i8[0] = 1;
    v14 = v25[2];
    v15 = v25[3];
    v16 = 10 * v25[3];
    v13[5].i32[0] = 10 * v25[2];
    v13[5].i32[1] = v16;
    LOWORD(v12) = *(&v25[5] + 1);
    v17 = v25[4];
    v18.f64[0] = v12 * 3.14159265;
    v18.f64[1] = v25[4];
    v13[6] = vcvt_f32_f64(vmulq_f64(v18, xmmword_D8450));
    v19 = vcvtd_n_f64_s32(contactDensityFromRadii(v17, v14, v15, 600, 430), 8uLL);
    v13[7].f32[0] = v19;
    v13[4].i32[1] = v25[8];
    v13[1] = 0;
    v6 = v24;
    goto LABEL_13;
  }

  v21 = MTLoggingPlugin();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "";
    v29 = 2080;
    v30 = "";
    v31 = 2080;
    v32 = "[HSTFrameParser parseContactFrame31:]";
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Exceeded max contact count", buf, 0x20u);
  }

  v20 = 0;
LABEL_19:

LABEL_20:

  return v20;
}

- (id)parseContactFrame44:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v7 = [v6 bytes];
  v8 = [v6 length];
  if (v8 < 0x12 || (*v7 & 0xFE) != 0x44)
  {
    goto LABEL_26;
  }

  v9 = *(v7 + 2);
  if (v8 < v9)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame44:];
    }

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  if (*(v7 + 16) >= 0x21uLL)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame44:];
    }

    goto LABEL_26;
  }

  if (*(v7 + 17) <= 0x13uLL)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame44:];
    }

    goto LABEL_26;
  }

  v10 = v7[7];
  if (v8 != (v10 + v9 + *(v7 + 17) * *(v7 + 16)))
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame44:];
    }

    goto LABEL_26;
  }

  if (v7[7] && v10 != 2 * self->_config.sensorSize.height * self->_config.sensorSize.width)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame44:];
    }

    goto LABEL_26;
  }

  *(__dst + 3) = 0;
  __dst[0] = 0;
  memcpy(__dst, v7 + 9, v9 - 18);
  v11 = objc_opt_new();
  objc_storeStrong((v11 + 8), a3);
  *(v11 + 24) = *(v7 + 1);
  *(v11 + 32) = 1000 * *(v7 + 1);
  *(v11 + 40) = HIWORD(__dst[0]);
  std::vector<HSTPipeline::Contact>::resize((v11 + 48), *(v7 + 16));
  if (*(v7 + 16))
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(v7 + 17);
      v15 = v7 + *(v7 + 2) + v7[7] + v13 * v14;
      v16 = *v15;
      if (v16 > 0x1F)
      {
        break;
      }

      LOWORD(__b[1]) = 0;
      __b[0] = 0;
      memcpy(__b, v15 + 20, v14 - 20);
      v17 = *(v11 + 48) + v12;
      *v17 = v16;
      *(v17 + 1) = v15[1];
      *(v17 + 2) = *(v15 + 1);
      *(v17 + 8) = LOWORD(__b[1]);
      *(v17 + 16) = (10 * *(v15 + 2) - self->_config.surfaceCoordinates.left) | ((10 * *(v15 + 3) - self->_config.surfaceCoordinates.bottom) << 32);
      *(v17 + 28) = (0x7D00000000 * *(v15 + 5)) | (125 * *(v15 + 4));
      *(v17 + 36) = HIWORD(__b[0]);
      *(v17 + 40) = 10 * *(v15 + 6);
      *(v17 + 44) = 10 * *(v15 + 7);
      v18.f64[0] = *(v15 + 8) * 3.14159265;
      LOWORD(v19) = *(v15 + 9);
      v18.f64[1] = v19;
      *(v17 + 48) = vcvt_f32_f64(vmulq_f64(v18, xmmword_D8450));
      *v18.f64 = vcvtd_n_f64_u32(LOWORD(__b[0]), 8uLL);
      *(v17 + 56) = LODWORD(v18.f64[0]);
      ++v13;
      v12 += 64;
      if (v13 >= *(v7 + 16))
      {
        goto LABEL_30;
      }
    }

    v20 = 0;
  }

  else
  {
LABEL_30:
    v22 = (self->_config.surfaceCoordinates.right - self->_config.surfaceCoordinates.left) | ((self->_config.surfaceCoordinates.top - self->_config.surfaceCoordinates.bottom) << 32);
    if ((*(v11 + 80) & 1) == 0)
    {
      *(v11 + 80) = 1;
    }

    *(v11 + 72) = v22;
    if (v7[7])
    {
      v23 = *(v7 + 2);
      v24 = *(v11 + 104);
      *(v11 + 88) = self->_config.sensorSize;
      *(v11 + 96) = v23;
      if ((v24 & 1) == 0)
      {
        *(v11 + 104) = 1;
      }
    }

    v20 = v11;
  }

LABEL_27:

  return v20;
}

- (id)parseContactFrame75:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v31 = +[NSAssertionHandler currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v7 = [v6 bytes];
  v8 = [v6 length];
  v9 = v8;
  if (v8 < 0x20 || *v7 != 117)
  {
    goto LABEL_26;
  }

  v10 = *(v7 + 2);
  if (v8 < v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame75:];
    }

LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  v11 = *(v7 + 22);
  if (v11 >= 0x21)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame75:];
    }

    goto LABEL_26;
  }

  v12 = 30 * v11;
  if (v12 != v7[8])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame75:];
    }

    v10 = *(v7 + 2);
    v12 = 30 * *(v7 + 22);
  }

  v13 = (v7 + 7);
  v14 = v10 + v7[7];
  v15 = v7[9];
  if (v9 != (v14 + v15 + v7[10] + v12))
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame75:];
    }

    goto LABEL_26;
  }

  if (v7[9] && (v7[5] & 0x40) == 0 && v15 != 2 * self->_config.sensorSize.height * self->_config.sensorSize.width)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser parseContactFrame75:];
    }

    goto LABEL_26;
  }

  v16 = objc_opt_new();
  objc_storeStrong((v16 + 8), a3);
  *(v16 + 24) = *(v7 + 1);
  *(v16 + 32) = 1000 * *(v7 + 1);
  *(v16 + 40) = *(v7 + 6);
  *(v16 + 44) = v7[6];
  std::vector<HSTPipeline::Contact>::resize((v16 + 48), *(v7 + 22));
  if (*(v7 + 22))
  {
    v19 = 0;
    v20 = 0;
    while (1)
    {
      v21 = &v13[*(v7 + 2) + v7[7]];
      v22 = *(v21 - 14);
      if (v22 > 0x1F)
      {
        break;
      }

      v23 = *(v16 + 48) + v19;
      *v23 = v22;
      *(v23 + 1) = *(v21 - 13);
      *(v23 + 2) = *(v21 - 6);
      *(v23 + 8) = *(v21 + 7);
      *(v23 + 16) = (10 * *(v21 - 5) - self->_config.surfaceCoordinates.left) | ((10 * *(v21 - 4) - self->_config.surfaceCoordinates.bottom) << 32);
      *(v23 + 28) = (0x7D00000000 * *(v21 - 2)) | (125 * *(v21 - 3));
      *(v23 + 36) = *(v21 + 6);
      *(v23 + 40) = 10 * *(v21 - 1);
      *(v23 + 44) = 10 * *v21;
      v24.f64[0] = *(v21 + 1) * 3.14159265;
      LOWORD(v17.f64[0]) = *(v21 + 2);
      LOWORD(v18.f64[0]) = *(v21 + 3);
      v18.f64[0] = *&v18.f64[0];
      v24.f64[1] = *&v17.f64[0];
      v18.f64[1] = *(v21 + 5) * 3.14159265;
      v17 = vmulq_f64(v18, xmmword_D8460);
      *(v23 + 48) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(v24, xmmword_D8450)), v17);
      ++v20;
      v13 += 30;
      v19 += 64;
      if (v20 >= *(v7 + 22))
      {
        goto LABEL_30;
      }
    }

    v25 = 0;
  }

  else
  {
LABEL_30:
    v27 = (self->_config.surfaceCoordinates.right - self->_config.surfaceCoordinates.left) | ((self->_config.surfaceCoordinates.top - self->_config.surfaceCoordinates.bottom) << 32);
    if ((*(v16 + 80) & 1) == 0)
    {
      *(v16 + 80) = 1;
    }

    *(v16 + 72) = v27;
    if (v7[9])
    {
      v28 = *(v7 + 2);
      v29 = *(v16 + 104);
      *(v16 + 88) = self->_config.sensorSize;
      *(v16 + 96) = v28;
      if ((v29 & 1) == 0)
      {
        *(v16 + 104) = 1;
      }
    }

    v30 = *(v7 + 23);
    if ((*(v16 + 128) & 1) == 0)
    {
      *(v16 + 128) = 1;
    }

    *(v16 + 124) = v30;
    v25 = v16;
  }

LABEL_27:

  return v25;
}

- (id)parseRelativePointerFrame82:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v6 = [v5 bytes];
  if ([v5 length] >= 0x20 && *v6 == 130)
  {
    v7 = objc_opt_new();
    v8 = v7;
    *(v7 + 24) = *(v6 + 1);
    if (!*(v7 + 24))
    {
      *(v7 + 24) = 400;
    }

    *(v7 + 32) = *(v6 + 1);
    v9 = *(v6 + 3);
    *(v7 + 36) = *(v6 + 2);
    *(v7 + 40) = v9;
    v10 = *(v6 + 5);
    *(v7 + 52) = *(v6 + 4);
    *(v7 + 48) = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contactFrameFromData:(id)a3
{
  v4 = a3;
  v5 = [(HSTFrameParser *)self parseContactFrame29:v4];
  if (!v5)
  {
    v5 = [(HSTFrameParser *)self parseContactFrame31:v4];
    if (!v5)
    {
      v5 = [(HSTFrameParser *)self parseContactFrame44:v4];
      if (!v5)
      {
        v5 = [(HSTFrameParser *)self parseContactFrame75:v4];
      }
    }
  }

  return v5;
}

- (id)pointerFrameFromData:(id)a3
{
  v3 = [(HSTFrameParser *)self parseRelativePointerFrame82:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)sanitizeContactFrame:(id)a3
{
  v4 = a3;
  v5 = v4;
  v49 = v4;
  if (v4)
  {
    memset(__src, 0, 24);
    v6 = v4[6];
    v7 = v4[7];
    if (v6 != v7)
    {
      v8 = 0;
      v48 = "bitset test argument out of range";
      while (1)
      {
        v9 = *v6;
        if (v9 >= 0x20)
        {
          goto LABEL_62;
        }

        if ((v8 >> v9))
        {
          v10 = MTLoggingPlugin();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v29 = *v6;
            *buf = 67109120;
            v52 = v29;
            _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Contact %u was duplicated, removing extra contact", buf, 8u);
          }

          ++self->_duplicateContactCount;
        }

        else
        {
          v11 = __src[1];
          if (__src[1] >= __src[2])
          {
            v16 = __src[0];
            v17 = __src[1] - __src[0];
            v18 = (__src[1] - __src[0]) >> 6;
            v19 = v18 + 1;
            if ((v18 + 1) >> 58)
            {
              std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
            }

            v20 = __src[2] - __src[0];
            if ((__src[2] - __src[0]) >> 5 > v19)
            {
              v19 = v20 >> 5;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFC0)
            {
              v19 = 0x3FFFFFFFFFFFFFFLL;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>(__src, v19);
            }

            v21 = (v18 << 6);
            v22 = *v6;
            v23 = *(v6 + 1);
            v24 = *(v6 + 3);
            v21[2] = *(v6 + 2);
            v21[3] = v24;
            *v21 = v22;
            v21[1] = v23;
            v15 = ((v18 << 6) + 64);
            memcpy(0, v16, v17);
            v25 = __src[0];
            __src[0] = 0;
            __src[1] = v15;
            __src[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            v12 = *v6;
            v13 = *(v6 + 1);
            v14 = *(v6 + 3);
            *(__src[1] + 2) = *(v6 + 2);
            v11[3] = v14;
            *v11 = v12;
            v11[1] = v13;
            v15 = v11 + 4;
          }

          __src[1] = v15;
          v26 = *v6;
          if (v26 > 0x1F)
          {
            v48 = "bitset set argument out of range";
LABEL_62:
            std::__throw_out_of_range[abi:ne200100](v48);
          }

          v27 = 1 << v26;
          if (v6[1] - 1 > 3)
          {
            v28 = self->_inRangeContacts.__first_ & ~v27;
          }

          else
          {
            v28 = self->_inRangeContacts.__first_ | v27;
          }

          self->_inRangeContacts.__first_ = v28;
          v8 |= v27;
        }

        v6 += 64;
        if (v6 == v7)
        {
          goto LABEL_30;
        }
      }
    }

    v8 = 0;
LABEL_30:
    if (v5 + 6 != __src)
    {
      std::vector<HSTPipeline::Contact>::__assign_with_size[abi:ne200100]<HSTPipeline::Contact*,HSTPipeline::Contact*>(v5 + 6, __src[0], __src[1], (__src[1] - __src[0]) >> 6);
    }

    v30 = 0;
    first = self->_inRangeContacts.__first_;
    do
    {
      if ((first & (1 << v30)) != 0 && ((1 << v30) & v8) == 0)
      {
        v33 = v5 + 6;
        v34 = v5[7];
        v35 = v5[8];
        if (v34 >= v35)
        {
          v37 = (v34 - *v33) >> 6;
          v38 = v37 + 1;
          if ((v37 + 1) >> 58)
          {
            std::vector<HSUtil::CoderKey const*>::__throw_length_error[abi:ne200100]();
          }

          v39 = v35 - *v33;
          if (v39 >> 5 > v38)
          {
            v38 = v39 >> 5;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFC0)
          {
            v40 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v38;
          }

          if (v40)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<HSTPipeline::Contact>>((v5 + 6), v40);
          }

          v41 = v37 << 6;
          *v41 = v30;
          *(v41 + 1) = 0;
          *(v41 + 3) = 0;
          *(v41 + 8) = 0;
          *(v41 + 16) = 0;
          *(v41 + 24) = 0;
          v36 = (v37 << 6) + 64;
          *(v41 + 28) = 0u;
          *(v41 + 44) = 0u;
          *(v41 + 60) = 0;
          v42 = v5[7] - v5[6];
          v43 = (v37 << 6) - v42;
          memcpy((v41 - v42), *v33, v42);
          v44 = *v33;
          *v33 = v43;
          v5[7] = v36;
          v5[8] = 0;
          if (v44)
          {
            operator delete(v44);
          }

          v5 = v49;
        }

        else
        {
          *v34 = v30;
          *(v34 + 1) = 0;
          *(v34 + 3) = 0;
          *(v34 + 8) = 0;
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
          v36 = v34 + 64;
          *(v34 + 28) = 0u;
          *(v34 + 44) = 0u;
          *(v34 + 60) = 0;
        }

        v33[1] = v36;
        v45 = MTLoggingPlugin();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v52 = v30;
          _os_log_error_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "Contact %u was in range but is now missing, setting stage to NotTracking", buf, 8u);
        }

        first = self->_inRangeContacts.__first_ & ~(1 << v30);
        self->_inRangeContacts.__first_ = first;
      }

      ++v30;
    }

    while (v30 != 32);
    v46 = v5[4];
    if (self->_lastFWTimestamp > v46)
    {
      v47 = objc_opt_new();
      [v47 setNotification:11];
      v50.receiver = self;
      v50.super_class = HSTFrameParser;
      [(HSStage *)&v50 handleConsume:v47];

      v46 = v5[4];
    }

    self->_lastFWTimestamp = v46;
    self->_lastFrameNumber = v5[3];
    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }

  else
  {
    memset(__src, 170, sizeof(__src));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __src);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser sanitizeContactFrame:];
    }
  }
}

- (BOOL)_handleContactFrame:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:471 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  if (v5[1])
  {
    v6 = [(HSTFrameParser *)self contactFrameFromData:?];
    v7 = v6 != 0;
    if (v6)
    {
      [(HSTFrameParser *)self sanitizeContactFrame:v6];
      v10.receiver = self;
      v10.super_class = HSTFrameParser;
      [(HSStage *)&v10 handleConsume:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_handlePointerFrame:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:496 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  if (v5[1])
  {
    v6 = [(HSTFrameParser *)self pointerFrameFromData:?];
    v7 = v6 != 0;
    if (v6)
    {
      v10.receiver = self;
      v10.super_class = HSTFrameParser;
      [(HSStage *)&v10 handleConsume:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unsigned)_firmwareToHSTNotification:(unsigned __int8)a3
{
  if (a3 > 31)
  {
    if (a3 != 32)
    {
      if (a3 == 33)
      {
        return 10;
      }

      return 0;
    }

    return 9;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 8;
      }

      return 0;
    }

    return 7;
  }
}

- (BOOL)_handleFirmwareEventFrame:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v29 = +[NSAssertionHandler currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:531 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  v6 = v5[1];
  if (v6)
  {
    v7 = [v6 bytes];
    v8 = [v5[1] length];
    if (v8 >= 2 && *v7 == 96)
    {
      v37.receiver = self;
      v37.super_class = HSTFrameParser;
      [(HSStage *)&v37 handleConsume:v5];
      v9 = MTLoggingPlugin();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v7[1];
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Firmware event received: %x", buf, 8u);
      }

      v11 = objc_opt_new();
      [v11 setNotification:{-[HSTFrameParser _firmwareToHSTNotification:](self, "_firmwareToHSTNotification:", v7[1])}];
      v36.receiver = self;
      v36.super_class = HSTFrameParser;
      [(HSStage *)&v36 handleConsume:v11];
      if ([v11 notification] != 9)
      {
        if ([v11 notification] == 7)
        {
          v17 = MTLoggingPlugin();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "device killed", buf, 2u);
          }
        }

        else if ([v11 notification] == 8)
        {
          buf[0] = 0;
          v19 = [[HSTVendorEvent alloc] initWithType:2 buffer:buf length:1];
          v33.receiver = self;
          v33.super_class = HSTFrameParser;
          [(HSStage *)&v33 handleConsume:v19];
        }

        else if ([v11 notification] == 10)
        {
          buf[0] = 1;
          v20 = [[HSTVendorEvent alloc] initWithType:9 buffer:buf length:1];
          v32.receiver = self;
          v32.super_class = HSTFrameParser;
          [(HSStage *)&v32 handleConsume:v20];
        }

        goto LABEL_57;
      }

      v12 = objc_opt_new();
      v13 = v12;
      if (v8 == &dword_0 + 2)
      {
        goto LABEL_10;
      }

      v18 = v7[2];
      v14 = v18 & 8;
      if (v18 <= 2)
      {
        if (!v7[2])
        {
LABEL_34:
          if (v8 < 7)
          {
            goto LABEL_45;
          }

          v21 = (10 * *(v7 + 3) - self->_config.surfaceCoordinates.left) | ((10 * *(v7 + 5) - self->_config.surfaceCoordinates.bottom) << 32);
          v22 = &OBJC_IVAR___HSTWakeSystemEvent_tapPosition;
          goto LABEL_36;
        }

        if (v18 != 1)
        {
          if (v18 == 2)
          {
LABEL_32:
            if (v8 < 7)
            {
              goto LABEL_45;
            }

            v21 = (10 * *(v7 + 3) - self->_config.surfaceCoordinates.left) | ((10 * *(v7 + 5) - self->_config.surfaceCoordinates.bottom) << 32);
            v22 = &OBJC_IVAR___HSTWakeSystemEvent_longPressPosition;
LABEL_36:
            v23 = v12 + *v22;
            if ((*(v23 + 8) & 1) == 0)
            {
              *(v23 + 8) = 1;
            }

LABEL_44:
            *v23 = v21;
          }

LABEL_45:
          v35.receiver = self;
          v35.super_class = HSTFrameParser;
          [(HSStage *)&v35 handleConsume:v12];
          if (!v14)
          {
LABEL_56:

LABEL_57:
            v15 = 1;
            goto LABEL_12;
          }

          if (v8 <= 7)
          {
            v30 = MTLoggingPlugin();
            [(HSTFrameParser *)v30 _handleFirmwareEventFrame:buf];
          }

          else
          {
            v24 = v7[7];
            if (v24 != 1)
            {
              v28 = MTLoggingPlugin();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [(HSTFrameParser *)v24 _handleFirmwareEventFrame:v28];
              }

              goto LABEL_55;
            }

            if (v8 > 0x1E)
            {
              v25 = v7[8];
              v26 = *(v7 + 9);
              v27 = [NSData dataWithBytes:v7 + 13 length:v8 - 13];
              v28 = [(HSTFrameParser *)self contactFrameFromData:v27];

              if (v28)
              {
                if ((*(v28 + 120) & 1) == 0)
                {
                  *(v28 + 120) = 1;
                }

                *(v28 + 112) = (v26 << 32) | (v25 << 8) | 0xAAAA0001;
                [v28 hsSetTimestamp:{objc_msgSend(v28, "hsTimestamp") - 1000000 * v26}];
                [(HSTFrameParser *)self sanitizeContactFrame:v28];
                v34.receiver = self;
                v34.super_class = HSTFrameParser;
                [(HSStage *)&v34 handleConsume:v28];
              }

              goto LABEL_55;
            }

            v31 = MTLoggingPlugin();
            [(HSTFrameParser *)v31 _handleFirmwareEventFrame:buf];
          }

          v28 = *buf;
LABEL_55:

          goto LABEL_56;
        }
      }

      else
      {
        if (v7[2] <= 8u)
        {
          if (v18 == 3)
          {
            if (v8 < 7)
            {
LABEL_10:
              v14 = 0;
              goto LABEL_45;
            }

            v21 = (10 * *(v7 + 3) - self->_config.surfaceCoordinates.left) | ((10 * *(v7 + 5) - self->_config.surfaceCoordinates.bottom) << 32);
            v23 = v12 + 44;
            if ((*(v12 + 52) & 1) == 0)
            {
              *(v12 + 52) = 1;
            }

            v14 = 0;
            goto LABEL_44;
          }

          if (v18 != 8)
          {
            goto LABEL_45;
          }

          goto LABEL_34;
        }

        if (v18 != 9)
        {
          if (v18 != 10)
          {
            goto LABEL_45;
          }

          goto LABEL_32;
        }
      }

      if (v8 >= 7)
      {
        *(v12 + 28) = v7[3] | 0x100;
      }

      goto LABEL_45;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (unsigned)_driverUserSpaceToHSTNotification:(const DriverNotification *)a3
{
  var2 = a3->var2;
  if (var2 == 27)
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  if (var2 == 26)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

- (unsigned)_driverToHSTNotification:(const DriverNotificationHeader *)a3
{
  if (a3->var1 - 2 > 0xE)
  {
    return 0;
  }

  else
  {
    return word_D849E[(a3->var1 - 2)];
  }
}

- (unsigned)_driverToHSTNotificationWithContext:(const DriverNotification *)a3
{
  if (a3->var1)
  {
    return [(HSTFrameParser *)self _driverToHSTNotification:?];
  }

  else
  {
    return [(HSTFrameParser *)self _driverUserSpaceToHSTNotification:?];
  }
}

- (BOOL)_handleDriverNotificationFrame:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:700 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  v6 = v5[1];
  if (v6)
  {
    v7 = HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::DriverNotificationHeader>(v6);
    if (v7)
    {
      v8 = HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::DriverNotification>(v5[1]);
      v23.receiver = self;
      v23.super_class = HSTFrameParser;
      [(HSStage *)&v23 handleConsume:v5];
      if (v8)
      {
        v9 = MTLoggingPlugin();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(HSTFrameParser *)v7 _handleDriverNotificationFrame:v8, v9];
        }
      }

      else
      {
        v9 = MTLoggingPlugin();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(HSTFrameParser *)v7 _handleDriverNotificationFrame:v9];
        }
      }

      v11 = objc_opt_new();
      if (v8)
      {
        v12 = [(HSTFrameParser *)self _driverToHSTNotificationWithContext:v8];
      }

      else
      {
        v12 = [(HSTFrameParser *)self _driverToHSTNotification:v7];
      }

      [v11 setNotification:v12];
      v22.receiver = self;
      v22.super_class = HSTFrameParser;
      [(HSStage *)&v22 handleConsume:v11];
      if ([v11 notification] == 1)
      {
        v13 = objc_opt_new();
        [(HSTFrameParser *)self handleConsume:v13];

        buf[0] = 0;
        v14 = [[HSTVendorEvent alloc] initWithType:2 buffer:buf length:1];
        v21.receiver = self;
        v21.super_class = HSTFrameParser;
        [(HSStage *)&v21 handleConsume:v14];
      }

      else if ([v11 notification] == 3)
      {
        buf[0] = 0;
        v14 = [[HSTVendorEvent alloc] initWithType:1 buffer:buf length:1];
        v20.receiver = self;
        v20.super_class = HSTFrameParser;
        [(HSStage *)&v20 handleConsume:v14];
      }

      else
      {
        if ([v11 notification] != 4)
        {
          if ([v11 notification] == 2)
          {
            v16 = MTLoggingPlugin();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "device killed", buf, 2u);
            }
          }

          goto LABEL_21;
        }

        buf[0] = 0;
        v14 = [[HSTVendorEvent alloc] initWithType:4 buffer:buf length:1];
        v19.receiver = self;
        v19.super_class = HSTFrameParser;
        [(HSStage *)&v19 handleConsume:v14];
      }

LABEL_21:
      v10 = 1;
      goto LABEL_22;
    }
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (BOOL)_handleDriverExternalMessageFrame:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:767 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  v6 = v5[1];
  if (v6 && (v7 = [v6 bytes], v8 = objc_msgSend(v5[1], "length"), v9 = v8 - 6, v8 >= 6) && *v7 == 83 && (v17.receiver = self, v17.super_class = HSTFrameParser, -[HSStage handleConsume:](&v17, "handleConsume:", v5), (v7[1] & 0xFE) == 2) && v9 >= *(v7 + 1))
  {
    v12 = MTLoggingPlugin();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v7 + 2);
      *buf = 67109120;
      v19 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "External message received: 0x%x", buf, 8u);
    }

    v14 = [[HSTVendorEvent alloc] initWithType:3 buffer:v7 + 4 length:*(v7 + 1) + 2];
    v16.receiver = self;
    v16.super_class = HSTFrameParser;
    [(HSStage *)&v16 handleConsume:v14];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_handleTimestampSyncFrame:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HSTFrameParser.mm" lineNumber:808 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  v6 = v5[1];
  if (v6 && (v7 = HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::TimestampSync>(v6)) != 0 && v7[1] == 255)
  {
    v10 = *(v7 + 12);
    if (v10)
    {
      v11 = v10 - *(v7 + 4);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = MTLoggingPlugin();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(HSTFrameParser *)v12 _handleTimestampSyncFrame:v13];
    }

    v14 = objc_opt_new();
    v14[2] = v12;
    v16.receiver = self;
    v16.super_class = HSTFrameParser;
    [(HSStage *)&v16 handleConsume:v14];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleFrame:(id)a3
{
  v4 = a3;
  if (![(HSTFrameParser *)self _handleContactFrame:v4]&& ![(HSTFrameParser *)self _handlePointerFrame:v4]&& ![(HSTFrameParser *)self _handleFirmwareEventFrame:v4]&& ![(HSTFrameParser *)self _handleDriverNotificationFrame:v4]&& ![(HSTFrameParser *)self _handleDriverExternalMessageFrame:v4]&& ![(HSTFrameParser *)self _handleTimestampSyncFrame:v4])
  {
    v5.receiver = self;
    v5.super_class = HSTFrameParser;
    [(HSStage *)&v5 handleConsume:v4];
  }
}

- (void)_handleResetEvent:(id)a3
{
  self->_inRangeContacts.__first_ = 0;
  self->_lastFWTimestamp = 0;
  v3.receiver = self;
  v3.super_class = HSTFrameParser;
  [(HSStage *)&v3 handleConsume:a3];
}

- (void)_handleDebugStateEvent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v9 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[HSTFrameParser _handleDebugStateEvent:]"];
    [v9 handleFailureInFunction:v10 file:@"HSTFrameParser.mm" lineNumber:877 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  *(v4 + 16) = 1;
  v12[0] = @"Stage";
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v12[1] = @"Duplicate Contact Count";
  v13[0] = v6;
  v7 = [NSNumber numberWithUnsignedInt:self->_duplicateContactCount];
  v13[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  [*(v4 + 3) addObject:v8];
  v11.receiver = self;
  v11.super_class = HSTFrameParser;
  [(HSStage *)&v11 handleConsume:v4];
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(HSTFrameParser *)self _handleFrame:v4];
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(HSTFrameParser *)self _handleResetEvent:v6];
    }

    else
    {
      v8 = v6;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(HSTFrameParser *)self _handleDebugStateEvent:v8];
      }

      else
      {
        v10.receiver = self;
        v10.super_class = HSTFrameParser;
        [(HSStage *)&v10 handleConsume:v8];
      }
    }
  }
}

- (unsigned)majorRadiusFromCode:(unsigned __int8)a3
{
  if (a3)
  {
    if (a3 > 0x31u)
    {
      if (a3 > 0xA9u)
      {
        return (((((a3 << 10) - 169984) * ((a3 << 10) - 169984)) >> 12) + 958464) >> 10;
      }

      else
      {
        LODWORD(v3) = ((a3 << 21) + 629145600) >> 20;
      }
    }

    else
    {
      LODWORD(v3) = (((0xFFFFFFFD8 * ((((a3 << 10) - 76800) * ((a3 << 10) - 76800)) >> 10)) >> 10) + 742400) >> 10;
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

- (unsigned)minorRadiusFromCode:(unsigned __int8)a3
{
  if (a3)
  {
    if (a3 > 0x31u)
    {
      if (a3 > 0x95u)
      {
        return (((87 * ((((a3 << 10) - 141552) * ((a3 << 10) - 141552)) >> 10)) >> 10) + 807152) >> 10;
      }

      else
      {
        LODWORD(v3) = ((a3 << 21) + 524288000) >> 20;
      }
    }

    else
    {
      LODWORD(v3) = (((0xFFFFFFFD8 * ((((a3 << 10) - 76800) * ((a3 << 10) - 76800)) >> 10)) >> 10) + 640000) >> 10;
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

- (unsigned)zsignalFromCode:(unsigned __int8)a3
{
  if (a3)
  {
    if (a3 > 0x95u)
    {
      return (((138 * ((((a3 << 10) - 114670) * ((a3 << 10) - 114670)) >> 10)) >> 10) + 1373544) >> 10;
    }

    else
    {
      LODWORD(v3) = (10485 * a3) >> 10;
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

- (unsigned)zforceFromCode:(unsigned __int8)a3
{
  if (a3)
  {
    if ((a3 & 0x80) != 0)
    {
      return (((((a3 << 10) - 98939) * ((a3 << 10) - 98939)) >> 15) + 230011) >> 10;
    }

    else
    {
      LOWORD(v3) = 2 * (a3 & 0x7F);
    }
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

- (BOOL)unpackFrame29Header:(UnpackedHeader *)a3 fromData:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    if (v6)
    {
      v8 = [v6 bytes];
      if ([v7 length] >= 6 && *v8 == 41)
      {
        a3->var0 = 41;
        v9 = (v8[3] >> 2) & 3;
        v10 = v8[1] | (v9 << 8);
        *&a3->var1 = v10;
        v11 = (v8[3] >> 4) & 3;
        v12 = v8[2] | (v11 << 8);
        *(&a3->var2 + 1) = v12;
        *(&a3->var2 + 3) = v8[3] & 3;
        v13 = (v8[3] >> 6) | (4 * v8[4]) | (v8[5] << 10);
        *(&a3->var2 + 4) = v13;
        if (v9 >= 2)
        {
          *&a3->var1 = v10 | 0xFC00;
        }

        if (v11 >= 2)
        {
          *(&a3->var2 + 1) = v12 | 0xFC00;
        }

        v14 = self->_lastFWTimestamp / 1000;
        v15 = v14 & 0x3FFFFF;
        v16 = v14 & 0xFFFFFFFFFFC0000 | v13;
        if (v13 < v15)
        {
          v16 += 0x40000;
        }

        *(&a3->var2 + 4) = v16;
        v17 = [v7 length];
        BYTE6(a3->var3) = (v17 - 6) >> 3;
        if (((v17 + 250) & 7) == 0)
        {
          v18 = 1;
          goto LABEL_19;
        }

        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [HSTFrameParser unpackFrame29Header:fromData:];
        }
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTFrameParser unpackFrame29Header:fromData:];
      }
    }
  }

  else
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser unpackFrame29Header:fromData:];
    }
  }

  v18 = 0;
LABEL_19:

  return v18;
}

- (BOOL)unpackFrame29Contact:(UnpackedContact *)a3 fromData:(id)a4 withByteOffset:(unsigned __int8)a5
{
  v5 = a5;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    if (v8)
    {
      if (v5 + 8 <= [v8 length])
      {
        *__b = 0xAAAAAAAAAAAAAAAALL;
        [v9 getBytes:__b range:?];
        v12 = __b[1];
        a3->var0 = __b[0] | ((__b[1] & 0xF) << 8);
        a3->var1 = (v12 >> 4) | (16 * __b[2]);
        a3->var2 = [(HSTFrameParser *)self majorRadiusFromCode:__b[3]];
        a3->var3 = [(HSTFrameParser *)self minorRadiusFromCode:__b[4]];
        v13 = *&__b[5];
        a3->var4 = 32 * (__b[5] & 0x3F);
        a3->var5 = (v13 >> 6) & 0xF;
        *(&a3->var5 + 1) = (v13 >> 1) & 0x7E00;
        v14 = __b[7];
        HIBYTE(a3->var6) = __b[7] & 0xF;
        a3->var7 = (v14 >> 4) & 7;
        a3->var8 = v14 >> 7;
        a3->var0 = (16 * a3->var0) >> 3;
        a3->var1 = ((16 * a3->var1) >> 3) + 4095;
        v10 = 1;
        goto LABEL_11;
      }

      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTFrameParser unpackFrame29Contact:fromData:withByteOffset:];
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTFrameParser unpackFrame29Contact:fromData:withByteOffset:];
      }
    }
  }

  else
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser unpackFrame29Contact:fromData:withByteOffset:];
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)unpackFrame31Header:(UnpackedHeader *)a3 fromData:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    if (v6)
    {
      v8 = [v6 bytes];
      if ([v7 length] >= 4 && *v8 == 49)
      {
        a3->var0 = 49;
        a3->var1 = v8[1] & 1;
        a3->var2 = (v8[1] & 4) != 0;
        v9 = (v8[1] >> 3) | (32 * v8[2]) | (v8[3] << 13);
        *(&a3->var2 + 1) = v9;
        v10 = self->_lastFWTimestamp / 1000;
        v11 = v10 & 0x1FFFFF;
        v12 = v10 & 0xFFFFFFFFFFE00000 | v9;
        if (v9 >= v11)
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 + 0x200000;
        }

        *(&a3->var2 + 1) = v13;
        v14 = [v7 length];
        BYTE3(a3->var3) = (v14 - 4) / 9u;
        if (!((v14 - 4) % 9u))
        {
          v15 = 1;
          goto LABEL_16;
        }

        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [HSTFrameParser unpackFrame31Header:fromData:];
        }
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSTFrameParser unpackFrame31Header:fromData:];
      }
    }
  }

  else
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser unpackFrame31Header:fromData:];
    }
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (BOOL)unpackFrame31Contact:(UnpackedContact *)a3 fromData:(id)a4 withByteOffset:(unsigned __int8)a5
{
  v5 = a5;
  v8 = a4;
  v9 = v8;
  if (!a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser unpackFrame31Contact:fromData:withByteOffset:];
    }

    goto LABEL_10;
  }

  if (!v8)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser unpackFrame31Contact:fromData:withByteOffset:];
    }

    goto LABEL_10;
  }

  if (v5 + 9 > [v8 length])
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser unpackFrame31Contact:fromData:withByteOffset:];
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  __b[0] = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(__b[1]) = -86;
  [v9 getBytes:__b range:?];
  v12 = BYTE1(__b[0]);
  a3->var0 = LOBYTE(__b[0]) | ((BYTE1(__b[0]) & 0x1F) << 8);
  a3->var1 = (8 * BYTE2(__b[0])) & 0xE7FF | ((BYTE3(__b[0]) & 3) << 11) | (v12 >> 5);
  a3->var2 = [(HSTFrameParser *)self majorRadiusFromCode:BYTE4(__b[0])];
  a3->var3 = [(HSTFrameParser *)self minorRadiusFromCode:BYTE5(__b[0])];
  a3->var4 = [(HSTFrameParser *)self zsignalFromCode:BYTE6(__b[0])];
  v13 = LOBYTE(__b[1]);
  a3->var5 = __b[1] & 0xF;
  *(&a3->var5 + 1) = v13 >> 5;
  v14 = BYTE3(__b[0]);
  HIBYTE(a3->var6) = (BYTE3(__b[0]) >> 2) & 7;
  a3->var7 = v14 >> 5;
  a3->var8 = (v13 & 0x10) != 0;
  *&a3->var9 = [(HSTFrameParser *)self zforceFromCode:HIBYTE(__b[0])];
  a3->var0 = (8 * a3->var0) >> 2;
  a3->var1 = ((8 * a3->var1) >> 2) + 5000;
  if (HIBYTE(a3->var6) == 7)
  {
    HIBYTE(a3->var6) = 12;
  }

  *(&a3->var5 + 1) <<= 12;
  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)handleHSEncode:(void *)a3
{
  if (!*a3)
  {
    *&v6 = *(a3 + 17);
    DWORD2(v6) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v6);
    HSUtil::Encoder::_writeTokenValue32(a3, 0xEBu, 0);
  }

  HSUtil::Encoder::encodeCodable<HSTPipeline::SurfaceCoordinates>(a3, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115>::Key, &self->_config);
  HSUtil::Encoder::encodeCodable<HSTPipeline::SensorSize>(a3, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)110,(char)115,(char)111,(char)114,(char)83,(char)105,(char)122,(char)101>::Key, &self->_config.sensorSize);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101,(char)67,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key, self->_inRangeContacts.__first_);
  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)a3
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v10 = v5;
  HSUtil::Decoder::decodeMap(a3, &v10);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser handleHSDecode:];
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::SurfaceCoordinates>(&v10, HSUtil::CoderKey::Literal<(char)115,(char)117,(char)114,(char)102,(char)97,(char)99,(char)101,(char)67,(char)111,(char)111,(char)114,(char)100,(char)105,(char)110,(char)97,(char)116,(char)101,(char)115>::Key, &self->_config);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser handleHSDecode:];
    }

    goto LABEL_13;
  }

  HSUtil::Decoder::decodeCodable<HSTPipeline::SensorSize>(&v10, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)110,(char)115,(char)111,(char)114,(char)83,(char)105,(char)122,(char)101>::Key, &self->_config.sensorSize);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser handleHSDecode:];
    }

    goto LABEL_13;
  }

  v6 = HSUtil::Decoder::decodeUInt(&v10, HSUtil::CoderKey::Literal<(char)105,(char)110,(char)82,(char)97,(char)110,(char)103,(char)101,(char)67,(char)111,(char)110,(char)116,(char)97,(char)99,(char)116,(char)115>::Key);
  if (v10)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTFrameParser.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTFrameParser handleHSDecode:];
    }

    goto LABEL_13;
  }

  self->_inRangeContacts.__first_ = v6;
  v7 = 1;
LABEL_14:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = v11;
  *&v11 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  return v7;
}

- (void)parseContactFrame44:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame44:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame44:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame44:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame44:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame75:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame75:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame75:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame75:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)parseContactFrame75:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)sanitizeContactFrame:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_handleFirmwareEventFrame:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unknown tritium3 version received: %d", v2, 8u);
}

- (void)_handleFirmwareEventFrame:(NSObject *)a1 .cold.2(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = 1;
    _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "Failed to parse WakeEventWithTritiumAndFrame data from wake event for tritium3 version %d", v4, 8u);
  }

  *a2 = a1;
}

- (void)_handleFirmwareEventFrame:(NSObject *)a1 .cold.3(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "Failed to parse WakeEventWithTritium3Header data from wake event", v4, 2u);
  }

  *a2 = a1;
}

- (void)_handleDriverNotificationFrame:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 1);
  v4 = *(a2 + 2);
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "Driver notification received: type=%x context=%d", v5, 0xEu);
}

- (void)_handleDriverNotificationFrame:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 1);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Driver notification received: type=%x", v3, 8u);
}

- (void)_handleTimestampSyncFrame:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Timestamp sync received: %lldms", &v2, 0xCu);
}

- (void)unpackFrame29Header:fromData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame29Header:fromData:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame29Header:fromData:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame29Contact:fromData:withByteOffset:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame29Contact:fromData:withByteOffset:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame29Contact:fromData:withByteOffset:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame31Header:fromData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame31Header:fromData:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame31Header:fromData:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame31Contact:fromData:withByteOffset:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame31Contact:fromData:withByteOffset:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)unpackFrame31Contact:fromData:withByteOffset:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)handleHSDecode:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end