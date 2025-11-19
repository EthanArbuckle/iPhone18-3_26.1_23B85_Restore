void sub_100001D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001D34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001D4C(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 serialNumber];
  if ([v5 isEqualToString:a1[4]])
  {
    v6 = [v7 isEqualToString:a1[5]];

    if ((v6 & 1) == 0)
    {
      [*(*(a1[6] + 8) + 40) addObject:v7];
    }
  }

  else
  {
  }
}

void sub_100002158(id a1)
{
  qword_100045DF0 = objc_alloc_init(FMDAutomationHelperFactory);

  _objc_release_x1();
}

id sub_100002400()
{
  if (qword_100045E00 != -1)
  {
    sub_10001D990();
  }

  v1 = qword_100045E08;

  return v1;
}

void sub_100002444(id a1)
{
  qword_100045E08 = os_log_create("com.apple.icloud.findmydeviced", "magSafe");

  _objc_release_x1();
}

NSError *__cdecl sub_100002488(id a1, SEL a2, id a3)
{
  v9 = NSLocalizedDescriptionKey;
  v10 = a3;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [NSError errorWithDomain:v6 code:0 userInfo:v4];

  return v7;
}

void sub_1000035BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100002400();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v48 = v7;
    v49 = 2112;
    v50 = v8;
    v51 = 2112;
    v52 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: download task completed with %@ %@ %@", buf, 0x20u);
  }

  v11 = *(a1 + 32);
  v46 = 0;
  v12 = [v11 isValidReponse:v8 validationError:&v46];
  v13 = v46;
  if (!v13)
  {
    if ((v12 & 1) == 0)
    {
      v35 = sub_100002400();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10001DB6C(a1, v8, v35);
      }

      v21 = *(a1 + 64);
      v22 = 0;
      goto LABEL_23;
    }

    v23 = v8;
    if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v23 statusCode] != 200)
    {
      (*(*(a1 + 64) + 16))(*(a1 + 64), 0, v9);
      goto LABEL_24;
    }

    v24 = [*(a1 + 48) stringByDeletingLastPathComponent];
    v25 = sub_100002400();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: dir location = %@", buf, 0xCu);
    }

    if (([*(a1 + 56) fileExistsAtPath:v24] & 1) == 0)
    {
      v26 = *(a1 + 56);
      v45 = 0;
      v27 = [v26 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:&v45];
      v28 = v45;
      v29 = v28;
      if ((v27 & 1) == 0)
      {
        v36 = sub_100002400();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10001DC44(v36, v37, v38, v39, v40, v41, v42, v43);
        }

        (*(*(a1 + 64) + 16))();
        goto LABEL_30;
      }
    }

    v30 = *(a1 + 56);
    v31 = [NSURL fileURLWithPath:*(a1 + 48)];
    v44 = 0;
    [v30 moveItemAtURL:v7 toURL:v31 error:&v44];
    v29 = v44;

    v32 = sub_100002400();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v29;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "FMDRemoteAsset: copy completed with error %@", buf, 0xCu);
    }

    v33 = *(a1 + 64);
    if (v29)
    {
      v34 = +[NSError fm_genericError];
      (*(v33 + 16))(v33, 0, v34);
    }

    else
    {
      (*(v33 + 16))(*(a1 + 64), *(a1 + 48), 0);
    }

LABEL_30:

    goto LABEL_24;
  }

  v14 = sub_100002400();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10001DB00(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v21 = *(a1 + 64);
  v22 = 1;
LABEL_23:
  v23 = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.RemoteAsset" code:v22 userInfo:0];
  (*(v21 + 16))(v21, 0, v23);
LABEL_24:
}

void sub_100003B70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100003CF4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001DCB4();
  }
}

void sub_100003ED8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10001DCB4();
  }
}

id sub_100004168(uint64_t a1)
{
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "did not get accessory showing attach screen", v4, 2u);
  }

  return [*(a1 + 32) progressFlowWithState:1];
}

id sub_1000041E0(uint64_t a1)
{
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "did not get accessory ending setup", v4, 2u);
  }

  return [*(a1 + 32) setupEnded];
}

void sub_100004664(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedCard];
  if (v2 && (v3 = v2, [*(a1 + 32) presentedCard], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isBeingPresented"), v4, v3, v5))
  {
    v6 = [*(a1 + 32) presentedCard];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004780;
    v8[3] = &unk_100038780;
    v8[4] = *(a1 + 32);
    [v6 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    [*(a1 + 32) setPresentedCard:0];
    v7 = [*(a1 + 32) remoteVCProxy];
    [v7 deactivate];
  }
}

void sub_100004780(uint64_t a1)
{
  [*(a1 + 32) setPresentedCard:0];
  v2 = [*(a1 + 32) remoteVCProxy];
  [v2 deactivate];
}

void sub_100004E24(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = +[FMDAccessoryTypeValidator sharedInstance];
  v4 = [*(a1 + 32) accessoryType];
  if ([v3 isAllowedAccessoryWithType:v4])
  {
    v5 = [*(a1 + 32) isMF4i];

    if (v5)
    {
      [*(a1 + 32) getPairingStatus];
      if ([*(a1 + 32) isNVMSetup])
      {
        if (([*(a1 + 32) keysAvailable] & 1) == 0)
        {
          dispatch_group_enter(v2);
          v6 = *(a1 + 32);
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10000538C;
          v45[3] = &unk_1000387A8;
          v46 = v6;
          v7 = v2;
          v47 = v7;
          [FMDPairingCheckHelper pairingCheckForAccessory:v46 completion:v45];
          v8 = dispatch_time(0, 10000000000);
          if (dispatch_group_wait(v7, v8))
          {
            v9 = sub_100002400();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              sub_10001DD9C();
            }
          }
        }
      }
    }
  }

  else
  {
  }

  if (([*(a1 + 32) isNVMSetup] & 1) == 0)
  {
    v19 = [FMDRemoteAsset alloc];
    v20 = [*(a1 + 32) accessoryType];
    v21 = [*(a1 + 32) style];
    v13 = [(FMDRemoteAsset *)v19 initWithAccessoryType:v20 style:v21 type:0];

    dispatch_group_enter(v2);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000054C0;
    v43[3] = &unk_1000387D0;
    v22 = v2;
    v44 = v22;
    [(FMDRemoteAsset *)v13 fetchAssetWithCompletion:v43];
    v23 = [FMDRemoteAsset alloc];
    v24 = [*(a1 + 32) accessoryType];
    v25 = [*(a1 + 32) style];
    v26 = [(FMDRemoteAsset *)v23 initWithAccessoryType:v24 style:v25 type:1];

    dispatch_group_enter(v22);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000559C;
    v41[3] = &unk_1000387D0;
    v27 = v22;
    v42 = v27;
    [(FMDRemoteAsset *)v26 fetchAssetWithCompletion:v41];
    v28 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v27, v28))
    {
      v29 = sub_100002400();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10001DE0C();
      }
    }

    v30 = [*(a1 + 40) isRestrictedSKU];
    v31 = [FMDRemoteAsset alloc];
    v32 = [*(a1 + 32) accessoryType];
    v33 = [*(a1 + 32) style];
    if (v30)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    if (v30)
    {
      v35 = &stru_100038810;
    }

    else
    {
      v35 = &stru_100038830;
    }

    v36 = [(FMDRemoteAsset *)v31 initWithAccessoryType:v32 style:v33 type:v34];

    [(FMDRemoteAsset *)v36 fetchAssetWithCompletion:v35];
    v14 = v44;
    goto LABEL_31;
  }

  if ([*(a1 + 32) isNVMSetup] && (objc_msgSend(*(a1 + 32), "keysAvailable") & 1) == 0)
  {
    v10 = [FMDRemoteAsset alloc];
    v11 = [*(a1 + 32) accessoryType];
    v12 = [*(a1 + 32) style];
    v13 = [(FMDRemoteAsset *)v10 initWithAccessoryType:v11 style:v12 type:3];

    v14 = [(FMDRemoteAsset *)v13 getStoredAssetLocation];
    if (!v14)
    {
      v15 = dispatch_group_create();
      dispatch_group_enter(v15);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100005818;
      v39[3] = &unk_1000387D0;
      v16 = v15;
      v40 = v16;
      [(FMDRemoteAsset *)v13 fetchAssetWithCompletion:v39];
      v17 = dispatch_time(0, 3000000000);
      if (dispatch_group_wait(v16, v17))
      {
        v18 = sub_100002400();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10001DE0C();
        }
      }
    }

