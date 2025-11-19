void sub_100003ED0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() description];
    v10 = 138413058;
    v11 = v9;
    v12 = 2080;
    v13 = "[HSPCGuestAccessTableViewController commitConfiguration]_block_invoke";
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) completed _enableAccessToGuestPinCodeItems. result = %@, error = %@", &v10, 0x2Au);
  }
}

NAFuture *__cdecl sub_100003FF0(id a1, NSError *a2)
{
  if ([(NSError *)a2 na_isCancelledError])
  {
    v2 = &off_1000CD2A0;
  }

  else
  {
    v2 = &off_1000CD2B8;
  }

  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

void sub_100004D54(id a1, NSError *a2, int64_t a3)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000773FC(v3, v4);
    }
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMSiriEndpointOnboardingResultAsString();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call succeeded with following result: %@", &v7, 0xCu);
  }
}

id sub_1000053C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 voiceName];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 outputVoiceGenderCode];
    v5 = [HFUtilities outputGenderFromString:v6];
  }

  v7 = [v3 voiceName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = +[AFLocalization sharedInstance];
    v11 = [v3 outputVoiceLanguageCode];
    v12 = [v10 voiceNamesForOutputLanguageCode:v11 gender:v5];
    v9 = [v12 firstObject];
  }

  v13 = [v3 inputLanguageCode];
  v14 = [*(a1 + 32) config];
  v15 = [v14 recognitionLanguage];
  if ([v13 isEqualToString:v15])
  {
    v16 = [v3 outputVoiceLanguageCode];
    v17 = [*(a1 + 40) languageCode];
    if ([v16 isEqualToString:v17])
    {
      v18 = [*(a1 + 40) name];
      v19 = [v9 isEqualToString:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_1000055A0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) navigationController];
    [v6 pushViewController:v5 animated:1];
  }
}

id sub_100005750()
{
  v0 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline addingSymbolicTraits:32770 options:0];
  v1 = [UIFont fontWithDescriptor:v0 size:0.0];

  return v1;
}

id sub_1000057C8()
{
  v0 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline addingSymbolicTraits:0x8000 options:0];
  v1 = [UIFont fontWithDescriptor:v0 size:0.0];

  return v1;
}

void sub_100005D18(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) navigationController];
    [v6 pushViewController:v5 animated:1];
  }
}

void sub_100006CC0(uint64_t a1)
{
  [*(a1 + 32) userDidRespondToConsentRequestForSetupAccessoryDescription:*(a1 + 40) withResponse:3];
  v3 = [*(a1 + 48) navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

void sub_100006FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPINCodeLengthMin:a2];
  [WeakRetained setPINCodeLengthMax:a3];
  [WeakRetained _updateSubtitle];
  v5 = [WeakRetained textFieldText];
  [WeakRetained _updateContinueActionEnabledFor:v5];
}

void sub_1000073B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id sub_1000073E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pinCodeManager];
  v3 = [v2 currentUserPinCode];

  return v3;
}

void sub_100007448(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 pinCodeValue];

  if (v4)
  {
    v5 = [v4 length];
    [qword_1000E6700 setMinimumIntegerDigits:v5];
    v6 = [qword_1000E6700 numberFromString:v4];
    v7 = [qword_1000E6700 stringForObjectValue:v6];
    [WeakRetained setTextFieldText:v7];

    v8 = [WeakRetained textField];
    [v8 setUserInteractionEnabled:0];

    v9 = [WeakRetained continueAction];
    [v9 setEnabled:1];

    v10 = [WeakRetained textField];
    [v10 resignFirstResponder];
  }

  else
  {
    v11 = [WeakRetained addOptionalButtonWithTitleKey:@"HSProximityCardPINCode_ContinueWithoutPINCodeButton" target:WeakRetained futureSelector:"_skipPINCodeButtonTapped"];
    [WeakRetained setOptionalAction:v11];

    v12 = [WeakRetained optionalAction];
    [v12 setEnabled:1];

    v13 = [WeakRetained continueAction];
    [v13 setEnabled:0];

    v6 = HULocalizedString();
    v10 = [WeakRetained footnoteLabel];
    [v10 setText:v6];
  }
}

void sub_100007894(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

_UNKNOWN **sub_1000078D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained coordinator];
  if ([v2 launchReason] == 4)
  {
    goto LABEL_4;
  }

  v3 = [WeakRetained coordinator];
  if ([v3 launchReason] == 5)
  {

LABEL_4:
    goto LABEL_5;
  }

  v6 = [WeakRetained coordinator];
  v7 = [v6 launchReason];

  if (v7 != 6)
  {
    v4 = &off_1000CD348;
    goto LABEL_6;
  }

LABEL_5:
  v4 = &off_1000CD330;
LABEL_6:

  return v4;
}

id sub_10000798C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = objc_getAssociatedObject(v3, HFAssociatedPinCodeKey);
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = HFOperationAddExistingUsersPINCodeToNewLock;
  v8 = [v3 domain];
  if ([v8 isEqualToString:HMErrorDomain] && objc_msgSend(v3, "code") == 2602)
  {
    v23 = v6;
    v22 = [v6 userLabel];
    v9 = [v22 user];
    v10 = [v9 uniqueIdentifier];
    v11 = [*(a1 + 32) config];
    v12 = [v11 home];
    v13 = [v12 currentUser];
    v14 = [v13 uniqueIdentifier];
    v21 = [v10 isEqual:v14];

    if (!v21)
    {
      v6 = v23;
      goto LABEL_9;
    }

    v8 = v7;
    v7 = HFOperationAddPINCode;
    v6 = v23;
  }

LABEL_9:
  v15 = objc_alloc_init(NAFuture);
  v16 = +[HFErrorHandler sharedHandler];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100007BFC;
  v24[3] = &unk_1000C58A8;
  v17 = v15;
  v25 = v17;
  v26 = *(a1 + 40);
  [v16 handleError:v3 operationType:v7 options:0 retryBlock:0 cancelBlock:v24];

  v18 = v26;
  v19 = v17;

  return v17;
}

void sub_100007BFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 finishWithResult:v2];
}

id sub_100007C58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pinCodeManager];
  v3 = [v2 currentUserPinCode];

  return v3;
}

id sub_100007CBC(id *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [WeakRetained _updatePINCodesForAllUsers];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100008D9C;
    v20[3] = &unk_1000C5A60;
    v20[4] = v5;
    v21 = a1[4];
    v7 = [v6 flatMap:v20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100008E10;
    v18[3] = &unk_1000C59E8;
    v19 = a1[5];
    v8 = [v7 recover:v18];
  }

  else
  {
    v9 = [WeakRetained textFieldText];
    v29 = 0;
    v10 = [HFPinCodeManager asciiStringForLocalizedPINString:v9 error:&v29];
    v11 = v29;

    v12 = [v5 pinCodeManager];
    v13 = [v12 checkForValidationErrorsWithPINCodeValue:v10 originalPINCode:0];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100007FA0;
    v26[3] = &unk_1000C5920;
    v14 = a1[4];
    v27 = v11;
    v28 = v14;
    v6 = v11;
    v15 = [v13 recover:v26];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100008458;
    v22[3] = &unk_1000C5A38;
    v22[4] = v5;
    v23 = v10;
    v24 = a1[4];
    v25 = a1[5];
    v16 = v10;
    v8 = [v15 flatMap:v22];
  }

  return v8;
}

id sub_100007FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NAFuture);
  v5 = [v3 userInfo];
  v6 = [v5 objectForKey:HFErrorUserInfoOptionsKey];
  v7 = [v6 objectForKey:HFErrorHandlerOptionRetryButtonTextKey];

  if (v7)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000081B8;
    v22[3] = &unk_1000C58F8;
    v23 = v3;
    v24 = v4;
    v25 = *(a1 + 40);
    v8 = objc_retainBlock(v22);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v9;

    v3 = v10;
  }

  v11 = +[HFErrorHandler sharedHandler];
  v12 = HFOperationChangePINCodeValue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000082F4;
  v18[3] = &unk_1000C58F8;
  v19 = v3;
  v13 = v4;
  v20 = v13;
  v21 = *(a1 + 40);
  v14 = v3;
  [v11 handleError:v14 operationType:v12 options:0 retryBlock:v8 cancelBlock:v18];

  v15 = v21;
  v16 = v13;

  return v13;
}

void sub_1000081B8(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  v3 = HFLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 77)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Optional PIN Code validation was dismissed by user. Proceeding to set PIN Code. %@", &v9, 0xCu);
    }

    [*(a1 + 40) finishWithNoResult];
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unknown PIN Code validation error requested retry. Closing prox card without setting PIN Code. %@", &v9, 0xCu);
    }

    v7 = *(a1 + 40);
    v8 = (*(*(a1 + 48) + 16))();
    [v7 finishWithResult:v8];
  }
}

void sub_1000082F4(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) code] == 75 || objc_msgSend(*v2, "code") == 74 || objc_msgSend(*v2, "code") == 77 || objc_msgSend(*v2, "code") == 82)
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *v2;
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Mandatory PIN Code validation. Remaining on this prox card so user can fix issue. %@", &v8, 0xCu);
    }

    [*(a1 + 40) finishWithResult:&off_1000CD360];
  }

  else
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100077474(v2, v5);
    }

    v6 = *(a1 + 40);
    v7 = (*(*(a1 + 48) + 16))();
    [v6 finishWithResult:v7];
  }
}

id sub_100008458(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [NAFuture futureWithResult:v3];
  }

  else
  {
    v5 = [*(a1 + 32) pinCodeManager];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) config];
    v8 = [v7 home];
    v9 = [v8 currentUser];
    v10 = [v5 setUserPinCode:v6 forUser:v9];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000869C;
    v18[3] = &unk_1000C5948;
    v18[4] = *(a1 + 32);
    v11 = [v10 addSuccessBlock:v18];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100008880;
    v17[3] = &unk_1000C5998;
    v17[4] = *(a1 + 32);
    v12 = [v11 recover:v17];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008B68;
    v14[3] = &unk_1000C5A10;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v4 = [v12 flatMap:v14];
  }

  return v4;
}

void sub_10000869C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v16 = v5;
    v17 = 2080;
    v18 = "[HSPCPINCodeTextFieldViewController commitConfiguration]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Completed adding new User PIN Code.", buf, 0x16u);
  }

  [*(a1 + 32) _updateOnboardingFlags];
  v6 = [HFPinCodeItem alloc];
  v7 = [*(a1 + 32) config];
  v8 = [v7 home];
  v9 = [v6 initWithPinCode:v3 inHome:v8 onAccessory:0];

  v10 = [*(a1 + 32) config];
  v11 = [v10 home];
  v14[0] = v11;
  v14[1] = &off_1000CD348;
  v13[1] = HFAnalyticsAccessCodeOperationTypeKey;
  v13[2] = HFAnalyticsAccessCodeItem;
  v13[3] = HFAnalyticsAccessCodeDuringOnboardingKey;
  v14[2] = v9;
  v14[3] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  [HFAnalytics sendEvent:26 withData:v12];
}

id sub_100008880(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412802;
    v22 = v5;
    v23 = 2080;
    v24 = "[HSPCPINCodeTextFieldViewController commitConfiguration]_block_invoke";
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Adding new User PIN Code failed %@", buf, 0x20u);
  }

  v6 = objc_alloc_init(NAFuture);
  v7 = [*(a1 + 32) config];
  v8 = [v7 addedAccessory];
  if (![v8 supportsCHIP])
  {
    goto LABEL_8;
  }

  v9 = [v3 domain];
  if (([v9 isEqualToString:HMErrorDomain] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v10 = [v3 code];

  if (v10 == 2602)
  {
    [*(a1 + 32) _updateOnboardingFlags];
    [v6 finishWithNoResult];
    goto LABEL_10;
  }

LABEL_9:
  v11 = +[HFErrorHandler sharedHandler];
  v12 = HFOperationAddPINCode;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008B60;
  v17[3] = &unk_1000C5970;
  v18 = v6;
  [v11 handleError:v3 operationType:v12 options:0 retryBlock:0 cancelBlock:v17];

LABEL_10:
  v19[0] = HFAnalyticsDataHomeKey;
  v13 = [*(a1 + 32) config];
  v14 = [v13 home];
  v20[0] = v14;
  v20[1] = &off_1000CD348;
  v19[1] = HFAnalyticsAccessCodeOperationTypeKey;
  v19[2] = HFAnalyticsAccessCodeDuringOnboardingKey;
  v19[3] = HFAnalyticsDataErrorKey;
  v20[2] = &__kCFBooleanTrue;
  v20[3] = v3;
  v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  [HFAnalytics sendEvent:26 withData:v15];

  return v6;
}

id sub_100008B68(id *a1)
{
  v2 = [a1[4] coordinator];
  if ([v2 launchReason] == 5)
  {

LABEL_4:
    v5 = (*(a1[5] + 2))();
    v6 = [NAFuture futureWithResult:v5];

    goto LABEL_6;
  }

  v3 = [a1[4] coordinator];
  v4 = [v3 launchReason];

  if (v4 == 6)
  {
    goto LABEL_4;
  }

  v7 = [a1[4] _updatePINCodesForAllUsers];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008D24;
  v12[3] = &unk_1000C59C0;
  v13 = a1[5];
  v8 = [v7 flatMap:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008D8C;
  v10[3] = &unk_1000C59E8;
  v11 = a1[6];
  v6 = [v8 recover:v10];

LABEL_6:

  return v6;
}

id sub_100008D24(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [NAFuture futureWithResult:v1];

  return v2;
}

id sub_100008D9C(uint64_t a1)
{
  [*(a1 + 32) _updateOnboardingFlags];
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

void sub_1000091D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000091F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      v9 = @"Failed";
    }

    else
    {
      v9 = @"Succeeded";
    }

    v10 = [WeakRetained config];
    v11 = [v10 addedAccessory];
    v12 = 138413570;
    v13 = WeakRetained;
    v14 = 2080;
    v15 = "[HSPCPINCodeTextFieldViewController _updatePINCodesForAllUsers]_block_invoke";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ enabling PIN codes for all users on new accessory %@. result: %@, error: %@", &v12, 0x3Eu);
  }
}

void sub_10000BFB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 224));
  _Unwind_Resume(a1);
}

id sub_10000C010(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() description];
    if ([v3 BOOLValue])
    {
      v7 = @"Not";
    }

    else
    {
      v7 = &stru_1000C89F8;
    }

    v8 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:*(a1 + 40)];
    v12 = 138413314;
    v13 = v6;
    v14 = 2080;
    v15 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 1024;
    v21 = [v3 BOOLValue];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%@ : %s) %@ skipping %@ because hasWalletKeyCompatibleDevice is %{BOOL}d.", &v12, 0x30u);
  }

  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 BOOLValue] ^ 1);
  v10 = [NAFuture futureWithResult:v9];

  return v10;
}

id sub_10000C1BC(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = [*(a1 + 32) home];
    v4 = [v3 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000C404;
    v17[3] = &unk_1000C5B00;
    v19 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v18 = v5;
    v20 = v6;
    v7 = [v4 flatMap:v17];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000C678;
    v14[3] = &unk_1000C5B28;
    v16 = *(a1 + 48);
    v13 = *(a1 + 32);
    v8 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    v9 = [v7 recover:v14];
  }

  else
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:*(a1 + 48)];
      *buf = 136315394;
      v22 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(%s) Skipping %@ because this device does not support wallet home key.", buf, 0x16u);
    }

    v9 = [NAFuture futureWithResult:&__kCFBooleanTrue];
  }

  return v9;
}

id sub_10000C404(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 walletKey];
  v5 = [v4 isUWBUnlockEnabled];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = @"Skipping";
    }

    else
    {
      v7 = @"Not skipping";
    }

    v19 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:*(a1 + 40)];
    v20 = [*(a1 + 32) addedAccessory];
    v8 = [v20 hf_minimumDescription];
    v9 = [*(a1 + 32) home];
    v10 = [HUHomeUIServiceLaunchUserInfo launchReasonDescription:*(a1 + 48)];
    v11 = [v3 walletKey];
    if (v11)
    {
      v12 = @"exists";
    }

    else
    {
      v12 = @"does NOT exist";
    }

    v13 = [v3 walletKey];
    v14 = [v13 isUWBUnlockEnabled];
    *buf = 136317186;
    v22 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
    v15 = @"NOT enabled";
    v24 = v7;
    v23 = 2112;
    if (v14)
    {
      v15 = @"enabled";
    }

    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v12;
    v35 = 2112;
    v36 = v15;
    v37 = 1024;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%s) %@ prox card %@ for accessory %@ in home %@. Launch reason = %@. wallet key %@. UWB is %@. shouldSkip so far is %{BOOL}d.", buf, 0x58u);
  }

  v16 = [NSNumber numberWithBool:v5];
  v17 = [NAFuture futureWithResult:v16];

  return v17;
}

id sub_10000C678(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100077614(a1);
  }

  v5 = [NAFuture futureWithResult:&__kCFBooleanTrue];

  return v5;
}

id sub_10000C710(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100077704(a1);
  }

  v5 = [NAFuture futureWithResult:&__kCFBooleanTrue];

  return v5;
}

id sub_10000C7A8(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = [*(a1 + 32) home];
    v4 = [v3 hf_fetchWalletKeyDeviceStateForCurrentDevice];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000C9A4;
    v12[3] = &unk_1000C5B78;
    v5 = *(a1 + 32);
    v14 = *(a1 + 40);
    v13 = v5;
    v6 = [v4 flatMap:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000CE74;
    v10[3] = &unk_1000C5998;
    v11 = *(a1 + 32);
    v7 = [v6 recover:v10];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(HSSetupstateMachine:%s) Skipping HSProxCardSetupUIStepWalletKeyExpressMode because this device is does not support wallet key.", buf, 0xCu);
    }

    v7 = [NAFuture futureWithResult:&__kCFBooleanTrue];
  }

  return v7;
}

id sub_10000C9A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 40))
  {
    v13 = [v3 walletKey];

    if (v13)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) addedAccessory];
        v15 = [*(a1 + 32) home];
        *buf = 136315650;
        v37 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
        v38 = 2112;
        v39 = v14;
        v40 = 2112;
        v41 = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(HSSetupstateMachine:%s) Skipping express mode prox card because while adding accessory %@, wallet key already exists for %@", buf, 0x20u);
      }

      goto LABEL_13;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v5 = [v4 walletKey];
    v6 = [v5 isUWBUnlockEnabled];

    if (v6)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) addedAccessory];
        v9 = [v4 walletKey];
        *buf = 136315650;
        v37 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
        v38 = 2112;
        v39 = v8;
        v40 = 2112;
        v41 = v9;
        v10 = "(%s) Skipping Tap to unlock prox card for accessory %@ wallet key %@ has UWB unlock already enabled. Expected behaviour is to NOT show both UWB and TTU. Only show one of them.";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x20u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  v11 = [v4 walletKey];
  v12 = [v11 isExpressEnabled];

  if (v12)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) addedAccessory];
      v9 = [v4 walletKey];
      *buf = 136315650;
      v37 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v9;
      v10 = "(%s) Skipping Tap to unlock prox card for accessory %@ because wallet key %@ has tap to unlock already turned on.";
      goto LABEL_9;
    }

