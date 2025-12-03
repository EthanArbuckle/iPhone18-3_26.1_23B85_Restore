@interface DDParsecServiceCollectionViewController
- (BOOL)presentsWithMargins;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldHandleCardSectionEngagement:(id)engagement;
- (DDParsecServiceCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (void)_willAppearInRemoteViewController;
- (void)addSections:(id)sections error:(id)error;
- (void)appDidEnterBackground;
- (void)appWillEnterForeground;
- (void)dealloc;
- (void)didEngageCardSection:(id)section;
- (void)didEngageResult:(id)result;
- (void)didReportUserResponseFeedback:(id)feedback;
- (void)fetchPreviewImageForResult:(id)result completion:(id)completion;
- (void)firstTimeExperienceContinueButtonPressed;
- (void)forwardInvocation:(id)invocation;
- (void)prepareWithQueryObject:(id)object previewMode:(BOOL)mode sheetMode:(BOOL)sheetMode popoverMode:(BOOL)popoverMode solarium:(BOOL)solarium viewStyle:(int64_t)style scale:(double)scale dictionaryMode:(BOOL)self0 remoteTextQuery:(BOOL)self1;
- (void)setDDViewScale:(double)scale;
- (void)setOriginalTitle:(id)title;
- (void)setPopoverMode:(BOOL)mode;
- (void)setPreviewMode:(BOOL)mode;
- (void)setQuery:(id)query;
- (void)setSearchVisible:(BOOL)visible;
- (void)setSections:(id)sections;
- (void)setSheetMode:(BOOL)mode;
- (void)startQueryWithQuery:(id)query;
- (void)startQueryWithResult:(id)result context:(id)context;
- (void)startQueryWithString:(id)string range:(_NSRange)range;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation DDParsecServiceCollectionViewController

- (void)startQueryWithString:(id)string range:(_NSRange)range
{
  length = range.length;
  v5 = range.location;
  stringCopy = string;
  objc_initWeak(&location, self);
  useNetwork = self->_useNetwork;
  _hostApplicationBundleIdentifier = [(DDParsecServiceCollectionViewController *)self _hostApplicationBundleIdentifier];
  queryId = [(DDParsecServiceCollectionViewController *)self queryId];
  if (self->_remoteTextQuery)
  {
    v11 = objc_loadWeakRetained(&location);
    _remoteViewControllerProxy = [v11 _remoteViewControllerProxy];
  }

  else
  {
    _remoteViewControllerProxy = 0;
  }

  v13 = self->_lookupQuery;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000053DC;
  v18[3] = &unk_100018A30;
  v14 = stringCopy;
  v19 = v14;
  objc_copyWeak(v23, &location);
  v15 = v13;
  v20 = v15;
  v24 = useNetwork;
  v16 = _hostApplicationBundleIdentifier;
  v21 = v16;
  v23[1] = queryId;
  v23[2] = v5;
  v23[3] = length;
  v17 = _remoteViewControllerProxy;
  v22 = v17;
  [(DDParsecServiceCollectionViewController *)self setQuery:v18];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

- (void)startQueryWithQuery:(id)query
{
  queryCopy = query;
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

- (void)startQueryWithResult:(id)result context:(id)context
{
  resultCopy = result;
  contextCopy = context;
  objc_initWeak(&location, self);
  useNetwork = self->_useNetwork;
  _hostApplicationBundleIdentifier = [(DDParsecServiceCollectionViewController *)self _hostApplicationBundleIdentifier];
  queryId = [(DDParsecServiceCollectionViewController *)self queryId];
  v11 = self->_lookupQuery;
  if (self->_remoteTextQuery)
  {
    v12 = objc_loadWeakRetained(&location);
    _remoteViewControllerProxy = [v12 _remoteViewControllerProxy];
  }

  else
  {
    _remoteViewControllerProxy = 0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100005920;
  v18[3] = &unk_100018A80;
  v14 = resultCopy;
  v19 = v14;
  objc_copyWeak(v24, &location);
  selfCopy = self;
  v15 = v11;
  v21 = v15;
  v25 = useNetwork;
  v16 = _hostApplicationBundleIdentifier;
  v22 = v16;
  v24[1] = queryId;
  v17 = _remoteViewControllerProxy;
  v23 = v17;
  [(DDParsecServiceCollectionViewController *)self setQuery:v18];

  objc_destroyWeak(v24);
  objc_destroyWeak(&location);
}

- (void)setQuery:(id)query
{
  queryCopy = query;
  if (self->_fteMode)
  {
    [(DDParsecServiceCollectionViewController *)self setQueryBlock:queryCopy];
  }

  else if (queryCopy)
  {
    queryCopy[2](queryCopy);
  }

  _objc_release_x1();
}

- (DDParsecServiceCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = DDParsecServiceCollectionViewController;
  v4 = [(DDParsecServiceCollectionViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(DDParsecServiceCollectionViewController *)v4 setDelegate:v4];
  }

  return v5;
}

- (void)prepareWithQueryObject:(id)object previewMode:(BOOL)mode sheetMode:(BOOL)sheetMode popoverMode:(BOOL)popoverMode solarium:(BOOL)solarium viewStyle:(int64_t)style scale:(double)scale dictionaryMode:(BOOL)self0 remoteTextQuery:(BOOL)self1
{
  objectCopy = object;
  self->_dictionaryMode = dictionaryMode;
  self->_scale = scale;
  self->_style = style;
  self->_popoverMode = popoverMode;
  self->_sheetMode = sheetMode;
  self->_previewMode = mode;
  self->_solarium = solarium;
  self->_remoteTextQuery = query;
  self->_hasExternaDataSource = objectCopy != 0;
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
    v22 = [DDLookupQuery queryWithQuery:objectCopy];
    v23 = self->_lookupQuery;
    self->_lookupQuery = v22;

    if (objectCopy)
    {
      self->_queryId = [objectCopy queryID];
      userAgent = [objectCopy userAgent];
      v25 = [userAgent stringByAppendingString:@".fte.acknowledged"];
      fte_ack_key = self->_fte_ack_key;
      self->_fte_ack_key = v25;
    }

    else
    {
      qword_10001FA60 += arc4random_uniform(0x10u) + 1;
      self->_queryId = qword_10001FA60;
      userAgent = self->_fte_ack_key;
      self->_fte_ack_key = @"com.apple.lookup.fte.acknowledged";
    }

    parsecEnabled = [(DDLookupQuery *)self->_lookupQuery parsecEnabled];
    self->_useNetwork = parsecEnabled;
    if (!parsecEnabled)
    {
      goto LABEL_10;
    }
  }

  if (!self->_fte_ack_key || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 BOOLForKey:self->_fte_ack_key], v28, (v29 & 1) == 0))
  {
    v30 = [DDParsecFirstTimeViewController alloc];
    v31 = [(DDLookupQuery *)self->_lookupQuery bag];
    v32 = [(DDParsecFirstTimeViewController *)v30 initWithNibName:0 bundle:0 bag:v31 sceneAwareVariant:query solarium:self->_solarium];
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
  _remoteViewControllerProxy = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy remoteVCIsReady];
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
  _remoteViewControllerProxy = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy showingFTE:self->_fteMode];
}