LABEL_31:
  }

  [*(a1 + 40) setPhysicalAccessory:*(a1 + 32)];
  v37 = *(a1 + 40);
  v38 = [v37 physicalAccessory];
  [v37 prepareForSetupFlowFor:v38];
}

void sub_10000538C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "pairingCheckForAccessory completed with error = %@ lostModeInfo = %@", &v10, 0x16u);
  }

  if (!v5 && v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"ownerNumber"];
    [*(a1 + 32) setPhoneNumber:v8];

    v9 = [v6 objectForKeyedSubscript:@"email"];
    [*(a1 + 32) setEmail:v9];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000054C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "remoteAsset pairing video fetched with path %@ error %@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000559C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "remoteAsset pairing video adjustments fetched with path %@ error %@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100005678(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100002400();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remoteAsset fetched with path %@ error %@", &v7, 0x16u);
  }
}

void sub_100005748(id a1, NSString *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100002400();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "remoteAsset map image fetched with path %@ error %@", &v7, 0x16u);
  }
}

void sub_100005818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "remoteAsset fetched with path %@ error %@", &v8, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000612C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessory removed with error %@", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000064BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000064E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000064FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessory set name completed with error %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000065D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accessory added with error %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000067BC(uint64_t a1)
{
  switch(*(a1 + 40))
  {
    case 1:
      v2 = [*(a1 + 32) proxCardAttachAccessory];
      goto LABEL_16;
    case 2:
      v2 = [*(a1 + 32) proxCardAlreadyAttached];
      goto LABEL_16;
    case 3:
      v2 = [*(a1 + 32) proxCardUnsupportedAccessory];
      goto LABEL_16;
    case 4:
      v2 = [*(a1 + 32) proxCardLockedFindMyNotPaired];
      goto LABEL_16;
    case 5:
      v2 = [*(a1 + 32) proxCardUnlockedStartFlow];
      goto LABEL_16;
    case 6:
      v2 = [*(a1 + 32) proxCardSetupFindmy];
      goto LABEL_16;
    case 7:
      v2 = [*(a1 + 32) proxCardSetupComplete];
      goto LABEL_16;
    case 8:
      v2 = [*(a1 + 32) proxCardSetupError];
      goto LABEL_16;
    case 9:
      v2 = [*(a1 + 32) proxCardNonOwnerLockedDevice];
      goto LABEL_16;
    case 0xALL:
      v2 = [*(a1 + 32) proxCardNonOwnerUnlocked];
      goto LABEL_16;
    case 0xBLL:
      v2 = [*(a1 + 32) proxCardNoAccount];
      goto LABEL_16;
    case 0xCLL:
      v2 = [*(a1 + 32) proxCardUpgradeAccountSecurity];
      goto LABEL_16;
    case 0xDLL:
      v2 = [*(a1 + 32) proxCardUpgradeAccountSecurityError];
      goto LABEL_16;
    case 0xELL:
      v2 = [*(a1 + 32) proxCardSpinner];
LABEL_16:
      v3 = v2;
      break;
    default:
      v3 = 0;
      break;
  }

  [*(a1 + 32) setProxCardState:*(a1 + 40)];
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) presentedCard];
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDMagSafeSetupRemoteUIViewController: nextCard = %@ %@", &v13, 0x16u);
  }

  v6 = [*(a1 + 32) presentedCard];

  if (v6)
  {
    if (!v3)
    {
      v12 = [*(a1 + 32) presentedCard];
      [v12 dismissViewControllerAnimated:1 completion:0];

      goto LABEL_29;
    }

    v7 = sub_100002400();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDMagSafeSetupRemoteUIViewController: pushing view cotroler %@", &v13, 0xCu);
    }

    v8 = [*(a1 + 32) presentedCard];
    v9 = [v8 navigationController];
    [v9 pushViewController:v3 animated:1];
  }

  else
  {
    v10 = *(a1 + 32);
    if (!v3)
    {
      [v10 setupEnded];
      goto LABEL_29;
    }

    v11 = [v10 presentProxCardFlowWithDelegate:*(a1 + 32) initialViewController:v3];
  }

  [*(a1 + 32) setPresentedCard:v3];
LABEL_29:
}

void sub_100006F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006F2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_10000EE80();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "add to FindMy button tapped", v3, 2u);
  }

  [WeakRetained continueWithAccountValidationFlow];
}

void sub_1000070BC(uint64_t a1)
{
  v2 = [*(a1 + 32) physicalAccessory];
  v3 = objc_alloc_init(FMDPairingLockRegisterRequestInfo);
  v4 = [v2 serialNumber];
  [v3 setSerialNumber:v4];

  v5 = [v2 accessoryType];
  [v3 setAccessoryType:v5];

  v6 = dispatch_group_create();
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 serialNumber];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Doing register to server for accessory with serial number = %@", &buf, 0xCu);
  }

  dispatch_group_enter(v6);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v114 = 0x3032000000;
  v115 = sub_1000064E4;
  v116 = sub_1000064F4;
  v117 = 0;
  v104 = 0;
  v105[0] = &v104;
  v105[1] = 0x3032000000;
  v105[2] = sub_1000064E4;
  v105[3] = sub_1000064F4;
  v106 = 0;
  v9 = +[FMDFMIPManager sharedInstance];
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_100007FC8;
  v100[3] = &unk_100038920;
  v102 = &v104;
  p_buf = &buf;
  v10 = v6;
  v101 = v10;
  [v9 registerDeviceForPairingLock:v3 completion:v100];

  v11 = dispatch_time(0, 5000000000);
  v12 = dispatch_group_wait(v10, v11);
  if (!*(v105[0] + 40) && !v12)
  {
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      v14 = [v13 pairingToken];
      if (v14)
      {
        v15 = [*(*(&buf + 1) + 40) serialNumber];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = sub_100002400();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v107) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "provisioning keys to mulder", &v107, 2u);
          }

          dispatch_group_enter(v10);
          v97[0] = _NSConcreteStackBlock;
          v97[1] = 3221225472;
          v97[2] = sub_1000080DC;
          v97[3] = &unk_1000388A8;
          v99 = &v104;
          v18 = v10;
          v98 = v18;
          [v2 setupKeysWithCompletion:v97];
          v19 = dispatch_time(0, 5000000000);
          v20 = dispatch_group_wait(v18, v19);
          if (*(v105[0] + 40) || v20)
          {
            v47 = sub_100002400();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_10001E08C(v105);
            }

            v48 = *(a1 + 40);
            if (*(v105[0] + 40))
            {
              (*(v48 + 16))(v48);
LABEL_83:
              v46 = v98;
              goto LABEL_84;
            }

            v51 = +[NSError fm_timeoutError];
            (*(v48 + 16))(v48, v51);
