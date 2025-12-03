@interface ICQLinkHandler
+ (id)urlFromUserActivity:(id)activity;
+ (int64_t)resultFromURL:(id)l;
+ (int64_t)resultFromURL:(id)l store:(id)store;
@end

@implementation ICQLinkHandler

+ (id)urlFromUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = [activityType isEqual:NSUserActivityTypeBrowsingWeb];

  if (v5)
  {
    webpageURL = [activityCopy webpageURL];
    v7 = webpageURL;
    if (webpageURL)
    {
      v7 = webpageURL;
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

+ (int64_t)resultFromURL:(id)l
{
  lCopy = l;
  v5 = +[ACAccountStore defaultStore];
  v6 = [self resultFromURL:lCopy store:v5];

  return v6;
}

+ (int64_t)resultFromURL:(id)l store:(id)store
{
  lCopy = l;
  storeCopy = store;
  if (lCopy)
  {
    v7 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:1];
    v8 = v7;
    if (!v7)
    {
      queryItems = _ICQGetLogSystem();
      if (os_log_type_enabled(queryItems, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, queryItems, OS_LOG_TYPE_DEFAULT, "missing urlComponents", &v29, 2u);
      }

      goto LABEL_25;
    }

    queryItems = [v7 queryItems];
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = queryItems;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "queryItems = %@", &v29, 0xCu);
    }

    firstObject = [queryItems firstObject];
    name = [firstObject name];
    if ([name isEqualToString:@"context"])
    {
      host = [v8 host];
      if (([host isEqualToString:@"icq.icloud.com"] & 1) == 0)
      {
        scheme = [v8 scheme];
        if ([scheme caseInsensitiveCompare:@"icq"])
        {
          host2 = [v8 host];
          v16 = [host2 isEqualToString:@"launch"];

          if (v16)
          {
LABEL_28:
            firstObject2 = [queryItems firstObject];
            value = [firstObject2 value];
            v26 = [value isEqualToString:ICQActionParameterSkipCFUKey];

            if (v26)
            {
              v17 = 4;
            }

            else
            {
              aa_primaryAppleAccount = [storeCopy aa_primaryAppleAccount];

              if (aa_primaryAppleAccount)
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
    host3 = [v8 host];
    v19 = [host3 isEqualToString:@"icq.postpurchase.icloud.com"];

    if (v19)
    {
      v17 = 2;
LABEL_33:

      goto LABEL_34;
    }

    host4 = [v8 host];
    if ([host4 isEqualToString:@"c.apple.com"])
    {
      path = [v8 path];
      v22 = [path hasSuffix:@"icq"];

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