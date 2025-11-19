@interface BooksNotificationViewController
- (BOOL)_isURLValid:(id)a3 hostPatterns:(id)a4 pathPatterns:(id)a5;
- (BooksNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)appGroupIdentifierForBridge:(id)a3;
- (id)objectRegistrationsForBridge:(id)a3;
- (void)_emitNotificationEngagementEventForResponse:(id)a3 notificationAction:(id)a4 actionType:(int64_t)a5;
- (void)_renderUserNotification:(id)a3;
- (void)_reportMetricsEvent:(id)a3;
- (void)_setupWithCompletion:(id)a3;
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)feedViewController:(id)a3 willTransitionToContentHeight:(double)a4;
- (void)syncLayoutControllerNeedsFlushing:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BooksNotificationViewController

- (BooksNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = BooksNotificationViewController;
  v4 = [(BooksNotificationViewController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[BCAppAnalyticsExtensionManager alloc] initWithUploadsEnabled:0];
    [(BooksNotificationViewController *)v4 setAnalyticsManager:v5];

    v6 = [[TUISyncLayoutController alloc] initWithDelegate:v4];
    syncLayoutController = v4->_syncLayoutController;
    v4->_syncLayoutController = v6;
  }

  return v4;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = BooksNotificationViewController;
  [(BooksNotificationViewController *)&v9 viewDidLoad];
  v3 = [(BooksNotificationViewController *)self view];
  [v3 frame];
  Width = CGRectGetWidth(v10);

  v5 = objc_opt_new();
  [v5 expectedContentSize];
  v7 = v6;

  [(BooksNotificationViewController *)self setPreferredContentSize:Width, v7];
  +[BAEventReporter setupLibraryAnalyticsDataProvider];
  v8 = [(BooksNotificationViewController *)self analyticsManager];
  [v8 setupTrackingForRootViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = BooksNotificationViewController;
  [(BooksNotificationViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(BooksNotificationViewController *)self feedViewController];

  if (v3)
  {
    v4 = [(BooksNotificationViewController *)self view];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(BooksNotificationViewController *)self feedViewController];
    v14 = [v13 view];
    [v14 setFrame:{v6, v8, v10, v12}];
  }

  [(TUISyncLayoutController *)self->_syncLayoutController flush];
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() userNotificationFromNotification:v4];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 videoUrl];

    if (v7)
    {
      v15.receiver = self;
      v15.super_class = BooksNotificationViewController;
      [(BooksNotificationViewController *)&v15 didReceiveNotification:v4];
    }

    else
    {
      v9 = +[BUBag defaultBag];
      v10 = [v9 ixStoreSheetBooks];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100002978;
      v11[3] = &unk_100008508;
      v12 = v6;
      v13 = self;
      v14 = v4;
      [v10 valueWithCompletion:v11];
    }
  }

  else
  {
    v8 = BooksNotificationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000048E0(self, v8);
    }
  }
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 notification];
  v10 = [v8 userNotificationFromNotification:v9];

  v11 = [v6 actionIdentifier];
  LODWORD(v9) = [v11 isEqualToString:UNNotificationDefaultActionIdentifier];

  v52 = v7;
  v54 = v10;
  if (v9)
  {
    v12 = [v10 defaultAction];
  }

  else
  {
    v13 = [v6 actionIdentifier];
    v14 = [v13 isEqualToString:UNNotificationDismissActionIdentifier];

    if (v14)
    {
      v12 = 0;
    }

    else
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v15 = [v10 buttonActions];
      v12 = [v15 countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v12)
      {
        v16 = *v67;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v67 != v16)
            {
              objc_enumerationMutation(v15);
            }

            v18 = *(*(&v66 + 1) + 8 * i);
            v19 = [v18 identifier];
            v20 = [v6 actionIdentifier];
            v21 = [v19 isEqualToString:v20];

            if (v21)
            {
              v12 = v18;
              goto LABEL_15;
            }
          }

          v12 = [v15 countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

LABEL_15:
        v10 = v54;
      }
    }
  }

  v22 = [v12 defaultURL];
  if ([v22 bc_isBookStoreAddToWantToReadURL])
  {
    v23 = 3;
LABEL_29:
    v25 = BooksNotificationLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      *buf = 138543618;
      v73 = v26;
      v74 = 2048;
      v75 = v23;
      v27 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: Report Figaro metrics for action type %ld", buf, 0x16u);
    }

    v28 = [v12 metricsEvent];
    [(BooksNotificationViewController *)self _reportMetricsEvent:v28];
    goto LABEL_32;
  }

  if ([v22 bc_isBookStoreBuyNowURL])
  {
    v23 = 2;
    goto LABEL_29;
  }

  if ([v22 bc_isBookStoreViewInStoreURL])
  {
    v23 = 4;
    goto LABEL_29;
  }

  if ([v22 bc_isBookStoreStartReadingURL])
  {
    v23 = 5;
    goto LABEL_29;
  }

  v23 = 6;
  if ([v22 bc_isBookStoreStartListeningURL])
  {
    v24 = 6;
  }

  else
  {
    v24 = 0;
  }

  if ((v24 - 2) <= 4)
  {
    goto LABEL_29;
  }

  v28 = BooksNotificationLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v50 = objc_opt_class();
    *buf = 138543618;
    v73 = v50;
    v74 = 2048;
    v75 = v24;
    v51 = v50;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: Skip Figaro metrics reporting for action type %ld", buf, 0x16u);
  }

  v23 = 0;