LABEL_13:

    v16 = [NAFuture futureWithResult:&__kCFBooleanTrue];
    goto LABEL_27;
  }

  v17 = [*(a1 + 32) home];
  v18 = [v17 hf_currentUserIsOwner];

  v19 = [*(a1 + 32) home];
  v20 = [v19 hf_currentUserIsAdministrator];

  v21 = [*(a1 + 32) home];
  v22 = [v21 hf_hasHomeHubSupportingWalletKey];

  v23 = [*(a1 + 32) addedAccessory];
  v24 = [v23 supportsWalletKey] ^ 1;
  if ((v24 & 1) == 0 && (v18 & 1) == 0)
  {
    if (v22 & v20)
    {
      v24 = 0;
    }

    else
    {
      v25 = [*(a1 + 32) home];
      v24 = [v25 hasOnboardedForWalletKey] ^ 1;
    }
  }

  v26 = HFLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = @"Not Skipping";
    if (v24)
    {
      v27 = @"Skipping";
    }

    v35 = v27;
    v28 = [*(a1 + 32) addedAccessory];
    v29 = [*(a1 + 32) addedAccessory];
    v30 = v20;
    if ([v29 supportsWalletKey])
    {
      v31 = @"supports";
    }

    else
    {
      v31 = @"doesn't support";
    }

    v32 = [*(a1 + 32) home];
    *buf = 136316930;
    v37 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
    v38 = 2112;
    v39 = v35;
    v40 = 2112;
    v41 = v28;
    v42 = 2112;
    v43 = v31;
    v44 = 1024;
    v45 = v18;
    v46 = 1024;
    v47 = v30;
    v48 = 1024;
    v49 = v22;
    v50 = 1024;
    v51 = [v32 hasOnboardedForWalletKey];
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(%s) %@ express mode prox card because %@ %@ wallet key. isOwner: %{BOOL}d  isAdmin: %{BOOL}d  home hub supports wallet key:%{BOOL}d. hasOnboardedForWalletKey:%{BOOL}d", buf, 0x42u);
  }

  v33 = [NSNumber numberWithInt:v24];
  v16 = [NAFuture futureWithResult:v33];

LABEL_27:

  return v16;
}

id sub_10000CE74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000777F4(v3, a1);
  }

  v5 = [NAFuture futureWithResult:&__kCFBooleanTrue];

  return v5;
}

id sub_10000CF0C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [a1[4] hf_currentUserIsOwner];
  v6 = [a1[4] hf_hasHomeHubSupportingAccessCodes];
  v7 = [a1[5] addedAccessory];
  v8 = 0;
  if ([v7 supportsAccessCodes] && ((v5 | v6) & 1) != 0)
  {
    v8 = [v3 BOOLValue];
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v10 = @"Not";
    }

    else
    {
      v10 = &stru_1000C89F8;
    }

    v11 = [a1[5] addedAccessory];
    v15 = 138413826;
    v16 = WeakRetained;
    v17 = 2080;
    v18 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
    v19 = 2112;
    v20 = v10;
    v21 = 1024;
    v22 = [v11 supportsAccessCodes];
    v23 = 1024;
    v24 = [v3 BOOLValue];
    v25 = 1024;
    v26 = v5;
    v27 = 1024;
    v28 = v6 & 1;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ Skipping PIN Code text field prox card. supportsAccessCodes: %{BOOL}d hasValidConstraints: %{BOOL}d  currentUserIsOwner:%{BOOL}d  hubSupported:%{BOOL}d", &v15, 0x38u);
  }

  v12 = [NSNumber numberWithInt:v8 ^ 1];
  v13 = [NAFuture futureWithResult:v12];

  return v13;
}

id sub_10000D10C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 count];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained description];
    v8 = objc_opt_class();
    if (v5)
    {
      v9 = @"Not Skipping";
    }

    else
    {
      v9 = @"Skipping";
    }

    v13 = 138413314;
    v14 = v8;
    v15 = 2080;
    v16 = "[HSSetupStateMachine shouldSkipStep:withConfiguration:]_block_invoke";
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = [v3 count];
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%@:%s) %@ guest access because count is %ld for guestPinCodes %@", &v13, 0x34u);
  }

  v10 = [NSNumber numberWithBool:v5 == 0];
  v11 = [NAFuture futureWithResult:v10];

  return v11;
}

id sub_10000D2B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000778B0(WeakRetained);
  }

  v6 = [NAFuture futureWithResult:&__kCFBooleanTrue];

  return v6;
}

uint64_t sub_10000DE5C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 hf_userIsRestrictedGuest:v3];

  return v5 ^ 1;
}

id sub_10000EB18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = [v3 BOOLValue];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Voice Profile already exists? %{BOOL}d ...", &v10, 0x1Cu);
  }

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 BOOLValue]);
  v8 = [NAFuture futureWithResult:v7];

  return v8;
}

NAFuture *__cdecl sub_10000EC60(id a1, NSError *a2)
{
  v2 = [NSNumber numberWithBool:[HUHomeFeatureOnboardingUtilities isVoiceProfileAvailableOnThisDeviceForLanguage:0]];
  v3 = [NAFuture futureWithResult:v2];

  return v3;
}

void sub_10000F870(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x34u);
}

void sub_100010118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100010144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 matchedLibraryItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 matchedLibraryItems];
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolved to installed app %@", buf, 0xCu);
    }

    v8 = [HULinkedApplicationLibraryItem alloc];
    v9 = [v3 matchedLibraryItems];
    v10 = [v9 anyObject];
    v11 = [v8 initWithApplicationProxy:v10];
    [*(a1 + 32) setLinkedApplicationItem:v11];

LABEL_9:
    v19 = [*(a1 + 32) linkedApplicationItem];
    v20 = [v19 updateWithOptions:&__NSDictionary0__struct];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000105D0;
    v27[3] = &unk_1000C5CC8;
    v27[4] = *(a1 + 32);
    objc_copyWeak(&v28, (a1 + 56));
    v21 = [v20 flatMap:v27];
    objc_destroyWeak(&v28);

    goto LABEL_10;
  }

  v12 = [v3 matchedStoreItems];
  v13 = [v12 count];

  if (v13)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v3 matchedStoreItems];
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Resolved to app store download %@", buf, 0xCu);
    }

    v16 = [HULinkedApplicationStoreItem alloc];
    v9 = [v3 matchedStoreItems];
    v17 = [v9 anyObject];
    v18 = [v16 initWithStoreItem:v17];
    [*(a1 + 32) setLinkedApplicationItem:v18];

    goto LABEL_9;
  }

  if ([*(a1 + 40) isEqualToString:HMAppStoreIDAppShack] && +[HFUtilities isInternalInstall](HFUtilities, "isInternalInstall"))
  {
    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Resolved to internal store download", buf, 2u);
    }

    v9 = [[HULinkedApplicationInternalStoreItem alloc] initWithBundleIdentifier:*(a1 + 48)];
    [*(a1 + 32) setLinkedApplicationItem:v9];
    goto LABEL_9;
  }

  if ([*(a1 + 40) isEqualToString:HMAppStoreIDLocal] && +[HFUtilities isInternalInstall](HFUtilities, "isInternalInstall"))
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Resolved to internal sideload", buf, 2u);
    }

    v9 = [[HULinkedApplicationInternalSideloadItem alloc] initWithBundleIdentifier:*(a1 + 48)];
    [*(a1 + 32) setLinkedApplicationItem:v9];
    goto LABEL_9;
  }

  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100077A00(v25);
  }

  v26 = HFLocalizedString();
  [*(a1 + 32) setSubtitle:v26];

  v21 = +[NAFuture futureWithNoResult];
LABEL_10:

  return v21;
}

id sub_1000105D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:HFResultDisplayTitleKey];
  v5 = HFLocalizedString();
  v6 = HFLocalizedStringWithFormat();
  [*(a1 + 32) setTitle:{v6, v4}];

  v7 = [v3 objectForKeyedSubscript:HFResultApplicationIsInstalled];
  v8 = [v7 BOOLValue];

  if (!v8)
  {
    v11 = [v3 objectForKeyedSubscript:HFResultApplicationStoreURL];

    if (!v11)
    {
      v9 = HFLocalizedString();
      goto LABEL_10;
    }

    v9 = HFLocalizedString();

    goto LABEL_6;
  }

  v9 = HFLocalizedString();

  if (!v4)
  {
LABEL_6:
    v10 = HFLocalizedString();
    goto LABEL_7;
  }

  v10 = HFLocalizedStringWithFormat();
LABEL_7:
  v5 = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  [*(a1 + 32) setSubtitle:v9];
  v12 = *(a1 + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100010864;
  v21[3] = &unk_1000C5CA0;
  v21[4] = v12;
  v13 = [PRXAction actionWithTitle:v5 style:0 handler:v21];
  v14 = [v12 addAction:v13];

LABEL_10:
LABEL_11:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = [WeakRetained contentView];
  [v16 setNeedsUpdateConstraints];

  v17 = [WeakRetained view];
  [v17 bounds];
  [WeakRetained updatePreferredContentSizeForCardWidth:v18];

  v19 = +[NAFuture futureWithNoResult];

  return v19;
}

void sub_100010864(uint64_t a1)
{
  v2 = [*(a1 + 32) linkedApplicationItem];
  v3 = [v2 latestResults];
  v11 = [v3 objectForKeyedSubscript:HFResultDisplayTitleKey];

  v4 = [*(a1 + 32) linkedApplicationItem];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:HFResultApplicationBundleIdentifier];

  v7 = [*(a1 + 32) linkedApplicationItem];
  v8 = [v7 latestResults];
  v9 = [v8 objectForKeyedSubscript:HFResultApplicationStoreURL];

  v10 = [[HFAppPunchoutRequest alloc] initWithName:v11 bundleID:v6 payloadURL:0 storeURL:v9];
  [*(a1 + 32) setPunchoutRequest:v10];
}

void sub_1000118D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011900(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isPreloaded])
  {
    v5 = [*(a1 + 32) hf_setFaceRecognitionEnabled:{objc_msgSend(v3, "isOn")}];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100011A00;
    v7[3] = &unk_1000C5D18;
    objc_copyWeak(&v8, (a1 + 40));
    v6 = [v5 addFailureBlock:v7];

    objc_destroyWeak(&v8);
  }
}

void sub_100011A00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100077B3C(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained identifyPeopleFeature];
  [v6 setOn:0];
}

id sub_100011D94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HUConfigurationWrapperViewController alloc] initWithContentViewController:v3 configurationDelegate:*(a1 + 32)];

  return v4;
}

void sub_1000135D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013604(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100077C0C();
    }

    [WeakRetained _setupOnBoardSelectionsWithLanguageValue:0];
    [WeakRetained _applyOnBoardingSelectionsWithFuture:*(a1 + 48)];
  }

  else
  {
    v34 = [v6 na_firstObjectPassingTest:&stru_1000C5E20];
    v9 = [v34 value];
    objc_opt_class();
    v10 = v9;
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100013B64;
    v39[3] = &unk_1000C5E48;
    v13 = objc_opt_new();
    v40 = v13;
    [v12 na_each:v39];
    v14 = [WeakRetained config];
    [v14 setAvailableSiriLanguageValues:v12];

    v15 = [v13 allObjects];
    v16 = [WeakRetained config];
    [v16 setListOfVoices:v15];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [WeakRetained config];
      v19 = [v18 listOfVoices];
      *buf = 138412546;
      v43 = v34;
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully fetched available Siri languages from HomeKit [%@] list Of Voices = %@", buf, 0x16u);
    }

    if (*(a1 + 32) && [v12 count])
    {
      v20 = [WeakRetained _languageValueMatchingRecognitionLanguage:*(a1 + 40) outputVoice:*(a1 + 32)];
      if (!v20)
      {
        v21 = [WeakRetained config];
        [v21 setShouldShowSiriRecognitionLanguageSetup:1];

        v22 = [WeakRetained config];
        [v22 setShouldShowVoiceSelectionSetup:1];
      }

      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [WeakRetained config];
        v25 = [v24 shouldShowSiriRecognitionLanguageSetup];
        *buf = 67109120;
        LODWORD(v43) = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "shouldShowSiriRecognitionLanguageSetup %{BOOL}d", buf, 8u);
      }
    }

    else
    {
      v20 = 0;
    }

    v26 = [WeakRetained config];
    v27 = [v26 shouldShowSiriRecognitionLanguageSetup];

    if (v27)
    {
      v28 = HFLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Finishing future as we don't have a languageValue which means we need to show language selection", buf, 2u);
      }

      [*(a1 + 48) finishWithResult:&off_1000CD3D8];
    }

    else
    {
      v29 = [WeakRetained enablementFlowConfigurationProvider];

      if (!v29)
      {
        v30 = objc_alloc_init(AFEnablementFlowConfigurationProvider);
        [WeakRetained setEnablementFlowConfigurationProvider:v30];
      }

      v31 = [WeakRetained enablementConfiguration];

      if (!v31)
      {
        v32 = [WeakRetained enablementFlowConfigurationProvider];
        v41 = *(a1 + 40);
        v33 = [NSArray arrayWithObjects:&v41 count:1];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100013BC4;
        v35[3] = &unk_1000C5EC0;
        v35[4] = WeakRetained;
        v36 = *(a1 + 40);
        v37 = v20;
        v38 = *(a1 + 48);
        [v32 configurationForEnablementFlow:1 recognitionLanguageCodes:v33 completion:v35];
      }
    }
  }
}

BOOL sub_100013B1C(id a1, HMImmutableSetting *a2)
{
  v2 = [(HMImmutableSetting *)a2 keyPath];
  v3 = [v2 isEqualToString:HFSiriAvailableLanguagesSettingKeyPath];

  return v3;
}

void sub_100013B64(uint64_t a1, uint64_t a2)
{
  v3 = [HFUtilities voiceInfoFromSettingLanguageValue:a2];
  [*(a1 + 32) na_safeAddObject:v3];
}

void sub_100013BC4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) setEnablementConfiguration:v5];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) config];
    [v7 setRecognitionLanguage:v6];

    v8 = [*(a1 + 32) config];
    v9 = [v8 availableSiriLanguageValues];
    v10 = [v9 count];
    if (v10)
    {
      v2 = [*(a1 + 32) config];
      v3 = [v2 listOfVoices];
      if ([v3 count])
      {
        v11 = [v5 requiresVoiceSelectionForRecognitionLanguage:*(a1 + 40)];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [*(a1 + 32) config];
    [v12 setShouldShowVoiceSelectionSetup:v11];

    if (v10)
    {
    }

    v13 = [v5 voiceSelectionAllowsRandomSelection];
    v14 = [*(a1 + 32) config];
    [v14 setAllowsRandomVoiceSelection:v13];
  }

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) config];
    v17 = [v16 shouldShowVoiceSelectionSetup];
    v18 = [*(a1 + 32) config];
    *buf = 67109376;
    v23 = v17;
    v24 = 1024;
    v25 = [v18 allowsRandomVoiceSelection];
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "requiresVoiceSelectionForRecognitionLanguage = %{BOOL}d - allowsRandomVoiceSelection = %{BOOL}d", buf, 0xEu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013E4C;
  block[3] = &unk_1000C5E98;
  block[4] = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100013E4C(uint64_t a1)
{
  v2 = [*(a1 + 32) config];
  v3 = [v2 shouldShowVoiceSelectionSetup];

  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finishing Use Siri Setup", buf, 2u);
    }

    v5 = [*(a1 + 32) commitConfiguration];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100013F98;
    v9[3] = &unk_1000C5E70;
    v10 = *(a1 + 48);
    v6 = [v5 addCompletionBlock:v9];
  }

  else
  {
    [*(a1 + 32) _setupOnBoardSelectionsWithLanguageValue:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);

    [v7 _applyOnBoardingSelectionsWithFuture:v8];
  }
}

void sub_1000143A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) config];
  v6 = [v5 onboardingSelections];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001446C;
  v8[3] = &unk_1000C5F10;
  v9 = v3;
  v7 = v3;
  [v4 applyOnboardingSelections:v6 completionHandler:v8];
}

void sub_10001446C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100077D08();
    }
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMSiriEndpointOnboardingResultAsString();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call succeeded with following result: %@", &v7, 0xCu);
  }

  [*(a1 + 32) finishWithNoResult];
}

id sub_1000146A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 voiceName];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 outputVoiceGenderCode];
    v5 = [HFUtilities outputGenderFromString:v6];
  }

  v7 = [v3 voiceName];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = +[AFLocalization sharedInstance];
    v11 = [v3 outputVoiceLanguageCode];
    v12 = [v10 voiceNamesForOutputLanguageCode:v11 gender:v5];
    v9 = [v12 firstObject];
  }

  v13 = [v3 inputLanguageCode];
  v14 = [*(a1 + 32) config];
  v15 = [v14 recognitionLanguage];
  if ([v13 isEqualToString:v15])
  {
    v16 = [v3 outputVoiceLanguageCode];
    v17 = [*(a1 + 40) languageCode];
    if ([v16 isEqualToString:v17])
    {
      v18 = [*(a1 + 40) name];
      v19 = [v9 isEqualToString:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_100014D28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) config];
  v6 = [v5 onboardingSelections];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014DF0;
  v8[3] = &unk_1000C5F10;
  v9 = v3;
  v7 = v3;
  [v4 applyOnboardingSelections:v6 completionHandler:v8];
}

void sub_100014DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100077D08();
    }
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMSiriEndpointOnboardingResultAsString();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call succeeded with following result: %@", &v7, 0xCu);
  }

  [*(a1 + 32) finishWithNoResult];
}

void sub_1000151E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_10001656C(uint64_t a1)
{
  v2 = [*(a1 + 32) coordinator];
  v3 = [*(a1 + 32) coordinator];
  v4 = [v3 setupAccessoryDescription];
  v5 = [v4 setupAccessoryPayload];
  v6 = [v2 showCustomCommissioningFlowAlertIfNecessaryForPayload:v5 onViewController:*(a1 + 32)];

  return v6;
}

NAFuture *__cdecl sub_100016610(id a1, HMSetupAccessoryPayload *a2)
{
  v2 = a2;
  v3 = +[NAFuture futureWithNoResult];
  v4 = [NSString stringWithFormat:@"Continue with payload %@", v2];

  v5 = [v3 hs_commitConfigurationFutureWithContextMessage:v4];

  return v5;
}

id sub_1000166B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "customCommissioningFlowFuture flatMap hit error %@", &v13, 0xCu);
  }

  v5 = [v3 domain];
  v6 = v5;
  if (v5 == HFErrorDomain)
  {
    v7 = [v3 code];

    if (v7 == 96)
    {
      v8 = +[NAFuture futureWithNoResult];
      v9 = [v8 hs_commitConfigurationAndDismissFutureWithContextMessage:@"User hit Cancel button on custom commissioning flow alert popup. Dismissing."];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = [*(a1 + 32) config];
  [v10 setPairingError:v3];

  v8 = +[NAFuture futureWithNoResult];
  v9 = [v8 hs_commitConfigurationFutureWithContextMessage:@"Hit other errors. Displaying the error."];
LABEL_8:
  v11 = v9;

  return v11;
}

void sub_100018110(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000181B4;
  v7[3] = &unk_1000C5F10;
  v8 = v3;
  v6 = v3;
  [v5 applyOnboardingSelections:v4 completionHandler:v7];
}

void sub_1000181B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000773FC(v3, v4);
    }
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMSiriEndpointOnboardingResultAsString();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call succeeded with following result: %@", &v7, 0xCu);
  }

  [*(a1 + 32) finishWithNoResult];
}

