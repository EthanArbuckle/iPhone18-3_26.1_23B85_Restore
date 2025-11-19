uint64_t sub_1000026A0(unint64_t a1)
{
  v1 = a1;
  if (a1 < 3)
  {
    return qword_100077490[a1];
  }

  v3 = LACLogFaceIDUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10006A080(v1, v3);
  }

  return 0;
}

unint64_t sub_100002708(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 3)
  {
    v2 = LACLogFaceIDUI();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10006A080(v1, v2);
    }

    return 0;
  }

  return v1;
}

void sub_100003150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000316C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003190(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) removeFromSuperview];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

id sub_100003684(id *a1)
{
  v2 = [a1[4] _lockStyleForPasscodeType:{objc_msgSend(a1[5], "type")}];
  if ([a1[6] rawValue])
  {
    [SBUIPasscodeLockViewFactory lightPasscodeLockViewForStyle:v2];
  }

  else
  {
    [SBUIPasscodeLockViewFactory passcodeLockViewForStyle:v2];
  }
  v3 = ;

  return v3;
}

TouchIdAlertController *sub_1000038FC(uint64_t a1)
{
  if (*(a1 + 40) == LACBiometryTypeTouchID)
  {
    v2 = objc_alloc_init(TouchIdAlertController);
    v3 = *(a1 + 32);
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"TOUCH_ID_REQUIRED" value:&stru_1000992A0 table:@"MobileUI"];
    [(TouchIdAlertController *)v2 setTitle:v5];

    v6 = *(a1 + 32);
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DTO_IS_ACTIVE_TOUCH_ID" value:&stru_1000992A0 table:@"MobileUI-Ratchet"];
    [(TouchIdAlertController *)v2 setMessage:v8];

    v9 = +[UIColor tertiaryLabelColor];
    v10 = [(TouchIdAlertController *)v2 _headerContentViewController];
    v11 = [v10 view];
    [v11 setTintColor:v9];
  }

  else
  {
    v2 = objc_alloc_init(FaceIdAlertViewController);
    v12 = sub_100003B3C();
    [(TouchIdAlertController *)v2 setGlyph:v12];

    v13 = *(a1 + 32);
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"FACE_ID_REQUIRED" value:&stru_1000992A0 table:@"MobileUI"];
    [(TouchIdAlertController *)v2 setTitle:v15];

    v16 = *(a1 + 32);
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"DTO_IS_ACTIVE_FACE_ID" value:&stru_1000992A0 table:@"MobileUI-Ratchet"];
    [(TouchIdAlertController *)v2 setMessage:v10];
  }

  return v2;
}

id sub_100003B3C()
{
  v0 = +[LAUIPearlGlyphStaticConfiguration createSystemApertureConfiguration];
  [v0 setInitialStyle:2];
  v1 = [[LAUIPearlGlyphView alloc] initWithConfiguration:v0];

  return v1;
}

void sub_100003BA4(id a1)
{
  v1 = +[LACUIDTOUtilities dtoLearnMoreLinkURL];
  v2 = +[URLOpener sharedInstance];
  v3 = [v2 openURL:v1];

  if (v3)
  {
    v4 = LACLogUI();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10006A0F8(v1, v3, v4);
    }
  }
}

DTOBiometryAlertFactory *sub_100003C40()
{
  v0 = objc_alloc_init(DTOBiometryAlertFactory);

  return v0;
}

id sub_100003D74(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [v3 widthAnchor];
  v5 = [v4 constraintEqualToConstant:272.0];
  [v5 setActive:1];

  v6 = [v3 heightAnchor];
  v7 = [v6 constraintEqualToConstant:88.0];
  [v7 setActive:1];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v3 addSubview:WeakRetained];

  v9 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = [v10 topAnchor];
  v12 = [v3 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:18.0];
  [v13 setActive:1];

  v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v15 = [v14 bottomAnchor];
  v16 = [v3 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v19 = [v18 centerXAnchor];
  v20 = [v3 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v23 = [v22 widthAnchor];
  v24 = [v23 constraintEqualToConstant:65.0];
  [v24 setActive:1];

  v25 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v26 = [v25 heightAnchor];
  v27 = [v26 constraintEqualToConstant:65.0];
  [v27 setActive:1];

  [v2 setView:v3];

  return v2;
}

id sub_100004364(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) view];
  [v2 addObject:v3];

  if ([v2 count])
  {
    v4 = 50;
    do
    {
      v5 = [v2 firstObject];
      [v2 removeObjectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 text];
        v7 = [*(a1 + 32) title];
        v8 = [v6 isEqualToString:v7];

        if (v8)
        {
          break;
        }
      }

      v9 = [v5 subviews];
      [v2 addObjectsFromArray:v9];

      v5 = 0;
      if (![v2 count])
      {
        break;
      }
    }

    while (v4-- > 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000045B0(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 0.88, 0.88);
  v2 = [*(a1 + 32) view];
  v3 = v4;
  [v2 setTransform:&v3];
}

void sub_1000059A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000059C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained options];
    v5 = [NSNumber numberWithInteger:LACPolicyOptionSecureUIRecording];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = LACLogFaceIDUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will drop ViewDidAppear event due to secure UI recording", v9, 2u);
      }
    }

    else
    {
      [v3 uiEvent:0 options:0];
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100005E6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100005E94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setDismissingTemporarily:0];
    v3 = [v4 alertController];
    [v3 _setHeaderContentViewController:0];

    [v4 _presentAlertAnimated:0 specialUi:*(a1 + 40)];
    WeakRetained = v4;
  }
}

void sub_100005F14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAlertAnimated:1 specialUi:*(a1 + 40)];
}

void sub_1000065D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100006604(uint64_t a1)
{
  v2 = LACLogFaceIDUI();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Will dismiss %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) dismissWithDelay:&stru_100096370 completion:0.0];
}

uint64_t sub_1000066C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (([WeakRetained dismissingTemporarily] & 1) == 0)
    {
      v2 = [v4 toastController];
      [v2 dismissWithDelay:&stru_100096390 completion:0.0];
    }
  }

  return _objc_release_x1();
}

void sub_100006748(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[38];
    if (v4)
    {
      v5 = [WeakRetained presentedViewController];

      if (v4 != v5)
      {
        v6 = v3[38];
        v7 = *(a1 + 40);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_100006850;
        v8[3] = &unk_100096350;
        v10 = *(a1 + 41);
        objc_copyWeak(&v9, (a1 + 32));
        [v3 presentViewController:v6 animated:v7 completion:v8];
        objc_destroyWeak(&v9);
      }
    }
  }
}

void sub_100006850(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _shake:*(a1 + 40)];
  }
}

void sub_1000078B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  objc_destroyWeak(v50);
  objc_destroyWeak(&a40);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v51 - 160), 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v51 - 232), 8);
  _Block_object_dispose((v51 - 200), 8);
  objc_destroyWeak((v51 - 168));
  _Unwind_Resume(a1);
}

void sub_100007990(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (((*(v2 + 201) & 1) != 0 || *(*(*(a1 + 48) + 8) + 24) == 1) && *(v2 + 202) == 1)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:&off_10009A9F8];
    v4 = [LACStringHelper truncateString:v3 maxLength:32];

    if (v4 && (+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet"), v5 = objc_claimAutoreleasedReturnValue(), [v4 stringByTrimmingCharactersInSet:v5], v6 = objc_claimAutoreleasedReturnValue(), v4, v5, *(*(*(a1 + 56) + 8) + 24) = 1, v6))
    {
      if ([v6 isEqualToString:@"Enter Passcode"])
      {
        v7 = *(a1 + 32);
        v8 = [NSBundle bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"ENTER_PASSCODE_ONLY" value:&stru_1000992A0 table:@"MobileUI"];

        *(*(*(a1 + 64) + 8) + 24) = 1;
        *(*(*(a1 + 56) + 8) + 24) = 0;
        v6 = v9;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = [v11 localizedStringForKey:@"ENTER_PASSWORD" value:&stru_1000992A0 table:@"MobileUI"];
    }

    if ([v6 length])
    {
      v12 = *(*(a1 + 32) + 304);
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100007C48;
      v17 = &unk_100096428;
      v18[1] = *(a1 + 96);
      objc_copyWeak(v18, (a1 + 88));
      v13 = [LACUIBiometryAlertAction actionWithType:1 title:v6 shouldDismissAlert:0 handler:&v14];
      [v12 addCustomAction:{v13, v14, v15, v16, v17}];

      objc_destroyWeak(v18);
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }
  }
}

void sub_100007C48(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (v1 == 8)
  {
    [WeakRetained _uiCancelWithUnderlyingError];
  }

  else
  {
    [WeakRetained _enterPassword];
  }
}

void sub_100007CA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pearlUIState];

  if (v3 != 4)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 setPearlUIState:4];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 uiEvent:6 options:0];
  }
}

void sub_100007D4C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained uiCancelWithError:WeakRetained[26]];
    v2 = +[LACUIDTOUtilities dtoLearnMoreLinkURL];
    [v3 uiOpenURL:v2];

    WeakRetained = v3;
  }
}

void sub_100007DC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(WeakRetained + 27) && *(WeakRetained + 201) == 1)
    {
      v3 = [LAErrorHelper errorWithCode:-3 message:@"Fallback authentication mechanism selected."];
      [v4 uiFailureWithError:v3];
    }

    else if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      [WeakRetained _uiCancelWithUnderlyingError];
    }

    else
    {
      [WeakRetained uiCancel];
    }

    WeakRetained = v4;
  }
}

void sub_10000849C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setGlyphState:3 animated:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setSuspended:1];
}

void sub_1000086C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000086E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setGlyphState:1 animated:1];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100008B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008B68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animateAlongsideTransitionStartedWithContext:v3];
}

void sub_100008BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animateAlongsideTransitionFinishedWithContext:v3];
}

void sub_1000093E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1000093FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _destroyViewControllers];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10000961C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_100009648(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _destroyViewControllers];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000096A8(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009758;
  v6[3] = &unk_1000964E8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [WeakRetained _dismissToastWithDelay:v6 completion:a2];
}

id sub_100009758(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = FaceIdViewController;
  return objc_msgSendSuper2(&v3, "dismissChildWithCompletionHandler:", v1);
}

void sub_100009948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009964(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(0.0);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDismissingTemporarily:0];
}

void sub_10000B074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&a38);
  objc_destroyWeak((v39 - 120));
  objc_destroyWeak((v39 - 112));
  _Unwind_Resume(a1);
}

void sub_10000B0D0(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 28, a2);
    [v7 setSecureTextEntry:1];
    [v7 setPlaceholder:*(a1 + 32)];
    [v7 setKeyboardAppearance:1];
    v6 = objc_loadWeakRetained((a1 + 40));
    [v7 setDelegate:v6];
  }
}

void sub_10000B188(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

void sub_10000B1C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _passwordEntered];
}

void sub_10000B208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _passwordNext];
}

void sub_10000B248(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _passwordConfirm];
}

void sub_10000BAFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentUI:0];
}

void sub_10000C228(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10000C264(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if (WeakRetained[29])
    {
      [WeakRetained _uiCancelWithUnderlyingError];
    }

    else
    {
      [WeakRetained uiFallback];
    }

    WeakRetained = v2;
  }
}

void sub_10000C2C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _uiCancelWithUnderlyingError];
    v2 = +[LACUIDTOUtilities dtoLearnMoreLinkURL];
    [v3 uiOpenURL:v2];

    WeakRetained = v3;
  }
}

void sub_10000C338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained uiCancel];
    WeakRetained = v2;
  }
}

void sub_10000C37C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _uiCancelWithUnderlyingError];
    WeakRetained = v2;
  }
}

id sub_10000C710(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[26] == 3)
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"TOUCH_ID_NOT_RECOGNIZED";
  }

  else
  {
    v6 = [v2 _shouldShowUIForBiometryRequired];
    v7 = *(a1 + 32);
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v3;
    if (v6)
    {
      v5 = @"TOUCH_ID_REQUIRED";
    }

    else
    {
      v5 = @"TRY_AGAIN";
    }
  }

  v8 = [v3 localizedStringForKey:v5 value:&stru_1000992A0 table:@"MobileUI"];

  return v8;
}

id sub_10000D138(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = TouchIdViewController;
  return objc_msgSendSuper2(&v3, "dismissChildWithCompletionHandler:", v1);
}

id sub_10000D74C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 248);
  v3.receiver = *(a1 + 32);
  v3.super_class = TouchIdViewControllerWithCoachings;
  return objc_msgSendSuper2(&v3, "_addFrontMostSubview:", v1);
}

double sub_10000D9A0(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;

  return fmin(fmax((0.75 - dbl_100077570[v2]) / (1.0 - dbl_100077570[v2]), 0.0), 1.0);
}

id sub_10000DA9C(uint64_t a1)
{
  [*(*(a1 + 32) + 248) updateFrame];
  v2 = *(*(a1 + 32) + 248);

  return [v2 setAnimating:1];
}

uint64_t sub_10000DB00()
{
  if (qword_1000B0328 != -1)
  {
    sub_10006A274();
  }

  return byte_1000B0320;
}

void sub_10000DB38(id a1)
{
  if (MGIsQuestionValid())
  {
    byte_1000B0320 = MGGetBoolAnswer();
  }

  else
  {
    v1 = LACLogTouchIDUI();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10006A288(v1);
    }
  }
}

id sub_10000DBA4()
{
  if (qword_1000B0328 != -1)
  {
    sub_10006A274();
  }

  if (byte_1000B0320)
  {
    v0 = off_100094F58;
  }

  else
  {
    v0 = off_100094F50;
  }

  v1 = objc_alloc(*v0);

  return v1;
}

id sub_10000DC08(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  sub_10000DBA4();
  v13 = [objc_claimAutoreleasedReturnValue() initWithInternalInfo:v12 mechanism:v11 backoffCounter:v10 remoteUIHost:v9 allowsLandscape:a5];

  return v13;
}

void sub_10000E29C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10000E2B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeWeak(&qword_1000B0330, 0);
    v2 = v4[1];
    v4[1] = 0;

    v3 = v4[14];
    v4[14] = 0;

    WeakRetained = v4;
  }
}

void sub_10000E868(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_10000E8DC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E96C;
  block[3] = &unk_1000963B8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10000E96C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetUI];
}

void sub_10000E9AC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EA3C;
  block[3] = &unk_1000963B8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10000EA3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetUI];

  v2 = qword_1000B0338;
  qword_1000B0338 = 0;
}

void sub_10000EA88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LALogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10006A4C0();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EB5C;
  block[3] = &unk_1000963B8;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
}

void sub_10000EB5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetUI];
}

void sub_10000EB9C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    if (v8)
    {
      objc_storeStrong(WeakRetained + 13, a2);
      objc_storeStrong(v12 + 17, a3);
    }

    else
    {
      v13 = LALogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10006A528(a1);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000ECDC;
      block[3] = &unk_100096148;
      block[4] = v12;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_10000ECE4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 21, a2);
    [*(a1 + 32) didReceiveAuthenticationData];
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