LABEL_32:

  [(BooksNotificationViewController *)self _emitNotificationEngagementEventForResponse:v6 notificationAction:v12 actionType:v23];
  v29 = [v10 metricsEvent];
  v30 = [v29 objectForKeyedSubscript:@"details"];
  v31 = [v30 objectForKeyedSubscript:@"contentAdamId"];

  objc_opt_class();
  v32 = BUDynamicCast();
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    objc_opt_class();
    v35 = BUDynamicCast();
    v34 = [v35 stringValue];
  }

  v70[0] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v70[1] = FBSOpenApplicationOptionKeyUnlockDevice;
  v71[0] = &__kCFBooleanTrue;
  v71[1] = &__kCFBooleanTrue;
  v70[2] = FBSOpenApplicationOptionKeyLaunchOrigin;
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v71[2] = v37;
  v38 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:3];

  if ((v23 - 4) < 3)
  {
    v39 = [(BooksNotificationViewController *)self ba_effectiveAnalyticsTracker];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100003448;
    v56[3] = &unk_100008530;
    v56[4] = self;
    v57 = v34;
    v61 = v23;
    v58 = v22;
    v59 = v38;
    v40 = v53;
    v60 = v53;
    [BNBookDataStoreServices addStoreIDToWantToRead:v57 tracker:v39 completion:v56];

    v41 = v57;
LABEL_40:

    goto LABEL_41;
  }

  if (v23 == 2)
  {
    v43 = BooksNotificationLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = objc_opt_class();
      *buf = 138543618;
      v73 = v44;
      v74 = 2048;
      v75 = 2;
      v45 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: handling URL for action type %ld", buf, 0x16u);
    }

    v46 = +[LSApplicationWorkspace defaultWorkspace];
    [v46 openSensitiveURL:v22 withOptions:v38];

    v40 = v53;
    v53[2](v53, 1);
  }

  else
  {
    if (v23 == 3)
    {
      v42 = [(BooksNotificationViewController *)self ba_effectiveAnalyticsTracker];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_100003354;
      v62[3] = &unk_100008468;
      v62[4] = self;
      v63 = v34;
      v65 = 3;
      v64 = v53;
      [BNBookDataStoreServices addStoreIDToWantToRead:v63 tracker:v42 completion:v62];

      v40 = v53;
      v41 = v63;
      goto LABEL_40;
    }

    v47 = BooksNotificationLog();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = objc_opt_class();
      *buf = 138543618;
      v73 = v48;
      v74 = 2048;
      v75 = v23;
      v49 = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: didReceiveNotificationResponse:completionHandler: Let superclass to handle URL for action type %ld", buf, 0x16u);
    }

    v55.receiver = self;
    v55.super_class = BooksNotificationViewController;
    v40 = v53;
    [(BooksNotificationViewController *)&v55 didReceiveNotificationResponse:v6 completionHandler:v53];
  }

