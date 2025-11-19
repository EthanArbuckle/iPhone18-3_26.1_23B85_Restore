@interface DDParsecServiceCollectionViewController
- (BOOL)presentsWithMargins;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldHandleCardSectionEngagement:(id)a3;
- (DDParsecServiceCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (void)_willAppearInRemoteViewController;
- (void)addSections:(id)a3 error:(id)a4;
- (void)appDidEnterBackground;
- (void)appWillEnterForeground;
- (void)dealloc;
- (void)didEngageCardSection:(id)a3;
- (void)didEngageResult:(id)a3;
- (void)didReportUserResponseFeedback:(id)a3;
- (void)fetchPreviewImageForResult:(id)a3 completion:(id)a4;
- (void)firstTimeExperienceContinueButtonPressed;
- (void)forwardInvocation:(id)a3;
- (void)prepareWithQueryObject:(id)a3 previewMode:(BOOL)a4 sheetMode:(BOOL)a5 popoverMode:(BOOL)a6 solarium:(BOOL)a7 viewStyle:(int64_t)a8 scale:(double)a9 dictionaryMode:(BOOL)a10 remoteTextQuery:(BOOL)a11;
- (void)setDDViewScale:(double)a3;
- (void)setOriginalTitle:(id)a3;
- (void)setPopoverMode:(BOOL)a3;
- (void)setPreviewMode:(BOOL)a3;
- (void)setQuery:(id)a3;
- (void)setSearchVisible:(BOOL)a3;
- (void)setSections:(id)a3;
- (void)setSheetMode:(BOOL)a3;
- (void)startQueryWithQuery:(id)a3;
- (void)startQueryWithResult:(id)a3 context:(id)a4;
- (void)startQueryWithString:(id)a3 range:(_NSRange)a4;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DDParsecServiceCollectionViewController

- (void)startQueryWithString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  v5 = a4.location;
  v7 = a3;
  objc_initWeak(&location, self);
  useNetwork = self->_useNetwork;
  v9 = [(DDParsecServiceCollectionViewController *)self _hostApplicationBundleIdentifier];
  v10 = [(DDParsecServiceCollectionViewController *)self queryId];
  if (self->_remoteTextQuery)
  {
    v11 = objc_loadWeakRetained(&location);
    v12 = [v11 _remoteViewControllerProxy];
  }

  else
  {
    v12 = 0;
  }

  v13 = self->_lookupQuery;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000053DC;
  v18[3] = &unk_100018A30;
  v14 = v7;
  v19 = v14;
  objc_copyWeak(v23, &location);
  v15 = v13;
  v20 = v15;
  v24 = useNetwork;
  v16 = v9;
  v21 = v16;
  v23[1] = v10;
  v23[2] = v5;
  v23[3] = length;
  v17 = v12;
  v22 = v17;
  [(DDParsecServiceCollectionViewController *)self setQuery:v18];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)startQueryWithQuery:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  useNetwork = self->_useNetwork;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000056A8;
  v6[3] = &unk_100018A58;
  objc_copyWeak(&v7, &location);
  v8 = useNetwork;
  [(DDParsecServiceCollectionViewController *)self setQuery:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)startQueryWithResult:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  useNetwork = self->_useNetwork;
  v9 = [(DDParsecServiceCollectionViewController *)self _hostApplicationBundleIdentifier];
  v10 = [(DDParsecServiceCollectionViewController *)self queryId];
  v11 = self->_lookupQuery;
  if (self->_remoteTextQuery)
  {
    v12 = objc_loadWeakRetained(&location);
    v13 = [v12 _remoteViewControllerProxy];
  }

  else
  {
    v13 = 0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100005920;
  v18[3] = &unk_100018A80;
  v14 = v6;
  v19 = v14;
  objc_copyWeak(v24, &location);
  v20 = self;
  v15 = v11;
  v21 = v15;
  v25 = useNetwork;
  v16 = v9;
  v22 = v16;
  v24[1] = v10;
  v17 = v13;
  v23 = v17;
  [(DDParsecServiceCollectionViewController *)self setQuery:v18];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (void)setQuery:(id)a3
{
  v4 = a3;
  if (self->_fteMode)
  {
    [(DDParsecServiceCollectionViewController *)self setQueryBlock:v4];
  }

  else if (v4)
  {
    v4[2](v4);
  }

  _objc_release_x1();
}

- (DDParsecServiceCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = DDParsecServiceCollectionViewController;
  v4 = [(DDParsecServiceCollectionViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(DDParsecServiceCollectionViewController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)prepareWithQueryObject:(id)a3 previewMode:(BOOL)a4 sheetMode:(BOOL)a5 popoverMode:(BOOL)a6 solarium:(BOOL)a7 viewStyle:(int64_t)a8 scale:(double)a9 dictionaryMode:(BOOL)a10 remoteTextQuery:(BOOL)a11
{
  v18 = a3;
  self->_dictionaryMode = a10;
  self->_scale = a9;
  self->_style = a8;
  self->_popoverMode = a6;
  self->_sheetMode = a5;
  self->_previewMode = a4;
  self->_solarium = a7;
  self->_remoteTextQuery = a11;
  self->_hasExternaDataSource = v18 != 0;
  WeakRetained = objc_loadWeakRetained(&qword_10001FA58);
  [WeakRetained doneButtonPressed:0 punchout:0];

  objc_storeWeak(&qword_10001FA58, self);
  if (self->_dictionaryMode)
  {
    self->_useNetwork = 0;
    v20 = +[DDLookupQuery queryWithoutNetwork];
    lookupQuery = self->_lookupQuery;
    self->_lookupQuery = v20;

    if (!self->_useNetwork)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = [DDLookupQuery queryWithQuery:v18];
    v23 = self->_lookupQuery;
    self->_lookupQuery = v22;

    if (v18)
    {
      self->_queryId = [v18 queryID];
      v24 = [v18 userAgent];
      v25 = [v24 stringByAppendingString:@".fte.acknowledged"];
      fte_ack_key = self->_fte_ack_key;
      self->_fte_ack_key = v25;
    }

    else
    {
      qword_10001FA60 += arc4random_uniform(0x10u) + 1;
      self->_queryId = qword_10001FA60;
      v24 = self->_fte_ack_key;
      self->_fte_ack_key = @"com.apple.lookup.fte.acknowledged";
    }

    v27 = [(DDLookupQuery *)self->_lookupQuery parsecEnabled];
    self->_useNetwork = v27;
    if (!v27)
    {
      goto LABEL_10;
    }
  }

  if (!self->_fte_ack_key || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 BOOLForKey:self->_fte_ack_key], v28, (v29 & 1) == 0))
  {
    v30 = [DDParsecFirstTimeViewController alloc];
    v31 = [(DDLookupQuery *)self->_lookupQuery bag];
    v32 = [(DDParsecFirstTimeViewController *)v30 initWithNibName:0 bundle:0 bag:v31 sceneAwareVariant:a11 solarium:self->_solarium];
    firstTimeViewController = self->_firstTimeViewController;
    self->_firstTimeViewController = v32;

    [(DDParsecFirstTimeViewController *)self->_firstTimeViewController setDelegate:self];
    [(DDParsecServiceCollectionViewController *)self setNavigationBarHidden:1 animated:0];
    v36 = self->_firstTimeViewController;
    v34 = [NSArray arrayWithObjects:&v36 count:1];
    [(DDParsecServiceCollectionViewController *)self setViewControllers:v34];

    self->_fteMode = 1;
    goto LABEL_12;
  }

LABEL_10:
  [(DDParsecServiceCollectionViewController *)self showContent:0];
LABEL_12:
  [(DDParsecServiceCollectionViewController *)self updateVisualMode:0];
  v35 = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  [v35 remoteVCIsReady];
}

- (BOOL)presentsWithMargins
{
  if (self->_previewMode)
  {
    return 1;
  }

  if (self->_sheetMode)
  {
    return 1;
  }

  return self->_popoverMode;
}

- (void)_willAppearInRemoteViewController
{
  v3 = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  [v3 showingFTE:self->_fteMode];
}

- (void)dealloc
{
  [(DDParsecServiceCollectionViewController *)self setSearchVisible:0];
  v3.receiver = self;
  v3.super_class = DDParsecServiceCollectionViewController;
  [(DDParsecServiceCollectionViewController *)&v3 dealloc];
}

- (void)addSections:(id)a3 error:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006138;
  block[3] = &unk_100018760;
  v10 = a4;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setOriginalTitle:(id)a3
{
  v8 = a3;
  if ([v8 length])
  {
    objc_storeStrong(&self->_originalTitle, a3);
  }

  v5 = [(DDParsecServiceCollectionViewController *)self topViewController];
  [v5 setTitle:v8];

  v6 = [(SearchUIResultsViewController *)self->_resultsViewController title];
  v7 = [v6 length];

  if (!v7)
  {
    [(SearchUIResultsViewController *)self->_resultsViewController setTitle:self->_originalTitle];
  }

  [(DDParsecFirstTimeViewController *)self->_firstTimeViewController setTitle:&stru_1000190B8];
}

- (void)setDDViewScale:(double)a3
{
  if (a3 > 0.0 && self->_scale != a3)
  {
    self->_scale = a3;
  }
}

- (void)setSearchVisible:(BOOL)a3
{
  if (self->_searchViewVisible != a3)
  {
    self->_searchViewVisible = a3;
  }
}

- (void)appDidEnterBackground
{
  if (self->_searchViewVisible && self->_useNetwork)
  {
    v7 = [[SFSearchViewDisappearFeedback alloc] initWithEvent:23];
    [v7 setQueryId:{-[DDParsecServiceCollectionViewController queryId](self, "queryId")}];
    v4 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    [v4 searchViewDidDisappear:v7];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:UIApplicationWillResignActiveNotification object:UIApp];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:UIApplicationDidEnterBackgroundNotification object:UIApp];
  }
}

