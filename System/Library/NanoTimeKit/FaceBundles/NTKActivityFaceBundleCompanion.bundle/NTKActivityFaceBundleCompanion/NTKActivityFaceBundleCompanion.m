void sub_15BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_15E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 72) = 0;
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 10);
    [v2 ntkRingsQuadDelegate_didStopAnimating];

    WeakRetained = v3;
  }
}

void sub_2224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2240(void *a1, int a2)
{
  v7 = a1;
  if (a2)
  {
    v3 = NTKPausedGradientDarkColor();
    v26 = v3;
    v5 = NTKPausedGradientDarkColor();
    v27 = v5;
    NTKPausedGradientDarkColor();
  }

  else
  {
    v2 = NTKMoveGradientDarkColor();
    v26 = v2;
    v4 = NTKExerciseGradientDarkColor();
    v27 = v4;
    NTKStandGradientDarkColor();
  }
  v8 = ;
  v28 = v8;
  v9 = [NSArray arrayWithObjects:&v26 count:3];

  if (a2)
  {

    v10 = NTKPausedGradientLightColor();
    v23 = v10;
    v11 = NTKPausedGradientLightColor();
    v24 = v11;
    NTKPausedGradientLightColor();
  }

  else
  {

    v10 = NTKMoveGradientLightColor();
    v23 = v10;
    v11 = NTKExerciseGradientLightColor();
    v24 = v11;
    NTKStandGradientLightColor();
  }
  v12 = ;
  v25 = v12;
  v13 = [NSArray arrayWithObjects:&v23 count:3];

  v14 = ARUIRingPauseRingsOpacityValue;
  v15 = ARUIRingEmptyOpacityValueDefault;
  if (a2)
  {
    v15 = ARUIRingPauseRingsOpacityValue;
  }

  else
  {
    v14 = ARUIRingOpacityValueDefault;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_7AB4;
  v18[3] = &unk_209A0;
  v19 = v9;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v16 = v13;
  v17 = v9;
  [v7 enumerateObjectsUsingBlock:v18];
}

void sub_248C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = *(a1 + 32);
      v7 = *(a1 + 80);
      *buf = 138412802;
      v33 = v5;
      v34 = 2112;
      v35 = v6;
      v36 = 1024;
      LODWORD(v37) = v7;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%@ rings updated with data model %@ with updateLabels:%i", buf, 0x1Cu);
    }

    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      *buf = 138413058;
      v33 = v10;
      v34 = 2048;
      v35 = v11;
      v36 = 2048;
      v37 = v12;
      v38 = 2048;
      v39 = v13;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%@ rings percentages update move %1.3f, exericse %1.3f, stand %1.3f", buf, 0x2Au);
    }

    if (*(a1 + 80) == 1)
    {
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_2800;
      v26 = &unk_20738;
      v27 = WeakRetained;
      v29 = *(a1 + 72);
      v28 = *(a1 + 32);
      v30 = *(a1 + 81);
      v31 = *(a1 + 82);
      v14 = objc_retainBlock(&v23);
      v15 = v14;
      if (*(a1 + 84) == 1)
      {
        [UIView transitionWithView:WeakRetained duration:5242880 options:v14 animations:0 completion:0.2, v23, v24, v25, v26, v27];
      }

      else
      {
        (v14[2])(v14);
      }

      v16 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = [WeakRetained[6] text];
        v20 = [WeakRetained[7] text];
        v21 = [WeakRetained[8] text];
        v22 = *(a1 + 85);
        *buf = 138413314;
        v33 = v18;
        v34 = 2112;
        v35 = v19;
        v36 = 2112;
        v37 = v20;
        v38 = 2112;
        v39 = v21;
        v40 = 1024;
        v41 = v22;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%@ rings labels update move %@, exercise %@, sedentary %@ with ringsViewPropertiesChanged:%i", buf, 0x30u);
      }
    }
  }
}

void sub_2800(uint64_t a1)
{
  v44 = [*(*(a1 + 32) + 48) text];
  v2 = [*(*(a1 + 32) + 56) text];
  v3 = [*(*(a1 + 32) + 64) text];
  v45 = [NTKActivityAnalogFaceBundle localizedStringForKey:@"ACTIVITY_INVALID_DATA" comment:@"---"];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) activityMoveMode];
  v6 = *(a1 + 40);
  if (v5 == &dword_0 + 2)
  {
    [v6 appleMoveTimeTotal];
    v8 = v7;
  }

  else
  {
    v9 = [v6 activeEnergyTotal];
    v10 = +[NTKActivityFaceViewFactory userActiveEnergyUnit];
    [v9 doubleValueForUnit:v10];
    v8 = floor(v11);
  }

  v12 = *(*(a1 + 32) + 48);
  if (*(a1 + 56) == 1)
  {
    [v12 setText:v45];
  }

  else
  {
    v13 = [NSNumber numberWithDouble:v4 * v8];
    v14 = [NSNumberFormatter localizedStringFromNumber:v13 numberStyle:0];
    [v12 setText:v14];
  }

  [*(a1 + 40) appleExerciseTimeTotal];
  v16 = *(*(a1 + 32) + 56);
  if (*(a1 + 57) == 1)
  {
    [*(*(a1 + 32) + 56) setText:v45];
  }

  else
  {
    v17 = [NSNumber numberWithDouble:v4 * v15];
    v18 = [NSNumberFormatter localizedStringFromNumber:v17 numberStyle:0];
    [v16 setText:v18];
  }

  v19 = [*(a1 + 40) appleStandHoursTotal];
  v20 = *(*(a1 + 32) + 64);
  if (*(a1 + 58) == 1)
  {
    [*(*(a1 + 32) + 64) setText:v45];
  }

  else
  {
    v21 = [NSNumber numberWithDouble:v4 * v19];
    v22 = [NSNumberFormatter localizedStringFromNumber:v21 numberStyle:0];
    [v20 setText:v22];
  }

  v23 = [*(*(a1 + 32) + 48) text];
  v24 = [v23 length];
  v25 = [v44 length];

  if (v24 != v25)
  {
    v26 = *(a1 + 32);
    v27 = v26[6];
    v28 = [v27 text];
    v29 = [v26 _activityLabelFontForDigits:{objc_msgSend(v28, "length")}];
    [v27 setFont:v29];

    [*(a1 + 32) setNeedsLayout];
  }

  v30 = [*(*(a1 + 32) + 56) text];
  v31 = [v30 length];
  v32 = [v2 length];

  if (v31 != v32)
  {
    v33 = *(a1 + 32);
    v34 = v33[7];
    v35 = [v34 text];
    v36 = [v33 _activityLabelFontForDigits:{objc_msgSend(v35, "length")}];
    [v34 setFont:v36];

    [*(a1 + 32) setNeedsLayout];
  }

  v37 = [*(*(a1 + 32) + 64) text];
  v38 = [v37 length];
  v39 = [v3 length];

  if (v38 != v39)
  {
    v40 = *(a1 + 32);
    v41 = v40[8];
    v42 = [v41 text];
    v43 = [v40 _activityLabelFontForDigits:{objc_msgSend(v42, "length")}];
    [v41 setFont:v43];

    [*(a1 + 32) setNeedsLayout];
  }
}