LABEL_41:
}

- (id)appGroupIdentifierForBridge:(id)a3
{
  v3 = +[BUAppGroup books];
  v4 = [v3 identifier];

  return v4;
}

- (id)objectRegistrationsForBridge:(id)a3
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("TransactionController+JS.workQueue", v5);

  v7 = [[TUITransactionController alloc] initWithQueue:v6];
  v14[0] = @"notification-extension";
  v13[0] = @"applicationContext";
  v13[1] = @"analyticsController";
  v8 = [(BooksNotificationViewController *)self analyticsManager];
  v9 = [v8 analyticsController];
  v14[1] = v9;
  v13[2] = @"remoteConfigDataContainer";
  v10 = +[BCRCDataContainer defaultContainer];
  v14[2] = v10;
  v14[3] = v7;
  v13[3] = @"transactionController";
  v13[4] = @"AlertController";
  v14[4] = objc_opt_class();
  v13[5] = @"DynamicArray";
  v14[5] = objc_opt_class();
  v13[6] = @"DynamicValue";
  v14[6] = objc_opt_class();
  v13[7] = @"FeedDataRequest";
  v14[7] = objc_opt_class();
  v13[8] = @"FeedViewController";
  v14[8] = objc_opt_class();
  v13[9] = @"NoticeViewController";
  v14[9] = objc_opt_class();
  v13[10] = @"OSFeatureFlags";
  v14[10] = objc_opt_class();
  v13[11] = @"Transaction";
  v14[11] = objc_opt_class();
  v13[12] = @"VCStack";
  v14[12] = objc_opt_class();
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:13];

  return v11;
}

- (void)_setupWithCompletion:(id)a3
{
  v4 = a3;
  v5 = BSUIGetLibraryItemStateProvider();
  v6 = +[BSUITemplate manager];
  v7 = [v6 dynamicRegistry];
  v8 = [v5 stateCenter];
  [v7 registerStateProvider:v8 forKind:@"libraryItem"];

  v9 = +[BCAnalyticsVisibilityPresentationNotifier sharedInstance];
  v10 = +[JSABridge sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000039B0;
  v13[3] = &unk_100008580;
  v14 = v6;
  v15 = v4;
  v11 = v4;
  v12 = v6;
  [v10 initializeEnvironmentWithDataSource:self completion:v13];
}

- (void)_renderUserNotification:(id)a3
{
  v4 = a3;
  v5 = BooksNotificationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 logKey];
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Will render notification", buf, 0x16u);
  }

  v7 = [v4 createUNNotificationActions];
  if (v7)
  {
    v8 = [(BooksNotificationViewController *)self extensionContext];
    [v8 setNotificationActions:v7];
  }

  v9 = [v4 defaultAction];
  v10 = [v9 defaultURL];
  v11 = [v10 absoluteString];

  v18 = @"url";
  v19 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v13 = [[BNFeedViewController alloc] initWithOptions:v12];
  [(BooksNotificationViewController *)self setFeedViewController:v13];

  v14 = [(BooksNotificationViewController *)self feedViewController];
  [v14 setModalPresentationStyle:0];

  v15 = [(BooksNotificationViewController *)self feedViewController];
  [v15 setNotificationDelegate:self];

  v16 = [(BooksNotificationViewController *)self feedViewController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003D14;
  v17[3] = &unk_1000085A8;
  v17[4] = self;
  [(BooksNotificationViewController *)self presentViewController:v16 animated:0 completion:v17];
}