LABEL_82:

            goto LABEL_83;
          }

          v95 = 0;
          v96 = 0;
          [FMDCryptoUtil generatePublicPrivateKeyPair:&v96 privateKey:&v95];
          v21 = v96;
          v80 = v95;
          v22 = sub_100002400();
          v79 = v21;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v21 fm_hexString];
            v24 = [v80 fm_hexString];
            sub_10001DFDC(v23, v24, v112, v22);
          }

          v25 = sub_100002400();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v107) = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "setting up pairing data", &v107, 2u);
          }

          v26 = objc_alloc_init(FMDRemoteUnlockPairingData);
          v27 = [*(*(&buf + 1) + 40) pairingToken];
          v28 = [NSData dataWithHexString:v27];
          [(FMDRemoteUnlockPairingData *)v26 setPairingCheckToken:v28];

          [(FMDRemoteUnlockPairingData *)v26 setLostModePrivateKey:v80];
          v29 = sub_100002400();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [(FMDRemoteUnlockPairingData *)v26 pairingCheckToken];
            LODWORD(v107) = 138412290;
            *(&v107 + 4) = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "data size = %@", &v107, 0xCu);
          }

          dispatch_group_enter(v18);
          v92[0] = _NSConcreteStackBlock;
          v92[1] = 3221225472;
          v92[2] = sub_1000081B8;
          v92[3] = &unk_1000388A8;
          v94 = &v104;
          v31 = v18;
          v93 = v31;
          [v2 setPairingData:v26 withCompletion:v92];
          v32 = dispatch_time(0, 5000000000);
          v33 = dispatch_group_wait(v31, v32);
          if (*(v105[0] + 40) || v33)
          {
            v49 = sub_100002400();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              sub_10001E08C(v105);
            }

            v50 = *(a1 + 40);
            if (*(v105[0] + 40))
            {
              (*(v50 + 16))(v50);
            }

            else
            {
              v54 = +[NSError fm_timeoutError];
              (*(v50 + 16))(v50, v54);
            }

            goto LABEL_81;
          }

          v34 = sub_100002400();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v107) = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "getting user private key", &v107, 2u);
          }

          dispatch_group_enter(v31);
          *&v107 = 0;
          *(&v107 + 1) = &v107;
          v108 = 0x3032000000;
          v109 = sub_1000064E4;
          v110 = sub_1000064F4;
          v111 = 0;
          v88[0] = _NSConcreteStackBlock;
          v88[1] = 3221225472;
          v88[2] = sub_100008294;
          v88[3] = &unk_100038948;
          v90 = &v104;
          v91 = &v107;
          v35 = v31;
          v89 = v35;
          [v2 copyUserPrivateKeyWithCompletion:v88];
          v36 = dispatch_time(0, 5000000000);
          v37 = dispatch_group_wait(v35, v36);
          if (*(v105[0] + 40) || v37)
          {
            v52 = sub_100002400();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              sub_10001E08C(v105);
            }

            v53 = *(a1 + 40);
            if (*(v105[0] + 40))
            {
              (*(v53 + 16))(v53);
LABEL_80:

              _Block_object_dispose(&v107, 8);
LABEL_81:

              v51 = v79;
              goto LABEL_82;
            }

            v55 = +[NSError fm_timeoutError];
            (*(v53 + 16))(v53, v55);
LABEL_79:

            goto LABEL_80;
          }

          if (v79 && *(*(&v107 + 1) + 40))
          {
            v38 = objc_alloc_init(FMDPairingLockUpdateRequestInfo);
            v39 = [*(*(&buf + 1) + 40) pairingToken];
            [v38 setPairingCheckToken:v39];

            v40 = [v79 fm_hexString];
            [v38 setLostModePubKey:v40];

            v41 = *(*(&v107 + 1) + 40);
            if (v41)
            {
              v42 = [*(*(&v107 + 1) + 40) fm_hexString];
            }

            else
            {
              v42 = 0;
            }

            [v38 setUserPrivateKey:v42];
            if (v41)
            {
            }

            v56 = [v2 serialNumber];
            [v38 setSerialNumber:v56];

            v57 = +[NSDate date];
            v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v57 fm_epoch]);
            [v38 setTimeStamp:v58];

            v59 = +[FMDFMIPManager sharedInstance];
            [v59 updatePairingLockInfo:v38 completion:&stru_100038968];
          }

          else
          {
            v38 = sub_100002400();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_10001E050();
            }
          }

          v60 = sub_100002400();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *v87 = 0;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "setting the device name", v87, 2u);
          }

          v78 = [*(a1 + 32) _computeName];
          dispatch_group_enter(v35);
          v84[0] = _NSConcreteStackBlock;
          v84[1] = 3221225472;
          v84[2] = sub_100008448;
          v84[3] = &unk_1000388A8;
          v86 = &v104;
          v61 = v35;
          v85 = v61;
          [v2 setName:v78 withCompletion:v84];
          v62 = dispatch_time(0, 5000000000);
          v63 = dispatch_group_wait(v61, v62);
          if (*(v105[0] + 40) || v63)
          {
            v73 = sub_100002400();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              sub_10001E08C(v105);
            }

            v74 = *(a1 + 40);
            if (*(v105[0] + 40))
            {
              (*(v74 + 16))(v74);
LABEL_78:

              v55 = v78;
              goto LABEL_79;
            }

            v67 = +[NSError fm_timeoutError];
            (*(v74 + 16))(v74, v67);
          }

          else
          {
            v64 = sub_100002400();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              *v87 = 0;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "adding device to data store", v87, 2u);
            }

            dispatch_group_enter(v61);
            v65 = [FMDMagSafeAccessory alloc];
            v66 = [*(a1 + 32) physicalAccessory];
            v67 = [(FMDMagSafeAccessory *)v65 initWithPhysicalAccessory:v66 fmEnabled:1];

            [*(a1 + 32) setMagSafeAccessory:v67];
            v68 = +[FMDMagSafeDataStore sharedInstance];
            v81[0] = _NSConcreteStackBlock;
            v81[1] = 3221225472;
            v81[2] = sub_100008520;
            v81[3] = &unk_1000388A8;
            v83 = &v104;
            v69 = v61;
            v82 = v69;
            [v68 addAccessory:v67 withCompletion:v81];

            v70 = dispatch_time(0, 5000000000);
            v71 = dispatch_group_wait(v69, v70);
            if (*(v105[0] + 40) || v71)
            {
              v75 = sub_100002400();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                sub_10001E08C(v105);
              }

              v76 = *(a1 + 40);
              if (*(v105[0] + 40))
              {
                (*(v76 + 16))(v76);
              }

              else
              {
                v77 = +[NSError fm_timeoutError];
                (*(v76 + 16))(v76, v77);
              }
            }

            else
            {
              v72 = sub_100002400();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                *v87 = 0;
                _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Find My setup completed", v87, 2u);
              }

              (*(*(a1 + 40) + 16))();
            }
          }

          goto LABEL_78;
        }
      }
    }

    v45 = *(a1 + 40);
    v46 = [NSError errorWithMessage:@"Invalid register response"];
    (*(v45 + 16))(v45, v46);