void sub_2F54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v20 = a2;
  v6 = [v5 device];
  v7 = _SubdialEndPositionForRingAtIndex(a3, v6);
  v9 = v8;

  v10 = v7 + *(a1 + 40);
  v11 = v9 + *(a1 + 48);
  v12 = [v20 text];
  v13 = [v12 length];
  v14 = [*(a1 + 32) device];
  v15 = v11 - _ActivityLabelYOffset(v13, v14);

  v16 = *(a1 + 64) + *(a1 + 72) * -2.0;
  v17 = [*(a1 + 32) _activityLabelFontForDigits:1];
  [v17 lineHeight];
  *&v18 = v18;
  v19 = ceilf(*&v18);

  [v20 setBounds:{CGPointZero.x, CGPointZero.y, v16, v19}];
  [v20 setCenter:{v10, v15}];
}

CGFloat _SubdialEndPositionForRingAtIndex(uint64_t a1, uint64_t a2)
{
  [NTKAnalogUtilities sceneSizeForDevice:a2];
  y = CGPointZero.y;
  x = v4 * -0.25;
  if (a1)
  {
    v6 = CGPointZero.y;
  }

  if (a1 != 1)
  {
    x = CGPointZero.x;
  }

  if (a1 == 2)
  {
    return CGPointZero.x;
  }

  else
  {
    return x;
  }
}

double _ActivityLabelYOffset(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_72E0(v3, v14);
      v5 = &v15;
      goto LABEL_11;
    }

    if (a1 == 4)
    {
      sub_72E0(v3, v16);
      v5 = &v17;
      goto LABEL_11;
    }

LABEL_8:
    sub_72E0(v3, v8);
    v5 = &v9;
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    sub_72E0(v3, v10);
    v5 = &v11;
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    goto LABEL_8;
  }

  sub_72E0(v3, v12);
  v5 = &v13;
LABEL_11:
  v6 = *v5;

  return v6;
}

void sub_3B58(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 40) == 1)
  {
    v4 = [v3 superview];

    if (!v4)
    {
      v5 = *(a1 + 32);
      if (v5[4] != v7 || (v6 = v5[10]) == 0)
      {
        v6 = v5[1];
      }

      [*(*(a1 + 32) + 40) insertSubview:v7 aboveSubview:v6];
    }
  }

  else
  {
    [v3 removeFromSuperview];
  }
}

_BYTE *sub_4F98(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[96] == 1)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_5050;
    v3[3] = &unk_207D0;
    v3[4] = *(a1 + 40);
    result = [result _enumerateActivityLabels:v3];
    if (*(a1 + 48) == 1)
    {
      return [*(*(a1 + 32) + 32) setAlpha:*(a1 + 40)];
    }
  }

  return result;
}

void sub_505C(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_510C;
  v5[3] = &unk_20820;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v6;
  [ARUIRingGroup animateWithDuration:v5 animations:v3];
}

id sub_510C(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(a1 + 32) setOpacity:v1];
}

id sub_5120(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  *&v2 = v2;
  return [a2 setOpacity:v2];
}

void sub_55E4(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a2;
  if (*(a1 + 288) != 1)
  {
    sub_57B4(3 - a3, *(a1 + 40), *(a1 + 48));
    v14 = v13;
    v15 = *(a1 + 72);
    CLKInterpolateBetweenFloatsClipped();
    *&v16 = v16;
    [v27 setThickness:v16];
    v17 = [*(a1 + 32) device];
    *&v18 = _SubdialEndPositionForRingAtIndex(a3, v17);
    v25 = v19;
    v26 = v18;

    *&v20.f64[0] = v26;
    *&v20.f64[1] = v25;
    [v27 setTranslation:COERCE_DOUBLE(vcvt_f32_f64(v20))];
    v21 = *(a1 + 64) - *(a1 + 72);
    [v27 thickness];
    v23 = v21 + v22;
    *&v23 = v23;
    [v27 setGroupDiameter:v23];
    if (*(a1 + 289) != 1)
    {
      goto LABEL_9;
    }

    *&v24 = v14;
    [v27 setPercentage:0 ofRingAtIndex:0 animated:v24];
    v12 = 0.0;
    goto LABEL_8;
  }

  if (*(a1 + 40) >= *(a1 + 48))
  {
    v5 = *(a1 + 48);
  }

  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  v8 = *(a1 + 88);
  CLKInterpolateBetweenFloatsClipped();
  *&v9 = v9;
  [v27 setThickness:v9];
  [v27 setTranslation:0.0];
  v10 = *(a1 + 80) + -((*(a1 + 88) + *(a1 + 96)) * (2 * a3)) * v7;
  *&v10 = v10;
  [v27 setGroupDiameter:v10];
  if (*(a1 + 289) == 1)
  {
    LODWORD(v11) = 1.0;
    [v27 setPercentage:0 ofRingAtIndex:0 animated:v11];
    v12 = (1.0 - v7) * 3.14159265;
    *&v12 = v12;
LABEL_8:
    [v27 setZRotation:{v12, v25, v26}];
  }

LABEL_9:
}

uint64_t sub_57B4(uint64_t result, double a2, double a3)
{
  v3 = (1.0 - a2) * 0.5;
  v4 = a2 + (1.0 - v3 * 0.5 - (v3 * 0.5 + a2)) * 0.25 * result;
  if (v4 <= a3 && v3 + v4 >= a3)
  {
    return CLKCompressFraction();
  }

  return result;
}

void sub_5810(double *a1, void *a2, uint64_t a3)
{
  v4 = 3 - a3;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2;
  sub_57B4(v4, v5, v6);
  [v7 setAlpha:v8 * *(*(a1 + 4) + 112)];
  v9 = *(*(a1 + 4) + 152);
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v11, v10, v10);
  [v7 setTransform:&v11];
}

id _CreateChronoHighlightedImageWithColors(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  sub_72E0(v3, &v16);
  v5 = *&v29 + *(&v16 + 1);
  v6 = [[UIGraphicsImageRenderer alloc] initWithSize:{*(&v17 + 1) + *&v29 * 2.0, *(&v17 + 1) + *&v29 * 2.0}];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5D0C;
  v11[3] = &unk_20928;
  v12 = v4;
  v13 = v3;
  v14 = v5;
  v15 = v5;
  v7 = v3;
  v8 = v4;
  v9 = [v6 imageWithActions:v11];

  return v9;
}

void sub_5D0C(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = 0;
    do
    {
      v4 = [*(a1 + 32) objectAtIndexedSubscript:v3];
      [v4 setFill];
      _SubdialEndPositionForRingAtIndex(v3, *(a1 + 40));
      v5 = [v11 format];
      [v5 bounds];
      CGRectGetMidX(v13);
      v6 = [v11 format];
      [v6 bounds];
      CGRectGetMidY(v14);

      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      CLKSizeCenteredAboutPointForDevice();
      v10 = [UIBezierPath bezierPathWithOvalInRect:?];
      [v10 fill];

      ++v3;
    }

    while (v3 < [*(a1 + 32) count]);
  }
}

