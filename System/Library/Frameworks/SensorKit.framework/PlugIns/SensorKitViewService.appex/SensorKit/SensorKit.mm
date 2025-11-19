NSBundle *sub_1000010D0(uint64_t a1, _OWORD *a2)
{
  objc_opt_self();
  v3 = a2[1];
  v12[0] = *a2;
  v12[1] = v3;
  result = sub_100001284(NSURL, v12);
  if (result)
  {
    v5 = result;
    v6 = _CFBundleCopyBundleURLForExecutableURL();
    if (v6)
    {
      v7 = v6;
      result = [NSBundle bundleWithURL:v6];
      if (result)
      {
        return result;
      }

      if (qword_100015F08 != -1)
      {
        dispatch_once(&qword_100015F08, &stru_100010398);
      }

      v8 = qword_100015F00;
      if (!os_log_type_enabled(qword_100015F00, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LODWORD(v12[0]) = 138543362;
      *(v12 + 4) = v7;
      v9 = "Could not create bundle for bundle URL %{public}@";
      v10 = v8;
    }

    else
    {
      if (qword_100015F08 != -1)
      {
        dispatch_once(&qword_100015F08, &stru_100010398);
      }

      v11 = qword_100015F00;
      if (!os_log_type_enabled(qword_100015F00, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LODWORD(v12[0]) = 138543362;
      *(v12 + 4) = v5;
      v9 = "Could not get bundle URL for executable URL %{public}@";
      v10 = v11;
    }

    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, v12, 0xCu);
    return 0;
  }

  return result;
}

NSURL *sub_100001284(uint64_t a1, _OWORD *a2)
{
  objc_opt_self();
  bzero(buffer, 0x400uLL);
  v3 = a2[1];
  *v10.val = *a2;
  *&v10.val[4] = v3;
  if (proc_pidpath_audittoken(&v10, buffer, 0x400u) <= 0)
  {
    if (qword_100015F18 != -1)
    {
      dispatch_once(&qword_100015F18, &stru_1000103B8);
    }

    v9 = qword_100015F10;
    if (!os_log_type_enabled(qword_100015F10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 68157954;
    LODWORD(v12[0]) = 32;
    WORD2(v12[0]) = 2096;
    *(v12 + 6) = a2;
    v6 = "Cannot determine path for audit token %.*P";
    v7 = v9;
    v8 = 18;
    goto LABEL_13;
  }

  result = [NSURL fileURLWithPath:[NSString stringWithUTF8String:buffer]];
  if (result)
  {
    return result;
  }

  if (qword_100015F18 != -1)
  {
    dispatch_once(&qword_100015F18, &stru_1000103B8);
  }

  v5 = qword_100015F10;
  if (os_log_type_enabled(qword_100015F10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v12[0] = buffer;
    v6 = "Could not create URL for path %{public}s";
    v7 = v5;
    v8 = 12;
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
  }

  return 0;
}

NSURL *sub_10000143C()
{
  objc_opt_self();

  return [NSURL URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/ALMANAC"];
}

NSURL *sub_100001474()
{
  objc_opt_self();

  return [NSURL URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/ALMANAC#OPEN_ENABLE_SENSORKIT"];
}

id sub_1000019FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_msgSend(*(a1 + 32) "authState")];
  v6 = [objc_msgSend(*(a1 + 32) "services")];
  v7 = 48;
  if (v5)
  {
    v7 = 40;
  }

  v8 = *(a1 + v7);

  return [v8 addObject:v6];
}

id sub_100001A78(uint64_t a1, void *a2)
{
  v18 = 0;
  v4 = +[NSString stringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "stringWithValidatedFormat:validFormatSpecifiers:error:", +[NSString srui_localizedStringForCode:](NSString, "srui_localizedStringForCode:"), @"%@", &v18, [objc_msgSend(*(a1 + 32) "appBundle")]);
  if (!v4)
  {
    v5 = qword_100015F20;
    if (os_log_type_enabled(qword_100015F20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v21 = v18;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
    }
  }

  [*(a1 + 32) addHeaderToStackView:*(a1 + 40) withSpacing:v4 text:16.0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = a2;
  result = [a2 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [[SRBulletedListItem alloc] initWithTitle:[[SRAuthorizationGroup authorizationGroupWithServiceName:?]] description:0 image:*(a1 + 48) textStyle:UIFontTextStyleBody];
        [*(a1 + 40) addArrangedSubview:v12];
        [*(a1 + 40) setCustomSpacing:objc_msgSend(objc_msgSend(*(a1 + 40) afterView:{"arrangedSubviews"), "lastObject"), 16.0}];

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

id sub_100001ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_msgSend(*(a1 + 32) "services")];
  if (result)
  {
    v6 = result;
    v7 = [*(a1 + 32) authStore];
    v8 = [objc_msgSend(*(a1 + 32) "appBundle")];
    v9 = [objc_msgSend(objc_msgSend(*(a1 + 32) "authState")];

    return [v7 setAuthorizationForBundleId:v8 service:v6 value:v9];
  }

  return result;
}

UIButton *sub_10000240C()
{
  v0 = [UIButton buttonWithType:1];
  [(UILabel *)[(UIButton *)v0 titleLabel] setAdjustsFontSizeToFitWidth:1];
  [(UIButton *)v0 setBackgroundImage:sub_1000025A4(+[UIColor forState:"tertiarySystemFillColor"]), 0];
  [(UIButton *)v0 setBackgroundImage:sub_1000025A4(+[UIColor forState:"tertiarySystemFillColor"]), 2];
  [(UIButton *)v0 setBackgroundImage:sub_1000025A4(+[UIColor forState:"tertiarySystemFillColor"]), 1];
  [(UIButton *)v0 setClipsToBounds:1];
  [-[UIButton layer](v0 "layer")];
  [(UILabel *)[(UIButton *)v0 titleLabel] setFont:[UIFont fontWithDescriptor:[[UIFontDescriptor preferredFontDescriptorWithTextStyle:?] size:"fontDescriptorWithSymbolicTraits:", 2], 0.0]];
  [(UILabel *)[(UIButton *)v0 titleLabel] setTextColor:+[UIColor systemBlueColor]];
  return v0;
}

UIImage *sub_1000025A4(void *a1)
{
  v4.width = 1.0;
  v4.height = 1.0;
  UIGraphicsBeginImageContext(v4);
  [a1 set];
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  UIRectFill(v5);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

void sub_100003034(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000030AC;
  block[3] = &unk_100010458;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000030AC(uint64_t a1)
{
  v2 = +[OBBoldTrayButton boldButton];
  [objc_msgSend(v2 "titleLabel")];
  [objc_msgSend(v2 "titleLabel")];
  [v2 setTitle:+[NSString srui_localizedStringForCode:](NSString forState:{"srui_localizedStringForCode:", 67), 0}];
  [v2 addTarget:*(a1 + 32) action:"openSettings:" forControlEvents:64];
  v3 = [*(a1 + 32) buttonTray];

  return [v3 addButton:v2];
}

uint64_t sub_100003388(uint64_t a1, int a2, uint64_t a3)
{
  v4 = qword_100015F28;
  if (a2)
  {
    if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Follow up item posted successfully", &v7, 2u);
    }
  }

  else if (os_log_type_enabled(qword_100015F28, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to post follow up item because %{public}@", &v7, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000037C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000037EC(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak prerequesiteNotificationReceived];
}

id sub_10000437C(id result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = +[NSMutableSet setWithSet:](NSMutableSet, "setWithSet:", [*(result + 4) requestedServices]);
    v3 = [objc_msgSend(objc_msgSend(v1 "authorizationStore")];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v31;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(NSMutableSet *)v2 removeObject:*(*(&v30 + 1) + 8 * i)];
        }

        v5 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v5);
    }

    v25 = v1;
    v8 = +[NSMutableSet set];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        v12 = 0;
        do
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v2);
          }

          v13 = *(*(&v26 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v13), "authorizationService"}];
          if (v15)
          {
            [v8 addObject:v15];
          }

          else
          {
            v16 = qword_100015F30;
            if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v38 = v13;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Don't know how to request authorization for sensor %{public}@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v14);
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v10);
    }

    if ([v8 count])
    {
      if (([+[SRAuthorizationClient dataCollectionEnabled]& 1 sharedInstance]!= 0)
      {
        v17 = -[SRAuthorizationTable initWithServices:appBundle:authStore:migrationMode:]([SRAuthorizationTable alloc], "initWithServices:appBundle:authStore:migrationMode:", +[NSArray skui_sortedServices:](NSArray, "skui_sortedServices:", [v8 allObjects]), objc_msgSend(v25, "appBundle"), objc_msgSend(v25, "authorizationStore"), objc_msgSend(v25, "migrationMode"));
        [(SRAuthorizationTable *)v17 setDelegate:v25];
        sub_100004AC4(v25, v17);
      }

      else
      {
        v19 = [NSString srui_localizedStringForCode:80];
        v20 = [objc_msgSend(v25 "appBundle")];
        v21 = [NSString srui_localizedStringForCode:81];
        v34 = 0;
        v22 = [NSString stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:&v34, v20];
        if (!v22)
        {
          v23 = qword_100015F30;
          if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v38 = v34;
            _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
          }
        }

        v24 = [[SREnableSensorKitController alloc] initWithTitle:v19 detailText:v22 icon:+[UIImage skui_imageNamed:bundle:imageDescriptor:](UIImage, "skui_imageNamed:bundle:imageDescriptor:", @"SensorKit", +[NSBundle skui_bundle](NSBundle, "skui_bundle"), +[ISImageDescriptor skui_imageDescriptorForAuthorization])];
        -[SREnableSensorKitController setAppBundle:](v24, "setAppBundle:", [v25 appBundle]);
        -[SREnableSensorKitController setServices:](v24, "setServices:", +[NSArray skui_sortedServices:](NSArray, "skui_sortedServices:", [v8 allObjects]));
        [(SREnableSensorKitController *)v24 setDelegate:v25];
        -[SREnableSensorKitController setAuthStore:](v24, "setAuthStore:", [v25 authorizationStore]);
        -[SREnableSensorKitController setMigrationMode:](v24, "setMigrationMode:", [v25 migrationMode]);
        sub_100004AC4(v25, v24);
      }

      return [v25 setAuthorizationStore:0];
    }

    else
    {
      v18 = qword_100015F30;
      if (os_log_type_enabled(qword_100015F30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No new auth groups request. Exiting prompt", buf, 2u);
      }

      [v25 setError:{+[SRError errorWithCode:](SRError, "errorWithCode:", 8201)}];
      return [SRAuthorizationPromptViewController authorizationTableCompletedPromptSuccessfully:]_0(v25);
    }
  }

  return result;
}

id sub_100004AC4(void *a1, uint64_t a2)
{
  if ([a1 error])
  {
    v4 = [a1 _remoteViewControllerProxy];
    v5 = [a1 error];

    return [v4 authorizationRequestFailedWithError:v5];
  }

  else
  {
    [a1 pushViewController:a2 animated:0];
    [objc_msgSend(a1 "navigationBar")];
    v7 = [a1 _remoteViewControllerProxy];

    return [v7 authorizationUIReadyForDisplayModally:1];
  }
}

void sub_100004DCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [[SRFirstRunOnboardingController alloc] initWithTitle:[NSString srui_localizedStringForCode:?], 0, 0];
    [(SRFirstRunOnboardingController *)v2 setDelegate:v1];
    sub_100004AC4(v1, v2);
  }
}

void sub_100005EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100005F08(uint64_t a1)
{
  v1 = *([objc_loadWeak((a1 + 32)) cancelHandler] + 2);

  return v1();
}

void sub_100006F30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_100006F54(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak completePrompt];
}

id sub_100006F80(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak cancelPrompt];
}

void sub_100007230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000726C(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak completePrompt];
}

id sub_100007298(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak cancelPrompt];
}