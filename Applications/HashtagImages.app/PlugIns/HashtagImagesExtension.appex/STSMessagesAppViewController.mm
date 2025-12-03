@interface STSMessagesAppViewController
- (BOOL)searchBrowserRootViewControllerSearchBarShouldBeginEditing:(id)editing;
- (id)dictForSearchResult:(id)result;
- (id)searchResultForDict:(id)dict;
- (void)_addResultToRecents:(id)recents;
- (void)_setup;
- (void)_transitionContentFromViewController:(id)controller toViewController:(id)viewController animations:(id)animations completion:(id)completion;
- (void)_updatePickerBottomInset;
- (void)awakeFromNib;
- (void)browser:(id)browser didSearchFor:(id)for;
- (void)browser:(id)browser didSelectProviderLink:(id)link;
- (void)browser:(id)browser didSelectResult:(id)result withPayload:(id)payload;
- (void)browserCategoryButtonClicked:(id)clicked result:(id)result;
- (void)browserDidTapLogo:(id)logo;
- (void)browserSearchBarButtonClicked:(id)clicked;
- (void)browserSuggestionButtonClicked:(id)clicked suggestion:(id)suggestion;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)requestExpandedPresentationStyleForBrowser:(id)browser completion:(id)completion;
- (void)saveRecents;
- (void)searchBrowserRootViewControllerDidSelectCancel:(id)cancel;
- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error;
- (void)updateConstraintsForSearchBrowser;
- (void)updateConstraintsForZKWBrowser;
- (void)updateRecentResults:(id)results;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willResignActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation STSMessagesAppViewController

