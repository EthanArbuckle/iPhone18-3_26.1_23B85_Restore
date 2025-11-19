@interface MTWelcomeUtil
+ (BOOL)presentWelcomeIfNeededFromViewController:(id)a3 metricsSender:(id)a4 acknowledgementCompletionBlock:(id)a5;
+ (BOOL)shouldShowWelcome;
+ (BOOL)shouldShowWelcomeIgnoringNewFeatures:(BOOL)a3;
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

  return [a1 shouldShowWelcomeIgnoringNewFeatures:v4];
}

+ (BOOL)shouldShowWelcomeIgnoringNewFeatures:(BOOL)a3
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
    v10 = [v9 integerValue];

    if (!a3 && v10 != qword_1005726F0)
    {
      v11 = _MTLogCategoryPrivacy();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = @"MTWelcomeVersion";
        v24 = 2048;
        v25 = v10;
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
  v5 = [v4 acknowledgePrivacy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015FFC4;
  v6[3] = &unk_1004DDF88;
  v6[4] = a1;
  [v5 addFinishBlock:v6];
}

+ (BOOL)presentWelcomeIfNeededFromViewController:(id)a3 metricsSender:(id)a4 acknowledgementCompletionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 shouldShowWelcome])
  {
    v11 = [v8 presentedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v8 presentedViewController];
    }

    else
    {
      v12 = 0;
    }

    v14 = [v12 viewControllers];
    v15 = [v14 firstObject];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v8 presentedViewController];
    }

    v18 = v17;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v20 = [[MTWelcomeViewController alloc] initWithMetricsSender:v9];
      [(MTWelcomeViewController *)v20 setModalPresentationStyle:2];
      objc_initWeak(&location, v20);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100160478;
      v22[3] = &unk_1004DDFB0;
      v23 = v10;
      objc_copyWeak(&v24, &location);
      [(MTWelcomeViewController *)v20 addAcknowledgementCompletionBlock:v22];
      [v8 presentViewController:v20 animated:1 completion:0];
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