void sub_22F4(uint64_t a1)
{
  v2 = +[PSListController appearance];
  v3 = [v2 textColor];

  v4 = +[PSListController appearance];
  v5 = [v4 altTextColor];

  v6 = +[PSListController appearance];
  v7 = [v6 footerHyperlinkColor];

  v8 = +[PSListController appearance];
  v9 = [v8 cellAccessoryColor];

  v10 = +[PKTableViewCell appearance];
  [v10 setCheckmarkAccessoryColor:v7];

  v11 = +[PKTableViewCell appearance];
  [v11 setCustomAccessoryColor:v9];

  v12 = +[PKPaymentTransactionTableCell appearance];
  [v12 setPrimaryColor:v3];

  v13 = +[PKPaymentTransactionTableCell appearance];
  [v13 setSecondaryColor:v5];

  v14 = +[PKLinkedAppView appearance];
  [v14 setMainLabelColor:v3];

  v15 = +[PKLinkedAppView appearance];
  [v15 setSubTextLabelColor:v5];

  v16 = *(a1 + 32);
  v24 = objc_opt_class();
  v17 = [NSArray arrayWithObjects:&v24 count:1];
  v18 = [UIActivityIndicatorView appearanceWhenContainedInInstancesOfClasses:v17];
  [v18 setColor:v3];

  v23 = objc_opt_class();
  v19 = [NSArray arrayWithObjects:&v23 count:1];
  v20 = [UIActivityIndicatorView appearanceWhenContainedInInstancesOfClasses:v19];
  [v20 setColor:v3];

  v21 = +[PKSoftwareUpdateTableView appearance];
  [v21 setLinkColor:v7];

  v22 = +[PKSoftwareUpdateTableView appearance];
  [v22 setTextColor:v3];
}

void sub_36D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_3704(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained settingsController];
    [v4 addCardTapped];
  }

  result = *(a1 + 32);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_3AFC(uint64_t a1)
{
  v1 = [*(a1 + 32) settingsController];
  [v1 refreshPasses];
}

void sub_3E30(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: Telling settings controller to refresh passes following reload", v6, 2u);
    }
  }

  v5 = [*(a1 + 32) settingsController];
  [v5 refreshPasses];
}

uint64_t sub_4614(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) _handleProvisioningPreflightFinishedWithSuccess:1 displayableError:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_4BAC(uint64_t a1)
{
  if ([*(a1 + 32) supportsBarcodePayment])
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 32) uniqueID];
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: Presenting barcodePayment pass %@. Checking if there are existing pending transactions.", &v8, 0xCu);
      }
    }

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) uniqueID];
    [v6 _setupPendingTransactionHandlerForPassWithUniqueID:v7];
  }
}

uint64_t sub_5174(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_53E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v11 = *(*(a1 + 40) + 16);
LABEL_12:
    v11();
    goto LABEL_13;
  }

  v8 = [v6 domain];
  v9 = AKAppleIDAuthenticationErrorDomain;
  if ([v8 isEqual:AKAppleIDAuthenticationErrorDomain])
  {
    v10 = [v7 code];

    if (v10 == -7003)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = [v7 domain];
  if (![v12 isEqual:v9])
  {

    goto LABEL_11;
  }

  v13 = [v7 code];

  if (v13 != -7005)
  {
LABEL_11:
    v11 = *(*(a1 + 40) + 16);
    goto LABEL_12;
  }

  v14 = PKLocalizedPaymentString(@"COULD_NOT_CONNECT_TITLE");
  v15 = PKLocalizedPaymentString(@"COULD_NOT_CONNECT_MESSAGE");
  v16 = [UIAlertController alertControllerWithTitle:v14 message:v15 preferredStyle:1];
  v17 = PKLocalizedString(@"OK_BUTTON_TITLE");
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_5608;
  v19[3] = &unk_2C7C8;
  v20 = *(a1 + 40);
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v19];
  [v16 addAction:v18];

  [*(a1 + 32) presentViewController:v16 animated:0 completion:0];
