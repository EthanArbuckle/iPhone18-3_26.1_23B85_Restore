int64_t sub_1000BC1E8(id a1, NBBackup *a2, NBBackup *a3)
{
  v4 = a3;
  v5 = [(NBBackup *)a2 lastModificationDate];
  v6 = [(NBBackup *)v4 lastModificationDate];

  v7 = [v6 compare:v5];
  return v7;
}

int64_t sub_1000BC2A8(id a1, NRDevice *a2, NRDevice *a3)
{
  v4 = NRDevicePropertyLastActiveDate;
  v5 = a3;
  v6 = [(NRDevice *)a2 valueForProperty:v4];
  v7 = [(NRDevice *)v5 valueForProperty:v4];

  v8 = [v7 compare:v6];
  return v8;
}

BOOL sub_1000BC724(id a1, NRDevice *a2)
{
  v2 = [(NRDevice *)a2 valueForProperty:NRDevicePropertyIsArchived];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_1000BC96C()
{
  result = _sl_dlopen();
  qword_1002BD580 = result;
  return result;
}

id sub_1000BD6D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained buddyControllerCancelAnyHold];

  v3 = *(a1 + 32);

  return [COSSatellitePairingHelper popToLoginControllerFromController:v3];
}

void sub_1000BDCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BDD0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showRadarUI];
}

void sub_1000BE2F0(id a1, UIAlertAction *a2)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User Reset Buddy from Spinner Page!", v11, 2u);
  }

  v3 = [UIApp activeWatch];
  v4 = [v3 valueForProperty:NRDevicePropertyIsPaired];
  v5 = [v4 BOOLValue];

  v6 = [UIApp isActivated];
  v7 = pbb_bridge_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3 && ((v5 | v6) & 1) != 0)
  {
    if (v8)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing", v11, 2u);
    }

    v12[0] = @"obliterate";
    v12[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
    v13[0] = &__kCFBooleanTrue;
    v13[1] = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    [v10 unpairWithDevice:v3 withOptions:v9 operationHasBegun:&stru_10026B0E8];
  }

  else
  {
    if (v8)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User Reset Buddy!", v11, 2u);
    }

    [UIApp resetSetupFlowAnimated:1 forEvent:42];
  }
}

void sub_1000BE4E4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing result: (%@)", &v4, 0xCu);
  }
}

void sub_1000BE590(id a1, UIAlertAction *a2)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User Did Not Reset Buddy (at Spinner Page).", v3, 2u);
  }
}

void sub_1000C0658(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) itemStackView];
  v3 = [v2 arrangedSubviews];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = *(a1 + 48);
        if (*(a1 + 48))
        {
          v10 = 0.0;
        }

        else
        {
          v10 = 1.0;
        }

        [*(*(&v12 + 1) + 8 * v7) setAlpha:v10];
        [v8 setHidden:v9];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) itemStackView];
  [v11 addArrangedSubview:*(a1 + 40)];
}

void sub_1000C1804(id a1)
{
  v1 = pbb_bridge_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Dismissed Instructions controller", v2, 2u);
  }
}

id sub_1000C1958()
{
  if (qword_1002BD590 != -1)
  {
    sub_100189784();
  }

  v1 = qword_1002BD588;

  return v1;
}

void sub_1000C199C(id a1)
{
  v1 = os_log_create("com.apple.Bridge.DisplayAndBrightness", "utility");
  v2 = qword_1002BD588;
  qword_1002BD588 = v1;
}

void sub_1000C1C38(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 specifierForID:@"BOLD_TEXT"];
  [v2 reloadSpecifier:v3];
}

void sub_1000C2BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C2C00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = sub_1000C1958();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100189798(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) domain];
    v8 = *(a1 + 40);
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "synchronized %@ %@", buf, 0x16u);
  }

  if (*(a1 + 40) && WeakRetained)
  {
    v9 = WeakRetained[20];
    v10 = [*(a1 + 32) domain];
    [v9 synchronizeNanoDomain:v10 keys:*(a1 + 40)];
  }

  if (*(a1 + 48))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C2DE8;
    block[3] = &unk_10026B1D8;
    objc_copyWeak(&v14, (a1 + 56));
    v13 = *(a1 + 48);
    v12 = v3;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v14);
  }
}

void sub_1000C2DE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(*(a1 + 40) + 16))();
}

id sub_1000C36AC(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 32)];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 40)];
  [*(*(a1 + 32) + 32) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 40);

  return [v2 setAlpha:1.0];
}

void sub_1000C3728(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"progressTimerFired:" selector:0 userInfo:1 repeats:1.0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

void sub_1000C6FD8(uint64_t a1)
{
  v1 = [*(a1 + 32) customWatchView];
  [v1 startAnimation];
}

void sub_1000C78A8(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1002BD598;
  qword_1002BD598 = v1;

  [qword_1002BD598 setEvictsObjectsWhenApplicationEntersBackground:0];
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v5 maxPairedDeviceCount];
  v4 = [v5 maxTinkerPairedDeviceCount];
  [qword_1002BD598 setCountLimit:&v4[v3 + 1]];
}

void sub_1000C87AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000C87D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained expressPassesQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C88E8;
    block[3] = &unk_100268A38;
    v10 = v3;
    v11 = v5;
    v12 = *(a1 + 32);
    dispatch_barrier_async(v6, block);
  }

  else
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001899E8(v7);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }
}

uint64_t sub_1000C88E8(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) setupAssistantCredentials];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) passSnapshotForCredential:*(*(&v15 + 1) + 8 * i)];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) setProvisioningContext:*(a1 + 32)];
  v8 = *(a1 + 40);
  v9 = [v8 provisioningContext];
  [v9 setDelegate:v8];

  v10 = pbb_setupflow_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) provisioningContext];
    v12 = [v11 setupAssistantCredentials];
    v13 = [v12 count];
    *buf = 134217984;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Completed getting express wallet passes, number of passes = %lu", buf, 0xCu);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000C8BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C8BB8(uint64_t a1)
{
  v5 = [*(a1 + 32) provisioningContext];
  v2 = [v5 setupAssistantCredentials];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000C92E4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 buddyControllerReleaseHold:*(a1 + 32)];
}

void sub_1000C9AD8(uint64_t a1)
{
  v11 = [NSString stringWithFormat:@"%@%@", *(*(a1 + 32) + 64), @"@3x.png"];
  v2 = [UIImage imageNamed:?];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 72);
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v2 = [UIImage imageNamed:v3 inBundle:v4];

    if (PBIsInternalInstall())
    {
      if (CFPreferencesGetAppBooleanValue(@"DebugMobileAssetLoading", @"com.apple.Bridge", 0))
      {
        [v2 size];
        UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
        [v2 drawAtPoint:{0.0, 0.0}];
        v5 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.5];
        [v5 setFill];

        [v2 size];
        v7 = v6;
        [v2 size];
        v14.size.height = v8;
        v14.origin.x = 0.0;
        v14.origin.y = 0.0;
        v14.size.width = v7;
        UIRectFillUsingBlendMode(v14, kCGBlendModePlusLighter);
        v9 = UIGraphicsGetImageFromCurrentImageContext();

        UIGraphicsEndImageContext();
        v2 = v9;
      }
    }
  }

  v10 = [*(a1 + 32) marketingBannerImage];
  [v10 setImage:v2];
}

void sub_1000C9CA0(uint64_t a1)
{
  v2 = [*(a1 + 32) marketingBannerImage];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C9D68;
  v3[3] = &unk_100269120;
  v4 = *(a1 + 40);
  [UIView transitionWithView:v2 duration:5242880 options:v3 animations:&stru_10026B298 completion:0.45];
}

void sub_1000CA37C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000CA3A0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained spinner];
  [v5 stopAnimating];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 suggestedChoiceButton];
  [v7 setEnabled:1];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 alternateChoiceButton];
  [v9 setEnabled:1];

  if (a2)
  {
    v10 = [UIApp bridgeController];
    [v10 setTinkerPairing:1];

    LODWORD(v10) = _os_feature_enabled_impl();
    v11 = objc_loadWeakRetained((a1 + 32));
    v15 = v11;
    if (v10)
    {
      v12 = [v11 buddyWatchDiscoveryMonitor];
      [v12 discoverWatchesOrShowSpinner];
    }

    else
    {
      v13 = [v11 delegate];
      v14 = objc_loadWeakRetained((a1 + 32));
      [v13 buddyControllerDone:v14];
    }
  }

  else
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 setHandledButtonAction:0];
  }
}

void sub_1000CA818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[COSPairingTypeSelectionViewController preflightPairingFlowAgainstDeviceTakeoverProtection:]_block_invoke";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s ~ Result: %@", buf, 0x16u);
  }

  v8 = pbb_setupflow_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100189A2C(v6, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[COSPairingTypeSelectionViewController preflightPairingFlowAgainstDeviceTakeoverProtection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s ~ Success! Ungating operation.", buf, 0xCu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000CA9D8;
    v10[3] = &unk_1002693C0;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v10);
  }
}

void sub_1000CADAC(id a1, UIAlertAction *a2)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dismissed 'Max Device' Alert", v3, 2u);
  }
}

void sub_1000CBBC8(uint64_t a1)
{
  v2 = [UIApp setupController];
  v3 = [v2 tinkerAuthenticationController];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;

  v8 = [*(*(a1 + 32) + 32) tinkerFamilyMemberFromAuthenticationResultsForInternalUseByUpdatingtinkerSignInID];
  v6 = [UIApp setupController];
  [v6 setTinkerFamilyMember:v8];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
}

void sub_1000CBD8C(uint64_t a1)
{
  v2 = [UIApp setupController];
  v3 = [v2 tinkerFamilyMember];

  v4 = *(a1 + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(v4 + 1);
    [WeakRetained buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
  }

  else
  {

    [v4 startPostCheck];
  }
}

void sub_1000CC18C(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 localizedDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest complete, error: %@", &buf, 0xCu);
  }

  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CC6B0;
    block[3] = &unk_100268358;
    block[4] = *(a1 + 32);
    v41 = v5;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_32;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = sub_100008C3C;
  v48 = sub_100009D10;
  v49 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100008C3C;
  v38 = sub_100009D10;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100008C3C;
  v32 = sub_100009D10;
  v33 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v22 members];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v44 count:16];
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = *v25;
  while (2)
  {
    v11 = 0;
    do
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v8);
      }

      if (!*(a1 + 40))
      {
        v21 = pbb_accountsignin_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "This family member id could not be found, so we can't match it to a FAFamilyMember", v42, 2u);
        }

        goto LABEL_31;
      }

      v12 = *(*(&v24 + 1) + 8 * v11);
      if ([v12 isOrganizer])
      {
        objc_storeStrong(v35 + 5, v12);
        if ([v12 isMe])
        {
          objc_storeStrong(v29 + 5, v12);
        }

        v13 = pbb_accountsignin_log();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *v42 = 138412290;
        v43 = v12;
        v14 = v13;
        v15 = "Found family organizer: %@";
        goto LABEL_19;
      }

      v16 = [v12 appleID];
      v17 = [v16 isEqualToString:*(a1 + 40)];

      if (v17)
      {
        objc_storeStrong((*(&buf + 1) + 40), v12);
        v13 = pbb_accountsignin_log();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
LABEL_20:

          goto LABEL_21;
        }

        *v42 = 138412290;
        v43 = v12;
        v14 = v13;
        v15 = "Found member matching %@!";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, v42, 0xCu);
        goto LABEL_20;
      }

      if ([v12 isMe] && objc_msgSend(v12, "isParent"))
      {
        v18 = v29;
        v19 = v12;
        v13 = v18[5];
        v18[5] = v19;
        goto LABEL_20;
      }

LABEL_21:
      v11 = v11 + 1;
    }

    while (v9 != v11);
    v20 = [v8 countByEnumeratingWithState:&v24 objects:v44 count:16];
    v9 = v20;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000CC6BC;
  v23[3] = &unk_10026B328;
  v23[6] = &v28;
  v23[7] = &buf;
  v23[4] = *(a1 + 32);
  v23[5] = &v34;
  dispatch_async(&_dispatch_main_q, v23);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&buf, 8);

LABEL_32:
}

void sub_1000CC664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1000CC6BC(void *a1)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[5] + 8) + 40);
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting organizer member: %@", &v13, 0xCu);
  }

  v4 = [UIApp setupController];
  [v4 setOrganizerFamilyMember:*(*(a1[5] + 8) + 40)];

  v5 = [UIApp setupController];
  [v5 setPairingParentFamilyMember:*(*(a1[6] + 8) + 40)];

  v6 = *(*(a1[7] + 8) + 40);
  v7 = pbb_accountsignin_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(*(a1[7] + 8) + 40);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting Member %@!", &v13, 0xCu);
    }

    v10 = [UIApp setupController];
    [v10 setTinkerFamilyMember:*(*(a1[7] + 8) + 40)];

    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    [WeakRetained buddyControllerReleaseHoldAndSkip:a1[4]];
  }

  else
  {
    if (v8)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No matching family member found!", &v13, 2u);
    }

    v12 = [UIApp setupController];
    [v12 setTinkerFamilyMember:0];

    [COSSatellitePairingHelper popToLoginControllerFromController:a1[4]];
  }
}

void sub_1000CD030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CD064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Satellite pairing helper FAFetchFamilyCircleRequest complete, error: %@", &buf, 0xCu);
  }

  if (v5)
  {
    v9 = [v5 members];
    v10 = [v9 count];
    v11 = v6 || v10 == 0;
    v12 = !v11;

    if (v12)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v55 = 0x3032000000;
      v56 = sub_100008C4C;
      v57 = sub_100009D18;
      v58 = 0;
      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = sub_100008C4C;
      v52 = sub_100009D18;
      v53 = 0;
      v13 = sub_1000093AC();
      v14 = +[NSMutableDictionary dictionary];
      v15 = [v5 members];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1000CD544;
      v42[3] = &unk_10026B378;
      p_buf = &buf;
      v43 = *(a1 + 32);
      v47 = &v48;
      v16 = v13;
      v44 = v16;
      v17 = v14;
      v45 = v17;
      [v15 enumerateObjectsUsingBlock:v42];

      if (([*(*(&buf + 1) + 40) isMe] & 1) == 0 && !v49[5])
      {
        v33 = pbb_setupflow_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100189AF0(v33, v34, v35, v36, v37, v38, v39, v40);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 48));
        [WeakRetained _finishedWithResult:4 completion:*(a1 + 40)];
        goto LABEL_34;
      }

      if ([*(*(&buf + 1) + 40) isMe])
      {
        v18 = pbb_setupflow_log();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *v41 = 0;
        v19 = "Satellite pairing helper: organizer isMe";
      }

      else
      {
        v18 = pbb_setupflow_log();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *v41 = 0;
        v19 = "Satellite pairing helper: pairingParent isMe";
      }

      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, v41, 2u);
LABEL_26:

      if ([v17 count] < 5)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        [WeakRetained _finishedWithResult:0 completion:*(a1 + 40)];
      }

      else
      {
        v24 = pbb_setupflow_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100189B28(v24, v25, v26, v27, v28, v29, v30, v31);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 48));
        [WeakRetained _finishedWithResult:5 completion:*(a1 + 40)];
      }

LABEL_34:

      _Block_object_dispose(&v48, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_35;
    }
  }

  v20 = pbb_setupflow_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v21)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Satellite pairing helper: Abort checks, Precondition Request failed %@", &buf, 0xCu);
    }

    v22 = objc_loadWeakRetained((a1 + 48));
    [v22 _finishedWithResult:7 completion:*(a1 + 40)];
  }

  else
  {
    if (v21)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Satellite pairing helper: did not find family circle, checking for eligibility", &buf, 2u);
    }

    v23 = objc_loadWeakRetained((a1 + 48));
    [v23 _checkFamilyEligibilityWithCompletion:*(a1 + 40)];
  }

LABEL_35:
}

void sub_1000CD504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000CD544(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isOrganizer])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    [*(a1 + 32) setOrganizerFamilyMember:*(*(*(a1 + 56) + 8) + 40)];
  }

  else if ([v4 isParent] && objc_msgSend(v4, "isMe"))
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    [*(a1 + 32) setPairingParentFamilyMember:*(*(*(a1 + 64) + 8) + 40)];
  }

  else
  {
    v14 = v4;
    v5 = [v4 appleID];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 valueForProperty:@"_altAccountIdentifier"];
          v13 = [v12 isEqualToString:v5];

          if (v13)
          {
            [*(a1 + 48) setObject:v11 forKey:v5];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v4 = v14;
  }
}

void sub_1000CD800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000CD824(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if ([v6 code] == -2)
    {
      v11 = [v7 domain];
      v12 = [v11 isEqualToString:@"com.apple.appleaccount"];

      if (v12)
      {
        v9 = pbb_setupflow_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100189BE8(v7, v9);
        }

        v10 = 6;
        goto LABEL_22;
      }
    }

    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100189B60(v7, v5, v9);
    }

LABEL_16:
    v10 = 2;
    goto LABEL_22;
  }

  v8 = [v5 eligibilityStatus];
  if (!v8)
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      v10 = 2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Family Eligibility: not eligible", v15, 2u);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v8 == 2)
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Family Eligibility: only with adult (underage)", v14, 2u);
    }

    v10 = 3;
  }

  else
  {
    if (v8 != 1)
    {
      v10 = 2;
      goto LABEL_23;
    }

    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Family Eligibility: eligible", buf, 2u);
    }

    v10 = 0;
  }

