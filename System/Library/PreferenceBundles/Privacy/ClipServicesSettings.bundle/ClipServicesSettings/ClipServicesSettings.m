void sub_1CD8(id a1)
{
  v3 = objc_alloc_init(AMSMutableBagKeySet);
  [v3 addBagKey:@"app-clips-report-problem" valueType:6];
  [AMSBagKeySet registerBagKeySet:v3 forProfile:@"clipserviced" profileVersion:@"1"];
  v1 = [AMSBag bagForProfile:@"clipserviced" profileVersion:@"1"];
  v2 = qword_1A050;
  qword_1A050 = v1;
}

uint64_t sub_1F58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1F70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2078;
  block[3] = &unk_14708;
  block[4] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_group_leave(*(*(a1 + 32) + 32));
}

void sub_2078(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 24);

  objc_storeStrong(v3, v2);
}

void sub_20C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2168;
  v5[3] = &unk_14758;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
  dispatch_group_leave(*(*(a1 + 32) + 32));
}

uint64_t sub_2174(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_23B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSUserDefaults cps_clipServicesDefaults];
  v8 = [v7 cps_forceReportProblemErrorNoDeveloperSupportURL];

  if (v8)
  {
    v9 = CPSErrorDomain;
    v23 = NSLocalizedDescriptionKey;
    v24 = @"Unable to obtain developer support URL (forced for testing).";
    v10 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v11 = [NSError errorWithDomain:v9 code:1 userInfo:v10];

    v6 = v11;
  }

  if (v6)
  {
    v12 = sub_59B0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_9E4C();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = [v5 responseDataItems];
    v14 = [v13 firstObject];

    v15 = [v14 safari_dictionaryForKey:@"attributes"];
    v16 = [v15 safari_dictionaryForKey:@"platformAttributes"];
    v17 = [v16 safari_dictionaryForKey:@"ios"];

    v18 = [v17 safari_stringForKey:@"supportURLForLanguage"];
    v19 = [NSURL URLWithString:v18];
    v20 = sub_59B0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "RAP: Obtained developer support URL: %@", &v21, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_2750(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = +[NSUserDefaults cps_clipServicesDefaults];
  v9 = [v8 cps_forceReportProblemErrorFetchProblemTypes];

  if (v9)
  {
    v10 = CPSErrorDomain;
    v44 = NSLocalizedDescriptionKey;
    v45 = @"Unable to obtain bag values (forced for testing).";
    v11 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v12 = [NSError errorWithDomain:v10 code:1 userInfo:v11];

    v7 = v12;
  }

  v13 = sub_59B0();
  v14 = v13;
  if (v7)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_9EB4();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v35 = a1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v6;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "RAP: Obtained problem types: %@", buf, 0xCu);
    }

    v34 = v6;
    [v6 safari_arrayForKey:{@"types", 0}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v40 = 0u;
    v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [v19 safari_stringForKey:@"name"];
          v21 = [v19 safari_stringForKey:@"nameUpperCase"];
          v22 = [v19 safari_stringForKey:@"label"];
          v23 = [v19 safari_numberForKey:@"id"];
          v24 = [v19 safari_BOOLForKey:@"offerDeveloperWebsite"];
          if (v20)
          {
            v25 = v21 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25 && v22 != 0 && v23 != 0)
          {
            v28 = [[CPSReportProblemProblemType alloc] initWithLocalizedTitle:v20 localizedUpperCaseTitle:v21 label:v22 identifier:v23 offerDeveloperWebsite:v24];
            if (v28)
            {
              [*(v35 + 32) addObject:v28];
            }
          }
        }

        v16 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v16);
    }

    v6 = v34;
    v29 = [v34 safari_stringForKey:@"url"];
    v30 = [NSURL URLWithString:v29];
    v31 = *(v35 + 40);
    if (v31)
    {
      v32 = [*(v35 + 32) copy];
      (*(v31 + 16))(v31, v32, v30, 0);
    }

    v7 = v33;
  }
}