LABEL_84:

    goto LABEL_85;
  }

  v43 = sub_100002400();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    sub_10001E08C(v105);
  }

  v44 = *(a1 + 40);
  if (!*(v105[0] + 40))
  {
    v46 = +[NSError fm_timeoutError];
    (*(v44 + 16))(v44, v46);
    goto LABEL_84;
  }

  (*(v44 + 16))(*(a1 + 40));
LABEL_85:

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&buf, 8);
}

void sub_100007F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose((v55 - 256), 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100007FC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "registerDeviceForPairingLock completed with error = %@ %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000080DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setupKeysWithCompletion completed with error = %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000081B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPairingData completed with error = %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100008294(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = sub_100002400();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setName completed with error = %@", &v11, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000839C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "pairingKeyUpdated with error = %@", &v4, 0xCu);
  }
}

void sub_100008448(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setName completed with error = %@", &v6, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100008520(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "add to data store completed with error = %@", &v6, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100008AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008B28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "operation cancelled", v3, 2u);
  }
}

void sub_100008E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008E50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "operation cancelled", v3, 2u);
  }
}

void sub_10000914C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009178(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "operation cancelled", v3, 2u);
  }
}

void sub_100009398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000093C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) accountState];
  if (v2 <= 3)
  {
    [WeakRetained progressFlowWithState:qword_100025E10[v2]];
  }
}

void sub_10000956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000099E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009A10(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] view];
  [v4 setUserInteractionEnabled:0];

  v5 = a1[4];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_PROX_CARD_ADDING" value:&stru_10003A130 table:0];
  [v5 showActivityIndicatorWithStatus:v7];

  if (([a1[5] isFindMyAppInstalled] & 1) == 0)
  {
    [a1[5] triggerFindMyAppInstallation];
  }

  v8 = a1[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009B4C;
  v9[3] = &unk_100038A08;
  objc_copyWeak(&v10, a1 + 6);
  [v8 enableFindMyWithCompletion:v9];
  objc_destroyWeak(&v10);
}

void sub_100009B4C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = sub_100002400();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001E1E8();
    }

    [WeakRetained progressFlowWithState:8];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100009C50;
    v6[3] = &unk_100038A08;
    objc_copyWeak(&v7, (a1 + 32));
    [WeakRetained setUpFindMyWithCompletion:v6];
    objc_destroyWeak(&v7);
  }
}

void sub_100009C50(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = sub_100002400();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001E258();
    }

    [v5 progressFlowWithState:8];
  }

  else
  {
    [WeakRetained postNotification:@"com.apple.icloud.findmydeviced.findkit.magSafe.added"];
    v7 = sub_100002400();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E2C8();
    }

    v8 = dispatch_time(0, 8000000000);
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009DA0;
    block[3] = &unk_100038780;
    block[4] = v5;
    dispatch_after(v8, v9, block);
  }
}

id sub_100009DA0(uint64_t a1)
{
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E308();
  }

  return [*(a1 + 32) progressFlowWithState:7];
}

void sub_10000A80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A884(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained progressFlowWithState:0];

  v3 = [*(a1 + 32) physicalAccessory];
  v4 = [v3 serialNumber];
  v5 = [NSString stringWithFormat:@"fmip1://device/device?sn=%@", v4];

  v6 = +[LSApplicationWorkspace defaultWorkspace];
  v7 = [NSURL URLWithString:v5];
  v9 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v10 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v6 openSensitiveURL:v7 withOptions:v8];
}

void sub_10000A9C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];
}

void sub_10000AD98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10000ADD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained progressFlowWithState:0];

  if (*(a1 + 48) == 1)
  {
    v3 = [NSString stringWithFormat:@"mailto:%@", *(a1 + 32)];
    v4 = [NSURLComponents componentsWithString:v3];
  }

  else
  {
    v4 = [NSURLComponents componentsWithString:@"sms://open"];
    v3 = [NSURLQueryItem queryItemWithName:@"address" value:*(a1 + 32)];
    v12 = v3;
    v5 = [NSArray arrayWithObjects:&v12 count:1];
    [v4 setQueryItems:v5];
  }

  v6 = +[NSError fm_genericError];
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [v4 URL];
  v11 = v6;
  [v7 openURL:v8 withOptions:0 error:&v11];
  v9 = v11;

  if (v9)
  {
    v10 = sub_100002400();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001E348();
    }
  }
}

void sub_10000AFA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"https://support.apple.com/kb/HT210982"];
  [v3 openURL:v2 withOptions:0];
}

void sub_10000B2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B2E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];
}

void sub_10000B44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B46C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "waiting to be implemented", v3, 2u);
  }
}

void sub_10000B91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000B948(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10000BA48;
  v9 = &unk_100038A80;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  SBSRequestPasscodeUnlockUI();
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "waiting for unlock", v5, 2u);
  }

  objc_destroyWeak(&v11);
}

void sub_10000BA48(uint64_t a1, int a2)
{
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SBSRequestPasscodeUnlockUI unlocked = %d", v8, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && ([*(a1 + 32) isLocked] & 1) == 0)
  {
    v7 = sub_100002400();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "device unlocked", v8, 2u);
    }

    [WeakRetained continueWithAccountValidationFlow];
  }

  else
  {
    [WeakRetained progressFlowWithState:0];
    v6 = sub_100002400();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device locked", v8, 2u);
    }
  }
}

void sub_10000BE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000BE44(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10000BF44;
  v9 = &unk_100038AA8;
  v10 = *(a1 + 32);
  objc_copyWeak(&v11, (a1 + 40));
  SBSRequestPasscodeUnlockUI();
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "waiting for unlock", v5, 2u);
  }

  objc_destroyWeak(&v11);
}

void sub_10000BF44(uint64_t a1, int a2)
{
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SBSRequestPasscodeUnlockUI unlocked = %d", v8, 8u);
  }

  if (a2 && ([*(a1 + 32) isLocked] & 1) == 0)
  {
    v7 = sub_100002400();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "device unlocked", v8, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained progressFlowWithState:10];
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 progressFlowWithState:0];

    WeakRetained = sub_100002400();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "device locked", v8, 2u);
    }
  }
}