- (void)dealloc
{
  [(DDParsecServiceCollectionViewController *)self setSearchVisible:0];
  v3.receiver = self;
  v3.super_class = DDParsecServiceCollectionViewController;
  [(DDParsecServiceCollectionViewController *)&v3 dealloc];
}

- (void)addSections:(id)sections error:(id)error
{
  sectionsCopy = sections;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006138;
  block[3] = &unk_100018760;
  errorCopy = error;
  v11 = sectionsCopy;
  selfCopy = self;
  v7 = sectionsCopy;
  v8 = errorCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setOriginalTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy length])
  {
    objc_storeStrong(&self->_originalTitle, title);
  }

  topViewController = [(DDParsecServiceCollectionViewController *)self topViewController];
  [topViewController setTitle:titleCopy];

  title = [(SearchUIResultsViewController *)self->_resultsViewController title];
  v7 = [title length];

  if (!v7)
  {
    [(SearchUIResultsViewController *)self->_resultsViewController setTitle:self->_originalTitle];
  }

  [(DDParsecFirstTimeViewController *)self->_firstTimeViewController setTitle:&stru_1000190B8];
}

- (void)setDDViewScale:(double)scale
{
  if (scale > 0.0 && self->_scale != scale)
  {
    self->_scale = scale;
  }
}