LABEL_13:
}

void sub_59B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_59D4(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundPreflightingTaskIdentifier];
  v3 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 == v3)
  {
    [*(a1 + 32) setBackgroundPreflightingTaskIdentifier:UIBackgroundTaskInvalid];
    v3 = *(*(*(a1 + 48) + 8) + 24);
  }

  v4 = *(a1 + 40);

  return [v4 endBackgroundTask:v3];
}

void sub_5CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v13 = a2;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Notice: reported success %d reported error %@", buf, 0x12u);
    }
  }

  v9 = [*(a1 + 32) paymentSetupDelegate];
  v10 = [v9 companionAgentConnection];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_5E60;
  v11[3] = &unk_2C6C0;
  v11[4] = *(a1 + 32);
  [v10 noteProvisioningPreflightCompleteWithSuccess:a2 error:v5 completion:v11];
  [*(a1 + 32) setPerformingBackgroundPreflight:0];
}

void sub_5E68(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  if (a2)
  {
    v7 = v5;
    v6 = PKDisplayableErrorForCommonType();

    v5 = v6;
  }

  v8 = v5;
  (*(*(a1 + 40) + 16))();
}

void sub_604C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Bring to foreground error %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v4);
  }
}

void sub_65CC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) provisioningController];
    v10 = *(a1 + 40);
    v4 = [NSArray arrayWithObjects:&v10 count:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_6758;
    v8[3] = &unk_2C8B8;
    v5 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v3 removeExpressPassesWithUniqueIdentifiers:v4 visibleViewController:v5 completion:v8];
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = [NSError errorWithDomain:NPKErrorDomain code:-1005 userInfo:0];
    (*(v6 + 16))(v6, 0);
  }
}

void sub_6758(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSError errorWithDomain:NPKErrorDomain code:-1000 userInfo:0];
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_6BF8(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: user accepted disabling express mode for conflicting pass with unique ID %@", &v7, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t sub_6CDC(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: NPKPassbookBridgeSettingsController: user rejected disabling express mode for conflicting pass with unique ID %@", &v7, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_72E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_7304(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = pk_Payment_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Payment_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138412802;
        v21 = v14;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] Fetched pending transaction info for pass: %@, transaction: %@, token: %@", buf, 0x20u);
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_74CC;
    v15[3] = &unk_2C930;
    v16 = v8;
    v17 = WeakRetained;
    v18 = v7;
    v19 = v9;
    dispatch_async(&_dispatch_main_q, v15);
  }
}

void sub_74CC(id *a1)
{
  if (a1[4])
  {
    objc_storeStrong(a1[5] + 3, a1[6]);
    objc_storeStrong(a1[5] + 4, a1[4]);
    objc_storeStrong(a1[5] + 5, a1[7]);
    v2 = a1[5];

    [v2 _setupLinkedApplication];
  }

  else
  {
    v3 = [a1[5] delegate];
    [v3 pendingTransactionHandlerDidComplete:a1[5]];
  }
}

