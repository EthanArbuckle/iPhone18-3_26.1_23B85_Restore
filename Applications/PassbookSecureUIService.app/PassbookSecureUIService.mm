int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_autoreleasePoolPop(v5);
  LODWORD(argv) = UIApplicationMain(argc, argv, v7, v9);

  return argv;
}

void sub_1000014A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000014C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000014DC(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && PKPaymentTransactionShouldAuthenticateForMechanism())
  {
    v5 = [v6 authenticationContext];
    *(WeakRetained + 5) = [v5 paymentPINFormat];

    objc_storeStrong(WeakRetained + 4, a2);
    [*(WeakRetained + 20) registerObserver:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100001664(uint64_t a1)
{
  *(*(a1 + 32) + 136) = *(a1 + 48);
  if ([*(a1 + 32) isViewLoaded])
  {
    [*(a1 + 32) _transitionToState:2];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100001E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001E48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _footerButtonPressed];
}

void sub_1000026C8(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100002778;
  v1[3] = &unk_10000C438;
  objc_copyWeak(&v2, (a1 + 32));
  [UIView pkui_animateUsingOptions:4 animations:v1 completion:0];
  objc_destroyWeak(&v2);
}

void sub_100002778(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[12] setAlpha:1.0];
    WeakRetained = v2;
  }
}

void sub_100002864(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) identifier];
  v4 = v2;
  v5 = v3;
  v12 = v5;
  if (v4 == v5)
  {

LABEL_10:
    v9 = a1 + 32;
    v8 = *(a1 + 32);
    v10 = *(v9 + 8);
    v11 = *(v8 + 32);
    *(v8 + 32) = v10;
    goto LABEL_11;
  }

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [v4 isEqualToString:v5];

    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_11:

  _objc_release_x1();
}

void sub_100002F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 48));
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 104));
  _Unwind_Resume(a1);
}

void sub_100002FB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = PKAnalyticsSubjectSecureUIService;
    v4[0] = PKAnalyticsReportEventKey;
    v4[1] = PKAnalyticsReportButtonTagKey;
    v5[0] = PKAnalyticsReportEventTypeButtonTap;
    v5[1] = PKAnalyticsReportResetPaymentPINCancelButtonTag;
    v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
    [PKAnalyticsReporter subject:v2 sendEvent:v3];

    [WeakRetained[23] becomeFirstResponder];
  }
}

void sub_1000030B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = PKAnalyticsSubjectSecureUIService;
    v11[0] = PKAnalyticsReportEventKey;
    v11[1] = PKAnalyticsReportButtonTagKey;
    v4 = *(a1 + 32);
    v12[0] = PKAnalyticsReportEventTypeButtonTap;
    v12[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [PKAnalyticsReporter subject:v3 sendEvent:v5];

    [WeakRetained _transitionToState:1];
    v6 = WeakRetained[21];
    if ([v6 isInstalled])
    {
      v7 = WeakRetained[20];
      v8 = [WeakRetained[2] uniqueID];
      v9 = [v7 transactionsAppLaunchTokenForPassWithUniqueIdentifier:v8];

      v10 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:WeakRetained[4] excludeTransactionIdentifier:1 pass:WeakRetained[2] pathSuffix:@"/resetPaymentCredential" appLaunchToken:v9];
    }

    else
    {
      v10 = 0;
    }

    [v6 openApplication:*(a1 + 40) withLaunchOptions:1 launchURL:v10];
  }
}

id sub_10000330C(uint64_t a1)
{
  [*(a1 + 32) _encryptPasscodeInput];
  v2 = *(a1 + 32);

  return [v2 _transitionToState:1];
}

void sub_100003610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000362C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003704;
  v6[3] = &unk_10000C500;
  objc_copyWeak(&v7, (a1 + 40));
  [WeakRetained _encryptPIN:v5 withCertificates:v3 completion:v6];
  objc_destroyWeak(&v7);
}

void sub_100003704(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 22);
    [v5 passcodeViewController:v4 didGenerateEncryptedPasscode:v6];
  }
}

void sub_10000388C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000038A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  if (!v3)
  {
    v8 = objc_loadWeakRetained(WeakRetained + 22);
    [v8 passcodeViewControllerDidEndSessionExchange:v5];

LABEL_5:
    (*(*(a1 + 40) + 16))();
    goto LABEL_6;
  }

  v6 = WeakRetained[20];
  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000039E0;
  v9[3] = &unk_10000C550;
  objc_copyWeak(&v11, (a1 + 48));
  v10 = *(a1 + 40);
  [v6 retrievePINEncryptionCertificateForPassUniqueIdentifier:v7 sessionExchangeToken:v3 withCompletion:v9];

  objc_destroyWeak(&v11);
LABEL_6:
}

void sub_1000039E0(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 22);
    [v5 passcodeViewControllerDidEndSessionExchange:v4];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003BC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100003BE0(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  if (!v3)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 22);
    [v6 passcodeViewControllerDidEndSessionExchange:v5];

LABEL_5:
    (*(a1[6] + 2))();
    goto LABEL_6;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003D34;
  v7[3] = &unk_10000C5A0;
  objc_copyWeak(&v11, a1 + 7);
  v10 = a1[6];
  v8 = a1[4];
  v9 = a1[5];
  [PKSecureElement accessSecureElementManagerSessionWithSessionExchangeToken:v3 handler:v7];

  objc_destroyWeak(&v11);
LABEL_6:
}

void sub_100003D34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = WeakRetained[4];
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = PKEncryptTransactionAuthenticationPasscodeWithSession();
      v10 = 0;
      if (v10)
      {
        v11 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to encrypt PIN with error %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v12 = objc_loadWeakRetained(v5 + 22);
    [v12 passcodeViewControllerDidEndSessionExchange:v5];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100004444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004460(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000457C;
      block[3] = &unk_10000C5F0;
      block[4] = WeakRetained;
      v10 = *(a1 + 32);
      dispatch_async(&_dispatch_main_q, block);

      goto LABEL_9;
    }

    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PIN view service failed to preflight collect passcode vc.", v8, 2u);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

LABEL_9:
}

uint64_t sub_10000457C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = v2[1];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 setViewControllers:v3 animated:1];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100004704(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}