void sub_2C10(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  v4 = [v3 pageURL];

  v5 = objc_alloc_init(AMSMetricsIdentifier);
  v6 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.ClipServices.clipserviced"];
  [v5 setClientInfo:v6];

  [v5 setDuration:2592000.0];
  v55[0] = @"contentid";
  v7 = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 16)];
  v8 = [v7 stringValue];
  v55[1] = @"bundleid";
  v9 = *(*(a1 + 32) + 8);
  v56[0] = v8;
  v56[1] = v9;
  v55[2] = @"metricsidentifier";
  v43 = v5;
  v10 = [v5 generateIdentifier];
  v56[2] = v10;
  v55[3] = @"invocationurl";
  v44 = v4;
  v11 = [v4 absoluteString];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_14F50;
  }

  v56[3] = v13;
  v55[4] = @"concernid";
  v14 = [*(a1 + 40) identifier];
  v15 = [v14 stringValue];
  v16 = v15;
  v45 = a1;
  v17 = *(a1 + 48);
  if (!v17)
  {
    v17 = &stru_14F50;
  }

  v56[4] = v15;
  v56[5] = v17;
  v55[5] = @"usernote";
  v55[6] = @"version";
  v56[6] = @"report";
  v18 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:7];

  v19 = sub_59B0();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v18;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "RAP: Asked to submit problem with parameters: %@", buf, 0xCu);
  }

  v20 = [NSMutableURLRequest requestWithURL:*(*(a1 + 32) + 24)];
  [v20 setHTTPMethod:@"POST"];
  [v20 setCachePolicy:0];
  [v20 setTimeoutInterval:10.0];
  v42 = v20;
  [v20 setAllHTTPHeaderFields:&off_15A28];
  v21 = [v18 allKeys];
  v22 = [v21 mutableCopy];

  v23 = objc_alloc_init(NSMutableString);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v24 = v18;
  v25 = [v24 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v48 + 1) + 8 * i);
        [v22 removeObject:v29];
        v30 = [v24 objectForKeyedSubscript:v29];
        v31 = +[NSCharacterSet URLQueryAllowedCharacterSet];
        v32 = [v30 stringByAddingPercentEncodingWithAllowedCharacters:v31];
        [v23 appendFormat:@"%@=%@", v29, v32];

        if ([v22 count])
        {
          [v23 appendString:@"&"];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v26);
  }

  v33 = [v23 dataUsingEncoding:4];
  [v42 setHTTPBody:v33];

  v34 = [AMSURLRequestEncoder alloc];
  v35 = *(v45 + 32);
  v36 = [objc_opt_class() sharedAMSBag];
  v37 = [v34 initWithBag:v36];

  [v37 setAnisetteType:2];
  [v37 setMescalType:0];
  [v37 setIncludeClientVersions:0];
  v38 = +[ACAccountStore ams_sharedAccountStore];
  v39 = [v38 ams_activeiTunesAccount];
  [v37 setAccount:v39];

  v40 = [v37 requestByEncodingRequest:v42 parameters:0];
  v41 = sub_59B0();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v42;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "RAP: Encoding request: %@", buf, 0xCu);
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_31B0;
  v46[3] = &unk_14870;
  v47 = *(v45 + 56);
  [v40 addFinishBlock:v46];
}

void sub_31B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_59B0();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_9F1C();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_33A0;
    block[3] = &unk_14820;
    v15 = *(a1 + 32);
    v14 = v6;
    dispatch_async(&_dispatch_main_q, block);

    v9 = v15;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "RAP: Submitting encoded request: %@", buf, 0xCu);
    }

    v9 = +[AMSURLSession defaultSession];
    v10 = [v9 dataTaskPromiseWithRequest:v5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_33C0;
    v11[3] = &unk_14848;
    v12 = *(a1 + 32);
    [v10 addFinishBlock:v11];
  }
}

uint64_t sub_33A0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_33C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSUserDefaults cps_clipServicesDefaults];
  v8 = [v7 cps_forceReportProblemErrorUnableToSubmitResponse];

  if (v8)
  {
    v9 = CPSErrorDomain;
    v23 = NSLocalizedDescriptionKey;
    v24 = @"Unable to submit response (forced for testing).";
    v10 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v11 = [NSError errorWithDomain:v9 code:1 userInfo:v10];

    v6 = v11;
  }

  v12 = sub_59B0();
  v13 = v12;
  if (v6)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_9F84();
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v5 response];
    *buf = 138412290;
    v22 = v15;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "RAP: Submitted request. Result response: %@", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_35DC;
  v18[3] = &unk_14820;
  v16 = *(a1 + 32);
  v19 = v6;
  v20 = v16;
  v17 = v6;
  dispatch_async(&_dispatch_main_q, v18);
}

uint64_t sub_35DC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_37EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_3ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3D24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ASCLockup alloc];
  v5 = *(a1 + 40);
  v6 = ASCLockupKindApp;
  v7 = [ASCArtwork alloc];
  v12 = [v7 initWithImage:v3 decoration:ASCArtworkDecorationNone];

  v8 = [*(a1 + 48) cps_appClipApplicationRecord];
  v9 = [v8 localizedName];
  v10 = _CPSLocalizedString();
  v11 = [v4 initWithID:v5 kind:v6 metrics:0 icon:v12 heading:0 title:v9 subtitle:v10 ageRating:0 offer:0];
  [*(*(a1 + 32) + 120) setLockup:v11];
}