void sub_100018984(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) config];
  v9 = [v8 recognitionLanguage];
  v10 = [v9 componentsSeparatedByString:@"-"];

  v11 = [*(a1 + 32) config];
  v12 = [v11 availableSiriLanguageValues];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100018C60;
  v25[3] = &unk_1000C5FC8;
  v13 = v10;
  v26 = v13;
  v14 = v4;
  v27 = v14;
  v15 = v7;
  v28 = v15;
  v16 = v6;
  v29 = v16;
  v17 = v5;
  v30 = v17;
  [v12 na_each:v25];

  if (![v15 count])
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) config];
      v20 = [v19 recognitionLanguage];
      *buf = 138412546;
      v32 = v20;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "iOS recognitionLanguage [%@] is not included in config.availableSiriLanguageValues. Using localized languages from HomeKit's availableSiriLanguageValues  [%@]", buf, 0x16u);
    }

    v21 = v17;
    v22 = v14;

    v15 = v21;
    v16 = v22;
  }

  v23 = [v15 sortedArrayUsingComparator:&stru_1000C6008];
  [*(a1 + 32) setRecognitionLanguages:v23];

  v24 = [v16 copy];
  [*(a1 + 32) setLocalizedLanguageToLanguageCodeMap:v24];

  [v3 finishWithNoResult];
}

void sub_100018C60(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 inputLanguageCode];
  v13 = [v4 componentsSeparatedByString:@"-"];

  v5 = [v3 inputLanguageCode];

  v6 = +[AFLocalization sharedInstance];
  v7 = [v6 localizedNameForSiriLanguage:v5 inDisplayLanguage:0];

  v8 = [v13 objectAtIndexedSubscript:0];
  v9 = [a1[4] objectAtIndexedSubscript:0];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = [a1[5] objectForKeyedSubscript:v7];

    if (!v11)
    {
      [a1[6] na_safeAddObject:v7];
      [a1[7] setObject:v5 forKey:v7];
    }
  }

  else if (!v7)
  {
    goto LABEL_8;
  }

  v12 = [a1[5] objectForKeyedSubscript:v7];

  if (!v12)
  {
    [a1[8] na_safeAddObject:v7];
    [a1[5] setObject:v5 forKey:v7];
  }

LABEL_8:
}

id sub_100019700(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HFCAPackageIconDescriptor alloc];
  v5 = [v4 initWithPackageIdentifier:v3 state:HFCAPackageStateKeypad];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100019808;
  v12 = &unk_1000C57E0;
  v13 = *(a1 + 32);
  v14 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, &v9);
  v7 = [NAFuture futureWithNoResult:v9];

  return v7;
}

void sub_100019BB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100019BE0(id a1)
{
  v3 = +[HFOpenURLRouter sharedInstance];
  v1 = +[NSURL hf_openiCloudPreferencesURL];
  v2 = [v3 openURL:v1];
}

id sub_100019C68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 BOOLValue];

  if (v5)
  {
    [*(a1 + 32) finishWithResult:&off_1000CD480];
  }

  else
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = WeakRetained;
      v19 = 2080;
      v20 = "[HSPCPINCodeViewController commitConfiguration]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(%@:%s) Presenting error alert because pinCodeManager returned NO for hasValidConstraints.", buf, 0x16u);
    }

    v15 = HFErrorUserInfoOperationTypeKey;
    v16 = HFOperationAddPINCode;
    v7 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v8 = [NSError alloc];
    v9 = [v8 initWithDomain:HFErrorDomain code:83 userInfo:v7];
    v10 = +[HFErrorHandler sharedHandler];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100019E90;
    v13[3] = &unk_1000C5970;
    v14 = *(a1 + 32);
    [v10 handleError:v9 retryBlock:0 cancelBlock:v13];
  }

  v11 = +[NAFuture futureWithNoResult];

  return v11;
}

void sub_10001A0A4(id a1, HFServiceLikeItem *a2)
{
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@", &v4, 0xCu);
  }
}

id sub_10001A414(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serviceLikeItems];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 description];
  }

  return v6;
}

BOOL sub_10001AAF4(id a1, MTRDeviceTypeRevision *a2)
{
  v2 = [(MTRDeviceTypeRevision *)a2 deviceTypeID];
  v3 = [v2 isEqualToNumber:&off_1000CD498];

  return v3;
}

void sub_10001AD24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MTSNetworkCredentialManager);
  [v4 setThreadCredentialManagementEnabled:1 forPairingWithUUID:*(a1 + 32) completionHandler:v3];
}

id sub_10001BFD0(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) setupAccessoryDescription];
  v5 = [v4 accessoryUUID];
  v6 = [v3 isEqual:v5];

  return v6;
}

id sub_10001C044(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) setupAccessoryDescription];
  v5 = [v4 accessoryName];
  v6 = [v3 isEqual:v5];

  return v6;
}

void sub_10001CB18(uint64_t a1)
{
  v4 = +[HFOpenURLRouter sharedInstance];
  v2 = [*(a1 + 32) URL];
  v3 = [v4 openURL:v2];
}

NAFuture *sub_10001D234(uint64_t a1)
{
  [*(a1 + 32) setUserGivenAccessoryName:*(a1 + 40)];

  return +[NAFuture futureWithNoResult];
}

void sub_10001E2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E2E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    *buf = 136315650;
    v16 = "[HSSetupStateMachineCHIPPartnerConfiguration stageCHIPAccessory]_block_invoke";
    v17 = 2112;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Staging CHIP accessory with payload %@ scanningNetworks %{BOOL}d", buf, 0x1Cu);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001E488;
  v12[3] = &unk_1000C6248;
  objc_copyWeak(&v14, (a1 + 56));
  v11 = v3;
  v13 = v11;
  [v7 stageCHIPAccessoryPairingInStepsWithPayload:v8 delegate:v9 scanningNetworks:v10 & 1 completionHandler:v12];

  objc_destroyWeak(&v14);
}

void sub_10001E488(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v7)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[HSSetupStateMachineCHIPPartnerConfiguration stageCHIPAccessory]_block_invoke";
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Staged CHIP accessory. stagedCHIPAccessoryPairingIdentifier: %@", &v17, 0x16u);
    }

    [WeakRetained setStagedCHIPPairingIdentifier:v7];
    [*(a1 + 32) finishWithResult:v7];
    if (v8)
    {
      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[HSSetupStateMachineCHIPPartnerConfiguration stageCHIPAccessory]_block_invoke";
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Staged CHIP accessory. devicePairingUUID: %@", &v17, 0x16u);
      }

      [WeakRetained setChipDevicePairingUUID:v8];
      [WeakRetained setChipDevicePairingIsNew:1];
      [WeakRetained _updateAccessoryNameWithCHIPPairingIdentifier:v8];
    }
  }

  else if ([v9 hf_isAlreadyPairedError])
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[HSSetupStateMachineCHIPPartnerConfiguration stageCHIPAccessory]_block_invoke";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Staged CHIP accessory without stagedCHIPAccessoryPairingIdentifier as it is already paired.", &v17, 0xCu);
    }

    [*(a1 + 32) finishWithError:v9];
  }

  else
  {
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = +[NSError hmfUnspecifiedError];
    }

    v15 = v14;
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000781F8();
    }

    [WeakRetained setPairingError:v15];
    [WeakRetained setPhase:9];
    [WeakRetained _updateStatusTextAndNotifyDelegate:0];
    [*(a1 + 32) finishWithError:v15];
  }
}

id sub_10001EC0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[HSSetupStateMachineCHIPPartnerConfiguration pairStagedCHIPAccessoryToPartnerAppHome]_block_invoke";
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Created CHIP setup payload string: %@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001ED8C;
  v10[3] = &unk_1000C62C0;
  v5 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v3;
  v6 = v3;
  v7 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v10];
  v8 = [v7 addCompletionBlock:&stru_1000C6300];

  return v7;
}

void sub_10001ED8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chipDevicePairingUUID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSUUID UUID];
  }

  v10 = v7;

  v8 = [*(a1 + 32) targetEcosystem];
  v9 = [v8 extensionMessenger];
  [v9 pairDeviceInHome:*(a1 + 40) onboardingPayload:*(a1 + 48) uuid:v10 completionHandler:v4];
}

void sub_10001EE48(id a1, id a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response from PEA pairing attempt.  Result: %@, error: %@", &v7, 0x16u);
  }
}

void sub_10001F01C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001F040(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10001F2A8;
  v22[3] = &unk_1000C6350;
  v23 = a1[5];
  v6 = [a2 na_firstObjectPassingTest:v22];
  [a1[4] setCurrentPairing:v6];

  v7 = [a1[4] currentPairing];
  if (v7)
  {
    v8 = v7;
    v9 = [a1[4] currentPairing];
    v10 = [v9 name];
    if (v10)
    {
      v11 = v10;
      v12 = [a1[4] currentPairing];
      v13 = [v12 name];
      v14 = [v13 length];

      if (v14)
      {
        WeakRetained = objc_loadWeakRetained(a1 + 6);
        v16 = [WeakRetained setupDescription];
        v17 = [WeakRetained currentPairing];
        v18 = [v17 name];
        [v16 updateAccessoryName:v18];

        v19 = HFLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [WeakRetained setupDescription];
          v21 = [v20 accessoryName];
          *buf = 138412290;
          v25 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updated Matter accessory name to: %@", buf, 0xCu);
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  WeakRetained = HFLogForCategory();
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
  {
    sub_100078374();
  }

LABEL_10:
}

id sub_10001F2A8(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_10001F5F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000783F8(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Canceled staging.  id: %@", &v8, 0xCu);
  }
}

void sub_10001F91C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100078484(a1, v3, v5);
    }

    [*(a1 + 40) rejectDeviceCredentialForStagingRequestUUID:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 136315394;
      v8 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveDeviceCredential:forStagingRequestUUID:]_block_invoke";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Confirming device credential: %@", &v7, 0x16u);
    }

    [*(a1 + 40) confirmDeviceCredentialForStagingRequestUUID:*(a1 + 48)];
  }
}

void sub_10001FBEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100078520();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveThreadScanResults:forStagingRequestUUID:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Selecting Thread network association %@", &v9, 0x16u);
    }

    [*(a1 + 32) selectThreadNetworkAssociation:v5 forStagingRequestUUID:*(a1 + 40)];
  }
}

void sub_10001FEC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007859C();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[HSSetupStateMachineCHIPPartnerConfiguration didReceiveWiFiScanResults:forStagingRequestUUID:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Selecting WiFi network association %@", &v9, 0x16u);
    }

    [*(a1 + 32) selectWiFiNetworkAssociation:v5 forStagingRequestUUID:*(a1 + 40)];
  }
}

void sub_10002084C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100020898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100078618();
  }

  if (WeakRetained)
  {
    if ([WeakRetained phase] == 2)
    {
      [WeakRetained _updateStatusTextAndNotifyDelegate:1];
    }

    else
    {
      v3 = +[HFSetupPairingControllerUtilities descriptionForPairingPhase:](HFSetupPairingControllerUtilities, "descriptionForPairingPhase:", [WeakRetained phase]);
      NSLog(@"The 'accessory not found' soft timeout timer should only fire if we remain in the 'discoverAccessories' phase for too long, but instead, we're in the %@ phase", v3);
    }
  }
}

void sub_100020958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10007868C();
  }

  if (WeakRetained)
  {
    if ([WeakRetained phase] == 2)
    {
      v3 = [NSError hf_errorWithCode:6];
      v4 = [NSError hf_mappedHMError:v3];
      v5 = [WeakRetained context];
      v6 = [v5 setupAccessoryDescription];
      [v6 setCancellationReason:v4];

      v7 = [WeakRetained discoveredAccessoryToPair];
      [v7 updateStatus:3 error:v3];

      [WeakRetained setPairingError:v3];
      [WeakRetained setPhase:9];
      v8 = [WeakRetained cancelStagingForCHIPPairing];
    }

    else
    {
      v3 = +[HFSetupPairingControllerUtilities descriptionForPairingPhase:](HFSetupPairingControllerUtilities, "descriptionForPairingPhase:", [WeakRetained phase]);
      NSLog(@"The 'accessory not found' fatal timeout timer should only fire if we remain in the 'discoverAccessories' phase for too long, but instead, we're in the %@ phase", v3);
    }
  }
}

id sub_10002153C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 BOOLValue])
  {
    [*(a1 + 32) _enableVoiceRecognition];
  }

  v4 = [NAFuture futureWithResult:v3];

  return v4;
}

id sub_100021654(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 config];
  v6 = [v5 delegate];
  v7 = [*(a1 + 32) config];
  v8 = [v6 stateMachineConfigurationGetLaunchReason:v7];

  LOBYTE(v5) = [v4 BOOLValue];
  if (v5)
  {
    if (v8 == 3)
    {
      v9 = [HUHomeFeatureOnboardingUtilities checkVoiceProfileAvailabiltyForLanguage:0];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100021848;
      v18[3] = &unk_1000C5AD8;
      v19 = *(a1 + 32);
      v10 = [v9 flatMap:v18];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100021984;
      v16[3] = &unk_1000C6490;
      v17 = *(a1 + 32);
      v11 = [v10 recover:v16];

      goto LABEL_10;
    }

    v14 = [*(a1 + 32) commitConfiguration];
  }

  else
  {
    v12 = [*(a1 + 32) config];
    [v12 setShouldSkipVoiceProfileSetup:1];

    if (v8 == 3)
    {
      v13 = &off_1000CD528;
    }

    else
    {
      v13 = &off_1000CD510;
    }

    v14 = [NAFuture futureWithResult:v13];
  }

  v11 = v14;
LABEL_10:

  return v11;
}

id sub_100021848(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = [v3 BOOLValue];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@:%@: Voice Profile already exists? %{BOOL}d ...", &v10, 0x1Cu);
  }

  if ([v3 BOOLValue])
  {
    v7 = &off_1000CD528;
  }

  else
  {
    v7 = &off_1000CD510;
  }

  v8 = [NAFuture futureWithResult:v7];

  return v8;
}

id sub_100021984(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000786CC(a1);
  }

  if ([HUHomeFeatureOnboardingUtilities isVoiceProfileAvailableOnThisDeviceForLanguage:0])
  {
    v5 = &off_1000CD528;
  }

  else
  {
    v5 = &off_1000CD510;
  }

  v6 = [NAFuture futureWithResult:v5];

  return v6;
}

void sub_100021D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021D60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100021D78(uint64_t a1)
{
  v2 = [*(a1 + 32) config];
  [v2 setShouldSkipVoiceProfileSetup:1];

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ User has opted to not enable voice recognition. Setting flag to skip voice profile setup flow.", &v11, 0xCu);
  }

  v5 = [*(a1 + 32) config];
  v6 = [v5 delegate];
  v7 = [*(a1 + 32) config];
  v8 = [v6 stateMachineConfigurationGetLaunchReason:v7];

  if (v8 == 3)
  {
    v9 = &off_1000CD528;
  }

  else
  {
    v9 = &off_1000CD510;
  }

  return [*(*(*(a1 + 40) + 8) + 40) finishWithResult:v9];
}

void sub_100021ED0(uint64_t a1)
{
  v2 = [*(a1 + 32) config];
  v3 = [v2 delegate];
  v4 = [*(a1 + 32) config];
  v5 = [v3 stateMachineConfigurationGetLaunchReason:v4];

  v6 = [*(a1 + 32) _checkForiCloudSiriEnabledAndEnableVoiceRecognition];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021FC8;
  v9[3] = &unk_1000C6530;
  v10 = *(a1 + 32);
  v7 = *(a1 + 48);
  v11 = v5;
  v12 = v7;
  v8 = [v6 flatMap:v9];
}

id sub_100021FC8(uint64_t a1, void *a2)
{
  if (([a2 BOOLValue] & 1) == 0)
  {
    v3 = [*(a1 + 32) config];
    [v3 setShouldSkipVoiceProfileSetup:1];

    if (*(a1 + 48) == 3)
    {
      v4 = &off_1000CD528;
    }

    else
    {
      v4 = &off_1000CD510;
    }

    [*(*(*(a1 + 40) + 8) + 40) finishWithResult:v4];
  }

  if (*(a1 + 48) == 3)
  {
    v5 = [*(a1 + 32) _enableVoiceRecognitionAndCommitConfiguration];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [HUHomeFeatureOnboardingUtilities checkVoiceProfileAvailabiltyForLanguage:0];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002218C;
    v16[3] = &unk_1000C64E0;
    v18 = *(a1 + 56);
    v17 = *(a1 + 32);
    v9 = [v8 addFailureBlock:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100022230;
    v13[3] = &unk_1000C6508;
    v15 = *(a1 + 56);
    v14 = *(a1 + 32);
    v10 = [v8 addSuccessBlock:v13];
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) finishWithResult:&off_1000CD510];
  }

  v11 = *(*(*(a1 + 40) + 8) + 40);

  return v11;
}

void sub_10002218C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100078760(a1);
  }

  v5 = [HUHomeFeatureOnboardingUtilities isVoiceProfileAvailableOnThisDeviceForLanguage:0];
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v5)
  {
    v7 = &off_1000CD528;
  }

  else
  {
    v7 = &off_1000CD510;
  }

  [*(*(*(a1 + 40) + 8) + 40) finishWithResult:v7];
}

id sub_100022230(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(*(a1 + 48));
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@:%@ Successfully fetched Siri Voice Profile", &v6, 0x16u);
  }

  return [*(*(*(a1 + 40) + 8) + 40) finishWithResult:&off_1000CD528];
}

void sub_1000223C8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_100022894(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000228B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained config];
  v6 = [v5 addedAccessory];
  v7 = [v6 hf_setHasOnboardedForAdaptiveTemperature];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000229A0;
  v10[3] = &unk_1000C6558;
  v10[4] = WeakRetained;
  v11 = v3;
  v8 = v3;
  v9 = [v7 addCompletionBlock:v10];
}

void sub_1000229A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000787F8(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[HSPCSetTemperaturesViewController _hasOnboardedForAdaptiveTemperature]_block_invoke";
    v10 = 2112;
    v11 = v7;
  }

  [*(a1 + 40) finishWithResult:&off_1000CD540];
}

void sub_100023270(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v6 = sub_100063A44(@"HSProximityCardLockAddedToHomeSubtitle");
    [*(a1 + 32) setSubtitle:?];
  }

  else
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412802;
      v8 = v4;
      v9 = 2080;
      v10 = "[HSPCDoneViewController initWithCoordinator:config:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%@: %s) Not adding subtitles about wallet key when adding accessory %@. hasWalletKey returned NO", buf, 0x20u);
    }
  }
}

void sub_100023558(uint64_t a1)
{
  v4 = +[HFOpenURLRouter sharedInstance];
  v2 = [*(a1 + 32) URL];
  v3 = [v4 openURL:v2];
}

