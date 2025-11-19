id sub_2B30(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

id sub_2B7C(uint64_t a1)
{
  *(*(a1 + 32) + 50) = 0;
  if (*(a1 + 96) == 1)
  {
    v13 = v1;
    v14 = v2;
    v3 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v4 = *(a1 + 64);
    v10 = *(a1 + 48);
    v11 = v4;
    v8[2] = sub_2C80;
    v8[3] = &unk_3D100;
    v9 = *(a1 + 32);
    v12 = *(a1 + 80);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_2CCC;
    v7[3] = &unk_3D128;
    v7[4] = v9;
    return [UIView animateWithDuration:v8 animations:v7 completion:v3];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 _updateSelectedMarker];
  }
}

id sub_2C80(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

void sub_2E04(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  [v3 setImage:v2];
  [v3 sizeToFit];
  [v3 removeFromSuperview];
}

uint64_t sub_45FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_57C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toggleVoiceOverCaptionPanelViewController];
}

id *sub_6AB0(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _updateCursorWithFrame:result[5] pathData:*(result + 88) animate:result[6] displayID:{*(result + 7), *(result + 8), *(result + 9), *(result + 10)}];
  }

  return result;
}

id sub_7B00(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    _AXAssert();
    v3 = 0;
  }

  else
  {
    v3 = [NSMutableArray arrayWithCapacity:v2 >> 1];
    if (v2)
    {
      for (i = 0; i < v2; i += 2)
      {
        v5 = [v1 objectAtIndexedSubscript:i];
        [v5 doubleValue];
        v7 = v6;

        v8 = [v1 objectAtIndexedSubscript:i + 1];
        [v8 doubleValue];
        v10 = v9;

        v11 = [NSValue valueWithCGPoint:v7, v10];
        [v3 addObject:v11];
      }
    }
  }

  return v3;
}

id sub_9448(uint64_t a1)
{
  [*(a1 + 32) _removeCursorViewControllers];
  [*(a1 + 32) _removeScreenCurtainControllers];
  [*(a1 + 32) _removeBrailleViewController];
  [*(a1 + 32) _removeMapsExplorationViewController];
  [*(a1 + 32) _removeCaptionPanelViewControllers];
  [*(a1 + 32) _removeElementVisualizationViewController];
  [*(a1 + 32) _removeRotorViewControllers];
  [*(a1 + 32) _removeItemChooserController];
  v2 = *(a1 + 32);

  return [v2 _handleHideVoiceOverWarning:0];
}

void sub_A444(uint64_t a1)
{
  v2 = [*(a1 + 32) _circleViewForDotNumber:*(a1 + 40)];
  [v2 setAlpha:0.5];

  v3 = [*(a1 + 32) _highlightedCircleViewForDotNumber:*(a1 + 40)];
  [v3 setAlpha:0.0];
}

void sub_A7B4(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 scale];
  v3 = v2;
  v12.width = 82.0;
  v12.height = 82.0;
  UIGraphicsBeginImageContextWithOptions(v12, 0, v3);

  v4 = +[UIColor whiteColor];
  [v4 set];

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(CurrentContext, 1.0);
  v10 = [UIBezierPath bezierPathWithArcCenter:0 radius:41.0 startAngle:41.0 endAngle:40.0 clockwise:0.0, 6.28318531];
  [v10 stroke];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  v7 = qword_4B300;
  qword_4B300 = v6;

  [v10 fill];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  v9 = qword_4B308;
  qword_4B308 = v8;

  UIGraphicsEndImageContext();
}

void sub_C1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_C238(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_4B320)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_C37C;
    v4[4] = &unk_3D2E0;
    v4[5] = v4;
    v5 = off_3D2C8;
    v6 = 0;
    qword_4B320 = _sl_dlopen();
    v2 = v4[0];
    if (qword_4B320)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AXMVisionFeature");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_25DE0();
  }

  qword_4B318 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_C37C()
{
  result = _sl_dlopen();
  qword_4B320 = result;
  return result;
}

uint64_t sub_C850(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_D2E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = a2;
  v7 = [*(a1 + 32) layer];
  v8 = [v7 sublayers];
  v9 = [v8 objectAtIndexedSubscript:a3];

  v10 = [*(a1 + 32) layer];
  [v10 bounds];
  [v9 setBounds:?];

  v11 = [*(a1 + 32) layer];
  [v11 bounds];
  UIRectGetCenter();
  [v9 setPosition:?];

  v12 = v27;
  [v9 setPath:{objc_msgSend(v27, "CGPath")}];
  [*(a1 + 32) lineWidth];
  v14 = 0.0;
  if (*(a1 + 48))
  {
    v14 = 2.0;
  }

  [v9 setLineWidth:v13 + v14];
  [v9 setFillColor:{objc_msgSend(*(*(a1 + 32) + 48), "CGColor")}];
  v15 = [*(a1 + 32) traitCollection];
  if ([v15 userInterfaceStyle] == &dword_0 + 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v16 = ;
  [v9 setStrokeColor:{objc_msgSend(v16, "CGColor")}];

  v17 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v18 = [v17 objectAtIndexedSubscript:a3];
    v19 = a3 + 1;
  }

  else
  {
    v19 = a3 + 1;
    v18 = [v17 objectAtIndexedSubscript:v19];
  }

  v20 = [*(a1 + 32) layer];
  v21 = [v20 sublayers];
  v22 = [v21 objectAtIndexedSubscript:v19];

  v23 = [*(a1 + 32) layer];
  [v23 bounds];
  [v22 setBounds:?];

  v24 = [*(a1 + 32) layer];
  [v24 bounds];
  UIRectGetCenter();
  [v22 setPosition:?];

  [v22 setPath:{objc_msgSend(v18, "CGPath")}];
  [*(a1 + 32) lineWidth];
  [v22 setLineWidth:?];
  [v22 setFillColor:{objc_msgSend(*(*(a1 + 32) + 48), "CGColor")}];
  v25 = [*(a1 + 32) traitCollection];
  if ([v25 userInterfaceStyle] == &dword_0 + 1)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v26 = ;
  [v22 setStrokeColor:{objc_msgSend(v26, "CGColor")}];

  *a4 = 1;
}

id sub_E1A8(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  LOBYTE(a2) = *(v3 + 33);
  v4 = 48;
  [*(v3 + 48) setAlpha:*&a2];
  [*(*(a1 + 32) + 40) setAlpha:(*(*(a1 + 32) + 33) ^ 1u)];
  v5 = *(a1 + 32);
  if (!*(v5 + 33))
  {
    v4 = 40;
  }

  [*(v5 + v4) setText:*(a1 + 40)];
  [*(*(a1 + 32) + v4) sizeToFit];
  *(*(a1 + 32) + 33) ^= 1u;
  v6 = *(a1 + 32);

  return [v6 layoutIfNeeded];
}

void sub_EE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_EE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _traitCollectionDidChange:v4];
}

void sub_FA54(uint64_t a1)
{
  v2 = [NSMutableAttributedString alloc];
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = &stru_3F518;
  }

  v8 = [v2 initWithString:v3];
  v4 = +[UIColor whiteColor];
  [v8 addAttribute:NSForegroundColorAttributeName value:v4 range:{0, objc_msgSend(*(a1 + 40), "length")}];

  v5 = [*(a1 + 48) captionPanelText];
  v6 = [v5 font];
  [v8 addAttribute:NSFontAttributeName value:v6 range:{0, objc_msgSend(*(a1 + 40), "length")}];

  [v8 addAttribute:NSParagraphStyleAttributeName value:*(a1 + 56) range:{0, objc_msgSend(*(a1 + 40), "length")}];
  v7 = [*(a1 + 48) captionPanelText];
  [v7 setAttributedText:v8];
}

void sub_FBAC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) scrollView];
  [v2 setContentOffset:{v1, 0.0}];
}

void sub_FE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_FE88(uint64_t a1)
{
  v1 = [*(a1 + 32) scrollView];
  [v1 setContentOffset:{0.0, 0.0}];
}

void sub_FED4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v6 = *(WeakRetained + 3);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_FFA8;
    v7[3] = &unk_3D1F0;
    objc_copyWeak(&v8, (a1 + 32));
    [v6 afterDelay:v7 processBlock:1.0];
    objc_destroyWeak(&v8);
  }
}

void sub_FFA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animateTextBack:0];
}

void sub_FFEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained scrollView];
  [v2 setContentOffset:{*(a1 + 40), 0.0}];
}

void sub_1072C(uint64_t a1)
{
  v1 = [*(a1 + 32) currentRotaryView];
  [v1 setAlpha:0.0];
}

void sub_10774(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) currentLocationView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

id sub_107E0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentLocationView];
  [v2 alpha];
  v4 = v3;

  if (v4 == 0.0)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_108F8;
    v7[3] = &unk_3D218;
    v7[4] = *(a1 + 32);
    [UIView animateWithDuration:v7 animations:0.2];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10940;
  v6[3] = &unk_3D218;
  v6[4] = *(a1 + 32);
  return [UIView animateWithDuration:v6 animations:0.2];
}

void sub_108F8(uint64_t a1)
{
  v1 = [*(a1 + 32) currentLocationView];
  [v1 setAlpha:1.0];
}

void sub_10940(uint64_t a1)
{
  v1 = [*(a1 + 32) currentRotaryView];
  [v1 setAlpha:1.0];
}

void sub_11820(uint64_t a1)
{
  v1 = [*(a1 + 32) curtainView];
  [v1 setAlpha:0.0];
}

void sub_11868(uint64_t a1)
{
  v1 = [*(a1 + 32) curtainView];
  [v1 setAlpha:1.0];
}

id sub_11E68(uint64_t a1)
{
  v2 = [*(a1 + 32) curtainView];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 32);

  return [v3 _updateScreenCurtainForInvertColors:0];
}

uint64_t sub_11EBC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_11ED4(void *result, uint64_t a2)
{
  if (a2 == 6)
  {
    v2 = result;
    result = [*(*(result[4] + 8) + 40) enabled];
    if (result)
    {
      [*(*(v2[4] + 8) + 40) setEnabled:0 animate:0];
      return AXPerformBlockOnMainThreadAfterDelay();
    }
  }

  return result;
}

uint64_t sub_128FC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_12A5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_13810(id a1)
{
  v1 = [NSBundle bundleWithPath:@"/System/Library/AccessibilityBundles/GAXClient.bundle"];
  v2 = v1;
  if (v1)
  {
    v16 = 0;
    v3 = [v1 loadAndReturnError:&v16];
    v4 = v16;
    if (v3)
    {
      goto LABEL_14;
    }

    v5 = +[AXSubsystemVoiceOver sharedInstance];
    v6 = [v5 ignoreLogging];

    if (v6)
    {
      goto LABEL_14;
    }

    v7 = +[AXSubsystemVoiceOver identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_13;
    }

    v10 = AXColorizeFormatLog();
    v11 = _AXStringForArgs();
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
    }

LABEL_12:
LABEL_13:

    goto LABEL_14;
  }

  v12 = +[AXSubsystemVoiceOver sharedInstance];
  v13 = [v12 ignoreLogging];

  if ((v13 & 1) == 0)
  {
    v14 = +[AXSubsystemVoiceOver identifier];
    v4 = AXLoggerForFacility();

    v15 = AXOSLogLevelFromAXLogLevel();
    if (!os_log_type_enabled(v4, v15))
    {
LABEL_14:

      goto LABEL_15;
    }

    v8 = AXColorizeFormatLog();
    v10 = _AXStringForArgs();
    if (os_log_type_enabled(v4, v15))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_0, v4, v15, "%{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_15:
}

uint64_t sub_13E64(uint64_t a1)
{
  v1 = a1;
  v2 = [*(*(a1 + 32) + 56) objectAtIndex:?];
  LODWORD(v1) = [v2 containsObject:*(v1 + 40)];

  return v1 ^ 1;
}

void sub_13F9C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

id sub_13FE4(uint64_t a1)
{
  v11[0] = @"row";
  v2 = [NSNumber numberWithInteger:*(*(a1 + 32) + 112)];
  v11[1] = @"activate";
  v12[0] = v2;
  v3 = [NSNumber numberWithBool:*(*(a1 + 32) + 120)];
  v12[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  UIAccessibilityPostNotification(0x7EAu, v4);

  [*(*(a1 + 32) + 16) resignFirstResponder];
  [*(*(a1 + 32) + 16) setText:&stru_3F518];
  [*(*(a1 + 32) + 32) removeAllObjects];
  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = 0;

  v7 = [*(a1 + 32) delegate];
  [v7 closeItemChooser:*(a1 + 32)];

  [*(*(a1 + 32) + 168) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 168);
  *(v8 + 168) = 0;

  return [*(a1 + 32) _updateGuidedAccessWindowId:0];
}

BOOL sub_142E4(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = [v3 rangeOfString:*(*(a1 + 32) + 104)] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

void sub_14714(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if ([v12 length])
  {
    v5 = [v12 substringToIndex:1];
    v6 = [v5 uppercaseString];

    v7 = +[NSCharacterSet letterCharacterSet];
    v8 = [v7 characterIsMember:{-[__CFString characterAtIndex:](v6, "characterAtIndex:", 0)}];

    if ((v8 & 1) == 0)
    {

      v6 = @"#";
    }

    v9 = [*(*(a1 + 32) + 40) objectForKey:v6];
    if (!v9)
    {
      v9 = [objc_allocWithZone(NSMutableArray) init];
      [*(*(a1 + 32) + 40) setObject:v9 forKey:v6];
    }

    v10 = [NSNumber numberWithInteger:a3];
    v11 = [NSArray arrayWithObjects:v12, v10, 0];
    [v9 addObject:v11];
  }
}

void sub_14884(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void sub_148CC(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v3 localizedStringForKey:@"VoiceOverItemChooser" value:&stru_3F518 table:@"VoiceOverUIService"];

    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"item.count" value:&stru_3F518 table:@"VoiceOverUIService"];
    v6 = [NSString localizedStringWithFormat:v5, *(a1 + 40)];

    v7 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, *(*(a1 + 32) + 16));
    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v7);
  }
}

void sub_14A3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[UIColor clearColor];
  [v1 setIndexBackgroundColor:v2];
}

id sub_14C1C(uint64_t a1)
{
  v10 = CGRectIntegral(*(a1 + 40));
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v6 = [*(a1 + 32) view];
  [v6 setFrame:{x, y, width, height}];

  v11 = CGRectIntegral(*(a1 + 40));
  v7 = *(*(a1 + 32) + 128);

  return [v7 setFrame:{v11.origin.x, v11.origin.y, v11.size.width, v11.size.height}];
}

uint64_t sub_15AB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 3;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = type metadata accessor for Number();
  v4 = swift_allocObject();
  *(v4 + 32) = 257;
  *(v4 + 16) = 50;
  *(v4 + 24) = 0xE100000000000000;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  v9 = v3;
  v10 = &off_3E958;
  *&v8 = v4;
  type metadata accessor for LatexToMathMLTree();
  v5 = swift_allocObject();
  sub_16294(&qword_4A250);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2D190;
  sub_162DC(&v8, v6 + 32);
  *(v5 + 16) = v6;
  *(v2 + 48) = v5;
  return v2;
}