void sub_10000C618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000C644(uint64_t a1)
{
  v2 = +[NSError fm_genericError];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v12 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v13 = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11 = v2;
  [v3 openSensitiveURL:v4 withOptions:v5 error:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = sub_100002400();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001E348();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v9 = sub_100002400();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "operation cancelled", v10, 2u);
  }
}

void sub_10000CA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CAB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained upgradeAccountButtonPressedOn:*(a1 + 32)];
}

void sub_10000CD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CD70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained progressFlowWithState:0];

  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "operation cancelled", v3, 2u);
  }
}

void sub_10000D580(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000D59C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_SET_UP_WALLET_LATER_TITLE" value:&stru_10003A130 table:0];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_SET_UP_WALLET_LATER_MESSAGE" value:&stru_10003A130 table:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_SET_UP_WALLET_LATER_CONFIRM" value:&stru_10003A130 table:0];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"MAGSAFE_PAIRING_UPSELL_ALERT_SET_UP_WALLET_LATER_CANCEL" value:&stru_10003A130 table:0];

    v13 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000D804;
    v16[3] = &unk_100038B18;
    v16[4] = *(a1 + 32);
    objc_copyWeak(&v17, (a1 + 40));
    v14 = [UIAlertAction actionWithTitle:v10 style:0 handler:v16];
    [v13 addAction:v14];
    v15 = [UIAlertAction actionWithTitle:v12 style:1 handler:0];
    [v13 addAction:v15];

    [v13 setPreferredAction:v14];
    [WeakRetained presentViewController:v13 animated:1 completion:0];

    objc_destroyWeak(&v17);
  }
}

void sub_10000D804(uint64_t a1)
{
  [*(a1 + 32) storeAccessoryAsNotFindmyEnabled:&stru_100038AF0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_10000D878(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001E3B8();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "storeAccessoryAsNotFindmyEnabled completed with success", v5, 2u);
  }
}

void sub_10000E338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E354(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = sub_100002400();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001E52C(v4);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#Installation of Find My started successfully.", buf, 2u);
    }

    v10 = 0;
    v8 = [IXAppInstallCoordinator existingCoordinatorForAppWithBundleID:@"com.apple.findmy" error:&v10];
    v7 = v10;
    if (v7)
    {
      v9 = sub_100002400();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001E5B0(v7);
      }
    }

    else
    {
      [WeakRetained setAppInstallCoordinator:v8];
    }
  }
}

void sub_10000E804(uint64_t a1)
{
  v2 = [*(a1 + 32) physicalAccessory];
  v3 = [v2 serialNumber];
  v4 = [FMDExtHelper deviceIDFromAddress:v3];

  [*(a1 + 32) _removeAccessoryToDataStoreWithID:v4];
  [*(a1 + 32) launchSettingsAppUpgradeFlow];
  [*(a1 + 32) progressFlowWithState:0];
}

uint64_t sub_10000EE0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void sub_10000EE1C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10000EE60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_10000EE80()
{
  if (qword_100045E20 != -1)
  {
    sub_10001E6AC();
  }

  v1 = qword_100045E28;

  return v1;
}