LABEL_22:

LABEL_23:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishedWithResult:v10 completion:*(a1 + 32)];
}

uint64_t sub_1000CDE34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_1000CDE50(uint64_t a1)
{
  v2 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v3 = *(a1 + 72);
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = [v4 localizedStringForKey:@"OPEN_SETTINGS" value:&stru_10026E598 table:@"Localizable"];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000CE204;
    v29[3] = &unk_10026A380;
    v30 = *(a1 + 64);
    v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v29];
    [v2 addAction:v7];

    v8 = &v30;
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CANCEL_RESET_BUDDY_ACTION" value:&stru_10026E598 table:@"Localizable"];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000CE26C;
    v27[3] = &unk_10026A380;
    v11 = &v28;
    v28 = *(a1 + 64);
    v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:v27];
    [v2 addAction:v12];

LABEL_5:
    goto LABEL_6;
  }

  v13 = [v4 localizedStringForKey:@"OK" value:&stru_10026E598 table:@"Localizable"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000CE288;
  v25[3] = &unk_10026A380;
  v8 = &v26;
  v26 = *(a1 + 64);
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v25];
  [v2 addAction:v14];

  if (*(a1 + 48))
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"LEARN_MORE" value:&stru_10026E598 table:@"Localizable-tinker"];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000CE2A4;
    v22 = &unk_10026B3F0;
    v11 = &v24;
    v24 = *(a1 + 64);
    v23 = *(a1 + 48);
    v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v19];
    [v2 addAction:{v17, v19, v20, v21, v22}];

    v9 = v23;
    goto LABEL_5;
  }

LABEL_6:

  v18 = [*(a1 + 56) alertPresentationViewController];
  [v18 presentViewController:v2 animated:1 completion:0];
}

void sub_1000CE204(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))(v1, 0);
  }

  v2 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  BPSOpenSensitiveURLAsync();
}

uint64_t sub_1000CE26C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_1000CE288(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000CE2A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = [NSURL URLWithString:*(a1 + 32)];
  BPSOpenSensitiveURLAsync();
}

void sub_1000CE490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000CEA3C(uint64_t a1)
{
  sub_1000CEA94();
  result = objc_getClass("AIDAAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD5A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100189C60();
    return sub_1000CEA94();
  }

  return result;
}

uint64_t sub_1000CEA94()
{
  v3[0] = 0;
  if (!qword_1002BD5B0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000CEB94;
    v3[4] = &unk_100268108;
    v3[5] = v3;
    v4 = off_10026B438;
    v5 = 0;
    qword_1002BD5B0 = _sl_dlopen();
  }

  v0 = qword_1002BD5B0;
  v1 = v3[0];
  if (!qword_1002BD5B0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000CEB94()
{
  result = _sl_dlopen();
  qword_1002BD5B0 = result;
  return result;
}

void *sub_1000CEC08(uint64_t a1)
{
  v2 = sub_1000CEA94();
  result = dlsym(v2, "AIDAServiceTypeCloud");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD5B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000CEEBC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "(NEW UHP) Pair Failed %@";
      v6 = v4;
      v7 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    v5 = "(NEW UHP) Pair Began";
    v6 = v4;
    v7 = 2;
    goto LABEL_7;
  }
}

void sub_1000CF0A4(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) integerValue]);
  v4 = [*(a1 + 40) device];
  [v2 notifyPasscode:v3 forDevice:v4];

  v5 = [UIApp bridgeController];
  [v5 beginSetupTransaction];

  v6 = [UIApp bridgeController];
  LODWORD(v2) = [v6 isTinkerPairing];

  if (v2)
  {
    v7 = [UIApp setupController];
    v8 = [v7 pairingReportManager];

    [v8 addPairingTimeEventToPairingReportPlist:54 withValue:&__kCFBooleanTrue withError:0];
  }

  if (PBLogPerformanceMetrics())
  {
    v9 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v9 beginMacroActivity:PBBridgeGizmoPairingActivityName beginTime:CFAbsoluteTimeGetCurrent()];
  }

  v10 = dispatch_time(0, 250000000);

  dispatch_after(v10, &_dispatch_main_q, &stru_10026B470);
}

void sub_1000CF218(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"COSDeviceAlternatePathBeganConnectingNotification" object:0];
}

void sub_1000CF6F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [*(a1 + 32) sessionProgress];
    [v5 setPairedSyncProgress:?];
    [v5 setSessionType:{objc_msgSend(*(a1 + 32), "syncSessionType")}];
    v3 = *(a1 + 32);
    if (v3 && [v3 syncSessionState] == 1 && !objc_msgSend(*(a1 + 32), "syncSessionType"))
    {
      v4 = +[NRPairedDeviceRegistry sharedInstance];
      [v5 setPairedSyncSaysSyncActive:{objc_msgSend(v4, "compatibilityState") == 4}];
    }

    else
    {
      [v5 setPairedSyncSaysSyncActive:0];
    }

    WeakRetained = v5;
  }
}

void sub_1000CFAC8(uint64_t a1)
{
  v2 = [UIApp setupController];
  if ([v2 doesLiveActivityProviderRequiresPairSyncNotifications] && (objc_msgSend(*(a1 + 32), "isRegisteredForNotificationsRelevantToLiveActivities") & 1) == 0)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Live activities are active. Keep re-register for relevant notifications needed to receive sync progress updates", v5, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained reRegisterForNanoRegistryAndPairSyncNotifications];
  }
}

void sub_1000CFB84(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFC28;
  block[3] = &unk_10026B130;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000CFC28(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: requestInitialNonMigrationSyncStateForPairingIdentifier: %{BOOL}d", v8, 8u);
  }

  if (*(a1 + 32))
  {
    return [*(a1 + 40) setPairedSyncSaysSyncNeeded:0];
  }

  v4 = +[NRPairedDeviceRegistry sharedInstance];
  if ([v4 compatibilityState] != 4)
  {

    return [*(a1 + 40) setPairedSyncSaysSyncNeeded:0];
  }

  v5 = *(*(a1 + 40) + 9);

  if (v5)
  {
    return [*(a1 + 40) setPairedSyncSaysSyncNeeded:0];
  }

  result = [*(a1 + 40) pairedSyncSaysSyncNeeded];
  v7 = *(a1 + 48);
  if (result == v7)
  {
    [*(a1 + 40) setPairedSyncSaysSyncNeeded:v7 ^ 1u];
    return [*(a1 + 40) update];
  }

  return result;
}

void sub_1000D0DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D0E24(uint64_t a1)
{
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    dispatch_async(&_dispatch_main_q, *(a1 + 32));
  }
}

void sub_1000D0EAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) stringForAlertType:*(a1 + 40)];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138412802;
      v12 = v8;
      v13 = 2048;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Requesting dismissal of VC %@ to %p %@", &v11, 0x20u);
    }

    [v5 globalAlertPresentationCoordinator:*(a1 + 32) dismissAlert:*(a1 + 48) withCompletion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

id sub_1000D0FFC(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) stringForAlertType:*(a1 + 40)];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: VC %@ is now dismissed", &v5, 0xCu);
  }

  *(*(a1 + 32) + 13) = 0;
  *(*(a1 + 32) + 12) = 0;
  return [*(a1 + 32) update];
}

void sub_1000D10D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) stringForAlertType:*(a1 + 40)];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138412802;
      v12 = v8;
      v13 = 2048;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Requesting display of VC %@ to %p %@", &v11, 0x20u);
    }

    [v5 globalAlertPresentationCoordinator:*(a1 + 32) presentAlert:*(a1 + 40) withCompletion:v6];
  }

  else
  {
    v6[2](v6);
  }
}

id sub_1000D1220(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) stringForAlertType:*(a1 + 40)];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: VC %@ is now displayed", &v5, 0xCu);
  }

  *(*(a1 + 32) + 13) = 0;
  *(*(a1 + 32) + 12) = 1;
  return [*(a1 + 32) update];
}

void sub_1000D145C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COSGlobalAlertPresentationCoordinator: Alert Observer %@", &v9, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 32);
    [v8 pairedSyncProgress];
    [v5 globalAlertPresentationCoordinator:v8 syncProgressDidUpdate:?];
  }

  else
  {
    v6[2](v6);
  }
}

const __CFString *sub_1000D28B4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:kPairingBeginsKey])
  {
    v2 = @"Pairing Mode";
  }

  else if ([v1 isEqualToString:kPairingBeginsTime])
  {
    v2 = @"Pairing Began";
  }

  else if ([v1 isEqualToString:kIPEComplete])
  {
    v2 = @"IPE";
  }

  else if ([v1 isEqualToString:kFireLockOn])
  {
    v2 = @"Locked-On";
  }

  else if ([v1 isEqualToString:kWatchActivated])
  {
    v2 = @"Activated";
  }

  else if ([v1 isEqualToString:BRStartedCDPEnrollment])
  {
    v2 = @"StartedCDPEnrollment";
  }

  else if ([v1 isEqualToString:BRCDPEnrollmentSuccess])
  {
    v2 = @"CDPEnrollmentSuccessful";
  }

  else if ([v1 isEqualToString:kSilentSignInSuccess] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", kSignInSuccessful))
  {
    v2 = @"Signed-in";
  }

  else if ([v1 isEqualToString:kEndToEndPairingComplete])
  {
    v2 = @"Pairing Successful";
  }

  else if ([v1 isEqualToString:kInitialSyncBegan])
  {
    v2 = @"Initial Sync began";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1000D2D64(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000D2DE0;
  v2[3] = &unk_1002693C0;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
}

id sub_1000D2DE0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = pbb_setup_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Defaulting to Install All Existing Apps. Yorktown offered.", buf, 2u);
    }

    [*(a1 + 32) informAppConduitToInstallAllApps];
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping app installation because restricted.", v6, 2u);
    }
  }

  return [objc_opt_class() updateBuddyStageAboutPastAppInstallation];
}

int64_t sub_1000D7778(id a1, NRDevice *a2, NRDevice *a3)
{
  v4 = NRDevicePropertyPairedDate;
  v5 = a3;
  v6 = [(NRDevice *)a2 valueForProperty:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  v9 = v8;

  v10 = [(NRDevice *)v5 valueForProperty:v4];

  v11 = [v10 compare:v9];
  return v11;
}

void sub_1000D7F90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000D7FB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pairNew];
  [WeakRetained _stopSpinnerInSpecifier:v1];
}

void sub_1000D87F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000D8810(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained displaySoftwareUpdatePane:v3];
}

void sub_1000D8B5C(id a1, UIAlertAction *a2)
{
  v2 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  BPSOpenSensitiveURLAsync();
}

void sub_1000D8F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D8F84(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _specifierForActiveWatch];
    v7 = [v6 propertyForKey:@"COSDeviceState"];
    v8 = [v7 integerValue];

    if ((a2 - 1) >= 3 && [v5 swuPaneDisplayed])
    {
      v9 = [NSNumber numberWithInt:7];
      [v6 setProperty:v9 forKey:@"COSDeviceState"];

      objc_initWeak(location, *(a1 + 32));
      v10 = block;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D91BC;
      block[3] = &unk_100268458;
      objc_copyWeak(&v17, location);
      v6 = v6;
      v16 = v6;
      dispatch_async(&_dispatch_main_q, block);
      v11 = v16;
LABEL_7:

      objc_destroyWeak(v10 + 5);
      objc_destroyWeak(location);
      goto LABEL_11;
    }

    if (v8 == 7)
    {
      objc_initWeak(location, *(a1 + 32));
      v10 = v12;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000D920C;
      v12[3] = &unk_100268458;
      objc_copyWeak(&v14, location);
      v6 = v6;
      v13 = v6;
      dispatch_async(&_dispatch_main_q, v12);
      v11 = v13;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "COSPairedDeviceListController is nil when trying to get software update state", location, 2u);
    }
  }

LABEL_11:
}

void sub_1000D91BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

void sub_1000D920C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

void sub_1000D98B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D98F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelTinkerSwitchAttempt:0];
}

void sub_1000DA008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DA03C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) valueForProperty:NRDevicePropertyName];
  [v2 presentTinkerConnectFailedAlert:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  *(v4 + 160) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 152);
  *(v6 + 152) = 0;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA124;
  block[3] = &unk_1002682F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000DA124(uint64_t a1)
{
  [*(a1 + 32) setShowTinkerSwitchCancelOption:0];
  *(*(a1 + 32) + 136) = 0;
  v2 = sub_10002DFFC();
  if (v2)
  {
  }

  else if (sub_10000D61C())
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[COSPairedDeviceListViewController selectDeviceWithSpecifier:successCompletion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - We only have Satellite Paired watches. Block back button.", &v4, 0xCu);
    }

    [*(a1 + 32) _showBackButtonBehavior:2 animated:0];
  }
}

void sub_1000DA248(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    v7 = *(a1 + 32);
    v10 = "[COSPairedDeviceListViewController selectDeviceWithSpecifier:successCompletion:]_block_invoke";
    v9 = 136315650;
    if (a2)
    {
      v6 = @"YES";
    }

    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Started connecting to device %@ (%@).", &v9, 0x20u);
  }

  if ((a2 & 1) == 0)
  {
    v8 = [WeakRetained specifierDataSource];
    [v8 setLoadingDevice:*(a1 + 32)];

    [WeakRetained _showBackButtonBehavior:1 animated:0];
  }
}

void sub_1000DA370(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) pairingID];
    v7 = v6;
    v8 = @"failed";
    v14 = "[COSPairedDeviceListViewController selectDeviceWithSpecifier:successCompletion:]_block_invoke";
    v13 = 136315650;
    if (a2)
    {
      v8 = @"successful";
    }

    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Connected to device %@ %@.", &v13, 0x20u);
  }

  if (a2)
  {
    v9 = [WeakRetained tinkerConnectionTimeout];

    if (v9)
    {
      v11 = [WeakRetained tinkerConnectionTimeout];
      dispatch_source_cancel(v11);

      [WeakRetained setTinkerConnectionTimeout:0];
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v10);
    }
  }
}

void sub_1000DA9C8(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierDataSource];
  [v2 _startSpinnerInSpecifier:*(a1 + 40)];
}

void sub_1000DAA1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [NSNumber numberWithUnsignedInteger:a2];
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "isPhoneReadyToMigrateDevice: %@ (%@) error: %@", &v12, 0x20u);
  }

  v9 = *(a1 + 40);
  if (a2 == 4)
  {
    v10 = [v9 specifierDataSource];
    v11 = [v10 finishPairing];
    [v11 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];

    [*(a1 + 40) beginMigrationWithAltDevice:*(a1 + 32)];
  }

  else
  {
    [v9 handleTinkerMigrationFailureCase:a2 forDevice:*(a1 + 48)];
  }
}

void sub_1000DAF68(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = pbb_accountsignin_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100189D64(v2, v3);
    }
  }
}

const __CFString *sub_1000DB304(unint64_t a1)
{
  if (a1 < 6 && ((0x2Fu >> a1) & 1) != 0)
  {
    return *(&off_10026B7D0 + a1);
  }

  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unhandled NRMigrationAvailability code %lu", &v4, 0xCu);
  }

  return @"Unhandled code";
}

void sub_1000DB52C(id a1)
{
  v1 = pbb_bridge_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Presented Tinker migration availability failure", v2, 2u);
  }
}

void sub_1000DB9BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000DB9F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained migratingDeviceCell];

  if (!v2)
  {
    v3 = [WeakRetained findMigratingDeviceCell:*(a1 + 32)];
    [WeakRetained setMigratingDeviceCell:v3];
  }

  v4 = [WeakRetained migratingDeviceCell];
  [v4 updateCellState:1 percentageComplete:*(a1 + 32) migratingDevice:0.0];
}

void sub_1000DBA9C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v9[10] = v2;
    v9[11] = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = objc_loadWeakRetained((a1 + 56));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000DBB50;
    v9[3] = &unk_100269278;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[4] = v6;
    v9[5] = v8;
    [WeakRetained beginMigrationWithDevice:v7 withCompletion:v9];
  }
}

void sub_1000DBB50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished migration with error (%{public}@)", &v7, 0xCu);
    }

    [*(a1 + 32) presentGenericMigrationFailureMessage:v3];
  }

  else
  {
    [*(a1 + 32) _showBackButtonBehavior:0 animated:1];
  }

  v5 = [*(a1 + 40) specifierDataSource];
  v6 = [v5 finishPairing];
  [v6 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  [*(a1 + 32) reloadSpecifiers];
  [*(a1 + 32) setMigratingDeviceCell:0];
}

int64_t sub_1000DC1F8(id a1, NRDevice *a2, NRDevice *a3)
{
  v4 = NRDevicePropertyLastActiveDate;
  v5 = a3;
  v6 = [(NRDevice *)a2 valueForProperty:v4];
  v7 = [(NRDevice *)v5 valueForProperty:v4];

  v8 = [v6 compare:v7];
  return v8;
}

void sub_1000DD008(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Timed out trying to discover, display instructions", v5, 2u);
  }

  v3 = +[UIApplication sharedApplication];
  [v3 presentMigrationConnectionFailedAlert];

  v4 = [*(a1 + 32) specifierDataSource];
  [v4 reloadSpecifiers];
}