- (void)appWillEnterForeground
{
  if (self->_searchViewVisible && self->_useNetwork)
  {
    v14[7] = v2;
    v14[8] = v3;
    v5 = [[SFSearchViewAppearFeedback alloc] initWithEvent:26];
    [v5 setQueryId:{-[DDParsecServiceCollectionViewController queryId](self, "queryId")}];
    v6 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    [v6 searchViewDidAppear:v5];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:UIApplicationWillEnterForegroundNotification object:UIApp];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:UIApplicationDidBecomeActiveNotification object:UIApp];

    v9 = [(DDParsecServiceCollectionViewController *)self _hostProcessIdentifier];
    v10 = +[AVSystemController sharedAVSystemController];
    v11 = [NSNumber numberWithInteger:v9];
    v14[0] = 0;
    v12 = [v10 setAttribute:v11 forKey:AVSystemController_PIDToInheritApplicationStateFrom error:v14];
    v13 = v14[0];

    if ((v12 & 1) == 0)
    {
      NSLog(@"Failed to inherit CoreMedia permissions from %d: %@", v9, v13);
    }
  }
}

- (void)setSections:(id)a3
{
  self->_sectionsIsSet = 1;
  objc_storeStrong(&self->_sections, a3);

  [(DDParsecServiceCollectionViewController *)self showContent:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  [(DDParsecServiceCollectionViewController *)self setSearchVisible:0];
  v4.receiver = self;
  v4.super_class = DDParsecServiceCollectionViewController;
  [(DDParsecServiceCollectionViewController *)&v4 viewWillDisappear:0];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = DDParsecServiceCollectionViewController;
  [(DDParsecServiceCollectionViewController *)&v13 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [v6 verticalSizeClass];
  v8 = [(DDParsecServiceCollectionViewController *)self traitCollection];
  v9 = [v8 verticalSizeClass];

  if (v7 != v9)
  {
    v10 = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007530;
    v11[3] = &unk_100018B20;
    v12 = v6;
    [v10 getStatusBarHidden:v11];
  }
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v7 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && self->_sheetMode)
  {
    v9 = objc_opt_new();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setPopoverMode:(BOOL)a3
{
  if (self->_popoverMode != a3)
  {
    self->_popoverMode = a3;
    [(DDParsecServiceCollectionViewController *)self updateVisualMode:0];
  }
}

- (void)setPreviewMode:(BOOL)a3
{
  if (self->_previewMode != a3)
  {
    self->_previewMode = a3;
    [(DDParsecServiceCollectionViewController *)self updateVisualMode:0];
  }
}

- (void)setSheetMode:(BOOL)a3
{
  if (self->_sheetMode != a3)
  {
    self->_sheetMode = a3;
    [(DDParsecServiceCollectionViewController *)self updateVisualMode:0];
  }
}

- (void)firstTimeExperienceContinueButtonPressed
{
  if (self->_fte_ack_key)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setBool:1 forKey:self->_fte_ack_key];
  }

  self->_fteMode = 0;
  firstTimeViewController = self->_firstTimeViewController;
  self->_firstTimeViewController = 0;

  [(DDParsecServiceCollectionViewController *)self setViewControllers:&__NSArray0__struct];
  v5 = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  [v5 showingFTE:0];

  [(DDParsecServiceCollectionViewController *)self showContent:1];
  v6 = [(DDParsecServiceCollectionViewController *)self queryBlock];

  if (v6)
  {
    v7 = [(DDParsecServiceCollectionViewController *)self queryBlock];
    v7[2]();

    [(DDParsecServiceCollectionViewController *)self setQueryBlock:0];
  }
}

- (void)didEngageCardSection:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_useNetwork)
  {
    [v4 setQueryId:{-[DDParsecServiceCollectionViewController queryId](self, "queryId")}];
    v5 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    [v5 didEngageCardSection:v11];

    v4 = v11;
  }

  v6 = [v4 destination];
  if (v6)
  {
    v7 = v6;
    v8 = [v11 cardSection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v9 = [v11 cardSection];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        [(DDParsecServiceCollectionViewController *)self doneButtonPressed:0 punchout:1];
      }
    }
  }
}

