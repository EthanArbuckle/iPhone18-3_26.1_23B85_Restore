uint64_t sub_100044770@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000447C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100044820(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000393E4(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004488C()
{
  result = qword_100092138;
  if (!qword_100092138)
  {
    sub_10004380C(&qword_100092128);
    sub_100044918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092138);
  }

  return result;
}

unint64_t sub_100044918()
{
  result = qword_100092140;
  if (!qword_100092140)
  {
    sub_10004380C(&qword_100092118);
    sub_1000449D0();
    sub_100044C7C(&qword_1000921A8, &unk_1000921B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092140);
  }

  return result;
}

unint64_t sub_1000449D0()
{
  result = qword_100092148;
  if (!qword_100092148)
  {
    sub_10004380C(&qword_100092110);
    sub_100044A88();
    sub_100044C7C(&qword_1000921A0, &qword_100092120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092148);
  }

  return result;
}

unint64_t sub_100044A88()
{
  result = qword_100092150;
  if (!qword_100092150)
  {
    sub_10004380C(&qword_100092158);
    sub_100044B40();
    sub_100044C7C(&qword_100092190, &qword_100092198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092150);
  }

  return result;
}

unint64_t sub_100044B40()
{
  result = qword_100092160;
  if (!qword_100092160)
  {
    sub_10004380C(&qword_100092168);
    sub_100044BF8();
    sub_100044C7C(&qword_100092180, &qword_100092188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092160);
  }

  return result;
}

unint64_t sub_100044BF8()
{
  result = qword_100092170;
  if (!qword_100092170)
  {
    sub_10004380C(&qword_100092178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092170);
  }

  return result;
}

uint64_t sub_100044C7C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10004380C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100045070(id result)
{
  if (result)
  {
    sub_1000082C0();
    sub_1000082E8();
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    v5 = v4;

    v24[0] = kCAContextDisplayable;
    v24[1] = kCAContextSecure;
    v25[0] = kCFBooleanTrue;
    v25[1] = kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v7 = [CAContext remoteContextWithOptions:v6];
    v8 = *(v1 + 104);
    *(v1 + 104) = v7;

    LODWORD(v9) = 1148846080;
    [*(v1 + 104) setLevel:v9];
    [sub_100008288(104) setSecure:?];
    v10 = +[CALayer layer];
    v11 = *(v1 + 112);
    *(v1 + 112) = v10;

    v12 = *(v1 + 112);
    CGAffineTransformMakeScale(&v23, v5, v5);
    [v12 setAffineTransform:&v23];
    GSMainScreenPixelSize();
    v13 = sub_100008268();
    [v14 setFrame:v13];
    GSMainScreenOrientation();
    if (v15 != 0.0)
    {
      v16 = v15;
      v17 = *(v1 + 112);
      v26.origin.x = sub_100008268();
      MidY = CGRectGetMidY(v26);
      v27.origin.x = sub_100008268();
      [v17 setPosition:{MidY, CGRectGetMidX(v27)}];
      v19 = *(v1 + 112);
      if (v19)
      {
        [v19 affineTransform];
      }

      else
      {
        memset(&v22, 0, sizeof(v22));
      }

      CGAffineTransformRotate(&v23, &v22, -v16);
      [v19 setAffineTransform:&v23];
    }

    v20 = [CASecureIndicatorLayer layer:*&v22.a];
    v21 = *(v1 + 128);
    *(v1 + 128) = v20;

    [sub_100008288(128) setMasksToBounds:?];
    [*(v1 + 112) addSublayer:*(v1 + 128)];
    [*(v1 + 104) setLayer:*(v1 + 112)];

    return [*(v2 + 2864) commit];
  }

  return result;
}

void sub_100045308(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 0xC049000000000000;
    *(a1 + 80) = 0xC049000000000000;
    v2 = 0;
    switch(sub_1000352D8())
    {
      case 0:
      case 1:
      case 2:
        v9 = +[UIScreen mainScreen];
        [v9 scale];
        v11 = fabs(v10 + -2.0);

        sub_100008250();
        v13 = 10.0;
        if (v11 > 2.22044605e-16)
        {
          v13 = 13.0;
        }

        *(a1 + v12) = v13;
        goto LABEL_10;
      case 3:
      case 4:
      case 6:
        sub_100008250();
        *(a1 + v14) = 0x4030000000000000;
        v8 = 18.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v6 = 212.0;
        goto LABEL_26;
      case 5:
        sub_100008250();
        *(a1 + v20) = 0x4030000000000000;
        v8 = 18.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v6 = 268.0;
        goto LABEL_26;
      case 7:
      case 8:
        sub_100008250();
        *(a1 + v16) = 0x4028000000000000;
        v8 = 12.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v6 = 157.0;
        goto LABEL_26;
      case 9:
      case 10:
        sub_100008228();
        v8 = 19.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v15 = 0x4066000000000000;
        goto LABEL_19;
      case 11:
      case 12:
        sub_100008228();
        v8 = 19.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v15 = 0x406D000000000000;
LABEL_19:
        v6 = *&v15;
        goto LABEL_26;
      case 13:
      case 14:
        sub_100008228();
        v8 = 18.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v6 = 289.0;
        goto LABEL_26;
      case 15:
      case 16:
        sub_100008228();
        v8 = 19.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v6 = 252.0;
        goto LABEL_26;
      case 17:
      case 18:
        sub_100008228();
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v6 = 18.0;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v8 = 306.0;
        goto LABEL_26;
      case 19:
      case 20:
        sub_100008228();
        v8 = 18.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v6 = 363.0;
        goto LABEL_26;
      case 21:
      case 22:
        sub_100008250();
        *(a1 + v17) = 0x4031000000000000;
        v8 = 31.0;
        goto LABEL_21;
      case 23:
      case 24:
        sub_100008250();
        *(a1 + v18) = 0x4031000000000000;
        v8 = 28.0;
LABEL_21:
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v6 = 79.0;
        goto LABEL_26;
      case 25:
      case 26:
      case 27:
      case 28:
        *(a1 + 64) = 0x4031000000000000;
        v2 = 1;
        goto LABEL_23;
      case 29:
      case 30:
        sub_100008250();
        *(a1 + v19) = 0x402C000000000000;
LABEL_23:
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v8 = 39.0;
        v6 = 88.5;
        goto LABEL_26;
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
        sub_100008250();
        *(a1 + v3) = 0x402C000000000000;
LABEL_10:
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v6 = 3.0;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v8 = 3.0;
        goto LABEL_26;
      case 36:
      case 38:
      case 40:
      case 42:
      case 43:
        sub_100008250();
        *(a1 + v4) = 0x402C000000000000;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v6 = 16.0;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
        v8 = 16.0;
        goto LABEL_26;
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
        *(a1 + 64) = 0x4028000000000000;
        v2 = 1;
        v8 = 18.0;
        v5 = &OBJC_IVAR___CBRecordingIndicatorViewController__topOffset;
        v6 = 31.0;
        v7 = &OBJC_IVAR___CBRecordingIndicatorViewController__sideOffset;
LABEL_26:
        *(a1 + *v7) = v6;
        *(a1 + *v5) = v8;
        break;
      default:
        break;
    }

    v21 = [a1 location];
    if (v21 == 1)
    {
      v22 = +[UIScreen mainScreen];
      [v22 scale];
      v24 = fabs(v23 + -2.0);

      if (v24 <= 2.22044605e-16)
      {
        v26 = +[UIDevice currentDevice];
        v27 = [v26 userInterfaceIdiom];

        if (v27 == 1)
        {
          v25 = 0x402E000000000000;
        }

        else
        {
          v25 = 0x402A000000000000;
        }
      }

      else
      {
        v25 = 0x4032000000000000;
      }

      *(a1 + 64) = v25;
    }

    v28 = +[UIScreen mainScreen];
    [v28 scale];

    if ((v2 & 1) == 0)
    {
      v31 = +[UIScreen mainScreen];
      [v31 nativeScale];
    }

    sub_1000082A4(64, v29, v30);
    *(a1 + 64) = v32.n128_u64[0];
    sub_1000082A4(72, v32, v33);
    *(a1 + 72) = v34.n128_u64[0];
    sub_1000082A4(80, v34, v35);
    *(a1 + 80) = v36;
    if ((v21 - 1) <= 1)
    {
      *(a1 + 72) = 0xC059000000000000;
      *(a1 + 80) = 0xC059000000000000;
    }

    if ([UIApp userInterfaceLayoutDirection] != 1)
    {
      v37 = +[UIScreen mainScreen];
      [v37 bounds];
    }

    v60.origin.x = sub_10000823C();
    MidX = CGRectGetMidX(v60);
    v61.origin.x = sub_10000823C();
    MidY = CGRectGetMidY(v61);
    *(a1 + 88) = MidX;
    *(a1 + 96) = MidY;
    v40 = sub_10000823C();
    sub_1000459B4(v41, v40, v42, v43, v44, v45, v46);
    v47 = [a1 indicatorContainerView];
    v48 = sub_10000823C();
    [v49 setFrame:v48];

    v50 = [a1 indicatorView];
    v51 = sub_10000823C();
    [v52 setFrame:v51];

    if (v21 != 1)
    {
      v53 = sub_100008294();
      sub_100045A94(v53, v54, v55);
      v56 = sub_100008294();

      sub_100045B64(v56, v57, v58);
    }
  }
}