void sub_1000DD0C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained migratingDeviceCell];

  if (!v2)
  {
    v3 = [WeakRetained findMigratingDeviceCell:*(a1 + 32)];
    [WeakRetained setMigratingDeviceCell:v3];
  }

  v4 = [WeakRetained migratingDeviceCell];
  [v4 updateCellState:*(a1 + 48) percentageComplete:*(a1 + 32) migratingDevice:*(a1 + 56)];

  v5 = [WeakRetained migratingDeviceCell];
  v6 = [v5 cellSpecifier];
  [WeakRetained reloadSpecifier:v6];

  if (!*(a1 + 48))
  {
    [WeakRetained setMigratingDeviceCell:0];
    [WeakRetained reloadSpecifiers];
  }
}

id sub_1000DD33C(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Switched to watch, launching SoftwareUpdate", v4, 2u);
  }

  return [*(a1 + 32) presentSoftwareUpdatePane];
}

void sub_1000DD4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DD4FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSwuPaneDisplayed:1];
}

void sub_1000DD668(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierDataSource];
  [v1 reloadSpecifiers];
}

void sub_1000DD7E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierDataSource];
  [v1 reloadSpecifiers];
}

void sub_1000DD968(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained specifierDataSource];
  [v1 reloadSpecifiers];
}

void sub_1000DEC6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v55 = 73;
    *&v55[4] = 2080;
    *&v55[6] = "[COSScanningCoordinator startPairingWithScannedCode:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%d %s", buf, 0x12u);
  }

  v3 = (a1 + 32);
  v4 = PBBridgeMagicCodeDecoder();
  kdebug_trace();
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 bridgeController];
  v7 = [v5 setupController];
  v8 = [v7 activationManager];
  [v6 setRuiDelegate:v8];

  v9 = [v5 bridgeController];
  [v9 startEstablishingPairing];

  v10 = [[BRRTCPairingReportManager alloc] initWithPairingBeginsType:0];
  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v55 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "prm: %@", buf, 0xCu);
  }

  v12 = [UIApp setupController];
  [v12 setPairingReportManager:v10];

  v13 = [UIApp bridgeController];
  v14 = [v13 isTinkerPairing];

  if (v14)
  {
    [v10 addPairingTimeEventToPairingReportPlist:54 withValue:&__kCFBooleanTrue withError:0];
  }

  if ([v4 count] != 7)
  {
    v16 = pbb_setupflow_log();
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_FAULT))
    {
      sub_100189DF0(v3, v4, &v16->super);
    }

    goto LABEL_23;
  }

  v50 = v10;
  if (PBLogPerformanceMetrics())
  {
    v15 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v15 beginMacroActivity:PBBridgeGizmoPairingActivityName beginTime:CFAbsoluteTimeGetCurrent()];
  }

  v16 = objc_alloc_init(COSIDComponentsContext);
  v17 = [v4 objectAtIndexedSubscript:1];
  v18 = [v17 copy];
  [(COSIDComponentsContext *)v16 setPairingVersionString:v18];

  v19 = [v4 objectAtIndexedSubscript:2];
  v20 = [v19 copy];
  [WeakRetained setDeviceSetupName:v20];

  v21 = [v4 objectAtIndexedSubscript:3];
  v22 = [v21 copy];
  [WeakRetained setOobIdentifier:v22];

  v23 = [v4 objectAtIndexedSubscript:6];
  v24 = [v23 copy];
  [(COSIDComponentsContext *)v16 setOsVersionString:v24];

  v25 = [v4 objectAtIndexedSubscript:4];
  -[COSIDComponentsContext setMaterial:](v16, "setMaterial:", [v25 integerValue]);

  v26 = [v4 objectAtIndexedSubscript:5];
  -[COSIDComponentsContext setSize:](v16, "setSize:", [v26 integerValue]);

  [PBBridgeCAReporter recordMaterial:[(COSIDComponentsContext *)v16 material] andSize:[(COSIDComponentsContext *)v16 size]];
  v27 = [WeakRetained deviceSetupName];

  if (v27)
  {
    v28 = objc_alloc_init(PBBridgeAssetsManager);
    v29 = [WeakRetained deviceSetupName];
    v30 = [WeakRetained deviceSetupName];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000DF458;
    v52[3] = &unk_100269800;
    v53 = v29;
    v31 = v29;
    [v28 beginPullingAssetsForAdvertisingName:v30 completion:v52];
  }

  v32 = +[PBBridgeWatchAttributeController sharedDeviceController];
  [v32 setInternalSize:{-[COSIDComponentsContext size](v16, "size")}];
  [v32 setMaterial:{-[COSIDComponentsContext material](v16, "material")}];
  v33 = [WeakRetained deviceSetupName];
  v34 = PBIsNetworkRelayPairingFromAdvertisedName();

  if (!v34 || ([v50 addPairingTimeEventToPairingReportPlist:78 withValue:&__kCFBooleanTrue withError:0], (_os_feature_enabled_impl() & 1) != 0) || (objc_msgSend(*(a1 + 40), "delegate"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_opt_respondsToSelector(), v35, (v36 & 1) == 0))
  {
    v38 = pbb_setupflow_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *v3;
      *buf = 138412290;
      *v55 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Locked onto %@", buf, 0xCu);
    }

    v40 = pbb_setupflow_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [WeakRetained deviceSetupName];
      v48 = [WeakRetained oobIdentifier];
      v41 = [PBBridgeWatchAttributeController materialDescription:[(COSIDComponentsContext *)v16 material]];
      [PBBridgeWatchAttributeController sizeDescription:[(COSIDComponentsContext *)v16 size]];
      v42 = v49 = v4;
      v43 = +[PBBridgeWatchAttributeController hwBehaviorDescription:](PBBridgeWatchAttributeController, "hwBehaviorDescription:", [v32 hardwareBehavior]);
      v44 = [(COSIDComponentsContext *)v16 pairingVersionString];
      v45 = [(COSIDComponentsContext *)v16 osVersionString];
      *buf = 138413826;
      *v55 = v47;
      *&v55[8] = 2112;
      *&v55[10] = v48;
      v56 = 2112;
      v57 = v41;
      v58 = 2112;
      v59 = v42;
      v60 = 2112;
      v61 = v43;
      v62 = 2112;
      v63 = v44;
      v64 = 2112;
      v65 = v45;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Device Name: (%@) OOB ID: (%@) (Material: %@; Size: %@; HW: %@; Pairing Version: %@; OS Version: %@)", buf, 0x48u);

      v4 = v49;
    }

    v46 = [(COSIDComponentsContext *)v16 pairingVersionString];
    [WeakRetained setPairingVersionFromCode:{objc_msgSend(v46, "integerValue")}];

    [WeakRetained setRetryMetadataReadCounter:0];
    [*(a1 + 40) continueWithFetchingExtendedMetadataFromNanoRegistryWithIDContext:v16];

    v10 = v50;
LABEL_23:

    v16 = [UIApp bridgeController];
    [(COSIDComponentsContext *)v16 beginSetupTransaction];
    goto LABEL_24;
  }

  v37 = [*(a1 + 40) delegate];
  [v37 scanningCoordinatorDidDetectUnsupportedCompanionSoftware:*(a1 + 40)];

  v10 = v50;
LABEL_24:
}

void sub_1000DF458(uint64_t a1, int a2)
{
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pulled (%d) Assets for %@!", v6, 0x12u);
  }
}

void sub_1000DF600(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000DF624(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [UIApp bridgeController];
  v7 = [v6 isTinkerPairing];

  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received Watch Pairing Extended Metadata: %@", buf, 0xCu);
  }

  if (((v4 == 0) & v7) == 1)
  {
    [WeakRetained setRetryMetadataReadCounter:{objc_msgSend(WeakRetained, "retryMetadataReadCounter") + 1}];
    v9 = [WeakRetained retryMetadataReadCounter];
    v10 = pbb_setupflow_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9 > 1)
    {
      if (v11)
      {
        sub_100189E7C();
      }

      v12 = +[NSNotificationCenter defaultCenter];
      v14 = @"error";
      v15 = @"Tinker Pairing failed to get metadata";
      v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [v12 postNotificationName:@"COSDevicePairingFailed" object:0 userInfo:v13];
    }

    else
    {
      if (v11)
      {
        sub_100189EB0(WeakRetained, v10);
      }

      [WeakRetained continueWithFetchingExtendedMetadataFromNanoRegistryWithIDContext:*(a1 + 32)];
    }
  }

  else
  {
    [WeakRetained receivedWatchPairingExtendedMetadata:v4 withIDContext:*(a1 + 32)];
  }
}

id sub_1000DFD4C(uint64_t a1)
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received com.apple.nanoregistry.isbeginningtopair darwin notification", v4, 2u);
  }

  return [*(a1 + 32) pairingRequestAttempted:0];
}

void sub_1000E020C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E0238(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = pbb_setupflow_log();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100189FB4(WeakRetained, v3, v6);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    v10 = @"error";
    v11 = v3;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v6 postNotificationName:@"COSDevicePairingFailed" object:0 userInfo:v7];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained deviceSetupName];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Began to discover and Pair: %@", &v8, 0xCu);
LABEL_7:
  }
}

void sub_1000E1134(id a1)
{
  v1 = pbb_setupflow_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Watch is in ForceSU State...", v2, 2u);
  }
}

id sub_1000E1E58()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD5E0;
  v7 = qword_1002BD5E0;
  if (!qword_1002BD5E0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000E22E0;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_1000E22E0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000E1F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000E22E0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD5E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000E2424;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_10026B890;
    v6 = 0;
    qword_1002BD5E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD5E8)
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
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018658C();
  }

  qword_1002BD5E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000E2424()
{
  result = _sl_dlopen();
  qword_1002BD5E8 = result;
  return result;
}

void sub_1000E2764(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E27DC;
  block[3] = &unk_1002682F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000E27DC(uint64_t a1)
{
  v6 = [*(a1 + 32) specifierIDPendingPush];
  if ([v6 length])
  {
    v2 = *(a1 + 32);
    v3 = [v2 specifierIDPendingPush];
    v4 = [v2 specifierForID:v3];

    if (v4)
    {
      v5 = pbb_bridge_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v8 = "[COSAboutController viewDidLoad]_block_invoke_2";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: handling deferred url after ndo specifiers did load", buf, 0xCu);
      }

      [*(a1 + 32) handlePendingURL];
    }
  }

  else
  {
  }
}

_BYTE *sub_1000E450C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    return [result layoutForOpticalPairing];
  }

  return result;
}

id sub_1000E4684(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

_BYTE *sub_1000E46E8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    return [result restDevicesAnimation];
  }

  return result;
}

_BYTE *sub_1000E47D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    return [result pickUpDevicesAnimation];
  }

  return result;
}

char *sub_1000E5188(char *result)
{
  v1 = *(result + 5);
  if (v1 == 2)
  {
    v2 = (result + 32);
    v7 = &OBJC_IVAR___COSScanWatchDynamicHelpViewController__noWatchController;
  }

  else
  {
    if (v1 != 1)
    {
      return result;
    }

    v2 = (result + 32);
    v3 = [*(*(result + 4) + 32) view];
    v4 = [v3 superview];

    if (v4)
    {
      [*(*v2 + 4) willMoveToParentViewController:0];
      v5 = [*(*v2 + 4) view];
      [v5 removeFromSuperview];

      [*(*v2 + 4) didMoveToParentViewController:0];
      [*v2 removeChildViewController:*(*v2 + 4)];
      v6 = *(*v2 + 4);
      *(*v2 + 4) = 0;
    }

    v7 = &OBJC_IVAR___COSScanWatchDynamicHelpViewController__layingFlatController;
  }

  v8 = *v7;
  [*(*v2 + v8) willMoveToParentViewController:?];
  [*v2 addChildViewController:*(*v2 + v8)];
  v9 = [*v2 view];
  v10 = [*(*v2 + v8) view];
  [v9 addSubview:v10];

  v11 = *(*v2 + v8);

  return [v11 didMoveToParentViewController:?];
}

id sub_1000E63CC()
{
  v0 = 387771637;
  if (PBIsInternalInstall())
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 integerForKey:@"StoreID"];

    if (v2)
    {
      v3 = pbb_bridge_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 134217984;
        v6 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(NRC) Overriding storeID %ld", &v5, 0xCu);
      }

      return v2;
    }
  }

  return v0;
}

__CFString *sub_1000E64B8()
{
  if (PBIsInternalInstall())
  {
    v0 = +[NSUserDefaults standardUserDefaults];
    v1 = [v0 stringForKey:@"BundleExtensionID"];

    if (v1)
    {
      v2 = v1;
      v3 = pbb_bridge_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138412290;
        v6 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(NRC) Overriding bundleExtensionID %@", &v5, 0xCu);
      }
    }

    else
    {
      v2 = @"com.nike.nikeplus-gps.watchkitapp";
    }
  }

  else
  {
    v2 = @"com.nike.nikeplus-gps.watchkitapp";
  }

  return v2;
}

void sub_1000E75F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E79A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000E79C0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_1002BD608;
  v8 = qword_1002BD608;
  if (!qword_1002BD608)
  {
    v1 = sub_1000EA3FC();
    v6[3] = dlsym(v1, "SOSContactsChangedNotification");
    qword_1002BD608 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100186904();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1000E7CE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E7D7C;
  v5[3] = &unk_100268358;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_1000E7D7C(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = v2;

  v5 = *(a1 + 32);

  return [v5 reloadSpecifiers];
}

void sub_1000E7FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E7FEC(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E812C;
  v5[3] = &unk_100268220;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  dispatch_async(&_dispatch_main_q, v5);
  if (a2 != 2)
  {
    v3 = [sub_1000E8134() newtonTriggersEmergencySOSNumber];

    if (!v3)
    {
      v4 = pbb_bridge_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v7 = a2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Newton is hidden although the current user is eligible. SOSNewtonEligibility: %ld", buf, 0xCu);
      }

      [sub_1000E8134() setNewtonTriggersEmergencySOSNumber:&__kCFBooleanFalse];
    }
  }
}

id sub_1000E8134()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD620;
  v7 = qword_1002BD620;
  if (!qword_1002BD620)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000EA6C8;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_1000EA6C8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000E81FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E8544(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000E8560(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"SOS_KAPPA_THIRD_PARTY_TITLE"];
    v7 = [sub_1000E8134() crashDetectionThirdPartyFooterDescriptionWatch];
    [v6 setProperty:v7 forKey:PSFooterTextGroupKey];

    v8 = [sub_1000E8134() crashDetectionThirdPartyDescription];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:v5 set:0 get:"kappaThirdPartyName:" detail:objc_opt_class() cell:2 edit:0];

    [v9 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v9 setProperty:*(a1 + 32) forKey:PSValueKey];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E873C;
    block[3] = &unk_10026B950;
    objc_copyWeak(&v16, (a1 + 40));
    v13 = v3;
    v14 = v6;
    v15 = v9;
    v10 = v9;
    v11 = v6;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v16);
  }
}

void sub_1000E873C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setKappaApiAppName:*(a1 + 32)];
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v4 = [NSArray arrayWithObjects:v5 count:2];
  [WeakRetained setKappaAPISpecifiers:v4];

  [WeakRetained reloadSpecifiers];
}

void sub_1000E9F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EA040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000EA3A4(uint64_t a1)
{
  sub_1000EA3FC();
  result = objc_getClass("SOSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD5F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10018A144();
    return sub_1000EA3FC();
  }

  return result;
}

uint64_t sub_1000EA3FC()
{
  v3[0] = 0;
  if (!qword_1002BD5F8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000EA4FC;
    v3[4] = &unk_100268108;
    v3[5] = v3;
    v4 = off_10026B9B8;
    v5 = 0;
    qword_1002BD5F8 = _sl_dlopen();
  }

  v0 = qword_1002BD5F8;
  v1 = v3[0];
  if (!qword_1002BD5F8)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000EA4FC()
{
  result = _sl_dlopen();
  qword_1002BD5F8 = result;
  return result;
}

Class sub_1000EA570(uint64_t a1)
{
  sub_1000EA3FC();
  result = objc_getClass("SOSLegacyContactsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD600 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10018A16C();
    return sub_1000EA5C8(v3);
  }

  return result;
}

void *sub_1000EA5C8(uint64_t a1)
{
  v2 = sub_1000EA3FC();
  result = dlsym(v2, "SOSContactsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD608 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000EA618(uint64_t a1)
{
  sub_1000EA3FC();
  result = objc_getClass("SOSContactsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD610 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10018A194();
    return sub_1000EA670(v3);
  }

  return result;
}

Class sub_1000EA670(uint64_t a1)
{
  sub_1000EA3FC();
  result = objc_getClass("SOSNewtonManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD618 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100186120();
    return sub_1000EA6C8(v3);
  }

  return result;
}

Class sub_1000EA6C8(uint64_t a1)
{
  sub_1000EA3FC();
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD620 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1001860F8();
    return sub_1000EA720(v3);
  }

  return result;
}

Class sub_1000EA720(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD630)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000EA864;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_10026B9D0;
    v6 = 0;
    qword_1002BD630 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD630)
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
  result = objc_getClass("HKNavigationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018A1BC();
  }

  qword_1002BD628 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000EA864()
{
  result = _sl_dlopen();
  qword_1002BD630 = result;
  return result;
}

Class sub_1000EA8D8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD640)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000EAA1C;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_10026B9E8;
    v6 = 0;
    qword_1002BD640 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD640)
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
  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018A1E4();
  }

  qword_1002BD638 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000EAA1C()
{
  result = _sl_dlopen();
  qword_1002BD640 = result;
  return result;
}