id sub_6614(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(a1 + 32);
  if (v12)
  {
    [v12 drawInRect:{v5, v7, v9, v11}];
  }

  [*(a1 + 40) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 48) drawInRect:{v5, v7, v9, v11}];
  [*(a1 + 56) drawInRect:{v5, v7, v9, v11}];
  NTKCSecondHandCenterOffset();
  v13 = *(a1 + 64);
  v15 = v5 + v9 * 0.5 - v14;
  v17 = v7 + v11 * 0.5 - v16;

  return [v13 drawAtPoint:{v15, v17}];
}

void sub_6D0C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = [a3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 faceColorPalette];
    v9 = [v8 primaryColor];

    v10 = [*(a1 + 32) faceColorPalette];
    if ([v10 isMulticolor])
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 1.0;
    }

    [*(a1 + 32) setComplicationColor:v9];
    [*(a1 + 32) setInterpolatedComplicationColor:v9];
    [v7 transitionToMonochromeWithFraction:v11];
  }

  if ([v15 isEqualToString:NTKComplicationSlotBottomCenter] && objc_msgSend(v5, "conformsToProtocol:", &OBJC_PROTOCOL___NTKUtilityComplicationView))
  {
    v12 = *(a1 + 32);
    v13 = v5;
    v14 = [v12 faceColorPalette];
    [v13 applyFaceColorPalette:v14 units:1];
  }
}

void sub_72E0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v12 = a1;
  os_unfair_lock_lock(&unk_28DD0);
  if (qword_28DD8)
  {
    v3 = qword_28DD8 == v12;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v12 version], v4 != qword_28DE0))
  {
    qword_28DD8 = v12;
    qword_28DE0 = [v12 version];
    sub_743C(v12, v13);
    xmmword_28DA8 = v13[12];
    unk_28DB8 = v13[13];
    qword_28DC8 = v14;
    xmmword_28D68 = v13[8];
    unk_28D78 = v13[9];
    xmmword_28D88 = v13[10];
    unk_28D98 = v13[11];
    xmmword_28D28 = v13[4];
    unk_28D38 = v13[5];
    xmmword_28D48 = v13[6];
    unk_28D58 = v13[7];
    xmmword_28CE8 = v13[0];
    unk_28CF8 = v13[1];
    xmmword_28D08 = v13[2];
    unk_28D18 = v13[3];
  }

  v5 = unk_28DB8;
  *(a2 + 192) = xmmword_28DA8;
  *(a2 + 208) = v5;
  *(a2 + 224) = qword_28DC8;
  v6 = unk_28D78;
  *(a2 + 128) = xmmword_28D68;
  *(a2 + 144) = v6;
  v7 = unk_28D98;
  *(a2 + 160) = xmmword_28D88;
  *(a2 + 176) = v7;
  v8 = unk_28D38;
  *(a2 + 64) = xmmword_28D28;
  *(a2 + 80) = v8;
  v9 = unk_28D58;
  *(a2 + 96) = xmmword_28D48;
  *(a2 + 112) = v9;
  v10 = unk_28CF8;
  *a2 = xmmword_28CE8;
  *(a2 + 16) = v10;
  v11 = unk_28D18;
  *(a2 + 32) = xmmword_28D08;
  *(a2 + 48) = v11;
  os_unfair_lock_unlock(&unk_28DD0);
}

void sub_743C(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  v3 = a1;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  [v4 scaledValue:13.0];
  *a2 = v5;
  v68[0] = &off_21568;
  v68[1] = &off_21580;
  v69[0] = &off_21D58;
  v69[1] = &off_21D68;
  v6 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];
  [v4 scaledValue:v6 withOverrides:120.5];
  *(a2 + 24) = v7;

  [v4 scaledValue:3 withOverride:11.0 forSizeClass:12.5];
  *(a2 + 32) = v8;
  v66[0] = &off_21568;
  v66[1] = &off_21580;
  v67[0] = &off_21D78;
  v67[1] = &off_21D88;
  v9 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
  [v4 scaledValue:v9 withOverrides:42.0];
  *(a2 + 8) = v10;

  [v4 scaledValue:0 withOverride:7.0 forSizeClass:7.0];
  *(a2 + 16) = v11;
  [v4 scaledValue:2.5];
  *(a2 + 40) = v12;
  *(a2 + 216) = 545;
  v64[0] = &off_21568;
  v64[1] = &off_21580;
  v65[0] = &off_21D98;
  v65[1] = &off_21DA8;
  v13 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
  [v4 scaledValue:v13 withOverrides:142.0];
  *(a2 + 48) = v14;

  [NTKAnalogUtilities sceneSizeForDevice:v3];
  v16 = v15;

  *(a2 + 64) = v16 + -3.0;
  v62[0] = &off_21568;
  v62[1] = &off_21580;
  v63[0] = &off_21DB8;
  v63[1] = &off_21DC8;
  v17 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
  [v4 scaledValue:v17 withOverrides:93.0];
  *(a2 + 56) = v18;

  [v4 scaledValue:14.5];
  *(a2 + 72) = v19;
  [v4 scaledValue:13.5];
  *(a2 + 80) = v20;
  [v4 scaledValue:12.5];
  *(a2 + 88) = v21;
  [v4 scaledValue:11.5];
  *(a2 + 96) = v22;
  v60[0] = &off_21568;
  v60[1] = &off_21580;
  v61[0] = &off_21DD8;
  v61[1] = &off_21DE8;
  v60[2] = &off_21598;
  v60[3] = &off_215B0;
  v61[2] = &off_21DF8;
  v61[3] = &off_21E08;
  v23 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:4];
  [v4 scaledValue:v23 withOverrides:9.5];
  *(a2 + 104) = v24;

  v58[0] = &off_215C8;
  v58[1] = &off_21568;
  v59[0] = &off_21E18;
  v59[1] = &off_21E18;
  v58[2] = &off_21580;
  v58[3] = &off_21598;
  v59[2] = &off_21E18;
  v59[3] = &off_21E28;
  v25 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:4];
  [v4 scaledValue:v25 withOverrides:1.0];
  *(a2 + 112) = v26;

  v56[0] = &off_215C8;
  v56[1] = &off_21568;
  v57[0] = &off_21E18;
  v57[1] = &off_21E18;
  v56[2] = &off_21580;
  v57[2] = &off_21E18;
  v27 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
  [v4 scaledValue:v27 withOverrides:1.0];
  *(a2 + 120) = v28;

  v54[0] = &off_215C8;
  v54[1] = &off_21568;
  v55[0] = &off_21E18;
  v55[1] = &off_21E18;
  v54[2] = &off_21580;
  v55[2] = &off_21E18;
  v29 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:3];
  [v4 scaledValue:v29 withOverrides:1.0];
  *(a2 + 128) = v30;

  v52[0] = &off_215C8;
  v52[1] = &off_21568;
  v53[0] = &off_21E18;
  v53[1] = &off_21E18;
  v52[2] = &off_21580;
  v53[2] = &off_21E18;
  v31 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];
  [v4 scaledValue:v31 withOverrides:1.0];
  *(a2 + 136) = v32;

  v50[0] = &off_215C8;
  v50[1] = &off_21568;
  v51[0] = &off_21E18;
  v51[1] = &off_21E18;
  v50[2] = &off_21580;
  v50[3] = &off_21598;
  v51[2] = &off_21E18;
  v51[3] = &off_21E18;
  v50[4] = &off_215B0;
  v51[4] = &off_21E38;
  v33 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:5];
  [v4 scaledValue:v33 withOverrides:1.0];
  *(a2 + 144) = v34;

  v48[0] = &off_21568;
  v48[1] = &off_215C8;
  v49[0] = &off_21E48;
  v49[1] = &off_21E58;
  v48[2] = &off_21580;
  v48[3] = &off_215E0;
  v49[2] = &off_21E18;
  v49[3] = &off_21E38;
  v35 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:4];
  [v4 scaledValue:v35 withOverrides:-0.5];
  v37 = v36;

  *(a2 + 152) = 0;
  *(a2 + 160) = v37;
  v46[0] = &off_21568;
  v46[1] = &off_21580;
  v47[0] = &off_21E68;
  v47[1] = &off_21E18;
  v38 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
  [v4 scaledValue:v38 withOverrides:-0.5];
  v40 = v39;

  *(a2 + 168) = 0;
  *(a2 + 176) = v40;
  v44[0] = &off_21568;
  v44[1] = &off_215C8;
  v45[0] = &off_21E38;
  v45[1] = &off_21E38;
  v44[2] = &off_21580;
  v44[3] = &off_21598;
  v45[2] = &off_21E78;
  v45[3] = &off_21E88;
  v44[4] = &off_215B0;
  v44[5] = &off_215E0;
  v45[4] = &off_21E88;
  v45[5] = &off_21DF8;
  v45[6] = &off_21E98;
  v44[6] = &off_215F8;
  v44[7] = &off_21610;
  v44[8] = &off_21628;
  v45[7] = &off_21DE8;
  v45[8] = &off_21EA8;
  v41 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:9];
  [v4 scaledValue:v41 withOverrides:3.5];
  *(a2 + 184) = v42;

  *(a2 + 192) = xmmword_18860;
  *(a2 + 208) = 0x4012000000000000;
  [v4 scaledValue:3 withOverride:34.0 forSizeClass:40.0];
  *(a2 + 224) = v43;
}