void sub_10000EEC4(id a1)
{
  qword_100045E28 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_10000EF08()
{
  if (qword_100045E30 != -1)
  {
    sub_10001E6C0();
  }

  v1 = qword_100045E38;

  return v1;
}

void sub_10000EF4C(id a1)
{
  qword_100045E38 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_10000EF90()
{
  if (qword_100045E40 != -1)
  {
    sub_10001E6D4();
  }

  v1 = qword_100045E48;

  return v1;
}

void sub_10000EFD4(id a1)
{
  qword_100045E48 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_10000F018()
{
  if (qword_100045E50 != -1)
  {
    sub_10001E6E8();
  }

  v1 = qword_100045E58;

  return v1;
}

void sub_10000F05C(id a1)
{
  qword_100045E58 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_10000F0A0()
{
  if (qword_100045E60 != -1)
  {
    sub_10001E6FC();
  }

  v1 = qword_100045E68;

  return v1;
}

void sub_10000F0E4(id a1)
{
  qword_100045E68 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_10000F128()
{
  if (qword_100045E70 != -1)
  {
    sub_10001E710();
  }

  v1 = qword_100045E78;

  return v1;
}

void sub_10000F16C(id a1)
{
  qword_100045E78 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_10000F1B0()
{
  if (qword_100045E80 != -1)
  {
    sub_10001E724();
  }

  v1 = qword_100045E88;

  return v1;
}

void sub_10000F1F4(id a1)
{
  qword_100045E88 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_10000F238()
{
  if (qword_100045E90 != -1)
  {
    sub_10001E738();
  }

  v1 = qword_100045E98;

  return v1;
}

void sub_10000F27C(id a1)
{
  qword_100045E98 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_10000F2C0()
{
  if (qword_100045EA0 != -1)
  {
    sub_10001E74C();
  }

  v1 = qword_100045EA8;

  return v1;
}

void sub_10000F304(id a1)
{
  qword_100045EA8 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_10000F348()
{
  if (qword_100045EB0 != -1)
  {
    sub_10001E760();
  }

  v1 = qword_100045EB8;

  return v1;
}

void sub_10000F38C(id a1)
{
  qword_100045EB8 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_10000F3D0()
{
  if (qword_100045EC0 != -1)
  {
    sub_10001E774();
  }

  v1 = qword_100045EC8;

  return v1;
}

void sub_10000F414(id a1)
{
  qword_100045EC8 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_10000F458()
{
  if (qword_100045ED0 != -1)
  {
    sub_10001E788();
  }

  v1 = qword_100045ED8;

  return v1;
}

void sub_10000F49C(id a1)
{
  qword_100045ED8 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_10000F4E0()
{
  if (qword_100045EE0 != -1)
  {
    sub_10001E79C();
  }

  v1 = qword_100045EE8;

  return v1;
}

void sub_10000F524(id a1)
{
  qword_100045EE8 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_10000F568()
{
  if (qword_100045EF0 != -1)
  {
    sub_10001E7B0();
  }

  v1 = qword_100045EF8;

  return v1;
}

void sub_10000F5AC(id a1)
{
  qword_100045EF8 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_10000F5F0()
{
  if (qword_100045F00 != -1)
  {
    sub_10001E7C4();
  }

  v1 = qword_100045F08;

  return v1;
}

void sub_10000F634(id a1)
{
  qword_100045F08 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_10000F678()
{
  if (qword_100045F10 != -1)
  {
    sub_10001E7D8();
  }

  v1 = qword_100045F18;

  return v1;
}

void sub_10000F6BC(id a1)
{
  qword_100045F18 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_10000F700()
{
  if (qword_100045F20 != -1)
  {
    sub_10001E7EC();
  }

  v1 = qword_100045F28;

  return v1;
}

void sub_10000F744(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_100045F28 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_100010344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001036C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010384(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CA getAccessoryUserName completed with error %@ %@", &v9, 0x16u);
  }

  if (!v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001077C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000107A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002400();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#CA getPairingStatus completed with error %@ %lu", &v8, 0x16u);
  }

  if (!v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100010C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA setPublicNVMKeyValues completed with error %@", &v6, 0xCu);
  }

  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setPairingData:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100010F20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v6;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA getPublicNVMKeyValues completed with error %@ %@", buf, 0x16u);
  }

  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(NSMutableData);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      v21 = a1;
      v22 = 0;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 description];
          v16 = [v5 objectForKeyedSubscript:v15];

          if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v17 = sub_100002400();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10001E800(v14, v16, v17);
            }

            a1 = v21;
            v6 = v22;
            goto LABEL_18;
          }

          [v8 appendData:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        a1 = v21;
        v6 = v22;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v18 = [[FMDRemoteUnlockPairingData alloc] initWithData:v8];
    [*(a1 + 40) setPairingData:v18];

    v19 = *(a1 + 48);
    v20 = [*(a1 + 40) pairingData];
    (*(v19 + 16))(v19, v20, 0);
  }
}

void sub_100011384(id *a1)
{
  v2 = [a1[4] connectionInfo];
  v3 = a1[5];
  v4 = [a1[4] endPointUUID];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001148C;
  v5[3] = &unk_100038E10;
  objc_copyWeak(&v8, a1 + 7);
  v6 = a1[5];
  v7 = a1[6];
  [v2 setAccessoryUserName:v3 forEndpoint:v4 withReply:v5];

  objc_destroyWeak(&v8);
}

void sub_10001148C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA set name completed with error %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setName:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000117A4(id *a1)
{
  v2 = [a1[4] connectionInfo];
  v3 = [a1[4] endPointUUID];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001188C;
  v4[3] = &unk_100038E88;
  objc_copyWeak(&v6, a1 + 6);
  v5 = a1[5];
  [v2 provisionAccessoryForFindMy:v3 withReply:v4];

  objc_destroyWeak(&v6);
}

void sub_10001188C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA set keys completed with error %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setIsNVMSetup:1];
    [v6 setKeysAvailable:1];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100011B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_100011B84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "### #CA completed with error %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setIsNVMSetup:0];
    [v6 setKeysAvailable:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100011D8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA beginVendorKeyErase completed with accessoryNonce %@  error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100011FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA continueVendorKeyErase completed with error %@", &v5, 0xCu);
  }

  if (!v3)
  {
    [*(a1 + 32) setIsNVMSetup:0];
    [*(a1 + 32) setKeysAvailable:0];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000121C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA copyUserPrivateKey completed with key = %@ error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000123C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA beginUserKeyErase completed with accessoryNonce %@  error %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100012608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA continueUserKeyErase completed with error %@", &v5, 0xCu);
  }

  if (!v3)
  {
    [*(a1 + 32) setIsNVMSetup:0];
    [*(a1 + 32) setKeysAvailable:0];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100012800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA cancelUserKeyErase completed with error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_1000129E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#CA cancelVendorKeyErase completed with error %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_100012EB0(id a1)
{
  v2 = +[FMSystemInfo sharedInstance];
  v1 = [v2 isInternalBuild];
  if (v1)
  {
    LOBYTE(v1) = [FMPreferencesUtil BOOLForKey:@"EnableMagSafeMocking" inDomain:kFMDNotBackedUpPrefDomain];
  }

  byte_100045F30 = v1;
}

void sub_100012F90(id a1)
{
  v1 = +[FMDAutomationHelperFactory sharedFactory];
  v2 = [v1 automationHelperClassWithName:@"FMDAutomationACCConnectionInfo"];

  qword_100045F40 = objc_alloc_init(v2);

  _objc_release_x1();
}

void sub_100013370(uint64_t a1)
{
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13 = 136315906;
    v14 = "[FMDCoreAccessoryManager accessoryConnectionAttached:type:info:properties:]_block_invoke";
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@ %@", &v13, 0x2Au);
  }

  v6 = [*(a1 + 56) cache];
  v7 = [v6 isCachedAccessoryWithUUID:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 56) cache];
    v9 = [v8 getAccessoryWithUUID:*(a1 + 32)];
  }

  else
  {
    v10 = [FMDMagSafeRawInfo alloc];
    v8 = [*(a1 + 56) connectionInfo];
    v9 = [(FMDMagSafeRawInfo *)v10 initWithConnectionInfo:v8];
  }

  v11 = v9;

  [(FMDMagSafeRawInfo *)v11 updateWithProperties:*(a1 + 48)];
  [(FMDMagSafeRawInfo *)v11 updateWithAccessoryInfo:*(a1 + 40)];
  [(FMDMagSafeRawInfo *)v11 setConnectionUUID:*(a1 + 32)];
  v12 = [*(a1 + 56) cache];
  [v12 saveAccessory:v11 withUUID:*(a1 + 32)];
}

void sub_10001361C(uint64_t a1)
{
  v2 = sub_100002400();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    *v20 = "[FMDCoreAccessoryManager accessoryEndpointAttached:transportType:protocol:properties:forConnection:]_block_invoke";
    *&v20[8] = 2112;
    *&v20[10] = v3;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#CA %s %@ %@", buf, 0x20u);
  }

  v5 = [*(a1 + 48) cache];
  v6 = [v5 getAccessoryWithUUID:*(a1 + 32)];

  [v6 updateWithProperties:*(a1 + 40)];
  [v6 setEndPointUUID:*(a1 + 56)];
  [v6 setProtocol:*(a1 + 64)];
  [v6 setTransportType:*(a1 + 68)];
  v7 = [*(a1 + 48) cache];
  [v7 accessoryDidUpdateWithUUID:*(a1 + 32)];

  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 64);
    v10 = @"eACCEndpoint_Protocol_MFi4Auth";
    if (v9 != 14)
    {
      v10 = @"unexpected";
    }

    *buf = 67109378;
    *v20 = v9;
    *&v20[4] = 2112;
    *&v20[6] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CA protocol =  %u %@", buf, 0x12u);
  }

  v11 = sub_100002400();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 68);
    v13 = @"eACCEndpoint_TransportType_NFC";
    if (v12 != 13)
    {
      v13 = @"unexpected";
    }

    *buf = 67109378;
    *v20 = v12;
    *&v20[4] = 2112;
    *&v20[6] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#CA transportType =  %u %@", buf, 0x12u);
  }

  if (![v6 isMF4i] || objc_msgSend(v6, "authPassed"))
  {
    v14 = dispatch_get_global_queue(0, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100013944;
    v17[3] = &unk_100038858;
    v17[4] = *(a1 + 48);
    v18 = v6;
    dispatch_async(v14, v17);
  }

  v15 = sub_100002400();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 48) accessoryRawInfo];
    *buf = 138412290;
    *v20 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "dict = %@", buf, 0xCu);
  }
}

void sub_100013944(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) serialNumber];
  [v3 accessoryDidConnect:v2];
}

