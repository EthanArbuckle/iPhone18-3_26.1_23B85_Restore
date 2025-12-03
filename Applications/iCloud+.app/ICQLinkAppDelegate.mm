@interface ICQLinkAppDelegate
- (BOOL)handleICQLinkResult:(int64_t)result url:(id)url;
- (BOOL)handleSkipCFUWithURL:(id)l;
- (BOOL)handleUniversalLinkWithUserActivity:(id)activity;
- (void)handleChatterBoxURL:(id)l;
- (void)handleUniversalLinkResultWithContext:(id)context offerManager:(id)manager;
- (void)handleUniversalSuccessLinkResultWithContext:(id)context offerManager:(id)manager;
- (void)launchFlowWithContext:(id)context;
- (void)launchSettingsDeeplink;
- (void)launchURL:(id)l;
@end

@implementation ICQLinkAppDelegate

- (BOOL)handleUniversalLinkWithUserActivity:(id)activity
{
  v4 = [ICQLinkHandler urlFromUserActivity:activity];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [v4 absoluteString];
    v9 = 138412290;
    v10 = absoluteString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handling universal link %@", &v9, 0xCu);
  }

  v7 = [(ICQLinkAppDelegate *)self handleICQLinkResult:[ICQLinkHandler url:"resultFromURL:" resultFromURL:v4], v4];
  return v7;
}

- (BOOL)handleICQLinkResult:(int64_t)result url:(id)url
{
  urlCopy = url;
  v7 = urlCopy;
  v8 = 0;
  if (result <= 2)
  {
    if (result == 1)
    {
      absoluteString = [urlCopy absoluteString];
      v10 = +[ICQOfferManager sharedOfferManager];
      [(ICQLinkAppDelegate *)self handleUniversalLinkResultWithContext:absoluteString offerManager:v10];

      goto LABEL_12;
    }

    if (result == 2)
    {
LABEL_8:
      absoluteString = +[ICQOfferManager sharedOfferManager];
      [(ICQLinkAppDelegate *)self handleUniversalSuccessLinkResultWithContext:v7 offerManager:absoluteString];
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
    switch(result)
    {
      case 3:
        [(ICQLinkAppDelegate *)self launchSettingsDeeplink];
LABEL_13:
        v8 = 1;
        break;
      case 4:
        v8 = [(ICQLinkAppDelegate *)self handleSkipCFUWithURL:urlCopy];
        break;
      case 5:
        [(ICQLinkAppDelegate *)self handleChatterBoxURL:urlCopy];
        goto LABEL_8;
    }
  }

  return v8;
}

- (void)handleUniversalSuccessLinkResultWithContext:(id)context offerManager:(id)manager
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000020CC;
  v6[3] = &unk_100008268;
  v6[4] = self;
  contextCopy = context;
  v5 = contextCopy;
  [manager getDefaultOfferWithCompletion:v6];
}

- (void)handleUniversalLinkResultWithContext:(id)context offerManager:(id)manager
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000023F8;
  v6[3] = &unk_100008268;
  v6[4] = self;
  contextCopy = context;
  v5 = contextCopy;
  [manager getDefaultOfferWithCompletion:v6];
}

- (void)launchFlowWithContext:(id)context
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

- (void)launchURL:(id)l
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000033B4(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (BOOL)handleSkipCFUWithURL:(id)l
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000342C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

- (void)handleChatterBoxURL:(id)l
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000029C8;
  v5[3] = &unk_1000082D0;
  lCopy = l;
  selfCopy = self;
  v4 = lCopy;
  [ICQRedirectResolver resolveWithURL:v4 completion:v5];
}

@end