void sub_7B84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_7BD0(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] User confirmed the pending transaction alert.", v17, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v20 = PKAnalyticsSubjectBridge;
    v6 = [NSArray arrayWithObjects:&v20 count:1];
    v18[0] = PKAnalyticsReportEventKey;
    v18[1] = PKAnalyticsReportButtonTagKey;
    v7 = *(a1 + 32);
    v19[0] = PKAnalyticsReportEventTypeButtonTap;
    v19[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    [PKAnalyticsReporter subjects:v6 sendEvent:v8];

    if (*(a1 + 48) == 1)
    {
      v9 = [WeakRetained transaction];
      v10 = [WeakRetained pass];
      v11 = [WeakRetained appLaunchToken];
      v12 = [PKPaymentNotificationAppURLHelper appURLForTransactionNotification:v9 excludeTransactionIdentifier:0 pass:v10 pathSuffix:@"/authenticate" appLaunchToken:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = [WeakRetained delegate];
    v14 = [v13 presentingViewControllerForPendingTransactionHandler:WeakRetained];

    v15 = [WeakRetained linkedApplication];
    [v15 openApplication:v14 withLaunchOptions:0 launchURL:v12];

    v16 = [WeakRetained delegate];
    [v16 pendingTransactionHandlerDidComplete:WeakRetained];
  }
}

void sub_7E34(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: [PendingTransactionHandler] User canceled the pending transaction alert.", v9, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = PKAnalyticsSubjectBridge;
    v6 = [NSArray arrayWithObjects:&v12 count:1];
    v10[0] = PKAnalyticsReportEventKey;
    v10[1] = PKAnalyticsReportButtonTagKey;
    v11[0] = PKAnalyticsReportEventTypeButtonTap;
    v11[1] = PKAnalyticsReportApplicationRedirectCancelButtonTag;
    v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    [PKAnalyticsReporter subjects:v6 sendEvent:v7];

    v8 = [WeakRetained delegate];
    [v8 pendingTransactionHandlerDidComplete:WeakRetained];
  }
}

void sub_7FC8(uint64_t a1)
{
  v4 = [*(a1 + 32) companionAgentConnection];
  v2 = [*(a1 + 32) pass];
  v3 = [v2 uniqueID];
  [v4 markPendingTransactionAsProcessedForPassWithUniqueID:v3];
}

void sub_8390(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingExpressPassesConfigurations];

  if (v2)
  {
    v3 = pk_Payment_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_Payment_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: Received %@. Clearing any pending pendingExpressPassesConfiguration.", &v7, 0xCu);
      }
    }

    [*(a1 + 32) setPendingExpressPassesConfigurations:0];
  }
}

void sub_85DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_8688;
  v6[3] = &unk_2C9D0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_8688(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_8B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: finish delete transaction with identifier:%@ error:%@", &v8, 0x16u);
    }
  }
}

uint64_t sub_8EBC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_91F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_9304(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_9450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_946C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 paymentNetworkIdentifier] == &stru_20.flags + 3 || objc_msgSend(v5, "paymentNetworkIdentifier") == &dword_C + 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_9EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_9F08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [*(a1 + 32) _dismissInstructionViewController:WeakRetained];
    WeakRetained = v5;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, WeakRetained);
  }

  return _objc_release_x1();
}

void sub_A030(uint64_t a1)
{
  v3 = [[UINavigationController alloc] initWithRootViewController:*(a1 + 32)];
  v2 = [v3 navigationBar];
  BPSApplyStyleToNavBar();

  [*(a1 + 40) presentViewController:v3 animated:1 completion:0];
}

void sub_A844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A894(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_A8AC(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: setExpressWithPassInformation: instruction view controller cancellation handler called", v9, 2u);
      }
    }

    v5 = *(*(*(a1 + 64) + 8) + 24);
    v6 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v7 = [*(a1 + 32) paymentSetupDelegate];
    v8 = [v7 targetDevice];

    [v8 cancelOutstandingSetDefaultExpressPassRequestsWithExpressMode:*(a1 + 40)];
  }
}

void sub_A9B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AA8C;
  block[3] = &unk_2CB58;
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v14 = *(a1 + 56);
  v15 = a2;
  v9 = *(a1 + 40);
  v7 = v9;
  v13 = v9;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_AA8C(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(*(a1 + 56) + 8) + 40);
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: setExpressWithPassInformation: updated pendingExpressPassesInformation: %@", &v8, 0xCu);
      }
    }

    [*(a1 + 40) setPendingExpressPassesConfigurations:*(*(*(a1 + 56) + 8) + 40)];
  }

  *(*(*(a1 + 64) + 8) + 24) = *(a1 + 72) == 1;
  v6 = *(a1 + 48);
  return [*(a1 + 40) _handleSetExpressPassResult:? forInstructionViewController:?];
}