Class sub_4068(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1A068)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_4194;
    v3[4] = &unk_14920;
    v3[5] = v3;
    v4 = off_14908;
    v5 = 0;
    qword_1A068 = _sl_dlopen();
  }

  if (!qword_1A068)
  {
    sub_A168(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ISImageDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_A0EC();
  }

  qword_1A060 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_4194(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1A068 = result;
  return result;
}

void sub_4670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_469C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) problemTypes];
  [*(*(a1 + 32) + 8) setProblemTypes:v4];

  [*(a1 + 40) stopAnimating];
  if (_UISolariumEnabled())
  {
    v5 = [*(*(a1 + 32) + 8) navigationItem];
    [v5 setRightBarButtonItem:0];
  }

  if (v3)
  {
    v6 = _CPSLocalizedString();
    v7 = _CPSLocalizedString();
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_47FC;
    v9[3] = &unk_14948;
    v9[4] = v8;
    [v8 showAlertForError:v3 withTitle:v6 message:v7 completion:v9];
  }
}

uint64_t sub_47FC(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_4820(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_48C8;
    v5[3] = &unk_14970;
    v6 = v3;
    v7 = WeakRetained;
    [WeakRetained signInToAppStoreIfNeededWithCompletion:v5];
  }
}

void sub_48C8(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_497C;
  block[3] = &unk_14708;
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_497C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    if ([*(a1 + 40) offerDeveloperWebsite] && (objc_msgSend(*(*(a1 + 48) + 16), "developerSupportURL"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
    {
      v3 = *(a1 + 48);
      v6 = [v3[2] developerSupportURL];
      [v3 showVisitAppSupportForDeveloperURL:v6 problemType:*(a1 + 40)];
    }

    else
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);

      [v4 showConcernDetailVCWithProblemType:v5];
    }
  }
}

void sub_4A58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained finishAction];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 finishAction];
      v3[2]();

      WeakRetained = v4;
    }
  }
}

void sub_4C28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_59B0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_A1E8(v6, v7);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

void sub_4DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained navigationItem];
  v7 = [v6 rightBarButtonItem];

  v8 = [[UIBarButtonItem alloc] initWithCustomView:v4];
  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 navigationItem];
  [v10 setRightBarButtonItem:v8];

  [v4 startAnimating];
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 16);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_5008;
  v22 = &unk_14A10;
  v13 = v4;
  v23 = v13;
  objc_copyWeak(&v26, (a1 + 48));
  v14 = v7;
  v15 = *(a1 + 32);
  v24 = v14;
  v25 = v15;
  [v12 submitResponseForProblemType:v11 userNote:v3 completion:&v19];
  v16 = [CPSAnalyticsLogger sharedLogger:v19];
  v17 = *(*(a1 + 32) + 24);
  v18 = [*(a1 + 40) label];
  [v16 recordReportProblemStepCompletedWithBundleID:v17 problemLabel:v18 event:5];

  objc_destroyWeak(&v26);
}

uint64_t sub_5008(uint64_t a1, void *a2)
{
  v9 = a2;
  [*(a1 + 32) stopAnimating];
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained navigationItem];
  [v5 setRightBarButtonItem:v3];

  if (v9)
  {
    v6 = _CPSLocalizedString();
    [*(a1 + 48) showAlertForError:v9 withTitle:v6 message:0 completion:0];
  }

  else
  {
    v7 = *(*(a1 + 48) + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  return _objc_release_x1();
}

void sub_5260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5280(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 2) submitResponseForProblemType:*(a1 + 32) userNote:0 completion:0];
    if (a2)
    {
      v6 = +[CPSAnalyticsLogger sharedLogger];
      v7 = v5[3];
      v8 = [*(a1 + 32) label];
      [v6 recordReportProblemStepCompletedWithBundleID:v7 problemLabel:v8 event:3];

      v9 = +[UIApplication sharedApplication];
      v10 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_53D0;
      v12[3] = &unk_14A60;
      v12[4] = v5;
      [v9 openURL:v10 options:&__NSDictionary0__struct completionHandler:v12];
    }

    else
    {
      v11 = v5[4];
      if (v11)
      {
        (*(v11 + 16))();
      }
    }
  }
}

