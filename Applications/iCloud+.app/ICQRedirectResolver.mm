@interface ICQRedirectResolver
+ (void)processResolvedURL:(id)l originalURL:(id)rL resolutionError:(id)error completion:(id)completion;
+ (void)resolveWithURL:(id)l completion:(id)completion;
@end

@implementation ICQRedirectResolver

+ (void)resolveWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = lCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to resolve chatterbot URL %@", buf, 0xCu);
  }

  v9 = [[_SWCChatterboxResolver alloc] initWithURL:lCopy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002E10;
  v12[3] = &unk_1000082F8;
  v14 = completionCopy;
  selfCopy = self;
  v13 = lCopy;
  v10 = completionCopy;
  v11 = lCopy;
  [v9 resolveWithCompletionHandler:v12];
}

+ (void)processResolvedURL:(id)l originalURL:(id)rL resolutionError:(id)error completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  errorCopy = error;
  completionCopy = completion;
  if (lCopy)
  {
    if ([lCopy isEqual:rLCopy])
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100003624();
      }

LABEL_16:

      v17 = ICQCreateError();
      completionCopy[2](completionCopy, 0, v17);

      goto LABEL_17;
    }

    host = [lCopy host];
    v16 = [host isEqualToString:@"icq.icloud.com"];

    if ((v16 & 1) == 0)
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000035BC();
      }

      goto LABEL_16;
    }

    (completionCopy)[2](completionCopy, lCopy, 0);
  }

  else
  {
    v13 = _ICQGetLogSystem();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!errorCopy)
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

    completionCopy[2](completionCopy, 0, errorCopy);
  }

LABEL_17:
}

@end