id sub_10000F470(uint64_t a1, void *a2, int a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  if (a3)
  {
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:v5];

    v5 = v7;
  }

  v8 = [v6 localizedStringForKey:v5 value:&stru_1000992A0 table:@"MobileUI"];

  return v8;
}

void sub_10000FA64(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_10000FA9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 56) != 1 || *(*(a1 + 32) + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _invalidateConnection];
  }
}

void sub_10000FB2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [NSString stringWithFormat:@"immediate dismiss requested, tid: %u", *(a1 + 48)];
  [WeakRetained _dismissRootWithReason:v2 completion:*(a1 + 32)];
}

void sub_10000FBAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = LALogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      *buf = 67109120;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Executing disappearBlock, tid:%u", buf, 8u);
    }

    WeakRetained[90] = 1;
    v5 = objc_retainBlock(*(a1 + 40));
    v6 = *(WeakRetained + 9);
    *(WeakRetained + 9) = v5;

    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000FCFC;
    v8[3] = &unk_100096770;
    v8[4] = WeakRetained;
    v9 = *(a1 + 56);
    [v7 _performOnMainQueueWhenAppeared:v8];
  }
}

void sub_10000FCFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithFormat:@"dismiss requested, tid: %u", *(a1 + 40)];
  [v1 _dismissRootWithReason:v2 completion:0];
}

void sub_1000101C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000101E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [LAErrorHelper errorWithCode:-4 message:@"Caller moved to background."];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_10001026C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_39;
  }

  v4 = [WeakRetained dismissing];
  v5 = LALogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 72);
      *buf = 67109120;
      *v42 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UI dismissing, bailing out, tid:%u", buf, 8u);
    }

    v8 = *(a1 + 48);
    v9 = [LACError errorWithCode:LACErrorCodeSystemCancel debugDescription:@"UI dismissing"];
    (*(v8 + 16))(v8, 0, v9);
LABEL_6:

    goto LABEL_39;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    *buf = 67109376;
    *v42 = v10;
    *&v42[4] = 1024;
    *&v42[6] = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Preparing a new child controller: %d, tid:%u", buf, 0xEu);
  }

  v12 = *(v3 + 7);
  if (!v12)
  {
    v16 = *(a1 + 64);
    if (v16 <= 3)
    {
      switch(v16)
      {
        case 1:
          v17 = sub_10000DBA4();
          goto LABEL_30;
        case 2:
          v17 = sub_100019A44(*(a1 + 32));
          goto LABEL_30;
        case 3:
          v17 = sub_100016254(*(a1 + 32));
LABEL_30:
          v22 = *(v3 + 1);
          *(v3 + 1) = v17;

          v23 = [*(v3 + 1) initWithInternalInfo:*(a1 + 32) parent:*(a1 + 40) allowsLandscape:v3[24]];
          v24 = *(v3 + 1);
          *(v3 + 1) = v23;

          goto LABEL_31;
      }

LABEL_25:
      v19 = *(v3 + 1);
      *(v3 + 1) = 0;

      if (!*(a1 + 48))
      {
        goto LABEL_39;
      }

      v9 = [NSString stringWithFormat:@"Unexpected controller type (%d).", *(a1 + 64)];
      v20 = *(a1 + 48);
      v21 = [LAErrorHelper internalErrorWithMessage:v9];
      (*(v20 + 16))(v20, 0, v21);

      goto LABEL_6;
    }

    switch(v16)
    {
      case 4:
        v18 = PasswordViewController;
        break;
      case 5:
        v18 = FaceIdViewController;
        break;
      case 6:
        v18 = RatchetCoolOffViewController;
        break;
      default:
        goto LABEL_25;
    }

    v17 = [v18 alloc];
    goto LABEL_30;
  }

  v13 = [v12 childControllerFor:*(v3 + 6) type:*(a1 + 64) allowsLandscape:v3[24]];
  v14 = *(v3 + 1);
  *(v3 + 1) = v13;

  if (!*(v3 + 1))
  {
    v15 = LALogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "New child controller is nil - nothing to show.", buf, 2u);
    }

    goto LABEL_39;
  }

LABEL_31:
  v3[90] = 1;
  if (*(v3 + 2))
  {
    v25 = LALogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = *(v3 + 2);
      v27 = *(v3 + 1);
      v28 = *(a1 + 72);
      *buf = 67109634;
      *v42 = v26;
      *&v42[4] = 2114;
      *&v42[6] = v27;
      *&v42[14] = 1024;
      *&v42[16] = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Forwarding cached event %d to %{public}@, tid:%u", buf, 0x18u);
    }

    [*(v3 + 1) mechanismEvent:*(v3 + 2) reply:&stru_1000967E0];
    *(v3 + 2) = 0;
  }

  [*(v3 + 1) setModalPresentationStyle:0];
  v29 = [*(a1 + 40) view];
  v30 = [v29 window];
  v31 = [v30 _rootSheetPresentationController];
  [v31 _setShouldScaleDownBehindDescendantSheets:0];

  v32 = LALogForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = *(v3 + 1);
    v34 = *(a1 + 40);
    v35 = *(a1 + 72);
    *buf = 138543874;
    *v42 = v33;
    *&v42[8] = 2114;
    *&v42[10] = v34;
    *&v42[18] = 1024;
    v43 = v35;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%{public}@ is being presented by %{public}@, tid:%u", buf, 0x1Cu);
  }

  v36 = *(a1 + 40);
  v37 = *(v3 + 1);
  v38 = [v37 shouldPresentWithAnimation];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000107E0;
  v39[3] = &unk_100096300;
  v39[4] = v3;
  v40 = *(a1 + 48);
  [v36 presentViewController:v37 animated:v38 completion:v39];

LABEL_39:
}

uint64_t sub_1000107E0(uint64_t a1)
{
  *(*(a1 + 32) + 90) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void sub_1000109A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [NSString stringWithFormat:@"dismissing child for tid:%u", *(a1 + 56)];
      [v3 _dismissChild:v4 andRoot:0 reason:v5 completion:*(a1 + 40)];
    }

    else
    {
      v6 = *(WeakRetained + 92);
      v7 = LALogForCategory();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 == 1)
      {
        if (v8)
        {
          v9 = *(a1 + 56);
          *buf = 67109120;
          v24 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Appeared, performing task, tid:%u", buf, 8u);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        if (v8)
        {
          v10 = *(a1 + 56);
          *buf = 67109120;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scheduling block when controller appears, tid:%u", buf, 8u);
        }

        if (v3[8])
        {
          v11 = LALogForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = *(a1 + 56);
            *buf = 67109120;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "compound notification, tid:%u", buf, 8u);
          }

          v13 = objc_retainBlock(v3[8]);
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100010C38;
          v19[3] = &unk_100096830;
          v22 = *(a1 + 56);
          v20 = *(a1 + 40);
          v21 = v13;
          v14 = v13;
          v15 = objc_retainBlock(v19);
          v16 = v3[8];
          v3[8] = v15;
        }

        else
        {
          v17 = objc_retainBlock(*(a1 + 40));
          v18 = v3[8];
          v3[8] = v17;
        }
      }
    }
  }
}

uint64_t sub_100010C38(uint64_t a1)
{
  v2 = LALogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A5D0(a1, v2);
  }

  (*(*(a1 + 32) + 16))();
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10006A64C(a1, v3);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100010EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010F20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsStatusBarAppearanceUpdate];
}

void sub_100011C8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 91) & 1) == 0)
  {
    v3 = LALogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10006A6C8();
    }

    v4 = +[TransitionViewController rootController];
    [v4 _dismissRemoteUIWithCompletionHandler:0];
  }
}

void sub_100011E2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _mechanismEvent:*(a1 + 56) value:*(a1 + 32) reply:*(a1 + 40)];
}

void sub_100012174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000121A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[90] = 0;
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

void sub_1000129E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100012A10(uint64_t a1)
{
  v2 = LALogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = WeakRetained;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ was dismissed (%{public}@)", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100012AF4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _dismissRootWithReason:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

void sub_100013250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001326C(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013314;
  block[3] = &unk_100096920;
  objc_copyWeak(v6, (a1 + 40));
  v4 = *(a1 + 32);
  v6[1] = a2;
  block[4] = v4;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
}

void sub_100013314(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    switch(v4)
    {
      case 2:
        [WeakRetained _destroyCurrentSceneSession];
        break;
      case 1:
        v5 = LALogForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v7 = 138543362;
          v8 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will not destroy scene for %{public}@ because it is registered by host as active", &v7, 0xCu);
        }

        break;
      case 0:
        [WeakRetained _destroyAllSceneSessions];
        break;
    }
  }
}

id sub_10001353C(uint64_t a1)
{
  v1 = [*(a1 + 32) _currentSceneSession];
  v2 = v1;
  if (v1)
  {
    v5 = v1;
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

void sub_1000139B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LALogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10006A85C(v3, a1);
  }
}

void sub_100013F70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000155D0(id a1)
{
  qword_1000B0348 = objc_alloc_init(URLOpener);

  _objc_release_x1();
}

id sub_100016254(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"CTKPIN"];
  v2 = [v1 BOOLValue];

  v3 = off_100094F60;
  if (!v2)
  {
    v3 = off_100094F48;
  }

  v4 = objc_alloc(*v3);

  return v4;
}

void sub_1000162C0(id a1)
{
  qword_1000B0360 = os_log_create("com.apple.LocalAuthentication", "PinViewController");

  _objc_release_x1();
}

void sub_100017868(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) _switchToBackoffScreen:a2];
    *(*(a1 + 32) + 242) = 0;
  }

  else
  {
    v3 = +[LACConcurrencyUtilities globalUserInitiatedConcurrentQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017944;
    block[3] = &unk_100096A68;
    v8 = *(a1 + 52);
    v7 = *(a1 + 48);
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, block);
  }
}

id sub_100017944(uint64_t a1)
{
  if (*(a1 + 52) != 1)
  {
LABEL_9:
    v5 = +[LACPasscodeHelper sharedInstance];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100017A54;
    v12 = &unk_100096A40;
    v6 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = v6;
    v7 = sub_100017A54(&v9);
    v4 = [v5 verifyPasscode:{v7, v9, v10}];

    goto LABEL_10;
  }

  v2 = *(a1 + 48);
  if (v2 != -14 && v2 != -3)
  {
    if (v2)
    {
      v4 = 3;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = 1;
LABEL_10:
  [*(a1 + 40) reset];
  return [*(a1 + 32) _processPasscodeEntryResult:v4];
}

id sub_100017A54(uint64_t a1)
{
  v2 = [LACInternalInfoParser alloc];
  v3 = [*(a1 + 32) internalInfo];
  v4 = [v2 initWithInternalInfo:v3];

  v5 = [LACMutablePasscodeVerificationRequest alloc];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) cachedExternalizedContext];
  v8 = [v7 externalizedContext];
  v9 = [v4 callerAuditToken];
  v10 = [v5 initWithPasscode:v6 acmContext:v8 auditToken:v9];

  v11 = [v4 userId];
  [v10 setUserId:v11];

  [v10 setPolicy:{objc_msgSend(*(a1 + 32), "policy")}];
  v12 = [*(a1 + 32) options];
  [v10 setOptions:v12];

  return v10;
}

void sub_100017F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100017FA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showGlyph:0 animated:1];
}

void sub_100017FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001808C;
  v6[3] = &unk_100096AB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_10001808C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v2 + 200);
  if (v1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100018154;
    v5[3] = &unk_100096AB8;
    v5[4] = v2;
    v6 = v1;
    [v3 animateToFailureStateWithCompletion:v5];
  }

  else
  {
    v4 = *(v2 + 200);

    [v4 animateToFailureStateWithCompletion:&stru_100096AD8];
  }
}

void sub_100018154(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000181DC;
  v2[3] = &unk_100096AB8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000181EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100018288;
  v5[3] = &unk_100096AB8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100018288(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 200);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018320;
  v4[3] = &unk_100096AB8;
  v4[4] = v2;
  v5 = v1;
  [v3 animateToFailureStateWithCompletion:v4];
}

void sub_100018320(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000183A8;
  v2[3] = &unk_100096AB8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_100018560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018584(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10001864C;
    v5[3] = &unk_100096B00;
    objc_copyWeak(&v7, (a1 + 32));
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);

    objc_destroyWeak(&v7);
  }
}

void sub_10001864C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained _switchToBackoffScreen:?];
    }

    else
    {
      [WeakRetained _showPasscodeScreen];
    }

    WeakRetained = v3;
  }
}

id sub_100018D7C(uint64_t a1)
{
  v2 = [*(a1 + 32) authenticationTitle];
  v3 = [*(a1 + 32) authenticationSubtitle];
  v4 = *(a1 + 32);
  if (*(v4 + 256))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 248);
  }

  v6 = [PasscodeViewState activeStateWithTitle:v2 subtitle:v3 accessoryView:v5];
  v7 = [*(a1 + 32) _style];
  v8 = [v6 withStyle:v7];

  return v8;
}

id sub_100018FAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MINUTES_TO_UNBLOCK" value:&stru_1000992A0 table:@"MobileUI"];
  v5 = [NSString localizedStringWithFormat:v4, *(a1 + 40)];

  return v5;
}

void sub_100019758(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 200);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000197F0;
  v2[3] = &unk_1000967C0;
  v3 = *(a1 + 40);
  [v1 animateToSucessStateWithCompletion:v2];
}

void sub_1000197F0(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019898;
  block[3] = &unk_1000967C0;
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

uint64_t sub_100019898(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000198B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setGlyphState:4 animated:1];
}

void sub_1000198F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showGlyph:0 animated:1];
}

void sub_100019940(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setGlyphState:2 animated:1];
}

id sub_100019A44(void *a1)
{
  v1 = [a1 objectForKey:@"Options"];
  v2 = [v1 objectForKey:&off_10009AD58];
  v3 = [v2 BOOLValue];
  v4 = &off_100094F68;
  if (!v3)
  {
    v4 = off_100094F40;
  }

  v5 = objc_alloc(*v4);

  return v5;
}

id sub_100019AD4(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  sub_100019A44(v12);
  v13 = [objc_claimAutoreleasedReturnValue() initWithInternalInfo:v12 mechanism:v11 backoffCounter:v10 remoteUIHost:v9 allowsLandscape:a5];

  return v13;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  +[LoggingHelper setupLogging];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_10001AA68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained pinEntered:*(*(a1 + 32) + 88)];
}

uint64_t sub_10001AFBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v3 = *(a1 + 32)) != 0 && (v7 = WeakRetained, [v3 presentedViewController], v4 = objc_claimAutoreleasedReturnValue(), v4, v7 != v4))
  {
    [*(a1 + 32) presentViewController:v7 animated:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  return _objc_release_x1();
}

void sub_10001B7F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dispatchElementUpdateAfterMinDisplayTime];
}