void sub_7AB4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v10 = a2;
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v10 setTopColor:v6 bottomColor:v7 ofRingAtIndex:0];

  LODWORD(v8) = *(a1 + 48);
  [v10 setTrackOpacity:0 ofRingAtIndex:v8];
  LODWORD(v9) = *(a1 + 52);
  [v10 setEmptyOpacity:0 ofRingAtIndex:v9];
}

uint64_t sub_7B6C(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_28DFC);
  if (qword_28E00)
  {
    v3 = qword_28E00 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_28E08))
  {
    v5 = byte_28DF8;
  }

  else
  {
    qword_28E00 = v2;
    qword_28E08 = [v2 version];
    sub_7C14(qword_28E08, v2);
    v5 = 1;
    byte_28DF8 = 1;
  }

  os_unfair_lock_unlock(&stru_28DFC);

  return v5;
}

void sub_7C14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [UIColor colorWithWhite:1.0 alpha:0.250980392];
  v4 = [UIColor colorWithWhite:1.0 alpha:0.250980392, v3];
  v14[1] = v4;
  v5 = [UIColor colorWithWhite:1.0 alpha:0.250980392];
  v14[2] = v5;
  v6 = [NSArray arrayWithObjects:v14 count:3];
  v7 = _CreateChronoHighlightedImageWithColors(v2, v6);

  v8 = qword_28DE8;
  qword_28DE8 = v7;

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = CLKClearCacheRequestNotification;
  v11 = +[NSOperationQueue mainQueue];
  v12 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:&stru_209E0];
  v13 = qword_28DF0;
  qword_28DF0 = v12;
}

void sub_7DA8(id a1, NSNotification *a2)
{
  v2 = qword_28DE8;
  qword_28DE8 = 0;
}

uint64_t sub_7DB8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_28E24);
  if (qword_28E28)
  {
    v3 = qword_28E28 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_28E30))
  {
    v5 = byte_28E20;
  }

  else
  {
    qword_28E28 = v2;
    qword_28E30 = [v2 version];
    sub_7E60(qword_28E30, v2);
    v5 = 1;
    byte_28E20 = 1;
  }

  os_unfair_lock_unlock(&stru_28E24);

  return v5;
}

void sub_7E60(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [UIColor colorWithRed:0.588235294 green:0.117647059 blue:0.282352941 alpha:0.5];
  v4 = [UIColor colorWithRed:0.384313725 green:0.596078431 blue:0.062745098 alpha:0.5, v3];
  v14[1] = v4;
  v5 = [UIColor colorWithRed:0.0470588235 green:0.603921569 blue:0.588235294 alpha:0.5];
  v14[2] = v5;
  v6 = [NSArray arrayWithObjects:v14 count:3];
  v7 = _CreateChronoHighlightedImageWithColors(v2, v6);

  v8 = qword_28E10;
  qword_28E10 = v7;

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = CLKClearCacheRequestNotification;
  v11 = +[NSOperationQueue mainQueue];
  v12 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:&stru_20A00];
  v13 = qword_28E18;
  qword_28E18 = v12;
}

void sub_8028(id a1, NSNotification *a2)
{
  v2 = qword_28E10;
  qword_28E10 = 0;
}

uint64_t sub_8038(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_28E44);
  if (qword_28E48)
  {
    v3 = qword_28E48 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_28E50))
  {
    v5 = byte_28E40;
  }

  else
  {
    qword_28E48 = v2;
    qword_28E50 = [v2 version];
    sub_80E0(qword_28E50, v2);
    v5 = 1;
    byte_28E40 = 1;
  }

  os_unfair_lock_unlock(&stru_28E44);

  return v5;
}

void sub_80E0(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_72E0(v2, v9);
  v3 = v10;
  sub_72E0(v2, v7);

  v6 = [[UIGraphicsImageRenderer alloc] initWithSize:{v3 + v8, v3 + v8}];
  v4 = [v6 imageWithActions:&stru_20A40];
  v5 = qword_28E38;
  qword_28E38 = v4;
}

void sub_818C(id a1, UIGraphicsImageRendererContext *a2)
{
  v2 = a2;
  v3 = [UIColor colorWithWhite:1.0 alpha:0.250980392];
  [v3 setFill];

  v5 = [(UIGraphicsImageRendererContext *)v2 format];

  [v5 bounds];
  v4 = [UIBezierPath bezierPathWithOvalInRect:?];
  [v4 fill];
}

void sub_8234(id a1)
{
  v5 = +[NSNotificationCenter defaultCenter];
  v1 = CLKClearCacheRequestNotification;
  v2 = +[NSOperationQueue mainQueue];
  v3 = [v5 addObserverForName:v1 object:0 queue:v2 usingBlock:&stru_20AA0];
  v4 = qword_28E58;
  qword_28E58 = v3;
}