- (void)updateConstraintsForZKWBrowser
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  view = [(STSPicker *)self->_zkwPicker view];
  topAnchor = [view topAnchor];
  view2 = [(STSMessagesAppViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];

  view3 = [(STSPicker *)self->_zkwPicker view];
  bottomAnchor = [view3 bottomAnchor];
  view4 = [(STSMessagesAppViewController *)self view];
  superview = [view4 superview];
  bottomAnchor2 = [superview bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  view5 = [(STSPicker *)self->_zkwPicker view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(STSMessagesAppViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  view7 = [(STSPicker *)self->_zkwPicker view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [(STSMessagesAppViewController *)self view];
  trailingAnchor2 = [view8 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  [(NSMutableArray *)self->_constraints addObject:v23];
  [(NSMutableArray *)self->_constraints addObject:v12];
  [(NSMutableArray *)self->_constraints addObject:v17];
  [(NSMutableArray *)self->_constraints addObject:v22];
  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)updateConstraintsForSearchBrowser
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  view = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  topAnchor = [view topAnchor];
  view2 = [(STSMessagesAppViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];

  view3 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  bottomAnchor = [view3 bottomAnchor];
  view4 = [(STSMessagesAppViewController *)self view];
  superview = [view4 superview];
  bottomAnchor2 = [superview bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  view5 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(STSMessagesAppViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  view7 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [(STSMessagesAppViewController *)self view];
  trailingAnchor2 = [view8 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  [(NSMutableArray *)self->_constraints addObject:v23];
  [(NSMutableArray *)self->_constraints addObject:v12];
  [(NSMutableArray *)self->_constraints addObject:v17];
  [(NSMutableArray *)self->_constraints addObject:v22];
  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = STSMessagesAppViewController;
  [(STSMessagesAppViewController *)&v5 awakeFromNib];
  v3 = objc_alloc_init(NSMutableArray);
  recentResults = self->_recentResults;
  self->_recentResults = v3;

  self->_updateRecents = 0;
}

- (void)viewDidLoad
{
  view = [(STSMessagesAppViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = STSMessagesAppViewController;
  [(STSMessagesAppViewController *)&v12 viewDidLayoutSubviews];
  pickerView = [(STSPicker *)self->_zkwPicker pickerView];
  [pickerView setTopInset:4.0];

  pickerView2 = [(STSPicker *)self->_zkwPicker pickerView];
  view = [(STSMessagesAppViewController *)self view];
  [view layoutMargins];
  [pickerView2 setBottomInset:v6];

  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  view2 = [(STSMessagesAppViewController *)self view];
  [view2 layoutMargins];
  [(STSSearchBrowserRootViewController *)searchBrowserRootViewController setTopInset:?];

  v9 = self->_searchBrowserRootViewController;
  view3 = [(STSMessagesAppViewController *)self view];
  [view3 layoutMargins];
  [(STSSearchBrowserRootViewController *)v9 setBottomInset:v11];
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  objc_storeStrong(&self->_currentConversation, conversation);
  conversationCopy = conversation;
  [(STSMessagesAppViewController *)self _setup];
  zkwSearchModel = self->_zkwSearchModel;
  conversationIdentifier = [(MSConversation *)self->_currentConversation conversationIdentifier];
  [(STSSearchModel *)zkwSearchModel setConversationID:conversationIdentifier];

  searchBrowserSearchModel = self->_searchBrowserSearchModel;
  conversationIdentifier2 = [(MSConversation *)self->_currentConversation conversationIdentifier];
  [(STSSearchModel *)searchBrowserSearchModel setConversationID:conversationIdentifier2];

  [(STSPicker *)self->_zkwPicker performZKWSearchQuery];
  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController fetchCategories];
  v10 = +[STSFeedbackReporter sharedInstance];

  [v10 searchViewDidAppearWithEvent:7];
}

- (void)willResignActiveWithConversation:(id)conversation
{
  zkwPicker = self->_zkwPicker;
  conversationCopy = conversation;
  [(STSPicker *)zkwPicker willResignActiveWithConversation:conversationCopy];
  pickerViewController = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController pickerViewController];
  [pickerViewController willResignActiveWithConversation:conversationCopy];

  v7 = +[STSFeedbackReporter sharedInstance];
  [v7 searchViewDidDisappear];
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  p_searchBrowserRootViewController = &self->_searchBrowserRootViewController;
  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController setPresentationStyle:?];
  if (style == 1)
  {
    requestExpandedCompletion = [(STSMessagesAppViewController *)self requestExpandedCompletion];

    if (requestExpandedCompletion)
    {
      requestExpandedCompletion2 = [(STSMessagesAppViewController *)self requestExpandedCompletion];
      requestExpandedCompletion2[2]();
    }
  }

  [(STSMessagesAppViewController *)self setRequestExpandedCompletion:0];
  parentViewController = [(STSSearchBrowserRootViewController *)*p_searchBrowserRootViewController parentViewController];

  if (!parentViewController)
  {
    p_searchBrowserRootViewController = &self->_zkwPicker;
  }

  v9 = *p_searchBrowserRootViewController;

  [(STSSearchBrowserRootViewController *)v9 sendVisibleResultsFeedback];
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  if (!style)
  {
    parentViewController = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController parentViewController];
    if (parentViewController && (v5 = parentViewController, v6 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController isPickerVisible], v5, (v6 & 1) == 0))
    {
      pickerViewController = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController pickerViewController];
      [pickerViewController willTransitionToPresentationStyle:0];

      pickerViewController2 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController pickerViewController];
      [pickerViewController2 resetContent];

      searchBrowserRootViewController = self->_searchBrowserRootViewController;
      zkwPicker = self->_zkwPicker;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100001D38;
      v12[3] = &unk_100008288;
      v12[4] = self;
      [(STSMessagesAppViewController *)self _transitionContentFromViewController:searchBrowserRootViewController toViewController:zkwPicker animations:v12 completion:0];
    }

    else
    {
      [(STSPicker *)self->_zkwPicker willTransitionToPresentationStyle:0];
      pickerViewController3 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController pickerViewController];
      [pickerViewController3 willTransitionToPresentationStyle:0];
    }
  }
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  zkwPicker = self->_zkwPicker;
  blockCopy = block;
  snapshotImage = [(STSPicker *)zkwPicker snapshotImage];
  blockCopy[2](blockCopy, snapshotImage);
}

- (void)browser:(id)browser didSelectProviderLink:(id)link
{
  if (link)
  {
    linkCopy = link;
    extensionContext = [(STSMessagesAppViewController *)self extensionContext];
    sts_providerHostPageURL = [linkCopy sts_providerHostPageURL];

    [extensionContext openURL:sts_providerHostPageURL completionHandler:0];
  }
}

- (void)browser:(id)browser didSelectResult:(id)result withPayload:(id)payload
{
  browserCopy = browser;
  resultCopy = result;
  payloadCopy = payload;
  v11 = [resultCopy copy];
  imageURL = [payloadCopy imageURL];

  if (imageURL)
  {
    zkwPicker = self->_zkwPicker;
    if (zkwPicker != browserCopy)
    {
      [(STSPicker *)zkwPicker resetContent];
    }

    sts_appProviderName = [resultCopy sts_appProviderName];
    storeIdentifier = [resultCopy storeIdentifier];
    v16 = storeIdentifier;
    v26 = browserCopy;
    if (storeIdentifier)
    {
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [storeIdentifier integerValue]);
    }

    else
    {
      v17 = 0;
    }

    currentConversation = self->_currentConversation;
    imageURL2 = [payloadCopy imageURL];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100002188;
    v34[3] = &unk_1000082B0;
    v34[4] = self;
    v35 = resultCopy;
    [(MSConversation *)currentConversation _insertAttachment:imageURL2 adamID:v17 appName:sts_appProviderName completionHandler:v34];

    browserCopy = v27;
  }

  else
  {
    videoURL = [payloadCopy videoURL];

    if (videoURL)
    {
      v19 = self->_currentConversation;
      videoURL2 = [payloadCopy videoURL];
      absoluteString = [videoURL2 absoluteString];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100002260;
      v33[3] = &unk_1000082D8;
      v33[4] = self;
      [(MSConversation *)v19 insertText:absoluteString completionHandler:v33];
    }

    else
    {
      [(STSMessagesAppViewController *)self requestPresentationStyle:0];
    }
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000226C;
  v31[3] = &unk_100008288;
  v32 = v11;
  v24 = v11;
  [(STSMessagesAppViewController *)self setEngagementFeedbackBlock:v31];
  objc_initWeak(&location, self);
  v25 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000022C4;
  block[3] = &unk_100008300;
  objc_copyWeak(&v29, &location);
  dispatch_after(v25, &_dispatch_main_q, block);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

- (void)browserSearchBarButtonClicked:(id)clicked
{
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  searchHeaderView = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController searchHeaderView];
  searchBar = [searchHeaderView searchBar];
  [searchBar setText:0];

  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController showCategories];
  zkwPicker = self->_zkwPicker;
  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002480;
  v9[3] = &unk_100008288;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002488;
  v8[3] = &unk_100008288;
  [(STSMessagesAppViewController *)self _transitionContentFromViewController:zkwPicker toViewController:searchBrowserRootViewController animations:v9 completion:v8];
}

- (void)browser:(id)browser didSearchFor:(id)for
{
  forCopy = for;
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  zkwPicker = self->_zkwPicker;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000261C;
  v8[3] = &unk_100008328;
  v8[4] = self;
  v9 = forCopy;
  v7 = forCopy;
  [(STSMessagesAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v8];
}

- (void)browserCategoryButtonClicked:(id)clicked result:(id)result
{
  resultCopy = result;
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  secondaryTitle = [resultCopy secondaryTitle];
  [(STSSearchBrowserRootViewController *)searchBrowserRootViewController showPickerAndPerformQuery:secondaryTitle requestType:5];

  zkwPicker = self->_zkwPicker;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000028A4;
  v10[3] = &unk_100008328;
  v10[4] = self;
  v11 = resultCopy;
  v9 = resultCopy;
  [(STSMessagesAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v10];
}

- (void)browserSuggestionButtonClicked:(id)clicked suggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  query = [suggestionCopy query];
  [(STSSearchBrowserRootViewController *)searchBrowserRootViewController showPickerAndPerformQuery:query requestType:3];

  zkwPicker = self->_zkwPicker;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002AF0;
  v10[3] = &unk_100008328;
  v10[4] = self;
  v11 = suggestionCopy;
  v9 = suggestionCopy;
  [(STSMessagesAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v10];
}

- (void)requestExpandedPresentationStyleForBrowser:(id)browser completion:(id)completion
{
  completionCopy = completion;
  if ([(STSMessagesAppViewController *)self presentationStyle]== 1)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    [(STSMessagesAppViewController *)self setRequestExpandedCompletion:completionCopy];
    [(STSMessagesAppViewController *)self requestPresentationStyle:1];
  }
}

- (void)browserDidTapLogo:(id)logo
{
  parentViewController = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController parentViewController];

  if (parentViewController)
  {
    searchHeaderView = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController searchHeaderView];
    searchBar = [searchHeaderView searchBar];
    text = [searchBar text];

    v7 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    extensionContext2 = [text stringByAddingPercentEncodingWithAllowedCharacters:v7];

    v9 = [NSString stringWithFormat:@"%@?q=%@", @"https://www.bing.com/images/search", extensionContext2];
    v10 = [NSURL URLWithString:v9];

    v11 = +[STSFeedbackReporter sharedInstance];
    [v11 didEngageProviderLogo];

    extensionContext = [(STSMessagesAppViewController *)self extensionContext];
    [extensionContext openURL:v10 completionHandler:0];
  }

  else
  {
    text = [NSURL URLWithString:@"https://www.bing.com/images/search"];
    v13 = +[STSFeedbackReporter sharedInstance];
    [v13 didEngageProviderLogo];

    extensionContext2 = [(STSMessagesAppViewController *)self extensionContext];
    [extensionContext2 openURL:text completionHandler:0];
  }
}