__CFString *sub_1000EAA90(unint64_t a1)
{
  if (a1 > 3)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = **(&off_10026BA00 + a1);
  }

  return v2;
}

void sub_1000EACEC(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 reloadSpecifierID:@"TRITIUM_ID"];
  [v2 _updatePrivacyRowVisibility];
}

void sub_1000EC370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained refreshBackupStatus];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EC494;
    v6[3] = &unk_1002682F0;
    v6[4] = v3;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000EC540;
    v4[3] = &unk_10026A0A8;
    objc_copyWeak(&v5, (a1 + 40));
    v4[4] = *(a1 + 32);
    [UIView animateWithDuration:0 delay:v6 options:v4 animations:0.5 completion:0.0];
    objc_destroyWeak(&v5);
  }
}

void sub_1000EC494(uint64_t a1)
{
  v2 = [*(a1 + 32) spinner];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) setupController];
  v4 = [v3 expressMode];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) buttonTray];
    [v5 setAlpha:1.0];
  }
}

void sub_1000EC540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCompletedIntroAnimation:1];
    v4 = [v3 successBehavior];
    [v4 deactivate];

    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 setupController];
      v7 = [v3 setupController];
      v11 = 138412546;
      v12 = v6;
      v13 = 1024;
      v14 = [v7 expressMode];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setupController: %@, expressMode: %{BOOL}d", &v11, 0x12u);
    }

    v8 = [v3 setupController];
    v9 = [v8 expressMode];

    if (v9)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:*(a1 + 32) selector:"outroAnimationFinished:" name:@"COSOutroAnimationFinishedNotification" object:0];
    }
  }
}

void sub_1000EC928(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained setupController];
  v3 = [v2 expressMode];

  if (v3)
  {
    v4 = pbb_setupflow_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Outro finished, activelyPairingWatch valid, express mode enabled, launching", v6, 2u);
    }

    v5 = [WeakRetained delegate];
    [v5 buddyControllerDone:WeakRetained nextControllerClass:objc_opt_class()];
  }
}

void sub_1000EE8F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  ++*(*(*(a1 + 40) + 8) + 24);
  [WeakRetained updateReachabilityRadioState];
  if (![WeakRetained radioState])
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Radio State now connected.";
      v5 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v6 = [WeakRetained radioStateTimer];
    [v6 invalidate];

    [WeakRetained setRadioStateTimer:0];
    (*(*(a1 + 32) + 16))(*(a1 + 32));
    goto LABEL_9;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 5)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v4 = "Radio State still not connected after 5 seconds, post alert";
      v5 = &v7;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

uint64_t COSBBScannedResultsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            *(a1 + 80) |= 2u;
            v45 = 0;
            v24 = [a2 position] + 8;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___COSBBScannedResults__invalid;
            goto LABEL_76;
          }

          if (v13 == 4)
          {
            *(a1 + 80) |= 8u;
            v45 = 0;
            v18 = [a2 position] + 8;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___COSBBScannedResults__leftWristRightCrown;
            goto LABEL_76;
          }
        }

        else
        {
          if (v13 == 1)
          {
            *(a1 + 80) |= 0x100u;
            v45 = 0;
            v22 = [a2 position] + 8;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___COSBBScannedResults__time;
            goto LABEL_76;
          }

          if (v13 == 2)
          {
            *(a1 + 80) |= 0x10u;
            v45 = 0;
            v16 = [a2 position] + 8;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___COSBBScannedResults__none;
            goto LABEL_76;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          *(a1 + 80) |= 4u;
          v45 = 0;
          v28 = [a2 position] + 8;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v33 = v45;
          v34 = &OBJC_IVAR___COSBBScannedResults__leftWristLeftCrown;
          goto LABEL_76;
        }

        if (v13 == 6)
        {
          *(a1 + 80) |= 0x80u;
          v45 = 0;
          v20 = [a2 position] + 8;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v33 = v45;
          v34 = &OBJC_IVAR___COSBBScannedResults__rightWristRightCrown;
          goto LABEL_76;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            *(a1 + 80) |= 0x40u;
            v45 = 0;
            v26 = [a2 position] + 8;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___COSBBScannedResults__rightWristLeftCrown;
            goto LABEL_76;
          case 8:
            *(a1 + 80) |= 0x20u;
            v45 = 0;
            v30 = [a2 position] + 8;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___COSBBScannedResults__palm;
            goto LABEL_76;
          case 9:
            *(a1 + 80) |= 1u;
            v45 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v45;
            v34 = &OBJC_IVAR___COSBBScannedResults__dock;
LABEL_76:
            *(a1 + *v34) = v33;
            goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000F1974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000F1990(uint64_t a1, void *a2)
{
  result = [a2 BOOLValue];
  *(*(a1 + 32) + 137) = result;
  return result;
}

void sub_1000F19C8(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 138) = 1;
  *(*(a1 + 32) + 136) = [a2 isEqualToString:@"on"];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F1A80;
  block[3] = &unk_1002682F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000F1A88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = pbb_bridge_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "error when attempting to retrieve airplane mode settings: %@", buf, 0xCu);
    }

    BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
  }

  else if (WeakRetained)
  {
    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "airplane mode settings returned from the watch %@", buf, 0xCu);
    }

    [v8 setAirplaneModeSettingsLoaded:1];
    v11 = [v5 objectForKey:kNSSAirplaneModeBluetoothKey];
    [v8 setBluetoothWithAirplaneMode:{objc_msgSend(v11, "BOOLValue")}];

    v12 = [v5 objectForKey:kNSSAirplaneModeWifiKey];
    [v8 setWifiWithAirplaneMode:{objc_msgSend(v12, "BOOLValue")}];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F1C90;
    block[3] = &unk_1002682F0;
    block[4] = v8;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_1000F1C90(uint64_t a1)
{
  [*(a1 + 32) setAirplaneModeSettingsLoaded:1];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void sub_1000F1F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F1F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSettingsSpecifiersForChanges:v3];
}

void sub_1000F276C(id a1, UIAlertAction *a2)
{
  v2 = [UIApp activeWatch];
  v3 = [v2 valueForProperty:NRDevicePropertyIsPaired];
  v4 = [v3 BOOLValue];

  v5 = [UIApp isActivated];
  v6 = pbb_bridge_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v2 && ((v4 | v5) & 1) != 0)
  {
    if (v7)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing", v10, 2u);
    }

    v11[0] = @"obliterate";
    v11[1] = @"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2";
    v12[0] = &__kCFBooleanTrue;
    v12[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    v9 = +[NRPairedDeviceRegistry sharedInstance];
    [v9 unpairWithDevice:v2 withOptions:v8 operationHasBegun:&stru_10026BAA0];
  }

  else
  {
    if (v7)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User Reset Buddy!", v10, 2u);
    }

    [UIApp resetSetupFlowAnimated:1 forEvent:42];
  }
}

void sub_1000F291C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing result: (%@)", &v4, 0xCu);
  }
}

void sub_1000F29C8(id a1, UIAlertAction *a2)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User Did Not Reset Buddy.", v3, 2u);
  }
}

void sub_1000F2C04(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:PBBridgeDidCompletePasscodeCreationNotification object:0];

  v3 = [UIApp activeWatch];
  v4 = [[NSUUID alloc] initWithUUIDString:@"CFD76F6A-B79A-475D-BCD7-7EB10AC33956"];
  v5 = [v3 supportsCapability:v4];

  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = 110;
    v13 = 2080;
    v14 = "[COSPasscodeCreateViewController passcodeCreationComplete]_block_invoke";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%d %s", v12, 0x12u);
  }

  v7 = [UIApp bridgeController];
  if ([v7 isTinkerPairing])
  {
  }

  else
  {
    v8 = +[MCProfileConnection sharedConnection];
    v9 = [v8 isPasscodeSet];

    if (!(v5 & 1 | ((v9 & 1) == 0)))
    {
      v11 = [*(a1 + 32) navigationItem];
      [v11 setBackBarButtonItem:0];

      v10 = [*(a1 + 32) delegate];
      [v10 buddyControllerDone:*(a1 + 32) nextControllerClass:objc_opt_class()];
      goto LABEL_8;
    }
  }

  v10 = [*(a1 + 32) delegate];
  [v10 buddyControllerDone:*(a1 + 32)];
LABEL_8:
}

void sub_1000F5168(uint64_t a1)
{
  v1 = +[NRDeviceDiscoveryController sharedInstance];
  v2 = [v1 devices];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v6 = NRDevicePropertyAdvertisedName;
    v7 = PBBridgeAdvertisingSizeKey;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [*(*(&v19 + 1) + 8 * v8) valueForProperty:v6];
      v10 = PBAdvertisingInfoFromPayload();
      v11 = [v10 objectForKeyedSubscript:v7];
      v12 = [v11 integerValue];

      if (v12 == 25 || v12 == 19)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000F5378;
        block[3] = &unk_100268430;
        objc_copyWeak(&v18, (a1 + 32));
        dispatch_async(&_dispatch_main_q, block);
        objc_destroyWeak(&v18);
      }

      if (v12 == 19 || v12 == 25)
      {
        break;
      }

      if (v4 == ++v8)
      {
        v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_1000F5378(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUsingAgaveReticuleMetrics:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateSubviews];
}

void sub_1000F5F24(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    [*(a1 + 32) eraseSettingsAndContent:a3];
  }

  else
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109378;
      v9[1] = 0;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "skipping erase for proceedToUnpair: %d error: %@", v9, 0x12u);
    }
  }
}

void sub_1000F6108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIApplication sharedApplication];
  [v4 setNetworkActivityIndicatorVisible:0];

  v5 = pbb_bridge_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Gizmo obliteration failed with error: %@", &v7, 0xCu);
    }

    BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
    [*(a1 + 32) setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [*(a1 + 40) reloadSpecifier:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Gizmo obliteration succeeded!", &v7, 2u);
    }
  }
}

void sub_1000F67E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F6800(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  if (v4 || !v3)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109378;
      v6[1] = v3;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to erase all cellular plans (wasSuccessful:%d): (%@)", v6, 0x12u);
    }
  }
}

Class sub_1000F69EC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD660)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000F6B30;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_10026BB48;
    v6 = 0;
    qword_1002BD660 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD660)
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
  result = objc_getClass("CTCellularPlanManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018A340();
  }

  qword_1002BD658 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000F6B30()
{
  result = _sl_dlopen();
  qword_1002BD660 = result;
  return result;
}

void sub_1000F71DC(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 16) setProxiedDevice:a2];
  v3 = [*(a1 + 32) delegate];
  [v3 buddyControllerReleaseHold:*(a1 + 32)];
}

void sub_1000F879C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F87BC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v3 = a2;
  [v3 setSecureTextEntry:1];
  [v3 setReturnKeyType:9];
  [v3 setAutocorrectionType:1];
  [v3 setAutocapitalizationType:0];
  [v3 setEnablesReturnKeyAutomatically:1];
  [v3 setKeyboardAppearance:1];
}

void sub_1000F8854(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) text];
  [v1 signInToAccountWithPassword:v2];
}

void sub_1000F8E10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000F8E2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v2 = [WeakRetained buttonTray];
    [v2 setAlpha:0.0];

    v3 = [v11 activityIndicator];
    [v3 startAnimating];

    v4 = [v11 activityIndicator];
    [v4 setAlpha:1.0];

    v5 = [objc_opt_class() appleIDServiceState];
    v6 = [v5 recoveringCredentials];

    v7 = [v11 headerView];
    v8 = v7;
    if (v6)
    {
      [v7 setDetailText:&stru_10026E598];
    }

    else
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"VERIFYING_APPLEID" value:&stru_10026E598 table:@"Localizable"];
      [v8 setDetailText:v10];
    }

    WeakRetained = v11;
  }
}

void sub_1000F9018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000F9034(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained buttonTray];
    [v2 setAlpha:1.0];

    v3 = [v5 activityIndicator];
    [v3 stopAnimating];

    v4 = [v5 activityIndicator];
    [v4 setAlpha:0.0];

    [v5 refreshViews];
    WeakRetained = v5;
  }
}

void sub_1000F9534(id a1, UIAlertAction *a2)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Not connected alert- user selected 'OK'", v3, 2u);
  }
}

void sub_1000F959C(id a1, UIAlertAction *a2)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Not connected alert- user selected 'TURN OFF'", v3, 2u);
  }

  [PSAirplaneModeSettingsDetail setEnabled:0];
}

void sub_1000FA024(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKeyedSubscript:kAAErrorDetailsActionButtonURLKey];
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109634;
    v5[1] = 424;
    v6 = 2080;
    v7 = "+[COSAppleIDLoginViewController showAlertForLoginFailureWithError:presentingViewController:]_block_invoke";
    v8 = 2112;
    v9 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%d %s: Opening URL: (%@)", v5, 0x1Cu);
  }

  v3 = UIApp;
  v4 = [NSURL URLWithString:v1];
  [v3 openURL:v4 withCompletionHandler:0];
}

void sub_1000FA148(id a1, AMSDialogResult *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = +[AMSURLRequestEncoder bagSubProfile];
    v7 = +[AMSURLRequestEncoder bagSubProfileVersion];
    v8 = [AMSBag bagForProfile:v6 profileVersion:v7];

    v9 = [[AMSHandleDialogResultTask alloc] initWithResult:v4 bag:v8];
    v10 = [v9 perform];
    [v10 resultWithCompletion:&stru_10026BC30];
  }

  else
  {
    v8 = pbb_accountsignin_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AMSUIAlertDialogTask error: %@", &v11, 0xCu);
    }
  }
}

void sub_1000FA2A4(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AMSHandleDialogResultTask handled: %{BOOL}d error: %@", v6, 0x12u);
  }
}

void sub_1000FAD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FAD78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained stopNetworkRequest];
    v3 = [v5 delegate];
    [v3 buddyControllerDone:*(a1 + 32)];

    v4 = [v5 delegate];
    [v4 checkInWithPairingMetricForSignInState];

    [v5 _successfullySignedIn];
    WeakRetained = v5;
  }
}

void sub_1000FB2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FB2F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained stopNetworkRequest];
    v3 = [v5 delegate];
    [v3 buddyControllerDone:*(a1 + 32)];

    v4 = [v5 delegate];
    [v4 checkInWithPairingMetricForSignInState];

    [v5 _successfullySignedIn];
    WeakRetained = v5;
  }
}

void sub_1000FD950(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1000FD9D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 appleIDSilentSignInControllerSignedAccountType:0 withSuccess:*(a1 + 40)];

    v4 = [v5 iCloudAuthController];
    [v4 setDelegate:0];

    [v5 setICloudAuthController:0];
    WeakRetained = v5;
  }
}

void sub_1000FDA64(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Silent combined sign in for iTunesStore (via iCloud) completed with success: (%d)", v5, 8u);
  }
}

void sub_1000FDB08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 appleIDSilentSignInControllerSignedAccountType:1 withSuccess:*(a1 + 40)];

    v4 = [v5 iMessageAuthController];
    [v4 setDelegate:0];

    [v5 setIMessageAuthController:0];
    WeakRetained = v5;
  }
}

void sub_1000FDB98(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Silent combined sign in for iTunesStore (via iMessage) completed with success: (%d)", v5, 8u);
  }
}

void sub_1000FDC3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 appleIDSilentSignInControllerSignedAccountType:2 withSuccess:*(a1 + 40)];

    v4 = [v5 faceTimeAuthController];
    [v4 setDelegate:0];

    [v5 setFaceTimeAuthController:0];
    WeakRetained = v5;
  }
}

void sub_1000FDCCC(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = pbb_accountsignin_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Silent combined sign in for iTunesStore (via FaceTime) completed with success: (%d)", v5, 8u);
  }
}

void sub_1000FE4F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [COSAppleIDAuthController signInEndResultForValue:a2 error:v5];
  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 134218498;
    v16 = v8;
    v17 = 1024;
    v18 = v6;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saved account (%p) to paired device with success: (%d), error: (%@)", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FE680;
    block[3] = &unk_10026BD60;
    v13 = *(a1 + 40);
    v14 = v6;
    v12 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1000FEDCC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 56), a2);
  v4 = a2;
  [*(a1 + 32) performProxiedAuthentication];
}

void sub_1000FF08C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 56), a2);
  v4 = a2;
  [*(a1 + 32) performProxiedAuthentication];
}

void sub_1000FF21C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained signInTimerFired];
}

id sub_1000FF37C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = NSUnderlyingErrorKey;
    v9 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSError errorWithDomain:@"com.apple.COSAppleIDAuthErrorDomain" code:a1 userInfo:v5];

  return v6;
}

void sub_1000FF824(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 134218498;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved IDMS account (%p) with success: (%d), error: (%@)", &v8, 0x1Cu);
  }
}

void sub_1000FFCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FFD08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [COSAppleIDAuthController signInEndResultForValue:a2 error:v5];
  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 134218498;
    v17 = v8;
    v18 = 1024;
    v19 = v6;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saved account (%p) to paired device with success: (%d), error: (%@)", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FFE8C;
  block[3] = &unk_100268380;
  objc_copyWeak(&v14, (a1 + 40));
  v15 = v6;
  v13 = v10;
  v11 = v10;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v14);
}

void sub_1000FFE8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained waitingForWatchSignInAfterInteractiveAuth])
    {
      [v4 setWaitingForWatchSignInAfterInteractiveAuth:0];
      if (*(a1 + 48))
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      [v4 setWatchSignInResult:v3];
      [v4 setWatchSignInErrorResult:*(a1 + 32)];
    }

    [v4 savedAccountToPairedDeviceWithSuccess:*(a1 + 48) error:*(a1 + 32)];
    WeakRetained = v4;
  }
}