uint64_t sub_1000458A8(_BYTE *a1)
{
  if (a1)
  {
    if (+[FBSDeviceEmulationConfiguration isEmulatedDevice](FBSDeviceEmulationConfiguration, "isEmulatedDevice") && (+[FBSDeviceEmulationConfiguration hasEmulatedDeviceBounds](FBSDeviceEmulationConfiguration, "hasEmulatedDeviceBounds") & 1) != 0 || (v2 = [a1 location], v2 == 2))
    {
      v3 = 0;
    }

    else if (v2)
    {
      v3 = 1;
    }

    else
    {
      v3 = a1[120] ^ 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_10004592C(void *a1, uint64_t a2)
{
  if (a1 && a1[20] != a2)
  {
    a1[20] = a2;
    v4 = [a1 delegate];
    [v4 recordingIndicatorViewController:a1 didUpdateIndicatorState:a2];
  }
}

id sub_1000459B4(id result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (result)
  {
    sub_1000082C0();
    sub_1000082E8();
    v15 = [v7 indicatorView];
    v16 = sub_100018654([v15 indicatorType]);

    v17 = sub_10000827C();
    v18 = a4 * 0.5;
    if (!v16)
    {
      v18 = 0.0;
    }

    [v17 setCornerRadius:v18];
    [sub_10000827C() setBounds:{a2, a3, a4, a5}];
    [sub_10000827C() setPosition:{a6, a7}];
    v19 = *(v8 + 2864);

    return [v19 commit];
  }

  return result;
}

id sub_100045A94(id result, double a2, double a3)
{
  if (result)
  {
    sub_1000082C0();
    sub_1000082E8();
    v7 = [v3 indicatorView];
    v8 = sub_100018654([v7 indicatorType]);

    v9 = sub_10000827C();
    v10 = a2 * 0.5;
    if (!v8)
    {
      v10 = 0.0;
    }

    [v9 setCornerRadius:v10];
    [sub_10000827C() frame];
    sub_10000827C();
    sub_1000082DC();
    [v11 setFrame:?];
    [sub_10000827C() setPosition:{v3[11], v3[12]}];
    v12 = sub_10000827C();
    *&v13 = a3;
    [v12 setOpacity:v13];
    v14 = *(v4 + 2864);

    return [v14 commit];
  }

  return result;
}

void sub_100045B64(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v18 = [a1 indicatorView];
    sub_1000082DC();
    [v5 setBounds:?];
    [v18 setAlpha:a3];
    v6 = [a1 location] == 2 || *(a1 + 120) == 1 && !objc_msgSend(a1, "location");
    v7 = [a1 indicatorContainerView];
    v8 = v7;
    if (v6 && v7)
    {
      [v7 center];
      v10 = v9;
      v12 = v11;
      v13 = [v8 superview];
      [v8 convertPoint:v13 fromView:{v10, v12}];
      v15 = v14;
      v17 = v16;
    }

    else
    {
      v15 = *(a1 + 88);
      v17 = *(a1 + 96);
    }

    [v18 setCenter:{v15, v17}];
  }
}

id sub_100045CA4(id result)
{
  if (result)
  {
    v1 = result;
    v2 = +[UIScreen mainScreen];
    [v2 _referenceBounds];

    [UIApp userInterfaceLayoutDirection];
    sub_1000082DC();
    MidX = CGRectGetMidX(v7);
    sub_1000082DC();
    MidY = CGRectGetMidY(v8);
    *(v1 + 11) = MidX;
    *(v1 + 12) = MidY;
    +[CATransaction begin];
    sub_1000082E8();
    [*(v1 + 16) setPosition:{*(v1 + 11), *(v1 + 12)}];
    v5 = [v1 indicatorView];
    [v5 setCenter:{*(v1 + 11), *(v1 + 12)}];

    return +[CATransaction commit];
  }

  return result;
}

id *sub_100045F0C(id *result)
{
  if (result)
  {
    [result[1] stopAnimation:1];
    [sub_100008288(16) stopAnimation:?];
    [sub_100008288(24) stopAnimation:?];
    [sub_100008288(32) stopAnimation:?];
    [sub_100008288(40) stopAnimation:?];
    [sub_100008288(48) stopAnimation:?];
    v1 = sub_100008288(56);

    return [v1 stopAnimation:?];
  }

  return result;
}

void sub_100045FB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100045B64(WeakRetained, WeakRetained[8] * 1.2, 1.0);
}

void sub_1000463B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000463F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 64);
    v3 = 0.8;
    if (*(v1 + 120))
    {
      v3 = 1.0;
    }

    else
    {
      v2 = v2 * 0.8;
    }

    sub_100045B64(v1, v2, v3);
  }

  else
  {
    sub_10000825C(0);
  }
}