void sub_100013AF4(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v3 = [v2 getAccessoryWithUUID:*(a1 + 40)];
  v4 = [v3 serialNumber];

  v5 = sub_100002400();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA current magsafe accessory disconnected  %@", buf, 0xCu);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100013C74;
  v12 = &unk_100038858;
  v13 = *(a1 + 32);
  v14 = v4;
  v7 = v4;
  dispatch_async(v6, &v9);

  v8 = [*(a1 + 32) cache];
  [v8 deleteAccessoryWithUUID:*(a1 + 40)];
}

void sub_100013C74(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryDidDisconnect:*(a1 + 40)];
}

void sub_100013FF8(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v3 = [v2 getAccessoryWithUUID:*(a1 + 40)];

  if (v3)
  {
    if ([v3 isMF4i])
    {
      if (([v3 authPassed] & 1) == 0)
      {
        [v3 updateWithProperties:*(a1 + 48)];
        v4 = [*(a1 + 32) cache];
        [v4 accessoryDidUpdateWithUUID:*(a1 + 40)];

        if ([v3 authPassed])
        {
          v11[0] = 0;
          v11[1] = v11;
          v11[2] = 0x3042000000;
          v11[3] = sub_1000141B8;
          v11[4] = sub_1000141C4;
          objc_initWeak(&v12, *(a1 + 32));
          v5 = [*(a1 + 32) connectionInfo];
          v6 = *(a1 + 40);
          v7[0] = _NSConcreteStackBlock;
          v7[1] = 3221225472;
          v7[2] = sub_1000141CC;
          v7[3] = &unk_100039A08;
          v8 = v3;
          v10 = v11;
          v9 = *(a1 + 40);
          [v5 accessoryInfoForConnection:v6 withReply:v7];

          _Block_object_dispose(v11, 8);
          objc_destroyWeak(&v12);
        }
      }
    }
  }
}

void sub_100014198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_1000141CC(uint64_t a1)
{
  [*(a1 + 32) updateWithAccessoryInfo:?];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  v3 = [WeakRetained cache];
  [v3 accessoryDidUpdateWithUUID:*(a1 + 40)];

  v4 = dispatch_get_global_queue(0, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000142B8;
  v5[3] = &unk_1000399E0;
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  dispatch_async(v4, v5);
}

void sub_1000142B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v2 = [WeakRetained delegate];
  v3 = [*(a1 + 32) serialNumber];
  [v2 accessoryDidConnect:v3];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_100014DE8(id a1)
{
  qword_100045F50 = objc_opt_new();

  _objc_release_x1();
}

uint64_t sub_100016458(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100017904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 176), 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000179CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000179E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getPairingDataWithCompletion completed with error = %@ %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100017AF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "beginUserKeyEraseWithCompletion return with accessoryNonce = %@ error = %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100017C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getAuthNonceWithCompletion return with accessoryNonce = %@ error = %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100017D20(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v8 = sub_100002400();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(*(*(a1 + 40) + 8) + 40) phoneNumber];
    v10 = [*(*(*(a1 + 40) + 8) + 40) serverNonce];
    v11 = [*(*(*(a1 + 40) + 8) + 40) signature];
    v12 = [*(*(*(a1 + 40) + 8) + 40) statusCode];
    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "got pairingCheckResponseInfo %@ %@ %@ %@", &v13, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100017EB8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100017F18(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100017F78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "continueUserKeyErase return with serverNounce = %@ error = %@", &v9, 0x16u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void sub_100018064(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "vendorKeyErase return with serverNonce = %@ error = %@", &v9, 0x16u);
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v8 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void sub_100018A10(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Lost Mode key roll time updated for %@ to %@ with error = %@", &v12, 0x20u);
  }

  if (!v3)
  {
    v7 = [NSMutableArray arrayWithArray:a1[6]];
    [v7 removeObject:a1[4]];
    v8 = +[FMDMagSafeDataStore sharedInstance];
    v9 = [v8 readLostModeAccessoriesListVersion];

    v10 = +[FMDMagSafeDataStore sharedInstance];
    v11 = [v10 writeLostModeInfo:v7 version:v9];
  }
}

void sub_100018B60(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100002400();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "pairingKeyUpdated with error = %@", &v4, 0xCu);
  }
}

void sub_100018E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100018E60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  v10 = sub_100002400();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setName completed with error = %@", &v11, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001918C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002400();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPairingData completed with error = %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000195E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100019624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "registerDeviceForPairingLock completed with error = %@ %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100019960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100019988(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002400();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getPairingDataWithCompletion completed with error = %@ %@", &v14, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
  v13 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001A064(id a1)
{
  qword_100045F60 = objc_alloc_init(FMDMagSafeDataStore);

  _objc_release_x1();
}

void sub_10001A300(uint64_t a1)
{
  v2 = [*(a1 + 32) _writeAccessoriesToDisk:&__NSDictionary0__struct];
  v3 = [*(a1 + 32) writeLostModeInfo:&__NSArray0__struct version:&stru_10003A130];
  v4 = +[NSFileManager defaultManager];
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() deprecatedStorageLocation];
  [v4 removeItemAtURL:v6 error:0];

  v9 = +[NSFileManager defaultManager];
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() deprecatedLostModeStorageLocation];
  [v9 removeItemAtURL:v8 error:0];
}

void sub_10001A4CC(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v5 = *(a1 + 40);
  v6 = [v5 accessoryIdentifier];
  [v4 setObject:v5 forKeyedSubscript:v6];

  v7 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A600;
  v11[3] = &unk_100039BB0;
  v9 = *(a1 + 48);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_10001A6EC(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  [v4 removeObjectForKey:*(a1 + 40)];
  v5 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001A804;
  v9[3] = &unk_100039BB0;
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_10001A8F0(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v26 = a1;
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v35 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v25 = v4;
    v8 = 0;
    v9 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 serialNumbers];
        v13 = [v12 objectForKeyedSubscript:@"systemSerialNumber"];
        v14 = [v13 isEqualToString:*(v26 + 40)];

        if (v14)
        {
          v15 = [v11 accessoryIdentifier];

          v8 = v15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v7);

    v4 = v25;
    if (v8)
    {
      v16 = sub_10000F1B0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v26 + 40);
        *buf = 138412546;
        v37 = v17;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMDMagSafeDataSource: removing accessory with serialNumber %@ accessoryId = %@", buf, 0x16u);
      }

      [v25 removeObjectForKey:v8];
      v18 = [*(v26 + 32) _writeAccessoriesToDisk:v25];
      v19 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001AC9C;
      block[3] = &unk_100039BB0;
      v20 = *(v26 + 48);
      v30 = v18;
      v31 = v20;
      v21 = v18;
      dispatch_async(v19, block);

      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = sub_10000F1B0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v26 + 40);
    *buf = 138412290;
    v37 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "FMDMagSafeDataSource: No magsafe accessory with serialNumber %@ found", buf, 0xCu);
  }

  v24 = dispatch_get_global_queue(0, 0);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001ACB0;
  v27[3] = &unk_100039C00;
  v28 = *(v26 + 48);
  dispatch_async(v24, v27);

  v8 = v28;
LABEL_18:
}