uint64_t sub_B230(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: removeExpressPassesWithUniqueIdentifiers: instruction view controller cancellation handler called", v6, 2u);
      }
    }

    v5 = v1[4];
    result = (*(v1[5] + 16))();
    *(*(v1[6] + 8) + 24) = 1;
  }

  return result;
}

void sub_B2FC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    if (!v5 && (a2 & 1) == 0)
    {
      v7 = pk_Payment_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_Payment_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v13 = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: removeExpressPassWithUniqueIdentifier: updated pendingExpressPassesInformation: %@", buf, 0xCu);
        }
      }

      [*(a1 + 32) setPendingExpressPassesConfigurations:0];
      v6 = *(a1 + 40);
    }

    (*(*(a1 + 56) + 16))();
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  if (a2)
  {
    [*(a1 + 32) _dismissInstructionViewController:*(a1 + 48)];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_B4AC;
    block[3] = &unk_2C6C0;
    v11 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_B768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_B790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained navigationController];
    v4 = [v3 presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = [*(a1 + 32) paymentSetupDelegate];
    v6 = [v5 targetDevice];

    [v6 cancelOutstandingEnableServiceModeRequests];
    WeakRetained = v7;
  }
}

void sub_B83C(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B8E4;
  block[3] = &unk_2CC48;
  v6 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_B8E4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return [*(a1 + 32) handleEnableServiceModeUnlockRequired];
  }

  else
  {
    return [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_BCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 72));
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_BD54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  if (*(a1 + 32) && !*(v7 + 24))
  {
    *(v7 + 24) = 1;
    (*(*(a1 + 32) + 16))();
  }

  else if (*(v7 + 24))
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Warning: Completion block has already been called, not calling again", v11, 2u);
      }
    }
  }
}

void sub_BE40(uint64_t a1)
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) uniqueID];
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: User canceled upgrade request for pass with uniqueID:%@", &v11, 0xCu);
    }
  }

  v6 = [NSError errorWithDomain:NPKErrorDomain code:-1005 userInfo:0];
  (*(*(a1 + 56) + 16))();
  objc_copyWeak(&v11, (a1 + 64));
  v7 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained(&v11);
  [v7 _dismissInstructionViewController:WeakRetained];

  v9 = [*(a1 + 40) paymentSetupDelegate];
  v10 = [v9 targetDevice];
  [v10 cancelOutstandingRemotePassUpdateRequest:*(a1 + 48) pass:*(a1 + 32)];

  objc_destroyWeak(&v11);
}

void sub_BFE4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) uniqueID];
      v16 = NSStringFromNPKRemotePassUpgradeStatus();
      *buf = 138413058;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v10;
      v39 = 2112;
      v40 = v9;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Notice: Received Remote pass upgrade updated for  pass with uniqueID:%@ received, Status:%@ updatedPass:%@ error:%@", buf, 0x2Au);
    }
  }

  objc_copyWeak(&to, (a1 + 72));
  if (v9)
  {
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_C2EC;
    v26 = &unk_2CD10;
    v27 = *(a1 + 40);
    objc_copyWeak(&v31, &to);
    v28 = *(a1 + 48);
    v29 = v9;
    v30 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, &v23);

    objc_destroyWeak(&v31);
    v17 = v27;
  }

  else
  {
    v18 = *(a1 + 48);
    v17 = objc_loadWeakRetained(&to);
    [v18 _dismissInstructionViewController:v17];
  }

  if (((a5 != 2) & ~(v9 != 0)) == 0)
  {
    if (*(a1 + 56))
    {
      (*(*(a1 + 64) + 16))(*(a1 + 64), v9, v10, v19);
      if (v11)
      {
        v20 = pk_Payment_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v22 = pk_Payment_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v11;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Notice: passUpgradeWithRequest: updated pendingExpressPassesInformation: %@", buf, 0xCu);
          }
        }

        [*(a1 + 48) setPendingExpressPassesConfigurations:{v11, v23, v24, v25, v26}];
      }
    }
  }

  objc_destroyWeak(&to);
}