uint64_t sub_10001C164()
{
  if (qword_1000B0370 != -1)
  {
    sub_10006AC08();
  }

  return byte_1000B0369;
}

void sub_10001C3F4(id a1)
{
  v1 = +[LACUIDevice sharedInstance];
  byte_1000B0369 = [v1 isDynamicIslandAvailable];
}

void sub_10001C480(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10001C4A0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void sub_10001CAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001CB1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toastAnimationFadeIn:1 finished:0];
}

void sub_10001CB64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toastAnimationFadeIn:1 finished:1];
}

void sub_10001CF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001CF88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toastAnimationFadeIn:0 finished:0];
}

void sub_10001CFD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toastAnimationFadeIn:0 finished:1];
}

void sub_10001D3C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_10001D3F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _shrinkAndRevokeWithCompletion:*(a1 + 32)];
}

void sub_10001D448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[10] superview];
    [v2 setAlpha:0.0];

    v3 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    [v4[10] setBackgroundColor:v3];

    [v4 _setTransformScale:1];
    WeakRetained = v4;
  }
}

void sub_10001D4F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setTransformScale:0];
    [v3 dismissViewControllerAnimated:0 completion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_10001DA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001DA4C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 secureUIController];
  v9 = [v8 confirmTransitionToFlipbookName:v7 stateName:v6];

  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id sub_10001DF44(uint64_t a1)
{
  [*(*(a1 + 32) + 304) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 312);

  return [v2 setAlpha:0.0];
}

void sub_10001DFA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained revokePresentableWithCompletionHandler:*(a1 + 32)];
}

void sub_10001F6C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10001F6EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLightweightConstraints];
}

id sub_10001FDB0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) constraintEqualToAnchor:*(a1 + 48) constant:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [*(a1 + 40) constraintEqualToConstant:*(a1 + 48)];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

double sub_1000204B8()
{
  v0 = +[UITraitCollection currentTraitCollection];
  v1 = [v0 preferredContentSizeCategory];

  v2 = 1.0;
  if (UIContentSizeCategoryIsAccessibilityCategory(v1) && ([v1 isEqualToString:UIContentSizeCategoryAccessibilityMedium] & 1) == 0)
  {
    if ([v1 isEqualToString:UIContentSizeCategoryAccessibilityLarge])
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 1.5;
    }
  }

  return v2;
}

void sub_100020BB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100020BD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if ([WeakRetained[45] count])
    {
      v2 = 0;
      do
      {
        v3 = [v5[45] objectAtIndexedSubscript:v2];
        v3[2]();

        ++v2;
      }

      while (v2 < [v5[45] count]);
    }

    v4 = v5[45];
    v5[45] = 0;

    WeakRetained = v5;
  }
}

void sub_100020DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100020E18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LACLogFaceIDUI();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10006AD70(WeakRetained, v2);
    }

    [WeakRetained _dispatchDismissCompletionAfterSecureUIFinished];
  }
}

id sub_100021140(uint64_t a1)
{
  result = [*(a1 + 32) isActive];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 updateGlyphConstraintsIfOrientationChanged];
  }

  return result;
}

void sub_1000218D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fadeIn:*(a1 + 48) duration:*(a1 + 40)];
}

void sub_1000219EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100021A08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fadeIn:*(a1 + 40)];
}

void sub_100021D98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100021DB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setBackdropEnabled:*(a1 + 40)];
}

id sub_100023010(uint64_t a1)
{
  v2 = objc_alloc_init(UIToolbar);
  [v2 setBarStyle:4];
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v7[0] = v3;
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:*(a1 + 32) action:"_submitPasscode:"];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];
  [v2 setItems:v5];

  [v2 sizeToFit];

  return v2;
}

id sub_1000237F8(uint64_t a1)
{
  LODWORD(v1) = vcvtpd_s64_f64(*(a1 + 40) / 60.0);
  v2 = *(a1 + 32);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MINUTES_TO_UNBLOCK" value:&stru_1000992A0 table:@"MobileUI"];
  v5 = [NSString localizedStringWithFormat:v4, v1];

  return v5;
}

void sub_1000238BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(a1 + 40) == 1)
    {
      v3 = *(a1 + 41);
    }

    else
    {
      v3 = 0;
    }

    v4 = WeakRetained;
    [WeakRetained setPasscodeFocused:v3 & 1];
    WeakRetained = v4;
  }
}

void sub_100023AF0(uint64_t a1)
{
  v2 = dispatch_time(0, 200000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023B9C;
  v4[3] = &unk_100096AB8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_100023F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023F40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 2);
    v4 = *&CGAffineTransformIdentity.c;
    v5[0] = *&CGAffineTransformIdentity.a;
    v5[1] = v4;
    v5[2] = *&CGAffineTransformIdentity.tx;
    [v3 setTransform:v5];
  }
}

void sub_100024294(id a1)
{
  qword_1000B0390 = [LACXPCInterface interfaceForXPCProtocol:&OBJC_PROTOCOL___LACPasscodeUIService];

  _objc_release_x1();
}

void sub_100024320(id a1)
{
  qword_1000B03A0 = [LACXPCInterface interfaceForXPCProtocol:&OBJC_PROTOCOL___LACPasscodeUIHost];

  _objc_release_x1();
}

id sub_100024904(uint64_t a1)
{
  v2 = [LACMutablePasscodeVerificationRequest alloc];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 72);
  v5 = *(a1 + 64);
  v9[0] = *(a1 + 48);
  v9[1] = v5;
  v6 = [v2 initWithPasscode:v3 acmContext:v4 rawAuditToken:v9];
  v7 = [NSNumber numberWithUnsignedInt:getuid()];
  [v6 setUserId:v7];

  return v6;
}

void sub_1000249A0(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE10(v4);
    }
  }

  else
  {
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Passcode verification succeeded", v6, 2u);
    }
  }
}

void sub_100024BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006AE90(a1, v3);
  }
}

void sub_100024C38(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006AF20(a2);
  }
}

void sub_100024D9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _backoffTimeout];
    v3 = v2;
    if (v2 > 0.0)
    {
      [v4 _dispatchBackoffTimer];
    }

    [v4 setBackoffTimeout:v3];
    WeakRetained = v4;
  }
}

void sub_100025594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000255B8(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && (a2 & 1) == 0)
  {
    [WeakRetained setAnimating:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002569C;
    v6[3] = &unk_100096B00;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [v5 _shakePasscodeFieldWithCompletion:v6];

    objc_destroyWeak(&v8);
  }
}

void sub_10002569C(uint64_t a1)
{
  v2 = dispatch_time(0, 200000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100025760;
  v3[3] = &unk_100096B00;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, v3);

  objc_destroyWeak(&v5);
}

void sub_100025760(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setAnimating:0];
    [*(a1 + 32) setText:&stru_1000992A0];
    [v3 setIsVerifyingPasscode:0];
    WeakRetained = v3;
  }
}

id sub_1000264C0()
{
  v0 = objc_opt_new();
  v1 = sub_10002651C();
  [v0 setView:v1];

  return v0;
}

id sub_10002651C()
{
  v0 = sub_1000266C0();
  v1 = objc_opt_new();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v0];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 topAnchor];
  v3 = [v1 topAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:20.0];
  [v4 setActive:1];

  v5 = [v0 bottomAnchor];
  v6 = [v1 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [v0 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v0 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  return v1;
}

id sub_1000266C0()
{
  v0 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:2];
  v1 = [UIImage _systemImageNamed:@"touchid" withConfiguration:v0];
  v2 = [[UIImageView alloc] initWithImage:v1];
  [v2 setContentMode:1];

  return v2;
}

uint64_t sub_100027674()
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B03B0;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100089690;
  v2._countAndFlagsBits = 0xD000000000000017;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100027758()
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B03B0;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x80000001000896B0;
  v2._countAndFlagsBits = 0xD000000000000013;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100027820()
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B03B0;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x80000001000896D0;
  v2._countAndFlagsBits = 0xD000000000000013;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000278E8()
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B03B0;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x80000001000896F0;
  v2._countAndFlagsBits = 0xD000000000000015;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000279C0()
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B03B0;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100089710;
  v2._countAndFlagsBits = 0xD000000000000015;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100027B18(uint64_t a1, void *a2)
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B03B0;
  v10._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v5.value._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100027BD8(uint64_t a1)
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000B03B0;
  v9._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v4._object = 0x8000000100089730;
  v4._countAndFlagsBits = 0xD000000000000012;
  v3.value._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v9);

  sub_1000282B4(&qword_1000AE4D0, &qword_100077710);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000776F0;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

uint64_t sub_100027D14(uint64_t a1, uint64_t a2)
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1000B03B0;
  v11._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v6._object = 0x8000000100089750;
  v6._countAndFlagsBits = 0xD000000000000019;
  v5.value._object = 0xE800000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v11);

  sub_1000282B4(&qword_1000AE4D0, &qword_100077710);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000776F0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000282FC();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = static String.localizedStringWithFormat(_:_:)();

  return v9;
}

uint64_t sub_100027E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v8 = qword_1000B03B0;
  v16._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x494B53415F505041;
  v9._object = 0xEF485455415F474ELL;
  v10.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v10.value._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v16);

  sub_1000282B4(&qword_1000AE4D0, &qword_100077710);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100077700;
  *(v12 + 56) = &type metadata for String;
  v13 = sub_1000282FC();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v13;
  *(v12 + 64) = v13;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;

  v14 = static String.localizedStringWithFormat(_:_:)();

  return v14;
}

uint64_t sub_10002802C(Swift::Int a1)
{
  v2 = objc_opt_self();
  sub_100028350();
  isa = NSNumber.init(integerLiteral:)(a1).super.super.isa;
  v4 = [v2 localizedStringFromNumber:isa numberStyle:1];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_1000280C0()
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B03B0;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100089770;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100028188()
{
  if (qword_1000B03A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B03B0;
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x4955656C69626F4DLL;
  v2._object = 0x8000000100089790;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v1.value._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_100028260()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000B03B0 = result;
  return result;
}

uint64_t sub_1000282B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000282FC()
{
  result = qword_1000AE4D8;
  if (!qword_1000AE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE4D8);
  }

  return result;
}

unint64_t sub_100028350()
{
  result = qword_1000AE4E0;
  if (!qword_1000AE4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AE4E0);
  }

  return result;
}

id sub_100028420(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithLightweightMode:a1];
}

id sub_100028468(uint64_t a1)
{
  *(v1 + OBJC_IVAR___SecureUIControllerDynamicIslandConfiguration_isForLightweightUI) = LACLightweightUIModeNone != a1;
  v3.super_class = SecureUIControllerDynamicIslandConfiguration;
  return objc_msgSendSuper2(&v3, "init");
}

SecureUIControllerDynamicIslandConfiguration __swiftcall SecureUIControllerDynamicIslandConfiguration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isForLightweightUI = v1;
  return result;
}

unint64_t type metadata accessor for SecureUIControllerDynamicIslandConfiguration()
{
  result = qword_1000B03B8[0];
  if (!qword_1000B03B8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1000B03B8);
  }

  return result;
}

id sub_1000285FC()
{
  v0 = objc_allocWithZone(LAContext);

  return [v0 init];
}

void sub_10002864C()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setView:v1];

  if ([objc_opt_self() isSharedIPad])
  {
    v2 = [objc_allocWithZone(LACLocalBackoffCounter) init];
    [v0 setBackoffCounter:v2];
  }
}

void sub_10002876C(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  sub_1000287D0(v1);
  v3 = *&v1[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager];
  *&v1[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = v4;
}

void sub_1000287D0(char *a1)
{
  v2 = &selRef__FBSScene;
  v3 = [a1 internalInfo];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v92, "Options");
  v92[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v5 = sub_10002AB74(v93), (v6 & 1) != 0))
  {
    sub_10002B308(*(v4 + 56) + 32 * v5, &v94);
    sub_10002ABB8(v93);

    sub_1000282B4(&qword_1000AF220, &unk_1000777C0);
    if (swift_dynamicCast())
    {
      v7 = v92[0];
      goto LABEL_7;
    }
  }

  else
  {

    sub_10002ABB8(v93);
  }

  v7 = sub_10002AEB4(&_swiftEmptyArrayStorage);
LABEL_7:
  v8 = [*&a1[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context] externalizedContext];
  if (!v8)
  {
    __break(1u);
    goto LABEL_90;
  }

  v9 = v8;
  v91 = v7;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = objc_allocWithZone(LACUIAuthenticatorServiceConfiguration);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithContext:isa requirement:2];

  sub_10002AFD0(v10, v12);
  v16 = [a1 callerName];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v15 setTitle:v16];

  swift_getObjectType();
  v17 = [a1 options];
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v92[0] = LACPolicyOptionPasscodeTitle;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v20 = sub_10002AB74(v93), (v21 & 1) == 0))
  {

    sub_10002ABB8(v93);
LABEL_17:
    v94 = 0u;
    v95 = 0u;
    goto LABEL_18;
  }

  sub_10002B308(*(v19 + 56) + 32 * v20, &v94);
  sub_10002ABB8(v93);

  if (!*(&v95 + 1))
  {
LABEL_18:
    sub_10002B444(&v94, &qword_1000AF430, &unk_1000777F0);
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_35;
  }

LABEL_19:
  if (([objc_opt_self() isApplePayPolicy:{objc_msgSend(a1, "policy")}] & 1) == 0)
  {
    v22 = [a1 options];
    if (v22)
    {
      v23 = v22;
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v92[0] = LACPolicyOptionCheckApplePayEnabled;
      AnyHashable.init<A>(_:)();
      if (*(v24 + 16))
      {
        v25 = sub_10002AB74(v93);
        if (v26)
        {
          sub_10002B308(*(v24 + 56) + 32 * v25, &v94);
          sub_10002ABB8(v93);

          if (*(&v95 + 1))
          {
            if (swift_dynamicCast() & 1) != 0 && (v93[0])
            {
              goto LABEL_20;
            }

            goto LABEL_31;
          }

LABEL_30:
          sub_10002B444(&v94, &qword_1000AF430, &unk_1000777F0);
LABEL_31:
          v27 = [a1 policy];
          if (v27 == LACPolicySoftwareUpdate)
          {
            sub_1000279C0();
            goto LABEL_35;
          }

          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v29 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          v30 = objc_opt_self();
          v31 = String._bridgeToObjectiveC()();
          v32 = [v30 modelSpecificLocalizedStringKeyForKey:v31];

          if (v32)
          {
            v33 = String._bridgeToObjectiveC()();
            v34 = [v29 localizedStringForKey:v32 value:0 table:v33];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            goto LABEL_35;
          }

LABEL_90:
          __break(1u);
          return;
        }
      }

      sub_10002ABB8(v93);
    }

    v94 = 0u;
    v95 = 0u;
    goto LABEL_30;
  }

LABEL_20:
  sub_1000279B0();
