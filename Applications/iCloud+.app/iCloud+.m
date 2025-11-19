void sub_1000020CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003188(v6);
    }

    v8 = *(a1 + 32);
    v9 = [NSURL URLWithString:@"https://support.apple.com/HT201318"];
    [v8 launchURL:v9];
    goto LABEL_16;
  }

  v9 = [v5 universalSuccessLink];
  v10 = [v9 actionURL];
  v11 = [*(a1 + 40) absoluteString];
  v12 = [v10 icq_URLByAppendingQueryParamtersFromContext:v11];
  [v9 setActionURL:v12];

  if (!v9)
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100003210(v17);
    }

    goto LABEL_15;
  }

  v13 = [v9 action];
  if (v13 != 115 && v13 != 112)
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unsupported action type for successInfo universal link", &v20, 2u);
    }

LABEL_15:

    v18 = *(a1 + 32);
    v19 = [NSURL URLWithString:@"https://support.apple.com/HT201318"];
    [v18 launchURL:v19];

    goto LABEL_16;
  }

  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    [v9 action];
    v15 = _ICQStringForAction();
    v16 = [v9 serverUIURL];
    v20 = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Detected upsell action %@, URL %@", &v20, 0x16u);
  }

  [*(a1 + 32) launchpostPurchaseFlowWithLink:v9 offer:v5];
LABEL_16:
}

void sub_1000023F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003188(v6);
    }

    v8 = *(a1 + 32);
    v9 = [NSURL URLWithString:@"https://support.apple.com/HT201318"];
    [v8 launchURL:v9];
    goto LABEL_5;
  }

  [v5 setContext:*(a1 + 40)];
  v10 = [v5 actionBasedUniversalLinkSpecification];
  v9 = [v10 icqLinkForContext:*(a1 + 40)];

  if (v9)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found action based universal Link", &v34, 2u);
    }

    v12 = [v9 action];
    if ((v12 - 112) <= 6 && ((1 << (v12 - 112)) & 0x4D) != 0)
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        [v9 action];
        v14 = _ICQStringForAction();
        v15 = [v9 serverUIURL];
        v34 = 138412546;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Detected upsell action %@, URL %@", &v34, 0x16u);
      }

      [*(a1 + 32) launchFlowWithContext:*(a1 + 40) offer:v5];
      goto LABEL_5;
    }

    if (v12)
    {
      [*(a1 + 32) performActionForLink:v9];
      goto LABEL_5;
    }

    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      v34 = 138412290;
      v35 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Potentially unkown action, falling back to KB article. url context: %@", &v34, 0xCu);
    }

    goto LABEL_28;
  }

  v16 = [v5 serverUIURL];

  if (!v16)
  {
    v21 = [v5 universalLink];
    v22 = [v21 action];

    v23 = _ICQGetLogSystem();
    v19 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v5 universalLink];
        v34 = 138412290;
        v35 = v24;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Performing universal link action for link %@", &v34, 0xCu);
      }

      v25 = *(a1 + 32);
      v26 = [v5 universalLink];
      [v25 performActionForLink:v26];
      goto LABEL_29;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100003254((a1 + 40), v19, v27, v28, v29, v30, v31, v32);
    }

LABEL_28:

    v33 = *(a1 + 32);
    v26 = [NSURL URLWithString:@"https://support.apple.com/HT201318"];
    [v33 launchURL:v26];
LABEL_29:

    goto LABEL_5;
  }

  v17 = _ICQGetLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v5 serverUIURL];
    v34 = 138412290;
    v35 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Launching upsell for URL %@", &v34, 0xCu);
  }

  [*(a1 + 32) launchFlowWithContext:*(a1 + 40)];
LABEL_5:
}

void sub_1000029C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000034A4(a1, v6, v7);
    }
  }

  v8 = _ICQGetLogSystem();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 absoluteString];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handling resolved icq link %@", &v13, 0xCu);
    }

    [*(a1 + 40) handleICQLinkResult:+[ICQLinkHandler resultFromURL:](ICQLinkHandler url:{"resultFromURL:", v5), v5}];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100003530(a1);
    }

    v11 = objc_alloc_init(_LSOpenConfiguration);
    [v11 setAllowURLOverrides:0];
    v12 = +[LSApplicationWorkspace defaultWorkspace];
    [v12 openURL:*(a1 + 32) configuration:v11 completionHandler:&stru_1000082A8];
  }
}

void sub_100002B70(id a1, NSDictionary *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      v8 = "Success %@ %@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v9, 0x16u);
    }
  }

  else if (v7)
  {
    v9 = 138412546;
    v10 = 0;
    v11 = 2112;
    v12 = v5;
    v8 = "Failure %@ %@";
    goto LABEL_6;
  }
}

void sub_100002C78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002C94(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
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

void sub_100003098(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to launch URL %@", &v2, 0xCu);
}

void sub_100003110(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Upgrade flow failed with error: %@", &v2, 0xCu);
}

void sub_100003188(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_100002C94(&_mh_execute_header, v2, v3, "Unable to retrieve default offer for universal link due to error %@. Falling back to KB article.", v4, v5, v6, v7, 2u);
}

void sub_1000034A4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error resolving url %@, error: %@", &v4, 0x16u);
}

void sub_100003530(uint64_t a1)
{
  v1 = [*(a1 + 32) absoluteString];
  sub_100002C94(&_mh_execute_header, v2, v3, "Could not resolve url %@, falling back to the browser", v4, v5, v6, v7, 2u);
}

void sub_10000368C()
{
  sub_100002FD4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "failed to resolve chatterbox URL %@ with error: %@.", v2, 0x16u);
}