- (void)searchBrowserRootViewControllerDidSelectCancel:(id)cancel
{
  if (self->_updateRecents)
  {
    self->_updateRecents = 0;
    zkwSearchModel = self->_zkwSearchModel;
    v5 = [(NSMutableArray *)self->_recentResults copy];
    [(STSSearchModel *)zkwSearchModel setRecentResults:v5];

    v6 = self->_zkwSearchModel;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000300C;
    v11[3] = &unk_100008350;
    v11[4] = self;
    [(STSSearchModel *)v6 performZKWSearchQueryWithCompletion:v11];
  }

  else
  {
    searchBrowserRootViewController = self->_searchBrowserRootViewController;
    zkwPicker = self->_zkwPicker;
    v9[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003120;
    v10[3] = &unk_100008288;
    v10[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003128;
    v9[3] = &unk_100008288;
    [(STSMessagesAppViewController *)self _transitionContentFromViewController:searchBrowserRootViewController toViewController:zkwPicker animations:v10 completion:v9];
  }
}

- (BOOL)searchBrowserRootViewControllerSearchBarShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  if ([(STSMessagesAppViewController *)self presentationStyle])
  {
    v5 = 1;
  }

  else
  {
    zkwPicker = self->_zkwPicker;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003250;
    v8[3] = &unk_100008288;
    v9 = editingCopy;
    [(STSMessagesAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v8];
    v5 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController presentationStyle]== 1;
  }

  return v5;
}

- (void)updateRecentResults:(id)results
{
  resultsCopy = results;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = resultsCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "updating recent results: %@", &v7, 0xCu);
  }

  v5 = [resultsCopy mutableCopy];
  recentResults = self->_recentResults;
  self->_recentResults = v5;

  [(STSMessagesAppViewController *)self saveRecents];
}