LABEL_35:
  v35 = String._bridgeToObjectiveC()();

  [v15 setSubtitle:v35];

  v36 = [a1 internalInfo];
  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v92, "FallbackReason");
  HIBYTE(v92[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v37 + 16) || (v38 = sub_10002AB74(v93), (v39 & 1) == 0))
  {

    sub_10002ABB8(v93);
    goto LABEL_46;
  }

  sub_10002B308(*(v37 + 56) + 32 * v38, &v94);
  sub_10002ABB8(v93);

  sub_10002B4A4(0, &qword_1000AF5D0, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_46;
  }

  v40 = objc_opt_self();
  v41 = v92[0];
  v42 = _convertErrorToNSError(_:)();

  LODWORD(v40) = [v40 error:v42 hasCode:LACErrorCodeSystemCancel];
  if (!v40)
  {
    goto LABEL_82;
  }

  v43 = [v41 userInfo];
  v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v44 + 16))
  {

    goto LABEL_84;
  }

  v47 = sub_10002AC0C(v45, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_84:

    goto LABEL_85;
  }

  sub_10002B308(*(v44 + 56) + 32 * v47, v93);

  type metadata accessor for LAErrorSubcode();
  if (!swift_dynamicCast())
  {
LABEL_85:

    v2 = &selRef__FBSScene;
LABEL_46:
    v51 = [a1 options];
    if (v51)
    {
      v52 = v51;
      v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v92[0] = LACPolicyOptionPasswordAuthenticationReason;
      AnyHashable.init<A>(_:)();
      if (*(v53 + 16))
      {
        v54 = sub_10002AB74(v93);
        if (v55)
        {
          sub_10002B308(*(v53 + 56) + 32 * v54, &v94);
          sub_10002ABB8(v93);

          if (*(&v95 + 1))
          {
            if ((swift_dynamicCast() & 1) == 0 || !v93[1])
            {
              goto LABEL_56;
            }

            goto LABEL_52;
          }

LABEL_55:
          sub_10002B444(&v94, &qword_1000AF430, &unk_1000777F0);
LABEL_56:
          v56 = 0;
          goto LABEL_57;
        }
      }

      sub_10002ABB8(v93);
    }

    v94 = 0u;
    v95 = 0u;
    goto LABEL_55;
  }

  v2 = &selRef__FBSScene;
  if (v94 != 13)
  {
    if (v94 == 14)
    {
      sub_100028188();
      goto LABEL_87;
    }

LABEL_82:

    goto LABEL_46;
  }

  sub_1000280C0();
LABEL_87:
  v89 = v50;

  if (!v89)
  {
    goto LABEL_56;
  }

LABEL_52:
  v56 = String._bridgeToObjectiveC()();

LABEL_57:
  [v15 setPrompt:v56];

  v57 = String._bridgeToObjectiveC()();
  [v15 setPasswordFieldPlaceholder:v57];

  sub_100027644();
  v58 = String._bridgeToObjectiveC()();

  [v15 setCancelButtonTitle:v58];

  v59 = [a1 v2[406]];
  v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v92, "CallerName");
  BYTE3(v92[1]) = 0;
  HIDWORD(v92[1]) = -369098752;
  AnyHashable.init<A>(_:)();
  if (*(v60 + 16) && (v61 = sub_10002AB74(v93), (v62 & 1) != 0))
  {
    sub_10002B308(*(v60 + 56) + 32 * v61, &v94);
    sub_10002ABB8(v93);

    if (swift_dynamicCast())
    {
      v63 = String._bridgeToObjectiveC()();

      goto LABEL_63;
    }
  }

  else
  {

    sub_10002ABB8(v93);
  }

  v63 = 0;
LABEL_63:
  [v15 setBundleIdentifier:v63];

  [v15 setStyle:0];
  v64 = [a1 v2[406]];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = objc_allocWithZone(LACInternalInfoParser);
  v66 = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = [v65 initWithInternalInfo:v66];

  v90 = [v67 callerAuditToken];
  v68 = [a1 cachedExternalizedContext];
  v69 = [a1 backoffCounter];
  if (!v69)
  {
    v69 = [objc_allocWithZone(LACLocalBackoffCounter) init];
  }

  v70 = [a1 options];
  if (!v70)
  {
    goto LABEL_72;
  }

  v71 = v70;
  v72 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v92[0] = LACPolicyOptionMaxPasscodeFailures;
  AnyHashable.init<A>(_:)();
  if (!*(v72 + 16) || (v73 = sub_10002AB74(v93), (v74 & 1) == 0))
  {

    sub_10002ABB8(v93);
LABEL_72:
    v94 = 0u;
    v95 = 0u;
    goto LABEL_73;
  }

  sub_10002B308(*(v72 + 56) + 32 * v73, &v94);
  sub_10002ABB8(v93);

  if (!*(&v95 + 1))
  {
LABEL_73:
    sub_10002B444(&v94, &qword_1000AF430, &unk_1000777F0);
    goto LABEL_74;
  }

  sub_10002B4A4(0, &qword_1000AE4E0, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v75 = v93[0];
    v76 = [v93[0] unsignedIntegerValue];

    v77 = 0;
    goto LABEL_75;
  }

LABEL_74:
  v76 = 0;
  v77 = 1;
LABEL_75:
  v78 = nullsub_18([a1 policy]);
  v79 = [a1 internalInfo];
  v80 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v94 = 0x644972657355;
  *(&v94 + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v80 + 16) && (v81 = sub_10002AB74(v93), (v82 & 1) != 0))
  {
    sub_10002B308(*(v80 + 56) + 32 * v81, &v94);
    sub_10002ABB8(v93);

    sub_10002B4A4(0, &qword_1000AE4E0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v83 = v92[0];
    }

    else
    {
      v83 = 0;
    }
  }

  else
  {

    sub_10002ABB8(v93);
    v83 = 0;
  }

  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v85 = v15;
  sub_100045A60(v85, v90, v68, v69, v76, v77, v78, v83, v91, sub_10002B05C, v84);
  v93[0] = v86;
  swift_unknownObjectRetain();
  sub_1000458A4();
  v87 = v93[0];
  canShowWhile = LACUIDTOViewController._canShowWhileLocked()();
  sub_100045CA0(a1, canShowWhile, v87);
}

void sub_100029780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10002B4A4(0, &qword_1000AF5C0, UIDevice_ptr);
  if (sub_100069D50())
  {
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = a1;
    v6[4] = a2;
    v16[4] = sub_1000299EC;
    v16[5] = v6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10002B620;
    v16[3] = &unk_100097000;
    v7 = _Block_copy(v16);
    v8 = v3;
    sub_1000299DC(a1);

    [v8 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager];
    if (v9)
    {
      v10 = objc_opt_self();
      v11 = LACErrorCodeSystemCancel;
      v12 = v9;
      v13 = [v10 errorWithCode:v11];
      v14 = swift_allocObject();
      v14[2] = v3;
      v14[3] = a1;
      v14[4] = a2;
      v15 = v3;
      sub_1000299DC(a1);
      sub_100045B2C(v13, sub_1000299D0, v14);
    }
  }
}

uint64_t sub_100029988(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000299DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000299EC()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager];
  if (v2)
  {
    v5 = v0 + 24;
    v4 = *(v0 + 24);
    v3 = *(v5 + 8);
    v6 = objc_opt_self();
    v7 = LACErrorCodeSystemCancel;
    v11 = v2;
    v8 = [v6 errorWithCode:v7];
    v9 = swift_allocObject();
    v9[2] = v1;
    v9[3] = v4;
    v9[4] = v3;
    v10 = v1;
    sub_1000299DC(v4);
    sub_100045B2C(v8, sub_10002AAA4, v9);
  }
}

uint64_t sub_100029B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100029BD8(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithRequestID:a1 endpoint:a2];

  return v5;
}

id sub_100029C30(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  *&v2[v6] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v2[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithRequestID:endpoint:", a1, a2);

  return v7;
}

id sub_100029DA8(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(v3) initWithRequestID:a1 endpoint:a2 remoteAlertPresentationMode:a3];

  return v6;
}

id sub_100029E08(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  *&v3[v8] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v3[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithRequestID:endpoint:remoteAlertPresentationMode:", a1, a2, a3);

  return v9;
}

id sub_100029F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = objc_allocWithZone(v5);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithInternalInfo:isa mechanism:a2 backoffCounter:a3 remoteUIHost:a4 allowsLandscape:a5 & 1];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