void sub_100100484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001004B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v15 = [v5 count];
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "authenticationResults: (%lu objects), error: (%@)", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010061C;
  block[3] = &unk_1002684D0;
  objc_copyWeak(&v13, (a1 + 32));
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v13);
}

void sub_10010061C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained authenticatedWithResults:*(a1 + 32) error:*(a1 + 40)];
}

void sub_100100950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100100974(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100100A18;
  v2[3] = &unk_100268458;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);

  objc_destroyWeak(&v4);
}

void sub_100100A18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained saveAccountToPairedDeviceWithRawPassword:*(a1 + 32)];
}

void sub_100100C64(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved verified account locally with success: (%d), error: (%@)", v8, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_1001012EC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 134218498;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved IDMS account (%p) with success: %{BOOL}d, error: (%@)", &v8, 0x1Cu);
  }
}

void sub_100101B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100101B3C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = pbb_accountsignin_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10018A85C();
    }
  }
}

void sub_100101B94(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100101C98;
  v13[3] = &unk_10026BDF8;
  objc_copyWeak(v17, (a1 + 40));
  v18 = a2;
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 32);
  v17[1] = a3;
  v11 = v10;
  v12 = v9;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(v17);
}

void sub_100101C98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = pbb_accountsignin_log();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [NSNumber numberWithBool:*(a1 + 72)];
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v12 = 138412802;
      v13 = v5;
      v14 = 2114;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendTinkerAccountCredentialsWithContext:completion: (Success: %@ - Error: %{public}@ detailedError: %{public}@)", &v12, 0x20u);
    }

    [WeakRetained _resetTermsInformation];
    if ([COSAppleIDAuthController isTermsUpdateNeededError:*(a1 + 40)])
    {
      v8 = [*(a1 + 40) userInfo];
      v4 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v11 = [v4 userInfo];
        v10 = [v11 objectForKeyedSubscript:kAAAccountPersonIDKey];

        if (!v10)
        {
          [WeakRetained setSatelliteSignInStatus:*(a1 + 64)];
          [WeakRetained setSatelliteSignInDetailedError:*(a1 + 40)];
          [WeakRetained setSatelliteSignInErrorDescription:*(a1 + 32)];
          v10 = [WeakRetained satelliteSignInCompletion];
          v10[2](v10, *(a1 + 64), *(a1 + 32), *(a1 + 40));
          goto LABEL_12;
        }
      }

      [WeakRetained presentTermsWithCachedAuthResultsForDSID:v10];
LABEL_12:

      goto LABEL_13;
    }

    [WeakRetained setSatelliteSignInStatus:*(a1 + 64)];
    [WeakRetained setSatelliteSignInDetailedError:*(a1 + 40)];
    [WeakRetained setSatelliteSignInErrorDescription:*(a1 + 32)];
    v4 = [WeakRetained satelliteSignInCompletion];
    (*(v4 + 16))(v4, *(a1 + 64), *(a1 + 32), *(a1 + 40));
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10018A8E4();
  }

LABEL_13:
}

void sub_100102364(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = pbb_accountsignin_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 136315650;
    v19 = "[COSAppleIDAuthController repairGuardianAccount:]_block_invoke";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: success %@ (error: %@)", buf, 0x20u);
  }

  if (v5 || !a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(COSPrimaryAccountAuthenticationHelper);
    v9 = *(a1 + 32);
    v10 = *(v9 + 216);
    *(v9 + 216) = v8;

    v11 = *(a1 + 32);
    v12 = *(v11 + 216);
    WeakRetained = objc_loadWeakRetained((v11 + 48));
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"GUARDIAN_ACCOUNT_PASSWORD_PROMPT_MESSAGE" value:&stru_10026E598 table:@"Localizable-tinker"];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100102564;
    v16[3] = &unk_10026AF78;
    v17 = *(a1 + 40);
    [v12 authenticatePrimaryAccountWithController:WeakRetained withReason:v15 completion:v16];
  }
}

void sub_10010270C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001027D8;
  block[3] = &unk_100268638;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001027D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    objc_storeStrong((*(a1 + 40) + 136), *(a1 + 48));
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 88));
  [WeakRetained appleIDAuthController:*(a1 + 40) didSignInWithSuccess:v2 == 0 error:*(a1 + 32)];
}

void sub_100102D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100102D88(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCircleStateController:0];
    [v4 setAuthenticationResults:*(a1 + 32)];
    v5 = [UIApp setupController];
    [v5 setTinkerSignInId:*(a1 + 40)];

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [v8 error];
      (*(v6 + 16))(v6, v7);
    }
  }
}

void sub_100103C94(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100103FD4(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:v3];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Success: %@ Error %@", &v7, 0x16u);
  }
}

void sub_10010427C(uint64_t a1)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removed FollowUp for %@", &v4, 0xCu);
  }
}

void sub_100105164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100105188(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10018AA54(v8);
    }

    goto LABEL_9;
  }

  [WeakRetained setCurrentSession:v3];
  if ([v3 syncSessionType] == 2 && objc_msgSend(v3, "syncSessionState") == 1)
  {
    [v5 setCurrentState:2];
    v6 = [v5 _syncingDevice];
    [v5 setMigratingDevice:v6];

    [v5 updateMigrationState];
  }

  v7 = [v5 delegate];

  if (v7)
  {
    v8 = [v5 delegate];
    v9 = [v5 currentState];
    v10 = [v5 currentSession];
    [v10 sessionProgress];
    v12 = v11;
    v13 = [v5 migratingDevice];
    [v8 migrationProgressUpdate:v9 percentageComplete:v13 migratingDevice:v12];

LABEL_9:
  }
}

void sub_100105C24(uint64_t a1, void *a2)
{
  v2 = a2;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v2, NRMigrationDevicesCannotBeDiscoveredDarwinNotification, 0);
  if ([v2 discoveredWatch])
  {
    v4 = pbb_setupflow_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got error after a watch was discovered, ignoring", v7, 2u);
    }
  }

  else
  {
    [v2 setCurrentState:4];
    v4 = [v2 delegate];
    v5 = [v2 currentState];
    v6 = [v2 migratingDevice];
    [v4 migrationProgressUpdate:v5 percentageComplete:v6 migratingDevice:0.0];
  }
}

void sub_100105D28(uint64_t a1)
{
  v2 = +[NRMigrator sharedMigrator];
  v3 = *(a1 + 32);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100105DC0;
  v7 = &unk_1002684A8;
  v8 = v3;
  [v2 setMigrationConsented:1 forDevice:? withBlock:?];
}

void sub_100105DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_setupflow_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) pairingID];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Granted Migration Consent %@? (error: %@)", &v6, 0x16u);
  }
}

void sub_1001063A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *buf = 138413058;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Archived: %@ current: %@ from: %@ isActive: %@", buf, 0x2Au);
  }

  if ([*(a1 + 32) BOOLValue] && (objc_msgSend(*(a1 + 40), "integerValue") == 2 || objc_msgSend(*(a1 + 40), "integerValue") == 3) && objc_msgSend(*(a1 + 48), "integerValue") == 4)
  {
    [*(a1 + 64) setDiscoveredWatch:0];
    if ([WeakRetained enableReportFailure])
    {
      [WeakRetained setEnableReportFailure:0];
      [WeakRetained setCurrentState:4];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(a1 + 64), NRMigrationDevicesCannotBeDiscoveredDarwinNotification, 0);
    }
  }

  v9 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100106570;
  block[3] = &unk_1002682F0;
  block[4] = WeakRetained;
  dispatch_after(v9, &_dispatch_main_q, block);
}

id sub_100106570(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delayed UI update", v10, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  v4 = [*(a1 + 32) currentState];
  v5 = [*(a1 + 32) currentSession];
  [v5 sessionProgress];
  v7 = v6;
  v8 = [*(a1 + 32) migratingDevice];
  [v3 migrationProgressUpdate:v4 percentageComplete:v8 migratingDevice:v7];

  return [*(a1 + 32) _configureCurrentState];
}

uint64_t sub_100106D18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [*(a1 + 40) objectForKey:v4];

  if (v5 | v6)
  {
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_100106DA4(uint64_t a1, CFStringRef key)
{
  v4 = CFPreferencesCopyAppValue(key, kCFPreferencesAnyApplication);
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) setObject:v4 forKey:key];

    CFRelease(v5);
  }
}

void sub_100107508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010752C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleOnlineTermsAndConditionsResponse:v8 forRequest:v9 error:v7];
}

void sub_100107784(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained delegate];
  v4 = [v3 nextControllerAfterHold];

  if (v4 == WeakRetained)
  {
    if (*(a1 + 32) || ([*(a1 + 40) httpResponse], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "statusCode"), v6, v7 != 200))
    {
      v17 = pbb_setupflow_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10018AA98((a1 + 32), a1, v17);
      }

      [WeakRetained retrieveOfflineTerms];
    }

    else
    {
      v8 = [WeakRetained termsEventWithDocumentationID:@"COSTermsConditionsController.onlineTerms" data:*(a1 + 48)];
      [WeakRetained setOnlineTerms:v8];

      v9 = [UIApp setupController];
      if ([v9 expressMode])
      {
        v10 = objc_alloc_init(NRTermsAcknowledgementRegistry);
        v11 = +[UIApplication sharedApplication];
        v12 = [v11 activeWatch];

        v13 = [v12 valueForProperty:NRDevicePropertyPairingID];
        v14 = pbb_setupflow_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [WeakRetained onlineTerms];
          *buf = 138412546;
          *v21 = WeakRetained;
          *&v21[8] = 2112;
          *&v21[10] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "checkForAcknowledgement for %@ - %@", buf, 0x16u);
        }

        v16 = [WeakRetained onlineTerms];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100107AB8;
        v18[3] = &unk_100268858;
        v18[4] = WeakRetained;
        v19 = *(a1 + 56);
        [v10 checkForAcknowledgement:v16 forDeviceID:v13 withCompletion:v18];
      }

      else
      {
        [WeakRetained _showTermsFromRequest:*(a1 + 56)];
        [WeakRetained endPerformancePhases];
      }
    }
  }

  else
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v21 = 224;
      *&v21[4] = 2080;
      *&v21[6] = "[COSTermsConditionsController handleOnlineTermsAndConditionsResponse:forRequest:error:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%d %s: Ignoring callback because no longer top controller", buf, 0x12u);
    }
  }
}

void sub_100107AB8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Terms have been agreed to: %{BOOL}d - Error: %@", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100107BF0;
  block[3] = &unk_10026B130;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v10 = a2;
  v9 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100107BF0(uint64_t a1)
{
  [*(a1 + 32) endPerformancePhases];
  v2 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v4 = [v2 delegate];
    [v4 buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 40);

    [v2 _showTermsFromRequest:v3];
  }
}

void sub_1001084D8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100108550;
  block[3] = &unk_1002682F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100108550(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained buddyControllerDone:*(a1 + 32)];
}

void sub_1001096D8(id a1, UIAlertAction *a2)
{
  v2 = +[UIApplication sharedApplication];
  [v2 disagreeToTerms];
}

void sub_10010ACA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010ACD0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIcon:v5];
  }
}

void sub_10010D298(id a1, UIAlertAction *a2)
{
  v2 = pbb_activation_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User Reset Buddy!", v3, 2u);
  }

  [UIApp resetSetupFlowAnimated:1 forEvent:42];
}

void sub_10010D318(id a1, UIAlertAction *a2)
{
  v2 = pbb_activation_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User Did Not Reset Buddy.", v3, 2u);
  }
}

void sub_10010D694(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkActivationState];
}

void sub_10010EAF8(id a1)
{
  v1 = [NSSet setWithObjects:@"watch4, 3", @"watch4, 4", @"watch5, 3", @"watch5, 4", @"watch5, 11", @"watch5, 12", @"watch6, 3", @"watch6, 4", @"watch6, 8", @"watch6, 9", @"watch6, 12", @"watch6, 13", @"watch6, 16", @"watch6, 17", @"watch6, 18", @"watch7, 3", @"watch7, 4", @"watch7, 5", @"watch7, 10", @"watch7, 11", @"watch7, 12", @"watch7, 15", @"watch7, 16", @"watch7, 19", @"watch7, 20", 0];
  v2 = qword_1002BD668;
  qword_1002BD668 = v1;
}

void sub_10010ECB4(id a1)
{
  v1 = [NSSet setWithObjects:@"watch1, 1", @"watch1, 2", @"watch2, 3", @"watch2, 4", @"watch2, 6", @"watch2, 7", @"watch3, 1", @"watch3, 2", @"watch3, 3", @"watch3, 4", 0];
  v2 = qword_1002BD678;
  qword_1002BD678 = v1;
}

int64_t sub_10010F3FC(id a1, NRDevice *a2, NRDevice *a3)
{
  v4 = NRDevicePropertyLastActiveDate;
  v5 = a3;
  v6 = [(NRDevice *)a2 valueForProperty:v4];
  v7 = [(NRDevice *)v5 valueForProperty:v4];

  v8 = [v6 compare:v7];
  return v8;
}

void sub_10010FB5C(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010FC10;
  block[3] = &unk_100268380;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v6);
}

void sub_10010FC10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeSpinner];

  LOBYTE(WeakRetained) = *(a1 + 48);
  v10 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [v10 completionBlock];

    if (v3)
    {
      v4 = pbb_bridge_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = @"NO";
        if (*(a1 + 48))
        {
          v6 = @"YES";
        }

        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Switched to device (%@) : %@", buf, 0x16u);
      }

      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = [v7 completionBlock];
      v8[2](v8, *(a1 + 48));
    }
  }

  else
  {
    v9 = [*(a1 + 32) valueForProperty:NRDevicePropertyName];
    [v10 presentConnectFailedAlert:v9];
  }
}

void sub_100110110(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];

  if (v2)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing alert for connection failed and calling completion block for %@", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) completionBlock];
    v5[2](v5, 0);
  }
}

void sub_1001106A4(id a1)
{
  v1 = pbb_activation_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Pushed Non-Root Controller.", v2, 2u);
  }
}

void sub_10011107C(uint64_t a1)
{
  v2 = [UIApp bridgeController];
  [v2 beganWaitingForUserResponseToActivationEvent];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = [WeakRetained navigationController];
  v5 = [v4 topViewController];
  v6 = [v5 view];
  [v6 setUserInteractionEnabled:1];

  v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v8 = [v7 navigationController];
  v9 = [v8 navigationBar];
  [v9 setUserInteractionEnabled:1];

  v10 = *(a1 + 32);
  if ((*(v10 + 11) & 1) == 0)
  {
    v11 = objc_loadWeakRetained((v10 + 16));
    [v11 blockGoingBackFromCurrentController];
  }
}

void sub_100111964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(COSFindMyController);
  v5 = [*(a1 + 32) valueForProperty:NRDevicePropertyUDID];
  v6 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Remove AL";
    v8 = *(a1 + 32);
    if (*(a1 + 72))
    {
      v7 = @"Mark as Missing";
    }

    *buf = 138412802;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    v36 = 2114;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Confirming %@ for Device: (%@) with UDID: (%{public}@)", buf, 0x20u);
  }

  v9 = objc_alloc_init(COSFindMyControllerContext);
  [(COSFindMyControllerContext *)v9 setDevice:*(a1 + 32)];
  [(COSFindMyControllerContext *)v9 setMember:v3];

  v10 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(COSFindMyControllerContext *)v9 member];
    *buf = 138543362;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "current device member: %{public}@ ", buf, 0xCu);
  }

  v12 = [COSFindMyController usernameForContext:v9];
  if (*(a1 + 72) == 1)
  {
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"MARK_AS_MISSING_%@" value:&stru_10026E598 table:@"Pairing"];
    v15 = [NSString stringWithFormat:v14, v12];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"CONFIRM_MARK_AS_MISSING" value:&stru_10026E598 table:@"Pairing"];
    v18 = *(a1 + 40);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100111D88;
    v30[3] = &unk_10026C158;
    v19 = v31;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v31[0] = v20;
    v31[1] = v21;
    [(COSFindMyController *)v4 markAsMissingForContext:v9 messageString:v15 buttonTitle:v17 presentingViewController:v18 completion:v30];
  }

  else
  {
    if (BPSDeviceHasCapabilityForString())
    {
      v22 = @"ERASE_OR_REMOVE_ACTIVATION_LOCK_FMW_%@";
    }

    else
    {
      v22 = @"ERASE_OR_REMOVE_ACTIVATION_LOCK_%@";
    }

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:v22 value:&stru_10026E598 table:@"Pairing"];
    v15 = [NSString stringWithFormat:v24, v12];

    v16 = [*(a1 + 48) activationLockRemovalTitle];
    v25 = *(a1 + 40);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100111E2C;
    v28[3] = &unk_10026C158;
    v19 = v29;
    v26 = *(a1 + 56);
    v27 = *(a1 + 64);
    v29[0] = v26;
    v29[1] = v27;
    [(COSFindMyController *)v4 disableActivationLockForContext:v9 messageString:v15 buttonTitle:v16 presentingViewController:v25 completion:v28];
  }
}

void sub_100111D88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10018ACBC();
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

