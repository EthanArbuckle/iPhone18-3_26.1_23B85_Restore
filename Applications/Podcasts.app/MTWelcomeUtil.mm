@interface MTWelcomeUtil
+ (BOOL)presentWelcomeIfNeededFromViewController:(id)controller metricsSender:(id)sender acknowledgementCompletionBlock:(id)block;
+ (BOOL)shouldShowWelcome;
+ (BOOL)shouldShowWelcomeIgnoringNewFeatures:(BOOL)features;
+ (void)markWelcomeAsShown;
@end

@implementation MTWelcomeUtil

+ (BOOL)shouldShowWelcome
{
  v3 = +[PFClientUtil isRunningOnVisionOS];
  if (qword_1005726F0 == 9)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return [self shouldShowWelcomeIgnoringNewFeatures:v4];
}

+ (BOOL)shouldShowWelcomeIgnoringNewFeatures:(BOOL)features
{
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v5 = [v4 BOOLForKey:@"SuppressWelcomeScreen"];

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"SuppressWelcomeScreen"];

  if ((v5 & 1) != 0 || v7)
  {
    v11 = _MTLogCategoryPrivacy();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = @"SuppressWelcomeScreen";
      v15 = "shouldShowWelcome = NO. Reason: %@ = YES";
      v16 = v11;
      v17 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v22, v17);
    }
  }

  else
  {
    v8 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
    v9 = [v8 objectForKey:@"MTWelcomeVersion"];
    integerValue = [v9 integerValue];

    if (!features && integerValue != qword_1005726F0)
    {
      v11 = _MTLogCategoryPrivacy();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = @"MTWelcomeVersion";
        v24 = 2048;
        v25 = integerValue;
        v12 = "shouldShowWelcome = YES. Reason: %@ = %ld";
        v13 = v11;
        v14 = 22;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v22, v14);
      }

LABEL_19:
      v18 = 1;
      goto LABEL_20;
    }

    if ([AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:kMTPodcastsPrivacyIdentifier])
    {
      v11 = _MTLogCategoryPrivacy();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v22 = 138412290;
      v23 = @"YES";
      v12 = "shouldShowWelcome = YES. Reason: +[AMSAcknowledgePrivacyTask acknowledgementNeededForPrivacyIdentifier:kMTPodcastsPrivacyIdentifier] = %@";
LABEL_17:
      v13 = v11;
      v14 = 12;
      goto LABEL_18;
    }

    v19 = +[MTPrivacyUtil shouldShowPodcastsTermsScreen];
    v11 = _MTLogCategoryPrivacy();
    v20 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (!v20)
      {
        goto LABEL_19;
      }

      v22 = 138412290;
      v23 = @"YES";
      v12 = "shouldShowWelcome = YES. Reason: +[MTPrivacyUtil shouldShowPodcastsTermsScreen] = %@";
      goto LABEL_17;
    }

    if (v20)
    {
      LOWORD(v22) = 0;
      v15 = "shouldShowWelcome = NO. Reason: Fell through all the checks.";
      v16 = v11;
      v17 = 2;
      goto LABEL_9;
    }
  }

  v18 = 0;
LABEL_20:

  return v18;
}

+ (void)markWelcomeAsShown
{
  v3 = [AMSAcknowledgePrivacyTask alloc];
  v4 = [v3 initWithPrivacyIdentifier:kMTPodcastsPrivacyIdentifier];
  acknowledgePrivacy = [v4 acknowledgePrivacy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015FFC4;
  v6[3] = &unk_1004DDF88;
  v6[4] = self;
  [acknowledgePrivacy addFinishBlock:v6];
}

+ (BOOL)presentWelcomeIfNeededFromViewController:(id)controller metricsSender:(id)sender acknowledgementCompletionBlock:(id)block
{
  controllerCopy = controller;
  senderCopy = sender;
  blockCopy = block;
  if ([self shouldShowWelcome])
  {
    presentedViewController = [controllerCopy presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      presentedViewController2 = [controllerCopy presentedViewController];
    }

    else
    {
      presentedViewController2 = 0;
    }

    viewControllers = [presentedViewController2 viewControllers];
    firstObject = [viewControllers firstObject];
    v16 = firstObject;
    if (firstObject)
    {
      presentedViewController3 = firstObject;
    }

    else
    {
      presentedViewController3 = [controllerCopy presentedViewController];
    }

    v18 = presentedViewController3;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v20 = [[MTWelcomeViewController alloc] initWithMetricsSender:senderCopy];
      [(MTWelcomeViewController *)v20 setModalPresentationStyle:2];
      objc_initWeak(&location, v20);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100160478;
      v22[3] = &unk_1004DDFB0;
      v23 = blockCopy;
      objc_copyWeak(&v24, &location);
      [(MTWelcomeViewController *)v20 addAcknowledgementCompletionBlock:v22];
      [controllerCopy presentViewController:v20 animated:1 completion:0];
      objc_destroyWeak(&v24);

      objc_destroyWeak(&location);
    }

    v13 = isKindOfClass ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

@end