void sub_C2EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained((a1 + 64));
    v6 = [v5 navigationController];
    v7 = [v6 presentationController];
    if (v7)
    {
      v8 = v7;
      v9 = objc_loadWeakRetained((a1 + 64));
      v10 = [v9 navigationController];
      v11 = [v10 isBeingDismissed];

      if ((v11 & 1) == 0)
      {
        v12 = objc_loadWeakRetained((a1 + 64));
        v39[0] = _NSConcreteStackBlock;
        v39[1] = 3221225472;
        v39[2] = sub_C788;
        v39[3] = &unk_2CCE8;
        v39[4] = *(a1 + 40);
        objc_copyWeak(&v40, (a1 + 64));
        v13 = objc_retainBlock(v39);
        objc_destroyWeak(&v40);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = v2;
  v13 = 0;
LABEL_7:
  v14 = [*(a1 + 48) domain];
  v15 = [v14 isEqualToString:NPKErrorDomain];

  v16 = *(a1 + 48);
  if (v15)
  {
    v17 = [v16 code];
    if (v17 == -1005)
    {
      v31 = *(a1 + 40);
      v18 = objc_loadWeakRetained((a1 + 64));
      [v31 _dismissInstructionViewController:v18];
      goto LABEL_27;
    }

    if (v17 == -1001)
    {
      v38 = *(a1 + 40);
      v18 = [NSBundle bundleForClass:objc_opt_class()];
      v27 = [v18 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_TITLE" value:&stru_2D300 table:@"NanoPassKit"];
      v28 = [NSBundle bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_MESSAGE" value:&stru_2D300 table:@"NanoPassKit"];
      v30 = [*(a1 + 40) _errorAcknowledgeButtonTitle];
      [v38 _presentErrorWithTitle:v27 message:v29 acknowledgeButtonTitle:v30 visibleViewController:v12 dismissBlock:v13];

      goto LABEL_27;
    }

    if (v17 == -1004)
    {
      v18 = objc_loadWeakRetained((a1 + 64));
      [v18 handleSetExpressPassUnlockRequired];
      goto LABEL_27;
    }

    v32 = pk_General_log();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

    if (v33)
    {
      v34 = pk_General_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 48);
        *buf = 138412290;
        v42 = v35;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Notice: remote pass upgraded received unknown error: %@", buf, 0xCu);
      }
    }

    v21 = *(a1 + 40);
    v18 = [v21 _errorSetExpressModeTitle];
    v22 = [*(a1 + 40) _errorSetExpressModeMessageWithPass:*(a1 + 56)];
LABEL_26:
    v36 = v22;
    v37 = [*(a1 + 40) _errorAcknowledgeButtonTitle];
    [v21 _presentErrorWithTitle:v18 message:v36 acknowledgeButtonTitle:v37 visibleViewController:v12 dismissBlock:v13];

    goto LABEL_27;
  }

  v19 = [v16 domain];
  v20 = [v19 isEqualToString:NSURLErrorDomain];

  if (v20)
  {
    v21 = *(a1 + 40);
    v18 = PKLocalizedPaymentString(@"COULD_NOT_CONNECT_TITLE");
    v22 = PKLocalizedPaymentString(@"COULD_NOT_CONNECT_MESSAGE");
    goto LABEL_26;
  }

  v23 = pk_General_log();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

  if (v24)
  {
    v25 = pk_General_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 48);
      *buf = 138412290;
      v42 = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Notice: remote pass upgraded received unknown error: %@", buf, 0xCu);
    }
  }

  v18 = objc_loadWeakRetained((a1 + 64));
  [v18 handleSetExpressPassError];
LABEL_27:
}

void sub_C788(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _dismissInstructionViewController:WeakRetained];
}

void sub_CDB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Telling delegate %@ about %@ transaction service", &v8, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 40) didEnableTransactionService:*(a1 + 48)];
  }
}

void sub_D034(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Telling delegate %@ about received transaction", &v7, 0xCu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 transactionSourceIdentifier:*(a1 + 32) didReceiveTransaction:*(a1 + 40)];
  }
}