id sub_10002A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  *&v6[v12] = [objc_allocWithZone(LAContext) init];
  *&v6[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v6[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16.receiver = v6;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithInternalInfo:mechanism:backoffCounter:remoteUIHost:allowsLandscape:", isa, a2, a3, a4, a5 & 1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

id sub_10002A2D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_10002A350(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  *&v3[v7] = [objc_allocWithZone(LAContext) init];
  *&v3[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v3[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10002A488(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_10002A4CC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  *&v1[v4] = [objc_allocWithZone(LAContext) init];
  *&v1[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v1[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10002A5A0(uint64_t a1, uint64_t *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10002A658(a2, a2[3]);
  v6 = [v4 initWithInternalInfo:isa parent:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  sub_10002A69C(a2);
  return v6;
}

void *sub_10002A658(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10002A69C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_10002A6E8(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_context;
  *&v2[v5] = [objc_allocWithZone(LAContext) init];
  *&v2[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_authorizationViewManager] = 0;
  *&v2[OBJC_IVAR____TtC10CoreAuthUI27PasscodeSheetViewController_failures] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10002A658(a2, a2[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithInternalInfo:parent:", isa, v7);

  swift_unknownObjectRelease();
  sub_10002A69C(a2);
  return v8;
}

id sub_10002A874()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10002A8F8()
{
  result = [v0 mechanism];
  if (result)
  {
    [result uiEvent:9 options:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002AA04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002AA14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002AA5C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002AAB0(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  if (v2)
  {
    v4 = v1[4];
    v10 = v2;
    v11 = v4;
    v7.receiver = _NSConcreteStackBlock;
    v7.super_class = 1107296256;
    v8 = sub_10002B620;
    v9 = a1;
    v5 = _Block_copy(&v7);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PasscodeSheetViewController();
  v7.receiver = v3;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, "dismissChildWithCompletionHandler:", v5);
  _Block_release(v5);
}

unint64_t sub_10002AB74(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10002ACC8(a1, v4);
}

unint64_t sub_10002AC0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10002AD90(a1, a2, v6);
}

unint64_t sub_10002AC84(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10002AE48(a1, v4);
}

unint64_t sub_10002ACC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002B5BC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002ABB8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10002AD90(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10002AE48(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10002AEB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000282B4(&unk_1000B0250, &unk_100077970);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002B53C(v4, v13);
      result = sub_10002AB74(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10002B5AC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_10002AFD0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002B024()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10002B05C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      swift_errorRetain();
      v4 = [v3 mechanism];
      if (v4)
      {
        [v4 uiEvent:9 options:0];
        swift_unknownObjectRelease();
      }

      v5 = objc_opt_self();
      v6 = _convertErrorToNSError(_:)();
      LODWORD(v5) = [v5 error:v6 hasCode:LACErrorCodeUserCancel];

      if (v5)
      {
        [v3 uiCancel];

LABEL_12:

        return;
      }

      v11.super.isa = _convertErrorToNSError(_:)();
      [v3 uiFailureWithError:v11.super.isa];
    }

    else
    {
      v7 = [Strong mechanism];
      if (v7)
      {
        [v7 uiEvent:8 options:0];
        swift_unknownObjectRelease();
      }

      sub_1000282B4(&qword_1000AE6B0, &unk_100077AE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000776F0;
      AnyHashable.init<A>(_:)();
      sub_1000282B4(&qword_1000AE6B8, &unk_1000777D0);
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_1000776F0;
      *(v9 + 32) = LACResultPassedPasscode;
      *(v9 + 40) = 1;
      v10 = sub_10002B364(v9);
      swift_setDeallocating();
      *(inited + 96) = sub_1000282B4(&qword_1000AE6C0, qword_100077AF0);
      *(inited + 72) = v10;
      sub_10002AEB4(inited);
      swift_setDeallocating();
      sub_10002B444(inited + 32, &unk_1000AE930, &unk_1000777E0);
      v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v3 uiSuccessWithResult:v11.super.isa];
    }

    goto LABEL_12;
  }
}

uint64_t sub_10002B308(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10002B364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000282B4(&qword_1000AE6C8, qword_100078760);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10002AC84(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_10002B444(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000282B4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002B4A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for LAErrorSubcode()
{
  if (!qword_1000AE6D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000AE6D0);
    }
  }
}

uint64_t sub_10002B53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000282B4(&unk_1000AE930, &unk_1000777E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10002B5AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002B638(char a1)
{
  if (!a1)
  {
    return 0x6C616974696E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000011;
}

uint64_t sub_10002B694(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x8000000100089AB0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000100089AB0;
  }

  else
  {
    v6 = 0x8000000100089AD0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616974696E69;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x8000000100089AD0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6C616974696E69;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10002B770()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002B818()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10002B8AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002B950@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002C854(*a1);
  *a2 = result;
  return result;
}

void sub_10002B980(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x8000000100089AB0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x8000000100089AD0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6C616974696E69;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10002BA1C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10002BA6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10002BAFC;
}

void sub_10002BAFC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_10002BB80(char a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  if (v1[16])
  {
    if (v1[16] == 1)
    {
      v5 = sub_10002BE28(a1 & 1, 0, 2);
      result = (*(*v1 + 120))(v5);
      if (result)
      {
        [result recordingFinishedSuccessfully];

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return sub_10002BE28(a1 & 1, (a1 & 1) == 0, 2);
    }
  }

  else
  {
    sub_10002BE28(a1 & 1, 1, 1);

    return sub_10002C04C();
  }

  return result;
}

uint64_t sub_10002C078(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  sub_10002CB20();
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v11 + 8);
  v19(v15, v10);
  aBlock[4] = v25;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002CB88();
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v5, v2);
  (*(v27 + 8))(v9, v28);
  return (v19)(v17, v23);
}

uint64_t sub_10002C3C8()
{
  if (v0[16] && v0[16] == 1)
  {
    goto LABEL_12;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
    return result;
  }

  if (v0[16] && v0[16] != 1)
  {
LABEL_12:
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      result = (*(*v0 + 120))(result);
      if (result)
      {
        v4 = result;
        v5 = objc_opt_self();
        v6 = LACErrorCodeInternal;
        v7 = String._bridgeToObjectiveC()();
        v8 = [v5 errorWithCode:v6 debugDescription:v7];

        v9 = _convertErrorToNSError(_:)();
        [v4 recordingFinishedWithError:v9];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_10002C5EC()
{
  if (v0[16] && v0[16] != 1)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      result = (*(*v0 + 120))(result);
      if (result)
      {
        v3 = result;
        v4 = objc_opt_self();
        v5 = LACErrorCodeInternal;
        v6 = String._bridgeToObjectiveC()();
        v7 = [v4 errorWithCode:v5 debugDescription:v6];

        v8 = _convertErrorToNSError(_:)();
        [v3 recordingFinishedWithError:v8];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_10002C7B0()
{
  sub_10002C908(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10002C7E8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_10002C82C()
{
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

unint64_t sub_10002C854(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100097110, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002C8A0(uint64_t a1)
{
  v2 = sub_1000282B4(&qword_1000AE6E0, &qword_100077820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002C934()
{
  result = qword_1000AE6E8;
  if (!qword_1000AE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE6E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchdogState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WatchdogState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002CB20()
{
  result = qword_1000AF5A0;
  if (!qword_1000AF5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AF5A0);
  }

  return result;
}

uint64_t sub_10002CB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002CB88()
{
  result = qword_1000AE800;
  if (!qword_1000AE800)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE800);
  }

  return result;
}

unint64_t sub_10002CBE0()
{
  result = qword_1000AE810;
  if (!qword_1000AE810)
  {
    sub_10002CC44(&unk_1000AF5B0, &unk_100079C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE810);
  }

  return result;
}

uint64_t sub_10002CC44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_10002CCF8()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10002CDA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI24RemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10002CE60()
{
  result = (*((swift_isaMask & *v0) + 0x58))();
  if (result)
  {
    v2 = result;
    v3 = [result rootViewController];

    if (v3)
    {
      type metadata accessor for RemoteAlertRootViewController();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void sub_10002CF8C(void *a1)
{
  v2 = v1;
  v4 = (*((swift_isaMask & *v1) + 0x58))();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 windowScene];

    if (v6)
    {
      sub_10002B4A4(0, &qword_1000AE888, UIScene_ptr);
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = *((swift_isaMask & *v2) + 0x60);

        v9(0);
      }
    }
  }
}

void sub_10002D1DC(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x70))();
  if (v3)
  {
    v10 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = sub_10002D314(v5);
      v8 = [objc_allocWithZone(LACUIScenePresentationRequest) initWithUserInterfaceRequest:v7];

      (*((swift_isaMask & *v10) + 0x50))(v8);
      v9 = v8;
    }

    else
    {
      v9 = v10;
    }
  }
}

id sub_10002D314(void *a1)
{
  v2 = [objc_allocWithZone(LACUserInterfaceRequestCoder) init];
  v3 = [a1 configurationContext];
  if (v3 && (v4 = v3, v5 = [v3 userInfo], v4, v5))
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_10002AEB4(&_swiftEmptyArrayStorage);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v2 decode:isa];

  if (!v7)
  {
    v7 = [objc_opt_self() unknownInstance];
  }

  return v7;
}

id sub_10002D63C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10002D670()
{
  *&v0[OBJC_IVAR____TtC10CoreAuthUI24RemoteAlertSceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10002D6FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002D740(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v13 = a1;
    [v5 setDesiredHardwareButtonEvents:16];
    v6 = [objc_allocWithZone(LACUISecureWindow) initWithWindowScene:v5];
    v7 = (*((swift_isaMask & *v2) + 0x60))(v6);
    v8 = *((swift_isaMask & *v2) + 0x58);
    v9 = (v8)(v7);
    if (v9)
    {
      v10 = v9;
      type metadata accessor for RemoteAlertRootViewController();
      v11 = sub_10005211C([objc_allocWithZone(LACUISceneSpringBoardAdapter) initWithScene:v5]);
      [v10 setRootViewController:v11];
    }

    v12 = v8();
    [v12 makeKeyAndVisible];
  }
}

void sub_10002D8DC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10002B4A4(0, &qword_1000AE918, SBUIRemoteAlertButtonAction_ptr);
    sub_10002DB60();
    Set.Iterator.init(_cocoa:)();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_10002B4A4(0, &qword_1000AE918, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), (v12 = v18) == 0))
      {
LABEL_20:
        sub_10002DBC8();
        return;
      }

      goto LABEL_17;
    }

    v10 = v4;
    v11 = v5;
    if (!v5)
    {
      break;
    }

LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_20;
    }

LABEL_17:
    v13 = [v12 events];

    if ((v13 & 0x10) != 0)
    {
      v14 = sub_10002DBC8();
      v15 = (*((swift_isaMask & *v17) + 0x70))(v14);
      if (v15)
      {
        v16 = v15;
        [v15 handleSceneButton:0];
      }

      return;
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_20;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_10002DB60()
{
  result = qword_1000AE920;
  if (!qword_1000AE920)
  {
    sub_10002B4A4(255, &qword_1000AE918, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AE920);
  }

  return result;
}

uint64_t sub_10002DBD0()
{
  v0 = *sub_10004FFDC();

  return sub_10004FFF4(v0);
}

id sub_10002DC0C()
{
  v0 = objc_opt_self();
  v1 = [v0 currentPasscode];
  v2 = [v1 length];

  v3 = [v0 currentPasscode];
  v4 = [v3 type];

  v5 = v4 == 4;
  if (v2 == NSNotFound.getter())
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = objc_allocWithZone(PasscodeEmbeddedCustomizableViewController);

  return [v7 initWithPasscodeLength:v6 alphanumeric:v5];
}

uint64_t sub_10002DCD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_externalizedContext);
  sub_10002FD64(v1, *(v0 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_externalizedContext + 8));
  return v1;
}

void *sub_10002DD18()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_userId);
  v2 = v1;
  return v1;
}

uint64_t sub_10002DD84()
{
  v1 = v0 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_10002DDD4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10002DE40(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10002DEE0;
}

void sub_10002DEE0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_10002DF68()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_options);
  v6 = LACPolicyOptionMaxPasscodeFailures;
  AnyHashable.init<A>(_:)();
  if (*(v1 + 16) && (v2 = sub_10002AB74(v7), (v3 & 1) != 0))
  {
    sub_10002B308(*(v1 + 56) + 32 * v2, v8);
    sub_10002ABB8(v7);
    sub_10002B4A4(0, &qword_1000AE4E0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v4 = [v6 unsignedIntegerValue];

      return v4;
    }
  }

  else
  {
    sub_10002ABB8(v7);
  }

  return 0;
}

uint64_t sub_10002E064()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_failures;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10002E0A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_failures;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10002E158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = objc_allocWithZone(v7);
  v13 = *sub_10004FFDC();
  sub_10004FFF4();
  v14 = objc_opt_self();
  v15 = [v14 currentPasscode];
  v16 = [v15 length];

  v17 = [v14 currentPasscode];
  v18 = [v17 type];

  if (v16 == NSNotFound.getter())
  {
    v16 = 0;
  }

  v19 = OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_passcodeController;
  *&v12[v19] = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v16 alphanumeric:v18 == 4];
  *&v12[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_failures] = 0;
  v20 = &v12[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_externalizedContext];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_userId] = a3;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_policy] = a4;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_options] = a5;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_backoffCounter] = a6;
  *&v12[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_auditToken] = a7;
  v25.receiver = v12;
  v25.super_class = v7;
  return objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
}

id sub_10002E314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = sub_10004FFDC();
  sub_10004FFF4(*v13);
  v14 = objc_opt_self();
  v15 = [v14 currentPasscode];
  v16 = [v15 length];

  v17 = [v14 currentPasscode];
  v18 = [v17 type];

  if (v16 == NSNotFound.getter())
  {
    v16 = 0;
  }

  v19 = OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_passcodeController;
  *&v7[v19] = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v16 alphanumeric:v18 == 4];
  *&v7[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_failures] = 0;
  v20 = &v7[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_externalizedContext];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v7[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_userId] = a3;
  *&v7[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_policy] = a4;
  *&v7[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_options] = a5;
  *&v7[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_backoffCounter] = a6;
  *&v7[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_auditToken] = a7;
  v25.receiver = v7;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
}

id sub_10002E4FC()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  v4 = *&v0[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_passcodeController];
  result = [v4 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  [v3 addSubview:result];

  result = [v4 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_1000282B4(&qword_1000AEE00, &qword_100077990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100077980;
  result = [v4 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  v9 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = result;
  v11 = [result leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:10.0];
  *(v7 + 32) = v12;
  result = [v4 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = result;
  v14 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = result;
  v16 = [result trailingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:-10.0];
  *(v7 + 40) = v17;
  result = [v4 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = result;
  v19 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = result;
  v21 = [result topAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v7 + 48) = v22;
  result = [v4 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = result;
  v24 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = result;
  v26 = [result bottomAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v7 + 56) = v27;
  result = [v4 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = objc_opt_self();
  v30 = [v28 heightAnchor];

  v31 = [v30 constraintEqualToConstant:80.0];
  *(v7 + 64) = v31;
  sub_10002B4A4(0, &qword_1000AE9A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  [v0 addChildViewController:v4];
  [v4 didMoveToParentViewController:v0];

  return [v4 setDelegate:v0];
}

void sub_10002EA08(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_backoffCounter];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1000304E4;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002F4C0;
  v6[3] = &unk_1000972A8;
  v5 = _Block_copy(v6);

  [v3 currentBackoffErrorWithReply:v5];
  _Block_release(v5);
}

uint64_t sub_10002EB10(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10002B4A4(0, &qword_1000AF5A0, OS_dispatch_queue_ptr);
    swift_errorRetain();
    v18 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = a1;
    aBlock[4] = sub_100030788;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_1000973F0;
    v16 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000307E8(&qword_1000AE800, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_10002EE38(uint64_t a1)
{
  v3 = sub_1000282B4(&qword_1000B00F0, &qword_100078560);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v54[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v61 = &v54[-v14];
  __chkstk_darwin(v13);
  v16 = &v54[-v15];
  v17 = _convertErrorToNSError(_:)();
  v18 = [v17 userInfo];

  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v19 + 16))
  {

    goto LABEL_8;
  }

  v58 = v12;
  v59 = a1;
  v60 = v1;
  v22 = sub_10002AC0C(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_8:

    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_10002B444(v6, &qword_1000B00F0, &qword_100078560);
  }

  sub_10002B308(*(v19 + 56) + 32 * v22, aBlock);

  v25 = swift_dynamicCast();
  (*(v8 + 56))(v6, v25 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B444(v6, &qword_1000B00F0, &qword_100078560);
  }

  v26 = v16;
  (*(v8 + 32))(v16, v6, v7);
  v27 = v61;
  Date.init()();
  v28 = Date.compare(_:)();
  v29 = *(v8 + 8);
  (v29)(v27, v7);
  if (v28 == 1)
  {
    v30 = v58;
    (*(v8 + 16))(v58, v26, v7);
    v31 = v60;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v60 = v29;
      v35 = v34;
      v36 = swift_slowAlloc();
      v56 = v36;
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v35 = 138543618;
      *(v35 + 4) = v31;
      *v36 = v31;
      *(v35 + 12) = 2082;
      sub_1000307E8(&qword_1000AE9A8, &type metadata accessor for Date);
      v37 = v31;
      v55 = v33;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (v60)(v30, v7);
      v41 = sub_10002FDB8(v38, v40, aBlock);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v32, v55, "%{public}@ is blocked until %{public}s", v35, 0x16u);
      sub_10002B444(v56, &qword_1000AE6E0, &qword_100077820);

      sub_10002A69C(v57);

      v29 = v60;
    }

    else
    {

      (v29)(v30, v7);
    }

    v44 = *&v31[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_passcodeController];
    Date.init()();
    Date.timeIntervalSince(_:)();
    v46 = v45;
    (v29)(v27, v7);
    [v44 setBackoffTimeout:0 showBackoffTitle:1 passcodeFocused:v46];
    v47 = objc_opt_self();
    v48 = swift_allocObject();
    v49 = v26;
    v50 = v59;
    *(v48 + 16) = v31;
    *(v48 + 24) = v50;
    aBlock[4] = sub_100030544;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002F86C;
    aBlock[3] = &unk_1000972F8;
    v51 = _Block_copy(aBlock);
    v52 = v31;
    swift_errorRetain();

    v53 = [v47 scheduledTimerWithTimeInterval:0 repeats:v51 block:1.0];
    _Block_release(v51);

    v43 = v49;
  }

  else
  {
    [*&v60[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_passcodeController] setBackoffTimeout:0 showBackoffTitle:1 passcodeFocused:0.0];
    v43 = v26;
  }

  return (v29)(v43, v7);
}

void sub_10002F4C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10002F580(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  return [*&v1[OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_passcodeController] setPasscodeFocused:1];
}

void sub_10002F86C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10002F8D4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002F964()
{
  v1 = v0 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002F9E0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002FA70(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002FCC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();

  return sub_100030844(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, ObjectType, a12);
}

uint64_t sub_10002FD64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002FDB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002FE84(v11, 0, 0, 1, a1, a2);
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
    sub_10002B308(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10002A69C(v11);
  return v7;
}

unint64_t sub_10002FE84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002FF90(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10002FF90(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002FFDC(a1, a2);
  sub_10003010C(&off_100097258);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002FFDC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000301F8(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000301F8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10003010C(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10003026C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000301F8(uint64_t a1, uint64_t a2)
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

  sub_1000282B4(&unk_1000AEE20, qword_100077A90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003026C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000282B4(&unk_1000AEE20, qword_100077A90);
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

void sub_100030360()
{
  v1 = sub_10004FFDC();
  sub_10004FFF4(*v1);
  v2 = objc_opt_self();
  v3 = [v2 currentPasscode];
  v4 = [v3 length];

  v5 = [v2 currentPasscode];
  v6 = [v5 type];

  v7 = v6 == 4;
  if (v4 == NSNotFound.getter())
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  v9 = OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_passcodeController;
  *(v0 + v9) = [objc_allocWithZone(PasscodeEmbeddedCustomizableViewController) initWithPasscodeLength:v8 alphanumeric:v7];
  *(v0 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC10CoreAuthUI34PasscodeAlertContentViewController_failures) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000304AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000304EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030504()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for PasscodeAlertContentViewController()
{
  result = qword_1000B0558;
  if (!qword_1000B0558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000305C0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for LAPolicy()
{
  if (!qword_1000B0210)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000B0210);
    }
  }
}

uint64_t sub_1000306F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030748()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100030788()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10002EE38(v1);
  }
}

uint64_t sub_1000307E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100030844(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a5;
  v53 = a8;
  v49 = a7;
  v50 = a3;
  v51 = a4;
  v47 = a6;
  v48 = a10;
  v45 = a9;
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = [objc_opt_self() sharedInstance];
  v17 = objc_allocWithZone(LACSecureData);
  v18 = String._bridgeToObjectiveC()();
  v44 = [v17 initWithString:v18];

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  if ([objc_opt_self() isSharedIPad])
  {
    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v22 = v21;
    (*(v13 + 8))(v16, v12);
    if (v22 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000311E8(v20, v22);
    }

    v24 = MKBUnlockDevice();

    *(v19 + 16) = v24;
  }

  v43 = (*(a12 + 8))(a11, a12);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = a11;
  v26[3] = a12;
  v27 = v45;
  v28 = v46;
  v26[4] = v25;
  v26[5] = v27;
  v29 = v49;
  v26[6] = v48;
  v26[7] = v19;
  v26[8] = v28;
  v26[9] = v29;
  v42[1] = v19;
  v30 = v44;
  v32 = v50;
  v31 = v51;
  v26[10] = v44;
  v26[11] = v32;
  v34 = v52;
  v33 = v53;
  v26[12] = v31;
  v26[13] = v33;
  v35 = v47;
  v26[14] = v34;
  v26[15] = v35;
  aBlock[4] = sub_100031184;
  v55 = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002F4C0;
  aBlock[3] = &unk_100097490;
  v36 = _Block_copy(aBlock);
  v47 = v55;

  v37 = v28;

  v38 = v30;
  sub_10002FD64(v32, v31);
  v39 = v34;
  v40 = v33;

  [v43 currentBackoffErrorWithReply:v36];
  _Block_release(v36);

  return swift_unknownObjectRelease();
}

uint64_t sub_100030BC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030C00(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, unint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v58 = a8;
  v61 = a6;
  v62 = a7;
  v60 = a5;
  v65 = a3;
  v66 = a4;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v59 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v59);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = *(v63 + 64);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS.QoSClass();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v65;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(a15 + 80);
      swift_errorRetain();
      v30(a1, a14, a15);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_errorRetain();
    }

    v29(0);
  }

  else
  {
    v54 = a13;
    v53 = a12;
    v51 = a11;
    v50 = a10;
    v55 = v19;
    sub_10002CB20();
    v57 = v16;
    (*(v25 + 104))(v28, enum case for DispatchQoS.QoSClass.default(_:), v24);
    v56 = static OS_dispatch_queue.global(qos:)();
    (*(v25 + 8))(v28, v24);
    v31 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v32 = swift_allocObject();
    v32[2] = a14;
    v32[3] = a15;
    v52 = v31;
    v34 = v60;
    v33 = v61;
    v32[4] = v31;
    v32[5] = v34;
    v35 = v66;
    v32[6] = v65;
    v32[7] = v35;
    v36 = v62;
    v32[8] = v33;
    v32[9] = v36;
    v37 = v58;
    v32[10] = v58;
    v32[11] = a9;
    v38 = v51;
    v32[12] = a10;
    v32[13] = v38;
    v39 = v53;
    v40 = v54;
    v32[14] = v53;
    v32[15] = v40;
    aBlock[4] = sub_100031274;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_1000974E0;
    v65 = _Block_copy(aBlock);
    v41 = v37;

    v42 = v33;

    sub_10002FD64(a9, v50);
    v43 = v39;
    v44 = v38;
    static DispatchQoS.unspecified.getter();
    v67 = &_swiftEmptyArrayStorage;
    sub_10002CB88();
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    v45 = v55;
    v46 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v65;
    v48 = v56;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);

    (*(v57 + 8))(v45, v46);
    (*(v63 + 8))(v23, v64);
  }
}

uint64_t sub_10003110C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_10002AFD0(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_1000311D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000311E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002AFD0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000311FC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_10002AFD0(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 128, 7);
}

void (*sub_100031274())(uint64_t *, void)
{
  v44 = v0[2];
  v45 = v0[3];
  v2 = v0[4];
  v1 = v0[5];
  v41 = v0[6];
  v42 = v0[7];
  v3 = v0[9];
  v43 = v0[8];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[12];
  v7 = v0[13];
  v9 = v0[14];
  v8 = v0[15];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([objc_opt_self() isSharedIPad])
    {
      swift_beginAccess();
      v11 = *(v1 + 16);
      if (v11 == -14 || v11 == -3)
      {
        v14 = v44;
        v13 = v45;
        goto LABEL_14;
      }

      if (v11)
      {
        v14 = v44;
        v13 = v45;
LABEL_21:
        (*(v13 + 56))(v14, v13);
        v34 = objc_opt_self();
        v35 = LACErrorCodeInternal;
        v36 = String._bridgeToObjectiveC()();
        v37 = [v34 errorWithCode:v35 debugDescription:v36];

        (*(v13 + 64))(v37, v14, v13);
LABEL_23:

        return swift_unknownObjectRelease();
      }
    }

    v15 = objc_allocWithZone(LACMutablePasscodeVerificationRequest);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = [v15 initWithPasscode:v5 acmContext:isa auditToken:v7];

    [v17 setUserId:v9];
    [v17 setPolicy:nullsub_18(v8)];
    v18 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v17 setOptions:v18];

    v19 = [v43 verifyPasscode:v17];
    if (v19 == 2)
    {
      (*(v45 + 56))(v44, v45);
      v31 = (*(v45 + 8))(v44, v45);
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      v33[2] = v44;
      v33[3] = v45;
      v33[4] = v32;
      v33[5] = v41;
      v33[6] = v42;
      v50 = sub_100031FEC;
      v51 = v33;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10002F4C0;
      v49 = &unk_100097530;
      v30 = _Block_copy(&aBlock);

      [v31 actionBackoffWithReply:{v30, v41, v42}];
      goto LABEL_19;
    }

    v14 = v44;
    v13 = v45;
    if (v19 != 1)
    {
      if (!v19)
      {
        [(*(v45 + 8))(v44 v45)];
        swift_unknownObjectRelease();
        sub_1000282B4(&qword_1000AE6B0, &unk_100077AE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000776F0;
        aBlock = 0x746C75736552;
        v47 = 0xE600000000000000;
        AnyHashable.init<A>(_:)();
        sub_1000282B4(&qword_1000AE6B8, &unk_1000777D0);
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_1000776F0;
        *(v21 + 32) = LACResultPassedPasscode;
        *(v21 + 40) = 1;
        v22 = sub_10002B364(v21);
        swift_setDeallocating();
        *(inited + 96) = sub_1000282B4(&qword_1000AE6C0, qword_100077AF0);
        *(inited + 72) = v22;
        v23 = sub_10002AEB4(inited);
        swift_setDeallocating();
        sub_100032074(inited + 32);
        (*(v45 + 48))(v23, v44, v45);

        v41(1);
        return swift_unknownObjectRelease();
      }

      goto LABEL_21;
    }

LABEL_14:
    (*(v13 + 56))(v14, v13);
    result = (*(v13 + 40))(&aBlock, v14, v13);
    if (*v24 == -1)
    {
      __break(1u);
      return result;
    }

    ++*v24;
    result(&aBlock, 0);
    v25 = (*(v13 + 16))(v14, v13);
    if ((v26 & 1) == 0 && (*(v13 + 24))(v14, v13) >= v25)
    {
      v38 = objc_opt_self();
      v39 = LACErrorCodeAuthenticationFailed;
      v40 = String._bridgeToObjectiveC()();
      v37 = [v38 errorWithCode:v39 debugDescription:v40];

      (*(v13 + 72))(v37, v14, v13);
      goto LABEL_23;
    }

    v27 = (*(v13 + 8))(v14, v13);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v14;
    v29[3] = v13;
    v29[4] = v28;
    v29[5] = v41;
    v29[6] = v42;
    v50 = sub_100032044;
    v51 = v29;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_10002F4C0;
    v49 = &unk_100097580;
    v30 = _Block_copy(&aBlock);

    [v27 actionFailureWithReply:{v30, v41, v42}];
LABEL_19:
    _Block_release(v30);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000319CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v27);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002CB20();
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v19 = swift_allocObject();
  v20 = v25;
  v21 = v26;
  v19[2] = a5;
  v19[3] = v21;
  v19[4] = a1;
  v19[5] = v20;
  v19[6] = a4;
  v19[7] = v18;
  aBlock[4] = sub_100032124;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002B620;
  aBlock[3] = &unk_1000975D0;
  v22 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002CB88();
  sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
  sub_10002CBE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v28 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v27);
}

uint64_t sub_100031CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  result = __chkstk_darwin(v16);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = result;
    v29 = v19;
    sub_10002CB20();
    v28 = v12;
    v22 = a3;
    swift_errorRetain();
    v30 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v24 = swift_allocObject();
    v24[2] = a5;
    v24[3] = a6;
    v24[4] = v23;
    v24[5] = a1;
    v24[6] = v22;
    v24[7] = a4;
    aBlock[4] = sub_100032248;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_100097620;
    v25 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10002CB88();
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v30;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v28 + 8))(v15, v11);
    return (*(v29 + 8))(v21, v31);
  }

  return result;
}

uint64_t sub_100032004()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100032074(uint64_t a1)
{
  v2 = sub_1000282B4(&unk_1000AE930, &unk_1000777E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000320DC()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100032124()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  if (v1)
  {
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[7];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v5 + 80);
      swift_errorRetain();
      v7(v1, v4, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_errorRetain();
    }

    v2(0);
  }

  else
  {
    v8 = v0[6];
    return (v2)(0);
  }
}

uint64_t sub_100032200()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100032248()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v2 + 80))(v4, v1, v2);
    swift_unknownObjectRelease();
  }

  return v6(0);
}

id sub_10003236C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC10CoreAuthUI18TerminateAssertion_completion];
  v4 = *&v0[OBJC_IVAR____TtC10CoreAuthUI18TerminateAssertion_completion];
  if (v4)
  {
    v5 = v3[1];

    v4(v1);
    sub_10002AA04(v4);
    v6 = *v3;
    v7 = v3[1];
    *v3 = 0;
    v3[1] = 0;
    sub_10002AA04(v6);
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

void sub_1000324C8()
{
  v1 = (v0 + OBJC_IVAR____TtC10CoreAuthUI18TerminateAssertion_completion);
  v2 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI18TerminateAssertion_completion);
  if (v2)
  {
    v3 = v1[1];

    v2(v0);
    sub_10002AA04(v2);
    v4 = *v1;
    v5 = v1[1];
    *v1 = 0;
    v1[1] = 0;

    sub_10002AA04(v4);
  }
}

id variable initialization expression of SecureUIManager.controllers()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id sub_100032614()
{
  result = [objc_allocWithZone(type metadata accessor for TerminationService()) init];
  qword_1000B1CC8 = result;
  return result;
}

uint64_t *sub_100032644()
{
  if (qword_1000B0568 != -1)
  {
    swift_once();
  }

  return &qword_1000B1CC8;
}

id sub_100032694()
{
  if (qword_1000B0568 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1000B1CC8;

  return v0;
}

void sub_100032790(uint64_t a1)
{
  if (qword_1000B0568 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1000B1CC8;
  qword_1000B1CC8 = a1;
}

uint64_t (*sub_100032894())()
{
  if (qword_1000B0568 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_100032930()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + OBJC_IVAR____TtC10CoreAuthUI18TerminationService_assertions) count];
  if (!result && *(v0 + OBJC_IVAR____TtC10CoreAuthUI18TerminationService_terminationScheduled) == 1)
  {
    sub_10002CB20();
    (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.background(_:), v11);
    v19[0] = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v15, v11);
    aBlock[4] = sub_100032E4C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002B620;
    aBlock[3] = &unk_100097670;
    v17 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v19[1] = &_swiftEmptyArrayStorage;
    sub_10002CB88();
    sub_1000282B4(&unk_1000AF5B0, &unk_100079C60);
    sub_10002CBE0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19[0];
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

id sub_100032CCC()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for TerminateAssertion();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC10CoreAuthUI18TerminateAssertion_completion];
  *v4 = sub_100032DB8;
  v4[1] = v1;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "init");
  [*(v0 + OBJC_IVAR____TtC10CoreAuthUI18TerminationService_assertions) addObject:v5];
  return v5;
}

uint64_t sub_100032D80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100032DB8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC10CoreAuthUI18TerminationService_assertions) removeObject:a1];
    sub_100032930();
  }
}