void sub_82D4(id a1, NSNotification *a2)
{
  v2 = qword_28E38;
  qword_28E38 = 0;
}

id sub_82EC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_28E70);
  if (qword_28E78)
  {
    v3 = qword_28E78 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_28E80))
  {
    qword_28E78 = v2;
    qword_28E80 = [v2 version];
    v5 = qword_28E68;
    qword_28E68 = &off_21B30;
  }

  v6 = qword_28E68;
  os_unfair_lock_unlock(&unk_28E70);

  return v6;
}

id NTKIsWheelchairUser()
{
  if (qword_28E90 != -1)
  {
    sub_13158();
  }

  v1 = qword_28E88;

  return [v1 isWheelchairUser];
}

void sub_8DC8(id a1)
{
  v3 = +[HKHealthStore fiui_sharedHealthStoreForCarousel];
  v1 = [[_HKWheelchairUseCharacteristicCache alloc] initWithHealthStore:v3];
  v2 = qword_28E88;
  qword_28E88 = v1;
}

void sub_90EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadCurrentDataModelForce:1];
}

id _IsDataModelWithinToday(void *a1)
{
  v1 = a1;
  v2 = +[NSCalendar currentCalendar];
  v3 = [v1 date];

  v4 = [v2 isDateInToday:v3];
  return v4;
}

void _ClearLastGoodDataModel()
{
  v0 = __LastGoodDataModel;
  __LastGoodDataModel = 0;
}

id sub_93C4(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updateRingsForCurrentDataModelAnimated:1];
}

void sub_94BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_9558;
  v5[3] = &unk_20B10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_9558(uint64_t a1)
{
  *(*(a1 + 32) + 51) = 0;
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updateRingsForCurrentDataModelAnimated:1];
}

void sub_A148(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _keylinePaddingForState:a2];
  v5 = v4;
  v6 = [*(a1 + 40) complicationLayoutforSlot:NTKComplicationSlotTopLeft];
  v7 = *(a1 + 72) * 0.5 - *(a1 + 88);
  v8 = *(a1 + 80) * 0.5 - *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 48);
  v11 = *(a1 + 128);
  v30 = *(a1 + 112);
  v31 = v11;
  v32 = *(a1 + 144);
  v12 = [NTKComplicationLayoutRule layoutRuleForDevice:v10 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:&v30 clip:v7 - v9 * 0.5 contentTransform:v8 - v9 * 0.5, v9, v9, v5, v5, v5, v5];
  [v6 setDefaultLayoutRule:v12 forState:a2];
  v13 = *(a1 + 160);
  v14 = *(a1 + 48);
  v15 = *(a1 + 184);
  v30 = *(a1 + 168);
  v31 = v15;
  v32 = *(a1 + 200);
  v16 = [NTKComplicationLayoutRule layoutRuleForDevice:v14 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:&v30 clip:v7 - v13 * 0.5 contentTransform:v8 - v13 * 0.5, v13, v13, v5, v5, v5, v5];

  [v6 setOverrideLayoutRule:v16 forState:a2 layoutOverride:4];
  v17 = [*(a1 + 40) complicationLayoutforSlot:NTKComplicationSlotTopRight];

  v18 = *(a1 + 72) * 0.5 + *(a1 + 88);
  [*(a1 + 32) _lisaGapForState:a2];
  v20 = v18 - v19;
  v21 = *(a1 + 104);
  v22 = *(a1 + 80) * 0.5 - *(a1 + 96);
  v23 = *(a1 + 48);
  v24 = *(a1 + 128);
  v30 = *(a1 + 112);
  v31 = v24;
  v32 = *(a1 + 144);
  v25 = [NTKComplicationLayoutRule layoutRuleForDevice:v23 withReferenceFrame:3 horizontalLayout:3 verticalLayout:1 keylinePadding:&v30 clip:v20 - v21 * 0.5 contentTransform:v22 - v21 * 0.5, v21, v21, v5, v5, v5, v5];

  [v17 setDefaultLayoutRule:v25 forState:a2];
  v26 = *(a1 + 160);
  v27 = *(a1 + 48);
  v28 = *(a1 + 184);
  v30 = *(a1 + 168);
  v31 = v28;
  v32 = *(a1 + 200);
  v29 = [NTKComplicationLayoutRule layoutRuleForDevice:v27 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:&v30 clip:v20 - v26 * 0.5 contentTransform:v22 - v26 * 0.5, v26, v26, v5, v5, v5, v5];

  [v17 setOverrideLayoutRule:v29 forState:a2 layoutOverride:4];
}

void sub_A3F0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _keylinePaddingForState:a2];
  v5 = v4;
  [*(a1 + 32) _edgeGapForState:a2];
  v7 = v5 + v6;
  v8 = *(a1 + 40);
  NTKCircularSmallComplicationDiameter();
  v10 = v9;
  v11 = *(a1 + 40);
  NTKCircularSmallComplicationDiameter();
  v13 = v12;
  v14 = [NTKComplicationLayoutRule layoutRuleForDevice:*(a1 + 40) withReferenceFrame:3 horizontalLayout:3 verticalLayout:v7 keylinePadding:v7, v10, v12, v5, v5, v5, v5];
  v15 = [*(a1 + 48) complicationLayoutforSlot:NTKComplicationSlotTopLeft];
  [v15 setDefaultLayoutRule:v14 forState:a2];

  v16 = *(a1 + 72) - v10 - v7;
  [*(a1 + 32) _lisaGapForState:a2];
  v19 = [NTKComplicationLayoutRule layoutRuleForDevice:*(a1 + 40) withReferenceFrame:3 horizontalLayout:3 verticalLayout:v16 - v17 keylinePadding:v7, v10, v13, v5, v5, v5, v5];

  v18 = [*(a1 + 48) complicationLayoutforSlot:NTKComplicationSlotTopRight];
  [v18 setDefaultLayoutRule:v19 forState:a2];
}

void sub_B1C8(id a1)
{
  v3 = NTKComplicationSlotBottomCenter;
  v1 = [NSArray arrayWithObjects:&v3 count:1];
  v2 = qword_28EA0;
  qword_28EA0 = v1;
}

void sub_B28C(id a1)
{
  v3[0] = NTKComplicationSlotTopLeft;
  v3[1] = NTKComplicationSlotTopRight;
  v1 = [NSArray arrayWithObjects:v3 count:2];
  v2 = qword_28EB0;
  qword_28EB0 = v1;
}

void sub_B3AC(uint64_t a1)
{
  v5 = [*(a1 + 32) _utilityComplicationSlots];
  v2 = [*(a1 + 32) _colorComplicationSlots];
  v3 = [v5 arrayByAddingObjectsFromArray:v2];
  v4 = qword_28EC0;
  qword_28EC0 = v3;
}

