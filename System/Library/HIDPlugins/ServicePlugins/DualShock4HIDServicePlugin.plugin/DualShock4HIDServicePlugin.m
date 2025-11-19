uint64_t sub_E38()
{
  if (qword_1AF50 != -1)
  {
    sub_96E8();
  }

  return byte_1AF48;
}

id sub_E98()
{
  if (qword_1AF60 != -1)
  {
    sub_96FC();
  }

  v1 = qword_1AF58;

  return v1;
}

void sub_EDC(id a1)
{
  v1 = os_log_create("com.apple.GameController", "default");
  v2 = qword_1AF58;
  qword_1AF58 = v1;
}

id sub_F20()
{
  if (qword_1AF70 != -1)
  {
    sub_9710();
  }

  v1 = qword_1AF68;

  return v1;
}

void sub_F64(id a1)
{
  v1 = os_log_create("com.apple.GameController", "monitor");
  v2 = qword_1AF68;
  qword_1AF68 = v1;
}

id sub_FA8()
{
  if (qword_1AF80 != -1)
  {
    sub_9724();
  }

  v1 = qword_1AF78;

  return v1;
}

void sub_FEC(id a1)
{
  v1 = os_log_create("com.apple.GameController", "analytics");
  v2 = qword_1AF78;
  qword_1AF78 = v1;
}

id sub_1030()
{
  if (qword_1AF90 != -1)
  {
    sub_9738();
  }

  v1 = qword_1AF88;

  return v1;
}

void sub_1074(id a1)
{
  v1 = os_log_create("com.apple.GameController.Daemon", "default");
  v2 = qword_1AF88;
  qword_1AF88 = v1;
}

void sub_10B8(char *category)
{
  v1 = os_log_create("com.apple.GameController.HID", category);
  v2 = qword_1AF98;
  qword_1AF98 = v1;
}

id sub_10F8()
{
  if (qword_1AFA0 != -1)
  {
    sub_974C();
  }

  v1 = qword_1AF98;

  return v1;
}

void sub_113C(id a1)
{
  if (!qword_1AF98)
  {
    objc_storeStrong(&qword_1AF98, &_os_log_default);
  }
}

id sub_1160()
{
  if (qword_1AFB0 != -1)
  {
    sub_9760();
  }

  v1 = qword_1AFA8;

  return v1;
}

void sub_11A4(id a1)
{
  v1 = os_log_create("com.apple.GameController.Settings", "default");
  v2 = qword_1AFA8;
  qword_1AFA8 = v1;
}

id sub_11E8()
{
  if (qword_1AFC0 != -1)
  {
    sub_9774();
  }

  v1 = qword_1AFB8;

  return v1;
}

void sub_122C(id a1)
{
  v1 = os_log_create("com.apple.GameController.Haptics", "default");
  v2 = qword_1AFB8;
  qword_1AFB8 = v1;
}

id sub_1270()
{
  if (qword_1AFD0 != -1)
  {
    sub_9788();
  }

  v1 = qword_1AFC8;

  return v1;
}

void sub_12B4(id a1)
{
  v1 = os_log_create("com.apple.runtime-issues", "GameController");
  v2 = qword_1AFC8;
  qword_1AFC8 = v1;
}

id hexStringFromByteArray(uint64_t a1, int a2)
{
  v4 = [NSMutableString stringWithCapacity:2 * a2];
  if (a2 >= 1)
  {
    v5 = a2 - 1;
    do
    {
      if (v5)
      {
        v6 = @":";
      }

      else
      {
        v6 = &stru_148F0;
      }

      v7 = [NSString stringWithFormat:@"%02x%@", *(a1 + v5), v6];
      [v4 appendString:v7];

      v8 = v5-- + 1;
    }

    while (v8 > 1);
  }

  v9 = [NSString stringWithString:v4];
  v10 = [v9 uppercaseString];

  return v10;
}

uint64_t isPartnerSupportEnabled()
{
  if (qword_1AFD8 != -1)
  {
    sub_979C();
  }

  return byte_1AFE0;
}

void sub_2020(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  byte_1AFE0 = [v1 BOOLForKey:@"GCPartnersEnable"];
  v2 = sub_10F8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = byte_1AFE0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v3, 8u);
  }
}

