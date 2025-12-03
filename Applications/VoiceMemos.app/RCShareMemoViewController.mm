@interface RCShareMemoViewController
+ (RCShareMemoViewController)presentedController;
+ (id)_newPresentedPrepareFailureAlertControllerForCompositions:(id)compositions source:(id)source;
+ (void)prepareToShareCompositions:(id)compositions ignoringInteraction:(BOOL)interaction source:(id)source isShareButton:(BOOL)button shouldContinuePreparingBlock:(id)block preparedHandler:(id)handler completionWithItemsHandler:(id)itemsHandler;
+ (void)presentInViewController:(id)controller source:(id)source compositions:(id)compositions ignoringInteraction:(BOOL)interaction shouldContinuePreparingBlock:(id)block preparedToPresentBlock:(id)presentBlock isShareButton:(BOOL)button completionWithItemsHandler:(id)self0;
- (BOOL)isRecentlyDeletedShown;
- (RCShareMemoViewController)initWithCompositions:(id)compositions accessTokens:(id)tokens;
- (void)_endAccessSession;
- (void)_performActivity:(id)activity;
- (void)_prepareActivity:(id)activity completion:(id)completion;
- (void)updateShareableContent;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RCShareMemoViewController

+ (RCShareMemoViewController)presentedController
{
  WeakRetained = objc_loadWeakRetained(&qword_1002D7030);

  return WeakRetained;
}

+ (void)presentInViewController:(id)controller source:(id)source compositions:(id)compositions ignoringInteraction:(BOOL)interaction shouldContinuePreparingBlock:(id)block preparedToPresentBlock:(id)presentBlock isShareButton:(BOOL)button completionWithItemsHandler:(id)self0
{
  interactionCopy = interaction;
  controllerCopy = controller;
  sourceCopy = source;
  compositionsCopy = compositions;
  blockCopy = block;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10005DE1C;
  v38[3] = &unk_10028AFB8;
  presentBlockCopy = presentBlock;
  v28 = presentBlockCopy;
  handlerCopy = handler;
  v20 = objc_retainBlock(v38);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10005DE34;
  v36[3] = &unk_10028B010;
  v37 = blockCopy;
  v21 = blockCopy;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10005DE50;
  v29[3] = &unk_10028B080;
  v30 = controllerCopy;
  v31 = sourceCopy;
  v34 = objc_retainBlock(v36);
  selfCopy = self;
  v32 = compositionsCopy;
  v33 = v20;
  v22 = compositionsCopy;
  v23 = v34;
  v24 = sourceCopy;
  v25 = controllerCopy;
  v26 = v20;
  [RCShareMemoViewController prepareToShareCompositions:v22 ignoringInteraction:interactionCopy source:v24 isShareButton:button shouldContinuePreparingBlock:v23 preparedHandler:v29 completionWithItemsHandler:handlerCopy];
}

+ (void)prepareToShareCompositions:(id)compositions ignoringInteraction:(BOOL)interaction source:(id)source isShareButton:(BOOL)button shouldContinuePreparingBlock:(id)block preparedHandler:(id)handler completionWithItemsHandler:(id)itemsHandler
{
  compositionsCopy = compositions;
  handlerCopy = handler;
  itemsHandlerCopy = itemsHandler;
  v12 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = compositionsCopy;
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
        composedAVURL = [v18 composedAVURL];
        v26 = 0;
        v21 = [v19 prepareToExportCompositionAVURL:composedAVURL error:&v26];

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
    if (!button)
    {
      [(RCShareMemoViewController *)v23 setSharingStyle:1];
    }

    if (itemsHandlerCopy)
    {
      [(RCShareMemoViewController *)v23 setCompletionWithItemsHandler:itemsHandlerCopy];
    }

    handlerCopy[2](handlerCopy, v23, 0);
  }
}

- (RCShareMemoViewController)initWithCompositions:(id)compositions accessTokens:(id)tokens
{
  compositionsCopy = compositions;
  tokensCopy = tokens;
  v9 = [RCShareMemoHelper shareableCompositionsFromCompositions:compositionsCopy];
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
    objc_storeStrong(&v12->_compositions, compositions);
    objc_storeStrong(&v12->_accessTokens, tokens);
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
  v19 = [(RCShareMemoOptionsManager *)v18 initWithCompositions:compositionsCopy onUpdate:v17, v23, v24, v25, v26];
  shareMemoOptionsManager = v12->_shareMemoOptionsManager;
  v12->_shareMemoOptionsManager = v19;

  shareMemoOptionsManager = [(RCShareMemoViewController *)v12 shareMemoOptionsManager];
  [(RCShareMemoViewController *)v12 setObjectManipulationDelegate:shareMemoOptionsManager];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v12;
}