void sub_D29C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Telling delegate %@ about removed transaction", &v7, 0xCu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 transactionSourceIdentifier:*(a1 + 32) didRemoveTransactionWithIdentifier:*(a1 + 40)];
  }
}

void sub_D504(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) displayableTransitBalance];
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Telling delegate %@ about transit pass properties with balance %@", &v8, 0x16u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 40) didUpdateWithTransitPassProperties:*(a1 + 32)];
  }
}

void sub_D78C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Telling delegate %@ about balances", &v7, 0xCu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didReceiveBalanceUpdate:*(a1 + 40)];
  }
}

void sub_DA20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Telling delegate %@ about balance reminder", &v11, 0xCu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) identifiers];
    v10 = [v9 anyObject];
    [v3 paymentPassWithUniqueIdentifier:v7 didUpdateBalanceReminder:v8 forBalanceWithIdentifier:v10];
  }
}

void sub_DD9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Telling delegate %@ about updated shares", &v7, 0xCu);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 sharesDidUpdateWithPaymentPassWithUniqueIdentifier:*(a1 + 32)];
  }
}

void sub_DFEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentPassWithUniqueIdentifier:*(a1 + 32) didEnableMessageService:*(a1 + 40)];
  }
}

uint64_t sub_E158(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 40);
  if (a2)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v11 = v5;
    v8 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(a1 + 32) context:4];
    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v11 = v5;
    v8 = [*(a1 + 32) alertForDisplayableError:v5];
    v9 = *(v7 + 16);
  }

  v9();

  v6 = v11;
LABEL_7:

  return _objc_release_x1(v5, v6);
}

uint64_t sub_E3E4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 40);
  if (a2)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v11 = v5;
    v8 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(a1 + 32) context:4];
    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v11 = v5;
    v8 = [*(a1 + 32) alertForDisplayableError:v5];
    v9 = *(v7 + 16);
  }

  v9();

  v6 = v11;
LABEL_7:

  return _objc_release_x1(v5, v6);
}

uint64_t sub_EF54(void *a1)
{
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: dismissed error with title%@ message:%@", &v8, 0x16u);
    }
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_F9E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_FA04(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = WeakRetained;
    [WeakRetained _setCurrentScreen:v4];
    WeakRetained = v5;
  }
}

void sub_FB2C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Restricting settings to shield", v4, 2u);
  }

  [*(a1 + 32) _setCurrentScreen:3];
  v3 = +[UIApplication sharedApplication];
  [v3 _updateSnapshotForBackgroundApplication:1];
}

void sub_106D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10D6C(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  NPKGuaranteeMainThread();
  objc_destroyWeak(&v1);
}

void sub_10DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_10E0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endPasscodeChangeWithPasscodeChanged:0 error:0];
}

void sub_10EF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10F10(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v5;
  v8 = a2;
  NPKGuaranteeMainThread();

  objc_destroyWeak(&v7);
}

void sub_10FDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained _endPasscodeChangeWithPasscodeChanged:0 error:?];
  }

  else if (*(a1 + 48) == 1)
  {
    v3 = [WeakRetained instructionViewController];
    [v3 handleChangePasscodeUnlockRequired];
  }

  else
  {
    [WeakRetained _startPasscodeChange];
  }
}

uint64_t sub_11140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a5);
  }

  return result;
}

void sub_1125C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_11280(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543874;
      v16 = v11;
      v17 = 2048;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Completed passcode prompt with passcodeChanged: %ld error: %@", buf, 0x20u);
    }
  }

  objc_copyWeak(&v13, (a1 + 32));
  v14 = a2;
  v12 = v5;
  NPKGuaranteeMainThread();

  objc_destroyWeak(&v13);
}

void sub_11438(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _endPasscodeChangeWithPasscodeChanged:*(a1 + 48) error:*(a1 + 32)];
}