uint64_t sub_15B9C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 40);
    if (v2)
    {
      swift_beginAccess();
      if (*(*(v2 + 16) + 16))
      {
        swift_beginAccess();
        if (*(*(v1 + 16) + 16))
        {

          v3 = sub_222E0();
          v5 = sub_222E0();
          swift_beginAccess();
          v6 = *(v3 + 16);
          if (*(v6 + 16) != 1)
          {
            goto LABEL_14;
          }

          sub_16358(v6 + 32, v40);
          v8 = v41;
          v7 = v42;
          sub_163BC(v40, v41);
          v9 = (*(*(v7 + 8) + 8))(v8);
          v11 = v10;
          v43 = 2;
          if (v9 == sub_263CC() && v11 == v12)
          {

            sub_16400(v40);
          }

          else
          {
            v14 = sub_263DC();

            sub_16400(v40);
            if ((v14 & 1) == 0)
            {
LABEL_14:
              strcpy(v44, "<mroot><mrow>");
              HIWORD(v44[1]) = -4864;
              swift_beginAccess();
              v15 = *(v5 + 16);
              v16 = *(v15 + 16);
              if (v16)
              {
                v17 = v15 + 32;

                do
                {
                  sub_16358(v17, v40);
                  v19 = v41;
                  v18 = v42;
                  sub_163BC(v40, v41);
                  v20 = (*(*(v18 + 16) + 8))(v19);
                  v22 = v21;
                  sub_16400(v40);
                  v45._countAndFlagsBits = v20;
                  v45._object = v22;
                  sub_2627C(v45);

                  v17 += 40;
                  --v16;
                }

                while (v16);
              }

              v46._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
              v46._object = 0xED00003E776F726DLL;
              sub_2627C(v46);
              v23 = *(v3 + 16);
              v24 = *(v23 + 16);
              if (v24)
              {
                v25 = v23 + 32;

                do
                {
                  sub_16358(v25, v40);
                  v27 = v41;
                  v26 = v42;
                  sub_163BC(v40, v41);
                  v28 = (*(*(v26 + 16) + 8))(v27);
                  v30 = v29;
                  sub_16400(v40);
                  v47._countAndFlagsBits = v28;
                  v47._object = v30;
                  sub_2627C(v47);

                  v25 += 40;
                  --v24;
                }

                while (v24);
              }

              v31._object = 0xEF3E746F6F726D2FLL;
              v31._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
LABEL_29:
              sub_2627C(v31);

              return v44[0];
            }
          }

          strcpy(v44, "<msqrt>");
          v44[1] = 0xE700000000000000;
          swift_beginAccess();
          v32 = *(v5 + 16);
          v33 = *(v32 + 16);
          if (v33)
          {
            v34 = v32 + 32;

            do
            {
              sub_16358(v34, v40);
              v36 = v41;
              v35 = v42;
              sub_163BC(v40, v41);
              v37 = (*(*(v35 + 16) + 8))(v36);
              v39 = v38;
              sub_16400(v40);
              v48._countAndFlagsBits = v37;
              v48._object = v39;
              sub_2627C(v48);

              v34 += 40;
              --v33;
            }

            while (v33);
          }

          v31._countAndFlagsBits = 0x3E747271736D2F3CLL;
          v31._object = 0xE800000000000000;
          goto LABEL_29;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_160D8()
{

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_16154()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_161AC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  if ((*(v2 + 56) & 1) == 0)
  {
    *(v2 + 64) = 0;
  }

  return result;
}

uint64_t sub_16214(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  if ((*(v2 + 56) & 1) == 0)
  {
    *(v2 + 72) = 0;
  }

  return result;
}

uint64_t sub_16294(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_162DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *sub_162F4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_16358(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_163BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_16400(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t VOTNemethTranslatingError.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000001ALL;
  v2 = 0xD000000000000025;
  v3 = 0xD000000000000023;
  if (a1 != 3)
  {
    v3 = 0xD000000000000021;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000029;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_164EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "iablesSentinel";
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000029;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v3)
    {
      v4 = "The index is out of range.";
    }

    else
    {
      v4 = "iablesSentinel";
    }
  }

  else if (a1 == 2)
  {
    v4 = "guration was encountered.";
    v5 = 0xD000000000000025;
  }

  else if (a1 == 3)
  {
    v4 = "cter was encountered.";
    v5 = 0xD000000000000023;
  }

  else
  {
    v4 = "nd was encountered.";
    v5 = 0xD000000000000021;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000029;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v2 = "The index is out of range.";
    }
  }

  else if (a2 == 2)
  {
    v2 = "guration was encountered.";
    v6 = 0xD000000000000025;
  }

  else
  {
    v2 = "cter was encountered.";
    if (a2 == 3)
    {
      v6 = 0xD000000000000023;
    }

    else
    {
      v6 = 0xD000000000000021;
    }

    if (a2 != 3)
    {
      v2 = "nd was encountered.";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_263DC();
  }

  return v7 & 1;
}

Swift::Int sub_16654()
{
  sub_2645C();
  sub_2623C();

  return sub_2647C();
}

uint64_t sub_16728()
{
  sub_2623C();
}

Swift::Int sub_167E8()
{
  sub_2645C();
  sub_2623C();

  return sub_2647C();
}

uint64_t sub_168B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9VoiceOver25VOTNemethTranslatingErrorO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_168E8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ALL;
  v3 = *v1;
  v4 = "iablesSentinel";
  v5 = "guration was encountered.";
  v6 = 0xD000000000000025;
  v7 = "cter was encountered.";
  v8 = 0xD000000000000023;
  if (v3 != 3)
  {
    v8 = 0xD000000000000021;
    v7 = "nd was encountered.";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000029;
    v4 = "The index is out of range.";
  }

  if (*v1 > 1u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t _s9VoiceOver25VOTNemethTranslatingErrorO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3D780;
  v6._object = a2;
  v4 = sub_263BC(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_169DC()
{
  result = qword_4A260;
  if (!qword_4A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VOTNemethTranslatingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VOTNemethTranslatingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_16BA4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  if (!v0[6])
  {
    if (!v0[5])
    {
      v50 = 0xE400000000000000;

      v58._countAndFlagsBits = v2;
      v58._object = v1;
      sub_2627C(v58);

      v59._countAndFlagsBits = 0x3E6E6D2F3CLL;
      v59._object = 0xE500000000000000;
      sub_2627C(v59);
      return 1047424316;
    }

    v4 = sub_222E0();
    v48 = 0x3E7075736D3CLL;
    v49 = 1047424316;
    v50 = 0xE400000000000000;
    v5 = v0[2];
    v6 = v0[3];

    v53._countAndFlagsBits = v5;
    v53._object = v6;
    sub_2627C(v53);

    v54._countAndFlagsBits = 0x3E6E6D2F3CLL;
    v54._object = 0xE500000000000000;
    sub_2627C(v54);
    v55._countAndFlagsBits = 1047424316;
    v55._object = 0xE400000000000000;
    sub_2627C(v55);

    v56._countAndFlagsBits = 0x3E776F726D3CLL;
    v56._object = 0xE600000000000000;
    sub_2627C(v56);
    swift_beginAccess();
    v7 = *(v4 + 16);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 32;

      do
      {
        sub_16358(v9, &v49);
        v11 = v51;
        v10 = v52;
        sub_163BC(&v49, v51);
        v12 = (*(*(v10 + 16) + 8))(v11);
        v14 = v13;
        sub_16400(&v49);
        v57._countAndFlagsBits = v12;
        v57._object = v14;
        sub_2627C(v57);

        v9 += 40;
        --v8;
      }

      while (v8);
    }

    v15._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
    v15._object = 0x3E7075736D2FLL;
    goto LABEL_22;
  }

  if (!v0[5])
  {

    v18 = sub_222E0();
    v48 = 0x3E6275736D3CLL;
    v49 = 1047424316;
    v50 = 0xE400000000000000;
    v19 = v0[2];
    v20 = v0[3];

    v60._countAndFlagsBits = v19;
    v60._object = v20;
    sub_2627C(v60);

    v61._countAndFlagsBits = 0x3E6E6D2F3CLL;
    v61._object = 0xE500000000000000;
    sub_2627C(v61);
    v62._countAndFlagsBits = 1047424316;
    v62._object = 0xE400000000000000;
    sub_2627C(v62);

    v63._countAndFlagsBits = 0x3E776F726D3CLL;
    v63._object = 0xE600000000000000;
    sub_2627C(v63);
    swift_beginAccess();
    v21 = *(v18 + 16);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v21 + 32;

      do
      {
        sub_16358(v23, &v49);
        v25 = v51;
        v24 = v52;
        sub_163BC(&v49, v51);
        v26 = (*(*(v24 + 16) + 8))(v25);
        v28 = v27;
        sub_16400(&v49);
        v64._countAndFlagsBits = v26;
        v64._object = v28;
        sub_2627C(v64);

        v23 += 40;
        --v22;
      }

      while (v22);
    }

    v15._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
    v15._object = 0x3E6275736D2FLL;
LABEL_22:
    v15._object = (v15._object & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
    sub_2627C(v15);

    return v48;
  }

  v16 = sub_222E0();
  v29 = sub_222E0();
  v49 = 1047424316;
  v50 = 0xE400000000000000;
  v30 = v0[2];
  v31 = v0[3];

  v65._countAndFlagsBits = v30;
  v65._object = v31;
  sub_2627C(v65);

  v66._countAndFlagsBits = 0x3E6E6D2F3CLL;
  v66._object = 0xE500000000000000;
  sub_2627C(v66);
  v67._countAndFlagsBits = 1047424316;
  v67._object = 0xE400000000000000;
  sub_2627C(v67);

  v68._countAndFlagsBits = 0x3E776F726D3CLL;
  v68._object = 0xE600000000000000;
  sub_2627C(v68);
  swift_beginAccess();
  v32 = *(v29 + 16);
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = v32 + 32;

    do
    {
      sub_16358(v34, &v49);
      v36 = v51;
      v35 = v52;
      sub_163BC(&v49, v51);
      v37 = (*(*(v35 + 16) + 8))(v36);
      v39 = v38;
      sub_16400(&v49);
      v69._countAndFlagsBits = v37;
      v69._object = v39;
      sub_2627C(v69);

      v34 += 40;
      --v33;
    }

    while (v33);
  }

  v70._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
  v70._object = 0xED00003E776F726DLL;
  sub_2627C(v70);
  swift_beginAccess();
  v40 = *(v16 + 16);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + 32;

    do
    {
      sub_16358(v42, &v49);
      v44 = v51;
      v43 = v52;
      sub_163BC(&v49, v51);
      v45 = (*(*(v43 + 16) + 8))(v44);
      v47 = v46;
      sub_16400(&v49);
      v71._countAndFlagsBits = v45;
      v71._object = v47;
      sub_2627C(v71);

      v42 += 40;
      --v41;
    }

    while (v41);
  }

  v72._object = 0x8000000000037250;
  v72._countAndFlagsBits = 0xD000000000000011;
  sub_2627C(v72);

  return 0x7075736275736D3CLL;
}

uint64_t sub_172D4()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_173B0()
{
  v1 = v0[8];
  v2 = v0[7] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    sub_2637C(43);

    v52 = 0x73616C6320696D3CLL;
    v53 = 0xEB00000000223D73;
    v3 = v0[7];
    v4 = v0[8];

    v56._countAndFlagsBits = v3;
    v56._object = v4;
    sub_2627C(v56);

    v57._countAndFlagsBits = 0xD000000000000017;
    v57._object = 0x80000000000372B0;
    sub_2627C(v57);
LABEL_5:
    v5 = v0[2];
    v6 = v0[3];

    v58._countAndFlagsBits = v5;
    v58._object = v6;
    sub_2627C(v58);

    v59._countAndFlagsBits = 0x3E696D2F3CLL;
    v59._object = 0xE500000000000000;
    sub_2627C(v59);
    return v52;
  }

  if (!v0[6])
  {
    if (!v0[5])
    {
      v52 = 1047096636;
      v53 = 0xE400000000000000;
      goto LABEL_5;
    }

    v8 = sub_222E0();
    v51 = 0x3E7075736D3CLL;
    v52 = 1047096636;
    v53 = 0xE400000000000000;
    v9 = v0[2];
    v10 = v0[3];

    v60._countAndFlagsBits = v9;
    v60._object = v10;
    sub_2627C(v60);

    v61._countAndFlagsBits = 0x3E696D2F3CLL;
    v61._object = 0xE500000000000000;
    sub_2627C(v61);
    v62._countAndFlagsBits = 1047096636;
    v62._object = 0xE400000000000000;
    sub_2627C(v62);

    v63._countAndFlagsBits = 0x3E776F726D3CLL;
    v63._object = 0xE600000000000000;
    sub_2627C(v63);
    swift_beginAccess();
    v11 = *(v8 + 16);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + 32;

      do
      {
        sub_16358(v13, &v52);
        v15 = v54;
        v14 = v55;
        sub_163BC(&v52, v54);
        v16 = (*(*(v14 + 16) + 8))(v15);
        v18 = v17;
        sub_16400(&v52);
        v64._countAndFlagsBits = v16;
        v64._object = v18;
        sub_2627C(v64);

        v13 += 40;
        --v12;
      }

      while (v12);
    }

    v19._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
    v19._object = 0x3E7075736D2FLL;
    goto LABEL_22;
  }

  if (!v0[5])
  {

    v21 = sub_222E0();
    v51 = 0x3E6275736D3CLL;
    v52 = 1047096636;
    v53 = 0xE400000000000000;
    v22 = v0[2];
    v23 = v0[3];

    v65._countAndFlagsBits = v22;
    v65._object = v23;
    sub_2627C(v65);

    v66._countAndFlagsBits = 0x3E696D2F3CLL;
    v66._object = 0xE500000000000000;
    sub_2627C(v66);
    v67._countAndFlagsBits = 1047096636;
    v67._object = 0xE400000000000000;
    sub_2627C(v67);

    v68._countAndFlagsBits = 0x3E776F726D3CLL;
    v68._object = 0xE600000000000000;
    sub_2627C(v68);
    swift_beginAccess();
    v24 = *(v21 + 16);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v24 + 32;

      do
      {
        sub_16358(v26, &v52);
        v28 = v54;
        v27 = v55;
        sub_163BC(&v52, v54);
        v29 = (*(*(v27 + 16) + 8))(v28);
        v31 = v30;
        sub_16400(&v52);
        v69._countAndFlagsBits = v29;
        v69._object = v31;
        sub_2627C(v69);

        v26 += 40;
        --v25;
      }

      while (v25);
    }

    v19._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
    v19._object = 0x3E6275736D2FLL;
LABEL_22:
    v19._object = (v19._object & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
    sub_2627C(v19);

    return v51;
  }

  v20 = sub_222E0();
  v32 = sub_222E0();
  v52 = 1047096636;
  v53 = 0xE400000000000000;
  v33 = v0[2];
  v34 = v0[3];

  v70._countAndFlagsBits = v33;
  v70._object = v34;
  sub_2627C(v70);

  v71._countAndFlagsBits = 0x3E696D2F3CLL;
  v71._object = 0xE500000000000000;
  sub_2627C(v71);
  v72._countAndFlagsBits = 1047096636;
  v72._object = 0xE400000000000000;
  sub_2627C(v72);

  v73._countAndFlagsBits = 0x3E776F726D3CLL;
  v73._object = 0xE600000000000000;
  sub_2627C(v73);
  swift_beginAccess();
  v35 = *(v32 + 16);
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v35 + 32;

    do
    {
      sub_16358(v37, &v52);
      v39 = v54;
      v38 = v55;
      sub_163BC(&v52, v54);
      v40 = (*(*(v38 + 16) + 8))(v39);
      v42 = v41;
      sub_16400(&v52);
      v74._countAndFlagsBits = v40;
      v74._object = v42;
      sub_2627C(v74);

      v37 += 40;
      --v36;
    }

    while (v36);
  }

  v75._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
  v75._object = 0xED00003E776F726DLL;
  sub_2627C(v75);
  swift_beginAccess();
  v43 = *(v20 + 16);
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = v43 + 32;

    do
    {
      sub_16358(v45, &v52);
      v47 = v54;
      v46 = v55;
      sub_163BC(&v52, v54);
      v48 = (*(*(v46 + 16) + 8))(v47);
      v50 = v49;
      sub_16400(&v52);
      v76._countAndFlagsBits = v48;
      v76._object = v50;
      sub_2627C(v76);

      v45 += 40;
      --v44;
    }

    while (v44);
  }

  v77._object = 0x8000000000037250;
  v77._countAndFlagsBits = 0xD000000000000011;
  sub_2627C(v77);

  return 0x7075736275736D3CLL;
}