- (void)_transitionContentFromViewController:(id)controller toViewController:(id)viewController animations:(id)animations completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  animationsCopy = animations;
  completionCopy = completion;
  [(STSMessagesAppViewController *)self addChildViewController:viewControllerCopy];
  if (controllerCopy)
  {
    parentViewController = [controllerCopy parentViewController];

    if (!parentViewController)
    {
      [(STSMessagesAppViewController *)self addChildViewController:controllerCopy];
    }

    [controllerCopy willMoveToParentViewController:0];
    if (animationsCopy)
    {
      v15 = 0.25;
    }

    else
    {
      v15 = 0.0;
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100003618;
    v18[3] = &unk_100008378;
    v19 = controllerCopy;
    selfCopy = self;
    v21 = viewControllerCopy;
    v22 = completionCopy;
    [(STSMessagesAppViewController *)self transitionFromViewController:v19 toViewController:v21 duration:5242880 options:animationsCopy animations:v18 completion:v15];
  }

  else
  {
    view = [(STSMessagesAppViewController *)self view];
    view2 = [viewControllerCopy view];
    [view setContentView:view2];

    [viewControllerCopy didMoveToParentViewController:self];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)_setup
{
  v3 = [[PARSessionConfiguration alloc] initWithId:@"Messages-searchToShare-session" userAgent:@"Messages/1.0"];
  [v3 setDontPreloadImages:1];
  v53 = v3;
  v4 = [PARSession sessionWithConfiguration:v3 delegate:self startImmediately:1];
  v5 = objc_alloc_init(STSSearchModel);
  objc_storeStrong(&self->_searchBrowserSearchModel, v5);
  [v5 setParsecSession:v4];
  v52 = v5;
  v6 = [[STSSearchBrowserRootViewController alloc] initWithSearchModel:v5];
  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  self->_searchBrowserRootViewController = v6;

  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController setSelectionDelegate:self];
  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController setPickerSelectionDelegate:self];
  v8 = objc_alloc_init(STSSearchModel);
  [v8 setParsecSession:v4];
  objc_storeStrong(&self->_zkwSearchModel, v8);
  [(STSSearchModel *)self->_zkwSearchModel setRecentsDelegate:self];
  v51 = v8;
  v9 = [[STSPicker alloc] initWithSearchModel:v8 showSuggestions:1];
  zkwPicker = self->_zkwPicker;
  self->_zkwPicker = v9;

  [(STSPicker *)self->_zkwPicker setSelectionDelegate:self];
  v50 = +[NSMutableArray array];
  view = [(STSMessagesAppViewController *)self view];
  topAnchor = [view topAnchor];
  parentViewController = [(STSMessagesAppViewController *)self parentViewController];
  view2 = [parentViewController view];
  topAnchor2 = [view2 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];

  view3 = [(STSMessagesAppViewController *)self view];
  bottomAnchor = [view3 bottomAnchor];
  parentViewController2 = [(STSMessagesAppViewController *)self parentViewController];
  view4 = [parentViewController2 view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  view5 = [(STSMessagesAppViewController *)self view];
  leadingAnchor = [view5 leadingAnchor];
  parentViewController3 = [(STSMessagesAppViewController *)self parentViewController];
  view6 = [parentViewController3 view];
  leadingAnchor2 = [view6 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  view7 = [(STSMessagesAppViewController *)self view];
  trailingAnchor = [view7 trailingAnchor];
  parentViewController4 = [(STSMessagesAppViewController *)self parentViewController];
  view8 = [parentViewController4 view];
  trailingAnchor2 = [view8 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  [v50 addObject:v16];
  [v50 addObject:v49];
  [v50 addObject:v28];
  [v50 addObject:v34];
  [NSLayoutConstraint activateConstraints:v50];
  v35 = objc_alloc_init(STSZKWBrowserHeaderView);
  zkwHeaderView = self->_zkwHeaderView;
  self->_zkwHeaderView = v35;

  pickerView = [(STSPicker *)self->_zkwPicker pickerView];
  [pickerView setHeaderView:self->_zkwHeaderView];

  [(STSZKWBrowserHeaderView *)self->_zkwHeaderView setDelegate:self->_zkwPicker];
  v38 = +[STSFeedbackReporter sharedInstance];
  [v38 setParsecSession:v4];

  v39 = +[NSMutableArray array];
  constraints = self->_constraints;
  self->_constraints = v39;

  v41 = self->_zkwPicker;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100003CD4;
  v56[3] = &unk_100008288;
  v56[4] = self;
  [(STSMessagesAppViewController *)self _transitionContentFromViewController:0 toViewController:v41 animations:0 completion:v56];
  v42 = +[NSUserDefaults standardUserDefaults];
  [v42 setObject:0 forKey:@"STSRecentResults"];
  v43 = [v42 objectForKey:@"STSRecentResults1"];
  v44 = objc_alloc_init(NSMutableArray);
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100003CDC;
  v54[3] = &unk_1000083A0;
  v54[4] = self;
  v45 = v44;
  v55 = v45;
  [v43 enumerateObjectsUsingBlock:v54];
  objc_storeStrong(&self->_recentResults, v44);
  recentResults = self->_recentResults;
  if (!recentResults)
  {
    v47 = objc_opt_new();
    v48 = self->_recentResults;
    self->_recentResults = v47;

    recentResults = self->_recentResults;
  }

  [(STSSearchModel *)self->_zkwSearchModel setRecentResults:recentResults];
}

- (void)_updatePickerBottomInset
{
  pickerView = [(STSPicker *)self->_zkwPicker pickerView];
  [pickerView setBottomInset:44.0];
}

- (void)_addResultToRecents:(id)recents
{
  recentsCopy = recents;
  resultType = [recentsCopy resultType];
  v6 = [resultType isEqualToString:STSSearchModelResultTypeImage];

  if (v6)
  {
    recentResults = self->_recentResults;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003F3C;
    v12[3] = &unk_1000083C8;
    v8 = recentsCopy;
    v13 = v8;
    v9 = [(NSMutableArray *)recentResults indexOfObjectPassingTest:v12];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 setType:2];
      [v8 setFbr:&stru_1000084D0];
      [v8 setSectionBundleIdentifier:@"com.apple.parsec.image_search.msgs-zkw"];
      [(NSMutableArray *)self->_recentResults insertObject:v8 atIndex:0];
      if ([(NSMutableArray *)self->_recentResults count]>= 4)
      {
        [(NSMutableArray *)self->_recentResults removeLastObject];
      }
    }

    else
    {
      v10 = v9;
      v11 = [(NSMutableArray *)self->_recentResults objectAtIndex:v9];
      [v11 setType:2];
      [v11 setFbr:&stru_1000084D0];
      [v11 setSectionBundleIdentifier:@"com.apple.parsec.image_search.msgs-zkw"];
      [(NSMutableArray *)self->_recentResults removeObjectAtIndex:v10];
      [(NSMutableArray *)self->_recentResults insertObject:v11 atIndex:0];
    }

    [(STSMessagesAppViewController *)self saveRecents];
  }
}