void sub_100111E2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10018AD30();
  }

  if (![COSFindMyController canProceedToUnpairForError:v3])
  {
    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
LABEL_5:
    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

void sub_100111EE0(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (sub_10002D18C(*(a1 + 32)) && ((v2 & 1) != 0 || +[COSFindMyController isDeviceLocatorEnabled]))
  {
    if (*(a1 + 80) == 1)
    {
      v3 = +[CDPAccount sharedInstance];
      v4 = [v3 primaryAppleAccount];

      if (v4)
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1001120E0;
        v11[3] = &unk_10026C1F8;
        v15 = *(a1 + 72);
        v5 = *(a1 + 32);
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v10 = *(a1 + 56);
        v6 = v10;
        v14 = v10;
        [BPSAppleIDDevices fetchFamilyMemberForDevice:v5 withCompletion:v11];
      }

      else
      {
        v9 = pbb_manualunpairing_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10018ADA4();
        }

        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v8 = *(*(a1 + 56) + 16);

      v8();
    }
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void sub_1001120E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001121F4;
  block[3] = &unk_10026C1D0;
  v7 = *(a1 + 64);
  v14 = v6;
  v19 = v7;
  v15 = *(a1 + 32);
  v8 = *(a1 + 40);
  v16 = v5;
  v17 = v8;
  v12 = *(a1 + 48);
  v9 = v12;
  v18 = v12;
  v10 = v5;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001121F4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ([BPSAppleIDDevices isNetworkError:?])
    {
      v2 = objc_opt_class();
      v3 = [*(a1 + 40) failureMessage];
      v4 = [*(a1 + 40) presentingViewController];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1001123C0;
      v10[3] = &unk_10026C1A8;
      v5 = *(a1 + 56);
      v6 = *(a1 + 72);
      v12 = v5;
      v13 = v6;
      v11 = *(a1 + 32);
      [v2 presentUnpairOrResetErrorMessage:v3 fromController:v4 withCompletion:v10];
    }

    else
    {
      v8 = *(*(a1 + 56) + 16);

      v8();
    }
  }

  else if (*(a1 + 48))
  {
    v7 = *(*(a1 + 64) + 16);

    v7();
  }

  else
  {
    v9 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10018ADE0();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1001123F4(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001125AC;
  v12[3] = &unk_100269120;
  v13 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100112628;
  v9[3] = &unk_10026C248;
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v10 = v2;
  v11 = v3;
  v4 = [COSTheftAndLossModalBuilderHelper createTnLDisclaimerViewControllerWithConfirmActionHandler:v12 cancelActionHandler:v9];
  v5 = pbb_manualunpairing_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Present completeTheftAndLossPresentation Flow", v8, 2u);
    }

    v7 = [*(a1 + 32) presentingViewController];
    [v7 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Nil completeTheftAndLossPresentation ~ Skipping...", v8, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1001125AC(uint64_t a1)
{
  v2 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "completeTheftAndLossPresentation Confirmed", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100112628(uint64_t a1)
{
  v2 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "completeTheftAndLossPresentation Cancelled", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1001126B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 valueForProperty:NRDevicePropertySerialNumber];
    v4 = [v3 length];
    v5 = pbb_manualunpairing_log();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Issue +getCachedCoverageDetailsForSerialNumber: %@", buf, 0xCu);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100112884;
      v8[3] = &unk_10026C298;
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      [NDOACCoverageDetailsProvider getCachedCoverageDetailsForSerialNumber:v3 requester:2 completion:v8];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10018AE1C();
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v7 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10018AE58();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100112884(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100112970;
  v9[3] = &unk_10026A338;
  v10 = a3;
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v7 = v5;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, v9);
}

uint64_t sub_100112970(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = pbb_manualunpairing_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10018AE94();
    }

    v5 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10018AF0C();
    }

    v6 = 48;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDOACCoverageDetails: %@", &v10, 0xCu);
    }

    v8 = [*(a1 + 40) hasTheftAndLoss];
    v6 = 48;
    if (v8)
    {
      v6 = 56;
    }
  }

  return (*(*(a1 + v6) + 16))();
}

void sub_100112AA4(uint64_t a1)
{
  v2 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100112B58;
  v6[3] = &unk_10026C2C0;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v5;
  [v2 presentApplePayLocallyStoredValueOfflineWarningIfNeededForContext:v3 completionHandler:v6];
}

uint64_t sub_100112B58(void *a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a1[4] + 16))();
  }

  else
  {
    return (*(a1[5] + 16))(a1[5], a2, *(*(a1[6] + 8) + 24), 0);
  }
}

uint64_t sub_100112B8C(void *a1, int a2, int a3, int a4)
{
  v8 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = a2;
    v11 = 1024;
    v12 = a3;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "user choice: cancelled: %d, hasPlan: %d, preserve: %d", v10, 0x14u);
  }

  if (a2)
  {
    return (*(a1[4] + 16))();
  }

  *(*(a1[6] + 8) + 24) = a3 & a4;
  return (*(a1[5] + 16))();
}

uint64_t sub_100113160(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10018AF48();
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_1001131D4(void *a1)
{
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received plan query response before timeout.", v7, 2u);
  }

  if (*(*(a1[6] + 8) + 40))
  {
    v5 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10018AF84();
    }

    return (*(a1[4] + 16))();
  }

  else
  {
    [*(*(a1[7] + 8) + 40) count];
    return (*(a1[4] + 16))();
  }
}

void sub_1001132F0(uint64_t a1)
{
  dispatch_resume(*(*(*(a1 + 40) + 8) + 40));
  v2 = [*(a1 + 32) valueForProperty:NRDevicePropertyCSN];
  v3 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CSN: %{public}@", &buf, 0xCu);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = qword_1002BD688;
  v13 = qword_1002BD688;
  if (!qword_1002BD688)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v15 = sub_10011442C;
    v16 = &unk_1002680D0;
    v17 = &v10;
    sub_10011442C(&buf);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [v4 sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001134F0;
  v7[3] = &unk_10026C388;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  [v6 remotePlanItemsWithUpdateFetch:0 withCSN:v2 completion:v7];
}

void sub_1001134D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001134F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    *buf = 138543618;
    v31 = v6;
    v32 = 2114;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received plan query response with error %{public}@ and %{public}@ plans", buf, 0x16u);
  }

  if ([v5 count])
  {
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          if ([v15 shouldDisplay])
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v5 = [v9 copy];
    v16 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
      *buf = 138543362;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Filtered plan query response with %{public}@ plans", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001137E8;
  block[3] = &unk_10026C360;
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  v21 = v5;
  v22 = v6;
  v18 = v6;
  v19 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001137E8(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
    v2 = *(*(*(a1 + 48) + 8) + 40);

    dispatch_source_cancel(v2);
  }
}

void sub_100113B60(id *a1)
{
  v2 = objc_alloc_init(UIAlertController);
  v3 = [a1[4] valueForProperty:NRDevicePropertyName];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"AKASHI_UNPAIR_AMBIGUOUS_PLAN_MESSAGE" value:&stru_10026E598 table:@"Pairing"];
  v6 = [NSString stringWithFormat:v5, v3, v3];
  [v2 setMessage:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"AKASHI_UNPAIR_AMBIGUOUS_PLAN_CONFIRMATION_BUTTON" value:&stru_10026E598 table:@"Pairing"];
  v9 = [NSString stringWithFormat:v8, v3];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100113E04;
  v16[3] = &unk_10026A380;
  v17 = a1[6];
  v10 = [UIAlertAction actionWithTitle:v9 style:2 handler:v16];
  [v2 addAction:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"AKASHI_UNPAIR_AMBIGUOUS_PLAN_CANCEL_BUTTON" value:&stru_10026E598 table:@"Pairing"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100113E20;
  v14[3] = &unk_10026A380;
  v15 = a1[6];
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v14];
  [v2 addAction:v13];

  [a1[5] presentViewController:v2 animated:1 completion:0];
}

void sub_100113E3C(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else if (a2)
  {
    v5 = objc_alloc_init(UIAlertController);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"AKASHI_UNPAIR_PLAN_EXPLANATION" value:&stru_10026E598 table:@"Pairing"];
    [v5 setMessage:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"AKASHI_UNPAIR_KEEP_CONFIRMATION_BUTTON" value:&stru_10026E598 table:@"Pairing"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001141B0;
    v22[3] = &unk_10026A380;
    v23 = *(a1 + 48);
    v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:v22];
    [v5 addAction:v10];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"AKASHI_UNPAIR_DELETE_CONFIRMATION_BUTTON" value:&stru_10026E598 table:@"Pairing"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001141CC;
    v20[3] = &unk_10026A380;
    v21 = *(a1 + 48);
    v13 = [UIAlertAction actionWithTitle:v12 style:2 handler:v20];
    [v5 addAction:v13];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"AKASHI_UNPAIR_CANCEL_UNPAIR" value:&stru_10026E598 table:@"Pairing"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001141E8;
    v18[3] = &unk_10026A380;
    v19 = *(a1 + 48);
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v18];
    [v5 addAction:v16];

    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v17 = *(*(a1 + 48) + 16);

    v17();
  }
}

void sub_1001142E8(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setMessage:*(a1 + 32)];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"ERASE_OR_UNPAIR_FAILURE_BUTTON_LABEL" value:&stru_10026E598 table:@"Pairing"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011441C;
  v6[3] = &unk_10026A380;
  v7 = *(a1 + 48);
  v5 = [UIAlertAction actionWithTitle:v4 style:1 handler:v6];
  [v2 addAction:v5];

  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

Class sub_10011442C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002BD690)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100114570;
    v4[4] = &unk_100268108;
    v4[5] = v4;
    v5 = off_10026C3F8;
    v6 = 0;
    qword_1002BD690 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002BD690)
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
  result = objc_getClass("CTCellularPlanManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10018A340();
  }

  qword_1002BD688 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100114570()
{
  result = _sl_dlopen();
  qword_1002BD690 = result;
  return result;
}

void sub_1001149C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100114A5C;
  v5[3] = &unk_100268358;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_100114A5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) aboutDataSource];
  [v2 setDeviceUser:v1];
}

void sub_100114AAC(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100114B28;
  v2[3] = &unk_1002693C0;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_100114B28(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) aboutDataSource];
  [v2 setAllowsMarkAsMissing:v1];
}

void sub_100115128(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tinker iForgot flow- authResults=%@ error=%@", &v7, 0x16u);
  }
}

void sub_1001155B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001155E8(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011569C;
  block[3] = &unk_100268380;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v6);
}

void sub_10011569C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pbb_manualunpairing_log();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unpair Buttons Disabled", buf, 2u);
    }

    v5 = +[UIDevice currentDevice];
    [v5 setOrientation:1];

    v6 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained device];
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unpairing from device: %@", buf, 0xCu);
    }

    v15 = @"obliterate";
    v16 = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v4 = [v8 mutableCopy];

    v9 = [NSNumber numberWithBool:*(a1 + 48)];
    [v4 setObject:v9 forKeyedSubscript:@"BDE85C67-0FDD-4A95-A9B9-3CB5DD0C06A2"];

    v10 = +[NRPairedDeviceRegistry sharedInstance];
    v11 = [WeakRetained device];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10011593C;
    v12[3] = &unk_10026C458;
    objc_copyWeak(&v14, (a1 + 40));
    v13 = *(a1 + 32);
    [v10 unpairWithDevice:v11 withOptions:v4 operationHasBegun:v12];

    objc_destroyWeak(&v14);
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10018B004(v4);
  }
}

void sub_10011593C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    *buf = 67109634;
    v12 = 230;
    v13 = 2080;
    v14 = "[COSPairingController confirmedUnpairAndMarkAsMissing:]_block_invoke";
    v15 = 2048;
    v16 = [v5 status];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%d %s - NR Status: %lu", buf, 0x1Cu);
  }

  v6 = pbb_manualunpairing_log();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10018B048(v3, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unpair succeeded!", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100115B14;
  v8[3] = &unk_100268458;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v10);
}

void sub_100115B14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained aboutDataSource];
  if ([v3 migrationDevice])
  {
  }

  else
  {
    v4 = [*(a1 + 32) BOOLValue];

    if (v4)
    {
      [UIApp successfullyBeganUnpairingWatch];
      goto LABEL_8;
    }
  }

  v5 = pbb_manualunpairing_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Migration device successfully removed", v6, 2u);
  }

LABEL_8:
}

void sub_100115BDC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v6;
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "skipping unpair for error: %@ proceedToUnpair : %d", buf, 0x12u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100115D20;
    block[3] = &unk_1002682F0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100115D20(uint64_t a1)
{
  [*(a1 + 32) _stopSpinnerInActiveSpecifier];
  v2 = [*(a1 + 32) view];
  [v2 setUserInteractionEnabled:1];
}

void sub_100115EE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _stopSpinnerInActiveSpecifier];
    v3 = [v2 navigationController];
    v4 = [v3 popViewControllerAnimated:1];
  }

  else
  {
    v3 = pbb_manualunpairing_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10018B0C0(v3);
    }
  }
}

void sub_100117518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100117530(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100117CD8(id a1)
{
  v1 = objc_alloc_init(NSMutableParagraphStyle);
  [v1 setLineBreakMode:4];
  [v1 setAlignment:4];
  v5[0] = NSFontAttributeName;
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v5[1] = NSParagraphStyleAttributeName;
  v6[0] = v2;
  v6[1] = v1;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = qword_1002BD698;
  qword_1002BD698 = v3;
}

void sub_1001195F8(id a1)
{
  v1 = objc_alloc_init(COSBeamBridgeUserStudyController);
  v2 = qword_1002BD6A8;
  qword_1002BD6A8 = v1;
}

void sub_1001199E8(uint64_t a1)
{
  v2 = pbb_accountsignin_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10018B15C(v2);
  }

  v3 = [*(a1 + 32) localizedDescription];
  if (*(a1 + 32) && PBIsInternalInstall())
  {
    v4 = [*(a1 + 32) code];
    v5 = [*(a1 + 32) localizedDescription];
    v6 = [NSString stringWithFormat:@"Error %li: %@", v4, v5];

    v3 = v6;
  }

  v7 = [UIApp setupController];
  v8 = [v7 navigationController];

  v9 = *(a1 + 40);
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"GUARDIAN_ACCOUNT_INIT_FAILED" value:&stru_10026E598 table:@"Localizable-tinker"];
  [v9 failPrecheckWithTitle:v11 body:v3 withPresentingController:v8];
}

void sub_100119CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100119D14(id *a1, void *a2)
{
  v3 = a2;
  v4 = [UIApp setupController];
  v5 = [v4 navigationController];

  v6 = [v5 topViewController];
  [a1[4] setPresentingController:v6];

  [a1[4] setProxiedDevice:v3];
  v7 = a1[4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100119E54;
  v8[3] = &unk_10026C558;
  objc_copyWeak(&v11, a1 + 6);
  v9 = a1[4];
  v10 = a1[5];
  [v7 repairGuardianAccount:v8];

  objc_destroyWeak(&v11);
}

void sub_100119E54(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [FACircleStateController alloc];
      v9 = [*(a1 + 32) presentingController];
      v10 = [v8 initWithPresenter:v9];
      [v7 setCircleStateController:v10];

      v11 = [v7 circleStateController];
      v12 = objc_opt_new();
      [v11 setCustomRUIStyle:v12];

      v13 = [v7 circleStateController];
      v14 = *(a1 + 40);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100119FD0;
      v15[3] = &unk_10026C530;
      objc_copyWeak(&v16, (a1 + 48));
      [v13 performWithContext:v14 completion:v15];

      objc_destroyWeak(&v16);
    }

    else
    {
      [WeakRetained handleRepairFailureWithError:v5];
    }
  }
}

void sub_100119FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 error];
    if (v5)
    {
    }

    else if ([v3 loadSuccess])
    {
      v6 = pbb_accountsignin_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FamilyCircle pre-check success", v8, 2u);
      }

      [WeakRetained _fetchFamilyCircle];
      goto LABEL_9;
    }

    v7 = [v3 error];
    [WeakRetained handleRepairFailureWithError:v7];

LABEL_9:
    [WeakRetained setCircleStateController:0];
  }
}

void sub_10011A220(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 buddyControllerDone:*(a1 + 32) nextControllerClass:objc_opt_class()];
}

void sub_10011A28C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 localizedDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest complete, error: %@", &buf, 0xCu);
  }

  v9 = [UIApp setupController];
  [v9 setFamilyCircle:v5];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = sub_100008C8C;
  v44 = sub_100009D38;
  v45 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100008C8C;
  v35 = sub_100009D38;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v10 = [v5 members];
  v11 = [v10 count];

  v30 = v11;
  v12 = [v5 members];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10011A770;
  v26[3] = &unk_10026C5A8;
  v26[4] = &buf;
  v26[5] = &v31;
  v26[6] = &v27;
  [v12 enumerateObjectsUsingBlock:v26];

  if (*(*(&buf + 1) + 40) && v28[3])
  {
    v13 = pbb_accountsignin_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found organizer and family members", v37, 2u);
    }

    v14 = [UIApp setupController];
    [v14 setOrganizerFamilyMember:*(*(&buf + 1) + 40)];

    v15 = [UIApp setupController];
    [v15 setPairingParentFamilyMember:v32[5]];

    v16 = [[FAProfilePictureStore alloc] initWithFamilyCircle:v5];
    v17 = [UIApp setupController];
    [v17 setProfilePictureStore:v16];

    v18 = [UIApp setupController];
    v19 = [v18 profilePictureStore];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10011A828;
    v25[3] = &unk_10026BE48;
    v25[4] = *(a1 + 32);
    [v19 fetchProfileImagesWithCompletion:v25];
  }

  else
  {
    v20 = pbb_accountsignin_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(&buf + 1) + 40))
      {
        v21 = @"found";
      }

      else
      {
        v21 = @"not found";
      }

      v22 = [v5 members];
      v23 = [v22 count];
      *v37 = 138412546;
      v38 = v21;
      v39 = 2048;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Skipping family member selection. Organizer: %@, family members: %lu", v37, 0x16u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011A9AC;
    block[3] = &unk_1002682F0;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&buf, 8);
}