void sub_100023C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023C9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained config];
  v6 = [v5 addedAccessory];
  v7 = [v6 hf_enableAdaptiveTemperatureTo:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100023D90;
  v10[3] = &unk_1000C65D0;
  v10[4] = WeakRetained;
  v11 = v3;
  v8 = v3;
  v9 = [v7 addCompletionBlock:v10];
}

void sub_100023D90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100078894(a1);
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100023E70;
  v7[3] = &unk_1000C57E0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_100023E70(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100023EF8;
  v2[3] = &unk_1000C5970;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _hasOnboardedForAdaptiveTemperatureWithCompletion:v2];
}

void sub_100024054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024078(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained config];
  v6 = [v5 addedAccessory];
  v7 = [v6 hf_enableAdaptiveTemperatureTo:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002416C;
  v10[3] = &unk_1000C65D0;
  v10[4] = WeakRetained;
  v11 = v3;
  v8 = v3;
  v9 = [v7 addCompletionBlock:v10];
}

void sub_10002416C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002421C;
  block[3] = &unk_1000C5E98;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10002421C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007890C(a1, v2, v3);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100024320;
    v6[3] = &unk_1000C5970;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v4 _hasOnboardedForAdaptiveTemperatureWithCompletion:v6];
  }

  else
  {
    v5 = *(a1 + 48);

    [v5 finishWithResult:&off_1000CD588];
  }
}

void sub_100024414(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007899C(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[HSPCAdaptiveTemperatureViewController _hasOnboardedForAdaptiveTemperatureWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000245A8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_100025064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100025088(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[NSMutableArray array];
  v3 = [WeakRetained titleLabel];
  v4 = [v3 text];
  v5 = [v4 length];

  v6 = [WeakRetained bodyTextView];
  v7 = [v6 attributedText];
  v8 = [v7 length];

  v9 = [WeakRetained titleLabel];
  v10 = v9;
  if (!v5)
  {
    [v9 setHidden:1];

    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_5:
    v31 = [WeakRetained bodyTextView];
    [v31 setHidden:0];

    v32 = [WeakRetained bodyTextView];
    v33 = v32;
    if (v5)
    {
      v34 = [v32 firstBaselineAnchor];
      v35 = [WeakRetained titleLabel];
      v36 = [v35 lastBaselineAnchor];
      v37 = [WeakRetained titleLabel];
      v38 = [v37 font];
      [v38 _scaledValueForValue:18.0];
      v39 = [v34 constraintEqualToAnchor:v36 constant:?];
      [v2 addObject:v39];
    }

    else
    {
      v34 = [v32 topAnchor];
      v35 = [WeakRetained contentView];
      v36 = [v35 topAnchor];
      v37 = [v34 constraintEqualToAnchor:v36 constant:10.0];
      [v2 addObject:v37];
    }

    v41 = [WeakRetained bodyTextView];
    v42 = [v41 leadingAnchor];
    v43 = [WeakRetained contentView];
    v44 = [v43 leadingAnchor];
    v45 = [v42 constraintEqualToAnchor:v44 constant:40.0];
    [v2 addObject:v45];

    v46 = [WeakRetained bodyTextView];
    v47 = [v46 trailingAnchor];
    v48 = [WeakRetained contentView];
    v49 = [v48 trailingAnchor];
    v50 = [v47 constraintEqualToAnchor:v49 constant:-40.0];
    [v2 addObject:v50];

    v40 = [WeakRetained bodyTextView];
    v51 = [v40 lastBaselineAnchor];
    v52 = [WeakRetained contentView];
    v53 = [v52 bottomAnchor];
    v54 = [v51 constraintEqualToAnchor:v53 constant:-10.0];
    [v2 addObject:v54];

    goto LABEL_10;
  }

  [v9 setHidden:0];

  v11 = [WeakRetained titleLabel];
  v12 = [v11 topAnchor];
  v13 = [WeakRetained contentView];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:10.0];
  [v2 addObject:v15];

  v16 = [WeakRetained titleLabel];
  v17 = [v16 leadingAnchor];
  v18 = [WeakRetained contentView];
  v19 = [v18 leadingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:40.0];
  [v2 addObject:v20];

  v21 = [WeakRetained titleLabel];
  v22 = [v21 trailingAnchor];
  v23 = [WeakRetained contentView];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:-40.0];
  [v2 addObject:v25];

  if (v8)
  {
    goto LABEL_5;
  }

  v26 = [WeakRetained titleLabel];
  v27 = [v26 lastBaselineAnchor];
  v28 = [WeakRetained contentView];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:-10.0];
  [v2 addObject:v30];

LABEL_7:
  v40 = [WeakRetained bodyTextView];
  [v40 setHidden:1];
LABEL_10:

  return v2;
}

id sub_100025EE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [HUCameraRecordingSettingsModule alloc];
  v6 = [NSSet setWithArray:*(a1 + 32)];
  v7 = [v5 initWithItemUpdater:v4 cameraProfiles:v6 displayStyle:2];

  v10 = v7;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  return v8;
}

HUItemModuleController *__cdecl sub_100025FC8(id a1, HFItemModule *a2)
{
  v2 = a2;
  v3 = [[HUCameraSettingsModuleController alloc] initWithModule:v2];

  [v3 setUseProxSetupPresentationStyle:1];

  return v3;
}

void sub_100026458(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000264F0;
  v6[3] = &unk_1000C66B0;
  v7 = v3;
  v5 = v3;
  [v4 enableMultiUserWithCompletionHandler:v6];
}

void sub_1000264F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to enable multi user for home with error %@", &v6, 0xCu);
    }

    [*(a1 + 32) finishWithError:v3];
  }

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully enabled multi user for home", &v6, 2u);
  }

  [*(a1 + 32) finishWithNoResult];
}

id sub_1000269A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [WeakRetained config];
  [v8 setHome:v7];

  v9 = +[NAFuture futureWithNoResult];

  return v9;
}

id sub_100026B2C(uint64_t a1, void *a2)
{
  v3 = [a2 na_map:&stru_1000C66F0];
  v4 = HULocalizedString();
  v5 = [NSSet setWithArray:v3];
  v6 = [HFUtilities uniqueHomeKitNameForName:v4 allNames:v5];

  [*(a1 + 32) setTextFieldText:v6];
  [*(a1 + 32) setTextFieldPlaceholderText:v6];
  v7 = +[NAFuture futureWithNoResult];

  return v7;
}

void sub_100026EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100026F08(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[8];
  WeakRetained[8] = v3;
  v6 = v3;

  v7 = [WeakRetained _shouldShowSingleContinueButton];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100027004;
  v11[3] = &unk_1000C6468;
  v12 = WeakRetained;
  v8 = WeakRetained;
  v9 = [v7 flatMap:v11];

  return v9;
}

id sub_100027004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100063A44(@"HSProximityCardWalletKeyExpressModeTapToUnlockSubtitle");
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  [v6 setSubtitle:v4];

  LODWORD(v4) = [v3 BOOLValue];
  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      v9 = *v5;
      *buf = 138412546;
      v22 = v9;
      v23 = 2080;
      v24 = "[HSPCWalletKeyExpressModeViewController initWithCoordinator:config:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Showing educational prox card about Wallet Key because shouldShowSingleContinueButton is YES", buf, 0x16u);
    }

    v10 = [*v5 addProminentButtonWithTitleKey:@"HUContinueTitle" target:*v5 futureSelector:"commitConfiguration"];
    [*v5 setContinueAction:v10];
  }

  else
  {
    if (v8)
    {
      v11 = *v5;
      *buf = 138412546;
      v22 = v11;
      v23 = 2080;
      v24 = "[HSPCWalletKeyExpressModeViewController initWithCoordinator:config:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Prompting about enabling Express Mode because hasOnboardedForWalletKey is NO", buf, 0x16u);
    }

    v12 = [*v5 addProminentButtonWithTitleKey:@"HSProximityCardWalletKeyExpressModeTapToUnlock_EnableTapToUnlockButton" target:*v5 futureSelector:"commitConfiguration"];
    v10 = HULocalizedString();
    v13 = objc_alloc_init(LAContext);
    v20 = 0;
    v14 = [v13 canEvaluatePolicy:2 error:&v20];
    v15 = v20;
    if (v14)
    {
      HULocalizedBiometryString();
      v10 = v16 = v10;
    }

    else
    {
      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100078A14(v5, v15, v16);
      }
    }

    v17 = [*v5 addOptionalButtonWithTitleKey:v10 target:*v5 futureSelector:"_requireAuthenticationButtonTapped"];
  }

  v18 = +[NAFuture futureWithNoResult];

  return v18;
}

NAFuture *__cdecl sub_1000272A4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[HSPCWalletKeyExpressModeViewController initWithCoordinator:config:]_block_invoke";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(HSPCWalletKeyExpressModeViewController : %s) hf_fetchWalletKeyDeviceState returned error %@", &v6, 0x16u);
  }

  v4 = +[NAFuture futureWithNoResult];

  return v4;
}

void sub_100027390(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() description];
    *buf = 138413058;
    v15 = v9;
    v16 = 2080;
    v17 = "[HSPCWalletKeyExpressModeViewController initWithCoordinator:config:]_block_invoke";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@ :%s) Populating mica asset %@. error %@", buf, 0x2Au);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002751C;
  v11[3] = &unk_1000C57E0;
  v12 = *(a1 + 40);
  v13 = v5;
  v10 = v5;
  dispatch_async(&_dispatch_main_q, v11);
}

void sub_100027A6C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_100027AAC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [HSPCWalletKeyExpressModeViewController _expresssModePassConflictError:*(a1 + 32)];
  v6 = +[HFErrorHandler sharedHandler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100027BF0;
  v10[3] = &unk_1000C57E0;
  v10[4] = WeakRetained;
  v11 = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027C64;
  v8[3] = &unk_1000C5970;
  v9 = v11;
  v7 = v11;
  [v6 handleError:v5 retryBlock:v10 cancelBlock:v8];
}

void sub_100027BF0(uint64_t a1)
{
  v4 = [*(a1 + 32) _addWalletKeyWithExpressMode];
  v2 = [*(a1 + 40) completionHandlerAdapter];
  v3 = [v4 addCompletionBlock:v2];
}

void sub_100027C74(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [HSPCWalletKeyExpressModeViewController _expresssModePassConflictError:*(a1 + 32)];
  v6 = +[HFErrorHandler sharedHandler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100027DB8;
  v10[3] = &unk_1000C57E0;
  v10[4] = WeakRetained;
  v11 = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027DC4;
  v8[3] = &unk_1000C5970;
  v9 = v11;
  v7 = v11;
  [v6 handleError:v5 retryBlock:v10 cancelBlock:v8];
}

void sub_100027DD4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableExpressModeAfterAuthWithPromise:v3];
}

void sub_10002804C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100028070(id *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028158;
  block[3] = &unk_1000C6800;
  objc_copyWeak(&v11, a1 + 6);
  v8 = v5;
  v9 = a1[4];
  v10 = a1[5];
  v12 = a2;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
}

void sub_100028158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 138413058;
      v27 = WeakRetained;
      v28 = 2080;
      v29 = "[HSPCWalletKeyExpressModeViewController _enableExpressModeAfterAuthWithPromise:]_block_invoke_2";
      v30 = 2112;
      v31 = v17;
      v32 = 2112;
      v33 = v18;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "(%@:%s) When evaluating authentication policy, authError = %@. Invalidating laContext %@", buf, 0x2Au);
    }

LABEL_4:

    [*(a1 + 40) invalidate];
    [*(a1 + 48) finishWithResult:&off_1000CD600];
    goto LABEL_5;
  }

  v4 = *(a1 + 64);
  v3 = HFLogForCategory();
  v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4 != 1)
  {
    if (v5)
    {
      v14 = *(a1 + 40);
      *buf = 138412802;
      v27 = WeakRetained;
      v28 = 2080;
      v29 = "[HSPCWalletKeyExpressModeViewController _enableExpressModeAfterAuthWithPromise:]_block_invoke";
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%@:%s) Authentication failed. Invalidating laContext %@", buf, 0x20u);
    }

    goto LABEL_4;
  }

  if (v5)
  {
    v6 = *(a1 + 40);
    *buf = 138412802;
    v27 = WeakRetained;
    v28 = 2080;
    v29 = "[HSPCWalletKeyExpressModeViewController _enableExpressModeAfterAuthWithPromise:]_block_invoke";
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%@:%s) Authentication succeeded to enable express mode Tap to Unlock for currently existing Wallet Key with localAuthenticationContext %@", buf, 0x20u);
  }

  v7 = [*(a1 + 40) externalizedContext];
  if (v7)
  {
    v8 = [WeakRetained config];
    v9 = [v8 home];
    v10 = [v9 hf_enableExpressModeForWalletKeyWithAuthData:v7];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100028598;
    v24[3] = &unk_1000C67D8;
    v24[4] = WeakRetained;
    v25 = *(a1 + 48);
    v11 = [v10 flatMap:v24];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100028734;
    v22[3] = &unk_1000C5998;
    v23 = *(a1 + 48);
    v12 = [v11 recover:v22];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100028830;
    v19[3] = &unk_1000C65D0;
    v20 = *(a1 + 40);
    v21 = WeakRetained;
    v13 = [v12 addCompletionBlock:v19];
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 138412802;
      v27 = WeakRetained;
      v28 = 2080;
      v29 = "[HSPCWalletKeyExpressModeViewController _enableExpressModeAfterAuthWithPromise:]_block_invoke";
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(%@:%s) authData is nil. Invalidating laContext %@", buf, 0x20u);
    }

    [*(a1 + 40) invalidate];
    [*(a1 + 48) finishWithResult:&off_1000CD5E8];
  }

LABEL_5:
}

id sub_100028598(uint64_t a1)
{
  v2 = [*(a1 + 32) config];
  v3 = [v2 home];
  v4 = [v3 hf_walletKeyUUID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100028680;
  v8[3] = &unk_1000C6220;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = [v4 flatMap:v8];

  return v6;
}

id sub_100028680(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [*(a1 + 32) _updateHasOnboardedForWalletKey:v6];
  }

  [*(a1 + 40) finishWithResult:&off_1000CD5E8];
  v7 = +[NAFuture futureWithNoResult];

  return v7;
}

id sub_100028734(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFErrorHandler sharedHandler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028820;
  v7[3] = &unk_1000C5970;
  v8 = *(a1 + 32);
  [v4 handleError:v3 retryBlock:0 cancelBlock:v7];

  v5 = +[NAFuture futureWithNoResult];

  return v5;
}

void sub_100028830(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = 138412802;
    v6 = v3;
    v7 = 2080;
    v8 = "[HSPCWalletKeyExpressModeViewController _enableExpressModeAfterAuthWithPromise:]_block_invoke_5";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(%@:%s) Completed hf_enableExpressModeForWalletKeyWithAuthData. Invalidating laContext %@", &v5, 0x20u);
  }
}

void *sub_1000291B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[HSPCWalletKeyExpressModeViewController _addWalletKeyWithiPhoneExpressModeOptions:pairedWatchesExpressModeOptions:]_block_invoke_3";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(HSPCWalletKeyExpressModeViewController:%s) Completed adding Wallet Keyfor iPhone with results %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = v5;

  return v5;
}

id sub_100029294(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "[HSPCWalletKeyExpressModeViewController _addWalletKeyWithiPhoneExpressModeOptions:pairedWatchesExpressModeOptions:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(HSPCWalletKeyExpressModeViewController:%s) Failed adding Wallet Key for iPhone with iPhoneWalletKeyError %@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002948C;
  v12[3] = &unk_1000C5970;
  v13 = objc_alloc_init(NAFuture);
  v5 = v13;
  v6 = objc_retainBlock(v12);
  v7 = +[HFErrorHandler sharedHandler];
  [v7 handleError:v3 retryBlock:0 cancelBlock:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002949C;
  v10[3] = &unk_1000C68B8;
  v11 = *(a1 + 32);
  v8 = [v5 flatMap:v10];

  return v8;
}

BOOL sub_100029FE8(id a1, HFItem *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(HFItem *)v5 isUnknownGuest];
  return v6;
}

void sub_10002A640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10002A678(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100078AB4(WeakRetained, v3, v5);
  }

  v6 = [v3 domain];
  v7 = v6;
  if (v6 == HFErrorDomain)
  {
    v8 = [v3 code];

    if (v8 == 96)
    {
      v9 = +[NAFuture futureWithNoResult];
      v10 = [v9 hs_commitConfigurationAndDismissFutureWithContextMessage:@"User hit Cancel button on custom commissioning flow alert popup. Dismissing."];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v11 = [WeakRetained config];
  v12 = [v11 pairingError];
  v13 = [v12 userInfo];
  v14 = [v13 objectForKeyedSubscript:HFErrorUserInfoOptionsKey];
  v15 = [v14 objectForKeyedSubscript:HFErrorUserInfoOptionDescriptionKey];
  v16 = v15;
  if (!v15)
  {
    v16 = HULocalizedString();
  }

  v17 = [WeakRetained footnoteLabel];
  [v17 setText:v16];

  if (!v15)
  {
  }

  v10 = [NAFuture futureWithResult:&off_1000CD630];
LABEL_12:

  return v10;
}

void sub_10002AE00(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002AEC4;
  v8[3] = &unk_1000C6968;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  [v5 checkName:v9 inHome:v6 withValidationOptions:1 completionHandler:v8];
}

void sub_10002AEC4(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AFB8;
  block[3] = &unk_1000C6940;
  v11 = a4;
  v15 = a2;
  v12 = *(a1 + 32);
  v13 = v7;
  v14 = *(a1 + 40);
  v8 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10002AFB8(uint64_t a1)
{
  if (*(a1 + 32) || (*(a1 + 64) & 1) == 0)
  {
    v2 = HFLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100078B64(a1);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = [NSError hf_errorWithCode:1];
    }

    v5 = v4;
    v6 = HFOperationNamingObject;
    v7 = [*(a1 + 40) length];
    if (v7)
    {
      v8 = *(a1 + 40);
      v12 = HFErrorHandlerOptionFailedItemNameKey;
      v13 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 hf_errorWithOperationType:v6 options:v9];

    if (v7)
    {
    }

    [*(a1 + 56) finishWithError:v10];
  }

  return [*(a1 + 56) finishWithNoResult];
}

id sub_10002B4CC(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10002B524(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100078CC4(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Succesfully applied room %@ | %@", &v10, 0x16u);
  }
}

void sub_10002B86C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 extensionMessenger];
  v5 = [*(a1 + 40) userGivenAccessoryName];
  v6 = [*(a1 + 40) selectedPartnerRoom];
  [v7 configureDeviceWithName:v5 room:v6 completionHandler:v4];
}

void sub_10002BE9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Apply accessory %@ name %@", &v7, 0x16u);
  }

  [*(a1 + 32) updateName:*(a1 + 40) completionHandler:v3];
}

void sub_10002BF74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100078DFC(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully applied accessory level name %@ to accessory", &v8, 0xCu);
  }
}

void sub_10002C058(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 hf_primaryService];
  [v5 updateName:*(a1 + 40) completionHandler:v4];
}

void sub_10002C0C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100078E74();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully named Television primary service %@", &v8, 0xCu);
  }
}

void sub_10002C1A8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) updateName:*(a1 + 40) completionHandler:a2];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Apply accessory %@ service %@ name %@ (same as accessory name)", &v7, 0x20u);
  }
}