id sub_2100()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____GCDriverClientInterface];
  v1 = sub_DE8();
  [v0 setInterface:v1 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v2 = sub_DFC();
  [v0 setInterface:v2 forSelector:"connectToNintendoJoyConFusionGestureServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v3 = sub_5908();
  [v0 setInterface:v3 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v4 = sub_591C();
  [v0 setInterface:v4 forSelector:"connectToLightServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v5 = sub_1EB4();
  [v0 setInterface:v5 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v6 = sub_1EC8();
  [v0 setInterface:v6 forSelector:"connectToIdleServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v7 = sub_2428();
  [v0 setInterface:v7 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v8 = sub_243C();
  [v0 setInterface:v8 forSelector:"connectToAdaptiveTriggersServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v9 = sub_58E0();
  [v0 setInterface:v9 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v10 = sub_58F4();
  [v0 setInterface:v10 forSelector:"connectToMotionServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v11 = sub_96C0();
  [v0 setInterface:v11 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v12 = sub_96D4();
  [v0 setInterface:v12 forSelector:"connectToBatteryServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v13 = sub_E10();
  [v0 setInterface:v13 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v14 = sub_E24();
  [v0 setInterface:v14 forSelector:"connectToGameIntentServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  v15 = GCGenericDeviceDriverConfigurationServiceClientInterface();
  [v0 setInterface:v15 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:0];

  v16 = GCGenericDeviceDriverConfigurationServiceServerInterface();
  [v0 setInterface:v16 forSelector:"connectToGenericDeviceDriverConfigurationServiceWithClient:reply:" argumentIndex:0 ofReply:1];

  return v0;
}

void sub_2BD4(uint64_t a1, int a2, const void *a3, unint64_t a4)
{
  v8 = *(a1 + 40);
  kdebug_trace();
  if (a2)
  {
    v9 = sub_10F8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_9820();
    }
  }

  else
  {
    if (a4 >= 0x35)
    {
      v10 = 53;
    }

    else
    {
      v10 = a4;
    }

    memcpy((*(a1 + 32) + 857), a3, v10);
    *(*(a1 + 32) + 873) = 0;
    *(*(a1 + 32) + 889) = 0;
    v9 = sub_10F8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 857);
      v12 = *(*(a1 + 32) + 873);
      v13 = *(*(a1 + 32) + 889);
      *&v16[13] = *(*(a1 + 32) + 902);
      v15[1] = v12;
      *v16 = v13;
      v15[0] = v11;
      v14 = sub_2D54(v15);
      LODWORD(v15[0]) = 138412290;
      *(v15 + 4) = v14;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "(Async) Firmware Info = %@", v15, 0xCu);
    }
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
}

id sub_2D54(uint64_t a1)
{
  if (*a1)
  {
    v18[0] = @"ReportID";
    v17 = [NSNumber numberWithUnsignedChar:?];
    v19[0] = v17;
    v18[1] = @"Build Date";
    v2 = [NSString stringWithUTF8String:a1 + 1];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = @"<invalid>";
    }

    v19[1] = v4;
    v18[2] = @"Build Time";
    v5 = [NSString stringWithUTF8String:a1 + 17];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = @"<invalid>";
    }

    v19[2] = v7;
    v18[3] = @"Device Revision";
    v8 = [NSNumber numberWithUnsignedShort:*(a1 + 33)];
    v19[3] = v8;
    v18[4] = @"Hardware Version";
    v9 = [NSNumber numberWithUnsignedShort:*(a1 + 35)];
    v19[4] = v9;
    v18[5] = @"Software Version";
    v10 = [NSNumber numberWithUnsignedInt:*(a1 + 37)];
    v19[5] = v10;
    v18[6] = @"Software Subversion";
    v11 = [NSNumber numberWithUnsignedShort:*(a1 + 41)];
    v19[6] = v11;
    v18[7] = @"Software Series Info";
    v12 = [NSNumber numberWithUnsignedShort:*(a1 + 43)];
    v19[7] = v12;
    v18[8] = @"Code Size";
    v13 = [NSNumber numberWithUnsignedInt:*(a1 + 45)];
    v19[8] = v13;
    v18[9] = @"CRC 32";
    v14 = [NSNumber numberWithUnsignedInt:*(a1 + 49)];
    v19[9] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:10];
  }

  else
  {
    v15 = +[NSDictionary dictionary];
  }

  return v15;
}

void sub_3190(uint64_t a1, int a2, const void *a3, unint64_t a4)
{
  v8 = *(a1 + 40);
  kdebug_trace();
  if (a2)
  {
    v9 = sub_10F8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_9900();
    }

LABEL_4:

    goto LABEL_27;
  }

  v10 = a1 + 32;
  if (a4 >= 0x29)
  {
    v11 = 41;
  }

  else
  {
    v11 = a4;
  }

  memcpy((*(a1 + 32) + 816), a3, v11);
  if (sub_E38())
  {
    sub_9970();
  }

  v12 = vcvtd_n_f64_s32(*(*v10 + 837) + *(*v10 + 835), 1uLL);
  *(*v10 + 736) = v12 / ((fabs((*(*v10 + 823) - *(*v10 + 817))) + fabs((*(*v10 + 825) - *(*v10 + 817)))) * 0.5);
  *(*v10 + 736) = *(*v10 + 736) * 0.0174532925;
  *(*v10 + 744) = v12 / ((fabs((*(*v10 + 827) - *(*v10 + 819))) + fabs((*(*v10 + 829) - *(*v10 + 819)))) * 0.5);
  *(*v10 + 744) = *(*v10 + 744) * 0.0174532925;
  *(*v10 + 752) = v12 / ((fabs((*(*v10 + 831) - *(*v10 + 821))) + fabs((*(*v10 + 833) - *(*v10 + 821)))) * 0.5);
  *(*v10 + 752) = *(*v10 + 752) * 0.0174532925;
  *(*v10 + 760) = vcvtd_n_f64_s32(*(*v10 + 841) + *(*v10 + 839), 1uLL);
  *(*v10 + 768) = vcvtd_n_f64_s32(*(*v10 + 845) + *(*v10 + 843), 1uLL);
  *(*v10 + 776) = vcvtd_n_f64_s32(*(*v10 + 849) + *(*v10 + 847), 1uLL);
  *(*v10 + 784) = 2.0 / (*(*v10 + 839) - *(*v10 + 841));
  *(*v10 + 792) = 2.0 / (*(*v10 + 843) - *(*v10 + 845));
  *(*v10 + 800) = 2.0 / (*(*v10 + 847) - *(*v10 + 849));
  if (sub_E38())
  {
    sub_9A34();
  }

  if (sub_E38())
  {
    sub_9AC8();
  }

  if (sub_E38())
  {
    sub_9B5C();
  }

  if (sub_E38())
  {
    sub_9BF0();
  }

  if (sub_E38())
  {
    sub_9C84();
  }

  if (sub_E38())
  {
    sub_9D18();
  }

  if (sub_E38())
  {
    sub_9DAC();
  }

  if (sub_E38())
  {
    sub_9E40();
  }

  if (sub_E38())
  {
    v9 = sub_10F8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = *(*v10 + 800);
      *buf = 134217984;
      v15 = v13;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "(Async) Accelerometer Z Sensitivity = %f", buf, 0xCu);
    }

    goto LABEL_4;
  }

LABEL_27:
  free(*(a1 + 48));
  free(*(a1 + 56));
}

id sub_35D8(uint64_t a1)
{
  if (*a1)
  {
    v24[0] = @"ReportID";
    v23 = [NSNumber numberWithUnsignedChar:?];
    v25[0] = v23;
    v24[1] = @"gyroPitchBias";
    v22 = [NSNumber numberWithShort:*(a1 + 1)];
    v25[1] = v22;
    v24[2] = @"gyroYawBias";
    v21 = [NSNumber numberWithShort:*(a1 + 3)];
    v25[2] = v21;
    v24[3] = @"gyroRollBias";
    v20 = [NSNumber numberWithShort:*(a1 + 5)];
    v25[3] = v20;
    v24[4] = @"gyroRefPitchPlus";
    v19 = [NSNumber numberWithShort:*(a1 + 7)];
    v25[4] = v19;
    v24[5] = @"gyroRefPitchMinus";
    v18 = [NSNumber numberWithShort:*(a1 + 9)];
    v25[5] = v18;
    v24[6] = @"gyroRefYawPlus";
    v17 = [NSNumber numberWithShort:*(a1 + 11)];
    v25[6] = v17;
    v24[7] = @"gyroRefYawMinus";
    v16 = [NSNumber numberWithShort:*(a1 + 13)];
    v25[7] = v16;
    v24[8] = @"gyroRefRollPlus";
    v15 = [NSNumber numberWithShort:*(a1 + 15)];
    v25[8] = v15;
    v24[9] = @"gyroRefRollMinus";
    v14 = [NSNumber numberWithShort:*(a1 + 17)];
    v25[9] = v14;
    v24[10] = @"gyroRefSpeedPlus";
    v13 = [NSNumber numberWithShort:*(a1 + 19)];
    v25[10] = v13;
    v24[11] = @"gyroRefSpeedMinus";
    v2 = [NSNumber numberWithShort:*(a1 + 21)];
    v25[11] = v2;
    v24[12] = @"accelRefXPlus";
    v3 = [NSNumber numberWithShort:*(a1 + 23)];
    v25[12] = v3;
    v24[13] = @"accelRefXMinus";
    v4 = [NSNumber numberWithShort:*(a1 + 25)];
    v25[13] = v4;
    v24[14] = @"accelRefYPlus";
    v5 = [NSNumber numberWithShort:*(a1 + 27)];
    v25[14] = v5;
    v24[15] = @"accelRefYMinus";
    v6 = [NSNumber numberWithShort:*(a1 + 29)];
    v25[15] = v6;
    v24[16] = @"accelRefZPlus";
    v7 = [NSNumber numberWithShort:*(a1 + 31)];
    v25[16] = v7;
    v24[17] = @"accelRefZMinus";
    v8 = [NSNumber numberWithShort:*(a1 + 33)];
    v25[17] = v8;
    v24[18] = @"calibrationTemp";
    v9 = [NSNumber numberWithUnsignedShort:*(a1 + 35)];
    v25[18] = v9;
    v24[19] = @"CRC 32";
    v10 = [NSNumber numberWithUnsignedInt:*(a1 + 37)];
    v25[19] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:20];
  }

  else
  {
    v11 = +[NSDictionary dictionary];
  }

  return v11;
}

void sub_3D90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_3DB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a2;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_33;
  }

  sub_A114(WeakRetained);
  kdebug_trace();
  v89 = 0u;
  memset(v90, 0, sizeof(v90));
  v87 = 0u;
  v88 = 0u;
  if (a5 == 17)
  {
    [v13 bytes];
    if ((v15[118] & 1) == 0)
    {
      [(dispatch_once_t *)v15 setExtendedSupportEnabled:1];
    }

    [v13 length];
    __memcpy_chk();
  }

  else
  {
    if (a5 != 1)
    {
      goto LABEL_33;
    }

    [v13 bytes];
    if ([(dispatch_once_t *)v15 isBluetoothClassic])
    {
      if ([v13 length] != &dword_8 + 2)
      {
        goto LABEL_33;
      }
    }

    if ((-[dispatch_once_t isBluetoothClassic](v15, "isBluetoothClassic") & 1) == 0 && [v13 length] != &stru_20.vmsize)
    {
      goto LABEL_33;
    }

    [v13 length];
    __memcpy_chk();
    if (-[dispatch_once_t isBluetoothClassic](v15, "isBluetoothClassic") && [v13 length] == &dword_8 + 2)
    {
      BYTE13(v88) = BYTE13(v88) & 0xF0 | 0xA;
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4540;
  block[3] = &unk_14560;
  v16 = v15;
  v85 = v16;
  objc_copyWeak(&v86, (a1 + 32));
  if (v15[101] != -1)
  {
    dispatch_once(v15 + 101, block);
  }

  [(dispatch_once_t *)v16 updateBatteryLevel:BYTE13(v88) & 0xF isPowerSupplyConnected:(BYTE13(v88) >> 4) & 1];
  if (*(v16 + 728) == 1)
  {
    v56 = *(v16 + 93) * (SHIWORD(v87) - *(v16 + 819));
    v57 = *(v16 + 92) * (SWORD6(v87) - *(v16 + 817));
    v54 = -((SWORD1(v88) - *(v16 + 95)) * *(v16 + 98));
    v55 = *(v16 + 94) * (*(v16 + 821) - v88);
    v52 = -((SWORD2(v88) - *(v16 + 96)) * *(v16 + 99));
    v53 = (SWORD3(v88) - *(v16 + 97)) * *(v16 + 100);
    v51 = 1;
  }

  else
  {
    v51 = 0;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
  }

  v58 = v12;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  if (v89)
  {
    v25 = &v87 + 9 * v89 - 9;
    if ((v25[34] & 0x80000000) == 0)
    {
      v26 = (((*(v25 + 35) & 0xFFF) / 1919.0) + ((*(v25 + 35) & 0xFFF) / 1919.0)) + -1.0;
      v27 = (*(v25 + 35) | (v25[37] << 16)) >> 12;
      v28 = ((v27 / 941.0) + (v27 / 941.0)) + -1.0;
      v17 = fmaxf(-v28, 0.0);
      v18 = fmaxf(v28, 0.0);
      if (v26 >= 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = -v26;
      }

      v20 = fmaxf(v26, 0.0);
    }

    if ((v25[38] & 0x80000000) == 0)
    {
      v29 = *(v25 + 39) | (v25[41] << 16);
      v30 = (((v29 & 0xFFF) / 1919.0) + ((v29 & 0xFFF) / 1919.0)) + -1.0;
      v31 = (((v29 >> 12) / 941.0) + ((v29 >> 12) / 941.0)) + -1.0;
      v21 = fmaxf(-v31, 0.0);
      v22 = fmaxf(v31, 0.0);
      if (v30 >= 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = -v30;
      }

      v24 = fmaxf(v30, 0.0);
    }
  }

  v59 = v17;
  v60 = v21;
  v32 = v87;
  v33 = BYTE2(v87);
  v34 = BYTE1(v87);
  v35 = BYTE3(v87);
  v36 = BYTE6(v87);
  v37 = WORD2(v87);
  LOBYTE(v6) = BYTE8(v87);
  LOBYTE(v7) = BYTE7(v87);
  [(dispatch_once_t *)v16 dispatchHomeButtonEventWithValue:BYTE6(v87) & 1 timestamp:a3];
  [(dispatch_once_t *)v16 dispatchMenuButtonEventWithValue:(WORD2(v87) >> 13) & 1 timestamp:a3];
  [(dispatch_once_t *)v16 dispatchOptionsButtonEventWithValue:(WORD2(v87) >> 12) & 1 timestamp:a3];
  v38 = vdupq_n_s64(0xC05FE00000000000);
  v39 = vdup_n_s32(v37 & 0xF);
  v40.i64[0] = v32;
  v40.i64[1] = v34;
  v41 = v40;
  v40.i64[0] = v33;
  v40.i64[1] = v35;
  *v41.i8 = vcvt_f32_f64(vdivq_f64(vaddq_f64(vcvtq_f64_u64(v41), v38), xmmword_10AA0));
  v42 = vcvt_f32_f64(vdivq_f64(vaddq_f64(vcvtq_f64_u64(v40), v38), xmmword_10AA0));
  *&v38.f64[0] = vrev64_s32(*v41.i8);
  v43 = vrev64_s32(v42);
  __asm { FMOV            V6.4S, #1.0 }

  v49 = vbslq_s8(vmovl_s16(vceq_s16(vdup_n_s16(v37 & 0xF), 0x2000600040000)), _Q6, vcvtq_f32_u32(vmovl_u16(vand_s8(vuzp1_s16(vorr_s8(vceq_s32(v39, 0x500000001), vceq_s32(v39, 0x300000007)), vceq_s32(vdup_n_s32(v37 & 0xD), 0x100000005)), 0x1000100010001))));
  *_Q6.i8 = vdup_n_s32(v37);
  __asm { FMOV            V18.2S, #1.0 }

  v62 = v49;
  v61 = 0;
  v63 = vcvt_f32_u32((*&vshl_u32((_Q6.i64[0] & 0xFFFF00FFFFFF00FFLL), 0xFFFFFFFAFFFFFFFBLL) & 0xFFFFFFF1FFFFFFF1));
  *&v64 = ((v37 >> 4) & 1);
  *(&v64 + 1) = ((v37 >> 7) & 1);
  v65 = vbic_s8(_D18, vceqz_s32(vand_s8(*_Q6.i8, 0x20000000100)));
  LODWORD(v66) = fmaxf(*&v41.i32[1], 0.0);
  *(&v66 + 4) = vand_s8(vneg_f32(*&v38.f64[0]), vcltz_f32(*&v38.f64[0]));
  HIDWORD(v66) = fmaxf(*v41.i32, 0.0);
  LODWORD(v67) = fmaxf(*&v42.i32[1], 0.0);
  *(&v67 + 4) = vand_s8(vneg_f32(v43), vcltz_f32(v43));
  HIDWORD(v67) = fmaxf(*v42.i32, 0.0);
  *&v68 = v7 / 255.0;
  *(&v68 + 1) = v6 / 255.0;
  *(&v68 + 2) = ((v37 >> 14) & 1);
  *(&v68 + 3) = (v37 >> 15);
  v69 = 0;
  v70 = 0;
  v71 = v59;
  v72 = v18;
  v73 = v19;
  v74 = v20;
  v75 = v60;
  v76 = v22;
  v77 = v23;
  v78 = v24;
  v79 = ((v36 >> 1) & 1);
  v83 = 0;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  [(dispatch_once_t *)v16 dispatchGameControllerExtendedEventWithState:&v61 timestamp:a3];
  if (*(v16 + 728) == 1)
  {
    LOBYTE(v61) = v51;
    *(&v61 + 1) = 0;
    HIDWORD(v61) = 0;
    *v62.i64 = v57;
    *&v62.i64[1] = v55;
    v63 = *&v56;
    LOBYTE(v64) = v51;
    *(&v64 + 1) = 0;
    HIDWORD(v64) = 0;
    v65 = *&v54;
    *&v66 = v53;
    *(&v66 + 1) = v52;
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    [(dispatch_once_t *)v16 dispatchMotionEventWithState:&v61 timestamp:a3];
  }

  objc_destroyWeak(&v86);

  v12 = v58;
LABEL_33:
}

void sub_4540(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  if (v2)
  {
    v3 = dispatch_time(0, 2500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_461C;
    block[3] = &unk_14538;
    objc_copyWeak(&v5, (a1 + 40));
    dispatch_after(v3, v2, block);
    objc_destroyWeak(&v5);
  }

  else
  {
    *(*(a1 + 32) + 707) = 1;
  }
}

void sub_461C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v3[707] = 1;
    [v3 sendBatteryReport];
  }
}

void sub_4A5C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  kdebug_trace();
  if (a2)
  {
    v4 = sub_10F8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_9F84();
    }
  }
}

void sub_4AC8(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  kdebug_trace();
  if (a2)
  {
    v4 = sub_10F8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_9FF4();
    }
  }
}

id sub_5304(uint64_t a1)
{
  v2 = sub_10F8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 44);
    v5 = *(a1 + 48);
    v8 = 134218496;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "updateLightWithRed:%f green:%f blue:%f", &v8, 0x20u);
  }

  v6 = *(a1 + 32);
  if ((v6[944] & 1) == 0)
  {
    [v6 setExtendedSupportEnabled:1];
    v6 = *(a1 + 32);
  }

  v6[729] = (*(a1 + 40) * 255.0);
  *(*(a1 + 32) + 730) = (*(a1 + 44) * 255.0);
  *(*(a1 + 32) + 731) = (*(a1 + 48) * 255.0);
  result = [*(a1 + 32) isHapticsActive];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) dispatchOutputReport];
  }

  return result;
}