void sub_10011A724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10011A770(void *a1, void *a2)
{
  v5 = a2;
  v4 = [v5 isOrganizer];
  if (v4)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
  }

  if ([v5 isMe] && objc_msgSend(v5, "isParent"))
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  --*(*(a1[6] + 8) + 24);
LABEL_8:
}

void sub_10011A828(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = pbb_accountsignin_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error fetching profile images: %@", buf, 0xCu);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011A940;
  block[3] = &unk_1002682F0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10011A940(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 buddyControllerDone:*(a1 + 32) nextControllerClass:objc_opt_class()];
}

void sub_10011A9AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained buddyControllerReleaseHoldAndSkip:*(a1 + 32)];
}

uint64_t sub_10011BE18(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(COSRegistryBecameActiveDispatcher) NR is ready. Firing inline!", v4, 2u);
  }

  return (*(*(*(a1 + 32) + 16) + 16))();
}

uint64_t sub_10011BE9C(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(COSRegistryBecameActiveDispatcher) NR Timed Out!", v4, 2u);
  }

  result = *(*(a1 + 32) + 16);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_10011BF24(id a1)
{
  v1 = pbb_bridge_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "(COSRegistryBecameActiveDispatcher) Cancel NR Timer!", v2, 2u);
  }
}

id sub_10011CFD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  else
  {
    v5 = pbb_accountsignin_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[COSTinkerAppleIDAuthenticationController authenticateWithContext:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s calling passed auth", buf, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8.receiver = *(a1 + 40);
    v8.super_class = COSTinkerAppleIDAuthenticationController;
    return objc_msgSendSuper2(&v8, "authenticateWithContext:completion:", v6, v7);
  }
}

void sub_10011D0F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = pbb_accountsignin_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[COSTinkerAppleIDAuthenticationController authenticateWithContext:completion:]_block_invoke";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s authenticationResults: %@ errr: %@", &v8, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

id sub_10011D3E4(uint64_t a1)
{
  [*(a1 + 32) _recheckInstallStateForAllBundleRows];
  [*(a1 + 32) _buildSystemAppSpecifierDicts];
  v2 = *(a1 + 32);

  return [v2 _notifyThatFullSpecifierDictListIsLoaded];
}

void sub_10011D990(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 removeSystemAppSpecifiers:*(a1 + 40)];
}

void sub_10011DAA0(uint64_t a1)
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([*(a1 + 40) _shouldReloadChangedRow:v9 installed:*(a1 + 48) activeDevice:{v2, v12}])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = *(a1 + 48);
    [*(a1 + 40) _buildSystemAppSpecifierDicts];
    v11 = *(a1 + 40);
    if (v10 == 1)
    {
      [v11 _notifyThatFullSpecifierDictListIsLoaded];
    }

    else
    {
      [v11 _notifyThatSpecifiersShouldBeRemoved:v3];
    }
  }
}

void sub_10011EEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011EED8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011EFB0;
  block[3] = &unk_10026C640;
  objc_copyWeak(&v11, (a1 + 48));
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v12 = *(a1 + 56);
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
}

void sub_10011EFB0(uint64_t a1)
{
  v2 = [NSMutableArray arrayWithArray:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setCloudDescriptors:v2];

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 cloudDescriptors];
  if (![v5 count])
  {

    goto LABEL_7;
  }

  v6 = objc_loadWeakRetained((a1 + 56));
  v7 = [v6 launchedForTerms];

  if (!v7)
  {
LABEL_7:
    v17 = [UIApp bridgeController];
    [v17 setShouldSuppressTransportReachabilityTimeout:1];

    v18 = [UIApp setupController];
    v36 = [v18 pairingReportManager];

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v36 checkInWithController:v20 action:0];

    v21 = [NSNumber numberWithBool:*(a1 + 64)];
    [v36 addPairingTimeEventToPairingReportPlist:61 withValue:v21 withError:0];

    v22 = [[UINavigationController alloc] initWithRootViewController:*(a1 + 48)];
    v23 = objc_loadWeakRetained((a1 + 56));
    [v23 setModalController:v22];

    v24 = objc_loadWeakRetained((a1 + 56));
    v25 = [v24 modalController];
    [v25 setModalPresentationStyle:0];

    v26 = objc_loadWeakRetained((a1 + 56));
    v27 = [v26 modalController];
    v28 = [v27 view];
    v29 = +[UIColor clearColor];
    [v28 setBackgroundColor:v29];

    v30 = *(a1 + 40);
    v31 = objc_loadWeakRetained((a1 + 56));
    v32 = [v31 modalController];
    [v30 presentViewController:v32 animated:*(a1 + 65) completion:0];

    v33 = objc_loadWeakRetained((a1 + 56));
    v34 = [v33 modalController];
    v35 = [v34 navigationBar];
    BPSApplyStyleToNavBar();

    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  v9 = objc_loadWeakRetained((a1 + 56));
  [v9 setTermsDisplayController:v8];

  v10 = objc_loadWeakRetained((a1 + 56));
  v11 = [v10 cloudDescriptors];
  v36 = [v11 lastObject];

  v12 = objc_loadWeakRetained((a1 + 56));
  v13 = [v12 cloudDescriptors];
  [v13 removeLastObject];

  v14 = objc_loadWeakRetained((a1 + 56));
  [v14 setUpdate:v36];

  v15 = objc_loadWeakRetained((a1 + 56));
  LODWORD(v13) = [v15 launchedForTerms];

  if (v13)
  {
    v16 = objc_loadWeakRetained((a1 + 56));
    [v16 setShowingTermsRequestedByWatch:1];
  }

  [*(a1 + 48) presentTermsRequiringPasscode:0 ifNecessaryWithAcceptanceAction:"downloadTermsAccepted" withDescriptor:v36];
LABEL_8:
}

void sub_10011F670(id a1, NSError *a2)
{
  v2 = a2;
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User Reset Buddy! - Unpairing result: (%@)", &v4, 0xCu);
  }
}

void sub_10011FB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10011FB78(uint64_t a1)
{
  [*(a1 + 32) reportRequiredUpdateAbort];
  v2 = *(a1 + 32);

  return [v2 unpairDevice];
}

void sub_10011FBB4(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User Did Not Reset Buddy.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained subState] == 2)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 update];

    if (!v5)
    {
      [*(a1 + 32) scanForUpdatesInBackgound:0];
    }
  }

  else
  {
  }
}

void sub_10011FE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10011FE6C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 humanReadableUpdateName];
    if (!sub_100009A74())
    {
      goto LABEL_15;
    }

    v7 = [v5 productBuildVersion];
    goto LABEL_14;
  }

  v8 = [v3 valueForProperty:NRDevicePropertyMarketingVersion];
  if (!v8)
  {
    v8 = [v3 valueForProperty:NRDevicePropertySystemVersion];
  }

  v9 = [v3 valueForProperty:NRDevicePropertySystemName];
  v10 = v9;
  if (!v9 || ([v9 isEqualToString:@"iPhone OS"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Watch OS") & 1) != 0)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"WATCH_OS_VERSION" value:&stru_10026E598 table:@"Software Update"];
    [NSString stringWithFormat:v12, v8, v20];
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"WATCH_OS_VERSION_WITH_CUSTOM_OS_NAME" value:&stru_10026E598 table:@"Software Update"];
    [NSString stringWithFormat:v12, v10, v8];
  }
  v6 = ;

  if (sub_100009A74())
  {
    v13 = [v3 valueForProperty:NRDevicePropertySystemBuildVersion];
    v14 = v13;
    v15 = &stru_10026E598;
    if (v13)
    {
      v15 = v13;
    }

    v7 = v15;

LABEL_14:
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"%@ (%@)" value:&stru_10026E598 table:@"Software Update"];
    v18 = [NSString stringWithFormat:v17, v6, v7];

    v6 = v18;
  }

LABEL_15:

  return v6;
}

void sub_100120100(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001201BC;
  block[3] = &unk_1002684D0;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_1001201BC(uint64_t a1)
{
  v2 = [NSMutableArray arrayWithArray:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCloudDescriptors:v2];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 cloudDescriptors];
  if (![v5 count])
  {

    goto LABEL_6;
  }

  v6 = objc_loadWeakRetained((a1 + 48));
  if ([v6 presentedModally])
  {
    v7 = objc_loadWeakRetained((a1 + 48));
    v8 = [v7 launchedForTerms];

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    [*(a1 + 40) queryManagerState];
    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 activeDevice];
    v11 = *(a1 + 40);
    v21 = NRDevicePropertySystemBuildVersion;
    v12 = [NSArray arrayWithObjects:&v21 count:1];
    [v10 addPropertyObserver:v11 forPropertyChanges:v12];

    v13 = *(a1 + 40);
    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 activeDevice];
    [v13 checkForUpdatedBuildVersionWithDevice:v15];

    return;
  }

LABEL_8:
  v16 = objc_loadWeakRetained((a1 + 48));
  v17 = [v16 cloudDescriptors];
  v20 = [v17 lastObject];

  v18 = objc_loadWeakRetained((a1 + 48));
  v19 = [v18 cloudDescriptors];
  [v19 removeLastObject];

  [*(a1 + 40) presentTermsRequiringPasscode:0 ifNecessaryWithAcceptanceAction:"downloadTermsAccepted" withDescriptor:v20];
}

void sub_100120C8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_100120CA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100120D90;
  v11[3] = &unk_10026C700;
  objc_copyWeak(v14, (a1 + 32));
  v14[1] = a2;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(&_dispatch_main_q, v11);

  objc_destroyWeak(v14);
}

void sub_100120D90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleManagerState:*(a1 + 56) update:*(a1 + 32) error:*(a1 + 40)];
}

void sub_100122EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100122F10(uint64_t a1)
{
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 49) == 1)
  {
    v2 = *(a1 + 40);
    if (v2 > 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = dword_1001C6D90[v2];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained table];
    [v5 setState:v3];
  }

  if (*(a1 + 50) == 1)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 specifiers];
    [v6 removeContiguousSpecifiers:v7 animated:1];

    v10 = objc_loadWeakRetained((a1 + 32));
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v10 specifiersForState:{objc_msgSend(v8, "subState")}];
    [v10 insertContiguousSpecifiers:v9 atIndex:0 animated:1];
  }

  else
  {
    if (*(a1 + 49))
    {
      return;
    }

    v10 = objc_loadWeakRetained((a1 + 32));
    v8 = [v10 installButtonGroup];
    [v10 reloadSpecifier:v8 animated:1];
  }
}

void sub_100123148(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = +[UIApplication sharedApplication];
    v13 = [v12 keyWindow];
    v14 = [v13 firstResponder];

    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "First responder: (%@)", &buf, 0xCu);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_100123328(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained titleCell];
    [v2 setProgressDisplayStyle:0];

    v3 = [v4 hidingProgressBarSource];
    dispatch_source_cancel(v3);

    [v4 setHidingProgressBarSource:0];
    WeakRetained = v4;
  }
}

void sub_1001238A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id sub_1001238D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained installButtonSpecifier];
  v8 = [NSNumber numberWithBool:a2];
  [v7 setProperty:v8 forKey:PSEnabledKey];

  v9 = *(a1 + 32);

  return [v9 displayInstallButtonSpinner:a3 reloadSpecifier:1];
}

id sub_10012397C(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = a1[6];

  return [v2 performSelector:v3];
}

void sub_1001239CC(uint64_t a1, char a2)
{
  if (*(a1 + 32))
  {
    v3 = [NSString alloc];
    v4 = [*(a1 + 32) documentation];
    v5 = [v4 licenseAgreement];
    v6 = [v3 initWithData:v5 encoding:4];

    v7 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained setUpdateAgreedTo:v7];

    v9 = *(a1 + 32);
    v10 = objc_loadWeakRetained((a1 + 64));
    [v10 setTermsFromCloudDevice:1];
  }

  else
  {
    v68 = objc_loadWeakRetained((a1 + 64));
    v9 = [v68 update];

    v69 = objc_loadWeakRetained((a1 + 64));
    v70 = [v69 update];
    v71 = objc_loadWeakRetained((a1 + 64));
    [v71 setUpdateAgreedTo:v70];

    if ((a2 & 1) == 0)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_19;
    }

    v72 = objc_loadWeakRetained((a1 + 64));
    v73 = [v72 update];
    v74 = [v73 userDidAcceptTermsAndConditions];

    if (v74)
    {
      (*(*(a1 + 56) + 16))();
      goto LABEL_19;
    }

    v78 = [NSString alloc];
    v10 = objc_loadWeakRetained((a1 + 64));
    v79 = [v10 update];
    v80 = [v79 documentation];
    v81 = [v80 licenseAgreement];
    v6 = [v78 initWithData:v81 encoding:4];
  }

  if ([v6 length])
  {
    v11 = *(a1 + 72);
    v12 = objc_loadWeakRetained((a1 + 64));
    [v12 setTermsAcceptanceAction:v11];

    v13 = objc_loadWeakRetained((a1 + 64));
    v14 = [v13 activeDevice];
    v15 = [v14 valueForProperty:NRDevicePropertyPairingID];
    v16 = objc_loadWeakRetained((a1 + 64));
    [v16 setTermsDeviceID:v15];

    v17 = [NRTermsEvent alloc];
    v18 = objc_loadWeakRetained((a1 + 64));
    v19 = [v18 termsDeviceID];
    v20 = [v17 initWithDeviceID:v19];
    v21 = objc_loadWeakRetained((a1 + 64));
    [v21 setTerms:v20];

    v22 = objc_loadWeakRetained((a1 + 64));
    v23 = [v22 terms];
    v24 = [v9 documentationID];
    v25 = [v24 stringByAppendingString:@".licenseAgreement"];
    [v23 setDocumentationID:v25];

    v26 = objc_loadWeakRetained((a1 + 64));
    v27 = [v26 terms];
    v28 = [v9 documentation];
    v29 = [v28 licenseAgreement];
    [v27 setTermsText:v29];

    v30 = objc_loadWeakRetained((a1 + 64));
    v31 = [v30 terms];
    [v31 setPresentationReason:@"Requested by Install Tonight"];

    v32 = +[NSBundle mainBundle];
    v33 = [v32 preferredLocalizations];
    v34 = [v33 firstObject];

    v35 = [[COSSoftwareUpdateLicenseController alloc] initWithNibName:0 bundle:0];
    v36 = [NSBundle bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"TERMS_AND_CONDITIONS" value:&stru_10026E598 table:@"Software Update"];
    [(COSSoftwareUpdateLicenseController *)v35 setTitle:v37];

    v38 = [[UITextView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v39 = [UIFont systemFontOfSize:13.0];
    [v38 setFont:v39];

    [v38 setAutoresizingMask:18];
    v82 = v34;
    if ([v34 isEqualToString:@"ar"])
    {
      v40 = pbb_bridge_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, ">>>>>>> Disabling AllowsNonContiguousLayout for selected language.", buf, 2u);
      }

      v41 = [v38 layoutManager];
      [v41 setAllowsNonContiguousLayout:0];
    }

    v83 = v6;
    v84 = v9;
    [v38 setContentToHTMLString:v6];
    [v38 setEditable:0];
    v42 = BPSTextColor();
    [v38 setTextColor:v42];

    v43 = BPSBridgeTintColor();
    [v38 setTintColor:v43];

    v44 = BPSBackgroundColor();
    [v38 setBackgroundColor:v44];

    [v38 setIndicatorStyle:2];
    [(COSSoftwareUpdateLicenseController *)v35 setView:v38];
    v45 = [[UINavigationController alloc] initWithRootViewController:v35];
    v46 = [v45 navigationBar];
    BPSApplyStyleToNavBar();

    v47 = [UIBarButtonItem alloc];
    v48 = [NSBundle bundleForClass:objc_opt_class()];
    v49 = [v48 localizedStringForKey:@"DISAGREE" value:&stru_10026E598 table:@"Software Update"];
    v50 = [v47 initWithTitle:v49 style:0 target:*(a1 + 40) action:"_termsDisagree"];

    v51 = [UIBarButtonItem alloc];
    v52 = [NSBundle bundleForClass:objc_opt_class()];
    v53 = [v52 localizedStringForKey:@"AGREE" value:&stru_10026E598 table:@"Software Update"];
    v54 = [v51 initWithTitle:v53 style:2 target:*(a1 + 40) action:"_termsAgree"];

    v55 = BPSBridgeTintColor();
    [v50 setTintColor:v55];

    v56 = BPSBridgeTintColor();
    [v54 setTintColor:v56];

    [v45 setModalPresentationStyle:2];
    v57 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v58 = [NSArray arrayWithObjects:v50, v57, v54, 0];
    [(COSSoftwareUpdateLicenseController *)v35 setToolbarItems:v58 animated:0];

    [v45 setToolbarHidden:0];
    v59 = [v45 toolbar];
    [v59 setBarStyle:1];

    v60 = [v45 toolbar];
    [v60 setTranslucent:1];

    v61 = [v45 toolbar];
    v62 = BPSBridgeTintColor();
    [v61 setTintColor:v62];

    [v45 setModalPresentationStyle:0];
    v63 = objc_loadWeakRetained((a1 + 64));
    v64 = [v63 termsDisplayController];

    if (v64)
    {
      v65 = objc_loadWeakRetained((a1 + 64));
      v66 = [v65 termsDisplayController];
      [v66 presentViewController:v45 animated:1 completion:0];
    }

    else
    {
      [*(a1 + 40) presentViewController:v45 animated:1 completion:0];
    }

    v9 = v84;
  }

  else
  {
    v75 = pbb_bridge_log();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Terms and Conditions are empty!", buf, 2u);
    }

    v76 = objc_loadWeakRetained((a1 + 64));
    v77 = [v76 subManager];
    [v77 removeCloudDescriptor:*(a1 + 32)];

    BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
  }