uint64_t sub_100032E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100032EAC(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 2;
  }

  else
  {
    return (0x1000100010202uLL >> (8 * a1));
  }
}

Swift::Int sub_100032F04(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100032F64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100032FD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100033020()
{
  result = qword_1000AEAA0;
  if (!qword_1000AEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEAA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationFallbackMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthenticationFallbackMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1000331D0()
{
  if (!(&_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_100034A34(&_swiftEmptyArrayStorage);
}

id sub_100033228(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v9 = v5;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v6 = sub_100034A34(&_swiftEmptyArrayStorage);
    }

    else
    {
      v6 = &_swiftEmptySetSingleton;
    }

    v5 = v9;
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v5[OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_cancellables] = v6;
  v7 = &v5[OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_viewModel];
  *v7 = a1;
  *(v7 + 1) = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

id sub_1000332EC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v9 = ObjectType;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v6 = sub_100034A34(&_swiftEmptyArrayStorage);
    }

    else
    {
      v6 = &_swiftEmptySetSingleton;
    }

    ObjectType = v9;
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_cancellables] = v6;
  v7 = &v2[OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_viewModel];
  *v7 = a1;
  *(v7 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

void sub_1000333B0()
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_100034A34(&_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_cancellables) = v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100033508()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = [v0 interactivePopGestureRecognizer];
  if (v1)
  {
    v2 = v1;
    [v1 setEnabled:0];
  }

  return sub_100033580();
}

uint64_t sub_100033580()
{
  v38 = sub_1000282B4(&qword_1000AEAE0, &qword_100077C28);
  v1 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v3 = &v32 - v2;
  v32 = sub_1000282B4(&qword_1000AEAE8, &qword_100077C30);
  v4 = *(*(v32 - 8) + 64);
  v5 = __chkstk_darwin(v32);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v32 - v7;
  v8 = sub_1000282B4(&qword_1000AEAF0, &qword_100077C38);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v34 = sub_1000282B4(&qword_1000AEAF8, &qword_100077C40);
  v36 = *(v34 - 8);
  v13 = *(v36 + 64);
  __chkstk_darwin(v34);
  v15 = &v32 - v14;
  v37 = sub_1000282B4(&qword_1000AEB00, &qword_100077C48);
  v39 = *(v37 - 8);
  v16 = *(v39 + 64);
  __chkstk_darwin(v37);
  v18 = &v32 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_viewModel + 8);
  v20 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_viewModel);
  ObjectType = swift_getObjectType();
  v40 = (*(v19 + 16))(ObjectType, v19);
  sub_1000282B4(&qword_1000AEB08, &qword_100077C50);
  sub_100034E8C(&qword_1000AEB10, &qword_1000AEB08, &qword_100077C50);
  sub_100035048(&qword_1000AEB18, type metadata accessor for RatchetCoolOffContentViewModelState);
  Publisher<>.removeDuplicates()();

  sub_100034E8C(&qword_1000AEB20, &qword_1000AEAF0, &qword_100077C38);
  Publisher.map<A>(_:)();
  (*(v9 + 8))(v12, v8);
  v22 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v23 = *(*(v22 - 8) + 56);
  v24 = v33;
  v23(v33, 1, 1, v22);
  v25 = v35;
  v23(v35, 1, 1, v22);
  v26 = *(v38 + 48);
  sub_100034CEC(v24, v3);
  sub_100034CEC(v25, &v3[v26]);
  sub_100034E8C(&qword_1000AEB28, &qword_1000AEAF8, &qword_100077C40);
  v27 = v34;
  Publisher.scan<A>(_:_:)();
  sub_10002B444(v3, &qword_1000AEAE0, &qword_100077C28);
  (*(v36 + 8))(v15, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_100034D94;
  *(v29 + 24) = v28;
  sub_100034E8C(&qword_1000AEB30, &qword_1000AEB00, &qword_100077C48);
  v30 = v37;
  Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v18, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

id sub_100033C34(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = [a1 navigationItem];
  [v6 setHidesBackButton:1];

  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "pushViewController:animated:", a1, a2 & 1);
}

id sub_100033D74(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id sub_100033E4C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

uint64_t sub_100033F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100034FE4(a1, a2);
  v3 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_100034010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000282B4(&qword_1000AEAE0, &qword_100077C28);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = *(v7 + 56);
  sub_100034F7C(a1, &v13 - v9, &qword_1000AEAE0, &qword_100077C28);
  sub_100034CEC(&v10[*(v7 + 56)], a3);
  sub_100034F7C(a2, a3 + v11, &qword_1000AEAE8, &qword_100077C30);
  return sub_10002B444(v10, &qword_1000AEAE8, &qword_100077C30);
}

void sub_100034108(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000282B4(&qword_1000AEAE8, &qword_100077C30);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v59 = &v59 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v59 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v59 - v14;
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = sub_1000282B4(&qword_1000AEAE0, &qword_100077C28);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v59 - v21;
  v23 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v64 = *(v23 - 8);
  v65 = v23;
  v24 = *(v64 + 64);
  v25 = __chkstk_darwin(v23);
  v62 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v59 - v28;
  __chkstk_darwin(v27);
  v61 = &v59 - v30;
  v31 = *(v19 + 56);
  sub_100034F7C(a1, v22, &qword_1000AEAE8, &qword_100077C30);
  sub_100034F7C(a2, &v22[v31], &qword_1000AEAE8, &qword_100077C30);
  v32 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  v33 = *(*(v32 - 8) + 48);
  if (v33(&v22[v31], 1, v32) == 1)
  {
    sub_10002B444(v22, &qword_1000AEAE0, &qword_100077C28);
    return;
  }

  sub_100034F7C(&v22[v31], v17, &qword_1000AEAE8, &qword_100077C30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = v33(v22, 1, v32);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (v35 == 1)
      {
        goto LABEL_16;
      }

      sub_100034F7C(v22, v12, &qword_1000AEAE8, &qword_100077C30);
      v15 = v12;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v35 == 1)
      {
        goto LABEL_16;
      }

      v15 = v59;
      sub_100034F7C(v22, v59, &qword_1000AEAE8, &qword_100077C30);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    if (v35 == 1)
    {
      goto LABEL_16;
    }

    v15 = v60;
    sub_100034F7C(v22, v60, &qword_1000AEAE8, &qword_100077C30);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (v35 != 1)
  {
    sub_100034F7C(v22, v15, &qword_1000AEAE8, &qword_100077C30);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_7:
      sub_100034F20(v15);
      goto LABEL_16;
    }

LABEL_20:
    v47 = v64;
    v48 = v17;
    v49 = v65;
    (*(v64 + 32))(v61, v48, v65);
    v50 = *(v47 + 8);
    v50(v15, v49);
    sub_10002B444(&v22[v31], &qword_1000AEAE8, &qword_100077C30);
    sub_10002B444(v22, &qword_1000AEAE8, &qword_100077C30);
    v51 = [v66 viewControllers];
    sub_100034ED4();
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v52 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      if (v53)
      {
LABEL_22:
        v54 = __OFSUB__(v53, 1);
        v55 = v53 - 1;
        if (v54)
        {
          __break(1u);
        }

        else if ((v52 & 0xC000000000000001) == 0)
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v55 < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v56 = *(v52 + 8 * v55 + 32);
LABEL_27:
            v57 = v56;

            type metadata accessor for LACUIDTOViewController();
            if (swift_dynamicCastClass())
            {
              v58 = v61;
              dispatch thunk of LACUIDTOViewController.refresh(with:)();

LABEL_34:
              v50(v58, v49);
              return;
            }

LABEL_33:
            v58 = v61;
            goto LABEL_34;
          }

          __break(1u);
          return;
        }

        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_27;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_33;
  }

LABEL_16:
  v37 = v64;
  v36 = v65;
  (*(v64 + 32))(v29, v17, v65);
  sub_10002B444(&v22[v31], &qword_1000AEAE8, &qword_100077C30);
  sub_10002B444(v22, &qword_1000AEAE8, &qword_100077C30);
  (*(v37 + 16))(v62, v29, v36);
  v38 = v66;
  v39 = *&v66[OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_viewModel];
  v40 = *(*&v66[OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_viewModel + 8] + 8);
  v41 = objc_allocWithZone(type metadata accessor for LACUIDTOViewController());
  swift_unknownObjectRetain();
  v42 = LACUIDTOViewController.init(configuration:handler:)();
  (*(v37 + 8))(v29, v36);
  v43 = [v38 viewControllers];
  sub_100034ED4();
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = [v42 navigationItem];
  [v46 setHidesBackButton:1];

  v67.receiver = v38;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, "pushViewController:animated:", v42, v45 != 0);
}