double sub_B6EC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_28EF0);
  if (qword_28EF8)
  {
    v3 = qword_28EF8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_28F00))
  {
    v5 = qword_28ED0;
  }

  else
  {
    qword_28EF8 = v2;
    qword_28F00 = [v2 version];
    v5 = sub_B7EC(qword_28F00, v2);
    qword_28ED0 = v5;
    qword_28ED8 = v6;
    qword_28EE0 = v7;
    qword_28EE8 = v8;
  }

  os_unfair_lock_unlock(&unk_28EF0);

  return *&v5;
}

double sub_B7EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  v14[0] = &off_21700;
  v14[1] = &off_21718;
  v15[0] = &off_21EB8;
  v15[1] = &off_21EB8;
  v14[2] = &off_21730;
  v14[3] = &off_21748;
  v15[2] = &off_21ED8;
  v15[3] = &off_21EE8;
  v14[4] = &off_21760;
  v14[5] = &off_21778;
  v15[4] = &off_21EF8;
  v15[5] = &off_21F08;
  v14[6] = &off_21790;
  v14[7] = &off_217A8;
  v15[6] = &off_21F18;
  v15[7] = &off_21F28;
  v4 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];
  [v3 scaledValue:v4 withOverrides:6.0];
  v6 = v5;

  [v2 screenBounds];
  v12[0] = &off_21730;
  v12[1] = &off_21748;
  v13[0] = &off_21F38;
  v13[1] = &off_21F48;
  v12[2] = &off_21760;
  v12[3] = &off_21778;
  v13[2] = &off_21F58;
  v13[3] = &off_21F68;
  v12[4] = &off_21790;
  v13[4] = &off_21F78;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  [v3 scaledValue:v7 withOverrides:60.0];

  v10[0] = &off_21730;
  v10[1] = &off_21748;
  v11[0] = &off_21F88;
  v11[1] = &off_21F98;
  v10[2] = &off_21760;
  v10[3] = &off_21778;
  v11[2] = &off_21FA8;
  v11[3] = &off_21FB8;
  v10[4] = &off_217A8;
  v11[4] = &off_21FB8;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
  [v3 scaledValue:v8 withOverrides:77.5];

  return v6;
}

void sub_C428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_C440(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 72) - *(a1 + 88) * 5.2;
  v4 = *(*(*(a1 + 48) + 8) + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 32);
  CLKRoundForDevice();
  [v7 ntk_setBoundsAndPositionFromFrame:{v3, v8, *(a1 + 88) * 5.2, *(a1 + 104)}];
  [*(*(a1 + 32) + 32) frame];
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 112) + v9;
  v10 = *(a1 + 72) - *(a1 + 88) * 3.2;
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 40);
  v13 = *(*(*(a1 + 48) + 8) + 24) + *(a1 + 96);
  CLKRoundForDevice();
  [v12 ntk_setBoundsAndPositionFromFrame:{v10, v14, *(a1 + 88) * 3.2, *(a1 + 104)}];
  [*(*(a1 + 32) + 40) frame];
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 112) + v15;
  v16 = *(a1 + 40);
  v17 = *(*(a1 + 32) + 48);
  v18 = *(a1 + 72) - *(a1 + 88) * 2.2;
  v19 = *(*(*(a1 + 48) + 8) + 24) + *(a1 + 96);
  CLKRoundForDevice();
  v21 = *(a1 + 88) * 2.2;
  v22 = *(a1 + 104);

  return [v17 ntk_setBoundsAndPositionFromFrame:{v18, v20, v21, v22}];
}

id sub_C8FC(uint64_t a1, void *a2, double a3)
{
  sub_10BA0(a1, a2);
  if (qword_290B8 != -1)
  {
    sub_13194();
  }

  v5 = *(a1 + 16) + a3 * 2.0;
  v6 = [NSNumber numberWithDouble:floor(v5)];
  v7 = [qword_29090 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v8 = [[UIGraphicsImageRenderer alloc] initWithSize:{v5, v5}];
    v7 = [v8 imageWithActions:&stru_20CE8];
    [qword_29090 setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

id sub_D318(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) device];
  v5 = [NTKDigitalTimeLabel labelWithOptions:0 forDevice:v4];

  [v5 setUserInteractionEnabled:0];
  v6 = +[NTKTimeOffsetManager sharedManager];
  [v6 timeOffset];
  [v5 setTimeOffset:?];

  v7 = [*(a1 + 32) _labelFontMonospaced:0];
  [v5 setFont:v7];

  [v5 setShowSeconds:a2];
  [v5 setOverrideDate:*(*(a1 + 32) + 80) duration:0.0];
  [*(*(a1 + 32) + 72) bounds];
  v9 = v8;
  [v5 bounds];
  v11 = v9 - v10 * 0.5;
  [*(*(a1 + 32) + 72) bounds];
  [v5 setCenter:{v11, v12 * 0.5}];
  v13 = [*(a1 + 32) timeView];
  v14 = [v13 color];
  [v5 setColor:v14];

  v15 = objc_opt_new();
  [v15 addSubview:v5];

  return v15;
}

id sub_D6E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_D75C;
  v3[3] = &unk_207D0;
  v3[4] = *(a1 + 40);
  return [v1 _enumerateActivityLabels:v3];
}

void sub_D768(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 24) ringGroups];
  v2 = [v4 objectAtIndexedSubscript:0];
  *&v3 = v1;
  [v2 setOpacity:v3];
}