- (void)setSearchVisible:(BOOL)visible
{
  if (self->_searchViewVisible != visible)
  {
    self->_searchViewVisible = visible;
  }
}

- (void)appDidEnterBackground
{
  if (self->_searchViewVisible && self->_useNetwork)
  {
    v7 = [[SFSearchViewDisappearFeedback alloc] initWithEvent:23];
    [v7 setQueryId:{-[DDParsecServiceCollectionViewController queryId](self, "queryId")}];
    feedbackListener = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    [feedbackListener searchViewDidDisappear:v7];

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
    feedbackListener = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    [feedbackListener searchViewDidAppear:v5];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:UIApplicationWillEnterForegroundNotification object:UIApp];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:UIApplicationDidBecomeActiveNotification object:UIApp];

    _hostProcessIdentifier = [(DDParsecServiceCollectionViewController *)self _hostProcessIdentifier];
    v10 = +[AVSystemController sharedAVSystemController];
    v11 = [NSNumber numberWithInteger:_hostProcessIdentifier];
    v14[0] = 0;
    v12 = [v10 setAttribute:v11 forKey:AVSystemController_PIDToInheritApplicationStateFrom error:v14];
    v13 = v14[0];

    if ((v12 & 1) == 0)
    {
      NSLog(@"Failed to inherit CoreMedia permissions from %d: %@", _hostProcessIdentifier, v13);
    }
  }
}

- (void)setSections:(id)sections
{
  self->_sectionsIsSet = 1;
  objc_storeStrong(&self->_sections, sections);

  [(DDParsecServiceCollectionViewController *)self showContent:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  [(DDParsecServiceCollectionViewController *)self setSearchVisible:0];
  v4.receiver = self;
  v4.super_class = DDParsecServiceCollectionViewController;
  [(DDParsecServiceCollectionViewController *)&v4 viewWillDisappear:0];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v13.receiver = self;
  v13.super_class = DDParsecServiceCollectionViewController;
  [(DDParsecServiceCollectionViewController *)&v13 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  verticalSizeClass = [collectionCopy verticalSizeClass];
  traitCollection = [(DDParsecServiceCollectionViewController *)self traitCollection];
  verticalSizeClass2 = [traitCollection verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    _remoteViewControllerProxy = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007530;
    v11[3] = &unk_100018B20;
    v12 = collectionCopy;
    [_remoteViewControllerProxy getStatusBarHidden:v11];
  }
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  viewControllerCopy = viewController;
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

- (void)setPopoverMode:(BOOL)mode
{
  if (self->_popoverMode != mode)
  {
    self->_popoverMode = mode;
    [(DDParsecServiceCollectionViewController *)self updateVisualMode:0];
  }
}

- (void)setPreviewMode:(BOOL)mode
{
  if (self->_previewMode != mode)
  {
    self->_previewMode = mode;
    [(DDParsecServiceCollectionViewController *)self updateVisualMode:0];
  }
}

- (void)setSheetMode:(BOOL)mode
{
  if (self->_sheetMode != mode)
  {
    self->_sheetMode = mode;
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
  _remoteViewControllerProxy = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy showingFTE:0];

  [(DDParsecServiceCollectionViewController *)self showContent:1];
  queryBlock = [(DDParsecServiceCollectionViewController *)self queryBlock];

  if (queryBlock)
  {
    queryBlock2 = [(DDParsecServiceCollectionViewController *)self queryBlock];
    queryBlock2[2]();

    [(DDParsecServiceCollectionViewController *)self setQueryBlock:0];
  }
}

- (void)didEngageCardSection:(id)section
{
  sectionCopy = section;
  v11 = sectionCopy;
  if (self->_useNetwork)
  {
    [sectionCopy setQueryId:{-[DDParsecServiceCollectionViewController queryId](self, "queryId")}];
    feedbackListener = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    [feedbackListener didEngageCardSection:v11];

    sectionCopy = v11;
  }

  destination = [sectionCopy destination];
  if (destination)
  {
    v7 = destination;
    cardSection = [v11 cardSection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      cardSection2 = [v11 cardSection];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        [(DDParsecServiceCollectionViewController *)self doneButtonPressed:0 punchout:1];
      }
    }
  }
}

- (void)didEngageResult:(id)result
{
  resultCopy = result;
  v8 = resultCopy;
  if (self->_useNetwork)
  {
    feedbackListener = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    [feedbackListener didEngageResult:v8];

    if ([v8 destination] != 2)
    {
LABEL_3:
      v5 = v8;

      goto LABEL_5;
    }
  }

  else if ([resultCopy destination] != 2)
  {
    goto LABEL_3;
  }

  _remoteViewControllerProxy = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy interactionEndedWithPunchout:1];

  v5 = v8;

LABEL_5:
}

- (BOOL)shouldHandleCardSectionEngagement:(id)engagement
{
  engagementCopy = engagement;
  [engagementCopy setQueryId:{-[DDParsecServiceCollectionViewController queryId](self, "queryId")}];
  cardSection = [engagementCopy cardSection];
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

    cardSection = [engagementCopy destination];
    _remoteViewControllerProxy = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy openTrailerPunchout:cardSection];
  }

  v9 = isKindOfClass ^ 1;