- (void)updateShareableContent
{
  compositions = [(RCShareMemoViewController *)self compositions];
  v4 = [RCShareMemoHelper shareableCompositionsFromCompositions:compositions];

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
          shareMemoOptionsManager = [(RCShareMemoViewController *)self shareMemoOptionsManager];
          [v10 setExportSeparateTracks:{objc_msgSend(shareMemoOptionsManager, "selectedExportOptionIndex") != 0}];
        }

        else
        {
          [v10 setExportSeparateTracks:0];
        }

        shareMemoOptionsManager2 = [(RCShareMemoViewController *)self shareMemoOptionsManager];
        [v10 setSendAsRaw:{objc_msgSend(shareMemoOptionsManager2, "selectedSendAsOptionIndex") != 0}];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(RCShareMemoViewController *)self setShareableCompositions:v5];
  shareableCompositions = [(RCShareMemoViewController *)self shareableCompositions];
  [(RCShareMemoViewController *)self _updateActivityItems:shareableCompositions];
}

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  v5 = dispatch_time(0, 250000000);
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005E774;
  block[3] = &unk_10028B0D0;
  objc_copyWeak(&v9, &location);
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
  progressOverlayPresenter = [(RCShareMemoViewController *)self progressOverlayPresenter];
  [progressOverlayPresenter setCanPresentOverlay:1];

  v7.receiver = self;
  v7.super_class = RCShareMemoViewController;
  [(RCShareMemoViewController *)&v7 _performActivity:activityCopy];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_prepareActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  progressOverlayPresenter = [(RCShareMemoViewController *)self progressOverlayPresenter];
  [progressOverlayPresenter setCanPresentOverlay:0];

  progressOverlayPresenter2 = [(RCShareMemoViewController *)self progressOverlayPresenter];
  isPresented = [progressOverlayPresenter2 isPresented];

  if (isPresented)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005ECC0;
    block[3] = &unk_10028B120;
    objc_copyWeak(&v16, &location);
    v13 = activityCopy;
    selfCopy = self;
    v15 = completionCopy;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = RCShareMemoViewController;
    [(RCShareMemoViewController *)&v11 _prepareActivity:activityCopy completion:completionCopy];
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  +[RCAnalyticsUtilities sendDidOpenShareMemoController];
  v5.receiver = self;
  v5.super_class = RCShareMemoViewController;
  [(RCShareMemoViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(RCShareMemoViewController *)self _endAccessSession];
  [RCShareMemoViewController setPresentedController:0];
  v5.receiver = self;
  v5.super_class = RCShareMemoViewController;
  [(RCShareMemoViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (BOOL)isRecentlyDeletedShown
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  defaultSceneDelegate = [delegate defaultSceneDelegate];
  mainViewController = [defaultSceneDelegate mainViewController];

  LOBYTE(defaultSceneDelegate) = [mainViewController isShowingRecentlyDeleted];
  return defaultSceneDelegate;
}

+ (id)_newPresentedPrepareFailureAlertControllerForCompositions:(id)compositions source:(id)source
{
  sourceCopy = source;
  compositionsCopy = compositions;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"PREPARE_TO_SHARE_MEMO_FAILED_TITLE" value:&stru_100295BB8 table:0];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"PREPARE_TO_SHARE_MEMOS_FAILED_MESSAGE_FORMAT" value:&stru_100295BB8 table:0];
  v11 = [compositionsCopy count];

  v12 = [NSString localizedStringWithFormat:v10, v11];

  v13 = [UIAlertController alertControllerWithTitle:v8 message:v12 preferredStyle:0];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"OK" value:&stru_100295BB8 table:0];
  v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
  [v13 addAction:v16];

  v17 = +[UIApplication sharedApplication];
  delegate = [v17 delegate];
  window = [delegate window];
  rootViewController = [window rootViewController];

  [v13 rc_configurePopoverControllerWithSource:sourceCopy];
  [rootViewController presentViewController:v13 animated:1 completion:0];

  return v13;
}

@end