void sub_10002C27C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100078EE8(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully applied primary service level name %@ to accessory", &v8, 0xCu);
  }
}

void sub_10002C50C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating date added to %@ for %@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) hf_updateDateAdded:v4];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C684;
  v10[3] = &unk_1000C65D0;
  v11 = *(a1 + 32);
  v12 = v3;
  v8 = v3;
  v9 = [v7 addCompletionBlock:v10];
}

void sub_10002C684(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100078F60(v5, a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated date added for %@", &v10, 0xCu);
  }

  [*(a1 + 40) finishWithResult:v6 error:v5];
}

void sub_10002C894(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Apply service %@ name %@", &v7, 0x16u);
  }

  [*(a1 + 32) updateName:*(a1 + 40) completionHandler:v3];
}

id sub_10002CBE0(id a1, HMService *a2)
{
  v2 = a2;
  v3 = [(HMService *)v2 serviceType];
  v4 = [v3 isEqualToString:HMServiceTypeInputSource];

  if (v4)
  {
    [HSSetupStateMachineConfiguration writeVisibilityState:&off_1000CD648 toInputSourceService:v2];
  }

  else
  {
    [HSSetupStateMachineConfiguration writeConfigurationState:3 toService:v2];
  }
  v5 = ;

  return v5;
}

id sub_10002CD20(id a1, HMService *a2)
{
  v2 = a2;
  v3 = [(HMService *)v2 serviceType];
  v4 = [v3 isEqualToString:HMServiceTypeInputSource];

  if (v4)
  {
    [HSSetupStateMachineConfiguration writeVisibilityState:&off_1000CD660 toInputSourceService:v2];
  }

  else
  {
    [HSSetupStateMachineConfiguration writeConfigurationState:2 toService:v2];
  }
  v5 = ;

  return v5;
}

void sub_10002D004(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007912C(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sucesfully wrote targetVisbilityState: %@ to service %@", &v9, 0x16u);
  }
}

BOOL sub_10002D6E0(id a1, HMService *a2)
{
  v2 = [(HMService *)a2 serviceType];
  v3 = [v2 isEqualToString:HMServiceTypeInputSource];

  return v3;
}

uint64_t sub_10002D81C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) config];
  v8 = [v7 addedAccessory];
  v9 = [v8 televisionProfiles];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002D9C4;
  v19[3] = &unk_1000C6B18;
  v10 = v5;
  v20 = v10;
  v11 = [v9 na_firstObjectPassingTest:v19];

  v12 = [v11 hf_mediaSourceComparator];
  if (!v12 || ([v10 mediaSourceIdentifier], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "mediaSourceIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = (v12)[2](v12, v13, v14), v14, v13, !v15))
  {
    v18.receiver = *(a1 + 32);
    v18.super_class = HSPCNameInputSourcesViewController;
    v16 = objc_msgSendSuper2(&v18, "serviceComparator");
    v15 = (v16)[2](v16, v10, v6);
  }

  return v15;
}

id sub_10002D9C4(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void sub_10002DF38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained showActivityIndicatorWithStatus:&stru_1000C89F8];
  v3 = +[NAScheduler mainThreadScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002E07C;
  v10[3] = &unk_1000C5970;
  v10[4] = WeakRetained;
  v4 = [v3 afterDelay:v10 performBlock:1.0];

  v5 = [*(a1 + 32) activeTuple];
  v6 = [v5 accessory];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002E084;
  v8[3] = &unk_1000C66B0;
  v9 = v6;
  v7 = v6;
  [v7 identifyWithCompletionHandler:v8];
}

void sub_10002E084(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      sub_10007929C(a1);
    }

    v4 = +[HFErrorHandler sharedHandler];
    [v4 logError:v3 operationDescription:HFOperationIdentifyAccessory];
  }

  else if (v5)
  {
    sub_100079348(a1);
  }
}

void sub_10002E3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002E408(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HULocalizedString();
  v5 = [UIAlertController alertControllerWithTitle:v4 message:*(a1 + 32) preferredStyle:1];

  *(a1 + 72);
  v6 = HULocalizedString();
  objc_initWeak(location, *(a1 + 40));
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002E718;
  v22[3] = &unk_1000C6B90;
  objc_copyWeak(v25, location);
  v24 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v23 = v7;
  v25[1] = v8;
  v9 = [UIAlertAction actionWithTitle:v6 style:0 handler:v22];
  [v5 addAction:v9];
  *(a1 + 72);
  v10 = HULocalizedString();
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];
  [v5 addAction:v11];

  if (*(a1 + 72) == 1)
  {
    v12 = HULocalizedString();
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10002E880;
    v18 = &unk_1000C6BB8;
    v13 = *(a1 + 48);
    v19 = *(a1 + 40);
    v20 = v13;
    objc_copyWeak(v21, location);
    v21[1] = *(a1 + 64);
    v14 = [UIAlertAction actionWithTitle:v12 style:0 handler:&v15];

    [v5 addAction:{v14, v15, v16, v17, v18, v19}];
    objc_destroyWeak(v21);
  }

  [v5 setPreferredAction:v9];
  [*(a1 + 40) presentViewController:v5 animated:1 completion:0];

  objc_destroyWeak(v25);
  objc_destroyWeak(location);
}

void sub_10002E6DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_10002E718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained dismissButtonBlock];
    v4[2]();
  }

  v5 = [WeakRetained dismissFuture];
  [WeakRetained handleButtonDirectiveFuture:v5];

  v6 = *(a1 + 32);
  if (v6)
  {
    v10[0] = HFAnalyticsDataAccessoryCategoryTypeKey;
    v7 = [v6 category];
    v8 = [v7 categoryType];
    v10[1] = HFAnalyticsResumeSetupSelectedOptionKey;
    v11[0] = v8;
    v11[1] = &off_1000CD690;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

    [HFAnalytics sendEvent:*(a1 + 56) withData:v9];
  }
}

void sub_10002E880(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) showActivityIndicatorWithStatus:&stru_1000C89F8];
  v4 = [*(a1 + 32) dismissButtonAction];
  [v4 setEnabled:0];

  v5 = [*(a1 + 40) home];
  v6 = *(a1 + 40);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10002EA50;
  v13 = &unk_1000C5D18;
  objc_copyWeak(&v14, (a1 + 48));
  [v5 removeAccessory:v6 completionHandler:&v10];
  v15[0] = HFAnalyticsDataAccessoryCategoryTypeKey;
  v7 = [*(a1 + 40) category];
  v8 = [v7 categoryType];
  v15[1] = HFAnalyticsResumeSetupSelectedOptionKey;
  v16[0] = v8;
  v16[1] = &off_1000CD6A8;
  v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  [HFAnalytics sendEvent:*(a1 + 56) withData:v9];
  objc_destroyWeak(&v14);
}

void sub_10002EA50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hideActivityIndicator];
  v1 = [WeakRetained dismissFuture];
  [WeakRetained handleButtonDirectiveFuture:v1];
}

void sub_10002EAB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [WeakRetained dismissFuture];
  [WeakRetained handleButtonDirectiveFuture:v3];
}

void sub_10002ED44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002ED64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained futureReturningDirectiveFromTarget:*(a1 + 32) selector:*(a1 + 48)];
  [WeakRetained handleButtonDirectiveFuture:v2 target:*(a1 + 32)];
}

void sub_10002EFF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id sub_10002F014(uint64_t a1, void *a2)
{
  v3 = [a2 intValue];
  if (v3 == 1)
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      [v14 dismissProxCardFlowAfterExecuting:0];
    }

    else
    {
      [*(a1 + 48) dismissViewControllerAnimated:1 completion:0];
    }

    goto LABEL_11;
  }

  if (v3)
  {
LABEL_11:
    v13 = +[NAFuture futureWithNoResult];
    goto LABEL_12;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    NSLog(@"Coordinator is nil.  Are you sure your HSProxCardConfigurable stored the coordinator passed at initialization to self.coordinator?");
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100079458(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v4 = *(a1 + 32);
  }

  v13 = [v4 nextViewControllerWithTarget:*(a1 + 40)];
LABEL_12:

  return v13;
}

void sub_10002F0E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hideActivityIndicator];
  if (v6)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100079490();
    }
  }

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [WeakRetained navigationController];
    [v12 pushViewController:v11 animated:1];
  }
}

NAFuture *__cdecl sub_10002F38C(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = v5;
  if (!v5)
  {
    NSLog(@"Action returned a non valid object.  It should return NSNumber wrapping HSSetupButtonActionDirective");
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007965C(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v6 = &off_1000CD6A8;
  }

  v15 = [NAFuture futureWithResult:v6];

  return v15;
}

void sub_10002F544(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10002F9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10002FA18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 matchedLibraryItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 matchedLibraryItems];
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolved to installed app %@", buf, 0xCu);
    }

    v8 = [HULinkedApplicationLibraryItem alloc];
    v9 = [v3 matchedLibraryItems];
    v10 = [v9 anyObject];
    v11 = [v8 initWithApplicationProxy:v10];
    [*(a1 + 32) setLinkedApplicationItem:v11];

LABEL_9:
    v19 = [*(a1 + 32) linkedApplicationItem];
    v20 = [v19 updateWithOptions:&__NSDictionary0__struct];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10002FEA4;
    v27[3] = &unk_1000C5CC8;
    v27[4] = *(a1 + 32);
    objc_copyWeak(&v28, (a1 + 56));
    v21 = [v20 flatMap:v27];
    objc_destroyWeak(&v28);

    goto LABEL_10;
  }

  v12 = [v3 matchedStoreItems];
  v13 = [v12 count];

  if (v13)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v3 matchedStoreItems];
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Resolved to app store download %@", buf, 0xCu);
    }

    v16 = [HULinkedApplicationStoreItem alloc];
    v9 = [v3 matchedStoreItems];
    v17 = [v9 anyObject];
    v18 = [v16 initWithStoreItem:v17];
    [*(a1 + 32) setLinkedApplicationItem:v18];

    goto LABEL_9;
  }

  if ([*(a1 + 40) isEqualToString:HMAppStoreIDAppShack] && +[HFUtilities isInternalInstall](HFUtilities, "isInternalInstall"))
  {
    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Resolved to internal store download", buf, 2u);
    }

    v9 = [[HULinkedApplicationInternalStoreItem alloc] initWithBundleIdentifier:*(a1 + 48)];
    [*(a1 + 32) setLinkedApplicationItem:v9];
    goto LABEL_9;
  }

  if ([*(a1 + 40) isEqualToString:HMAppStoreIDLocal] && +[HFUtilities isInternalInstall](HFUtilities, "isInternalInstall"))
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Resolved to internal sideload", buf, 2u);
    }

    v9 = [[HULinkedApplicationInternalSideloadItem alloc] initWithBundleIdentifier:*(a1 + 48)];
    [*(a1 + 32) setLinkedApplicationItem:v9];
    goto LABEL_9;
  }

  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100077A00(v25);
  }

  v26 = HULocalizedString();
  [*(a1 + 32) setSubtitle:v26];

  v21 = +[NAFuture futureWithNoResult];
LABEL_10:

  return v21;
}

id sub_10002FEA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:HFResultDisplayTitleKey];
  v5 = HULocalizedString();
  v6 = [v3 objectForKeyedSubscript:HFResultApplicationIsInstalled];
  v7 = [v6 BOOLValue];

  if (!v7)
  {
    v9 = [v3 objectForKeyedSubscript:HFResultApplicationStoreURL];

    if (!v9)
    {
      v11 = [*(a1 + 32) linkedApplicationItem];
      objc_opt_class();
      objc_opt_isKindOfClass();

      v8 = HULocalizedString();
      goto LABEL_12;
    }

    v8 = HULocalizedString();

    if (v4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = HULocalizedString();
    goto LABEL_10;
  }

  v8 = HULocalizedString();

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = HULocalizedStringWithFormat();
LABEL_10:
  v5 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  [*(a1 + 32) setSubtitle:v8];
  v12 = *(a1 + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003015C;
  v21[3] = &unk_1000C5CA0;
  v21[4] = v12;
  v13 = [PRXAction actionWithTitle:v5 style:0 handler:v21];
  v14 = [v12 addAction:v13];

LABEL_12:
LABEL_13:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = [WeakRetained contentView];
  [v16 setNeedsUpdateConstraints];

  v17 = [WeakRetained view];
  [v17 bounds];
  [WeakRetained updatePreferredContentSizeForCardWidth:v18];

  v19 = +[NAFuture futureWithNoResult];

  return v19;
}

void sub_10003015C(uint64_t a1)
{
  v2 = [*(a1 + 32) linkedApplicationItem];
  v3 = [v2 latestResults];
  v12 = [v3 objectForKeyedSubscript:HFResultDisplayTitleKey];

  v4 = [*(a1 + 32) linkedApplicationItem];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:HFResultApplicationBundleIdentifier];

  v7 = [*(a1 + 32) linkedApplicationItem];
  v8 = [v7 latestResults];
  v9 = [v8 objectForKeyedSubscript:HFResultApplicationStoreURL];

  v10 = [[HFAppPunchoutRequest alloc] initWithName:v12 bundleID:v6 payloadURL:0 storeURL:v9];
  [*(a1 + 32) setPunchoutRequest:v10];

  v11 = [*(a1 + 32) popupDelegate];
  [v11 pairingPopupDidFinish:*(a1 + 32)];
}

void sub_100031240(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sharingDevice];
  v5 = [v4 deviceActionType];

  if (v5 != 11 && v5 != 33)
  {
    NSLog(@"We only support sharing devices with the SFDeviceActionType[Speaker]Setup actionType. Treating this as a speaker anyway");
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request to start pairing a speaker. Calling into Sharing to show the prox card", buf, 2u);
  }

  v7 = objc_alloc_init(SFClient);
  v8 = [*(a1 + 32) sharingDevice];
  v9 = [*(a1 + 40) coordinator];
  v10 = [v9 home];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000313BC;
  v12[3] = &unk_1000C66B0;
  v13 = v3;
  v11 = v3;
  [v7 setupDevice:v8 home:v10 completion:v12];
}

void sub_1000313BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request to start pairing speaker finished with error: %@", &v5, 0xCu);
  }

  [*(a1 + 32) finishWithNoResult];
}

void sub_100031480(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 commitConfiguration];
  [v1 handleButtonDirectiveFuture:v2];
}

void sub_1000318EC(id a1, AMSLookupResult *a2, NSError *a3)
{
  if (!a3)
  {
    v14 = v3;
    v15 = v4;
    v5 = [(AMSLookupResult *)a2 allItems];
    v6 = [v5 na_firstObjectPassingTest:&stru_1000C6D60];

    if (v6)
    {
      v7 = +[HFOpenURLRouter sharedInstance];
      v8 = [v6 productPageURL];
      v9 = [v7 openURL:v8];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100031A50;
      v11[3] = &unk_1000C6D88;
      v12 = 0;
      v13 = v6;
      v10 = [v9 addFailureBlock:v11];
    }
  }
}

BOOL sub_100031A0C(id a1, AMSLookupItem *a2)
{
  v2 = [(AMSLookupItem *)a2 bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.airport.mobileairportutility"];

  return v3;
}

void sub_100031A50(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000796CC(a1, v2);
  }
}

BOOL sub_100032220(id a1, PRXButton *a2)
{
  v2 = [(PRXButton *)a2 currentTitle];
  v3 = HULocalizedString();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id sub_100032A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HFMediaAccessoryItem alloc] initWithValueSource:*(a1 + 32) mediaProfileContainer:v3];

  v5 = [v4 enableDoorbellChime:*(a1 + 40)];

  return v5;
}

BOOL sub_100032C58(id a1, HFMediaProfileContainer *a2)
{
  v2 = [(HFMediaProfileContainer *)a2 settings];
  v3 = [v2 hf_accessorySettingAtKeyPath:HFHomePodMediaAccessorySettingKeyPathDoorbellChimeEnabled];

  return v3 != 0;
}

void sub_100033418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100034088(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1000E6710)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000341B4;
    v3[4] = &unk_1000C6ED0;
    v3[5] = v3;
    v4 = off_1000C6EB8;
    v5 = 0;
    qword_1000E6710 = _sl_dlopen();
  }

  if (!qword_1000E6710)
  {
    sub_1000797F8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SUICOrbView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10007977C();
  }

  qword_1000E6708 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000341B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000E6710 = result;
  return result;
}

id sub_100034748(uint64_t a1)
{
  v1 = [*(a1 + 32) config];
  v2 = [v1 configureAccessoryName];

  return v2;
}

id sub_100034798(uint64_t a1)
{
  v1 = [*(a1 + 32) config];
  v2 = [v1 configureAccessoryDateAdded];

  return v2;
}

void sub_100035824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100035850(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[8];
  WeakRetained[8] = v3;
  v6 = v3;

  v7 = [WeakRetained _shouldShowSingleContinueButton];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003594C;
  v11[3] = &unk_1000C6468;
  v12 = WeakRetained;
  v8 = WeakRetained;
  v9 = [v7 flatMap:v11];

  return v9;
}

NAFuture *sub_10003594C(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 32) addProminentButtonWithTitleKey:@"HUContinueTitle" target:*(a1 + 32) futureSelector:"commitConfiguration"];
    [*(a1 + 32) setContinueAction:v5];
  }

  else
  {
    v6 = sub_100063A44(@"HSProximityCardWalletKeyUWB_TurnOnUWBButton");
    v7 = [v4 addProminentButtonWithTitleKey:v6 target:*(a1 + 32) futureSelector:"commitConfiguration"];

    v5 = HULocalizedString();
    v8 = [*(a1 + 32) addOptionalButtonWithTitleKey:v5 target:*(a1 + 32) futureSelector:"_notNowTapped"];
  }

  return +[NAFuture futureWithNoResult];
}

id sub_100035A40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412802;
    v9 = v5;
    v10 = 2080;
    v11 = "[HSPCWalletKeyUWBViewController initWithCoordinator:config:]_block_invoke_3";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) hf_fetchWalletKeyDeviceState returned error %@", &v8, 0x20u);
  }

  v6 = +[NAFuture futureWithNoResult];

  return v6;
}

void sub_100036098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000360BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableUWBOfExistingWalletKeyAfterAuthWithPromise:v3];
}

void *sub_100036A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() description];
    v10 = 138412802;
    v11 = v6;
    v12 = 2080;
    v13 = "[HSPCWalletKeyUWBViewController _addWalletKeyWithiPhoneUWBOptions:pairedWatchesUWBOptions:]_block_invoke_3";
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Completed adding Wallet Key for iPhone with results %@", &v10, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = v7;

  return v7;
}

id sub_100036B64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() description];
    *buf = 138412802;
    v17 = v6;
    v18 = 2080;
    v19 = "[HSPCWalletKeyUWBViewController _addWalletKeyWithiPhoneUWBOptions:pairedWatchesUWBOptions:]_block_invoke";
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Failed adding Wallet Key for iPhone with iPhoneWalletKeyError %@", buf, 0x20u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100036D80;
  v14[3] = &unk_1000C5970;
  v15 = objc_alloc_init(NAFuture);
  v7 = v15;
  v8 = objc_retainBlock(v14);
  v9 = +[HFErrorHandler sharedHandler];
  [v9 handleError:v3 retryBlock:0 cancelBlock:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100036D90;
  v12[3] = &unk_1000C68B8;
  v13 = *(a1 + 40);
  v10 = [v7 flatMap:v12];

  return v10;
}

