@interface ICQLinkAppDelegate
- (BOOL)handleICQLinkResult:(int64_t)a3 url:(id)a4;
- (BOOL)handleSkipCFUWithURL:(id)a3;
- (BOOL)handleUniversalLinkWithUserActivity:(id)a3;
- (void)handleChatterBoxURL:(id)a3;
- (void)handleUniversalLinkResultWithContext:(id)a3 offerManager:(id)a4;
- (void)handleUniversalSuccessLinkResultWithContext:(id)a3 offerManager:(id)a4;
- (void)launchFlowWithContext:(id)a3;
- (void)launchSettingsDeeplink;
- (void)launchURL:(id)a3;
@end

@implementation ICQLinkAppDelegate

- (BOOL)handleUniversalLinkWithUserActivity:(id)a3
{
  v4 = [ICQLinkHandler urlFromUserActivity:a3];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 absoluteString];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handling universal link %@", &v9, 0xCu);
  }

  v7 = [(ICQLinkAppDelegate *)self handleICQLinkResult:[ICQLinkHandler url:"resultFromURL:" resultFromURL:v4], v4];
  return v7;
}

- (BOOL)handleICQLinkResult:(int64_t)a3 url:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v9 = [v6 absoluteString];
      v10 = +[ICQOfferManager sharedOfferManager];
      [(ICQLinkAppDelegate *)self handleUniversalLinkResultWithContext:v9 offerManager:v10];

      goto LABEL_12;
    }

    if (a3 == 2)
    {
LABEL_8:
      v9 = +[ICQOfferManager sharedOfferManager];
      [(ICQLinkAppDelegate *)self handleUniversalSuccessLinkResultWithContext:v7 offerManager:v9];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        [(ICQLinkAppDelegate *)self launchSettingsDeeplink];
LABEL_13:
        v8 = 1;
        break;
      case 4:
        v8 = [(ICQLinkAppDelegate *)self handleSkipCFUWithURL:v6];
        break;
      case 5:
        [(ICQLinkAppDelegate *)self handleChatterBoxURL:v6];
        goto LABEL_8;
    }
  }

  return v8;
}

- (void)handleUniversalSuccessLinkResultWithContext:(id)a3 offerManager:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000020CC;
  v6[3] = &unk_100008268;
  v6[4] = self;
  v7 = a3;
  v5 = v7;
  [a4 getDefaultOfferWithCompletion:v6];
}

- (void)handleUniversalLinkResultWithContext:(id)a3 offerManager:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000023F8;
  v6[3] = &unk_100008268;
  v6[4] = self;
  v7 = a3;
  v5 = v7;
  [a4 getDefaultOfferWithCompletion:v6];
}

- (void)launchFlowWithContext:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000032C4(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)launchSettingsDeeplink
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10000333C(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)launchURL:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000033B4(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (BOOL)handleSkipCFUWithURL:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000342C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)handleChatterBoxURL:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000029C8;
  v5[3] = &unk_1000082D0;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [ICQRedirectResolver resolveWithURL:v4 completion:v5];
}

@end