void sub_5600(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if ((v2[944] & 1) == 0)
    {
      [v2 setExtendedSupportEnabled:1];
    }
  }

  v3 = sub_10F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "updateSensorsEnabled %d", v5, 8u);
  }

  *(*(a1 + 32) + 728) = *(a1 + 40);
}

void sub_5860(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0xCu);
}

BOOL sub_58B0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

NSObject *sub_5930(uint64_t a1, uint64_t a2, NSObject *a3, void *a4)
{
  v7 = a4;
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  if (v8)
  {
    v9 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v8, v9, a1, a2);
    dispatch_source_set_event_handler(v8, v7);
    dispatch_resume(v8);
  }

  return v8;
}

void sub_5BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5BE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10F8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver invalidated", v3, 2u);
  }

  [WeakRetained setInterruptionHandler:0];
  [WeakRetained setInvalidationHandler:0];
  [WeakRetained invalidate];
}

void sub_5C78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10F8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Connection to com.apple.GameController.gamecontrollerd.driver interrupted.  Attempting to re-establish.", v4, 2u);
  }

  v3 = [WeakRetained remoteObjectProxy];
  [v3 driverCheckIn];
}

void sub_63EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_640C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6424(uint64_t a1)
{
  v2 = [NSString stringWithCString:dispatch_queue_get_label(*(a1 + 32)) encoding:4];
  v3 = sub_10F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Freeing HIDDevice on %@", &v6, 0xCu);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

BOOL sub_681C(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsagePage"];
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DeviceUsage"];
    v6 = (![v4 isEqual:&off_15488] || (objc_msgSend(v5, "isEqual:", &off_154A0) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_15488) || (objc_msgSend(v5, "isEqual:", &off_154B8) & 1) == 0) && (!objc_msgSend(v4, "isEqual:", &off_15488) || (objc_msgSend(v5, "isEqual:", &off_15488) & 1) == 0);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_6DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6DF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_10F8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "calling cancel handler", v4, 2u);
    }

    (*(WeakRetained[1] + 16))();
    v3 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