void sub_100037074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037098(id *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037180;
  block[3] = &unk_1000C6800;
  objc_copyWeak(&v11, a1 + 6);
  v12 = a2;
  v8 = v5;
  v9 = a1[4];
  v10 = a1[5];
  v6 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
}

void sub_100037180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 64) && !*(a1 + 32))
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412802;
      v26 = WeakRetained;
      v27 = 2080;
      v28 = "[HSPCWalletKeyUWBViewController _enableUWBOfExistingWalletKeyAfterAuthWithPromise:]_block_invoke";
      v29 = 2112;
      *v30 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Authentication succeeded to enable UWB for currently existing Wallet Key with localAuthenticationContext %@", buf, 0x20u);
    }

    v6 = [*(a1 + 40) externalizedContext];
    if (v6)
    {
      v7 = [WeakRetained config];
      v8 = [v7 home];
      v9 = [v8 hf_enableUWBForWalletKeyWithAuthData:v6 enableNFCExpress:1];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100037570;
      v23[3] = &unk_1000C67D8;
      v23[4] = WeakRetained;
      v24 = *(a1 + 48);
      v10 = [v9 flatMap:v23];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10003770C;
      v21[3] = &unk_1000C5998;
      v22 = *(a1 + 48);
      v11 = [v10 recover:v21];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100037808;
      v18[3] = &unk_1000C65D0;
      v19 = *(a1 + 40);
      v20 = WeakRetained;
      v12 = [v11 addCompletionBlock:v18];
    }

    else
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        *buf = 138412802;
        v26 = WeakRetained;
        v27 = 2080;
        v28 = "[HSPCWalletKeyUWBViewController _enableUWBOfExistingWalletKeyAfterAuthWithPromise:]_block_invoke";
        v29 = 2112;
        *v30 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(%@:%s) authData is nil. Invalidating LAContext %@", buf, 0x20u);
      }

      [*(a1 + 40) invalidate];
      [*(a1 + 48) finishWithResult:&off_1000CD720];
    }
  }

  else
  {
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 64);
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138413314;
      v26 = WeakRetained;
      v27 = 2080;
      v28 = "[HSPCWalletKeyUWBViewController _enableUWBOfExistingWalletKeyAfterAuthWithPromise:]_block_invoke_2";
      v29 = 1024;
      *v30 = v15;
      *&v30[4] = 2112;
      *&v30[6] = v16;
      v31 = 2112;
      v32 = v17;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "(%@:%s) When evaluating authentication policy, success = %{BOOL}d. authError = %@. Invalidating LAContext %@", buf, 0x30u);
    }

    [*(a1 + 40) invalidate];
    [*(a1 + 48) finishWithResult:&off_1000CD738];
  }
}

id sub_100037570(uint64_t a1)
{
  v2 = [*(a1 + 32) config];
  v3 = [v2 home];
  v4 = [v3 hf_walletKeyUUID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100037658;
  v8[3] = &unk_1000C6220;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = [v4 flatMap:v8];

  return v6;
}

id sub_100037658(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [*(a1 + 32) _updateHasOnboardedForWalletKey:v6];
  }

  [*(a1 + 40) finishWithResult:&off_1000CD720];
  v7 = +[NAFuture futureWithNoResult];

  return v7;
}

id sub_10003770C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFErrorHandler sharedHandler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000377F8;
  v7[3] = &unk_1000C5970;
  v8 = *(a1 + 32);
  [v4 handleError:v3 retryBlock:0 cancelBlock:v7];

  v5 = +[NAFuture futureWithNoResult];

  return v5;
}

void sub_100037808(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = 138412802;
    v6 = v3;
    v7 = 2080;
    v8 = "[HSPCWalletKeyUWBViewController _enableUWBOfExistingWalletKeyAfterAuthWithPromise:]_block_invoke_5";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(%@:%s) Completed hf_enableUWBForWalletKeyWithAuthData. Invalidating LAContext %@", &v5, 0x20u);
  }
}

void sub_100037AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100079878(v3, WeakRetained, v5);
    }
  }
}

void sub_100037F28(uint64_t a1)
{
  v2 = [*(a1 + 32) walletKeyDeviceState];
  v3 = [v2 walletKey];

  if (!v3)
  {
    v4 = [*(a1 + 32) _addWalletKeyWithoutUWB];
  }
}

void sub_1000382DC(uint64_t a1)
{
  v2 = [*(a1 + 32) popupDelegate];

  if (v2)
  {
    v3 = [*(a1 + 32) popupDelegate];
    [v3 pairingPopupDidCancel:*(a1 + 32)];
  }
}

void sub_1000387E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 commitConfiguration];
  [v1 handleButtonDirectiveFuture:v2];
}

id sub_1000388F8()
{
  if (qword_1000E6718 != -1)
  {
    sub_10007994C();
  }

  v1 = qword_1000E6720;

  return v1;
}

void sub_10003893C(id a1)
{
  qword_1000E6720 = sub_100038974();

  _objc_release_x1();
}

id sub_100038974()
{
  v2[0] = &off_1000CE1C8;
  v2[1] = &off_1000CE1E0;
  v0 = [NSArray arrayWithObjects:v2 count:2];

  return v0;
}

void sub_100039630(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000396F0;
  v8[3] = &unk_1000C6D88;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  [v5 updateAssistantAccessControl:v9 forHome:v6 completionHandler:v8];
}

void sub_1000396F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v10 = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      v7 = "Failed to enable personal requests with error %@ for %@, ";
      v8 = v4;
      v9 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v7 = "Successfully enabled personal requests";
    v8 = v4;
    v9 = 2;
    goto LABEL_6;
  }

  [*(a1 + 40) finishWithNoResult];
}

void sub_10003AC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003ACBC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained config];
  v6 = [v5 addedAccessory];
  v7 = [v6 hf_enableGridForecastAutomationTo:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003ADB0;
  v10[3] = &unk_1000C65D0;
  v10[4] = WeakRetained;
  v11 = v3;
  v8 = v3;
  v9 = [v7 addCompletionBlock:v10];
}

void sub_10003ADB0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003AE38;
  v2[3] = &unk_1000C57E0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_10003AE38(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003AEC0;
  v2[3] = &unk_1000C5970;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _hasOnboardedForCleanEnergyAutomationWithCompletion:v2];
}

void sub_10003B01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003B040(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained config];
  v6 = [v5 addedAccessory];
  v7 = [v6 hf_enableGridForecastAutomationTo:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003B134;
  v10[3] = &unk_1000C65D0;
  v10[4] = WeakRetained;
  v11 = v3;
  v8 = v3;
  v9 = [v7 addCompletionBlock:v10];
}

void sub_10003B134(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003B1BC;
  v2[3] = &unk_1000C57E0;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_10003B1BC(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003B244;
  v2[3] = &unk_1000C5970;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _hasOnboardedForCleanEnergyAutomationWithCompletion:v2];
}

void sub_10003B338(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100079960(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 136315394;
    v9 = "[HSPCCleanEnergyAutomationViewController _hasOnboardedForCleanEnergyAutomationWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

int64_t sub_10003C080(id a1, HMAccessory *a2, HMAccessory *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(HMAccessory *)v4 hf_userFriendlyLocalizedLowercaseDescription];
  v7 = [(HMAccessory *)v5 hf_userFriendlyLocalizedLowercaseDescription];
  if ([v6 isEqual:v7])
  {
    v8 = [(HMAccessory *)v4 isBridged];
    if (v8 == [(HMAccessory *)v5 isBridged])
    {
      v10 = [(HMAccessory *)v4 name];
      v11 = [(HMAccessory *)v5 name];
      v9 = [v10 localizedStandardCompare:v11];
    }

    else if ([(HMAccessory *)v4 isBridged])
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = [v6 localizedStandardCompare:v7];
  }

  return v9;
}

BOOL sub_10003C1AC(id a1, HMAccessory *a2)
{
  v2 = [(HMAccessory *)a2 services];
  v3 = [v2 na_any:&stru_1000C7060];

  return v3;
}

BOOL sub_10003C1F0(id a1, HMService *a2)
{
  v2 = [(HMService *)a2 serviceType];
  v3 = [v2 isEqualToString:HMServiceTypeValve];

  return v3;
}

BOOL sub_10003C24C(id a1, HMService *a2)
{
  v2 = a2;
  v3 = [(HMService *)v2 serviceType];
  if ([v3 isEqual:HMServiceTypeThermostat])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HMService *)v2 serviceType];
    v4 = [v5 isEqual:HMServiceTypeHeaterCooler];
  }

  return v4;
}

void sub_10003C644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003C678(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    [WeakRetained notifyDelegateOfPairingFailureWithError:v5];
  }

  else if (v25)
  {
    [WeakRetained didReceiveAccessories:?];
  }

  else
  {
    [WeakRetained setPairingState:3];
    v8 = +[NSError na_genericError];
    v9 = [v7 topAccessoryTuple];
    v10 = [v9 configuration];
    [v10 setPairingError:v8];
  }

  v11 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v11 logPairingComplete];

  v12 = +[HSAccessoryPairingEventLogger sharedLogger];
  [v12 logNumberOfPairedAccessories:{objc_msgSend(v25, "count")}];

  v13 = +[HSAccessoryPairingEventLogger sharedLogger];
  v14 = [v7 topAccessoryTuple];
  v15 = [v14 accessory];
  [v13 logAccessory:v15];

  v16 = [v7 topAccessoryTuple];
  v17 = [v16 configuration];
  v18 = [v17 roomName];
  if (![v18 length])
  {

    goto LABEL_10;
  }

  v19 = [v7 topAccessoryTuple];
  v20 = [v19 configuration];
  v21 = [v20 pairingError];

  if (v21)
  {
LABEL_10:
    v22 = [v7 delegate];
    v23 = [v7 topAccessoryTuple];
    v24 = [v23 configuration];
    [v22 coordinator:v7 updatedConfiguration:v24];
  }
}

void sub_10003CB3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id sub_10003CB64(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isAlreadyPairedError])
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stageCHIPAccessory Staged CHIP accessory without stagedCHIPAccessoryPairingIdentifier.", &v23, 2u);
    }

    v5 = [NAFuture futureWithResult:&stru_1000C89F8];
    goto LABEL_21;
  }

  v6 = [*(a1 + 32) pairingError];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [*(a1 + 32) pairingError];
  v9 = [v8 domain];
  if (([v9 isEqualToString:HFErrorDomain] & 1) == 0)
  {

    goto LABEL_12;
  }

  v10 = [*(a1 + 32) pairingError];
  v11 = [v10 code];

  if (v11 != 6)
  {
LABEL_12:
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "stageCHIPAccessory hit error %@", &v23, 0xCu);
    }

    [*(a1 + 32) setPairingError:v3];
    goto LABEL_15;
  }

  v12 = [*(a1 + 32) pairingError];

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "stageCHIPAccessory Accessory Discovery Timed Out", &v23, 2u);
  }

  v3 = v12;
LABEL_15:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = +[NSMutableDictionary dictionary];
  v17 = [*(a1 + 32) statusTitle];
  [v16 setObject:v17 forKeyedSubscript:HFErrorUserInfoOptionTitleKey];

  v18 = [*(a1 + 32) statusDescription];
  [v16 setObject:v18 forKeyedSubscript:HFErrorUserInfoOptionDescriptionKey];

  v19 = [v16 count];
  if (v19)
  {
    v20 = [v16 copy];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v3 hf_errorWithOperationType:0 options:v20];

  if (v19)
  {
  }

  [WeakRetained notifyDelegateOfPairingFailureWithError:v21];
  v5 = [NAFuture futureWithResult:&stru_1000C89F8];

  v3 = v21;
LABEL_21:

  return v5;
}

void sub_10003CE98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v3;
    v24 = 2048;
    v25 = [v3 length];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stagePairingFuture result %@ length %lu", buf, 0x16u);
  }

  v5 = [*(a1 + 32) pairingError];

  if (v5)
  {
    v6 = [*(a1 + 40) delegate];
    [v6 coordinator:*(a1 + 40) updatedConfiguration:*(a1 + 32)];
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = objc_opt_class();
      v10 = NSStringFromSelector(*(a1 + 48));
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138413058;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ pairing starting with partnerConfig: %@ coordinator: %@", buf, 0x2Au);
    }

    v13 = [*(a1 + 32) pairStagedCHIPAccessoryToPartnerAppHome];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10003D138;
    v20[3] = &unk_1000C5998;
    v21 = *(a1 + 32);
    v14 = [v13 recover:v20];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003D228;
    v18[3] = &unk_1000C7160;
    v17 = *(a1 + 32);
    v15 = v17.i64[0];
    v19 = vextq_s8(v17, v17, 8uLL);
    v16 = [v14 addSuccessBlock:v18];

    v6 = v21;
  }
}

id sub_10003D138(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "pairStagedCHIPAccessoryToPartnerAppHome hit error %@", &v7, 0xCu);
  }

  [*(a1 + 32) setPairingError:v3];
  v5 = +[NAFuture futureWithNoResult];

  return v5;
}

void sub_10003D228(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "pairStagedCHIPAccessoryToPartnerAppHome succeeded.", v4, 2u);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 coordinator:*(a1 + 32) updatedConfiguration:*(a1 + 40)];
}

id sub_10003D5FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ([*(a1 + 32) currentStep] == 51)
  {
    v5 = [*(a1 + 40) nextUnconfiguredBridgedAccessory];
    v6 = v4;
LABEL_3:

    v4 = v5;
    goto LABEL_8;
  }

  if ([*(a1 + 32) currentStep] == 57 && objc_msgSend(v3, "BOOLValue"))
  {
    v7 = [*(a1 + 40) nextUnconfiguredBridgedAccessory];
    v6 = v7;
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [*(a1 + 40) topAccessoryTuple];
    }

    v5 = v8;

    goto LABEL_3;
  }

LABEL_8:
  v9 = [NAFuture futureWithResult:v4];

  return v9;
}

id sub_10003D6EC(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setActiveTuple:v3];
  v4 = *(a1 + 40);
  if (v4 == v3)
  {
    v9 = +[NAFuture futureWithNoResult];
    goto LABEL_8;
  }

  v5 = [v4 accessory];
  v6 = +[NAFuture futureWithNoResult];
  v7 = [*(a1 + 32) topAccessoryTuple];
  v8 = v7;
  if (v7 != *(a1 + 40))
  {

LABEL_6:
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003D8BC;
    v15[3] = &unk_1000C61D0;
    v16 = v5;
    v11 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v15];

    v6 = v11;
    goto LABEL_7;
  }

  v10 = [v5 hf_isNetworkRouter];

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003DA8C;
  v13[3] = &unk_1000C6220;
  v13[4] = *(a1 + 32);
  v14 = v3;
  v9 = [v6 flatMap:v13];

LABEL_8:

  return v9;
}

void sub_10003D8BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003D96C;
  v6[3] = &unk_1000C71D8;
  v7 = v4;
  v8 = v3;
  v5 = v3;
  [v7 updatePendingConfigurationIdentifier:0 completionHandler:v6];
}

void sub_10003D96C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[HSProxCardCoordinator _generateNextStepWithActiveTuple:]_block_invoke_4";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s clearing pendingConfigurationIdentifier with updatePendingConfigurationIdentifier for accessory %@", &v7, 0x16u);
  }

  if (v3)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100079C80(a1, v3, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10003DCE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id sub_10003DD08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained activeTuple];
  v4 = [v3 currentStep];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [WeakRetained activeTuple];
    v9 = [WeakRetained activeTuple];
    v10 = [v9 accessory];
    v11 = [v10 hf_prettyDescription];
    v12 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:*(a1 + 40)];
    v13 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:v4];
    *buf = 138413314;
    v31 = v7;
    v32 = 2048;
    v33 = v8;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ tuple %p accessory %@ nextViewController %@->%@", buf, 0x34u);
  }

  if (v4 == 59)
  {
    v14 = [NSError hf_errorWithCode:37];
    v15 = [NAFuture futureWithError:v14];
  }

  else
  {
    v16 = [WeakRetained activeTuple];
    v14 = [v16 configuration];

    v17 = [WeakRetained delegate];
    v18 = [v17 viewControllerForCoordinator:WeakRetained step:v4];

    if (v18)
    {
      v15 = [NAFuture futureWithResult:v18];
    }

    else
    {
      v19 = [HSSetupContentProvider contentForStep:v4 coordinator:WeakRetained config:v14];
      if (!v19)
      {
        NSLog(@"No VC found for step %zu", v4);
      }

      objc_opt_class();
      v20 = v19;
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if ([WeakRetained requiresIdentifyButton])
      {
        [v22 addIdentifyButtonWithCoordinator:WeakRetained];
      }

      objc_opt_class();
      v23 = v22;
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if (!v25)
      {
        v26 = [WeakRetained _bridgedConfigurationOrdinalityString];
        if ([v26 length])
        {
          [v23 setBottomTrayTitle:v26];
        }
      }

      v27 = HFLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:v4];
        *buf = 138412546;
        v31 = v28;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Prox Card UI Transition -> %@ | VC: %@", buf, 0x16u);
      }

      v15 = [NAFuture futureWithResult:v20];
    }
  }

  return v15;
}

id sub_10003E0F4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9 || [v9 canContinue])
  {
    [v7 addDismissButtonWithCoordinator:*(a1 + 32)];
  }

  v10 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) configureNextViewController:v4];
  }

  v11 = v4;
  v12 = &OBJC_PROTOCOL___HUPreloadableViewController;
  if ([v11 conformsToProtocol:v12])
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [v14 hu_preloadContent];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003E2D4;
    v18[3] = &unk_1000C5F60;
    v19 = v11;
    v16 = [v15 flatMap:v18];
  }

  else
  {
    v16 = [NAFuture futureWithResult:v11];
  }

  return v16;
}

id sub_10003E2E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = &OBJC_PROTOCOL___HSProxCardConfigurable;
  if ([v3 conformsToProtocol:v4])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = objc_opt_respondsToSelector();
  if (v6 && (v7 & 1) != 0)
  {
    v8 = [v6 shouldSkip];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003E470;
    v14[3] = &unk_1000C6C58;
    v9 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v9;
    v16 = v3;
    v10 = [v8 flatMap:v14];
  }

  else
  {
    v11 = +[HSAccessoryPairingEventLogger sharedLogger];
    v12 = [*(a1 + 32) activeTuple];
    [v11 logStepStart:{objc_msgSend(v12, "currentStep")}];

    v10 = [NAFuture futureWithResult:v3];
  }

  return v10;
}

id sub_10003E470(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [*(a1 + 32) activeTuple];
    v9 = [*(a1 + 32) activeTuple];
    v10 = [v9 accessory];
    v11 = [v10 hf_prettyDescription];
    v12 = [*(a1 + 32) activeTuple];
    v13 = +[HSSetupContentProvider stringForHSProxCardSetupUIStep:](HSSetupContentProvider, "stringForHSProxCardSetupUIStep:", [v12 currentStep]);
    v18 = 138413314;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    v26 = 1024;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ tuple %p accessory %@ nextViewController for step %@ has skip logic and shouldSkip = %d", &v18, 0x30u);
  }

  if (v3)
  {
    [*(a1 + 32) nextViewControllerWithTarget:*(a1 + 40)];
  }

  else
  {
    v15 = +[HSAccessoryPairingEventLogger sharedLogger];
    v16 = [*(a1 + 32) activeTuple];
    [v15 logStepStart:{objc_msgSend(v16, "currentStep")}];

    [NAFuture futureWithResult:*(a1 + 48)];
  }
  v14 = ;

  return v14;
}