uint64_t sub_17B68()
{

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_17C00(uint64_t a1)
{
  *(v1 + 48) = a1;

  if ((*(v1 + 33) & 1) == 0)
  {
    *(v1 + 40) = 0;

    if (*(v1 + 33) != 1)
    {
      *(v1 + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_17C64()
{
  v51 = 0;
  v52 = 0xE000000000000000;
  if (v0[5])
  {
    if (v0[6])
    {

      v13 = sub_222E0();
      v28 = sub_222E0();
      v68._countAndFlagsBits = 0x7075736275736D3CLL;
      v68._object = 0xE90000000000003ELL;
      sub_2627C(v68);
      v47 = 1047096636;
      v48 = 0xE400000000000000;
      v29 = v0[2];
      v30 = v0[3];

      v69._countAndFlagsBits = v29;
      v69._object = v30;
      sub_2627C(v69);

      v70._countAndFlagsBits = 0x3E696D2F3CLL;
      v70._object = 0xE500000000000000;
      sub_2627C(v70);
      v71._countAndFlagsBits = 1047096636;
      v71._object = 0xE400000000000000;
      sub_2627C(v71);

      v72._countAndFlagsBits = 0x3E776F726D3CLL;
      v72._object = 0xE600000000000000;
      sub_2627C(v72);
      swift_beginAccess();
      v31 = *(v28 + 16);
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = v31 + 32;

        do
        {
          sub_16358(v33, &v47);
          v35 = v49;
          v34 = v50;
          sub_163BC(&v47, v49);
          v36 = (*(*(v34 + 16) + 8))(v35);
          v38 = v37;
          sub_16400(&v47);
          v73._countAndFlagsBits = v36;
          v73._object = v38;
          sub_2627C(v73);

          v33 += 40;
          --v32;
        }

        while (v32);
      }

      v74._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
      v74._object = 0xED00003E776F726DLL;
      sub_2627C(v74);
      swift_beginAccess();
      v39 = *(v13 + 16);
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = v39 + 32;

        do
        {
          sub_16358(v41, &v47);
          v43 = v49;
          v42 = v50;
          sub_163BC(&v47, v49);
          v44 = (*(*(v42 + 16) + 8))(v43);
          v46 = v45;
          sub_16400(&v47);
          v75._countAndFlagsBits = v44;
          v75._object = v46;
          sub_2627C(v75);

          v41 += 40;
          --v40;
        }

        while (v40);
      }

      v76._countAndFlagsBits = 0xD000000000000022;
      v76._object = 0x8000000000037350;
      sub_2627C(v76);

      goto LABEL_27;
    }

    v17 = sub_222E0();
    v61._countAndFlagsBits = 0x3E7075736D3CLL;
    v61._object = 0xE600000000000000;
    sub_2627C(v61);
    v47 = 1047096636;
    v48 = 0xE400000000000000;
    v18 = v0[2];
    v19 = v0[3];

    v62._countAndFlagsBits = v18;
    v62._object = v19;
    sub_2627C(v62);

    v63._countAndFlagsBits = 0x3E696D2F3CLL;
    v63._object = 0xE500000000000000;
    sub_2627C(v63);
    v64._countAndFlagsBits = 1047096636;
    v64._object = 0xE400000000000000;
    sub_2627C(v64);

    v65._countAndFlagsBits = 0x3E776F726D3CLL;
    v65._object = 0xE600000000000000;
    sub_2627C(v65);
    swift_beginAccess();
    v20 = *(v17 + 16);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 32;

      do
      {
        sub_16358(v22, &v47);
        v24 = v49;
        v23 = v50;
        sub_163BC(&v47, v49);
        v25 = (*(*(v23 + 16) + 8))(v24);
        v27 = v26;
        sub_16400(&v47);
        v66._countAndFlagsBits = v25;
        v66._object = v27;
        sub_2627C(v66);

        v22 += 40;
        --v21;
      }

      while (v21);
    }

    v12 = "</mrow></msup><mo>&#x2061;</mo>";
  }

  else
  {
    if (!v0[6])
    {
      sub_2637C(28);

      v47 = 1047096636;
      v48 = 0xE400000000000000;
      v14 = v0[2];
      v15 = v0[3];

      v59._countAndFlagsBits = v14;
      v59._object = v15;
      sub_2627C(v59);

      v60._countAndFlagsBits = 0xD000000000000016;
      v60._object = 0x80000000000372F0;
      sub_2627C(v60);
      return 1047096636;
    }

    v1 = sub_222E0();
    v53._countAndFlagsBits = 0x3E6275736D3CLL;
    v53._object = 0xE600000000000000;
    sub_2627C(v53);
    v47 = 1047096636;
    v48 = 0xE400000000000000;
    v2 = v0[2];
    v3 = v0[3];

    v54._countAndFlagsBits = v2;
    v54._object = v3;
    sub_2627C(v54);

    v55._countAndFlagsBits = 0x3E696D2F3CLL;
    v55._object = 0xE500000000000000;
    sub_2627C(v55);
    v56._countAndFlagsBits = 1047096636;
    v56._object = 0xE400000000000000;
    sub_2627C(v56);

    v57._countAndFlagsBits = 0x3E776F726D3CLL;
    v57._object = 0xE600000000000000;
    sub_2627C(v57);
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;

      do
      {
        sub_16358(v6, &v47);
        v8 = v49;
        v7 = v50;
        sub_163BC(&v47, v49);
        v9 = (*(*(v7 + 16) + 8))(v8);
        v11 = v10;
        sub_16400(&v47);
        v58._countAndFlagsBits = v9;
        v58._object = v11;
        sub_2627C(v58);

        v6 += 40;
        --v5;
      }

      while (v5);
    }

    v12 = "</mrow></msub><mo>&#x2061;</mo>";
  }

  v67._object = ((v12 - 32) | 0x8000000000000000);
  v67._countAndFlagsBits = 0xD00000000000001FLL;
  sub_2627C(v67);

LABEL_27:

  return v51;
}

uint64_t sub_183A0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 40) = a1;

  if ((*(v2 + 33) & 1) == 0)
  {
    *(v2 + 40) = 0;
  }

  return result;
}