void sub_EB48(void *a1, int a2)
{
  v7 = a1;
  if (a2)
  {
    v3 = NTKPausedGradientDarkColor();
    v26 = v3;
    v5 = NTKPausedGradientDarkColor();
    v27 = v5;
    NTKPausedGradientDarkColor();
  }

  else
  {
    v2 = NTKStandGradientDarkColor();
    v26 = v2;
    v4 = NTKExerciseGradientDarkColor();
    v27 = v4;
    NTKMoveGradientDarkColor();
  }
  v8 = ;
  v28 = v8;
  v9 = [NSArray arrayWithObjects:&v26 count:3];

  if (a2)
  {

    v10 = NTKPausedGradientLightColor();
    v23 = v10;
    v11 = NTKPausedGradientLightColor();
    v24 = v11;
    NTKPausedGradientLightColor();
  }

  else
  {

    v10 = NTKStandGradientLightColor();
    v23 = v10;
    v11 = NTKExerciseGradientLightColor();
    v24 = v11;
    NTKMoveGradientLightColor();
  }
  v12 = ;
  v25 = v12;
  v13 = [NSArray arrayWithObjects:&v23 count:3];

  v14 = ARUIRingPauseRingsOpacityValue;
  v15 = ARUIRingEmptyOpacityValueDefault;
  if (a2)
  {
    v15 = ARUIRingPauseRingsOpacityValue;
  }

  else
  {
    v14 = ARUIRingOpacityValueDefault;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10AEC;
  v18[3] = &unk_20C88;
  v19 = v9;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v16 = v13;
  v17 = v9;
  [v7 enumerateObjectsUsingBlock:v18];
}

void sub_ED94(uint64_t a1)
{
  v37 = [*(*(a1 + 32) + 32) text];
  v2 = [*(*(a1 + 32) + 40) text];
  v3 = [*(*(a1 + 32) + 48) text];
  v39 = _ActivityLabelNumberFormatter();
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 _layoutConstants];
    v38 = v40;
  }

  else
  {
    v38 = 0;
  }

  v5 = [NTKActivityDigitalFaceBundle localizedStringForKey:@"ACTIVITY_INVALID_DATA" comment:@"---"];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) activityMoveMode];
  v8 = *(a1 + 40);
  v35 = v2;
  if (v7 == &dword_0 + 2)
  {
    [v8 appleMoveTimeTotal];
    v10 = v9;
  }

  else
  {
    v11 = [v8 activeEnergyTotal];
    v12 = +[NTKActivityFaceViewFactory userActiveEnergyUnit];
    [v11 doubleValueForUnit:v12];
    v10 = floor(v13);
  }

  v14 = *(*(a1 + 32) + 32);
  if (*(a1 + 56) == 1)
  {
    [*(*(a1 + 32) + 32) setText:v5];
  }

  else
  {
    v15 = [NSNumber numberWithDouble:v6 * v10];
    v16 = [v39 stringFromNumber:v15];
    [v14 setText:v16];
  }

  v17 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    *(v17 + 168) = v38;
  }

  else
  {
    v18 = [*(v17 + 32) text];
    *(*(a1 + 32) + 168) = [v18 length];
  }

  [*(a1 + 40) appleExerciseTimeTotal];
  v20 = *(*(a1 + 32) + 40);
  if (*(a1 + 57) == 1)
  {
    [*(*(a1 + 32) + 40) setText:v5];
  }

  else
  {
    v21 = [NSNumber numberWithDouble:v6 * v19];
    v22 = [v39 stringFromNumber:v21];
    [v20 setText:v22];
  }

  v23 = *(a1 + 32);
  if (*(a1 + 57) == 1)
  {
    *(v23 + 176) = v38;
  }

  else
  {
    v24 = [*(v23 + 40) text];
    *(*(a1 + 32) + 176) = [v24 length];
  }

  v25 = [*(a1 + 40) appleStandHoursTotal];
  v26 = *(*(a1 + 32) + 48);
  if (*(a1 + 58) == 1)
  {
    [*(*(a1 + 32) + 48) setText:v5];
  }

  else
  {
    v27 = [NSNumber numberWithDouble:v6 * v25];
    v28 = [v39 stringFromNumber:v27];
    [v26 setText:v28];
  }

  v29 = *(a1 + 32);
  if (*(a1 + 58) == 1)
  {
    *(v29 + 184) = v38;
  }

  else
  {
    v30 = [*(v29 + 48) text];
    *(*(a1 + 32) + 184) = [v30 length];
  }

  v31 = *(*(a1 + 32) + 168);
  if (v31 != [v37 length] || (v32 = *(*(a1 + 32) + 176), v32 != objc_msgSend(v36, "length")) || (v33 = *(*(a1 + 32) + 184), v33 != objc_msgSend(v3, "length")))
  {
    v34 = [*(a1 + 32) foregroundContainerView];
    [v34 setNeedsLayout];
  }
}

id _ActivityLabelNumberFormatter()
{
  if (qword_28F38 != -1)
  {
    sub_131A8();
  }

  v1 = qword_28F30;

  return v1;
}

uint64_t sub_F7AC(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_28F1C);
  if (qword_28F20)
  {
    v3 = qword_28F20 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_28F28))
  {
    v5 = byte_28F18;
  }

  else
  {
    qword_28F20 = v2;
    qword_28F28 = [v2 version];
    xmmword_28F08 = CGSizeZero;
    v5 = 1;
    byte_28F18 = 1;
  }

  os_unfair_lock_unlock(&stru_28F1C);

  return v5;
}

void sub_FDBC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_28F30;
  qword_28F30 = v1;

  v3 = qword_28F30;
  v4 = +[NSLocale autoupdatingCurrentLocale];
  [v3 setLocale:v4];

  [qword_28F30 setNumberStyle:0];
  v5 = qword_28F30;

  [v5 setMinimumIntegerDigits:2];
}

void sub_1034C(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_29078);
  if (qword_29080)
  {
    v3 = qword_29080 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_29088))
  {
    qword_29080 = v5;
    qword_29088 = [v5 version];
    sub_10424(v5, __src);
    memcpy(&unk_28F40, __src, 0x138uLL);
  }

  memcpy(a2, &unk_28F40, 0x138uLL);
  os_unfair_lock_unlock(&unk_29078);
}