void sub_10003E67C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:HFErrorDomain])
  {
    v5 = [v3 code];

    if (v5 == 37)
    {
      v6 = HFLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v9 = "[HSProxCardCoordinator nextViewControllerWithTarget:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Unable to determine next view controller because we have reached HSProxCardSetupUIStepDismiss.  Will dismiss flow", buf, 0xCu);
      }

      [*(a1 + 32) dismissProxCardFlowAfterExecuting:0];
      goto LABEL_10;
    }
  }

  else
  {
  }

  NSLog(@"%s Unable to determine the next view controller: %@", "[HSProxCardCoordinator nextViewControllerWithTarget:]_block_invoke", v3);
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100079D1C();
  }

LABEL_10:
}

void sub_10003EC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10003ECC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessory];
  if (v4 && [v3 currentStep] <= 49)
  {
    v5 = +[HSSetupContentProvider stringForHSProxCardSetupUIStep:](HSSetupContentProvider, "stringForHSProxCardSetupUIStep:", [v3 currentStep]);
  }

  else
  {
    v5 = 0;
  }

  if ([v4 isBridged])
  {
    v6 = [v4 room];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 room];
      v9 = [*(a1 + 32) roomForEntireHome];
      v10 = [v8 isEqual:v9];

      if ((v10 & 1) == 0)
      {

        v5 = 0;
      }
    }
  }

  v11 = [v4 pendingConfigurationIdentifier];
  v12 = v11;
  if (v4 && ((v5 == 0) == (v11 != 0) || v11 && ([v11 isEqualToString:v5] & 1) == 0))
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003EED0;
    v15[3] = &unk_1000C62C0;
    v16 = v4;
    v17 = v5;
    v18 = v12;
    v13 = [NAFuture futureWithErrorOnlyHandlerAdapterBlock:v15];
  }

  else
  {
    v13 = +[NAFuture futureWithNoResult];
  }

  return v13;
}

void sub_10003EED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EFB0;
  v7[3] = &unk_1000C7278;
  v8 = v4;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v3;
  v6 = v3;
  [v8 updatePendingConfigurationIdentifier:v5 completionHandler:v7];
}

void sub_10003EFB0(void *a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v9 = 136315906;
    v10 = "[HSProxCardCoordinator dismissProxCardFlowAfterExecuting:]_block_invoke_3";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s setting pendingConfigurationIdentifier with updatePendingConfigurationIdentifier for accessory %@ {from: %@, to: %@}", &v9, 0x2Au);
  }

  if (v3)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100079E28(a1, v3, v8);
    }
  }

  (*(a1[7] + 16))();
}

void sub_10003F0E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained accessoryBrowser];
  [v5 stopSearchingForNewAccessoriesWithError:v4];

  v6 = [WeakRetained delegate];
  [v6 coordinatorRequestedDismissal:WeakRetained];
}

void sub_10003FC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003FC48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pairAccessory];
}

BOOL sub_100040430(id a1, HMAccessory *a2)
{
  v2 = a2;
  if ([(HMAccessory *)v2 isBridged])
  {
    v3 = [(HMAccessory *)v2 services];
    v4 = [v3 na_any:&stru_1000C7388] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

BOOL sub_100040498(id a1, HMService *a2)
{
  v2 = [(HMService *)a2 serviceType];
  v3 = [v2 isEqualToString:HMServiceTypeValve];

  return v3;
}

void sub_100040DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v6 homeManager];
  v5 = [v4 accessorySetupCoordinator];
  [v5 createSetupAccessoryPayloadWithCHIPDecimalStringRepresentation:*(a1 + 32) completionHandler:v3];
}

id sub_100040E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [WeakRetained showCustomCommissioningFlowAlertIfNecessaryForPayload:v7 onViewController:*(a1 + 40)];
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [WeakRetained setupAccessoryDescription];
      v13 = [WeakRetained discoveredAccessory];
      v14 = *(a1 + 32);
      v15 = 136316162;
      v16 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]_block_invoke_2";
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Matter - Got no payload - [ setupAccessoryDescription:%@, discoveredAccessory:%@, setupCode:%@, result:%@]", &v15, 0x34u);
    }

    v10 = [NSError hf_errorWithCode:33];
    v8 = [NAFuture futureWithError:v10];
  }

  return v8;
}

id sub_100041058(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = HFLogForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [WeakRetained setupAccessoryDescription];
      v11 = [WeakRetained discoveredAccessory];
      v12 = *(a1 + 32);
      v21 = 136316162;
      v22 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]_block_invoke";
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Updating setupAccessoryDescription with payload - [ setupAccessoryDescription:%@, payload:%@, discoveredAccessory:%@, setupCode:%@ ]", &v21, 0x34u);
    }

    v13 = [WeakRetained setupAccessoryDescription];
    [v13 updateWithSetupAccessoryPayload:v7];

    v14 = [WeakRetained pairingFuture];
    [v14 updateSetupPayload:v7];

    v15 = +[NAFuture futureWithNoResult];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = [WeakRetained setupAccessoryDescription];
      v19 = [WeakRetained discoveredAccessory];
      v20 = *(a1 + 32);
      v21 = 136316162;
      v22 = "[HSProxCardCoordinator _discoveredAccessoryOrSetupCodeDidUpdateWithPayload:fromViewController:]_block_invoke";
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Got no payload - [ setupAccessoryDescription:%@, discoveredAccessory:%@, setupCode:%@, result:%@]", &v21, 0x34u);
    }

    v16 = [NSError hf_errorWithCode:33];
    v15 = [NAFuture futureWithError:v16];
  }

  return v15;
}

NAFuture *sub_100041304(uint64_t a1)
{
  v1 = [*(a1 + 32) topAccessoryTuple];
  v2 = [v1 configuration];
  [v2 setIsReadyToPair:1];

  return +[NAFuture futureWithNoResult];
}

void sub_100041AC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v6 homeManager];
  v5 = [v4 accessorySetupCoordinator];
  [v5 createCHIPSetupPayloadStringForStagedPairingWithIdentifier:*(a1 + 32) completionHandler:v3];
}

id sub_100041B58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(a1 + 32);
    *buf = 138412802;
    v20 = v5;
    v21 = 2112;
    v22 = v3;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ retrieved setupPayloadString %@ from locker accessory %@", buf, 0x20u);
  }

  v7 = [*(a1 + 40) discoveredAccessory];
  [v7 setRawSetupPayloadString:v3];

  objc_initWeak(buf, *(a1 + 40));
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100041DB4;
  v17[3] = &unk_1000C73B0;
  v8 = v3;
  v18 = v8;
  v9 = [NAFuture futureWithCompletionHandlerAdapterBlock:v17];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100041E48;
  v14[3] = &unk_1000C7428;
  objc_copyWeak(v16, buf);
  v10 = v8;
  v11 = *(a1 + 48);
  v15 = v10;
  v16[1] = v11;
  v12 = [v9 flatMap:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);

  return v12;
}

void sub_100041D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100041DB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v4 = [v6 homeManager];
  v5 = [v4 accessorySetupCoordinator];
  [v5 createSetupAccessoryPayloadWithSetupPayloadURLString:*(a1 + 32) completionHandler:v3];
}

id sub_100041E48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = HFLogForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(*(a1 + 48));
      v11 = *(a1 + 32);
      v20 = 138412802;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ createSetupAccessoryPayloadWithSetupPayloadURLString:completionHandler:, setupPayloadString %@, payload %@.", &v20, 0x20u);
    }

    v12 = [WeakRetained setupAccessoryDescription];
    [v12 updateWithSetupAccessoryPayload:v7];

    v13 = [WeakRetained pairingFuture];
    [v13 updateSetupPayload:v7];

    v14 = +[NAFuture futureWithNoResult];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = [WeakRetained setupAccessoryDescription];
      v18 = [WeakRetained discoveredAccessory];
      v19 = *(a1 + 32);
      v20 = 136316162;
      v21 = "[HSProxCardCoordinator didReceiveDiscoveredAccessory:withPayload:]_block_invoke_2";
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s Matter - Got no payload - [ setupAccessoryDescription:%@, discoveredAccessory:%@, setupPayloadString:%@, result:%@]", &v20, 0x34u);
    }

    v15 = [NSError hf_errorWithCode:33];
    v14 = [NAFuture futureWithError:v15];
  }

  return v14;
}

id sub_1000420C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10007A030(a1);
  }

  v5 = [NAFuture futureWithError:v3];

  return v5;
}

id sub_100042414(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isUsingHAPCommunicationProtocol])
  {
LABEL_8:
    v5 = +[NAFuture futureWithNoResult];
    goto LABEL_9;
  }

  if (([*v2 isUsingCHIPCommunicationProtocol] & 1) == 0)
  {
    sub_10007A0DC();
  }

  v3 = [*v2 discoveredAccessory];

  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "We continue pairing within _discoveredAccessoryOrSetupCodeDidUpdateFromViewController", buf, 2u);
    }

    goto LABEL_8;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000426DC;
  v21[3] = &unk_1000C6298;
  v7 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v7;
  v8 = [NAFuture futureWithCompletionHandlerAdapterBlock:v21];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004278C;
  v18[3] = &unk_1000C7498;
  v9 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v9;
  v20 = *(a1 + 48);
  v10 = [v8 flatMap:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100042898;
  v16[3] = &unk_1000C74C0;
  v11 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = v11;
  v12 = [v10 flatMap:v16];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000429F8;
  v14[3] = &unk_1000C6F58;
  v13 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v13;
  v5 = [v12 recover:v14];

LABEL_9:

  return v5;
}

void sub_1000426DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 discoveredAccessory];
  [v5 setRawSetupPayloadString:*(a1 + 40)];

  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v8 homeManager];
  v7 = [v6 accessorySetupCoordinator];
  [v7 createSetupAccessoryPayloadWithCHIPDecimalStringRepresentation:*(a1 + 40) completionHandler:v4];
}

id sub_10004278C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [*(a1 + 32) showCustomCommissioningFlowAlertIfNecessaryForPayload:v6 onViewController:*(a1 + 48)];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A14C(a1);
    }

    v9 = [NSError hf_errorWithCode:33];
    v7 = [NAFuture futureWithError:v9];
  }

  return v7;
}

id sub_100042898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) setupAccessoryDescription];
  [v4 updateWithSetupAccessoryPayload:v3];

  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) setupAccessoryDescription];
    v7 = [*(a1 + 32) discoveredAccessory];
    v8 = *(a1 + 40);
    v11 = 136316162;
    v12 = "[HSProxCardCoordinator didReceiveSetupCode:withPayload:fromViewController:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v3;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Updating setupAccessoryDescription with payload - [ setupAccessoryDescription:%@, payload:%@, discoveredAccessory:%@, setupCode:%@ ]", &v11, 0x34u);
  }

  v9 = +[NAFuture futureWithNoResult];

  return v9;
}

id sub_1000429F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != HFErrorDomain)
  {

LABEL_7:
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007A218(a1);
    }

    v12 = HULocalizedString();
    v13 = HULocalizedString();
    v14 = [NSError hf_errorWithCode:62 title:v12 description:v13];

    [*(a1 + 32) setSetupCode:0];
    v3 = v14;
    goto LABEL_10;
  }

  v6 = [v3 code];

  if (v6 != 96)
  {
    goto LABEL_7;
  }

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) setupAccessoryDescription];
    v9 = [*(a1 + 32) discoveredAccessory];
    v10 = *(a1 + 40);
    v17 = 136315906;
    v18 = "[HSProxCardCoordinator didReceiveSetupCode:withPayload:fromViewController:]_block_invoke";
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Custom commission flow was canceled - [ setupAccessoryDescription:%@, discoveredAccessory:%@, setupCode:%@]", &v17, 0x2Au);
  }

LABEL_10:
  v15 = [NAFuture futureWithError:v3];

  return v15;
}

void sub_100042E10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HULocalizedString();
  v5 = HULocalizedString();
  v6 = [UIAlertController alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = HULocalizedString();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004302C;
  v16[3] = &unk_1000C5DE0;
  v8 = v3;
  v17 = v8;
  v9 = [UIAlertAction actionWithTitle:v7 style:1 handler:v16];

  [v6 addAction:v9];
  v10 = HULocalizedString();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000430C8;
  v13[3] = &unk_1000C5DB8;
  v14 = v8;
  v15 = *(a1 + 32);
  v11 = v8;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:v13];

  [v6 addAction:v12];
  [v6 setPreferredAction:v12];
  [*(a1 + 40) presentViewController:v6 animated:1 completion:0];
}

void sub_10004302C(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Custom commission flow was canceled", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [NSError hf_errorWithCode:96];
  [v3 finishWithError:v4];
}

id sub_1000430C8(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Custom commission flow will continue", v4, 2u);
  }

  return [*(a1 + 32) finishWithResult:*(a1 + 40)];
}

id sub_100043598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 handleFailureInFunction:v5 file:a4 lineNumber:54 description:?];
}

void sub_1000438F8(id a1)
{
  qword_1000E6728 = objc_alloc_init(HSAccessoryPairingEventLogger);

  _objc_release_x1();
}

void sub_100044CE8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 < a3)
  {
    v20 = v11;
    v21 = v10;
    v22 = v9;
    v23 = v8;
    v24 = v7;
    v25 = v6;
    v26 = v5;
    v27 = v4;
    v28 = v12;
    v29 = v13;
    v16 = a2;
    do
    {
      v18 = *(a1 + 32);
      v19 = [NSNumber numberWithUnsignedInteger:v16, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29];
      [v18 addObject:v19];

      v16 += a4;
    }

    while (v16 < a3);
  }
}

void sub_1000458F0(id a1)
{
  v1 = HFLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_10007A37C(v1);
  }
}

id sub_100045938(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ending background task (assuming host app is connected by now)", v5, 2u);
  }

  v3 = +[UIApplication sharedApplication];
  [v3 endBackgroundTask:{objc_msgSend(*(a1 + 32), "backgroundTaskIdentifier")}];

  return [*(a1 + 32) setBackgroundTaskIdentifier:UIBackgroundTaskInvalid];
}

void sub_100046138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004615C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained hideActivityIndicator];
  v3 = [WeakRetained delegate];
  v6[0] = HUConfigurationResultActionKey;
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v7[0] = v4;
  v6[1] = HUConfigurationResultCurrentViewControllerClassKey;
  v7[1] = objc_opt_class();
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v3 viewController:WeakRetained didFinishWithConfigurationResults:v5];
}

uint64_t sub_1000466A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 topAccessoryTuple];
  v5 = [v4 accessory];
  v6 = [v5 uniqueIdentifier];
  v7 = [v3 accessory];

  v8 = [v7 uniqueIdentifier];
  v9 = [v6 isEqual:v8];

  return v9 ^ 1;
}

void sub_100046860(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 updateAccessoriesPendingConfiguration:v3];
  [v4 finishWithResult:&off_1000CD810];
}

void sub_1000476CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 addObjectsFromArray:v3];
}

void sub_1000479DC(uint64_t a1, void *a2, unint64_t a3)
{
  v15 = a2;
  if (*(a1 + 40) == a3 && [*(a1 + 32) isFirstResponder])
  {
    v5 = [*(a1 + 32) tintColor];
    v6 = [v5 CGColor];
    v7 = [v15 layer];
    [v7 setBorderColor:v6];

    v8 = 2.0;
  }

  else
  {
    v9 = +[UIColor systemLightMidGrayColor];
    v10 = [v9 CGColor];
    v11 = [v15 layer];
    [v11 setBorderColor:v10];

    v8 = 1.0;
    if (*(*(a1 + 32) + 32) <= 6uLL)
    {
      v8 = *(a1 + 48) + 1.0;
    }
  }

  v12 = [v15 layer];
  [v12 setBorderWidth:v8];

  if (*(a1 + 40) <= a3)
  {
    v13 = [v15 label];
    [v13 setText:&stru_1000C89F8];
  }

  else
  {
    v13 = [*(*(a1 + 32) + 8) substringWithRange:{a3, 1}];
    v14 = [v15 label];
    [v14 setText:v13];
  }
}

void sub_100049660(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007A454();
    }
  }

  else
  {
    if (a2 == 5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [*(a1 + 32) setBluetoothInterfaceStatus:v7];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100049754(id a1, NSError *a2)
{
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10007A4D4();
  }
}

void sub_100049D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100049D28(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    NSLog(@"Missing Bluetooth and WiFi alert title for bluetooth interface state: %d WiFi interface state: %d", [*(a1 + 40) bluetoothInterfaceStatus], objc_msgSend(*(a1 + 40), "_wiFiInterfaceStatus"));
  }

  if (!*(a1 + 48))
  {
    NSLog(@"Missing Bluetooth and WiFi alert description for bluetooth interface state: %d WiFi interface state: %d", [*(a1 + 40) bluetoothInterfaceStatus], objc_msgSend(*(a1 + 40), "_wiFiInterfaceStatus"));
  }
}

void sub_100049DAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNetworkInterfacePowerState:1];
}

void sub_10004A0A4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

id sub_10004B03C(uint64_t a1)
{
  v2 = [*(a1 + 32) entitlementContext];
  v3 = [v2 isEntitledForHomeKitSPI];

  if (v3)
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = objc_opt_new();
    v16 = HMAccessoryCategoryTypeAppleTV;
    v5 = [NSArray arrayWithObjects:&v16 count:1];
    [v4 addObjectsFromArray:v5];

    v6 = [*(a1 + 32) entitlementContext];
    v7 = [v6 isEntitledForAll3rdPartyAccessoryTypes];

    if ((v7 & 1) == 0)
    {
      v15 = HMAccessoryCategoryTypeAirPort;
      v8 = [NSArray arrayWithObjects:&v15 count:1];
      [v4 addObjectsFromArray:v8];

      v14[0] = HMAccessoryCategoryTypeTelevision;
      v14[1] = HMAccessoryCategoryTypeTelevisionSetTopBox;
      v14[2] = HMAccessoryCategoryTypeTelevisionStreamingStick;
      v9 = [NSArray arrayWithObjects:v14 count:3];
      [v4 addObjectsFromArray:v9];

      v10 = [*(a1 + 32) entitlementContext];
      LOBYTE(v9) = [v10 isEntitledForThirdPartySetupAccessoryPayload];

      if ((v9 & 1) == 0)
      {
        v13[0] = HMAccessoryCategoryTypeSpeaker;
        v13[1] = HMAccessoryCategoryTypeAudioReceiver;
        v11 = [NSArray arrayWithObjects:v13 count:2];
        [v4 addObjectsFromArray:v11];

        [v4 addObject:HMAccessoryCategoryTypeWiFiRouter];
      }
    }
  }

  return v4;
}

void sub_10004B5C0(uint64_t a1)
{
  v4 = +[UIColor clearColor];
  v2 = [*(a1 + 32) navigationItem];
  v3 = [v2 leftBarButtonItem];
  [v3 setTintColor:v4];
}