id sub_18444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2611C();
  *a7 = v22;
  *(a7 + 16) = v23;
  sub_2611C();
  *(a7 + 24) = v22;
  *(a7 + 40) = v23;
  sub_2611C();
  *(a7 + 48) = v22;
  *(a7 + 64) = v23;
  [objc_allocWithZone(UIImage) init];
  sub_1EC3C(0, &qword_4A778);
  sub_2611C();
  *(a7 + 72) = v22;
  sub_2611C();
  *(a7 + 88) = v22;
  *(a7 + 104) = v23;
  sub_2611C();
  *(a7 + 112) = v22;
  *(a7 + 128) = v23;
  *(a7 + 136) = sub_25E8C() & 1;
  *(a7 + 144) = v12;
  *(a7 + 152) = v13 & 1;
  v14 = type metadata accessor for VOTUINemethView();
  sub_2602C();
  v15 = (a7 + v14[12]);
  v16 = (a7 + v14[13]);
  v17 = v14[15];
  v18 = (a7 + v14[14]);
  result = [objc_opt_self() serviceForIdentifier:kBTDuxburyServiceIdentifier input:0 loopback:1];
  *(a7 + v17) = result;
  *v15 = a1;
  v15[1] = a2;
  *v16 = a3;
  v16[1] = a4;
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t sub_18654(uint64_t a1)
{
  result = type metadata accessor for VOTUINemethView();
  v3 = (a1 + *(result + 48));
  if (*v3)
  {
    return (*v3)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1869C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v92 = a2;
  v89 = sub_16294(&qword_4A8E8);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89, v3);
  v84 = v78 - v4;
  v5 = sub_16294(&qword_4A8F0);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v100 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v98 = v78 - v10;
  v11 = sub_16294(&qword_4A8F8);
  __chkstk_darwin(v11 - 8, v12);
  v93 = v78 - v13;
  v91 = sub_16294(&qword_4A900);
  v90 = *(v91 - 8);
  v15 = __chkstk_darwin(v91, v14);
  v99 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v17);
  v101 = v78 - v18;
  v19 = type metadata accessor for VOTUINemethView();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8, v22);
  v87 = sub_16294(&qword_4A8B8);
  v86 = *(v87 - 8);
  v24 = __chkstk_darwin(v87, v23);
  v85 = v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24, v26);
  v97 = v78 - v28;
  v30 = __chkstk_darwin(v27, v29);
  v32 = v78 - v31;
  __chkstk_darwin(v30, v33);
  v35 = v78 - v34;
  sub_1DD6C(a1, v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v37 = swift_allocObject();
  sub_1DE28(v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
  v95 = v35;
  sub_2616C();
  sub_1DD6C(a1, v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = swift_allocObject();
  sub_1DE28(v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v36);
  v96 = v32;
  sub_2616C();
  v94 = a1;
  v39 = *(a1 + 80);
  *&v104 = *(a1 + 72);
  v40 = v104;
  *(&v104 + 1) = v39;
  sub_16294(&qword_4A908);
  sub_2612C();
  v102 = sub_260FC();
  sub_25EEC();
  v80 = "VoiceOverUIService";
  v41 = sub_2620C();
  v79 = objc_opt_self();
  v42 = [v79 bundleWithIdentifier:v41];

  v81 = "square.and.arrow.up";
  sub_2607C();
  v83 = v40;
  *&v104 = v40;
  *(&v104 + 1) = v39;
  v82 = v39;
  sub_2612C();
  *&v104 = sub_260FC();
  sub_1E100();
  sub_25EAC();
  v43 = sub_16294(&qword_4A918);
  sub_1FB10(&qword_4A920, &qword_4A918);
  sub_261AC();
  v44 = *(v94 + 128);
  v45 = v94;
  v104 = *(v94 + 112);
  v105 = v44;
  sub_16294(&qword_4A888);
  sub_2612C();
  v46 = v103 >> 62;
  if ((v103 >> 62) > 1)
  {
    if (v46 == 2)
    {
      v49 = v102[2];
      v48 = v102[3];
      sub_1DDD4(v102, v103);
      if (v49 == v48)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    sub_1DDD4(v102, v103);
LABEL_12:
    v64 = 1;
    v62 = v98;
    v63 = v89;
    v61 = v88;
    goto LABEL_13;
  }

  if (v46)
  {
    v50 = v102;
    sub_1DDD4(v102, v103);
    if (v50 != v50 >> 32)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v47 = v103;
  sub_1DDD4(v102, v103);
  if ((v47 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v78[1] = v43;
  v51 = *(v45 + 128);
  v104 = *(v45 + 112);
  v105 = v51;
  sub_2612C();
  v52 = v102;
  v53 = v103;
  v54 = objc_allocWithZone(PDFDocument);
  isa = sub_25E1C().super.isa;
  v56 = [v54 initWithData:isa];

  result = sub_1DDD4(v52, v53);
  if (v56)
  {
    v102 = v56;
    sub_25EEC();
    v58 = sub_2620C();
    v59 = [v79 bundleWithIdentifier:v58];

    sub_2607C();
    *&v104 = v83;
    *(&v104 + 1) = v82;
    sub_2612C();
    *&v104 = sub_260FC();
    sub_25EAC();
    sub_1EC3C(0, &qword_4A928);
    sub_1E154();
    v60 = v84;
    sub_261AC();
    v61 = v88;
    v62 = v98;
    v63 = v89;
    (*(v88 + 32))(v98, v60, v89);
    v64 = 0;
LABEL_13:
    (*(v61 + 56))(v62, v64, 1, v63);
    v65 = v86;
    v66 = *(v86 + 16);
    v67 = v97;
    v68 = v87;
    v66(v97, v95, v87);
    v69 = v85;
    v66(v85, v96, v68);
    v70 = v90;
    v94 = *(v90 + 16);
    v71 = v91;
    (v94)(v99, v101, v91);
    sub_1E80C(v62, v100, &qword_4A8F0);
    v72 = v92;
    v66(v92, v67, v68);
    v73 = sub_16294(&qword_4A938);
    v66(&v72[v73[12]], v69, v68);
    v74 = v99;
    (v94)(&v72[v73[16]], v99, v71);
    v75 = v100;
    sub_1E80C(v100, &v72[v73[20]], &qword_4A8F0);
    sub_1E874(v98, &qword_4A8F0);
    v76 = *(v70 + 8);
    v76(v101, v71);
    v77 = *(v65 + 8);
    v77(v96, v68);
    v77(v95, v68);
    sub_1E874(v75, &qword_4A8F0);
    v76(v74, v71);
    v77(v69, v68);
    return (v77)(v97, v68);
  }

  __break(1u);
  return result;
}

uint64_t sub_192D8(uint64_t a1)
{
  v2 = type metadata accessor for VOTUINemethView();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v2 - 8, v4);
  v5 = sub_16294(&qword_4A8B8);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v23 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v10);
  v12 = &v20[-v11];
  v13 = [objc_opt_self() generalPasteboard];
  v22 = v13;
  v14 = *(a1 + 40);
  v25 = *(a1 + 24);
  v26 = v14;
  sub_16294(&qword_4A880);
  sub_2612C();
  v15 = sub_2620C();

  [v13 setString:v15];

  v21 = UIAccessibilityScreenChangedNotification;
  sub_25EEC();
  sub_1DD6C(a1, &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v17 = swift_allocObject();
  sub_1DE28(&v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  sub_2617C();
  (*(v6 + 16))(v23, v12, v5);
  v18 = sub_263EC();
  (*(v6 + 8))(v12, v5);
  UIAccessibilityPostNotification(v21, v18);

  return swift_unknownObjectRelease();
}

uint64_t sub_195D0@<X0>(uint64_t a1@<X8>)
{
  sub_25EEC();
  v2 = sub_2620C();
  v3 = [objc_opt_self() bundleWithIdentifier:v2];

  result = sub_2607C();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

void sub_196D8()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_16294(&qword_4A880);
  sub_2612C();
  v1 = sub_2620C();

  [v0 setString:v1];
}

uint64_t sub_19790@<X0>(uint64_t a1@<X8>)
{
  sub_25EEC();
  v2 = sub_2620C();
  v3 = [objc_opt_self() bundleWithIdentifier:v2];

  result = sub_2607C();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_198B4@<X0>(uint64_t a1@<X8>)
{
  sub_25EEC();
  v2 = sub_2607C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2610C();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_1E1BC(v2, v4, v6);

  sub_1E1CC(v2, v4, v6);
}

__n128 sub_199CC@<Q0>(void (*a1)(__n128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25EDC();
  v18 = 1;
  a1(&v12);
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  result = v12;
  v11 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_19A58@<X0>(uint64_t a1@<X8>)
{
  sub_25EEC();
  v2 = sub_2607C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2610C();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_1E1BC(v2, v4, v6);

  sub_1E1CC(v2, v4, v6);
}

uint64_t sub_19B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for VOTUINemethView();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v6;
  v8 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_16294(&qword_4A840);
  __chkstk_darwin(v9, v10);
  v12 = v51 - v11;
  v52 = sub_16294(&qword_4A838);
  v53 = *(v52 - 8);
  __chkstk_darwin(v52, v13);
  v63 = v51 - v14;
  v54 = sub_16294(&qword_4A830);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54, v15);
  v62 = v51 - v16;
  v17 = sub_16294(&qword_4A828);
  v18 = *(v17 - 8);
  v57 = v17;
  v58 = v18;
  __chkstk_darwin(v17, v19);
  v64 = v51 - v20;
  v21 = sub_16294(&qword_4A818);
  v22 = *(v21 - 8);
  v59 = v21;
  v60 = v22;
  __chkstk_darwin(v21, v23);
  v56 = v51 - v24;
  *v12 = sub_25EFC();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v25 = sub_16294(&qword_4A878);
  sub_1A3D4(a1, &v12[*(v25 + 44)]);
  v26 = sub_2605C();
  v27 = &v12[*(v9 + 36)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  sub_16294(&qword_4A6F8);
  sub_2600C();
  sub_1DD6C(a1, v8);
  v28 = *(v4 + 80);
  v29 = (v28 + 16) & ~v28;
  v30 = swift_allocObject();
  sub_1DE28(v8, v30 + v29);
  v31 = sub_1DC60();
  sub_260EC();

  sub_1DEA4(v12);
  v32 = *(a1 + 16);
  v66 = *a1;
  v67 = v32;
  v51[1] = sub_16294(&qword_4A880);
  sub_2612C();
  sub_1DD6C(a1, v8);
  v51[3] = v7;
  v51[2] = v28;
  v33 = swift_allocObject();
  sub_1DE28(v8, v33 + v29);
  *&v66 = v9;
  *(&v66 + 1) = &type metadata for Bool;
  v67 = v31;
  v68 = &protocol witness table for Bool;
  v51[4] = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v63;
  v36 = v52;
  sub_260DC();

  (*(v53 + 8))(v35, v36);
  v37 = *(a1 + 40);
  v66 = *(a1 + 24);
  v67 = v37;
  sub_2612C();
  sub_1DD6C(a1, v8);
  v38 = swift_allocObject();
  sub_1DE28(v8, v38 + v29);
  *&v66 = v36;
  *(&v66 + 1) = &type metadata for String;
  v67 = OpaqueTypeConformance2;
  v68 = &protocol witness table for String;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v54;
  v41 = v62;
  sub_260DC();

  (*(v55 + 8))(v41, v40);
  v42 = *(a1 + 104);
  v66 = *(a1 + 88);
  v67 = v42;
  sub_16294(&qword_4A888);
  sub_2612C();
  sub_1DD6C(a1, v8);
  v43 = swift_allocObject();
  sub_1DE28(v8, v43 + v29);
  *&v66 = v40;
  *(&v66 + 1) = &type metadata for String;
  v67 = v39;
  v68 = &protocol witness table for String;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_1DD18();
  v47 = v56;
  v46 = v57;
  v48 = v64;
  sub_260EC();

  sub_1DDD4(v69, v70);
  (*(v58 + 8))(v48, v46);
  v65 = a1;
  sub_16294(&qword_4A820);
  *&v66 = v46;
  *(&v66 + 1) = &type metadata for Data;
  v67 = v44;
  v68 = v45;
  swift_getOpaqueTypeConformance2();
  sub_1FB10(&qword_4A868, &qword_4A820);
  v49 = v59;
  sub_260CC();
  return (*(v60 + 8))(v47, v49);
}

uint64_t sub_1A3D4@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v50 = sub_16294(&qword_4A968);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50, v3);
  v5 = v42 - v4;
  v55 = sub_16294(&qword_4A970);
  v54 = *(v55 - 8);
  v7 = __chkstk_darwin(v55, v6);
  v53 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v52 = v42 - v10;
  v48 = sub_25EEC();
  v46 = v11;
  LODWORD(v44) = v12;
  v45 = v13;
  v14 = *(a1 + 2);
  v56 = *a1;
  *&v57 = v14;
  v49 = sub_16294(&qword_4A880);
  sub_2614C();
  v43 = v62;
  v42[1] = v64;
  v42[0] = v65;
  sub_25EEC();
  v15 = sub_2620C();
  v16 = [objc_opt_self() bundleWithIdentifier:v15];

  sub_2607C();
  sub_261BC();
  type metadata accessor for VOTUINemethView();
  sub_16294(&qword_4A6F8);
  sub_2601C();
  sub_1FB10(&qword_4A978, &qword_4A968);
  v17 = v52;
  v18 = v50;
  sub_260BC();

  (*(v51 + 8))(v5, v18);
  v19 = *(a1 + 8);
  v56 = a1[3];
  *&v57 = v19;
  sub_2614C();
  v20 = v62;
  v46 = v63;
  v45 = v64;
  v50 = v65;
  v21 = *(a1 + 13);
  v56 = *(a1 + 88);
  *&v57 = v21;
  sub_16294(&qword_4A888);
  sub_2614C();
  v22 = v62;
  v49 = v63;
  v44 = v64;
  v51 = v65;
  v23 = *(a1 + 16);
  v56 = a1[7];
  *&v57 = v23;
  sub_2614C();
  v24 = v62;
  v25 = v63;
  v43 = v62;
  v26 = v65;
  v48 = v64;
  v27 = *(v54 + 16);
  v28 = v53;
  v29 = v55;
  v27(v53, v17, v55);
  v30 = v47;
  v27(v47, v28, v29);
  v31 = &v30[*(sub_16294(&qword_4A980) + 48)];
  v32 = v20;
  *&v56 = v20;
  v33 = v46;
  *(&v56 + 1) = v46;
  v34 = v45;
  *&v57 = v45;
  *(&v57 + 1) = v50;
  *&v58 = v22;
  *(&v58 + 1) = v49;
  v35 = v44;
  *&v59 = v44;
  *(&v59 + 1) = v51;
  *&v60 = v24;
  *(&v60 + 1) = v25;
  *&v61 = v48;
  *(&v61 + 1) = v26;
  v36 = v57;
  *v31 = v56;
  *(v31 + 1) = v36;
  v37 = v59;
  *(v31 + 2) = v58;
  *(v31 + 3) = v37;
  v38 = v61;
  *(v31 + 4) = v60;
  *(v31 + 5) = v38;
  sub_1EC84(&v56, &v62);
  v39 = *(v54 + 8);
  v40 = v55;
  v39(v52, v55);
  v62 = v32;
  v63 = v33;
  v64 = v34;
  v65 = v50;
  v66 = v22;
  v67 = v49;
  v68 = v35;
  v69 = v51;
  v70 = v43;
  v71 = v25;
  v72 = v48;
  v73 = v26;
  sub_1ECBC(&v62);
  return (v39)(v53, v40);
}

uint64_t sub_1AA58(uint64_t a1)
{
  sub_1EC3C(0, &qword_4A960);
  v2 = sub_2632C();
  sub_2631C();
  sub_25E7C();

  v3 = type metadata accessor for VOTUINemethView();
  sub_16294(&qword_4A6F8);
  result = sub_2600C();
  if (v6 == 1)
  {
    v5 = *(a1 + *(v3 + 52));
    if (v5)
    {
      return v5(result);
    }

    __break(1u);
  }

  v5 = *(a1 + *(v3 + 56));
  if (v5)
  {
    return v5(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for VOTUINemethView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8, v8);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_16294(&qword_4A950);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v23 - v12;
  v15 = *a2;
  v14 = a2[1];
  v16 = sub_262FC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_1DD6C(a3, v9);
  sub_262DC();

  v17 = sub_262CC();
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_1DE28(v9, v20 + v18);
  v21 = (v20 + v19);
  *v21 = v15;
  v21[1] = v14;
  sub_1B498(0, 0, v13, &unk_2D828, v20);
}

uint64_t sub_1AD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a4;
  v6[8] = sub_262DC();
  v6[9] = sub_262CC();
  v9 = swift_task_alloc();
  v6[10] = v9;
  *v9 = v6;
  v9[1] = sub_1ADF8;

  return sub_1AFEC(a5, a6);
}

uint64_t sub_1ADF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  v5 = sub_262BC();

  return _swift_task_switch(sub_1AF3C, v5, v4);
}

uint64_t sub_1AF3C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);

  v4 = *(v3 + 40);
  *(v0 + 16) = *(v3 + 24);
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  sub_16294(&qword_4A880);
  sub_2613C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1AFEC(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return _swift_task_switch(sub_1B010, 0, 0);
}

uint64_t sub_1B010()
{
  v1 = objc_allocWithZone(BRLTTranslationParameters);
  v2 = sub_2620C();
  *(v0 + 200) = [v1 initWithLanguage:v2 mode:4 partial:0 useTechnicalTable:1 textPositionsRange:0x7FFFFFFFFFFFFFFFLL textFormattingRanges:{0, 0}];

  *(v0 + 232) = *(type metadata accessor for VOTUINemethView() + 60);
  sub_262DC();
  *(v0 + 208) = sub_262CC();
  v4 = sub_262BC();

  return _swift_task_switch(sub_1B118, v4, v3);
}

uint64_t sub_1B118()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);

  v3 = *(v2 + v1);
  *(v0 + 216) = v3;
  v4 = v3;

  return _swift_task_switch(sub_1B198, 0, 0);
}

uint64_t sub_1B198()
{
  v1 = v0[27];
  if (v1)
  {
    v2 = v0[25];
    v3 = sub_2620C();
    v0[28] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1B320;
    v4 = swift_continuation_init();
    v0[17] = sub_16294(&qword_4A958);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1C0A4;
    v0[13] = &unk_3ECE0;
    v0[14] = v4;
    [v1 textForBraille:v3 parameters:v2 withReply:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5(0, 0xE000000000000000);
  }
}

uint64_t sub_1B320()
{

  return _swift_task_switch(sub_1B400, 0, 0);
}

uint64_t sub_1B400()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[18];
  v5 = v0[19];
  sub_1EC28(v0[20], v0[21]);

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t sub_1B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_16294(&qword_4A950);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_1E80C(a3, v26 - v11, &qword_4A950);
  v13 = sub_262FC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E874(v12, &qword_4A950);
  }

  else
  {
    sub_262EC();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_262BC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2622C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1E874(a3, &qword_4A950);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E874(a3, &qword_4A950);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B798()
{
  sub_16294(&qword_4A880);
  sub_2612C();
  sub_1E45C();
  sub_2635C();

  sub_2635C();

  v0 = sub_22E5C(0, 0, 0);

  if (v0)
  {
    sub_22028();

    sub_2613C();
  }

  return result;
}

uint64_t sub_1BA28()
{
  sub_16294(&qword_4A888);
  sub_2612C();
  v0 = objc_allocWithZone(UIImage);
  isa = sub_25E1C().super.isa;
  v2 = [v0 initWithData:isa];

  result = sub_1DDD4(v4, v5);
  if (v2)
  {
    sub_16294(&qword_4A908);
    return sub_2613C();
  }

  return result;
}

uint64_t sub_1BB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_16294(&qword_4A890);
  __chkstk_darwin(v23, v3);
  v21 = &v21 - v4;
  v22 = sub_16294(&qword_4A898);
  v5 = *(v22 - 8);
  __chkstk_darwin(v22, v6);
  v8 = &v21 - v7;
  v9 = sub_25FFC();
  __chkstk_darwin(v9 - 8, v10);
  v11 = sub_16294(&qword_4A8A0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v21 - v14;
  sub_25FEC();
  v26 = a1;
  sub_16294(&qword_4A8A8);
  sub_1FB10(&qword_4A8B0, &qword_4A8A8);
  sub_25E9C();
  sub_25FDC();
  v25 = a1;
  sub_16294(&qword_4A8B8);
  sub_1FB10(&qword_4A8C0, &qword_4A8B8);
  sub_25E9C();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  sub_25F0C();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1BE88()
{
  sub_16294(&qword_4A8C8);
  sub_1E020();
  return sub_2606C();
}

uint64_t sub_1BF20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2610C();
  *a1 = result;
  return result;
}

uint64_t sub_1BF60(uint64_t a1)
{
  v2 = type metadata accessor for VOTUINemethView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8, v5);
  sub_25EEC();
  sub_1DD6C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1DE28(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return sub_2617C();
}

uint64_t sub_1C0A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_163BC((a1 + 32), *(a1 + 56));
  if (a2)
  {
    a2 = sub_2621C();
    v7 = v6;
    if (a3)
    {
LABEL_3:
      v8 = a3;
      a3 = sub_25E2C();
      v10 = v9;

      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0xF000000000000000;
LABEL_6:
  v11 = *(*(v5 + 64) + 40);
  *v11 = a2;
  v11[1] = v7;
  v11[2] = a3;
  v11[3] = v10;

  return _swift_continuation_resume(v5);
}

uint64_t sub_1C168@<X0>(uint64_t a1@<X8>)
{
  sub_16294(&qword_4A810);
  sub_1D71C(&qword_4A818);
  sub_1D71C(&qword_4A820);
  sub_1D71C(&qword_4A828);
  sub_1D71C(&qword_4A830);
  sub_1D71C(&qword_4A838);
  sub_1D71C(&qword_4A840);
  sub_1DC60();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1DD18();
  swift_getOpaqueTypeConformance2();
  sub_1FB10(&qword_4A868, &qword_4A820);
  swift_getOpaqueTypeConformance2();
  sub_25EBC();
  v2 = sub_25ECC();
  v3 = sub_2605C();
  result = sub_16294(&qword_4A870);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_1C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  sub_262DC();
  v5[22] = sub_262CC();
  v7 = sub_262BC();
  v5[23] = v7;
  v5[24] = v6;

  return _swift_task_switch(sub_1C4F0, v7, v6);
}

uint64_t sub_1C4F0()
{
  v1 = v0[20];
  v2 = [objc_allocWithZone(WKSnapshotConfiguration) init];
  v0[25] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C638;
  v3 = swift_continuation_init();
  v0[17] = sub_16294(&qword_4A9B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1C920;
  v0[13] = &unk_3ED80;
  v0[14] = v3;
  [v1 takeSnapshotWithConfiguration:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1C638()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1C8A8;
  }

  else
  {
    v5 = sub_1C768;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1C768()
{
  v1 = v0[25];

  v2 = v0[18];
  v3 = UIImageJPEGRepresentation(v2, 1.0);

  if (v3)
  {
    v4 = v0[21];
    v5 = sub_25E2C();
    v7 = v6;

    v8 = *(v4 + OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 40);
    v9 = *(v4 + OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 48);
    v10 = *(v4 + OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 56);
    v0[10] = *(v4 + OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 32);
    v0[11] = v8;
    v0[12] = v9;
    v0[13] = v10;
    v0[18] = v5;
    v0[19] = v7;

    sub_1F9F4(v9, v10);
    sub_16294(&qword_4A9A8);
    sub_2619C();
    v12 = v0[12];
    v11 = v0[13];

    sub_1DDD4(v12, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1C8A8()
{
  v1 = *(v0 + 200);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C920(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_163BC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_16294(&qword_4A9B8);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_16294(&qword_4A950);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_1E80C(a3, v23 - v10, &qword_4A950);
  v12 = sub_262FC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E874(v11, &qword_4A950);
  }

  else
  {
    sub_262EC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_262BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2622C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1E874(a3, &qword_4A950);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E874(a3, &qword_4A950);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1CCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_262DC();
  v5[4] = sub_262CC();
  v7 = sub_262BC();

  return _swift_task_switch(sub_1CD3C, v7, v6);
}

uint64_t sub_1CD3C()
{
  v1 = *(v0 + 24);

  *(swift_allocObject() + 16) = v1;
  v2 = objc_allocWithZone(WKPDFConfiguration);
  v3 = v1;
  v4 = [v2 init];
  sub_2633C();

  v5 = *(v0 + 8);

  return v5();
}

void sub_1CE14(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v4 = sub_2630C();
    sub_1EC3C(0, &qword_4A960);
    log = sub_2632C();
    if (os_log_type_enabled(log, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16[0] = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = sub_263FC();
      v9 = sub_1ED40(v7, v8, v16);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_0, log, v4, "Error creating PDF... %s", v5, 0xCu);
      sub_16400(v6);
    }

    else
    {
    }
  }

  else
  {
    v10 = *(a4 + OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 72);
    v11 = *(a4 + OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 80);
    v12 = *(a4 + OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 88);
    v16[0] = *(a4 + OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 64);
    v16[1] = v10;
    v16[2] = v11;
    v16[3] = v12;

    sub_1F9F4(v11, v12);
    sub_1FA48(a1, a2, 0);
    sub_16294(&qword_4A9A8);
    sub_2619C();

    sub_1DDD4(v11, v12);
  }
}

id sub_1D13C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NemethView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1D284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_16294(&qword_4A6F8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D354(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_16294(&qword_4A6F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for VOTUINemethView()
{
  result = qword_4A758;
  if (!qword_4A758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D450()
{
  sub_1D60C(319, &qword_4A768);
  if (v0 <= 0x3F)
  {
    sub_1D764(319, &qword_4A770, &qword_4A778, UIImage_ptr, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1D60C(319, &qword_4A780);
      if (v2 <= 0x3F)
      {
        sub_1D658(319, &qword_4A788, &type metadata accessor for FocusState);
        if (v3 <= 0x3F)
        {
          sub_1D658(319, &qword_4A790, &type metadata accessor for AccessibilityFocusState);
          if (v4 <= 0x3F)
          {
            sub_1D6B8();
            if (v5 <= 0x3F)
            {
              sub_1D764(319, &qword_4A7A8, &unk_4A7B0, BRLTTranslationService_ptr, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D60C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2615C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool, &protocol witness table for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6B8()
{
  if (!qword_4A798)
  {
    sub_1D71C(&qword_4A7A0);
    v0 = sub_2634C();
    if (!v1)
    {
      atomic_store(v0, &qword_4A798);
    }
  }
}

uint64_t sub_1D71C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1D764(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1EC3C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D7CC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1D7E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D84C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8C0(void *a1)
{
  sub_16294(&qword_4A988);
  sub_2604C();
  [a1 setNavigationDelegate:v3];

  sub_16294(&qword_4A990);
  sub_2618C();
  v2 = sub_2620C();
}

id sub_1D998()
{
  v0 = objc_allocWithZone(WKWebView);

  return [v0 init];
}

id sub_1D9DC@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v19 = v1[2];
  v20 = v3;
  v4 = v1[5];
  v21 = v1[4];
  v22 = v4;
  v5 = v1[1];
  v17 = *v1;
  v18 = v5;
  v6 = type metadata accessor for NemethView.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator__htmlString];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  v9 = &v7[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent];
  v11 = v19;
  v10 = v20;
  v12 = v22;
  *(v9 + 4) = v21;
  *(v9 + 5) = v12;
  *(v9 + 2) = v11;
  *(v9 + 3) = v10;
  v13 = v18;
  *v9 = v17;
  *(v9 + 1) = v13;
  sub_1EC84(&v17, v16);
  v15.receiver = v7;
  v15.super_class = v6;
  result = objc_msgSendSuper2(&v15, "init");
  *a1 = result;
  return result;
}

uint64_t sub_1DAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ECEC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1DB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ECEC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1DBBC()
{
  sub_1ECEC();
  sub_25FBC();
  __break(1u);
}

unint64_t sub_1DBE8()
{
  result = qword_4A808;
  if (!qword_4A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A808);
  }

  return result;
}

unint64_t sub_1DC60()
{
  result = qword_4A848;
  if (!qword_4A848)
  {
    sub_1D71C(&qword_4A840);
    sub_1FB10(&qword_4A850, &qword_4A858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A848);
  }

  return result;
}

unint64_t sub_1DD18()
{
  result = qword_4A860;
  if (!qword_4A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A860);
  }

  return result;
}

uint64_t sub_1DD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VOTUINemethView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DDD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VOTUINemethView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEA4(uint64_t a1)
{
  v2 = sub_16294(&qword_4A840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for VOTUINemethView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_1E020()
{
  result = qword_4A8D0;
  if (!qword_4A8D0)
  {
    sub_1D71C(&qword_4A8C8);
    sub_1FB10(&qword_4A8D8, &qword_4A8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A8D0);
  }

  return result;
}

unint64_t sub_1E100()
{
  result = qword_4A910;
  if (!qword_4A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A910);
  }

  return result;
}

unint64_t sub_1E154()
{
  result = qword_4A930;
  if (!qword_4A930)
  {
    sub_1EC3C(255, &qword_4A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A930);
  }

  return result;
}

uint64_t sub_1E1BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E1CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E1DC()
{
  v1 = type metadata accessor for VOTUINemethView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_1DDD4(*(v5 + 88), *(v5 + 96));

  sub_1DDD4(*(v5 + 112), *(v5 + 120));

  v6 = v0 + v3 + v1[11];
  v7 = sub_2603C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  sub_16294(&qword_4A6F8);

  if (*(v5 + v1[12]))
  {
  }

  if (*(v5 + v1[13]))
  {
  }

  if (*(v5 + v1[14]))
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E3E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VOTUINemethView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1E45C()
{
  result = qword_4A940;
  if (!qword_4A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A940);
  }

  return result;
}

uint64_t sub_1E4B0()
{
  v1 = type metadata accessor for VOTUINemethView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1DDD4(*(v5 + 88), *(v5 + 96));

  sub_1DDD4(*(v5 + 112), *(v5 + 120));

  v6 = v0 + v3 + v1[11];
  v7 = sub_2603C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  sub_16294(&qword_4A6F8);

  if (*(v5 + v1[12]))
  {
  }

  if (*(v5 + v1[13]))
  {
  }

  if (*(v5 + v1[14]))
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1E6DC(uint64_t a1)
{
  v4 = *(type metadata accessor for VOTUINemethView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1FB8C;

  return sub_1AD30(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1E80C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_16294(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E874(uint64_t a1, uint64_t *a2)
{
  v3 = sub_16294(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E8D4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E9CC;

  return v6(a1);
}

uint64_t sub_1E9CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1EAC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1EAFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1FB8C;

  return sub_1E8D4(a1, v4);
}

uint64_t sub_1EBC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1EC28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DDD4(a1, a2);
  }

  return a1;
}

uint64_t sub_1EC3C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1ECEC()
{
  result = qword_4A998;
  if (!qword_4A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A998);
  }

  return result;
}

unint64_t sub_1ED40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1EE0C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1EBC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_16400(v11);
  return v7;
}

unint64_t sub_1EE0C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1EF18(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2638C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1EF18(uint64_t a1, unint64_t a2)
{
  v3 = sub_1EF64(a1, a2);
  sub_1F094(&off_3E788);
  return v3;
}

char *sub_1EF64(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1F180(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2638C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2628C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1F180(v10, 0);
        result = sub_2636C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1F094(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1F1F4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1F180(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_16294(&qword_4A9A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1F1F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_16294(&qword_4A9A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1F2E8(void *a1)
{
  v3 = sub_16294(&qword_4A950);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v28 - v5;
  v7 = &v1[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator__htmlString];
  v9 = *&v1[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator__htmlString];
  v8 = *&v1[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator__htmlString + 8];
  v10 = &v1[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent];
  v11 = *&v1[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 16];
  v12 = *&v1[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent + 24];
  v32 = *&v1[OBJC_IVAR____TtCV9VoiceOver10NemethView11Coordinator_parent];
  v33 = v11;
  v34 = v12;

  sub_16294(&qword_4A990);
  sub_2618C();
  if (v9 == v30 && v8 == v31)
  {
  }

  else
  {
    v14 = sub_263DC();

    if (v14)
    {
      return result;
    }

    v16 = sub_262FC();
    v29 = *(*(v16 - 8) + 56);
    v29(v6, 1, 1, v16);
    sub_262DC();
    v17 = a1;
    v18 = v1;
    v19 = sub_262CC();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v17;
    v20[5] = v18;
    sub_1C9F8(0, 0, v6, &unk_2D890, v20);

    v29(v6, 1, 1, v16);
    v21 = v17;
    v22 = v18;
    v23 = sub_262CC();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v21;
    v24[5] = v22;
    sub_1B498(0, 0, v6, &unk_2D8A0, v24);

    v25 = *(v10 + 2);
    v26 = *(v10 + 3);
    v32 = *v10;
    v33 = v25;
    v34 = v26;
    sub_2618C();
    v27 = v31;
    *v7 = v30;
    *(v7 + 1) = v27;
  }
}

void sub_1F594(uint64_t a1, const char *a2)
{
  v3 = sub_2630C();
  sub_1EC3C(0, &qword_4A960);
  log = sub_2632C();
  if (os_log_type_enabled(log, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_263FC();
    v8 = sub_1ED40(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, log, v3, a2, v4, 0xCu);
    sub_16400(v5);
  }

  else
  {
  }
}

uint64_t sub_1F6F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1F7B4;

  return sub_1C458(a1, v4, v5, v7, v6);
}

uint64_t sub_1F7B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1F8A8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1F8F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1F7B4;

  return sub_1CCA4(a1, v4, v5, v7, v6);
}

uint64_t sub_1F9B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F9F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1FA48(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return _swift_errorRetain(a1, a2);
  }

  else
  {
    return sub_1F9F4(a1, a2);
  }
}

unint64_t sub_1FA58()
{
  result = qword_4A9C0;
  if (!qword_4A9C0)
  {
    sub_1D71C(&qword_4A870);
    sub_1FB10(&qword_4A9C8, &unk_4A9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4A9C0);
  }

  return result;
}

uint64_t sub_1FB10(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D71C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1FB90()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 64);
  if (!v2)
  {
    return 0;
  }

  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {
    return 0;
  }

  swift_beginAccess();
  if (!*(*(v2 + 16) + 16))
  {
    return 0;
  }

  v3 = sub_222E0();
  v5 = sub_222E0();
  v25 = 0xD000000000000029;
  v26 = 0x8000000000037560;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    do
    {
      sub_16358(v8, v22);
      v10 = v23;
      v9 = v24;
      sub_163BC(v22, v23);
      v11 = (*(*(v9 + 16) + 8))(v10);
      v13 = v12;
      sub_16400(v22);
      v27._countAndFlagsBits = v11;
      v27._object = v13;
      sub_2627C(v27);

      v8 += 40;
      --v7;
    }

    while (v7);
  }

  v28._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
  v28._object = 0xED00003E776F726DLL;
  sub_2627C(v28);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 32;

    do
    {
      sub_16358(v16, v22);
      v18 = v23;
      v17 = v24;
      sub_163BC(v22, v23);
      v19 = (*(*(v17 + 16) + 8))(v18);
      v21 = v20;
      sub_16400(v22);
      v29._countAndFlagsBits = v19;
      v29._object = v21;
      sub_2627C(v29);

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  v30._object = 0x8000000000037590;
  v30._countAndFlagsBits = 0xD000000000000018;
  sub_2627C(v30);

  return v25;
}

uint64_t sub_1FF08()
{

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1FF84(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 48) = a1;

  if ((*(v2 + 33) & 1) == 0)
  {
    *(v2 + 48) = 0;
  }

  return result;
}

uint64_t static PDFDocument.transferRepresentation.getter()
{
  v0 = sub_25E6C();
  __chkstk_darwin(v0 - 8, v1);
  sub_25E4C();
  sub_20184();
  sub_1E154();
  return sub_25E3C();
}

uint64_t sub_200DC()
{
  v1 = [*(v0 + 16) dataRepresentation];
  if (v1)
  {
    v2 = v1;
    v3 = sub_25E2C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xC000000000000000;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

unint64_t sub_20184()
{
  result = qword_4A928;
  if (!qword_4A928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4A928);
  }

  return result;
}

uint64_t sub_201EC()
{
  v0 = sub_25E6C();
  __chkstk_darwin(v0 - 8, v1);
  sub_25E4C();
  sub_20184();
  return sub_25E3C();
}

unint64_t sub_202A0()
{
  result = qword_4ABC8;
  if (!qword_4ABC8)
  {
    sub_1D71C(&qword_4ABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4ABC8);
  }

  return result;
}

uint64_t sub_20390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_20C78(a2);
  sub_16294(&qword_4ABD8);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

double sub_203F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 45250 && a2 == 0xA200000000000000;
  if (v6 || (sub_263DC() & 1) != 0)
  {
    v7 = type metadata accessor for Variable();
    v8 = swift_allocObject();
    *(v8 + 32) = 258;
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *(v8 + 56) = 0x552D4C4D6874614DLL;
    *(v8 + 64) = 0xEB0000000074696ELL;
LABEL_7:
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    v9 = &off_3E9F0;
LABEL_12:
    a3[3] = v7;
    a3[4] = v9;
    *a3 = v8;

    return result;
  }

  if (a1 == 8554722 && a2 == 0xA300000000000000 || (sub_263DC() & 1) != 0)
  {
    goto LABEL_11;
  }

  if (sub_261DC())
  {
    v7 = type metadata accessor for Variable();
    v8 = swift_allocObject();
    *(v8 + 32) = 258;
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0xE000000000000000;
    goto LABEL_7;
  }

  if (sub_261EC())
  {
LABEL_11:
    v7 = type metadata accessor for Number();
    v8 = swift_allocObject();
    *(v8 + 32) = 257;
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    v9 = &off_3E958;
    goto LABEL_12;
  }

  v11 = sub_261CC();
  if (v11)
  {
    v17[0] = a1;
    v17[1] = a2;
    __chkstk_darwin(v11, v12);
    v16[2] = v17;
    v13 = sub_20BCC(sub_20D8C, v16, &off_3E718);
    swift_arrayDestroy();
    v14 = type metadata accessor for Operator();
    v15 = swift_allocObject();
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 33) = v13 & 1;
    *(v15 + 34) = 1;
    a3[3] = v14;
    a3[4] = &off_3F108;
    *a3 = v15;
  }

  else
  {

    return sub_206AC(a1, a2, a3);
  }

  return result;
}

double sub_206AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_4A0A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_4B8C0;
  if (*(qword_4B8C0 + 16))
  {
    v7 = sub_20A9C(a1, a2);
    if (v8)
    {
      v9 = (*(v6 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      swift_endAccess();
      v12 = type metadata accessor for Variable();
      v13 = swift_allocObject();
      *(v13 + 32) = 258;
      *(v13 + 16) = v11;
      *(v13 + 24) = v10;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0xE000000000000000;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      v14 = &off_3E9F0;
LABEL_27:
      *(a3 + 24) = v12;
      *(a3 + 32) = v14;
      *a3 = v13;

      return result;
    }
  }

  swift_endAccess();
  if (qword_4A0A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_4B8C8;
  if (*(qword_4B8C8 + 16))
  {
    v16 = sub_20A9C(a1, a2);
    if (v17)
    {
      v18 = (*(v15 + 56) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      swift_endAccess();
      v12 = type metadata accessor for Operator();
      v13 = swift_allocObject();
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 16) = v20;
      *(v13 + 24) = v19;
      v21 = 256;
LABEL_16:
      *(v13 + 33) = v21;
      v14 = &off_3F108;
      goto LABEL_27;
    }
  }

  swift_endAccess();
  if (qword_4A0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = qword_4B8D0;
  if (*(qword_4B8D0 + 16))
  {
    v23 = sub_20A9C(a1, a2);
    if (v24)
    {
      v25 = (*(v22 + 56) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      swift_endAccess();
      v12 = type metadata accessor for Operator();
      v13 = swift_allocObject();
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 16) = v27;
      *(v13 + 24) = v26;
      v21 = 257;
      goto LABEL_16;
    }
  }

  swift_endAccess();
  if (qword_4A0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = qword_4B8D8;
  if (*(qword_4B8D8 + 16))
  {
    v29 = sub_20A9C(a1, a2);
    if (v30)
    {
      v31 = (*(v28 + 56) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      swift_endAccess();
      v12 = type metadata accessor for Function();
      v13 = swift_allocObject();
      *(v13 + 32) = 261;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 16) = v33;
      *(v13 + 24) = v32;
      v14 = &off_3EA88;
      goto LABEL_27;
    }
  }

  swift_endAccess();
  if (qword_4A0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v34 = qword_4B8E0;
  if (*(qword_4B8E0 + 16))
  {
    v35 = sub_20A9C(a1, a2);
    if (v36)
    {
      v37 = (*(v34 + 56) + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      swift_endAccess();
      v12 = type metadata accessor for Number();
      v13 = swift_allocObject();
      *(v13 + 32) = 257;
      *(v13 + 16) = v39;
      *(v13 + 24) = v38;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      v14 = &off_3E958;
      goto LABEL_27;
    }
  }

  swift_endAccess();
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t sub_20A9C(uint64_t a1, uint64_t a2)
{
  sub_2645C();
  sub_2623C();
  v4 = sub_2647C();

  return sub_20B14(a1, a2, v4);
}

unint64_t sub_20B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_263DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_20BCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_20C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_16294(&unk_4ABE0);
    v3 = sub_263AC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_20A9C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_20D8C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_263DC() & 1;
  }
}

uint64_t type metadata accessor for VOTUINemethVC()
{
  result = qword_4AC00;
  if (!qword_4AC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2134C(char a1)
{
  v3 = type metadata accessor for VOTUINemethView();
  v4 = (v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VOTUINemethController();
  v42.receiver = v1;
  v42.super_class = v8;
  objc_msgSendSuper2(&v42, "viewDidAppear:", a1 & 1);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v35 = objc_allocWithZone(type metadata accessor for VOTUINemethVC());
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  v12 = v1;

  sub_2611C();
  v13 = v37;
  *v7 = aBlock;
  *(v7 + 2) = v13;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_2611C();
  v14 = v37;
  *(v7 + 24) = aBlock;
  *(v7 + 5) = v14;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_2611C();
  v15 = v37;
  *(v7 + 3) = aBlock;
  *(v7 + 8) = v15;
  *&v41 = [objc_allocWithZone(UIImage) init];
  sub_1EC3C(0, &qword_4A778);
  sub_2611C();
  v16 = *(&aBlock + 1);
  *(v7 + 9) = aBlock;
  *(v7 + 10) = v16;
  v34 = xmmword_2D480;
  v41 = xmmword_2D480;
  sub_2611C();
  v17 = v37;
  *(v7 + 88) = aBlock;
  *(v7 + 13) = v17;
  v41 = v34;
  sub_2611C();
  v18 = v37;
  *(v7 + 7) = aBlock;
  *(v7 + 16) = v18;
  v7[136] = sub_25E8C() & 1;
  *(v7 + 18) = v19;
  v7[152] = v20 & 1;
  sub_2602C();
  v21 = &v7[v4[14]];
  v22 = &v7[v4[15]];
  v23 = v4[16];
  v24 = v4[17];
  v25 = &v7[v23];
  *&v7[v24] = [objc_opt_self() serviceForIdentifier:kBTDuxburyServiceIdentifier input:0 loopback:1];
  *v21 = sub_21C48;
  v21[1] = v9;
  *v22 = sub_21C50;
  v22[1] = v10;
  *v25 = sub_21C5C;
  v25[1] = v11;
  v26 = sub_25F1C();

  [v26 setTransitioningDelegate:v12];
  [v26 setModalInPresentation:1];
  [v26 setModalPresentationStyle:2];
  [v26 setAccessibilityViewIsModal:1];
  v27 = [v26 view];
  if (v27)
  {
    v28 = v27;
    [v27 setAccessibilityViewIsModal:1];

    [v12 setAccessibilityViewIsModal:1];
    v29 = [v12 view];
    if (v29)
    {
      v30 = v29;
      [v29 setAccessibilityViewIsModal:1];

      [v26 didMoveToParentViewController:v12];
      v31 = swift_allocObject();
      *(v31 + 16) = v26;
      v39 = sub_21CB8;
      v40 = v31;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v37 = sub_21878;
      v38 = &unk_3EEE0;
      v32 = _Block_copy(&aBlock);
      v33 = v26;

      [v12 presentViewController:v33 animated:1 completion:v32];
      _Block_release(v32);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21810(char *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = *&a1[OBJC_IVAR___VOTUINemethController_dismissAction];

  v2(v3);
}

uint64_t sub_21878(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_219F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_21AB4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(UISheetPresentationController) initWithPresentedViewController:a1 presentingViewController:a2];
  sub_16294(&qword_4AD78);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2DA10;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 mediumDetent];
  *(v4 + 40) = [v5 largeDetent];
  sub_1EC3C(0, &unk_4AD80);
  isa = sub_262AC().super.isa;

  [v3 setDetents:isa];

  [v3 setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierMedium];
  [v3 setPrefersGrabberVisible:1];
  [v3 setDelegate:v2];
  return v3;
}

uint64_t sub_21C10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_21C68(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);

  v2(v3);
}

uint64_t sub_21CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CE4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

Swift::Int sub_21D64()
{
  v1 = *v0;
  sub_2645C();
  sub_2646C(v1);
  return sub_2647C();
}

Swift::Int sub_21DD8()
{
  v1 = *v0;
  sub_2645C();
  sub_2646C(v1);
  return sub_2647C();
}

void *sub_21E1C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24228(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_16294(&qword_4AF08);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21F24(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24370(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_16294(&qword_4AF30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_22028()
{
  v0 = sub_222E0();
  v21 = 0xD0000000000000F2;
  v22 = 0x8000000000037840;
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v20 = &_swiftEmptyArrayStorage;

    sub_244A4(0, v2, 0);
    v3 = &_swiftEmptyArrayStorage;
    v4 = v1 + 32;
    do
    {
      sub_16358(v4, v17);
      v6 = v18;
      v5 = v19;
      sub_163BC(v17, v18);
      v7 = (*(*(v5 + 16) + 8))(v6);
      v9 = v8;
      sub_16400(v17);
      v20 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_244A4((v10 > 1), v11 + 1, 1);
        v3 = v20;
      }

      v3[2] = v11 + 1;
      v12 = &v3[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v17[0] = v3;
  sub_16294(&qword_4AF10);
  sub_248D4();
  v13 = sub_261FC();
  v15 = v14;

  v23._countAndFlagsBits = v13;
  v23._object = v15;
  sub_2627C(v23);

  v24._object = 0x8000000000037940;
  v24._countAndFlagsBits = 0xD000000000000015;
  sub_2627C(v24);

  return v21;
}

uint64_t sub_222E0()
{
  swift_beginAccess();
  v81 = v0;

  v3 = sub_22BDC(v2);

  type metadata accessor for LatexToMathMLTree();
  result = swift_allocObject();
  v5 = result;
  *(result + 16) = &_swiftEmptyArrayStorage;
  v80 = *(v3 + 2);
  if (!v80)
  {

    v71 = &_swiftEmptyArrayStorage;
LABEL_49:
    swift_beginAccess();
    sub_21E1C(v71);
    swift_endAccess();
    return v5;
  }

  v73[1] = result + 16;
  v73[2] = v1;
  v74 = result;
  v6 = 0;
  v7 = 0;
  v79 = v3 + 32;
  v8 = &_swiftEmptyArrayStorage;
  v77 = v3;
  while (1)
  {
    if (v7 >= *(v3 + 2))
    {
      goto LABEL_55;
    }

    v11 = &v79[16 * v7];
    v12 = *v11;
    v13 = v11[1];
    v14 = *v11 == 1;
    v83 = v6;
    if (v14)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      v15 = *(v81 + 16);
      if (v6 >= *(v15 + 16))
      {
        goto LABEL_58;
      }

      sub_16358(v15 + 40 * v6 + 32, v90);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_24228(0, v8[2] + 1, 1, v8);
        v93 = v8;
      }

      v18 = v8[2];
      v17 = v8[3];
      if (v18 >= v17 >> 1)
      {
        v19 = sub_24228((v17 > 1), v18 + 1, 1, v8);
        v93 = v19;
      }

      else
      {
        v19 = v8;
      }

      v20 = v91;
      v21 = v92;
      v22 = sub_24884(v90, v91);
      __chkstk_darwin(v22, v22);
      v24 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24);
      sub_245D0(v18, v24, &v93, v20, v21);
      sub_16400(v90);

      v6 = v83 + 1;
      v8 = v19;
      goto LABEL_5;
    }

    v26 = v6 + v12;
    if (__OFADD__(v6, v12))
    {
      goto LABEL_57;
    }

    if (v26 < v6)
    {
      goto LABEL_59;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    v27 = *(v81 + 16);
    v28 = *(v27 + 16);
    if (v28 < v6 || v28 < v26)
    {
      goto LABEL_61;
    }

    v82 = v8;
    v78 = v27;
    v76 = v6 + v12;
    if (v26 != v6)
    {
      break;
    }

    v30 = &_swiftEmptyArrayStorage;
LABEL_32:
    v90[0] = v30;
    sub_16294(&qword_4AF10);
    sub_248D4();
    v40 = sub_261FC();
    v42 = v41;

    v43 = *(v13 + 16);
    if (!v43)
    {

LABEL_52:
      sub_24830();
      swift_allocError();
      *v72 = 4;
      swift_willThrow();

      v5 = v74;

      return v5;
    }

    sub_16358(v13 + 32, v90);
    sub_16358(v13 + 32 + 40 * v43 - 40, v87);
    v45 = v91;
    v44 = v92;
    sub_163BC(v90, v91);
    v46 = (*(*(v44 + 8) + 32))(v45);
    v48 = v88;
    v47 = v89;
    sub_163BC(v87, v88);
    v49 = (*(*(v47 + 8) + 32))(v48);
    v3 = v77;
    if (v46 != v49)
    {

      sub_16400(v87);
      sub_16400(v90);
      goto LABEL_52;
    }

    v51 = v91;
    v50 = v92;
    sub_163BC(v90, v91);
    v52 = (*(*(v50 + 8) + 32))(v51);
    if (v52 == 2)
    {
      v65 = v88;
      v64 = v89;
      sub_163BC(v87, v88);
      v66 = (*(*(v64 + 8) + 88))(v65);
      v68 = v88;
      v67 = v89;
      sub_163BC(v87, v88);
      v69 = (*(*(v67 + 8) + 64))(v68);
      v59 = type metadata accessor for Variable();
      v60 = swift_allocObject();
      *(v60 + 32) = 258;
      *(v60 + 16) = v40;
      *(v60 + 24) = v42;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0xE000000000000000;
      *(v60 + 40) = v69;
      *(v60 + 48) = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_24228(0, v82[2] + 1, 1, v82);
      }

      v62 = v82[2];
      v70 = v82[3];
      v63 = v62 + 1;
      if (v62 >= v70 >> 1)
      {
        v82 = sub_24228((v70 > 1), v62 + 1, 1, v82);
      }

      v9 = &off_3E9F0;
    }

    else
    {
      if (v52 != 1)
      {

        sub_16400(v87);
        result = sub_16400(v90);
        v8 = v82;
        v6 = v83;
        goto LABEL_5;
      }

      v54 = v88;
      v53 = v89;
      sub_163BC(v87, v88);
      v55 = (*(*(v53 + 8) + 88))(v54);
      v57 = v88;
      v56 = v89;
      sub_163BC(v87, v88);
      v58 = (*(*(v56 + 8) + 64))(v57);
      v59 = type metadata accessor for Number();
      v60 = swift_allocObject();
      *(v60 + 32) = 257;
      *(v60 + 16) = v40;
      *(v60 + 24) = v42;
      *(v60 + 40) = v58;
      *(v60 + 48) = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_24228(0, v82[2] + 1, 1, v82);
      }

      v62 = v82[2];
      v61 = v82[3];
      v63 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        v82 = sub_24228((v61 > 1), v62 + 1, 1, v82);
      }

      v9 = &off_3E958;
    }

    v85 = v59;
    v86 = v9;
    *&v84 = v60;
    v8 = v82;
    v10 = &v82[5 * v62];
    v82[2] = v63;
    sub_162DC(&v84, (v10 + 4));
    sub_16400(v87);
    sub_16400(v90);

    v6 = v76;
    v3 = v77;
LABEL_5:
    if (++v7 == v80)
    {

      v5 = v74;
      v71 = v8;
      goto LABEL_49;
    }
  }

  v87[0] = &_swiftEmptyArrayStorage;
  v75 = v13;

  result = sub_244A4(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v30 = v87[0];
    v31 = v27 + 40 * v83 + 32;
    while (v12)
    {
      sub_16358(v31, v90);
      v33 = v91;
      v32 = v92;
      sub_163BC(v90, v91);
      v34 = (*(*(v32 + 8) + 8))(v33);
      v36 = v35;
      result = sub_16400(v90);
      v87[0] = v30;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        result = sub_244A4((v37 > 1), v38 + 1, 1);
        v30 = v87[0];
      }

      v30[2] = v38 + 1;
      v39 = &v30[2 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
      v31 += 40;
      if (!--v12)
      {
        v13 = v75;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22BDC(uint64_t a1)
{
  v5 = &_swiftEmptyArrayStorage;
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 5;
    sub_25678(&v5, v1);
    v1 = v3;
  }

  return v5;
}

uint64_t sub_22C58()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for LatexTranslatableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LatexTranslatableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22E08()
{
  result = qword_4AEF0;
  if (!qword_4AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4AEF0);
  }

  return result;
}

uint64_t sub_22E5C(int a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v97 = a2;
  type metadata accessor for LatexToMathMLTree();
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  v84 = a1;
  if ((a1 & 1) != 0 && a3)
  {
    sub_24830();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();

    return v9;
  }

  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v11 = v5[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v5[2] >> 14 >= (4 * v12))
  {
LABEL_100:
    sub_23B78(&v94);
    return v9;
  }

  v82 = (v8 + 16);
  v83 = v8;
  while (1)
  {
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
    v13 = sub_2629C();
    v15 = v14;
    v16 = sub_2624C();
    v5[2] = v16;
    if (v84)
    {
      if (v17 = v16, v13 == 94) && v15 == 0xE100000000000000 || (sub_263DC() & 1) != 0 || v13 == 125 && v15 == 0xE100000000000000 || (sub_263DC() & 1) != 0 || v13 == 95 && v15 == 0xE100000000000000 || (sub_263DC() & 1) != 0 || v13 == 38 && v15 == 0xE100000000000000 || (sub_263DC())
      {

        if (v17 >= 0x4000)
        {
          v79 = sub_2625C();
          sub_23B78(&v91);
          v5[2] = v79;
        }

        else
        {
          sub_23B78(&v91);
        }

        goto LABEL_100;
      }
    }

    if (a3 && (v13 == v97 && v15 == a3 || (sub_263DC() & 1) != 0))
    {
      sub_23B78(&v91);

      goto LABEL_100;
    }

    if ((v13 != 94 || v15 != 0xE100000000000000) && (sub_263DC() & 1) == 0)
    {
      if (v13 == 95 && v15 == 0xE100000000000000 || (sub_263DC() & 1) != 0)
      {
        sub_23BE0(&v94, &v88);
        v22 = *(&v89 + 1);
        result = sub_23B78(&v88);
        if (v22)
        {
          v23 = *(&v95 + 1);
          if (!*(&v95 + 1))
          {
            goto LABEL_112;
          }

          v24 = v96;
          sub_163BC(&v94, *(&v95 + 1));
          result = (*(*(v24 + 8) + 88))(v23);
          if (result)
          {
          }

          else
          {
            v45 = *(&v95 + 1);
            if (!*(&v95 + 1))
            {
              goto LABEL_113;
            }

            v46 = v96;
            v47 = sub_163BC(&v94, *(&v95 + 1));
            v81 = &v81;
            v48 = *(v45 - 8);
            __chkstk_darwin(v47, v47);
            v50 = &v81 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v48 + 16))(v50);
            v51 = (*(*(v46 + 8) + 56))(v45);
            (*(v48 + 8))(v50, v45);
            v9 = v83;
            if (v51)
            {
LABEL_62:
              result = sub_22E5C(1, 0, 0);
              if (v4)
              {
                goto LABEL_102;
              }

              if (!*(&v95 + 1))
              {
                goto LABEL_109;
              }

              v57 = result;

              v59 = *(&v95 + 1);
              v58 = v96;
              sub_24884(&v94, *(&v95 + 1));
              (*(*(v58 + 8) + 96))(v57, v59);
              goto LABEL_46;
            }
          }
        }

        v52 = type metadata accessor for Number();
        v53 = swift_allocObject();
        *(v53 + 32) = 257;
        *(v53 + 16) = 0;
        *(v53 + 24) = 0xE000000000000000;
        *(v53 + 40) = 0;
        *(v53 + 48) = 0;
        *(&v89 + 1) = v52;
        v90 = &off_3E958;
        *&v88 = v53;
        sub_23C50(&v88, &v94);
        result = sub_23BE0(&v94, &v88);
        v54 = *(&v89 + 1);
        if (!*(&v89 + 1))
        {
          goto LABEL_111;
        }

        v55 = v90;
        v56 = sub_163BC(&v88, *(&v89 + 1));
        sub_24668(v56, v9, v54, v55);
        sub_16400(&v88);
        goto LABEL_62;
      }

      if (v13 == 123 && v15 == 0xE100000000000000 || (sub_263DC() & 1) != 0)
      {

        v41 = sub_22E5C(0, 125, 0xE100000000000000);
        if (v4)
        {
          goto LABEL_103;
        }

        v42 = v41;
        if (v41)
        {
          swift_beginAccess();
          v43 = *(v42 + 16);
          v44 = *(v43 + 16);
          if (v44)
          {
            sub_16358(v43 + 40 * v44 - 8, &v88);
          }

          else
          {
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
          }

          sub_23C50(&v88, &v94);
          swift_beginAccess();

          sub_21E1C(v73);
          swift_endAccess();

          sub_23B78(&v91);
          goto LABEL_79;
        }
      }

      else
      {
        if ((v13 != 40 || v15 != 0xE100000000000000) && (sub_263DC() & 1) == 0)
        {
          if (v13 == 92 && v15 == 0xE100000000000000 || (sub_263DC() & 1) != 0)
          {

            v74 = sub_23CC0();
            sub_23DBC(v74, v75, &v88);
            if (v4)
            {
LABEL_102:
              sub_23B78(&v91);

              goto LABEL_100;
            }

            sub_23B78(&v91);

            v91 = v88;
            v92 = v89;
            v93 = v90;
LABEL_86:
            sub_23BE0(&v91, &v85);
            if (v86)
            {
              sub_162DC(&v85, &v88);
              v76 = *(&v89 + 1);
              v77 = v90;
              v78 = sub_163BC(&v88, *(&v89 + 1));
              sub_24668(v78, v9, v76, v77);
              sub_16400(&v88);
            }

            else
            {
              sub_23B78(&v85);
            }

            sub_23C50(&v91, &v94);
LABEL_79:
            if (v84)
            {
              goto LABEL_100;
            }

            goto LABEL_47;
          }

          if (v13 == 38 && v15 == 0xE100000000000000 || (sub_263DC() & 1) != 0)
          {

            sub_24830();
            swift_allocError();
            *v80 = 2;
            swift_willThrow();

            sub_23B78(&v91);
            goto LABEL_100;
          }

          sub_203F4(v13, v15, &v88);

          sub_23B78(&v91);
          v91 = v88;
          v92 = v89;
          v93 = v90;
          sub_23BE0(&v91, &v88);
          if (*(&v89 + 1))
          {
            sub_23B78(&v88);
            goto LABEL_86;
          }

          sub_23B78(&v91);
          v72 = &v88;
          goto LABEL_76;
        }

        v60 = sub_22E5C(0, 41, 0xE100000000000000);
        if (v4)
        {
LABEL_103:
          sub_23B78(&v91);

          goto LABEL_100;
        }

        v61 = v60;
        if (v60)
        {
          v62 = type metadata accessor for Operator();
          v63 = swift_allocObject();
          *(v63 + 32) = 0;
          *(v63 + 40) = 0;
          *(v63 + 48) = 0;
          *(v63 + 16) = 40;
          *(v63 + 24) = 0xE100000000000000;
          *(v63 + 33) = 256;
          *(&v89 + 1) = v62;
          v90 = &off_3F108;
          *&v88 = v63;
          v64 = swift_allocObject();
          *(v64 + 32) = 0;
          *(v64 + 40) = 0;
          *(v64 + 48) = 0;
          *(v64 + 16) = 41;
          *(v64 + 24) = 0xE100000000000000;
          *(v64 + 33) = 256;
          v86 = v62;
          v87 = &off_3F108;
          *&v85 = v64;
          v65 = type metadata accessor for FencedGroup();
          v66 = swift_allocObject();
          *(v66 + 32) = 6;
          *(v66 + 40) = 0;
          *(v66 + 48) = 0;
          *(v66 + 16) = 0;
          *(v66 + 24) = 0xE000000000000000;
          sub_162DC(&v88, v66 + 56);
          sub_162DC(&v85, v66 + 96);
          *(v66 + 136) = v61;
          v67 = v82;
          swift_beginAccess();
          v68 = *v67;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = sub_24228(0, v68[2] + 1, 1, v68);
          }

          v71 = v68[2];
          v70 = v68[3];
          if (v71 >= v70 >> 1)
          {
            v68 = sub_24228((v70 > 1), v71 + 1, 1, v68);
          }

          *(&v89 + 1) = v81;
          v90 = &off_3F1A0;
          *&v88 = v66;
          v68[2] = v71 + 1;
          sub_162DC(&v88, &v68[5 * v71 + 4]);
          *v82 = v68;
          swift_endAccess();

          sub_23B78(&v91);

          goto LABEL_47;
        }
      }

      v72 = &v91;
LABEL_76:
      sub_23B78(v72);
      goto LABEL_47;
    }

    sub_23BE0(&v94, &v88);
    v18 = *(&v89 + 1);
    result = sub_23B78(&v88);
    if (v18)
    {
      v20 = *(&v95 + 1);
      if (!*(&v95 + 1))
      {
        goto LABEL_108;
      }

      v21 = v96;
      sub_163BC(&v94, *(&v95 + 1));
      result = (*(*(v21 + 8) + 64))(v20);
      if (result)
      {
      }

      else
      {
        v25 = *(&v95 + 1);
        if (!*(&v95 + 1))
        {
          goto LABEL_110;
        }

        v26 = v96;
        v27 = sub_163BC(&v94, *(&v95 + 1));
        v28 = *(v25 - 8);
        __chkstk_darwin(v27, v27);
        v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v30);
        LOBYTE(v26) = (*(*(v26 + 8) + 56))(v25);
        (*(v28 + 8))(v30, v25);
        v9 = v83;
        if (v26)
        {
          goto LABEL_43;
        }
      }
    }

    v31 = type metadata accessor for Number();
    v32 = swift_allocObject();
    *(v32 + 32) = 257;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0xE000000000000000;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(&v89 + 1) = v31;
    v90 = &off_3E958;
    *&v88 = v32;
    sub_23C50(&v88, &v94);
    result = sub_23BE0(&v94, &v88);
    v33 = *(&v89 + 1);
    if (!*(&v89 + 1))
    {
      goto LABEL_107;
    }

    v34 = v90;
    v35 = sub_163BC(&v88, *(&v89 + 1));
    sub_24668(v35, v9, v33, v34);
    sub_16400(&v88);
LABEL_43:
    result = sub_22E5C(1, 0, 0);
    if (v4)
    {
      goto LABEL_102;
    }

    if (!*(&v95 + 1))
    {
      break;
    }

    v36 = result;

    v38 = *(&v95 + 1);
    v37 = v96;
    sub_24884(&v94, *(&v95 + 1));
    (*(*(v37 + 8) + 72))(v36, v38);
LABEL_46:
    sub_23B78(&v91);
    v9 = v83;
LABEL_47:
    v39 = v5[1];
    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = *v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v5[2] >> 14 >= (4 * v40))
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_23B78(uint64_t a1)
{
  v2 = sub_16294(&qword_4AEF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_16294(&qword_4AEF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_16294(&qword_4AEF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23CC0()
{
  v1 = v0;
  v2 = v0[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 4 * v3;
  if ((4 * v3) > v0[2] >> 14)
  {
    while (1)
    {
      v5 = sub_2629C();
      v7 = v6;
      v8 = sub_2624C();
      v1[2] = v8;
      if ((sub_261DC() & 1) == 0)
      {
        break;
      }

      v10._countAndFlagsBits = v5;
      v10._object = v7;
      sub_2626C(v10);

      if (v4 <= v1[2] >> 14)
      {
        return 0;
      }
    }

    if (v8 >= 0x4000)
    {
      v1[2] = sub_2625C();
    }
  }

  return 0;
}

uint64_t sub_23DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_206AC(a1, a2, &v35);
  if (v36)
  {
    sub_162DC(&v35, v37);
    return sub_162DC(v37, a3);
  }

  sub_23B78(&v35);
  if (a1 == 1667330662 && a2 == 0xE400000000000000 || (sub_263DC() & 1) != 0)
  {
    v9 = type metadata accessor for Fraction();
    v10 = swift_allocObject();
    *(v10 + 32) = 4;
    v11 = 0uLL;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    v12 = v3[1];
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v12) & 0xF;
    }

    if (v3[2] >> 14 < (4 * v13))
    {
      v14 = v10;
      v15 = sub_22E5C(1, 0, 0);
      if (!v4)
      {
        *(v14 + 56) = v15;

        *(v14 + 64) = sub_22E5C(1, 0, 0);

        *(a3 + 24) = v9;
        *(a3 + 32) = &off_3EE28;
        *a3 = v14;
        return result;
      }
    }

    *(a3 + 32) = 0;
    goto LABEL_13;
  }

  if ((a1 != 1953657203 || a2 != 0xE400000000000000) && (sub_263DC() & 1) == 0)
  {
    sub_24830();
    swift_allocError();
    *v26 = 3;
    return swift_willThrow();
  }

  v16 = type metadata accessor for Radical();
  swift_allocObject();
  v38 = v3;
  v17 = sub_15AB8(0, 0xE000000000000000);
  v18 = v38;
  v19 = v38[1];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v38[2] >> 14 >= (4 * v20))
  {
    *(a3 + 32) = 0;
    v11 = 0uLL;
LABEL_13:
    *a3 = v11;
    *(a3 + 16) = v11;
  }

  v33 = v16;
  v34 = v17;
  v21 = sub_2629C();
  v23 = v22;
  v24 = sub_2624C();
  v18[2] = v24;
  if (v21 == 32 && v23 == 0xE100000000000000 || (sub_263DC() & 1) != 0)
  {
    do
    {
      do
      {

        v21 = sub_2629C();
        v23 = v25;
        v24 = sub_2624C();
      }

      while (v21 == 32 && v23 == 0xE100000000000000);
    }

    while ((sub_263DC() & 1) != 0);
    v18[2] = v24;
  }

  if (v21 == 91 && v23 == 0xE100000000000000)
  {

LABEL_36:
    v28 = sub_22E5C(0, 93, 0xE100000000000000);
    if (v4)
    {
    }

    *(v34 + 48) = v28;

    v29 = sub_22E5C(1, 0, 0);
    v31 = v33;
    v30 = v34;
    goto LABEL_43;
  }

  v27 = sub_263DC();

  if (v27)
  {
    goto LABEL_36;
  }

  if (v24 >= 0x4000)
  {
    v18[2] = sub_2625C();
  }

  v29 = sub_22E5C(1, 0, 0);
  v31 = v33;
  if (v4)
  {
  }

  v30 = v34;
LABEL_43:
  *(v30 + 40) = v29;
  v32 = v30;

  *(a3 + 24) = v31;
  *(a3 + 32) = &off_3E830;
  *a3 = v32;
  return result;
}

void *sub_24228(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_16294(&qword_4A250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_16294(&qword_4AF08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24370(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_16294(&qword_4AF28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_16294(&qword_4AF30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_244A4(char *a1, int64_t a2, char a3)
{
  result = sub_244C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_244C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_16294(&qword_4AF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_245D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_162F4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_162DC(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_24668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1, a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v20 - v12;
  v14 = *(v7 + 16);
  v14(&v20 - v12);
  swift_beginAccess();
  v15 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_24228(0, v15[2] + 1, 1, v15);
    *(a2 + 16) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_24228((v17 > 1), v18 + 1, 1, v15);
    *(a2 + 16) = v15;
  }

  (v14)(v10, v13, a3);
  sub_245D0(v18, v10, (a2 + 16), a3, a4);
  *(a2 + 16) = v15;
  swift_endAccess();
  return (*(v7 + 8))(v13, a3);
}

unint64_t sub_24830()
{
  result = qword_4AF00;
  if (!qword_4AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4AF00);
  }

  return result;
}

uint64_t sub_24884(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_248D4()
{
  result = qword_4AF18;
  if (!qword_4AF18)
  {
    sub_1D71C(&qword_4AF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4AF18);
  }

  return result;
}

unint64_t sub_24938()
{
  if ((*(v0 + 33) & 1) == 0)
  {
    v63 = 1047489852;
    v64 = 0xE400000000000000;
    v6 = *(v0 + 16);
    v1 = *(v0 + 24);

    v7._countAndFlagsBits = v6;
    goto LABEL_10;
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = v2 == 7170412 && v1 == 0xE300000000000000;
  if (v3 || (sub_263DC() & 1) != 0)
  {
    v61 = 0x3E7265646E756D3CLL;
    sub_2637C(32);

    v63 = 0xD000000000000019;
    v64 = 0x80000000000379E0;
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);

    v67._countAndFlagsBits = v4;
    v67._object = v5;
    sub_2627C(v67);

    v68._countAndFlagsBits = 0x3E6F6D2F3CLL;
    v68._object = 0xE500000000000000;
    sub_2627C(v68);
    v69._countAndFlagsBits = 0xD000000000000019;
    v69._object = 0x80000000000379E0;
    sub_2627C(v69);

    if (*(v0 + 48))
    {

      v9 = sub_222E0();
      v71._countAndFlagsBits = 0x3E776F726D3CLL;
      v71._object = 0xE600000000000000;
      sub_2627C(v71);
      swift_beginAccess();
      v10 = *(v9 + 16);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 32;

        do
        {
          sub_16358(v12, &v63);
          v14 = v65;
          v13 = v66;
          sub_163BC(&v63, v65);
          v15 = (*(*(v13 + 16) + 8))(v14);
          v17 = v16;
          sub_16400(&v63);
          v72._countAndFlagsBits = v15;
          v72._object = v17;
          sub_2627C(v72);

          v12 += 40;
          --v11;
        }

        while (v11);
      }

      v73._countAndFlagsBits = 0x3E776F726D2F3CLL;
      v73._object = 0xE700000000000000;
      sub_2627C(v73);
    }

    v74._countAndFlagsBits = 0x7265646E756D2F3CLL;
    v74._object = 0xE90000000000003ELL;
    sub_2627C(v74);
    return v61;
  }

  if (!*(v0 + 48))
  {
    if (*(v0 + 40))
    {

      v18 = sub_222E0();
      v61 = 0x3E7265766F6D3CLL;
      v63 = 1047489852;
      v64 = 0xE400000000000000;
      v19 = *(v0 + 16);
      v20 = *(v0 + 24);

      v75._countAndFlagsBits = v19;
      v75._object = v20;
      sub_2627C(v75);

      v76._countAndFlagsBits = 0x3E6F6D2F3CLL;
      v76._object = 0xE500000000000000;
      sub_2627C(v76);
      v77._countAndFlagsBits = 1047489852;
      v77._object = 0xE400000000000000;
      sub_2627C(v77);

      v78._countAndFlagsBits = 0x3E776F726D3CLL;
      v78._object = 0xE600000000000000;
      sub_2627C(v78);
      swift_beginAccess();
      v21 = *(v18 + 16);
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v21 + 32;

        do
        {
          sub_16358(v23, &v63);
          v25 = v65;
          v24 = v66;
          sub_163BC(&v63, v65);
          v26 = (*(*(v24 + 16) + 8))(v25);
          v28 = v27;
          sub_16400(&v63);
          v79._countAndFlagsBits = v26;
          v79._object = v28;
          sub_2627C(v79);

          v23 += 40;
          --v22;
        }

        while (v22);
      }

      v29._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
      v29._object = 0xEF3E7265766F6D2FLL;
      goto LABEL_34;
    }

    v63 = 1047489852;
    v64 = 0xE400000000000000;

    v7._countAndFlagsBits = v2;
LABEL_10:
    v7._object = v1;
    sub_2627C(v7);

    v70._countAndFlagsBits = 0x3E6F6D2F3CLL;
    v70._object = 0xE500000000000000;
    sub_2627C(v70);
    return v63;
  }

  if (!*(v0 + 40))
  {

    v31 = sub_222E0();
    v61 = 0x3E7265646E756D3CLL;
    v63 = 1047489852;
    v64 = 0xE400000000000000;
    v32 = *(v0 + 16);
    v33 = *(v0 + 24);

    v80._countAndFlagsBits = v32;
    v80._object = v33;
    sub_2627C(v80);

    v81._countAndFlagsBits = 0x3E6F6D2F3CLL;
    v81._object = 0xE500000000000000;
    sub_2627C(v81);
    v82._countAndFlagsBits = 1047489852;
    v82._object = 0xE400000000000000;
    sub_2627C(v82);

    v83._countAndFlagsBits = 0x3E776F726D3CLL;
    v83._object = 0xE600000000000000;
    sub_2627C(v83);
    swift_beginAccess();
    v34 = *(v31 + 16);
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = v34 + 32;

      do
      {
        sub_16358(v36, &v63);
        v38 = v65;
        v37 = v66;
        sub_163BC(&v63, v65);
        v39 = (*(*(v37 + 16) + 8))(v38);
        v41 = v40;
        sub_16400(&v63);
        v84._countAndFlagsBits = v39;
        v84._object = v41;
        sub_2627C(v84);

        v36 += 40;
        --v35;
      }

      while (v35);
    }

    v29._object = 0x80000000000379A0;
    v29._countAndFlagsBits = 0xD000000000000010;
LABEL_34:
    sub_2627C(v29);

    return v61;
  }

  v30 = sub_222E0();
  v42 = sub_222E0();
  strcpy(v62, "<munderover>");
  BYTE5(v62[1]) = 0;
  HIWORD(v62[1]) = -5120;
  v63 = 1047489852;
  v64 = 0xE400000000000000;
  v43 = *(v0 + 16);
  v44 = *(v0 + 24);

  v85._countAndFlagsBits = v43;
  v85._object = v44;
  sub_2627C(v85);

  v86._countAndFlagsBits = 0x3E6F6D2F3CLL;
  v86._object = 0xE500000000000000;
  sub_2627C(v86);
  v87._countAndFlagsBits = 1047489852;
  v87._object = 0xE400000000000000;
  sub_2627C(v87);

  v88._countAndFlagsBits = 0x3E776F726D3CLL;
  v88._object = 0xE600000000000000;
  sub_2627C(v88);
  swift_beginAccess();
  v45 = *(v30 + 16);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v45 + 32;

    do
    {
      sub_16358(v47, &v63);
      v49 = v65;
      v48 = v66;
      sub_163BC(&v63, v65);
      v50 = (*(*(v48 + 16) + 8))(v49);
      v52 = v51;
      sub_16400(&v63);
      v89._countAndFlagsBits = v50;
      v89._object = v52;
      sub_2627C(v89);

      v47 += 40;
      --v46;
    }

    while (v46);
  }

  v90._countAndFlagsBits = 0x3C3E776F726D2F3CLL;
  v90._object = 0xED00003E776F726DLL;
  sub_2627C(v90);
  swift_beginAccess();
  v53 = *(v42 + 16);
  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = v53 + 32;

    do
    {
      sub_16358(v55, &v63);
      v57 = v65;
      v56 = v66;
      sub_163BC(&v63, v65);
      v58 = (*(*(v56 + 16) + 8))(v57);
      v60 = v59;
      sub_16400(&v63);
      v91._countAndFlagsBits = v58;
      v91._object = v60;
      sub_2627C(v91);

      v55 += 40;
      --v54;
    }

    while (v54);
  }

  v92._countAndFlagsBits = 0xD000000000000014;
  v92._object = 0x80000000000379C0;
  sub_2627C(v92);

  return v62[0];
}

uint64_t sub_252EC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 40) = a1;

  if ((*(v2 + 34) & 1) == 0)
  {
    *(v2 + 40) = 0;
  }

  return result;
}

uint64_t sub_25348(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 48) = a1;

  if ((*(v2 + 34) & 1) == 0)
  {
    *(v2 + 48) = 0;
  }

  return result;
}

uint64_t sub_253C8()
{

  v0 = sub_222E0();

  v13 = 0x6465636E65666D3CLL;
  v14 = 0xEF3E776F726D3C3ELL;
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    do
    {
      sub_16358(v3, v10);
      v5 = v11;
      v4 = v12;
      sub_163BC(v10, v11);
      v6 = (*(*(v4 + 16) + 8))(v5);
      v8 = v7;
      sub_16400(v10);
      v15._countAndFlagsBits = v6;
      v15._object = v8;
      sub_2627C(v15);

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v16._object = 0x8000000000037A70;
  v16._countAndFlagsBits = 0xD000000000000011;
  sub_2627C(v16);

  return v13;
}

uint64_t sub_255D0()
{

  sub_16400(v0 + 56);
  sub_16400(v0 + 96);

  return _swift_deallocClassInstance(v0, 144, 7);
}

void *sub_25678(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(*a1 + 16 + 16 * v5 + 8);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_9;
  }

  sub_16358(v6 + 40 * v7 - 8, v42);
  v9 = v43;
  v8 = v44;
  sub_163BC(v42, v43);
  v10 = (*(*(v8 + 8) + 32))(v9);
  v12 = a2[3];
  v11 = a2[4];
  sub_163BC(a2, v12);
  if (v10 != (*(*(v11 + 8) + 32))(v12) || (v14 = a2[3], v13 = a2[4], sub_163BC(a2, v14), (*(*(v13 + 8) + 32))(v14) != 1))
  {
LABEL_8:
    sub_16400(v42);
LABEL_9:
    sub_16294(&qword_4AF28);
    inited = swift_initStackObject();
    v38 = xmmword_2D190;
    *(inited + 16) = xmmword_2D190;
    *(inited + 32) = 1;
    sub_16294(&qword_4A250);
    v20 = swift_allocObject();
    *(v20 + 16) = v38;
    sub_16358(a2, v20 + 32);
    *(inited + 40) = v20;
    return sub_21F24(inited);
  }

  v16 = v43;
  v15 = v44;
  sub_163BC(v42, v43);
  if ((*(*(v15 + 8) + 88))(v16) || (v18 = v43, v17 = v44, sub_163BC(v42, v43), (*(*(v17 + 8) + 64))(v18)))
  {

    goto LABEL_8;
  }

  v22 = v4[2];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = sub_25A34(v4);
  if (!v22)
  {
    goto LABEL_19;
  }

LABEL_12:
  v18 = v4[2];
  if (v22 > v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = &v4[2 * v22 + 4];
  v24 = *(v23 - 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v23 - 16) = v26;
  sub_16358(a2, v39);
  v27 = &v4[2 * v18 + 4];
  v28 = *(v27 - 8);
  v22 = v27 - 8;
  v18 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_22:
    v18 = sub_24228(0, *(v18 + 16) + 1, 1, v18);
    *v22 = v18;
  }

  v31 = *(v18 + 16);
  v30 = *(v18 + 24);
  if (v31 >= v30 >> 1)
  {
    *v22 = sub_24228((v30 > 1), v31 + 1, 1, v18);
  }

  v32 = v40;
  v33 = v41;
  v34 = sub_24884(v39, v40);
  __chkstk_darwin(v34, v34);
  v36 = &v39[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v37 + 16))(v36);
  sub_245D0(v31, v36, v22, v32, v33);
  sub_16400(v39);
  *a1 = v4;
  return sub_16400(v42);
}

uint64_t static UIImage.transferRepresentation.getter()
{
  v0 = sub_25E6C();
  __chkstk_darwin(v0 - 8, v1);
  sub_25E5C();
  sub_25BC0();
  sub_25C0C();
  return sub_25E3C();
}

uint64_t sub_25B20()
{
  v1 = UIImagePNGRepresentation(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    v3 = sub_25E2C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xC000000000000000;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

unint64_t sub_25BC0()
{
  result = qword_4A778;
  if (!qword_4A778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4A778);
  }

  return result;
}

unint64_t sub_25C0C()
{
  result = qword_4B248;
  if (!qword_4B248)
  {
    sub_25BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4B248);
  }

  return result;
}

uint64_t sub_25C80()
{
  v0 = sub_25E6C();
  __chkstk_darwin(v0 - 8, v1);
  sub_25E5C();
  sub_25BC0();
  return sub_25E3C();
}

unint64_t sub_25D34()
{
  result = qword_4B250;
  if (!qword_4B250)
  {
    sub_1D71C(&qword_4B258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4B250);
  }

  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  v3 = _CGPointFromString(string);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v3 = _NSRangeFromString(aString);
  length = v3.length;
  location = v3.location;
  result.length = length;
  result.location = location;
  return result;
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

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}