void sub_7064(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 528);
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 528);
    *(v7 + 528) = 0;
  }
}

void sub_7924(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 560);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_79CC;
  v7[3] = &unk_14688;
  v7[4] = v2;
  v4 = sub_5930(0x6FC23AC00uLL, 0x3B9ACA00uLL, v3, v7);
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

void sub_8E80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[480] & 1) == 0)
    {
      WeakRetained[480] = 1;
      if (!*(WeakRetained + 66))
      {
        clock_gettime(_CLOCK_MONOTONIC_RAW, (WeakRetained + 504));
        v4 = v3[70];
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_8F70;
        v7[3] = &unk_14538;
        objc_copyWeak(&v8, (a1 + 32));
        v5 = sub_5930(0xF4240uLL, 0x186A0uLL, v4, v7);
        v6 = v3[66];
        v3[66] = v5;

        objc_destroyWeak(&v8);
      }
    }
  }
}

void sub_8F70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = 0uLL;
    clock_gettime(_CLOCK_MONOTONIC_RAW, &v5);
    if ((*(&v5 + 1) + v5 * 1000000000.0 - (*(WeakRetained + 64) + *(WeakRetained + 63) * 1000000000.0)) * 0.000000001 >= *(WeakRetained + 122))
    {
      *(WeakRetained + 504) = v5;
      v2 = [WeakRetained isAnyHapticMotorEnabled];
      v3 = sub_10F8();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        if (v4)
        {
          sub_A48C(v3);
        }

        *(WeakRetained + 121) = 0;
        [WeakRetained dispatchHapticEvent];
      }

      else
      {
        if (v4)
        {
          sub_A448(v3);
        }

        [WeakRetained stopHaptics];
      }
    }
  }
}