void sub_100046444(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10004592C(WeakRetained, 0);
}

void sub_100046488(uint64_t a1, void *a2, double a3)
{
  if (a1)
  {
    v4 = kCAFilterGaussianBlur;
    v5 = a2;
    v6 = [CAFilter filterWithType:v4];
    [v6 setName:@"gaussianBlur"];
    [v6 setValue:@"high" forKey:@"inputQuality"];
    v7 = [NSNumber numberWithDouble:a3];
    [v6 setValue:v7 forKey:@"inputRadius"];

    v9 = v6;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v5 setFilters:v8];
  }
}

void sub_1000465AC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, double a7)
{
  v16 = a2;
  v13 = a3;
  v14 = a5;
  if (a1)
  {
    v15 = sub_100046750(a1, v13, a4, v14, a7);
    [v16 addAnimation:v15 forKey:v13];
    if (a6)
    {
      [v16 setValue:v14 forKeyPath:v13];
    }
  }
}

void sub_100046680(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_100045B64(*(a1 + 32), WeakRetained[8], 1.0);
}

void sub_1000466E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_100045B64(*(a1 + 32), WeakRetained[8] * 0.5, 0.0);
}

id sub_100046750(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5)
{
  if (a1)
  {
    v8 = a4;
    v9 = a3;
    v10 = [CASpringAnimation animationWithKeyPath:a2];
    [v10 setBeginTime:CACurrentMediaTime()];
    [v10 setFillMode:kCAFillModeBackwards];
    [v10 setFromValue:v9];

    [v10 setToValue:v8];
    [v10 setMass:2.0];
    [v10 setStiffness:300.0];
    [v10 setDamping:50.0];
    [v10 setDuration:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10004684C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && [a1 indicatorState] == 2 && sub_1000458A8(a1) && (a2 == 1 || a3 == 1))
  {
    v7 = [a1 indicatorView];
    v8 = 0.0;
    if (a2 == 1)
    {
      v8 = 0.8;
      if (a1[120])
      {
        v8 = 1.0;
      }
    }

    v9 = v7;
    [v7 setAlpha:v8];
  }
}

void sub_100046914(char a1, NSObject **a2)
{
  v4 = CheckerBoardLogHandleForCategory();
  *a2 = v4;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v5 = @"on";
    }

    else
    {
      v5 = @"off";
    }

    v6 = [0 location];
    v7 = @"Standalone";
    if (v6 == 1)
    {
      v7 = @"StatusBar";
    }

    if (v6 == 2)
    {
      v7 = @"SystemAperture";
    }

    v8 = v7;
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] Turning %{public}@ at %{public}@ location (normal animation)", &v9, 0x16u);
  }
}

