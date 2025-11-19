void sub_1000015A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];

  v9 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v10 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v9];

  v11 = [NSString stringWithFormat:@"%@=%@", v8, v10];

  [*(a1 + 32) addObject:v11];
}

void sub_1000021D8(uint64_t a1, uint64_t a2)
{
  v4 = [NSString stringWithUTF8String:"CarrierSpaceOAuthResult"];
  v8[0] = @"status_domain";
  v5 = [NSNumber numberWithInt:a1];
  v8[1] = @"status_code";
  v9[0] = v5;
  v6 = [NSNumber numberWithInteger:a2];
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  AnalyticsSendEvent();
}

void sub_1000022DC(void *a1)
{
  v14 = a1;
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = [NSNumber numberWithInt:2];
  v3 = [v14 error];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:NSCocoaErrorDomain];

    if (v6)
    {
      if ([v4 code] == 3840)
      {
        v7 = [NSNumber numberWithInt:3];
        if (v7)
        {
          goto LABEL_7;
        }
      }
    }
  }

  v8 = [v14 errorDescription];

  if (v8)
  {
    v9 = [v14 errorDescription];
    [v1 setObject:v9 forKeyedSubscript:@"oauth_error"];

    v7 = [NSNumber numberWithInt:2];
    if (v7)
    {
LABEL_7:
      v10 = v7;
LABEL_11:
      [v1 setObject:v2 forKeyedSubscript:@"status_domain"];
      [v1 setObject:v10 forKeyedSubscript:@"status_code"];
      v13 = [NSString stringWithUTF8String:"CarrierSpaceOAuthResult"];
      AnalyticsSendEvent();

      goto LABEL_12;
    }
  }

  if ([v14 statusCode] == 200)
  {
    goto LABEL_12;
  }

  v11 = [NSNumber numberWithInt:3];

  v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 statusCode]);
  if (v12)
  {
    v10 = v12;
    v2 = v11;
    goto LABEL_11;
  }

  v2 = v11;
LABEL_12:
}

uint64_t sub_100002600(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

id sub_100002CBC()
{
  if (qword_100015DD8 != -1)
  {
    sub_100005750();
  }

  v1 = qword_100015DD0;

  return v1;
}

void sub_100002D00(id a1)
{
  qword_100015DD0 = os_log_create("com.apple.carrierspaceauth", "log");

  _objc_release_x1();
}

id *sub_1000031C0(id *result, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    return [result[4] _presentAlertController:1];
  }

  return result;
}

void sub_10000333C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10000336C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100003414;
    v4[3] = &unk_100010450;
    v5 = WeakRetained;
    [v3 userDidAcceptPlanTerms:1 completion:v4];
  }
}

id sub_100003414(uint64_t a1)
{
  result = [*(a1 + 32) _loadAuthUrl];
  if ((result & 1) == 0)
  {
    v3 = sub_100002CBC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unable to load auth URL after user accepted plan terms", v4, 2u);
    }

    return [*(a1 + 32) _deactivate];
  }

  return result;
}

void sub_100003494(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10000353C;
    v4[3] = &unk_100010450;
    v5 = WeakRetained;
    [v3 userDidAcceptPlanTerms:0 completion:v4];
  }
}

void sub_100003D94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100003DB0(uint64_t a1)
{
  v2 = sub_100002CBC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notified that we have exited auth flow, going to dismiss alert", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100003E90;
    v5[3] = &unk_1000104E0;
    v6 = WeakRetained;
    [v6 dismissViewControllerAnimated:1 completion:v5];
  }
}

id sub_100003E90(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 dismiss];

  v2 = UIApp;

  return [v2 terminateWithSuccess];
}

void sub_1000040DC(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v1 = [v2 window];
  [v1 makeKeyAndVisible];
}

id sub_1000042C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004334;
  v3[3] = &unk_100010450;
  v3[4] = v1;
  return [v1 _sendAuthFailure:9 completion:v3];
}

void sub_10000433C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) visibleViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

id sub_10000448C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 name];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_1000045F8(uint64_t a1)
{
  v4 = [*(a1 + 32) _getValueFromContextForKey:@"kCTCarrierSpaceCarrierName"];
  v2 = [AlertControllerFactory alertControllerWithBiometryType:*(a1 + 48) forCarrier:v4 completion:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 8) visibleViewController];
  [v3 presentViewController:v2 animated:1 completion:0];
}

id sub_100004910(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setShouldCache:a2];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004998;
  v6[3] = &unk_100010450;
  v6[4] = v3;
  return [v3 _sendAuthInfo:v4 completion:v6];
}

void sub_100004B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004B98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = [[AuthTokenResponse alloc] initWithData:v11 urlResponse:v7 error:v8];
    [WeakRetained _handleTokenResponse:v10];
  }
}

id sub_100005238(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000052AC;
  v3[3] = &unk_100010450;
  v3[4] = v1;
  return [v1 _sendAuthFailure:10 completion:v3];
}

void sub_100005730(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100005764(void *a1)
{
  v1 = [a1 error];
  sub_100005718();
  sub_100005730(&_mh_execute_header, v2, v3, "Auth code exchange failed with error: %@", v4, v5, v6, v7, v8);
}

void sub_1000057E8()
{
  sub_100005718();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received unexpected redirect URL '%@', expected '%@'", v2, 0x16u);
}

void sub_10000586C()
{
  sub_100005724();
  sub_10000570C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000058A8()
{
  sub_100005724();
  sub_10000570C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000058E4()
{
  sub_100005724();
  sub_10000570C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100005920()
{
  sub_100005718();
  sub_10000570C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005990()
{
  sub_100005724();
  sub_10000570C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000059CC()
{
  sub_100005718();
  sub_10000570C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100005A3C(void *a1)
{
  [a1 statusCode];
  sub_100005718();
  sub_100005730(&_mh_execute_header, v1, v2, "Server returned error in response: %ld", v3, v4, v5, v6, v7);
}