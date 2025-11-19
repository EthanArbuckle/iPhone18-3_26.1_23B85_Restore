_BYTE *sub_10000122C(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_100001610(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 3;
  *(result + 1) = 2;
  *(result + 2) = 65;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 65;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t sub_100001F64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_100001FA4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [location[0] actions];
  v8 = 0;
  v7 = 1;
  if ([v6 count])
  {
    v9 = [location[0] informativeText];
    v8 = 1;
    v7 = v9 == 0;
  }

  *(*(a1[4] + 8) + 24) = v7;
  if (v8)
  {
  }

  if (*(*(a1[4] + 8) + 24))
  {
    *a4 = 1;
  }

  objc_storeStrong(location, 0);
}

void sub_100002244(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100001F64(v8, location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to update follow up synchronization date: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&location, 0);
}

uint64_t sub_100003A10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 112;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

void sub_100003A90(uint64_t a1, char a2)
{
  v17 = a1;
  v16 = a2;
  v15 = a1;
  v6 = [*(a1 + 32) identifier];
  v7 = 0;
  if ([v6 isEqualToString:@"continuity_push_followup_notification"])
  {
    v7 = v16;
  }

  if (v7)
  {
    v4 = *(a1 + 40);
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_100003C2C;
    v12 = &unk_1000103D0;
    v13 = *(a1 + 64);
    v14 = v16 & 1;
    [v4 _handleAuthKitAction:@"open" forItem:v2 telemetryFlowID:v3 completion:&v8];
    objc_storeStrong(&v13, 0);
  }

  else if (*(a1 + 64))
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100003C2C(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40) & 1;
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

uint64_t sub_100003CAC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

void sub_100003CFC(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100003D7C(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100003CAC(v8, *(a1 + 32), location);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to open handle url for follow up item: %@, with error:%@", v8, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100003EC4(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100003F44(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v6)
  {
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100001F64(v8, *(a1 + 32));
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to open local url for follow up item: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  objc_storeStrong(&location, 0);
}

void sub_1000045A0(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v47 = 0;
  objc_storeStrong(&v47, a3);
  v46[1] = a1;
  objc_storeStrong((*(a1 + 32) + 48), location[0]);
  v3 = [location[0] url];
  v4 = (*(a1 + 32) + 32);
  v5 = *v4;
  *v4 = v3;

  if (*(*(a1 + 32) + 32))
  {
    if (*(a1 + 96))
    {
      v43 = +[NSMutableDictionary dictionary];
      [v43 setObject:*(a1 + 40) forKeyedSubscript:@"urlKey"];
      [v43 setObject:*(a1 + 48) forKeyedSubscript:AKActionKey];
      v18 = [*(a1 + 56) uniqueIdentifier];
      [v43 setObject:? forKeyedSubscript:?];

      v19 = [*(a1 + 64) userInfo];
      v42 = [v19 objectForKeyedSubscript:@"AKFollowUpAppleAccountRootKey"];

      v20 = [AKURLBag bagForAltDSID:*(a1 + 72)];
      v41 = [v20 urlAtKey:v42];

      if (!v41)
      {
        v40 = _AKLogSystem();
        v39 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v40;
          v17 = v39;
          sub_10000122C(v38);
          _os_log_impl(&_mh_execute_header, v16, v17, "Failed to find root redirect url for continuity action, using default root url.", v38, 2u);
        }

        objc_storeStrong(&v40, 0);
        v6 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&aaaction=IDMSUrl"];
        v7 = v41;
        v41 = v6;
      }

      v14 = *(a1 + 32);
      v15 = [v41 absoluteString];
      v37 = [v14 _URLWithString:? byAppendingParameters:?];

      v36 = _AKLogSystem();
      v35 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_100001F64(v49, v37);
        _os_log_debug_impl(&_mh_execute_header, v36, v35, "Redirecting follow up action to url :%@", v49, 0xCu);
      }

      objc_storeStrong(&v36, 0);
      v12 = *(a1 + 32);
      v11 = v37;
      v13 = [*(a1 + 64) identifier];
      v29 = _NSConcreteStackBlock;
      v30 = -1073741824;
      v31 = 0;
      v32 = sub_100004CD4;
      v33 = &unk_100010420;
      v34 = *(a1 + 88);
      [v12 _handleSensitiveURL:v11 withActionIdentifier:v13 completion:&v29];

      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
      objc_storeStrong(&v43, 0);
    }

    else if (*(*(a1 + 32) + 32))
    {
      [*(a1 + 32) _prepareAuthContextForAltDSID:*(a1 + 72) telemetryFlowID:*(a1 + 80)];
      v10 = *(a1 + 32);
      v8 = v10[2];
      v9 = *(a1 + 56);
      v23 = _NSConcreteStackBlock;
      v24 = -1073741824;
      v25 = 0;
      v26 = sub_100004D58;
      v27 = &unk_100010498;
      v28 = *(a1 + 88);
      [v10 _refreshServerUIDelegateWithParentContext:v8 item:v9 completion:&v23];
      objc_storeStrong(&v28, 0);
    }

    else if (*(a1 + 88))
    {
      (*(*(a1 + 88) + 16))();
    }

    v44 = 0;
  }

  else
  {
    v46[0] = _AKLogSystem();
    v45 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v46[0], OS_LOG_TYPE_ERROR))
    {
      sub_100001F64(v50, *(a1 + 40));
      _os_log_error_impl(&_mh_execute_header, v46[0], v45, "Failed to find urlKey %@ in the bag, cannot launch server UI.", v50, 0xCu);
    }

    objc_storeStrong(v46, 0);
    if (*(a1 + 88))
    {
      (*(*(a1 + 88) + 16))();
    }

    v44 = 1;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

void sub_100004CD4(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100004D58(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_100005000(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6)
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100003CAC(v8, *(a1 + 32), v6);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Failed to open process FollowUp URL %@ with error: %@", v8, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

void sub_10000566C(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18 = 0;
  objc_storeStrong(&v18, a3);
  v17[1] = a1;
  v3 = [location[0] url];
  v4 = (*(a1 + 32) + 32);
  v5 = *v4;
  *v4 = v3;

  if (*(*(a1 + 32) + 32))
  {
    v8 = *(a1 + 32);
    v6 = v8[4];
    v7 = *(a1 + 40);
    v12 = _NSConcreteStackBlock;
    v13 = -1073741824;
    v14 = 0;
    v15 = sub_1000058E4;
    v16 = &unk_100010420;
    v17[0] = *(a1 + 56);
    [v8 _handleSensitiveURL:v6 withActionIdentifier:v7 completion:&v12];
    objc_storeStrong(v17, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100001F64(v20, *(a1 + 48));
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to find urlKey %@ in the bag.", v20, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (*(a1 + 56))
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void sub_1000058E4(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100006328(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void sub_1000063B0(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), 0);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void sub_100006454(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15[1] = a1;
  v15[0] = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15[0], OS_LOG_TYPE_DEBUG))
  {
    if (v17)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    sub_100003CAC(v19, v3, location);
    _os_log_debug_impl(&_mh_execute_header, v15[0], v14, "Followup teardown is complete with success: %@, error: %@", v19, 0x16u);
  }

  objc_storeStrong(v15, 0);
  v8 = [*(a1 + 32) uniqueIdentifier];
  v9 = 0;
  if ([v8 isEqualToString:AKFollowUpVerifyPrimaryEmailIdentifier])
  {
    v7 = 1;
    if (([*(a1 + 40) isEqualToString:AKActionTeardown] & 1) == 0)
    {
      v7 = [*(a1 + 40) isEqualToString:AKActionDelete];
    }

    v9 = v7;
  }

  if (v9)
  {
    v13 = _AKLogSystem();
    v12 = 2;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v5 = v13;
      v6 = v12;
      sub_10000122C(v11);
      _os_log_debug_impl(&_mh_execute_header, v5, v6, "Primary email verification completed, notifying the world!", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    notify_post([AKEmailVerificationCompletedNotificationKey UTF8String]);
    v4 = +[AKAccountManager sharedInstance];
    [(AKAccountManager *)v4 updateVerifiedEmail:1 forAccountWithAltDSID:*(a1 + 48)];
  }

  if (!location && (([*(a1 + 40) isEqualToString:AKActionTeardown] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isEqualToString:", AKActionDelete) & 1) != 0))
  {
    [*(a1 + 56) _fetchUserInformationIfNeededForAltDSID:*(a1 + 48) completion:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), 0);
  objc_storeStrong(&location, 0);
}

void sub_100006C9C(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((a1[4] + 8), location[0]);
  [*(a1[4] + 8) setBagUrlKey:*(a1[4] + 40)];
  (*(a1[5] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100006F08(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    sub_100001F64(v5, location[0]);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Finished showing server UI: %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa finishProcessing];
  objc_storeStrong(location, 0);
}

void sub_1000072A4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25[1] = a1;
  [a1[4] _updateAccountUsernameWithHarvestedData:v27];
  if ([*(a1[4] + 1) isResponseFinalForHSA2ServerFlow:location[0]])
  {
    v7 = a1[4];
    v6 = v27;
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_100007558;
    v22 = &unk_1000105D8;
    v23 = a1[4];
    v24 = location[0];
    v25[0] = a1[5];
    [v7 _startCDPRepairWithAdditionalData:v6 completion:&v18];
    objc_storeStrong(v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    v5 = a1[4];
    v4 = location[0];
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = sub_100007840;
    v15 = &unk_100010470;
    v17 = a1[5];
    v16 = v26;
    [v5 _handleFinalServerResponse:v4 completion:&v11];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void sub_100007558(uint64_t a1, char a2, id obj)
{
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16[1] = a1;
  if ((v18 & 1) == 0)
  {
    v16[0] = +[AKCDPFactory followUpRepairContext];
    [v16[0] setRepairType:2];
    v5 = +[AKCDPFactory followUpController];
    [v5 postFollowUpWithContext:v16[0] error:0];

    v15 = _AKLogSystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100001F64(v20, location);
      _os_log_error_impl(&_mh_execute_header, v15, v14, "Posted CDP repair follow up in response to error: %@", v20, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(v16, 0);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000077CC;
  v11 = &unk_100010470;
  v13 = *(a1 + 48);
  v12 = location;
  [v4 _handleFinalServerResponse:v3 completion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000077CC(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_100007840(uint64_t a1, char a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&location, 0);
}

void sub_1000078B4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a1;
  v4 = [*(a1[4] + 1) isAuthenticationRequired:location[0]];
  v20 = 0;
  v18 = 0;
  v9 = 1;
  if ((v4 & 1) == 0)
  {
    v21 = [v23 userInfo];
    v20 = 1;
    v19 = [v21 objectForKeyedSubscript:@"statusCode"];
    v18 = 1;
    v9 = [v19 isEqual:&off_100010A88];
  }

  if (v18)
  {
  }

  if (v20)
  {
  }

  if (v9)
  {
    v5 = a1[4];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100007B88;
    v14 = &unk_100010628;
    v17 = a1[6];
    v15 = a1[4];
    v16 = a1[5];
    [v5 _reauthenticateContext:&v10];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    (*(a1[6] + 2))();
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void sub_100007B88(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 32) _beginServerUIRequest:*(a1 + 40) completion:*(a1 + 48)];
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_100007F30(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_1000081DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18[1] = a1;
  if (v19 || ([*(*(a1 + 32) + 8) isAuthenticationRequired:location[0]] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 8), "isResponseActionable:", location[0]) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v18[0] = objc_alloc_init(AKAppleIDAuthenticationContext);
    [v18[0] _updateWithValuesFromContext:*(*(a1 + 32) + 16)];
    [v18[0] setAnticipateEscrowAttempt:1];
    v6 = *(*(a1 + 32) + 24);
    v4 = location[0];
    v5 = v18[0];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100008484;
    v14 = &unk_100010678;
    v17 = *(a1 + 40);
    v15 = location[0];
    v16 = v20;
    [v6 updateStateWithExternalAuthenticationResponse:v4 forContext:v5 completion:&v10];
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(v18, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void sub_100008484(void *a1, char a2, id obj)
{
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (v7)
  {
    v3 = a1[4];
    v4 = a1[5];
  }

  (*(a1[6] + 16))();
  objc_storeStrong(&location, 0);
}

void sub_10000883C(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v16 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v16;
    sub_10000122C(v15);
    _os_log_debug_impl(&_mh_execute_header, log, type, "Starting iCDP repair...", v15, 2u);
  }

  objc_storeStrong(location, 0);
  v5 = [*(*(a1 + 32) + 56) userInfo];
  v14 = [v5 objectForKeyedSubscript:AKFollowUpAltDSIDKey];

  v13 = [*(a1 + 40) objectForKeyedSubscript:AKAuthenticationRawPasswordKey];
  v12 = [AKCDPFactory contextForAltDSID:v14];
  if (v12)
  {
    [v12 setPassword:v13];
    v10 = [AKCDPFactory stateControllerWithContext:v12];
    v9 = 0;
    v1 = [AKCDPFactory cdpUIControllerWithPresentingViewController:*(a1 + 32)];
    v2 = v9;
    v9 = v1;

    [v10 setUiProvider:v9];
    [v10 repairCloudDataProtectionStateWithCompletion:*(a1 + 48)];
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  else
  {
    if (*(a1 + 48))
    {
      v3 = *(a1 + 48);
      v4 = [NSError ak_errorWithCode:-7114];
      (*(v3 + 16))(v3, 0);
    }

    v11 = 1;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
}

void sub_100008DB4(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) _refreshServerUIDelegateWithParentContext:*(*(a1 + 32) + 16) item:*(*(a1 + 32) + 56) completion:*(a1 + 40)];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void sub_100009058(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  if (v8)
  {
    v7[0] = _AKLogSystem();
    v6 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v7[0], OS_LOG_TYPE_ERROR))
    {
      sub_100001F64(v11, v8);
      _os_log_error_impl(&_mh_execute_header, v7[0], v6, "Failed to fetch user information, error: %@", v11, 0xCu);
    }

    objc_storeStrong(v7, 0);
    (*(a1[4] + 16))();
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100001F64(v10, location[0]);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Successfully fetched user information: %@", v10, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

uint64_t sub_1000097D4(uint64_t a1)
{
  v16 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v10 = qword_100014A50;
  v15 = qword_100014A50;
  if (!qword_100014A50)
  {
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_1000098E8;
    v7 = &unk_100010770;
    v8 = &v11;
    v9 = v16;
    sub_1000098E8(&v3);
  }

  v2 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v2;
}

uint64_t sub_1000098E8(uint64_t a1)
{
  memcpy(__dst, off_100010740, sizeof(__dst));
  v1 = *(a1 + 40);
  v2 = _sl_dlopen();
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014A50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000099A8()
{
  v2 = 0;
  v1 = sub_1000097D4(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

id sub_100009A24()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100014A58;
  v13 = qword_100014A58;
  if (!qword_100014A58)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100009B54;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_100009B54(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100009B54(uint64_t a1)
{
  sub_1000099A8();
  Class = objc_getClass("FLFollowUpAction");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100014A58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100009BFC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100014A60;
  v13 = qword_100014A60;
  if (!qword_100014A60)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100009D2C;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_100009D2C(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100009D2C(uint64_t a1)
{
  sub_1000099A8();
  Class = objc_getClass("FLFollowUpController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100014A60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100009DD4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100014A68;
  v13 = qword_100014A68;
  if (!qword_100014A68)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100009F04;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_100009F04(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_100009F04(uint64_t a1)
{
  sub_1000099A8();
  Class = objc_getClass("FLFollowUpItem");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100014A68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100009FAC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100014A70;
  v13 = qword_100014A70;
  if (!qword_100014A70)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000A0DC;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000A0DC(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10000A0DC(uint64_t a1)
{
  sub_1000099A8();
  Class = objc_getClass("FLFollowUpNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100014A70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000A184()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100014A78;
  v13 = qword_100014A78;
  if (!qword_100014A78)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000A2B4;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000A2B4(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10000A2B4(uint64_t a1)
{
  sub_1000099A8();
  Class = objc_getClass("FLHSA2LoginNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100014A78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000A35C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_100014A80;
  v13 = qword_100014A80;
  if (!qword_100014A80)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000A48C;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000A48C(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t sub_10000A48C(uint64_t a1)
{
  sub_1000099A8();
  Class = objc_getClass("FLHSA2PasswordResetNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  qword_100014A80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000A534()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014A88;
  v13 = qword_100014A88;
  if (!qword_100014A88)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000A63C;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000A63C(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000A63C(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLGroupIdentifierAccount");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014A88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000A6A8()
{
  v2 = sub_10000A534();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10000A710()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014A90;
  v13 = qword_100014A90;
  if (!qword_100014A90)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000A818;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000A818(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000A818(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLGroupIdentifierNoGroup");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014A90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000A884()
{
  v2 = sub_10000A710();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10000A8EC()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014A98;
  v13 = qword_100014A98;
  if (!qword_100014A98)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000A9F4;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000A9F4(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000A9F4(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLNotificationOptionForce");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014A98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000AA60()
{
  v2 = sub_10000A8EC();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10000AAC8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014AA0;
  v13 = qword_100014AA0;
  if (!qword_100014AA0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000ABD0;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000ABD0(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000ABD0(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLNotificationOptionSpringboardAlert");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014AA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000AC3C()
{
  v2 = sub_10000AAC8();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10000ACA4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014AA8;
  v13 = qword_100014AA8;
  if (!qword_100014AA8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000ADAC;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000ADAC(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000ADAC(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLNotificationOptionSpringboardAlertActionOnly");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014AA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000AE18()
{
  v2 = sub_10000ACA4();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10000AE80()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014AB0;
  v13 = qword_100014AB0;
  if (!qword_100014AB0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000AF88;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000AF88(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000AF88(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLHSA2ActionChangePassword");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014AB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000AFF4()
{
  v2 = sub_10000AE80();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10000B05C()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014AB8;
  v13 = qword_100014AB8;
  if (!qword_100014AB8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000B164;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000B164(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000B164(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLNotificationOptionExtensionForNotification");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014AB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000B1D0()
{
  v2 = sub_10000B05C();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10000B238()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014AC0;
  v13 = qword_100014AC0;
  if (!qword_100014AC0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000B340;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000B340(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000B340(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLNotificationOptionExtensionActions");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014AC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000B3AC()
{
  v2 = sub_10000B238();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

uint64_t sub_10000B414()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_100014AC8;
  v13 = qword_100014AC8;
  if (!qword_100014AC8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10000B51C;
    v6 = &unk_100010798;
    v7 = &v9;
    sub_10000B51C(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t sub_10000B51C(uint64_t a1)
{
  v1 = sub_1000099A8();
  v2 = dlsym(v1, "FLNotificationOptionBannerAlert");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  qword_100014AC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_10000B588()
{
  v2 = sub_10000B414();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}