void sub_100046A2C(uint64_t a1, uint64_t a2)
{
  if (sub_1000458A8(a1))
  {
    v4 = *(a1 + 64);
    if (!*(a1 + 120))
    {
      v4 = v4 * 0.8;
    }

    v5 = 1.0;
    if (!*(a1 + 120))
    {
      v5 = 0.8;
    }

    sub_100045A94(a1, v4, v5);
    v6 = [a1 traitCollection];
    v7 = [v6 _backlightLuminance];

    if (v7 == 1 && (v8 = *(a2 + 32)) != 0)
    {
      if (*(v8 + 120))
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.8;
      }
    }

    else
    {
      v9 = 0.0;
    }

    v10 = *(a1 + 64);
    if (!*(a1 + 120))
    {
      v10 = v10 * 0.8;
    }

    sub_100045B64(a1, v10, v9);
  }

  sub_10004592C(a1, 2);
}

void sub_100046BB0(uint64_t a1)
{
  v2 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unable to find url to package %@:", &v3, 0xCu);
  }

  __assert_rtn("[OBWelcomeController(Animation) bundleUrlForPackageName:]", "OBWelcomeController+Animation.m", 47, "0");
}

void sub_100046C60(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = [a2 broadcastingForSetup];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Unable to set override pin to (%@) - broadcasting: (%d)", &v4, 0x12u);
}

