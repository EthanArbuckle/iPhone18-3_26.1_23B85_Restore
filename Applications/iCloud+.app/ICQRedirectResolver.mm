@interface ICQRedirectResolver
+ (void)processResolvedURL:(id)a3 originalURL:(id)a4 resolutionError:(id)a5 completion:(id)a6;
+ (void)resolveWithURL:(id)a3 completion:(id)a4;
@end

@implementation ICQRedirectResolver

+ (void)resolveWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to resolve chatterbot URL %@", buf, 0xCu);
  }

  v9 = [[_SWCChatterboxResolver alloc] initWithURL:v6];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002E10;
  v12[3] = &unk_1000082F8;
  v14 = v7;
  v15 = a1;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  [v9 resolveWithCompletionHandler:v12];
}

+ (void)processResolvedURL:(id)a3 originalURL:(id)a4 resolutionError:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9)
  {
    if ([v9 isEqual:v10])
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100003624();
      }

LABEL_16:

      v17 = ICQCreateError();
      v12[2](v12, 0, v17);

      goto LABEL_17;
    }

    v15 = [v9 host];
    v16 = [v15 isEqualToString:@"icq.icloud.com"];

    if ((v16 & 1) == 0)
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000035BC();
      }

      goto LABEL_16;
    }

    (v12)[2](v12, v9, 0);
  }

  else
  {
    v13 = _ICQGetLogSystem();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!v11)
    {
      if (v14)
      {
        sub_100003710();
      }

      goto LABEL_16;
    }

    if (v14)
    {
      sub_10000368C();
    }

    v12[2](v12, 0, v11);
  }

LABEL_17:
}

@end