void sub_1161C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_11640(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = pk_Payment_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Payment_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138543874;
      v13 = v11;
      v14 = 2048;
      v15 = a2;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Cancelled passcode prompt with passcodeChanged: %ld error: %@", &v12, 0x20u);
    }
  }
}

void sub_11ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_11AF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained pendingAction] == &dword_0 + 2)
  {
    [WeakRetained _endPasscodeChangeWithPasscodeChanged:*(a1 + 48) error:*(a1 + 32)];
  }

  [WeakRetained _finishRemoteAction:*(a1 + 48)];
}

Class sub_120F4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_34D00)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_12238;
    v4[4] = &unk_2CFA0;
    v4[5] = v4;
    v5 = off_2CF88;
    v6 = 0;
    qword_34D00 = _sl_dlopen();
    v2 = v4[0];
    if (qword_34D00)
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
  result = objc_getClass("PUConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_16674();
  }

  qword_34CF8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_12238(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_34D00 = result;
  return result;
}

void sub_122F0(id a1)
{
  v1 = objc_alloc_init(NPKPassbookPaymentSetupDelegate);
  v2 = qword_34D08;
  qword_34D08 = v1;

  _objc_release_x1(v1, v2);
}

void sub_12D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_12D58(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12E40;
  v8[3] = &unk_2CFE8;
  v14 = a2;
  v9 = *(a1 + 32);
  v10 = v5;
  v6 = v5;
  objc_copyWeak(&v13, (a1 + 56));
  v7 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = v7;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v13);
}

id sub_12E40(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = pk_Payment_log();
  v4 = v3;
  if (v2 == 1)
  {
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = pk_Payment_log();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v7 = [*(a1 + 32) uniqueID];
    *v17 = 138412290;
    *&v17[4] = v7;
    v8 = "Notice: Remove payment pass %@ successful";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
    goto LABEL_8;
  }

  v12 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (!v12)
  {
    goto LABEL_10;
  }

  v6 = pk_Payment_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) uniqueID];
    v13 = *(a1 + 40);
    *v17 = 138412546;
    *&v17[4] = v7;
    *&v17[12] = 2112;
    *&v17[14] = v13;
    v8 = "Error: Remove payment pass %@ failed: %@";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_0, v9, v10, v8, v17, v11);
  }

LABEL_9:

LABEL_10:
  if (*(a1 + 72) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v15 = [WeakRetained popViewControllerAnimated:1];
  }

  return [*(a1 + 48) _setDeletionInProgress:0 forPassWithUniqueID:{*(a1 + 56), *v17, *&v17[16]}];
}

void sub_132D4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_13364;
  v4[3] = &unk_2D038;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 enumerateObjectsUsingBlock:v4];
}

void sub_13364(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) passWithUniqueID:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error: nil payment pass retrieved from NPKCompanionAgent for unique ID %@", &v8, 0xCu);
      }
    }
  }
}

void sub_1379C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_137B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_137CC(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = NPKPairedDeviceSecureElementIdentifiers();
  if (v4)
  {
    NPKIdentifyDevicePaymentApplicationsForPass();
  }
}