LABEL_6:
  return v9 & 1;
}

- (void)didReportUserResponseFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = feedbackCopy;
  if (self->_useNetwork)
  {
    userSelection = [feedbackCopy userSelection];
    name = [userSelection name];

    if (name)
    {
      v8 = +[NSUUID UUID];
      uUIDString = [v8 UUIDString];

      [v5 setUploadedDataIdentifier:uUIDString];
      [v5 setReportType:1];
      [v5 setSections:self->_sections];
      feedbackListener = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
      [feedbackListener didSubmitUserReportFeedback:v5];

      v11 = [[_CPUserReportFeedback alloc] initWithFacade:v5];
      data = [v11 data];

      if (!data && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10000B87C();
      }

      _remoteViewControllerProxy = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
      [_remoteViewControllerProxy reportAnIssueWithReportIdentifier:uUIDString sfReportData:data];
    }
  }

  userSelection2 = [v5 userSelection];
  preferredOpenableURL = [userSelection2 preferredOpenableURL];

  if (preferredOpenableURL)
  {
    [(DDParsecServiceCollectionViewController *)self interactionEndedWithPunchout:1];
  }
}

- (void)fetchPreviewImageForResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  _remoteViewControllerProxy = [(DDParsecServiceCollectionViewController *)self _remoteViewControllerProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008194;
  v8[3] = &unk_100018B48;
  v9 = completionCopy;
  v7 = completionCopy;
  [_remoteViewControllerProxy loadReportAnIssueImage:v8];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  feedbackListener = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
  [invocationCopy selector];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (self->_useNetwork)
    {
      feedbackListener2 = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
      [invocationCopy invokeWithTarget:feedbackListener2];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDParsecServiceCollectionViewController;
    [(DDParsecServiceCollectionViewController *)&v8 forwardInvocation:invocationCopy];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = DDParsecServiceCollectionViewController;
  if ([(DDParsecServiceCollectionViewController *)&v7 respondsToSelector:?])
  {
    return 1;
  }

  feedbackListener = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
  v6 = objc_opt_respondsToSelector();

  return v6 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = DDParsecServiceCollectionViewController;
  v5 = [(DDParsecServiceCollectionViewController *)&v9 methodSignatureForSelector:?];
  if (v5)
  {
  }

  else
  {
    feedbackListener = [(DDLookupQuery *)self->_lookupQuery feedbackListener];
    v8 = [feedbackListener methodSignatureForSelector:selector];

    v5 = v8;
  }

  return v5;
}

@end