void sub_10001B4B4(uint64_t a1)
{
  v2 = [NSMutableDictionary alloc];
  v3 = [*(a1 + 32) readAllAccessoriesFromDisk];
  v4 = [v2 initWithDictionary:v3];

  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = v5;
  if (v5)
  {
    [v5 setLastLostModeKeyRollTime:*(a1 + 48)];
    v7 = [*(a1 + 32) _writeAccessoriesToDisk:v4];
  }

  else
  {
    v8 = sub_10000EE80();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001F034(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v7 = +[NSError fm_genericError];
  }

  v16 = v7;
  v17 = dispatch_get_global_queue(0, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10001B62C;
  v20[3] = &unk_100039BB0;
  v18 = *(a1 + 56);
  v21 = v16;
  v22 = v18;
  v19 = v16;
  dispatch_async(v17, v20);
}

uint64_t sub_10001B62C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10001B804(id a1)
{
  v1 = NSStringFromSelector("pairingCheckToken");
  v7[0] = v1;
  v2 = NSStringFromSelector("lostModePrivateKey");
  v7[1] = v2;
  v3 = NSStringFromSelector("phoneNumber");
  v7[2] = v3;
  v4 = NSStringFromSelector("keysUpdated");
  v7[3] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:4];
  v6 = qword_100045F70;
  qword_100045F70 = v5;
}

void sub_10001C6D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10001D590(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id *sub_10001D8A0(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = result;
    v6 = (a2 + a3);
    do
    {
      v7 = *v6++;
      result = [v5[4] appendFormat:@"%02lx", v7];
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_10001D918(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find class %@ in the automation bundle", &v2, 0xCu);
}

void sub_10001D9A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#PARSING invalid or no mask in maskInfo %@", &v2, 0xCu);
}

void sub_10001DA1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#PARSING invalid or no pattern in maskInfo %@", &v2, 0xCu);
}

void sub_10001DB6C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [*(a1 + 40) absoluteString];
  v6 = [a2 URL];
  v7 = [v6 absoluteString];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "FMDRemoteAsset: asset validation failed. requestURL = %@, responseURL = %@", &v8, 0x16u);
}

void sub_10001DCB4()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DD24()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DD60()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DD9C()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001DE0C()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DE48()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001DE84(void *a1, NSObject *a2)
{
  [a1 magSafeState];
  sub_10000EE48();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "not starting magSafe flow setup with state = %lu", v3, 0xCu);
}

void sub_10001DF0C(uint64_t a1)
{
  sub_10000EE0C(a1, __stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v1, v2, "Failed to add device with error = %@ waitError = %ld");
}

void sub_10001DF74(uint64_t a1)
{
  sub_10000EE0C(a1, __stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v1, v2, "Failed to set name with error = %@ waitError = %ld");
}

void sub_10001DFDC(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "setting up pairing data %@ %@", buf, 0x16u);
}

void sub_10001E050()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E08C(uint64_t a1)
{
  sub_10000EE0C(a1, __stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v1, v2, "Find My setup failed with error = %@ %ld");
}

void sub_10001E0F4()
{
  sub_10000EE48();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "user %@! %@!", v2, 0x16u);
}

void sub_10001E178()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E1E8()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E258()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E348()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E3B8()
{
  sub_10000EE48();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E428(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unlock state is %i", v2, 8u);
}

void sub_10001E4A0(int *a1)
{
  v6 = *a1;
  sub_10000EE3C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10001E52C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000EE48();
  sub_10000EE60(&_mh_execute_header, v2, v3, "#Installation of Find My failed. error: %@", v4, v5, v6, v7, v8);
}

void sub_10001E5B0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_10000EE48();
  sub_10000EE60(&_mh_execute_header, v2, v3, "#Failed to fetch install coordinator for Find My error: %@", v4, v5, v6, v7, v8);
}

void sub_10001E634()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E670()
{
  sub_10000EE54();
  sub_10000EE3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E800(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "no data or corrupted data found at key = %@ data = %@", &v3, 0x16u);
}

void sub_10001E908(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "got unexpected lostModeInfo = %@", &v2, 0xCu);
}

void sub_10001E980(uint64_t a1)
{
  sub_10000EE0C(a1, __stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v1, v2, "Find My pairing check failed with error = %@ %ld");
}

void sub_10001E9E8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "cancelErase api time out with error = %ld", &v2, 0xCu);
}

void sub_10001EA60(void *a1, NSObject *a2)
{
  v4 = [a1 pairingCheckToken];
  v5 = [v4 fm_hexString];
  v6 = [a1 phoneNumber];
  v7 = [v6 fm_hexString];
  v8 = [a1 keysUpdated];
  v9 = [v8 fm_hexString];
  v10 = [a1 lostModePrivateKey];
  v11 = [v10 fm_hexString];
  v12 = 138413058;
  v13 = v5;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = v11;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "pairingCheckToken = %@\nphoneNumber = %@\nkeysUpdated = %@\nlostModePrivateKey = %@", &v12, 0x2Au);
}

void sub_10001EBB4(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 fm_hexString];
  v6 = [a2 fm_hexString];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "setting up pairing data %@ %@", &v7, 0x16u);
}

void sub_10001EC78(void *a1, NSObject *a2)
{
  v3 = [a1 serialNumber];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to update pairing data for %@", &v4, 0xCu);
}

void sub_10001ED10(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid registerResponse = %@ %@", buf, 0x16u);
}

void sub_10001ED80(uint64_t a1)
{
  sub_10000EE0C(a1, __stack_chk_guard);
  sub_10000EDF4();
  sub_10000EE1C(&_mh_execute_header, v1, v2, "fetching pairingData failed with errror = %@ timeout error =  %ld");
}

void sub_10001EDE8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not migrate existing file %{public}@.", &v2, 0xCu);
}

void sub_10001EE60(os_log_t log)
{
  v1 = 138543362;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not delete existing file after migration %{public}@.", &v1, 0xCu);
}

void sub_10001EF34(uint64_t a1, NSObject *a2)
{
  v3 = [objc_opt_class() defaultStorageLocation];
  sub_10000EE48();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "read magSafe data store from %@", v4, 0xCu);
}

void sub_10001F0B8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to decode corrupted data = %@", &v2, 0xCu);
}

void sub_10001F130(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "encoded data = %@", &v2, 0xCu);
}

void sub_10001F2B8(void *a1)
{
  [a1 length];
  v1 = sub_10001D5E4();
  SecKeyGetBlockSize(v1);
  sub_10001D5B0();
  sub_10001D590(&_mh_execute_header, v2, v3, "### message size two big %lu >= %lu", v4, v5, v6, v7, v8);
}

void sub_10001F344(void *a1)
{
  [a1 userInfo];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_10001D5E4() localizedDescription];
  sub_10001D5CC();
  sub_10001D590(&_mh_execute_header, v3, v4, "### error = %@, %@", v5, v6, v7, v8, v9);
}

void sub_10001F498(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Hex strings should have an even number of digits (%@)", &v2, 0xCu);
}

void sub_10001F510(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "MAC address should be 6 bytes (%@)", &v2, 0xCu);
}