void sub_13998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_139B0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_13B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_13B74(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_13CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_13CD8(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_14040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14350(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v24 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [*(a1 + 32) peerPaymentWebService];
    [v11 setContext:v9];

    v12 = [*(a1 + 32) peerPaymentWebService];
    v13 = [v12 archiver];
    [v13 archiveContext:v9];
  }

  if (v10)
  {
    v14 = [*(a1 + 32) companionAgentConnection];
    v15 = NPKPairedOrPairingDevice();
    [v14 setPeerPaymentAccount:v10 forDevice:v15];
  }

  if (v24)
  {
    v16 = [v24 domain];
    v17 = [v16 isEqualToString:NPKErrorDomain];

    if (v17)
    {
      v18 = [NSBundle bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_TITLE" value:&stru_2D300 table:@"NanoPassKit"];
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"GIZMO_UNREACHABLE_ALERT_MESSAGE" value:&stru_2D300 table:@"NanoPassKit"];
      v22 = PKDisplayableErrorCustom();

      v24 = v22;
    }
  }

  else
  {
    v24 = 0;
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    (*(v23 + 16))(v23, a2, v24);
  }
}

void sub_14578(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_148DC;
  v31[3] = &unk_2D1C8;
  v35 = *(a1 + 40);
  v36 = a2;
  v12 = v9;
  v32 = v12;
  v13 = v10;
  v33 = v13;
  v14 = v11;
  v34 = v14;
  v15 = objc_retainBlock(v31);
  v16 = v15;
  if (a2)
  {
    v17 = [v14 associatedPassUniqueID];
    if (v17 && (v18 = *(a1 + 32), [v14 associatedPassUniqueID], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "passWithUniqueID:", v19), v20 = objc_claimAutoreleasedReturnValue(), v19, v20))
    {
      v21 = pk_Payment_log();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

      if (v22)
      {
        v23 = pk_Payment_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = "Notice: Peer payment pass already downloaded";
LABEL_17:
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v20 = [v14 associatedPassURL];
      v25 = pk_Payment_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        if (v26)
        {
          v27 = pk_Payment_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v17;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Notice: Do not yet have peer payment pass with unique ID %@. Attempting to download it now…", buf, 0xCu);
          }
        }

        v28 = [*(a1 + 32) webService];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_148F8;
        v29[3] = &unk_2C7A0;
        v30 = v16;
        [NPKPeerPaymentWebServiceCompanionTargetDevice attemptToDownloadPeerPaymentPassAtURL:v20 withWebService:v28 completion:v29];

        goto LABEL_20;
      }

      if (v26)
      {
        v23 = pk_Payment_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v24 = "Warning: Do not yet have peer payment pass, but no URL to download!";
          goto LABEL_17;
        }

LABEL_18:
      }
    }

    v16[2](v16);
LABEL_20:

    goto LABEL_21;
  }

  (v15[2])(v15);
LABEL_21:
}

void sub_14A94(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v4 = [v2 npkPossiblyOverriddenPeerPaymentServiceURL];

  v3 = [*(a1 + 40) targetDevice];
  [v3 peerPaymentRegisterWithURL:v4 forceReRegistration:0 completion:*(a1 + 48)];
}

void sub_14B14(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 || !a2)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v5, 0, 0);
    }
  }

  else if ([*(a1 + 32) needsRegistration])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_14C1C;
    v8[3] = &unk_2D218;
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v6 registerDevice:v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_14C1C(uint64_t a1, int a2, void *a3)
{
  if (a3 || !a2)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  return _objc_release_x2();
}

void sub_14EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_14F04(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_15098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_150B0(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_156D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1596C(uint64_t a1)
{
  sub_159C4();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_166D4();
  }

  qword_34D18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_159C4()
{
  v3[0] = 0;
  if (!qword_34D20)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_15AC4;
    v3[4] = &unk_2CFA0;
    v3[5] = v3;
    v4 = off_2D288;
    v5 = 0;
    qword_34D20 = _sl_dlopen();
  }

  v0 = qword_34D20;
  v1 = v3[0];
  if (!qword_34D20)
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

uint64_t sub_15AC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_34D20 = result;
  return result;
}

void *sub_15B38(uint64_t a1)
{
  v2 = sub_159C4();
  result = dlsym(v2, "MCFeatureMinimumPasscodeLength");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_34D28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_15D48(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = @"EXPRESS_TRANSIT";
    if (a2 == 3)
    {
      v4 = @"EXPRESS_ACCESS";
    }

    if (a2 == 4)
    {
      v4 = @"EXPRESS_ACCESS";
    }
  }

  else
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Warning: Received unexpected payment card type: %ld; deferring to access pass copy.", buf, 0xCu);
      }
    }

    v4 = @"EXPRESS_ACCESS";
  }

  v8 = [NSString stringWithFormat:@"%@_%@", v4, v3];

  return v8;
}

void sub_166B0()
{
  dlerror();
  abort_report_np();
  sub_166D4();
}