LABEL_19:
}

void sub_10012431C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void sub_1001244E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001245C4;
  v10[3] = &unk_10026C7C8;
  v11 = a3;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v8 = v5;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1001245C4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = pbb_bridge_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SFUnlockManager error: (%@)", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
  }

  else
  {
    v4 = [*(a1 + 40) unlockEnabled];
    v5 = [v4 BOOLValue];

    v6 = [*(a1 + 40) remotePasscodeEnabled];
    v7 = [v6 BOOLValue];

    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v11[0]) = v5;
      WORD2(v11[0]) = 1024;
      *(v11 + 6) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SFUnlockManager - isAutoUnlockEnabled: (%d); watchHasPasscode: (%d)", buf, 0xEu);
    }

    if (v5 || !v7)
    {
      [*(a1 + 48) presentPasscodePromptWithCompletionHandler:*(a1 + 56)];
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_1001249DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100124A04(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained resetInstallButtonEnabledStateAndReloadSpecifier:1];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_100124B6C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = pbb_bridge_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to add terms: %@", &v4, 0xCu);
    }
  }
}

void sub_100124C1C(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User chose: Agree", v13, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained termsAcceptanceAction];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 termsAcceptanceAction];

    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 setTermsAcceptanceAction:0];

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 modalController];
    if (v9)
    {
      v10 = v9;
      v11 = objc_loadWeakRetained((a1 + 40));
      v12 = [v11 showingTermsRequestedByWatch];

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
LABEL_9:
    [*(a1 + 32) performSelector:v6];
  }
}

void sub_100126700(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _manager:*(a1 + 32) scanRequestDidLocateUpdate:*(a1 + 40) error:*(a1 + 48)];
}

void sub_100126DA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _manager:*(a1 + 32) didChangeProgressOnDownload:*(a1 + 40)];
}

void sub_1001279E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _manager:*(a1 + 32) didFailDownload:*(a1 + 40) withError:*(a1 + 48)];
}

void sub_100127DFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _manager:*(a1 + 32) didFinishDownload:*(a1 + 40) willProceedWithInstallation:*(a1 + 56) waitingForAdmissionControl:*(a1 + 57)];
}

void sub_1001281F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _manager:*(a1 + 32) willProceedWithInstallation:*(a1 + 40)];
}

void sub_100128544(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _manager:*(a1 + 32) installationOfUpdate:*(a1 + 40) canProceed:*(a1 + 56)];
}

void sub_1001288D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _manager:*(a1 + 32) didFailInstallation:*(a1 + 40) withError:*(a1 + 48)];
}

void sub_100128C30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _manager:*(a1 + 32) didFinishInstallation:*(a1 + 40)];
}

void sub_100129F9C(id a1, UIAlertAction *a2)
{
  v2 = [NSURL URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK&ShowDefaultAudiencePane=YES"];
  BPSOpenSensitiveURLAsync();
}

void sub_100129FEC(uint64_t a1)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unenrolling from any enrolled beta programs", v7, 2u);
  }

  [*(a1 + 32) unenrollFromBetaUpdatesWithCompletion:&stru_10026C878];
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v3 = [*(a1 + 32) navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  v5 = [*(a1 + 32) navigationController];
  v6 = [v5 popViewControllerAnimated:1];
}

void sub_10012A0C0(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67240450;
    v6[1] = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unenroll result: %{public}d error: %{public}@", v6, 0x12u);
  }
}

void sub_10012A47C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

id sub_10012AA80(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (sub_100009A74())
  {
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:SUBErrorDomain];

    if (v6)
    {
      v7 = [v4 code];
      if ((v7 - 3) > 9)
      {
        v8 = &stru_10026E598;
      }

      else
      {
        v8 = *(&off_10026C978 + (v7 - 3));
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = [v4 localizedDescription];
    v9 = [NSString stringWithFormat:@"%@\n\n[Internal Only]\n%@%@", v3, v8, v10];
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

id sub_10012AB94(uint64_t a1)
{
  [*(a1 + 32) reportRequiredUpdateAbort];
  v2 = *(a1 + 32);

  return [v2 unpairDevice];
}

void sub_10012ABD0(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void sub_10012AD4C(id a1, NSError *a2)
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed space failure recording", v3, 2u);
  }
}

id *sub_10012AEBC(id *result, int a2)
{
  if (a2)
  {
    return [result[4] reloadSpecifiers];
  }

  return result;
}

void sub_10012AFA0(uint64_t a1)
{
  v2 = +[SDBetaManager sharedManager];
  v3 = [v2 seedingAppleIDUsernameForCurrentDevice];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012B134;
  block[3] = &unk_100268458;
  objc_copyWeak(&v11, (a1 + 40));
  v4 = v3;
  v10 = v4;
  dispatch_async(&_dispatch_main_q, block);
  v5 = +[SDBetaManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012B194;
  v6[3] = &unk_10026C930;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  [v5 queryProgramsForSystemAccountsWithPlatforms:8 disableBuildPrefixMatching:1 completion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v11);
}

void sub_10012B110(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_10012B134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 49, *(a1 + 32));
    WeakRetained = v3;
  }
}

void sub_10012B194(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012B264;
  v8[3] = &unk_10026C908;
  objc_copyWeak(v11, (a1 + 40));
  v6 = *(a1 + 32);
  v11[1] = a3;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(v11);
}

void sub_10012B264(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 56))
    {
      v3 = pbb_bridge_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 56);
        *buf = 134217984;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unable to load beta programs: %ld", buf, 0xCu);
      }

      v5 = *(a1 + 40);
      if (v5)
      {
        (*(v5 + 16))(v5, 0);
      }
    }

    else
    {
      v7 = [*(a1 + 32) count];
      v8 = *(a1 + 32);
      if (v7)
      {
        [WeakRetained _filterBetaPrograms:v8];
      }

      else
      {
        [WeakRetained setBetaPrograms:v8];
      }

      v9 = [WeakRetained nssManager];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10012B444;
      v10[3] = &unk_10026C8E0;
      objc_copyWeak(&v12, (a1 + 48));
      v11 = *(a1 + 40);
      [v9 fetchBetaEnrollmentStatus:v10];

      objc_destroyWeak(&v12);
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }
}

void sub_10012B444(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
LABEL_7:
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }

    goto LABEL_20;
  }

  if (v6)
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to load Beta updates: %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (v5)
  {
    v10 = [NSSet setWithObject:objc_opt_class()];
    v15 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v5 error:&v15];
    v12 = v15;

    if (v12)
    {
      v13 = pbb_bridge_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to unarchive beta program: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  [WeakRetained setSelectedBetaProgram:v11];
  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, 1);
  }

LABEL_20:
}

id sub_10012B8D0(uint64_t a1, char a2)
{
  result = (*(*(a1 + 40) + 16))();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 loadBetaUpdates];
  }

  return result;
}

id sub_10012B9EC(uint64_t a1, char a2)
{
  result = (*(*(a1 + 40) + 16))();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 loadBetaUpdates];
  }

  return result;
}

id sub_10012D278(uint64_t a1, void *a2)
{
  v3 = NRDevicePropertyIsPaired;
  v4 = a2;
  v5 = [v4 valueForProperty:v3];
  v6 = [v4 valueForProperty:NRDevicePropertyAdvertisedName];

  if ([v5 BOOLValue])
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) isEqual:v6];
  }

  return v7;
}

void sub_10012D88C(id a1)
{
  v1 = objc_alloc_init(NSPersonNameComponentsFormatter);
  v2 = qword_1002BD6B8;
  qword_1002BD6B8 = v1;
}

void sub_10012E198(id *a1, void *a2)
{
  v3 = a2;
  if (([v3 isOrganizer] & 1) == 0 && (!objc_msgSend(v3, "isMe") || (objc_msgSend(v3, "isParent") & 1) == 0))
  {
    [a1[4] addObject:v3];
    v13 = v3;
    v4 = [v3 appleID];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = a1[5];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 valueForProperty:@"_altAccountIdentifier"];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            [a1[6] setObject:v10 forKey:v4];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v3 = v13;
  }
}

void sub_10012F038(id a1)
{
  v1 = pbb_bridge_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Internal settings displayed.", v2, 2u);
  }
}

void sub_10012F548(uint64_t a1, int a2)
{
  v4 = pbb_setup_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[COSSoftwareUpdateBetaUpdateContoller willEnterForeground:]_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s load result: %d", &v5, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) reloadSpecifiers];
  }
}

void sub_10013011C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v7 = pbb_setup_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Non-fatal error from beta unenroll %@", &v9, 0xCu);
      }
    }
  }

  else
  {
    v8 = pbb_setup_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to unenroll from beta program: %@", &v9, 0xCu);
    }

    [*(a1 + 32) postFailedToSetBetaUpdateAlert];
  }
}

void sub_10013023C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v7 = pbb_setup_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Non-fatal error from beta enroll %@", &v9, 0xCu);
      }
    }
  }

  else
  {
    v8 = pbb_setup_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to enroll in beta program: %@", &v9, 0xCu);
    }

    [*(a1 + 32) postFailedToSetBetaUpdateAlert];
  }
}

void sub_100130550(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

void sub_100130A24(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100130ABC;
  v3[3] = &unk_100268FC8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void sub_100130ABC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _gotAutomaticAppInstallState:*(a1 + 40)];
}

id sub_100131324(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"LOGS_FAIL_HEADER" value:&stru_10026E598 table:@"General"];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"LOGS_FAIL_MESSAGE" value:&stru_10026E598 table:@"General"];
    v7 = +[NSBundle mainBundle];
    CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, v4, v6, [v7 localizedStringForKey:@"LOGS_FAIL_BUTTON" value:&stru_10026E598 table:@"General"]);
  }

  *(*(a1 + 32) + 144) = 0;
  v8 = *(a1 + 32);

  return [v8 reloadSpecifiers];
}

void sub_10013143C(id a1)
{
  v1 = dispatch_queue_create("com.apple.Bridge.sysdiagnose", &_dispatch_queue_attr_concurrent);
  v2 = qword_1002BD6C8;
  qword_1002BD6C8 = v1;
}

void sub_100131480(id a1)
{
  NSLog(@"Calling into Libsysdiagnose to retrieve the recent sysdiagnose IDs from the Watch");
  v15 = 0;
  v1 = [Libsysdiagnose fetchDiagnosticIDFromDeviceSource:2 WithMaxCount:3 withError:&v15];
  v2 = v15;
  v3 = v2;
  if (v2)
  {
    NSLog(@"Libsysdiagnose failed to retrieve the recent sysdiagnose IDs from the Watch with error: (%@)", v2);
  }

  else
  {
    NSLog(@"Libsysdiagnose successfully retrieved the list of recent sysdiagnoses from Watch: (%@)", v1);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100131640;
          block[3] = &unk_1002682F0;
          block[4] = v9;
          dispatch_barrier_async(qword_1002BD6C8, block);
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

void sub_100131640(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = @"diagnosticID";
  v8 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = 0;
  v4 = [Libsysdiagnose sysdiagnoseWithMetadata:v3 withError:&v6];
  v5 = v6;

  if (v5)
  {
    NSLog(@"Libsysdiagnose failed to retrieve sysdiagnose with ID (%@) from the Watch with error: (%@)", *(a1 + 32), v5);
  }

  else
  {
    NSLog(@"Libsysdiagnose successfully retrieved sysdiagnose with ID (%@) from Watch at path: (%@)", *(a1 + 32), v4);
  }
}

id sub_1001318D4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1002BD6E8;
  v7 = qword_1002BD6E8;
  if (!qword_1002BD6E8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001337C8;
    v3[3] = &unk_1002680D0;
    v3[4] = &v4;
    sub_1001337C8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10013199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100131CF8(uint64_t a1)
{
  v2 = [sub_1001318D4() sharedPreferences];
  [v2 setNanoDictationEnabled:*(a1 + 32)];
}

void sub_1001322A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = v4;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v7 = off_1002BD6F0;
    v27 = off_1002BD6F0;
    if (!off_1002BD6F0)
    {
      v8 = sub_100133654();
      v25[3] = dlsym(v8, "_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode");
      off_1002BD6F0 = v25[3];
      v7 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v7)
    {
      goto LABEL_27;
    }

    v9 = v7(v6);

    if (v9)
    {
      v5 = [*(a1 + 32) objectForKeyedSubscript:v9];
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = v5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v11 = off_1002BD6F8;
  v27 = off_1002BD6F8;
  if (!off_1002BD6F8)
  {
    v12 = sub_100133654();
    v25[3] = dlsym(v12, "AFOfflineDictationStatusStringIsHighQualityModelSupported");
    off_1002BD6F8 = v25[3];
    v11 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v11)
  {
    sub_100186904();
LABEL_26:
    sub_100186904();
LABEL_27:
    sub_100186904();
    goto LABEL_28;
  }

  v13 = v11(v10);

  if (!v13)
  {
    v18 = 40;
    goto LABEL_24;
  }

  v14 = v10;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v15 = off_1002BD700;
  v27 = off_1002BD700;
  if (!off_1002BD700)
  {
    v16 = sub_100133654();
    v25[3] = dlsym(v16, "AFOfflineDictationStatusStringIsInstalled");
    off_1002BD700 = v25[3];
    v15 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v15)
  {
    goto LABEL_26;
  }

  v17 = v15(v14);

  if (v17)
  {
    v18 = 48;
    goto LABEL_24;
  }

  v19 = v14;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v20 = off_1002BD708;
  v27 = off_1002BD708;
  if (!off_1002BD708)
  {
    v21 = sub_100133654();
    v25[3] = dlsym(v21, "AFOfflineDictationStatusStringIsInstalling");
    off_1002BD708 = v25[3];
    v20 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v20)
  {
LABEL_28:
    v23 = sub_100186904();
    _Block_object_dispose(&v24, 8);
    _Unwind_Resume(v23);
  }

  v22 = v20(v19);

  v18 = 64;
  if (v22)
  {
    v18 = 56;
  }

LABEL_24:
  [*(a1 + v18) addObject:v3];
}

void *sub_100133604(uint64_t a1)
{
  v2 = sub_100133654();
  result = dlsym(v2, "AFNanoPreferencesDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1002BD6D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100133654()
{
  v3[0] = 0;
  if (!qword_1002BD6E0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100133754;
    v3[4] = &unk_100268108;
    v3[5] = v3;
    v4 = off_10026CB20;
    v5 = 0;
    qword_1002BD6E0 = _sl_dlopen();
  }

  v0 = qword_1002BD6E0;
  v1 = v3[0];
  if (!qword_1002BD6E0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100133754()
{
  result = _sl_dlopen();
  qword_1002BD6E0 = result;
  return result;
}

Class sub_1001337C8(uint64_t a1)
{
  sub_100133654();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1002BD6E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1001876B0();
    return sub_100133820(v3);
  }

  return result;
}

void *sub_100133820(uint64_t a1)
{
  v2 = sub_100133654();
  result = dlsym(v2, "_AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002BD6F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100133870(uint64_t a1)
{
  v2 = sub_100133654();
  result = dlsym(v2, "AFOfflineDictationStatusStringIsHighQualityModelSupported");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002BD6F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1001338C0(uint64_t a1)
{
  v2 = sub_100133654();
  result = dlsym(v2, "AFOfflineDictationStatusStringIsInstalled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002BD700 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100133910(uint64_t a1)
{
  v2 = sub_100133654();
  result = dlsym(v2, "AFOfflineDictationStatusStringIsInstalling");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1002BD708 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100133F6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = pbb_accountsignin_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Error authenticating the account", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:AKAuthenticationUsernameKey];
    v9 = [v5 objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
    v10 = [v5 objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
    if (v8)
    {
      [*(*(a1 + 32) + 16) setUsername:v8];
    }

    if (v10)
    {
      [*(*(a1 + 32) + 16) ams_setAltDSID:v10];
    }

    if (v9)
    {
      [*(*(a1 + 32) + 16) ams_setRawPassword:v9];
    }

    v11 = [[AMSAuthenticateRequest alloc] initWithAccount:*(*(a1 + 32) + 16) options:*(a1 + 40)];
    v12 = [[AMSAuthenticateTask alloc] initWithRequest:v11];
    v13 = pbb_accountsignin_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Performing ams authentication", buf, 2u);
    }

    v14 = [v12 performAuthentication];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001341CC;
    v16[3] = &unk_100269470;
    v17 = *(a1 + 48);
    [v14 addFinishBlock:v16];
  }
}