id sub_10003486C(void *a1)
{
  [a1 addChildViewController:v1];

  return [v1 willMoveToParentViewController:a1];
}

uint64_t sub_100034934(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_viewModel + 8);
  v4 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI35RatchetCoolOffContentViewController_viewModel);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(ObjectType, v3, a1);
}

unint64_t sub_100034A34(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000282B4(&qword_1000AEB40, &qword_100077C58);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_100035048(&qword_1000AEB48, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100035048(&unk_1000AEB50, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100034CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000282B4(&qword_1000AEAE8, &qword_100077C30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034D5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100034D94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100034108(a1, a2);
  }
}

uint64_t sub_100034E00()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034E38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_1000282B4(&qword_1000AEAE0, &qword_100077C28);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_100034E8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002CC44(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100034ED4()
{
  result = qword_1000AEB38;
  if (!qword_1000AEB38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AEB38);
  }

  return result;
}

uint64_t sub_100034F20(uint64_t a1)
{
  v2 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034F7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000282B4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100034FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RatchetCoolOffContentViewModelState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035048(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003512C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_observerOfRecording;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1000387F4();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_10003519C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100035200;
}

uint64_t sub_100035200(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1000387F4();
  }

  return result;
}

id sub_100035240(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = swift_unknownObjectRetain();

  return v6;
}

uint64_t sub_1000352A4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_100035350(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_observerOfPlayback;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100035450()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_isRecording;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000354E8(char a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_isRecording;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100035658()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [(*((swift_isaMask & *v0) + 0x148))(v4) secureViews];
  swift_unknownObjectRelease();
  sub_1000282B4(&qword_1000AEBE0, &qword_100077C98);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:

LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_18:

      goto LABEL_19;
    }

    v9 = *(v8 + 32);
  }

  v7 = v9;

  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (v10)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  static LACLog.faceIDUI.getter();
  v13 = v0;
  v14 = v7;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v1;
    v18 = v17;
    v25[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10002FDB8(*(v13 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription), *(v13 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8), v25);
    *(v18 + 12) = 2080;
    v19 = sub_100037618(v14, v12);
    v21 = sub_10002FDB8(v19, v20, v25);

    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s has pending transitions: %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v2 + 8))(v6, v24);
  }

  else
  {

    (*(v2 + 8))(v6, v1);
  }

  v22 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  return *(*(v13 + v22) + 16) != 0;
}

uint64_t sub_100035AD0()
{
  if ([*(v0 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_configuration) isForLightweightUI])
  {
    v1 = sub_10005E0B0();
  }

  else
  {
    v1 = sub_10005DEB8();
  }

  v3 = *v1;
  v2 = v1[1];

  v4 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_supportedConfigurations);
  if (v4 >> 62)
  {
LABEL_23:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_6:
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

LABEL_21:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_19;
          }
        }

        v9 = v5;
        v10 = [v7 name];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        if (v11 == v3 && v13 == v2)
        {
          goto LABEL_20;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_21;
        }

        swift_unknownObjectRelease();
        ++v6;
        v5 = v9;
      }

      while (v8 != v9);
    }
  }

  _StringGuts.grow(_:)(24);

  v17._countAndFlagsBits = v3;
  v17._object = v2;
  String.append(_:)(v17);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100035D90()
{
  v1 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_currentStates;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100035E50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_currentStates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_100035EA8(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_10003951C(a1, a2, a3);

  return v8;
}

char *sub_100035F08(void *a1, void *a2, void *a3)
{
  v6 = sub_10003951C(a1, a2, a3);

  return v6;
}

void sub_100035F50()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_configuration);
    *(v0 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_configuration) = v1;
    swift_unknownObjectRetain();
  }
}

uint64_t sub_10003605C(void (*a1)(void))
{
  v3 = v1;
  v129 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v119 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v119 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v119 - v17;
  v19 = [(*((swift_isaMask & *v1) + 0x148))(v16) secureViews];
  swift_unknownObjectRelease();
  sub_1000282B4(&qword_1000AEBE0, &qword_100077C98);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_36:

LABEL_41:
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);
    v117 = *(v3 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription);
    v116 = *(v3 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8);

    v130 = v117;
    v131 = v116;
    v118._object = 0x800000010008A230;
    v118._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v118);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_36;
  }

LABEL_3:
  v128 = v4;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_39:
      v20 = sub_100038CD4(0, *(v20 + 16) + 1, 1, v20);
      *(v3 + v5) = v20;
      goto LABEL_18;
    }

    v21 = *(v20 + 32);
  }

  v2 = v21;

  swift_getObjectType();
  v22 = swift_conformsToProtocol2();
  if (v22)
  {
    v23 = v2 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {

    goto LABEL_41;
  }

  v24 = v22;
  v25 = v129;
  if (sub_100036E80(v129, v2, v22))
  {
    v26 = v24;
    static LACLog.faceIDUI.getter();
    v27 = v3;
    v28 = v2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v130 = v127;
      *v31 = 136316162;
      *(v31 + 4) = sub_10002FDB8(*(v27 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription), *(v27 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8), &v130);
      *(v31 + 12) = 2048;
      LODWORD(v126) = v30;
      v32 = v129;
      *(v31 + 14) = v129;
      *(v31 + 22) = 2080;
      ObjectType = swift_getObjectType();
      v34 = (*(v26 + 8))(v32, ObjectType, v26);
      v36 = v5;
      v37 = sub_10002FDB8(v34, v35, &v130);

      *(v31 + 24) = v37;
      *(v31 + 32) = 2080;
      (*((swift_isaMask & *v27) + 0x150))(v38);
      v39 = Dictionary.description.getter();
      v41 = v40;

      v42 = sub_10002FDB8(v39, v41, &v130);

      *(v31 + 34) = v42;
      *(v31 + 42) = 2080;
      v43 = sub_100037618(v28, v26);
      v45 = sub_10002FDB8(v43, v44, &v130);

      *(v31 + 44) = v45;
      _os_log_impl(&_mh_execute_header, v29, v126, "%s ignoring transition to state: %ld (%s), current states: %s, already in pending states: %s", v31, 0x34u);
      swift_arrayDestroy();

      return (*(v36 + 8))(v9, v128);
    }

    else
    {

      return (*(v5 + 8))(v9, v128);
    }
  }

  v126 = v24;
  v127 = v5;
  if (sub_100036FAC(v25, v2, v24))
  {
    static LACLog.faceIDUI.getter();
    v47 = v3;
    v48 = v2;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v51 = 136315650;
      *(v51 + 4) = sub_10002FDB8(*(v47 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription), *(v47 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8), &v130);
      *(v51 + 12) = 2048;
      v52 = v129;
      *(v51 + 14) = v129;
      *(v51 + 22) = 2080;
      v53 = swift_getObjectType();
      v54 = (*(v126 + 8))(v52, v53);
      v56 = sub_10002FDB8(v54, v55, &v130);

      *(v51 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s ignoring transition to state: %ld (%s), already in the state", v51, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return (*(v127 + 8))(v12, v128);
  }

  v5 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  v20 = *(v3 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v5) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_18:
  v58 = v129;
  v60 = *(v20 + 16);
  v59 = *(v20 + 24);
  if (v60 >= v59 >> 1)
  {
    v20 = sub_100038CD4((v59 > 1), v60 + 1, 1, v20);
  }

  *(v20 + 16) = v60 + 1;
  *(v20 + 8 * v60 + 32) = v58;
  *(v3 + v5) = v20;
  v61 = swift_endAccess();
  if (v60)
  {
    static LACLog.faceIDUI.getter();
    v62 = v3;
    v63 = v2;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      LODWORD(v125) = v65;
      v66 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v130 = v124;
      *v66 = 136316418;
      *(v66 + 4) = sub_10002FDB8(*(v62 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription), *(v62 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8), &v130);
      *(v66 + 12) = 2048;
      v67 = v129;
      *(v66 + 14) = v129;
      *(v66 + 22) = 2080;
      v68 = swift_getObjectType();
      v69 = v126;
      v70 = *(v126 + 8);
      v129 = v68;
      v123 = v70;
      v71 = v70(v67);
      v73 = sub_10002FDB8(v71, v72, &v130);

      *(v66 + 24) = v73;
      *(v66 + 32) = 2080;
      (*((swift_isaMask & *v62) + 0x150))(v74);
      v75 = Dictionary.description.getter();
      v77 = v76;

      v78 = sub_10002FDB8(v75, v77, &v130);

      *(v66 + 34) = v78;
      *(v66 + 42) = 2080;
      v79 = sub_100037618(v63, v69);
      v81 = sub_10002FDB8(v79, v80, &v130);

      *(v66 + 44) = v81;
      *(v66 + 52) = 2080;
      if (*(v62 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_confirmedGlyphState + 8))
      {
        v82 = 7104878;
        v83 = 0xE300000000000000;
      }

      else
      {
        v82 = v123(*(v62 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_confirmedGlyphState), v129, v69);
        v83 = v109;
      }

      v110 = v127;
      v111 = sub_10002FDB8(v82, v83, &v130);

      *(v66 + 54) = v111;
      _os_log_impl(&_mh_execute_header, v64, v125, "%s transitioning to state: %ld (%s), current states: %s, added to pendingStates: %s, confirmedGlyphState: %s", v66, 0x3Eu);
      swift_arrayDestroy();

      return (*(v110 + 8))(v18, v128);
    }

    else
    {

      return (*(v127 + 8))(v18, v128);
    }
  }

  else
  {
    v129 = *((swift_isaMask & *v3) + 0x150);
    v129(v61);
    sub_1000370FC(v58);
    static LACLog.faceIDUI.getter();
    v84 = v3;
    v85 = v2;

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      LODWORD(v124) = v87;
      v125 = v86;
      v88 = v58;
      v89 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v130 = v123;
      *v89 = 136316418;
      *(v89 + 4) = sub_10002FDB8(*(v84 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription), *(v84 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8), &v130);
      *(v89 + 12) = 2048;
      *(v89 + 14) = v88;
      *(v89 + 22) = 2080;
      v90 = swift_getObjectType();
      v91 = v126;
      v120 = *(v126 + 8);
      v121 = v90;
      v92 = v120(v88);
      v94 = sub_10002FDB8(v92, v93, &v130);
      v122 = v85;
      v95 = v94;

      *(v89 + 24) = v95;
      *(v89 + 32) = 2080;
      v96 = Dictionary.description.getter();
      v98 = v97;

      v99 = sub_10002FDB8(v96, v98, &v130);

      *(v89 + 34) = v99;
      *(v89 + 42) = 2080;
      v129(v100);
      v101 = Dictionary.description.getter();
      v103 = v102;

      v104 = sub_10002FDB8(v101, v103, &v130);

      *(v89 + 44) = v104;
      *(v89 + 52) = 2080;
      if (*(v84 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_confirmedGlyphState + 8))
      {
        v105 = 7104878;
        v106 = 0xE300000000000000;
        v107 = v127;
        v108 = v122;
      }

      else
      {
        v112 = v122;
        v105 = (v120)(*(v84 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_confirmedGlyphState), v121, v91);
        v106 = v113;
        v107 = v127;
        v108 = v112;
      }

      v114 = sub_10002FDB8(v105, v106, &v130);

      *(v89 + 54) = v114;
      v115 = v125;
      _os_log_impl(&_mh_execute_header, v125, v124, "%s transitioning to state: %ld (%s), current states: %s -> %s, confirmedGlyphState: %s", v89, 0x3Eu);
      swift_arrayDestroy();

      return (*(v107 + 8))(v15, v128);
    }

    else
    {

      return (*(v127 + 8))(v15, v128);
    }
  }
}