uint64_t sub_53D0(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_552C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_59B0()
{
  if (qword_1A078 != -1)
  {
    sub_A260();
  }

  return qword_1A070;
}

void sub_59E8(id a1)
{
  qword_1A070 = os_log_create("com.apple.ClipServices.settings", "ClipServicesSettings");

  _objc_release_x1();
}

uint64_t sub_6030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6048(uint64_t a1)
{
  if (([*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier) cps_isAppClipInstalled] & 1) == 0)
  {
    [*(a1 + 32) _popAndShowAllAppClips];
  }

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_61E0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = +[CPSAnalyticsLogger sharedLogger];
    [v5 didManuallyDeleteClip:*(a1 + 32) withEvent:1];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6294;
    block[3] = &unk_14948;
    block[4] = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_6C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_6C98(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ClipServicesSettings"];

  return v3;
}

Class sub_6DC0(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1A088)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_6EEC;
    v3[4] = &unk_14920;
    v3[5] = v3;
    v4 = off_14B18;
    v5 = 0;
    qword_1A088 = _sl_dlopen();
  }

  if (!qword_1A088)
  {
    sub_A2F0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("OBTextWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_A274();
  }

  qword_1A080 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6EEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1A088 = result;
  return result;
}

uint64_t sub_78B0(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
    v4 = [v3 bundleIdentifier];
    if ([*(a1 + 32) _isDimSumApp:v4])
    {
      v5 = [[PSThirdPartyApp alloc] initWithApplicationProxy:v3];
      [v5 load];
      [*(a1 + 40) addObject:v5];
    }
  }

  return _objc_release_x1();
}

id sub_7DFC(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _didClearAllAppClips];
}

void sub_80D4(id *a1)
{
  if (![a1[4] numberOfRowsInSection:{objc_msgSend(a1[5], "section")}])
  {
    v2 = [a1[6] specifiers];
    v3 = [v2 specifierForID:@"CLEAR_CLIP_HISTORY"];

    [v3 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    [a1[6] reloadSpecifier:v3];
  }
}

void sub_8364(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) bundleIdentifier];
        [v7 reloadSpecifierID:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

unint64_t sub_98A8()
{
  result = qword_1A010;
  if (!qword_1A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A010);
  }

  return result;
}

uint64_t sub_9918()
{
  v0 = *(*(sub_A460() - 8) + 64);
  __chkstk_darwin();
  v1 = sub_A440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A4D0();
  sub_A4C0();
  sub_A4B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_9D20(0, &qword_1A028, &off_142E8);
  sub_A450();
  sub_A430();
  sub_A470();
  sub_9D20(0, &qword_1A030, NSBundle_ptr);
  if (!sub_A4E0())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  v7 = sub_A480();
  v9 = v8;
  v11 = v10;
  sub_9CC8();
  sub_A490();
  sub_9D68(v7, v9, v11 & 1);

  (*(v2 + 8))(v5, v1);
}

uint64_t sub_9BD8()
{
  sub_9C80(&qword_1A018, &unk_D890);
  sub_A440();
  sub_9CC8();
  swift_getOpaqueTypeConformance2();
  return sub_A4A0();
}

uint64_t sub_9C80(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_9CC8()
{
  result = qword_1A020;
  if (!qword_1A020)
  {
    sub_A440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A020);
  }

  return result;
}

uint64_t sub_9D20(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_9D68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_9D8C()
{
  result = qword_1A038;
  if (!qword_1A038)
  {
    sub_9DF0(&unk_1A040, &qword_D8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A038);
  }

  return result;
}

uint64_t sub_9DF0(uint64_t *a1, uint64_t *a2)
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

void sub_A030(uint64_t a1, NSObject *a2)
{
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "The app clip %{sensitive}@ does not have a store item identifier and is not a TestFight app", &v2, 0xCu);
}

void sub_A0EC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSClipStoreTableViewCell.m" lineNumber:15 description:{@"Unable to find class %s", "ISImageDescriptor"}];

  __break(1u);
}

void sub_A168(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *IconServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPSClipStoreTableViewCell.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void sub_A1E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "RAP: Unable to sign in to app store: %@", &v2, 0xCu);
}

void sub_A274()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getOBTextWelcomeControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSAboutViewController.m" lineNumber:11 description:{@"Unable to find class %s", "OBTextWelcomeController"}];

  __break(1u);
}

void sub_A2F0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPSAboutViewController.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void sub_A370(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  v7 = 138740227;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unable to obtain the application record for %{sensitive}@ with error %{public}@", &v7, 0x16u);
}