void sub_10004B63C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v1 = [v2 leftBarButtonItem];
  [v1 setEnabled:0];
}

void sub_10004B69C(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v1 = [v2 leftBarButtonItem];
  [v1 setTintColor:0];
}

id sub_10004C888()
{
  if (qword_1000E6738 != -1)
  {
    sub_10007A7E4();
  }

  v1 = qword_1000E6740;

  return v1;
}

void sub_10004C8CC(id a1)
{
  v1 = qword_1000E6740;
  qword_1000E6740 = &off_1000CE1F8;
}

id sub_10004CB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  return [a12 handleFailureInFunction:v12 file:a4 lineNumber:54 description:?];
}

BOOL sub_10004CD24(id a1, HMService *a2)
{
  v2 = a2;
  v3 = [(HMService *)v2 serviceType];
  v4 = [v3 isEqualToString:HMServiceTypeValve];

  if ((v4 & 1) == 0)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(HMService *)v2 localizedDescription];
      v8 = 136315650;
      v9 = "+[HSPCNameZonesViewController applicableServicesForAccessory:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s skipping %@ %@", &v8, 0x20u);
    }
  }

  return v4;
}

void sub_10004D1FC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] sessionQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004D300;
  v10[3] = &unk_1000C7848;
  objc_copyWeak(&v14, a1 + 6);
  v11 = v6;
  v12 = a1[5];
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
}

void sub_10004D300(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v4 = HFLogForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007A878((a1 + 32));
    }

    [WeakRetained setOverallSession:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D52C;
    block[3] = &unk_1000C57E0;
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);

    v6 = v16;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NFC: Started session", buf, 2u);
    }

    [WeakRetained setNearFieldReaderSession:*(a1 + 48)];
    v7 = [WeakRetained nearFieldReaderSession];
    [v7 setDelegate:WeakRetained];

    v8 = *(a1 + 48);
    v13 = 0;
    v9 = [v8 startPollingWithError:&v13];
    v6 = v13;
    if ((v9 & 1) == 0)
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10007A8F0();
      }
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004D538;
    v11[3] = &unk_1000C5970;
    v12 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v11);
  }
}

void sub_10004D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D7DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004D808(uint64_t a1)
{
  v2 = [*(a1 + 32) overallSession];
  [v2 endSession];

  v3 = [*(a1 + 32) nearFieldReaderSession];
  [v3 endSession];

  [*(a1 + 32) setOverallSession:0];
  [*(a1 + 32) setNearFieldReaderSession:0];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NFC: Ended session", v7, 2u);
  }

  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

id sub_10004EE04(void *a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Succesfully set associated type %@ on %@", &v7, 0x16u);
  }

  v5 = a1[6];

  return v5;
}

void *sub_10004EED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10007AA18(v3, v4);
  }

  v5 = *(a1 + 32);
  v6 = v5;

  return v5;
}

id sub_10004F604(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  v2 = [NAFuture futureWithResult:v1];

  return v2;
}

id sub_10004F670(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10007AAB0(a1, v3, v4);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 handleError:v3];

  v6 = [NAFuture futureWithResult:&off_1000CD9D8];

  return v6;
}

id sub_10004FE98(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [HURestrictedGuestAccessSettingsModule alloc];
  v8 = [*(a1 + 32) addedAccessory];
  v9 = [v7 initWithItemUpdater:v5 home:v6 accessoryToAdd:v8];

  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];

  return v10;
}

HUItemModuleController *__cdecl sub_10004FF88(id a1, HFItemModule *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      sub_1000774F0(v4, v3);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [[HURestrictedGuestAccessSettingsModuleController alloc] initWithModule:v6];

  return v7;
}

id *sub_1000502A8(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10007AB3C();
    }

    return [v2[4] dismissViewControllerAnimated:0 completion:0];
  }

  return result;
}

void sub_100050430(void *a1, uint64_t a2)
{
  v4 = +[NSDate now];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = v5;

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[HSProximityCardHostViewController _refreshHomeGraphWithCompletion:]_block_invoke";
    v21 = 2048;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s refresh took %f", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005066C;
  v17[3] = &unk_1000C7948;
  v8 = a1[6];
  v17[4] = a1[5];
  v18 = v8;
  v9 = objc_retainBlock(v17);
  if (a2)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10007ABBC();
    }

    v11 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000507A8;
    block[3] = &unk_1000C7970;
    v16 = v9;
    dispatch_after(v11, &_dispatch_main_q, block);
    v12 = v16;
  }

  else
  {
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    v13 = [v12 allHomesFuture];
    v14 = [v13 addCompletionBlock:v9];
  }
}

void sub_10005066C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[HSProximityCardHostViewController _refreshHomeGraphWithCompletion:]_block_invoke";
      v11 = 1024;
      v12 = 123;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : %d fetched all homes after home graph refresh. Homes: %@", &v9, 0x1Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007AC3C();
    }

    [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_1000507A8(uint64_t a1)
{
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v2 = [v4 allHomesFuture];
  v3 = [v2 addCompletionBlock:*(a1 + 32)];
}

void sub_100050B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100050BA4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100051110;
  v32[3] = &unk_1000C79C0;
  v32[4] = WeakRetained;
  v5 = [v3 na_firstObjectPassingTest:v32];
  v6 = [v5 accessories];
  if ([WeakRetained launchReason] != 1)
  {
    if ([WeakRetained launchReason] == 2)
    {
      v11 = [v5 hf_safetyAndSecuritySupportedAccessories];
    }

    else if ([WeakRetained launchReason] == 3)
    {
      v11 = [v5 hf_siriEndpointCapableAccessoriesToOnboard];
    }

    else
    {
      if ([WeakRetained launchReason] != 6)
      {
        if ([WeakRetained launchReason] == 4 || objc_msgSend(WeakRetained, "launchReason") == 5)
        {
          v22 = objc_opt_new();
          v23 = [v5 hf_accessoriesSupportingAccessCodes];
          [v22 na_safeAddObjectsFromArray:v23];

          v24 = [v5 hf_walletKeyAccessories];
          [v22 na_safeAddObjectsFromArray:v24];

          v7 = [HFUtilities sortedLockAccessoryArrayForSetup:v22];
        }

        else if ([WeakRetained launchReason] == 7)
        {
          v25 = [v5 hf_autoClimateCapableThermostatsToOnboard];
          v26 = [v25 firstObject];

          v7 = [NSArray arrayWithObject:v26];
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_13;
      }

      v11 = [v5 hf_accessoriesSupportingAccessCodes];
    }

    v7 = v11;
    goto LABEL_13;
  }

  v7 = [v6 na_filter:&stru_1000C79E0];
  if (![v7 count])
  {
    [*(a1 + 32) objectForKeyedSubscript:HUHomeUIServiceLaunchAccessoryUUIDsArray];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000512B4;
    v31 = v30[3] = &unk_1000C61F8;
    v27 = v31;
    v8 = [v6 na_filter:v30];
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 hf_prettyDescription];
      *buf = 136315394;
      v34 = "[HSProximityCardHostViewController configureWithContext:completion:]_block_invoke_2";
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s We received the accessoriesFromPayload but their pendingConfigurationIdentifier are nil. This is most likely due to HomeKit accessoryDidUpdatePendingConfigurationIdentifier: callback delay to Home app. We know it because HomeUIService has the latest home graph. The Home app banner should dismiss in a few seconds. No accessories to resume setup with. %@", buf, 0x16u);
    }
  }

LABEL_13:
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = [v7 count];
    *buf = 136316162;
    v34 = "[HSProximityCardHostViewController configureWithContext:completion:]_block_invoke";
    v35 = 2112;
    v36 = v5;
    v37 = 2112;
    v38 = v13;
    v39 = 2112;
    v40 = v7;
    v41 = 2048;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(%s) home %@ userInfo %@ accessoriesToResumeSetup %@ count %ld", buf, 0x34u);
  }

  [WeakRetained setAccessoriesToResumeSetup:v7];
  if ([v7 count])
  {
    v15 = [HSProxCardCoordinator alloc];
    v16 = [WeakRetained accessoriesToResumeSetup];
    v17 = [(HSProxCardCoordinator *)v15 initWithHome:v5 accessories:v16 delegate:WeakRetained];
    [WeakRetained setCoordinator:v17];

    v18 = [WeakRetained coordinator];
    v19 = [v18 nextViewController];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100051314;
    v28[3] = &unk_1000C7A08;
    objc_copyWeak(&v29, (a1 + 40));
    v20 = [v19 addSuccessBlock:v28];

    objc_destroyWeak(&v29);
  }

  else
  {
    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10007AD50(a1);
    }

    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_100051110(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) resumeSetupHomeUUIDString];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

BOOL sub_100051184(id a1, HMAccessory *a2)
{
  v2 = a2;
  v3 = [(HMAccessory *)v2 name];
  v4 = [(HMAccessory *)v2 pendingConfigurationIdentifier];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HMAccessory *)v2 hf_prettyDescription];
    v9 = 136315906;
    v10 = "[HSProximityCardHostViewController configureWithContext:completion:]_block_invoke_3";
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s name %@ pendingConfigurationIdentifier %@ accessory %@", &v9, 0x2Au);
  }

  v7 = [v4 length] != 0;
  return v7;
}

id sub_1000512B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v2 containsObject:v4];

  return v5;
}

void sub_100051314(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentProxCardFlowWithInitialViewController:v3];
}

void sub_100051A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100051A2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100051AE4;
  v5[3] = &unk_1000C7A58;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100051AE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxNavigationController];
  [v2 pushViewController:*(a1 + 32) animated:1];
}

void sub_100051EC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxNavigationController];
  v3 = [*(a1 + 32) currentViewController];
  [v2 pushViewController:v3 animated:1];
}

void sub_1000520FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100052128(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000521E0;
  v5[3] = &unk_1000C7A58;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_1000521E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxNavigationController];
  [v2 pushViewController:*(a1 + 32) animated:1];
}

id sub_10005229C(id a1, HMHome *a2)
{
  v2 = a2;
  v3 = [(HMHome *)v2 name];
  v4 = [(HMHome *)v2 uuid];

  v5 = [NSString stringWithFormat:@"[name %@ uuid %@]", v3, v4];

  return v5;
}

void sub_10005266C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100052690(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005282C;
  v10[3] = &unk_1000C79C0;
  v11 = *(a1 + 32);
  v5 = [v3 na_firstObjectPassingTest:v10];
  v6 = v5;
  if (!*(a1 + 32) || v5)
  {
    [WeakRetained _initiateSetupFlow:v5];
  }

  else
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [WeakRetained _allHomesDescription:v3];
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "We cannot find our home for the given homeUUID. homeUUID %@ not found in homes %@.", buf, 0x16u);
    }

    [WeakRetained dismissViewControllerAnimated:0 completion:0];
  }
}

id sub_10005282C(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100052B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100052B98(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained coordinator];
  v6 = [v5 activeTuple];
  v7 = [v6 currentStep];

  v8 = [*(a1 + 32) setupAccessoryPayload];

  if (v8)
  {
    if (v7 == 5)
    {
      goto LABEL_16;
    }

    v9 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:5];
    v10 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:v7];
    NSLog(@"currentStep should be %@, but it is %@", v9, v10);

    goto LABEL_15;
  }

  if (![WeakRetained isLaunchedToSetupASpecificAccessory])
  {
    if (v7 != 1)
    {
      v14 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:1];
      v15 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:v7];
      NSLog(@"currentStep should be %@, but it is %@", v14, v15);
    }

    objc_opt_class();
    v16 = v3;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v9 = v17;

    [v9 setMode:1];
LABEL_15:

    goto LABEL_16;
  }

  if (v7 != 4)
  {
    v11 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:4];
    v12 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:v7];
    NSLog(@"currentStep should be %@, but it is %@", v11, v12);
  }

  v13 = [*(a1 + 32) accessoryUUID];

  if (!v13)
  {
    NSLog(@"Asked to pair with an accessory, but we don't have a UUID in the setup description: %@", *(a1 + 32));
  }

LABEL_16:
  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [HSSetupContentProvider stringForHSProxCardSetupUIStep:v7];
    *buf = 138412802;
    v23 = v20;
    v24 = 2112;
    v25 = v21;
    v26 = 2048;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Launching %@ with initial view controller %@, %ld", buf, 0x20u);
  }

  [WeakRetained _presentProxCardFlowWithInitialViewController:v3];
}

void sub_100053268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained proxNavigationController];
  [v2 pushViewController:*(a1 + 32) animated:1];
}

void sub_100053AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100053AD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cleanup];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

void sub_100053F1C(uint64_t a1)
{
  [*(a1 + 32) _remoteViewControllerProxy];
  [objc_claimAutoreleasedReturnValue() invalidate];
  v2 = [*(a1 + 32) sharingFrameworkClient];
  [v2 invalidate];

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HSProximityCardHostViewController _cleanup]_block_invoke";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: SBUIRemoteAlertHostInterface & SFClient invalidated, will exit(0) the process", &v4, 0xCu);
  }

  exit(0);
}

void sub_100053FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10007B0BC(v3, a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100055D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifyButton];
  [v4 setHighlighted:0];

  v5 = [*(a1 + 32) identifyButton];
  [v5 setHidden:0];

  v6 = [*(a1 + 32) spinner];
  [v6 stopAnimating];

  v7 = HFLogForCategory();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10007B188(a1, v3, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Succesfully identified %@", &v10, 0xCu);
  }
}

id sub_100055F08()
{
  if (qword_1000E6748 != -1)
  {
    sub_10007B214();
  }

  v1 = qword_1000E6750;

  return v1;
}

void sub_100055F4C(id a1)
{
  v3[0] = &off_1000CDA20;
  v3[1] = &off_1000CDA38;
  v4[0] = @"CannotDecodeFromString";
  v4[1] = @"NotReady";
  v3[2] = &off_1000CDA50;
  v3[3] = &off_1000CDA68;
  v4[2] = @"CameraScan";
  v4[3] = @"DiscoveredAccessories";
  v3[4] = &off_1000CDA80;
  v3[5] = &off_1000CDA98;
  v4[4] = @"TroubleshootingTips";
  v4[5] = @"EnterSetupCode";
  v3[6] = &off_1000CDAB0;
  v3[7] = &off_1000CDAC8;
  v4[6] = @"Detected";
  v4[7] = @"SelectHome";
  v3[8] = &off_1000CDAE0;
  v3[9] = &off_1000CDAF8;
  v4[8] = @"CreateHome";
  v4[9] = @"Pairing";
  v3[10] = &off_1000CDB10;
  v3[11] = &off_1000CDB28;
  v4[10] = @"HomeHubRequired";
  v4[11] = @"ThreadRouterWarning";
  v3[12] = &off_1000CDB40;
  v3[13] = &off_1000CDB58;
  v4[12] = @"ResumeSelectAccessory";
  v4[13] = @"ResumeWelcome";
  v3[14] = &off_1000CDB70;
  v3[15] = &off_1000CDB88;
  v4[14] = @"SelectRoom";
  v4[15] = @"CreateRoom";
  v3[16] = &off_1000CDBA0;
  v3[17] = &off_1000CDBB8;
  v4[16] = @"NameAccessory";
  v4[17] = @"LockAccessUpdate";
  v3[18] = &off_1000CDBD0;
  v3[19] = &off_1000CDBE8;
  v4[18] = @"UpdateToOptimizeEnergySavings";
  v4[19] = @"AdaptiveTemperature";
  v3[20] = &off_1000CDC00;
  v3[21] = &off_1000CDC18;
  v4[20] = @"SetTemperatures";
  v4[21] = @"CleanEnergy";
  v3[22] = &off_1000CDC30;
  v3[23] = &off_1000CDC48;
  v4[22] = @"WalletKey";
  v4[23] = @"WalletKeyUWB";
  v3[24] = &off_1000CDC60;
  v3[25] = &off_1000CDC78;
  v4[24] = @"WalletKeyExpressMode";
  v4[25] = @"PINCode";
  v3[26] = &off_1000CDC90;
  v3[27] = &off_1000CDCA8;
  v4[26] = @"PINCodeTextField";
  v4[27] = @"GuestAccess";
  v3[28] = &off_1000CDCC0;
  v3[29] = &off_1000CDCD8;
  v4[28] = @"SelectAssociatedType";
  v4[29] = @"ConfigureCamera";
  v3[30] = &off_1000CDCF0;
  v3[31] = &off_1000CDD08;
  v4[30] = @"ConfigureCameraAccess";
  v4[31] = @"FaceRecognition";
  v3[32] = &off_1000CDD20;
  v3[33] = &off_1000CDD38;
  v4[32] = @"FaceRecognitionPhotoLibraryAccess";
  v4[33] = @"Chime";
  v3[34] = &off_1000CDD50;
  v3[35] = &off_1000CDD68;
  v4[34] = @"NameInputSources";
  v4[35] = @"NameShowerHeads";
  v3[36] = &off_1000CDD80;
  v3[37] = &off_1000CDD98;
  v4[36] = @"NameZones";
  v4[37] = @"NameServices";
  v3[38] = &off_1000CDDB0;
  v3[39] = &off_1000CDDC8;
  v4[38] = @"Recommendations";
  v4[39] = @"RestrictedGuestAccess";
  v3[40] = &off_1000CDDE0;
  v3[41] = &off_1000CDDF8;
  v4[40] = @"SafetyAndSecurity";
  v4[41] = @"UseSiri";
  v3[42] = &off_1000CDE10;
  v3[43] = &off_1000CDE28;
  v4[42] = @"UseSiriMultipleAccessory";
  v4[43] = @"SiriLanguageSelection";
  v3[44] = &off_1000CDE40;
  v3[45] = &off_1000CDE58;
  v4[44] = @"SiriVoiceSelection";
  v4[45] = @"SiriUpdateRequired";
  v3[46] = &off_1000CDE70;
  v3[47] = &off_1000CDE88;
  v4[46] = @"SiriVoiceRecognition";
  v4[47] = @"SetupSiri";
  v3[48] = &off_1000CDEA0;
  v3[49] = &off_1000CDEB8;
  v4[48] = @"SiriVoiceTraining";
  v4[49] = @"PersonalRequests";
  v3[50] = &off_1000CDED0;
  v3[51] = &off_1000CDEE8;
  v4[50] = @"SiriForEveryone";
  v4[51] = @"UseAirPlay";
  v3[52] = &off_1000CDF00;
  v3[53] = &off_1000CDF18;
  v4[52] = @"BridgeAdded";
  v4[53] = @"SetupBridgedAccessories";
  v3[54] = &off_1000CDF30;
  v3[55] = &off_1000CDF48;
  v4[54] = @"RouterSetup";
  v4[55] = @"AccessoryUpdate";
  v3[56] = &off_1000CDF60;
  v3[57] = &off_1000CDF78;
  v4[56] = @"AppleHomeUpdateRequired";
  v4[57] = @"NetworkCredentialManagement";
  v3[58] = &off_1000CDF90;
  v3[59] = &off_1000CDFA8;
  v4[58] = @"Done";
  v4[59] = @"Error";
  v3[60] = &off_1000CDFC0;
  v4[60] = @"DismissSetup";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:61];
  v2 = qword_1000E6750;
  qword_1000E6750 = v1;
}