- (BOOL)_isURLValid:(id)a3 hostPatterns:(id)a4 pathPatterns:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 host];
  v11 = [v10 bc_hasMatchInRegexPatterns:v9];

  if (v11)
  {
    v12 = [v7 path];
    v13 = [v12 bc_hasMatchInRegexPatterns:v8];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_reportMetricsEvent:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = objc_alloc_init(AMSMetrics);
    [v5 enqueueEvent:v4];

    v6 = [v5 flush];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003F14;
    v7[3] = &unk_1000085D0;
    v7[4] = self;
    [v6 addFinishBlock:v7];
  }
}

- (void)_emitNotificationEngagementEventForResponse:(id)a3 notificationAction:(id)a4 actionType:(int64_t)a5
{
  v6 = a4;
  v7 = [a3 notification];
  v8 = [v7 request];

  v9 = [v8 content];
  v10 = [v6 metricsEvent];
  v11 = [v10 underlyingDictionary];
  v12 = [v11 objectForKeyedSubscript:@"details"];
  v13 = [v12 objectForKeyedSubscript:@"contentAdamId"];

  objc_opt_class();
  v14 = BUDynamicCast();
  v45 = v13;
  if (v14)
  {
    v15 = v14;
LABEL_4:
    v49 = v15;
    v17 = [NSArray arrayWithObjects:&v49 count:1];
    goto LABEL_5;
  }

  objc_opt_class();
  v16 = BUDynamicCast();
  v15 = [v16 stringValue];

  if (v15)
  {
    goto LABEL_4;
  }

  v17 = &__NSArray0__struct;
LABEL_5:
  v18 = [v6 metricsEvent];
  v19 = [v18 underlyingDictionary];
  v20 = [v19 objectForKeyedSubscript:@"notificationId"];
  v21 = v20;
  v47 = v8;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [v8 identifier];
  }

  v23 = v22;

  v48 = [v9 title];
  v24 = [v9 body];
  v25 = [v6 metricsEvent];
  v26 = [v25 underlyingDictionary];
  v27 = [v26 objectForKeyedSubscript:@"details"];
  v28 = [v27 objectForKeyedSubscript:@"notificationSubtype"];

  v46 = v9;
  if ([v28 isEqualToString:@"newBookAuthor"])
  {
    v29 = 2;
  }

  else
  {
    v29 = [v28 isEqualToString:@"newBookSeries"];
  }

  v42 = v23;
  v30 = [[BANotificationData alloc] initWithNotificationContentID:v17 notificationID:v23 notificationType:1 recoType:v29 goalType:0 titleCode:&stru_100008A38 title:v48 messageCode:&stru_100008A38 message:v24];
  v31 = [v6 defaultURL];
  v32 = [v31 absoluteString];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = &stru_100008A38;
  }

  v35 = v34;

  v36 = 0;
  if ((a5 - 1) <= 3)
  {
    v36 = qword_100006240[a5 - 1];
  }

  v37 = [[BANotificationEngagementData alloc] initWithActionType:a5 actionUrl:v35 targetID:v17 targetType:v36];

  v38 = [(BooksNotificationViewController *)self analyticsManager];
  v39 = [v38 analyticsController];
  v40 = [v39 applicationTracker];

  v41 = +[BAEventReporter sharedReporter];
  [v41 emitNotificationEngagementEventWithTracker:v40 engagementData:v37 notificationData:v30];
}

- (void)feedViewController:(id)a3 willTransitionToContentHeight:(double)a4
{
  v6 = [(BooksNotificationViewController *)self viewIfLoaded];
  [v6 frame];
  [(BooksNotificationViewController *)self setPreferredContentSize:CGRectGetWidth(v8), a4];
}

- (void)syncLayoutControllerNeedsFlushing:(id)a3
{
  v3 = [(BooksNotificationViewController *)self view];
  [v3 setNeedsLayout];
}

@end