void sub_10424(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 304) = 0;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  v3 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  v66[0] = &off_217C0;
  v66[1] = &off_217D8;
  v67[0] = &off_21FC8;
  v67[1] = &off_21FD8;
  v66[2] = &off_217F0;
  v67[2] = &off_21FE8;
  v4 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:3];
  [v3 scaledValue:v4 withOverrides:69.0];
  *a2 = v5;

  v64[0] = &off_217C0;
  v64[1] = &off_217D8;
  v65[0] = &off_21FF8;
  v65[1] = &off_22008;
  v64[2] = &off_217F0;
  v65[2] = &off_22018;
  v6 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:3];
  [v3 scaledValue:v6 withOverrides:31.0];
  *(a2 + 8) = v7;

  v62[0] = &off_217C0;
  v62[1] = &off_217D8;
  v63[0] = &off_22028;
  v63[1] = &off_22038;
  v62[2] = &off_217F0;
  v63[2] = &off_22048;
  v8 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:3];
  [v3 scaledValue:v8 withOverrides:36.0];
  *(a2 + 16) = v9;

  *(a2 + 24) = xmmword_18930;
  *(a2 + 40) = xmmword_18940;
  *(a2 + 56) = xmmword_18930;
  *(a2 + 72) = xmmword_18940;
  *(a2 + 88) = xmmword_18950;
  *(a2 + 104) = xmmword_18950;
  *(a2 + 136) = xmmword_18960;
  v60[0] = &off_217C0;
  v60[1] = &off_217F0;
  v61[0] = &off_22058;
  v61[1] = &off_22068;
  v10 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
  [v3 scaledValue:v10 withOverrides:49.0];
  v12 = v11;

  v58[0] = &off_217C0;
  v58[1] = &off_217F0;
  v59[0] = &off_22078;
  v59[1] = &off_22088;
  v13 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
  [v3 scaledValue:v13 withOverrides:99.5];
  v15 = v14;

  *(a2 + 120) = v15;
  *(a2 + 128) = v12;
  v56[0] = &off_217C0;
  v56[1] = &off_217F0;
  v57[0] = &off_22098;
  v57[1] = &off_220A8;
  v16 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
  [v3 scaledValue:v16 withOverrides:4.0];
  *(a2 + 152) = v17;

  v55[0] = &off_220B8;
  v55[1] = &off_220C8;
  *(a2 + 160) = xmmword_18970;
  v54[2] = &off_217F0;
  v54[3] = &off_21808;
  v55[2] = &off_220D8;
  v55[3] = &off_22048;
  v54[0] = &off_217C0;
  v54[1] = &off_217D8;
  v54[4] = &off_21820;
  v54[5] = &off_21838;
  v55[4] = &off_220E8;
  v55[5] = &off_220E8;
  v54[6] = &off_21850;
  v54[7] = &off_21868;
  v55[6] = &off_220F8;
  v55[7] = &off_22108;
  v54[8] = &off_21880;
  v55[8] = &off_22118;
  v18 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:9];
  [v3 scaledValue:v18 withOverrides:30.5];
  v20 = v19;

  *(a2 + 192) = v20;
  *(a2 + 200) = 0x3FF8000000000000;
  v52[0] = &off_217C0;
  v52[1] = &off_217D8;
  v53[0] = &off_22128;
  v53[1] = &off_22138;
  v52[2] = &off_217F0;
  v53[2] = &off_22148;
  v21 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];
  [v3 scaledValue:v21 withOverrides:86.0];
  *(a2 + 208) = v22;

  v50[0] = &off_217C0;
  v50[1] = &off_217D8;
  v51[0] = &off_22158;
  v51[1] = &off_22168;
  v50[2] = &off_217F0;
  v51[2] = &off_22178;
  v23 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
  [v3 scaledValue:v23 withOverrides:9.5];
  *(a2 + 216) = v24;

  v48[0] = &off_217C0;
  v48[1] = &off_217F0;
  v49[0] = &off_22098;
  v49[1] = &off_22188;
  v25 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v3 scaledValue:v25 withOverrides:2.5];
  *(a2 + 224) = v26;

  *(a2 + 232) = v20;
  *(a2 + 240) = 0x3FF8000000000000;
  v46[0] = &off_217C0;
  v46[1] = &off_217D8;
  v47[0] = &off_22198;
  v47[1] = &off_221A8;
  v46[2] = &off_217F0;
  v47[2] = &off_22138;
  v27 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:3];
  [v3 scaledValue:v27 withOverrides:80.5];
  *(a2 + 248) = v28;

  [v3 scaledValue:0 withOverride:9.0 forSizeClass:7.5];
  *(a2 + 256) = v29;
  v44[0] = &off_217C0;
  v44[1] = &off_217D8;
  v45[0] = &off_221B8;
  v45[1] = &off_221B8;
  v44[2] = &off_217F0;
  v45[2] = &off_22188;
  v30 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
  [v3 scaledValue:v30 withOverrides:2.0];
  *(a2 + 264) = v31;

  *(a2 + 272) = v20;
  *(a2 + 280) = 0x3FF8000000000000;
  v42[0] = &off_217C0;
  v42[1] = &off_217D8;
  v43[0] = &off_221C8;
  v43[1] = &off_21FD8;
  v42[2] = &off_217F0;
  v43[2] = &off_221D8;
  v32 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
  [v3 scaledValue:v32 withOverrides:67.5];
  *(a2 + 288) = v33;

  v40[0] = &off_217C0;
  v40[1] = &off_217D8;
  v41[0] = &off_221E8;
  v41[1] = &off_221F8;
  v34 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v3 scaledValue:v34 withOverrides:7.5];
  *(a2 + 296) = v35;

  v38[0] = &off_217C0;
  v38[1] = &off_217D8;
  v39[0] = &off_221B8;
  v39[1] = &off_221B8;
  v36 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v3 scaledValue:v36 withOverrides:2.0];
  *(a2 + 304) = v37;

  *(a2 + 176) = 0x3FF8000000000000;
  *(a2 + 184) = 2;
}

void sub_10AEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v10 = a2;
  v6 = [v5 objectAtIndexedSubscript:a3];
  [v10 setTopColor:v6];

  v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  [v10 setBottomColor:v7];

  LODWORD(v8) = *(a1 + 48);
  [v10 setTrackOpacity:v8];
  LODWORD(v9) = *(a1 + 52);
  [v10 setEmptyOpacity:v9];
}

uint64_t sub_10BA0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&stru_2909C);
  if (qword_290A0)
  {
    v3 = qword_290A0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_290A8))
  {
    v5 = byte_29098;
  }

  else
  {
    qword_290A0 = v2;
    qword_290A8 = [v2 version];
    sub_10C44();
    v5 = 1;
    byte_29098 = 1;
  }

  os_unfair_lock_unlock(&stru_2909C);

  return v5;
}

id sub_10C44()
{
  v0 = qword_29090;
  if (qword_29090)
  {

    return [v0 removeAllObjects];
  }

  else
  {
    qword_29090 = +[NSMutableDictionary dictionary];

    return _objc_release_x1();
  }
}

void sub_10CB0(id a1)
{
  if (!qword_290B0)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v1 = CLKClearCacheRequestNotification;
    v2 = +[NSOperationQueue mainQueue];
    v3 = [v5 addObserverForName:v1 object:0 queue:v2 usingBlock:&stru_20CC8];
    v4 = qword_290B0;
    qword_290B0 = v3;
  }
}

void sub_10D80(id a1, UIGraphicsImageRendererContext *a2)
{
  v2 = a2;
  v3 = [UIColor colorWithWhite:1.0 alpha:0.250980392];
  [v3 setFill];

  v5 = [(UIGraphicsImageRendererContext *)v2 format];

  [v5 bounds];
  v4 = [UIBezierPath bezierPathWithOvalInRect:?];
  [v4 fill];
}

void sub_11800(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = a3 / *(a1 + 48);
  v6 = v5 - v4;
  v7 = *(a1 + 64);
  v8 = 0.0;
  if (v7 > v5 - v4)
  {
    v9 = v5 + v4;
    v8 = 1.0;
    if (v7 < v9)
    {
      v8 = (v7 - v6) / (v9 - v6);
    }
  }

  v10 = 1.0 - v8;
  if (v8 <= 0.5)
  {
    v10 = v8;
  }

  v11 = (v10 + v10) * *(a1 + 96) + 1.0;
  v12 = a2;
  [v12 setTickScale:v11];
  v13 = [NTKFaceColorScheme interpolationFrom:*(a1 + 32) to:*(a1 + 40) fraction:512 brightenUnits:v8];
  [v12 setColorScheme:v13];
}

double _RelativeFractionFromOverallFraction(double a1, double a2, double a3)
{
  result = 0.0;
  if (a1 > a2)
  {
    result = 1.0;
    if (a1 < a3)
    {
      return (a1 - a2) / (a3 - a2);
    }
  }

  return result;
}

void sub_122C4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&unk_290E8);
  if (qword_290F0)
  {
    v3 = qword_290F0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != qword_290F8))
  {
    qword_290F0 = v6;
    qword_290F8 = [v6 version];
    sub_123A0(v6, v7);
    xmmword_290C0 = v7[0];
    *algn_290D0 = v7[1];
    qword_290E0 = v8;
  }

  v5 = *algn_290D0;
  *a2 = xmmword_290C0;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_290E0;
  os_unfair_lock_unlock(&unk_290E8);
}

void sub_123A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = [CLKDeviceMetrics metricsWithDevice:a1 identitySizeClass:2];
  [v4 scaledValue:8.0];
  *a2 = v3;
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 12;
  *(a2 + 24) = xmmword_18990;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}