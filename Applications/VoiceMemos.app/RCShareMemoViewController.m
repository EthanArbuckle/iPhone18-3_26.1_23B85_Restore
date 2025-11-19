@interface RCShareMemoViewController
+ (RCShareMemoViewController)presentedController;
+ (id)_newPresentedPrepareFailureAlertControllerForCompositions:(id)a3 source:(id)a4;
+ (void)prepareToShareCompositions:(id)a3 ignoringInteraction:(BOOL)a4 source:(id)a5 isShareButton:(BOOL)a6 shouldContinuePreparingBlock:(id)a7 preparedHandler:(id)a8 completionWithItemsHandler:(id)a9;
+ (void)presentInViewController:(id)a3 source:(id)a4 compositions:(id)a5 ignoringInteraction:(BOOL)a6 shouldContinuePreparingBlock:(id)a7 preparedToPresentBlock:(id)a8 isShareButton:(BOOL)a9 completionWithItemsHandler:(id)a10;
- (BOOL)isRecentlyDeletedShown;
- (RCShareMemoViewController)initWithCompositions:(id)a3 accessTokens:(id)a4;
- (void)_endAccessSession;
- (void)_performActivity:(id)a3;
- (void)_prepareActivity:(id)a3 completion:(id)a4;
- (void)updateShareableContent;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RCShareMemoViewController

+ (RCShareMemoViewController)presentedController
{
  WeakRetained = objc_loadWeakRetained(&qword_1002D7030);

  return WeakRetained;
}

+ (void)presentInViewController:(id)a3 source:(id)a4 compositions:(id)a5 ignoringInteraction:(BOOL)a6 shouldContinuePreparingBlock:(id)a7 preparedToPresentBlock:(id)a8 isShareButton:(BOOL)a9 completionWithItemsHandler:(id)a10
{
  v27 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10005DE1C;
  v38[3] = &unk_10028AFB8;
  v39 = a8;
  v28 = v39;
  v19 = a10;
  v20 = objc_retainBlock(v38);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10005DE34;
  v36[3] = &unk_10028B010;
  v37 = v18;
  v21 = v18;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10005DE50;
  v29[3] = &unk_10028B080;
  v30 = v15;
  v31 = v16;
  v34 = objc_retainBlock(v36);
  v35 = a1;
  v32 = v17;
  v33 = v20;
  v22 = v17;
  v23 = v34;
  v24 = v16;
  v25 = v15;
  v26 = v20;
  [RCShareMemoViewController prepareToShareCompositions:v22 ignoringInteraction:v27 source:v24 isShareButton:a9 shouldContinuePreparingBlock:v23 preparedHandler:v29 completionWithItemsHandler:v19];
}

+ (void)prepareToShareCompositions:(id)a3 ignoringInteraction:(BOOL)a4 source:(id)a5 isShareButton:(BOOL)a6 shouldContinuePreparingBlock:(id)a7 preparedHandler:(id)a8 completionWithItemsHandler:(id)a9
{
  v10 = a3;
  v11 = a8;
  v25 = a9;
  v12 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = +[RCSSavedRecordingService sharedService];
        v20 = [v18 composedAVURL];
        v26 = 0;
        v21 = [v19 prepareToExportCompositionAVURL:v20 error:&v26];

        if (v21)
        {
          [v12 addObject:v21];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v22 = [v12 count];
  if (v22 == [v13 count])
  {
    v23 = [[RCShareMemoViewController alloc] initWithCompositions:v13 accessTokens:v12];
    [RCShareMemoViewController setPresentedController:v23];
    if (!a6)
    {
      [(RCShareMemoViewController *)v23 setSharingStyle:1];
    }

    if (v25)
    {
      [(RCShareMemoViewController *)v23 setCompletionWithItemsHandler:v25];
    }

    v11[2](v11, v23, 0);
  }
}

- (RCShareMemoViewController)initWithCompositions:(id)a3 accessTokens:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [RCShareMemoHelper shareableCompositionsFromCompositions:v7];
  if ([(RCShareMemoViewController *)self isRecentlyDeletedShown])
  {
    v10 = 0;
  }

  else
  {
    v10 = [RCShareMemoHelper customActivitiesForShareableCompositions:v9];
  }

  v29.receiver = self;
  v29.super_class = RCShareMemoViewController;
  v11 = [(RCShareMemoViewController *)&v29 initWithActivityItems:v9 applicationActivities:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_shareableCompositions, v9);
    objc_storeStrong(&v12->_compositions, a3);
    objc_storeStrong(&v12->_accessTokens, a4);
    v13 = +[RCShareMemoHelper customActivityTypes];
    [(RCShareMemoViewController *)v12 setActivityTypeOrder:v13];

    v14 = +[RCShareMemoHelper unsupportedActivityTypes];
    [(RCShareMemoViewController *)v12 setExcludedActivityTypes:v14];

    [(RCShareMemoViewController *)v12 setShowKeyboardAutomatically:1];
  }

  v15 = objc_alloc_init(RCShareMemoProgressOverlayPresenter);
  progressOverlayPresenter = v12->_progressOverlayPresenter;
  v12->_progressOverlayPresenter = v15;

  objc_initWeak(&location, v12);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10005E44C;
  v26 = &unk_10028A6A0;
  objc_copyWeak(&v27, &location);
  v17 = objc_retainBlock(&v23);
  v18 = [RCShareMemoOptionsManager alloc];
  v19 = [(RCShareMemoOptionsManager *)v18 initWithCompositions:v7 onUpdate:v17, v23, v24, v25, v26];
  shareMemoOptionsManager = v12->_shareMemoOptionsManager;
  v12->_shareMemoOptionsManager = v19;

  v21 = [(RCShareMemoViewController *)v12 shareMemoOptionsManager];
  [(RCShareMemoViewController *)v12 setObjectManipulationDelegate:v21];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v12;
}