uint64_t sub_100036E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  if (!*(*(v3 + v6) + 16))
  {
    v16 = 0;
    return v16 & 1;
  }

  ObjectType = swift_getObjectType();
  v8 = *(a3 + 8);
  result = v8(a1, ObjectType, a3);
  v11 = *(v3 + v6);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v10;
    if (result == v8(*(v11 + 8 * v12 + 24), ObjectType, a3) && v13 == v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return v16 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100036FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  if (*(*(v3 + v6) + 16) || (v7 = v3 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_confirmedGlyphState, (*(v3 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_confirmedGlyphState + 8) & 1) != 0))
  {
    v8 = 0;
    return v8 & 1;
  }

  if (*v7 == a1)
  {
    v8 = 1;
    return v8 & 1;
  }

  ObjectType = swift_getObjectType();
  v11 = *(a3 + 8);
  result = v11(a1, ObjectType, a3);
  if ((*(v7 + 8) & 1) == 0)
  {
    v13 = v12;
    if (result == v11(*v7, ObjectType, a3) && v13 == v14)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000370FC(uint64_t a1)
{
  v2 = [(*((swift_isaMask & *v1) + 0x148))() secureViews];
  swift_unknownObjectRelease();
  sub_1000282B4(&qword_1000AEBE0, &qword_100077C98);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_50:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (2)
    {
      v9 = v7;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          v10 = *(v3 + 8 * v9 + 32);
        }

        v11 = v10;
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        swift_getObjectType();
        v12 = swift_conformsToProtocol2();
        if (v12)
        {
          if (v11)
          {
            break;
          }
        }

        ++v9;
        if (v7 == v5)
        {
          goto LABEL_22;
        }
      }

      v13 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_100038BA0(0, v8[2] + 1, 1, v8);
      }

      v17 = v8[2];
      v16 = v8[3];
      v18 = v8;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_100038BA0((v16 > 1), v17 + 1, 1, v8);
      }

      v18[2] = v17 + 1;
      v8 = v18;
      v19 = &v18[2 * v17];
      v19[4] = v11;
      v19[5] = v13;
      v6 = v15;
      if (v7 != v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

LABEL_22:

  v20 = v8[2];
  if (v20)
  {
    sub_100038DD8(0, v20, 0);
    v21 = v6;
    v22 = v8 + 5;
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;
      ObjectType = swift_getObjectType();
      v26 = [swift_unknownObjectRetain() flipBookName];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v28;

      v29 = (*(v23 + 8))(a1, ObjectType, v23);
      v31 = v30;
      swift_unknownObjectRelease();
      v33 = v21[2];
      v32 = v21[3];
      if (v33 >= v32 >> 1)
      {
        sub_100038DD8((v32 > 1), v33 + 1, 1);
      }

      v21[2] = v33 + 1;
      v34 = &v21[4 * v33];
      v34[4] = v27;
      v34[5] = v4;
      v34[6] = v29;
      v34[7] = v31;
      v22 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  v3 = sub_100039408(&_swiftEmptyArrayStorage);
  a1 = v21[2];
  if (a1)
  {
    v35 = 0;
    v36 = v21 + 7;
    v61 = v21;
    while (1)
    {
      if (v35 >= v21[2])
      {
        goto LABEL_47;
      }

      v41 = *(v36 - 3);
      v40 = *(v36 - 2);
      v42 = *(v36 - 1);
      v43 = *v36;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v44 = sub_10002AC0C(v41, v40);
      v46 = *(v3 + 16);
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_48;
      }

      v50 = v45;
      if (*(v3 + 24) < v49)
      {
        break;
      }

      if (v4)
      {
        goto LABEL_39;
      }

      v56 = v44;
      sub_1000391EC();
      v44 = v56;
      if (v50)
      {
LABEL_31:
        v37 = v44;

        v38 = (*(v3 + 56) + 16 * v37);
        v39 = v38[1];
        *v38 = v42;
        v38[1] = v43;

        goto LABEL_32;
      }

LABEL_40:
      *(v3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v52 = (*(v3 + 48) + 16 * v44);
      *v52 = v41;
      v52[1] = v40;
      v53 = (*(v3 + 56) + 16 * v44);
      *v53 = v42;
      v53[1] = v43;

      v54 = *(v3 + 16);
      v48 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v48)
      {
        goto LABEL_49;
      }

      *(v3 + 16) = v55;
LABEL_32:
      ++v35;
      v36 += 4;
      v21 = v61;
      if (a1 == v35)
      {
        goto LABEL_44;
      }
    }

    sub_100038F2C(v49, v4);
    v44 = sub_10002AC0C(v41, v40);
    if ((v50 & 1) != (v51 & 1))
    {
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_39:
    if (v50)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

LABEL_44:

  v57 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_currentStates;
  swift_beginAccess();
  v58 = *(v60 + v57);
  *(v60 + v57) = v3;
}

uint64_t sub_100037618(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    ObjectType = swift_getObjectType();
    v25 = *(a2 + 8);
    v26 = ObjectType;

    v8 = a2;
    v9 = &_swiftEmptyArrayStorage;
    v10 = 32;
    do
    {
      v11 = v5;
      v12 = v8;
      v13 = v25(*(v5 + v10), v26);
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100038A94(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = sub_100038A94((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      v18 = &v9[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v10 += 8;
      --v6;
      v8 = v12;
      v5 = v11;
    }

    while (v6);
  }

  sub_1000282B4(&qword_1000AEE08, &qword_100077E30);
  sub_100039A3C();
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 23840;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);

  return 8283;
}

uint64_t sub_100037814(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v98 = a3;
  v100 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v95 = v9;
  v96 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v92 = &v90 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v90 - v18;
  v20 = __chkstk_darwin(v17);
  v91 = &v90 - v21;
  v22 = (*((swift_isaMask & *v4) + 0x148))(v20);
  v23 = [v22 secureViews];
  swift_unknownObjectRelease();
  sub_1000282B4(&qword_1000AEBE0, &qword_100077C98);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v101 = v24;
  v97 = a4;
  v93 = v19;
  v94 = v14;
  if (v24 >> 62)
  {
    goto LABEL_47;
  }

  v25 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
LABEL_48:
    v5 = a2;

    while (1)
    {
      v102[3] = 0;
      v102[4] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      String.append(_:)(*&v99[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription]);
      v86._countAndFlagsBits = 0xD000000000000021;
      v86._object = 0x800000010008A250;
      String.append(_:)(v86);
      v87._object = v97;
      v87._countAndFlagsBits = v98;
      String.append(_:)(v87);
      v88._object = 0x800000010008A280;
      v88._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v88);
      v89._countAndFlagsBits = v100;
      v89._object = v5;
      String.append(_:)(v89);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
    }
  }

LABEL_3:
  v26 = 0;
  v27 = v101 & 0xC000000000000001;
  v28 = v101 & 0xFFFFFFFFFFFFFF8;
  while (!v27)
  {
    if (v26 >= *(v28 + 16))
    {
      __break(1u);
LABEL_47:
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (!v25)
      {
        goto LABEL_48;
      }

      goto LABEL_3;
    }

    v29 = *(v101 + 8 * v26 + 32);
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v22 = v29;
    v5 = a2;
    v31 = [v29 flipBookName];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v33;

    if (v32 == v100 && v6 == v5)
    {
      goto LABEL_17;
    }

    a2 = v5;
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_18;
    }

    ++v26;
    if (v30 == v25)
    {
      goto LABEL_48;
    }
  }

  v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v30 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:

  v6 = v22;
  swift_getObjectType();
  v36 = swift_conformsToProtocol2();
  v37 = v97;
  v38 = v99;
  if (!v36 || !v22)
  {
    goto LABEL_51;
  }

  v39 = v36;
  v40 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_pendingGlyphStates;
  swift_beginAccess();
  v41 = *&v38[v40];
  if (!*(v41 + 16))
  {
    v67 = v94;
    static LACLog.faceIDUI.getter();
    v68 = v38;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v71 = 136315394;
      *(v71 + 4) = sub_10002FDB8(*&v68[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription], *&v68[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8], v102);
      *(v71 + 12) = 2080;
      *(v71 + 14) = sub_10002FDB8(v98, v37, v102);
      _os_log_impl(&_mh_execute_header, v69, v70, "%s ignoring confirmation of transition to %s, no state pending", v71, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_44;
  }

  v42 = *(v41 + 32);
  ObjectType = swift_getObjectType();
  v5 = (v39 + 8);
  v101 = *(v39 + 8);
  v44 = (v101)(v42, ObjectType, v39);
  v46 = v45;
  if (v44 != v98 || v45 != v37)
  {
    v48 = v44;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v67 = v91;
      static LACLog.faceIDUI.getter();
      v79 = v99;

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v102[0] = v101;
        *v82 = 136315906;
        *(v82 + 4) = sub_10002FDB8(*&v79[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription], *&v79[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8], v102);
        v83 = v67;
        *(v82 + 12) = 2080;
        *(v82 + 14) = sub_10002FDB8(v98, v37, v102);
        *(v82 + 22) = 2048;
        *(v82 + 24) = v42;
        *(v82 + 32) = 2080;
        v84 = sub_10002FDB8(v48, v46, v102);

        *(v82 + 34) = v84;
        _os_log_impl(&_mh_execute_header, v80, v81, "%s ignoring confirmation of transition to %s, pendingState: %ld (%s)", v82, 0x2Au);
        swift_arrayDestroy();

        (*(v96 + 8))(v83, v95);
        return 1;
      }

LABEL_44:
      (*(v96 + 8))(v67, v95);
      return 1;
    }
  }

  v49 = v99;
  swift_beginAccess();
  if (!*(*&v49[v40] + 16))
  {
    goto LABEL_50;
  }

  sub_100039908(0, 1);
  swift_endAccess();

  v50 = &v49[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_confirmedGlyphState];
  *v50 = v42;
  v50[8] = 0;
  v51 = *&v49[v40];
  if (!*(v51 + 16))
  {
    v72 = v92;
    static LACLog.faceIDUI.getter();
    v73 = v49;

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v76 = 136315394;
      *(v76 + 4) = sub_10002FDB8(*&v73[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription], *&v73[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8], v102);
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_10002FDB8(v98, v37, v102);
      _os_log_impl(&_mh_execute_header, v74, v75, "%s confirmed transition to %s, no followup pending states", v76, 0x16u);
      swift_arrayDestroy();
    }

    v77 = (*(v96 + 8))(v72, v95);
    if (((*((swift_isaMask & *v73) + 0x140))(v77) & 1) != 0 && (v78 = (*((swift_isaMask & *v73) + 0xB8))()) != 0)
    {
      [v78 transitionToFinalStateCompleted];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return 1;
  }

  v52 = *(v51 + 32);
  sub_1000370FC(v52);
  v53 = v93;
  static LACLog.faceIDUI.getter();
  v54 = v49;

  v55 = v6;
  v56 = v37;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    LODWORD(v99) = v58;
    v60 = v59;
    v100 = swift_slowAlloc();
    v102[0] = v100;
    *v60 = 136316162;
    *(v60 + 4) = sub_10002FDB8(*&v54[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription], *&v54[OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_ownerDescription + 8], v102);
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_10002FDB8(v98, v56, v102);
    *(v60 + 22) = 2048;
    *(v60 + 24) = v52;
    *(v60 + 32) = 2080;
    v61 = (v101)(v52, ObjectType, v39);
    v63 = sub_10002FDB8(v61, v62, v102);

    *(v60 + 34) = v63;
    *(v60 + 42) = 2080;
    v64 = sub_100037618(v55, v39);
    v66 = sub_10002FDB8(v64, v65, v102);

    *(v60 + 44) = v66;
    _os_log_impl(&_mh_execute_header, v57, v99, "%s confirmed transition to %s, now transitioning to pending state: %ld (%s), remaining pending states: %s", v60, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v96 + 8))(v53, v95);
  return 0;
}

uint64_t sub_100038424(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_watchdog);
  if (v2)
  {
    v3 = result;
    v4 = *(*v2 + 152);

    v4(v3 & 1);
  }

  return result;
}

uint64_t sub_100038558()
{
  result = (*((swift_isaMask & *v0) + 0xA0))();
  if (result)
  {
    v2 = result;
    v3 = String._bridgeToObjectiveC()();
    [v2 recordingResettingToDescriptionOfFlipbook:v3];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1000386C4(uint64_t a1)
{
  result = (*((swift_isaMask & *v1) + 0xA0))();
  if (result)
  {
    [result recordingUpdatedGlyphState:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000387F4()
{
  v1 = v0;
  type metadata accessor for SecureUIRecordingWatchdog();
  v2 = sub_10002C7E8();
  v3 = OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_watchdog;
  v4 = *(v0 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_watchdog);
  *(v1 + OBJC_IVAR____TtC10CoreAuthUI31SecureUIControllerDynamicIsland_watchdog) = v2;

  v6 = (*((swift_isaMask & *v1) + 0xA0))(v5);
  (*(*v2 + 128))(v6);

  v8 = *(v1 + v3);
  if (v8)
  {
    v9 = *(*v8 + 144);

    v9(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100038960()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureUIControllerDynamicIsland();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100038A48(uint64_t a1)
{
  if ((a1 - 1) <= 2)
  {
    v1 = **(&off_1000977E0 + a1 - 1);
  }

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void *sub_100038A78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}