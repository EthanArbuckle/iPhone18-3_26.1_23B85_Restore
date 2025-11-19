@interface ICQLinkHandler
+ (id)urlFromUserActivity:(id)a3;
+ (int64_t)resultFromURL:(id)a3;
+ (int64_t)resultFromURL:(id)a3 store:(id)a4;
@end

@implementation ICQLinkHandler

+ (id)urlFromUserActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 activityType];
  v5 = [v4 isEqual:NSUserActivityTypeBrowsingWeb];

  if (v5)
  {
    v6 = [v3 webpageURL];
    v7 = v6;
    if (v6)
    {
      v7 = v6;
      v8 = v7;
    }

    else
    {
      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No url found exiting", v11, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "url activity of type NSUserActivityTypeBrowsingWeb exiting", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (int64_t)resultFromURL:(id)a3
{
  v4 = a3;
  v5 = +[ACAccountStore defaultStore];
  v6 = [a1 resultFromURL:v4 store:v5];

  return v6;
}

+ (int64_t)resultFromURL:(id)a3 store:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[NSURLComponents alloc] initWithURL:v5 resolvingAgainstBaseURL:1];
    v8 = v7;
    if (!v7)
    {
      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "missing urlComponents", &v29, 2u);
      }

      goto LABEL_25;
    }

    v9 = [v7 queryItems];
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "queryItems = %@", &v29, 0xCu);
    }

    v11 = [v9 firstObject];
    v12 = [v11 name];
    if ([v12 isEqualToString:@"context"])
    {
      v13 = [v8 host];
      if (([v13 isEqualToString:@"icq.icloud.com"] & 1) == 0)
      {
        v14 = [v8 scheme];
        if ([v14 caseInsensitiveCompare:@"icq"])
        {
          v15 = [v8 host];
          v16 = [v15 isEqualToString:@"launch"];

          if (v16)
          {
LABEL_28:
            v24 = [v9 firstObject];
            v25 = [v24 value];
            v26 = [v25 isEqualToString:ICQActionParameterSkipCFUKey];

            if (v26)
            {
              v17 = 4;
            }

            else
            {
              v27 = [v6 aa_primaryAppleAccount];

              if (v27)
              {
                v17 = 1;
              }

              else
              {
                v17 = 3;
              }
            }

            goto LABEL_33;
          }

          goto LABEL_16;
        }
      }

      goto LABEL_28;
    }

LABEL_16:
    v18 = [v8 host];
    v19 = [v18 isEqualToString:@"icq.postpurchase.icloud.com"];

    if (v19)
    {
      v17 = 2;
LABEL_33:

      goto LABEL_34;
    }

    v20 = [v8 host];
    if ([v20 isEqualToString:@"c.apple.com"])
    {
      v21 = [v8 path];
      v22 = [v21 hasSuffix:@"icq"];

      if (v22)
      {
        v17 = 5;
        goto LABEL_33;
      }
    }

    else
    {
    }

    v23 = _ICQGetLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "url format not valid exiting", &v29, 2u);
    }

LABEL_25:
    v17 = 0;
    goto LABEL_33;
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "missing url", &v29, 2u);
  }

  v17 = 0;
LABEL_34:

  return v17;
}

@end