- (void)updateShareableContent
{
  v3 = [(RCShareMemoViewController *)self compositions];
  v4 = [RCShareMemoHelper shareableCompositionsFromCompositions:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasMultipleTracks])
        {
          v11 = [(RCShareMemoViewController *)self shareMemoOptionsManager];
          [v10 setExportSeparateTracks:{objc_msgSend(v11, "selectedExportOptionIndex") != 0}];
        }

        else
        {
          [v10 setExportSeparateTracks:0];
        }

        v12 = [(RCShareMemoViewController *)self shareMemoOptionsManager];
        [v10 setSendAsRaw:{objc_msgSend(v12, "selectedSendAsOptionIndex") != 0}];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(RCShareMemoViewController *)self setShareableCompositions:v5];
  v13 = [(RCShareMemoViewController *)self shareableCompositions];
  [(RCShareMemoViewController *)self _updateActivityItems:v13];
}

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 250000000);
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E774;
  block[3] = &unk_10028B0D0;
  objc_copyWeak(&v9, &location);
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
  v6 = [(RCShareMemoViewController *)self progressOverlayPresenter];
  [v6 setCanPresentOverlay:1];

  v7.receiver = self;
  v7.super_class = RCShareMemoViewController;
  [(RCShareMemoViewController *)&v7 _performActivity:v4];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_prepareActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCShareMemoViewController *)self progressOverlayPresenter];
  [v8 setCanPresentOverlay:0];

  v9 = [(RCShareMemoViewController *)self progressOverlayPresenter];
  v10 = [v9 isPresented];

  if (v10)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005ECC0;
    block[3] = &unk_10028B120;
    objc_copyWeak(&v16, &location);
    v13 = v6;
    v14 = self;
    v15 = v7;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = RCShareMemoViewController;
    [(RCShareMemoViewController *)&v11 _prepareActivity:v6 completion:v7];
  }
}

- (void)_endAccessSession
{
  if ([(NSArray *)self->_accessTokens count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_accessTokens;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9 = +[RCSSavedRecordingService sharedService];
          [v9 endAccessSessionWithToken:v8 error:0];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    accessTokens = self->_accessTokens;
    self->_accessTokens = 0;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  +[RCAnalyticsUtilities sendDidOpenShareMemoController];
  v5.receiver = self;
  v5.super_class = RCShareMemoViewController;
  [(RCShareMemoViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(RCShareMemoViewController *)self _endAccessSession];
  [RCShareMemoViewController setPresentedController:0];
  v5.receiver = self;
  v5.super_class = RCShareMemoViewController;
  [(RCShareMemoViewController *)&v5 viewWillDisappear:v3];
}

- (BOOL)isRecentlyDeletedShown
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];

  v4 = [v3 defaultSceneDelegate];
  v5 = [v4 mainViewController];

  LOBYTE(v4) = [v5 isShowingRecentlyDeleted];
  return v4;
}

+ (id)_newPresentedPrepareFailureAlertControllerForCompositions:(id)a3 source:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"PREPARE_TO_SHARE_MEMO_FAILED_TITLE" value:&stru_100295BB8 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"PREPARE_TO_SHARE_MEMOS_FAILED_MESSAGE_FORMAT" value:&stru_100295BB8 table:0];
  v11 = [v6 count];

  v12 = [NSString localizedStringWithFormat:v10, v11];

  v13 = [UIAlertController alertControllerWithTitle:v8 message:v12 preferredStyle:0];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"OK" value:&stru_100295BB8 table:0];
  v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
  [v13 addAction:v16];

  v17 = +[UIApplication sharedApplication];
  v18 = [v17 delegate];
  v19 = [v18 window];
  v20 = [v19 rootViewController];

  [v13 rc_configurePopoverControllerWithSource:v5];
  [v20 presentViewController:v13 animated:1 completion:0];

  return v13;
}

@end