uint64_t sub_9650()
{

  return kdebug_trace();
}

id sub_9678(uint64_t a1, void *a2)
{
  v3 = *(a1 + 656);

  return [a2 timestamp];
}

void sub_96A0(uint64_t a1)
{
  v1[5] = a1;

  dispatch_after(v2, v3, v1);
}

void sub_97B0()
{
  sub_58D4();
  sub_5898();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9820()
{
  sub_58C8();
  sub_5898();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_9890()
{
  sub_58D4();
  sub_5898();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9900()
{
  sub_58C8();
  sub_5898();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_9970()
{
  sub_5880();
  v3 = sub_10F8();
  if (sub_58B0(v3))
  {
    v4 = (*v2 + v1);
    v12 = *v4;
    v13[0] = v4[1];
    *(v13 + 9) = *(v4 + 25);
    v5 = sub_35D8(&v12);
    sub_58D4();
    sub_5860(&dword_0, v6, v7, "(Async) Sensor Calibration Info = %@", v8, v9, v10, v11, v12);
  }
}

void sub_9A34()
{
  sub_5880();
  v1 = sub_10F8();
  if (sub_58B0(v1))
  {
    sub_588C();
    sub_58A4();
    sub_5860(&dword_0, v2, v3, "(Async) Gyro Pitch Sensitivity = %f", v4, v5, v6, v7, v8);
  }
}

void sub_9AC8()
{
  sub_5880();
  v1 = sub_10F8();
  if (sub_58B0(v1))
  {
    sub_588C();
    sub_58A4();
    sub_5860(&dword_0, v2, v3, "(Async) Gyro Yaw Sensitivity = %f", v4, v5, v6, v7, v8);
  }
}

void sub_9B5C()
{
  sub_5880();
  v1 = sub_10F8();
  if (sub_58B0(v1))
  {
    sub_588C();
    sub_58A4();
    sub_5860(&dword_0, v2, v3, "(Async) Gyro Roll Sensitivity = %f", v4, v5, v6, v7, v8);
  }
}

void sub_9BF0()
{
  sub_5880();
  v1 = sub_10F8();
  if (sub_58B0(v1))
  {
    sub_588C();
    sub_58A4();
    sub_5860(&dword_0, v2, v3, "(Async) Accelerometer X Bias = %f", v4, v5, v6, v7, v8);
  }
}

void sub_9C84()
{
  sub_5880();
  v1 = sub_10F8();
  if (sub_58B0(v1))
  {
    sub_588C();
    sub_58A4();
    sub_5860(&dword_0, v2, v3, "(Async) Accelerometer Y Bias = %f", v4, v5, v6, v7, v8);
  }
}

void sub_9D18()
{
  sub_5880();
  v1 = sub_10F8();
  if (sub_58B0(v1))
  {
    sub_588C();
    sub_58A4();
    sub_5860(&dword_0, v2, v3, "(Async) Accelerometer Z Bias = %f", v4, v5, v6, v7, v8);
  }
}

void sub_9DAC()
{
  sub_5880();
  v1 = sub_10F8();
  if (sub_58B0(v1))
  {
    sub_588C();
    sub_58A4();
    sub_5860(&dword_0, v2, v3, "(Async) Accelerometer X Sensitivity = %f", v4, v5, v6, v7, v8);
  }
}

void sub_9E40()
{
  sub_5880();
  v1 = sub_10F8();
  if (sub_58B0(v1))
  {
    sub_588C();
    sub_58A4();
    sub_5860(&dword_0, v2, v3, "(Async) Accelerometer Y Sensitivity = %f", v4, v5, v6, v7, v8);
  }
}

void sub_9F14()
{
  sub_58D4();
  sub_5898();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_9F84()
{
  sub_58C8();
  sub_5898();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_9FF4()
{
  sub_58C8();
  sub_5898();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_A064(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v8 = v5;
    if (a3)
    {
      *(a1 + 664) = [v5 timestamp];
    }

    v6 = *(a1 + 656);
    [v8 timestamp];
    [v8 type];
    kdebug_trace();
    WeakRetained = objc_loadWeakRetained((a1 + 624));
    [WeakRetained dispatchEvent:v8];

    v5 = v8;
  }
}

uint64_t sub_A114(uint64_t result)
{
  if (result)
  {
    return *(result + 656);
  }

  return result;
}

void sub_A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10F8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 656);
    v8 = 134218498;
    v9 = v7;
    v10 = 2112;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_debug_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[%#010llx] setProperty: %@ forKey: %@", &v8, 0x20u);
  }
}

void sub_A2AC(uint64_t a1, void *a2)
{
  sub_9678(a1, a2);
  [v3 type];
  sub_9650();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_9630();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_7CBC;
  *(v2 + 24) = &unk_146D0;
  *(v2 + 32) = v5;
  sub_96A0(v3);
}

void sub_A35C(uint64_t a1, void *a2)
{
  sub_9678(a1, a2);
  [v3 type];
  sub_9650();
  dispatch_time(0, (*v4 * 1000000000.0));
  [v5 dispatchQueue];
  objc_claimAutoreleasedReturnValue();
  sub_9630();
  *(v2 + 8) = 3221225472;
  *(v2 + 16) = sub_7D3C;
  *(v2 + 24) = &unk_146D0;
  *(v2 + 32) = v5;
  sub_96A0(v3);
}

uint64_t sub_A40C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 656);
  }

  return kdebug_trace();
}