void sub_100046E10(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Something is very, very wrong here (%ld)", &v2, 0xCu);
}

void sub_100046E88(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "This environment (%ld) is not supported by CheckerBoard, but allowing for now.", &v2, 0xCu);
}

void sub_100047048(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 passwordType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected authentication type %d for remote setup. Setup flow will fail when pushed.", v3, 8u);
}

void sub_1000470D4(id *a1)
{
  if (a1)
  {
    v5 = sub_100018610(a1[1]);
    v2 = objc_opt_class();
    v3 = [a1 layer];
    v4 = sub_1000188DC(v2, v3);

    [v4 setPrivacyIndicatorType:v5];
  }
}

void sub_1000471A0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Launched primary app with error: %@", &v2, 0xCu);
}

void sub_100047298(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to load data for APTicket from path (%@): %@", &v3, 0x16u);
}

void sub_100047320(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get path for APTicket: %@", &v2, 0xCu);
}

void sub_100047398(int a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to digest ticket, error %d, digestSize=%zu", v3, 0x12u);
}

void sub_100047708()
{
  sub_10001FD0C();
  sub_100003FC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100047744()
{
  sub_100028CAC();
  sub_100003FC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000477B4()
{
  sub_10001FD0C();
  sub_100003FC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000477F0()
{
  sub_100028CAC();
  sub_100003FC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100047860()
{
  sub_100028CAC();
  sub_100003FC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000478D0()
{
  sub_100028CAC();
  sub_100003FC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100047940()
{
  sub_10001FD0C();
  sub_100003FC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}