- (void)saveRecents
{
  v3 = objc_alloc_init(NSMutableArray);
  recentResults = self->_recentResults;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000040A4;
  v11 = &unk_1000083F0;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [(NSMutableArray *)recentResults enumerateObjectsUsingBlock:&v8];
  v6 = [NSUserDefaults standardUserDefaults:v8];
  v7 = [v5 copy];
  [v6 setObject:v7 forKey:@"STSRecentResults1"];

  [v6 synchronize];
}

- (id)dictForSearchResult:(id)result
{
  if (result)
  {
    resultCopy = result;
    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:@"image_search" forKey:@"result-type"];
    v5 = [resultCopy url];
    absoluteString = [v5 absoluteString];
    v7 = absoluteString;
    if (absoluteString)
    {
      v8 = absoluteString;
    }

    else
    {
      v8 = &stru_1000084D0;
    }

    [v4 setObject:v8 forKey:@"url"];

    identifier = [resultCopy identifier];
    v10 = identifier;
    if (identifier)
    {
      v11 = identifier;
    }

    else
    {
      v11 = &stru_1000084D0;
    }

    [v4 setObject:v11 forKey:@"id"];

    storeIdentifier = [resultCopy storeIdentifier];
    v13 = storeIdentifier;
    if (storeIdentifier)
    {
      v14 = storeIdentifier;
    }

    else
    {
      v14 = &stru_1000084D0;
    }

    [v4 setObject:v14 forKey:@"store-identifier"];

    sts_appProviderName = [resultCopy sts_appProviderName];
    v16 = sts_appProviderName;
    if (sts_appProviderName)
    {
      v17 = sts_appProviderName;
    }

    else
    {
      v17 = &stru_1000084D0;
    }

    [v4 setObject:v17 forKey:@"app-provider-name"];

    sts_providerName = [resultCopy sts_providerName];
    v19 = sts_providerName;
    if (sts_providerName)
    {
      v20 = sts_providerName;
    }

    else
    {
      v20 = &stru_1000084D0;
    }

    [v4 setObject:v20 forKey:@"desc-provider-name"];

    thumbnail = [resultCopy thumbnail];
    urlValue = [thumbnail urlValue];
    absoluteString2 = [urlValue absoluteString];
    v24 = absoluteString2;
    if (absoluteString2)
    {
      v25 = absoluteString2;
    }

    else
    {
      v25 = &stru_1000084D0;
    }

    [v4 setObject:v25 forKey:@"thumbnail-url"];

    sts_providerHostPageURL = [resultCopy sts_providerHostPageURL];

    absoluteString3 = [sts_providerHostPageURL absoluteString];
    v28 = absoluteString3;
    if (absoluteString3)
    {
      v29 = absoluteString3;
    }

    else
    {
      v29 = &stru_1000084D0;
    }

    [v4 setObject:v29 forKey:@"meta-hostpage-url"];

    v30 = [v4 copy];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)searchResultForDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_alloc_init(SFSearchResult);
  v5 = [dictCopy objectForKey:@"result-type"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"image_search";
  }

  [v4 setResultType:v7];

  v8 = [dictCopy objectForKey:@"url"];
  v9 = [NSURL URLWithString:v8];
  [v4 setUrl:v9];

  v10 = [dictCopy objectForKey:@"id"];
  [v4 setIdentifier:v10];

  v11 = [dictCopy objectForKey:@"store-identifier"];
  [v4 setStoreIdentifier:v11];

  [v4 setType:2];
  [v4 setSectionBundleIdentifier:@"com.apple.parsec.image_search.msgs-zkw"];
  v12 = [SFURLImage alloc];
  v13 = [dictCopy objectForKey:@"thumbnail-url"];
  v14 = [NSURL URLWithString:v13];
  v15 = [v12 initWithURL:v14];

  [v4 setThumbnail:v15];
  v16 = objc_alloc_init(SFDescriptionCardSection);
  v17 = [dictCopy objectForKey:@"desc-provider-name"];
  [v16 setTitle:v17];

  v18 = objc_alloc_init(SFMetaInfoCardSection);
  v19 = [dictCopy objectForKey:@"meta-hostpage-url"];
  v20 = [NSURL URLWithString:v19];
  [v18 setHostPageURL:v20];

  v21 = objc_alloc_init(SFCard);
  v26[0] = v16;
  v26[1] = v18;
  v22 = [NSArray arrayWithObjects:v26 count:2];
  [v21 setCardSections:v22];

  v23 = objc_alloc_init(SFPunchout);
  v24 = [dictCopy objectForKey:@"app-provider-name"];

  [v23 setLabel:v24];
  [v4 setPunchout:v23];
  [v4 setInlineCard:v21];

  return v4;
}

- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error
{
  sessionCopy = session;
  bagCopy = bag;
  errorCopy = error;
  v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = sessionCopy;
      v11 = "session %@ parsec bag failed to load";
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    }
  }

  else if (v10)
  {
    v12 = 138412290;
    v13 = sessionCopy;
    v11 = "session %@ parsec bag loaded";
    goto LABEL_6;
  }
}

@end