- (void)didEngageResult:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_useNetwork)
  {
    v6 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    [v6 didEngageResult:v8];

    if ([v8 destination] != 2)
    {
LABEL_3:
      v5 = v8;

      goto LABEL_5;
    }
  }

  else if ([v4 destination] != 2)
  {
    goto LABEL_3;
  }

  v7 = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  [v7 interactionEndedWithPunchout:1];

  v5 = v8;

LABEL_5:
}

- (BOOL)shouldHandleCardSectionEngagement:(id)a3
{
  v4 = a3;
  [v4 setQueryId:{-[DDParsecServiceCollectionViewController queryId](self, "queryId")}];
  v5 = [v4 cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    sheetMode = self->_sheetMode;

    if (!sheetMode)
    {
      v9 = 1;
      goto LABEL_6;
    }

    v5 = [v4 destination];
    v8 = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
    [v8 openTrailerPunchout:v5];
  }

  v9 = isKindOfClass ^ 1;

LABEL_6:
  return v9 & 1;
}

- (void)didReportUserResponseFeedback:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_useNetwork)
  {
    v6 = [v4 userSelection];
    v7 = [v6 name];

    if (v7)
    {
      v8 = +[NSUUID UUID];
      v9 = [v8 UUIDString];

      [v5 setUploadedDataIdentifier:v9];
      [v5 setReportType:1];
      [v5 setSections:self->_sections];
      v10 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
      [v10 didSubmitUserReportFeedback:v5];

      v11 = [[_CPUserReportFeedback alloc] initWithFacade:v5];
      v12 = [v11 data];

      if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10000B87C();
      }

      v13 = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
      [v13 reportAnIssueWithReportIdentifier:v9 sfReportData:v12];
    }
  }

  v14 = [v5 userSelection];
  v15 = [v14 preferredOpenableURL];

  if (v15)
  {
    [(DDParsecServiceCollectionViewController *)self interactionEndedWithPunchout:1];
  }
}

- (void)fetchPreviewImageForResult:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008194;
  v8[3] = &unk_100018B48;
  v9 = v5;
  v7 = v5;
  [v6 loadReportAnIssueImage:v8];
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
  [v4 selector];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self->_useNetwork)
    {
      v7 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
      [v4 invokeWithTarget:v7];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDParsecServiceCollectionViewController;
    [(DDParsecServiceCollectionViewController *)&v8 forwardInvocation:v4];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = DDParsecServiceCollectionViewController;
  if ([(DDParsecServiceCollectionViewController *)&v7 respondsToSelector:?])
  {
    return 1;
  }

  v5 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
  v6 = objc_opt_respondsToSelector();

  return v6 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = DDParsecServiceCollectionViewController;
  v5 = [(DDParsecServiceCollectionViewController *)&v9 methodSignatureForSelector:?];
  if (v5)
  {
  }

  else
  {
    v7 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    v8 = [v7 methodSignatureForSelector:a3];

    v5 = v8;
  }

  return v5;
}

@end