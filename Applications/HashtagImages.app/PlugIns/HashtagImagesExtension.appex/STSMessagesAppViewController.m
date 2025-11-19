@interface STSMessagesAppViewController
- (BOOL)searchBrowserRootViewControllerSearchBarShouldBeginEditing:(id)a3;
- (id)dictForSearchResult:(id)a3;
- (id)searchResultForDict:(id)a3;
- (void)_addResultToRecents:(id)a3;
- (void)_setup;
- (void)_transitionContentFromViewController:(id)a3 toViewController:(id)a4 animations:(id)a5 completion:(id)a6;
- (void)_updatePickerBottomInset;
- (void)awakeFromNib;
- (void)browser:(id)a3 didSearchFor:(id)a4;
- (void)browser:(id)a3 didSelectProviderLink:(id)a4;
- (void)browser:(id)a3 didSelectResult:(id)a4 withPayload:(id)a5;
- (void)browserCategoryButtonClicked:(id)a3 result:(id)a4;
- (void)browserDidTapLogo:(id)a3;
- (void)browserSearchBarButtonClicked:(id)a3;
- (void)browserSuggestionButtonClicked:(id)a3 suggestion:(id)a4;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)requestExpandedPresentationStyleForBrowser:(id)a3 completion:(id)a4;
- (void)saveRecents;
- (void)searchBrowserRootViewControllerDidSelectCancel:(id)a3;
- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5;
- (void)updateConstraintsForSearchBrowser;
- (void)updateConstraintsForZKWBrowser;
- (void)updateRecentResults:(id)a3;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willResignActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation STSMessagesAppViewController

- (void)updateConstraintsForZKWBrowser
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v3 = [(STSPicker *)self->_zkwPicker view];
  v4 = [v3 topAnchor];
  v5 = [(STSMessagesAppViewController *)self view];
  v6 = [v5 topAnchor];
  v23 = [v4 constraintEqualToAnchor:v6];

  v7 = [(STSPicker *)self->_zkwPicker view];
  v8 = [v7 bottomAnchor];
  v9 = [(STSMessagesAppViewController *)self view];
  v10 = [v9 superview];
  v11 = [v10 bottomAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];

  v13 = [(STSPicker *)self->_zkwPicker view];
  v14 = [v13 leadingAnchor];
  v15 = [(STSMessagesAppViewController *)self view];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];

  v18 = [(STSPicker *)self->_zkwPicker view];
  v19 = [v18 trailingAnchor];
  v20 = [(STSMessagesAppViewController *)self view];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];

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
  v3 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  v4 = [v3 topAnchor];
  v5 = [(STSMessagesAppViewController *)self view];
  v6 = [v5 topAnchor];
  v23 = [v4 constraintEqualToAnchor:v6];

  v7 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  v8 = [v7 bottomAnchor];
  v9 = [(STSMessagesAppViewController *)self view];
  v10 = [v9 superview];
  v11 = [v10 bottomAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];

  v13 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  v14 = [v13 leadingAnchor];
  v15 = [(STSMessagesAppViewController *)self view];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];

  v18 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  v19 = [v18 trailingAnchor];
  v20 = [(STSMessagesAppViewController *)self view];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];

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
  v2 = [(STSMessagesAppViewController *)self view];
  [v2 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = STSMessagesAppViewController;
  [(STSMessagesAppViewController *)&v12 viewDidLayoutSubviews];
  v3 = [(STSPicker *)self->_zkwPicker pickerView];
  [v3 setTopInset:4.0];

  v4 = [(STSPicker *)self->_zkwPicker pickerView];
  v5 = [(STSMessagesAppViewController *)self view];
  [v5 layoutMargins];
  [v4 setBottomInset:v6];

  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  v8 = [(STSMessagesAppViewController *)self view];
  [v8 layoutMargins];
  [(STSSearchBrowserRootViewController *)searchBrowserRootViewController setTopInset:?];

  v9 = self->_searchBrowserRootViewController;
  v10 = [(STSMessagesAppViewController *)self view];
  [v10 layoutMargins];
  [(STSSearchBrowserRootViewController *)v9 setBottomInset:v11];
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  objc_storeStrong(&self->_currentConversation, a3);
  v5 = a3;
  [(STSMessagesAppViewController *)self _setup];
  zkwSearchModel = self->_zkwSearchModel;
  v7 = [(MSConversation *)self->_currentConversation conversationIdentifier];
  [(STSSearchModel *)zkwSearchModel setConversationID:v7];

  searchBrowserSearchModel = self->_searchBrowserSearchModel;
  v9 = [(MSConversation *)self->_currentConversation conversationIdentifier];
  [(STSSearchModel *)searchBrowserSearchModel setConversationID:v9];

  [(STSPicker *)self->_zkwPicker performZKWSearchQuery];
  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController fetchCategories];
  v10 = +[STSFeedbackReporter sharedInstance];

  [v10 searchViewDidAppearWithEvent:7];
}

- (void)willResignActiveWithConversation:(id)a3
{
  zkwPicker = self->_zkwPicker;
  v5 = a3;
  [(STSPicker *)zkwPicker willResignActiveWithConversation:v5];
  v6 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController pickerViewController];
  [v6 willResignActiveWithConversation:v5];

  v7 = +[STSFeedbackReporter sharedInstance];
  [v7 searchViewDidDisappear];
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  p_searchBrowserRootViewController = &self->_searchBrowserRootViewController;
  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController setPresentationStyle:?];
  if (a3 == 1)
  {
    v6 = [(STSMessagesAppViewController *)self requestExpandedCompletion];

    if (v6)
    {
      v7 = [(STSMessagesAppViewController *)self requestExpandedCompletion];
      v7[2]();
    }
  }

  [(STSMessagesAppViewController *)self setRequestExpandedCompletion:0];
  v8 = [(STSSearchBrowserRootViewController *)*p_searchBrowserRootViewController parentViewController];

  if (!v8)
  {
    p_searchBrowserRootViewController = &self->_zkwPicker;
  }

  v9 = *p_searchBrowserRootViewController;

  [(STSSearchBrowserRootViewController *)v9 sendVisibleResultsFeedback];
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  if (!a3)
  {
    v4 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController parentViewController];
    if (v4 && (v5 = v4, v6 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController isPickerVisible], v5, (v6 & 1) == 0))
    {
      v7 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController pickerViewController];
      [v7 willTransitionToPresentationStyle:0];

      v8 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController pickerViewController];
      [v8 resetContent];

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
      v11 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController pickerViewController];
      [v11 willTransitionToPresentationStyle:0];
    }
  }
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  zkwPicker = self->_zkwPicker;
  v4 = a3;
  v5 = [(STSPicker *)zkwPicker snapshotImage];
  v4[2](v4, v5);
}

- (void)browser:(id)a3 didSelectProviderLink:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v7 = [(STSMessagesAppViewController *)self extensionContext];
    v6 = [v5 sts_providerHostPageURL];

    [v7 openURL:v6 completionHandler:0];
  }
}

- (void)browser:(id)a3 didSelectResult:(id)a4 withPayload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 copy];
  v12 = [v10 imageURL];

  if (v12)
  {
    zkwPicker = self->_zkwPicker;
    if (zkwPicker != v8)
    {
      [(STSPicker *)zkwPicker resetContent];
    }

    v14 = [v9 sts_appProviderName];
    v15 = [v9 storeIdentifier];
    v16 = v15;
    v26 = v8;
    if (v15)
    {
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 integerValue]);
    }

    else
    {
      v17 = 0;
    }

    currentConversation = self->_currentConversation;
    v23 = [v10 imageURL];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100002188;
    v34[3] = &unk_1000082B0;
    v34[4] = self;
    v35 = v9;
    [(MSConversation *)currentConversation _insertAttachment:v23 adamID:v17 appName:v14 completionHandler:v34];

    v8 = v27;
  }

  else
  {
    v18 = [v10 videoURL];

    if (v18)
    {
      v19 = self->_currentConversation;
      v20 = [v10 videoURL];
      v21 = [v20 absoluteString];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100002260;
      v33[3] = &unk_1000082D8;
      v33[4] = self;
      [(MSConversation *)v19 insertText:v21 completionHandler:v33];
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

- (void)browserSearchBarButtonClicked:(id)a3
{
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  v4 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController searchHeaderView];
  v5 = [v4 searchBar];
  [v5 setText:0];

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

- (void)browser:(id)a3 didSearchFor:(id)a4
{
  v5 = a4;
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  zkwPicker = self->_zkwPicker;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000261C;
  v8[3] = &unk_100008328;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(STSMessagesAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v8];
}

- (void)browserCategoryButtonClicked:(id)a3 result:(id)a4
{
  v5 = a4;
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  v7 = [v5 secondaryTitle];
  [(STSSearchBrowserRootViewController *)searchBrowserRootViewController showPickerAndPerformQuery:v7 requestType:5];

  zkwPicker = self->_zkwPicker;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000028A4;
  v10[3] = &unk_100008328;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [(STSMessagesAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v10];
}

- (void)browserSuggestionButtonClicked:(id)a3 suggestion:(id)a4
{
  v5 = a4;
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  v7 = [v5 query];
  [(STSSearchBrowserRootViewController *)searchBrowserRootViewController showPickerAndPerformQuery:v7 requestType:3];

  zkwPicker = self->_zkwPicker;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002AF0;
  v10[3] = &unk_100008328;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [(STSMessagesAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v10];
}

- (void)requestExpandedPresentationStyleForBrowser:(id)a3 completion:(id)a4
{
  v5 = a4;
  if ([(STSMessagesAppViewController *)self presentationStyle]== 1)
  {
    if (v5)
    {
      v5[2]();
    }
  }

  else
  {
    [(STSMessagesAppViewController *)self setRequestExpandedCompletion:v5];
    [(STSMessagesAppViewController *)self requestPresentationStyle:1];
  }
}

- (void)browserDidTapLogo:(id)a3
{
  v4 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController parentViewController];

  if (v4)
  {
    v5 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController searchHeaderView];
    v6 = [v5 searchBar];
    v14 = [v6 text];

    v7 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v8 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:v7];

    v9 = [NSString stringWithFormat:@"%@?q=%@", @"https://www.bing.com/images/search", v8];
    v10 = [NSURL URLWithString:v9];

    v11 = +[STSFeedbackReporter sharedInstance];
    [v11 didEngageProviderLogo];

    v12 = [(STSMessagesAppViewController *)self extensionContext];
    [v12 openURL:v10 completionHandler:0];
  }

  else
  {
    v14 = [NSURL URLWithString:@"https://www.bing.com/images/search"];
    v13 = +[STSFeedbackReporter sharedInstance];
    [v13 didEngageProviderLogo];

    v8 = [(STSMessagesAppViewController *)self extensionContext];
    [v8 openURL:v14 completionHandler:0];
  }
}

- (void)searchBrowserRootViewControllerDidSelectCancel:(id)a3
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

- (BOOL)searchBrowserRootViewControllerSearchBarShouldBeginEditing:(id)a3
{
  v4 = a3;
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
    v9 = v4;
    [(STSMessagesAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v8];
    v5 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController presentationStyle]== 1;
  }

  return v5;
}

- (void)updateRecentResults:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "updating recent results: %@", &v7, 0xCu);
  }

  v5 = [v4 mutableCopy];
  recentResults = self->_recentResults;
  self->_recentResults = v5;

  [(STSMessagesAppViewController *)self saveRecents];
}

- (void)_transitionContentFromViewController:(id)a3 toViewController:(id)a4 animations:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(STSMessagesAppViewController *)self addChildViewController:v11];
  if (v10)
  {
    v14 = [v10 parentViewController];

    if (!v14)
    {
      [(STSMessagesAppViewController *)self addChildViewController:v10];
    }

    [v10 willMoveToParentViewController:0];
    if (v12)
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
    v19 = v10;
    v20 = self;
    v21 = v11;
    v22 = v13;
    [(STSMessagesAppViewController *)self transitionFromViewController:v19 toViewController:v21 duration:5242880 options:v12 animations:v18 completion:v15];
  }

  else
  {
    v16 = [(STSMessagesAppViewController *)self view];
    v17 = [v11 view];
    [v16 setContentView:v17];

    [v11 didMoveToParentViewController:self];
    if (v13)
    {
      v13[2](v13);
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
  v11 = [(STSMessagesAppViewController *)self view];
  v12 = [v11 topAnchor];
  v13 = [(STSMessagesAppViewController *)self parentViewController];
  v14 = [v13 view];
  v15 = [v14 topAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  v17 = [(STSMessagesAppViewController *)self view];
  v18 = [v17 bottomAnchor];
  v19 = [(STSMessagesAppViewController *)self parentViewController];
  v20 = [v19 view];
  v21 = [v20 safeAreaLayoutGuide];
  v22 = [v21 bottomAnchor];
  v49 = [v18 constraintEqualToAnchor:v22];

  v23 = [(STSMessagesAppViewController *)self view];
  v24 = [v23 leadingAnchor];
  v25 = [(STSMessagesAppViewController *)self parentViewController];
  v26 = [v25 view];
  v27 = [v26 leadingAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];

  v29 = [(STSMessagesAppViewController *)self view];
  v30 = [v29 trailingAnchor];
  v31 = [(STSMessagesAppViewController *)self parentViewController];
  v32 = [v31 view];
  v33 = [v32 trailingAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];

  [v50 addObject:v16];
  [v50 addObject:v49];
  [v50 addObject:v28];
  [v50 addObject:v34];
  [NSLayoutConstraint activateConstraints:v50];
  v35 = objc_alloc_init(STSZKWBrowserHeaderView);
  zkwHeaderView = self->_zkwHeaderView;
  self->_zkwHeaderView = v35;

  v37 = [(STSPicker *)self->_zkwPicker pickerView];
  [v37 setHeaderView:self->_zkwHeaderView];

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
  v2 = [(STSPicker *)self->_zkwPicker pickerView];
  [v2 setBottomInset:44.0];
}

- (void)_addResultToRecents:(id)a3
{
  v4 = a3;
  v5 = [v4 resultType];
  v6 = [v5 isEqualToString:STSSearchModelResultTypeImage];

  if (v6)
  {
    recentResults = self->_recentResults;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003F3C;
    v12[3] = &unk_1000083C8;
    v8 = v4;
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
  v12 = self;
  v13 = v3;
  v5 = v3;
  [(NSMutableArray *)recentResults enumerateObjectsUsingBlock:&v8];
  v6 = [NSUserDefaults standardUserDefaults:v8];
  v7 = [v5 copy];
  [v6 setObject:v7 forKey:@"STSRecentResults1"];

  [v6 synchronize];
}

- (id)dictForSearchResult:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(NSMutableDictionary);
    [v4 setObject:@"image_search" forKey:@"result-type"];
    v5 = [v3 url];
    v6 = [v5 absoluteString];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1000084D0;
    }

    [v4 setObject:v8 forKey:@"url"];

    v9 = [v3 identifier];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1000084D0;
    }

    [v4 setObject:v11 forKey:@"id"];

    v12 = [v3 storeIdentifier];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &stru_1000084D0;
    }

    [v4 setObject:v14 forKey:@"store-identifier"];

    v15 = [v3 sts_appProviderName];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1000084D0;
    }

    [v4 setObject:v17 forKey:@"app-provider-name"];

    v18 = [v3 sts_providerName];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1000084D0;
    }

    [v4 setObject:v20 forKey:@"desc-provider-name"];

    v21 = [v3 thumbnail];
    v22 = [v21 urlValue];
    v23 = [v22 absoluteString];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &stru_1000084D0;
    }

    [v4 setObject:v25 forKey:@"thumbnail-url"];

    v26 = [v3 sts_providerHostPageURL];

    v27 = [v26 absoluteString];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
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

- (id)searchResultForDict:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SFSearchResult);
  v5 = [v3 objectForKey:@"result-type"];
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

  v8 = [v3 objectForKey:@"url"];
  v9 = [NSURL URLWithString:v8];
  [v4 setUrl:v9];

  v10 = [v3 objectForKey:@"id"];
  [v4 setIdentifier:v10];

  v11 = [v3 objectForKey:@"store-identifier"];
  [v4 setStoreIdentifier:v11];

  [v4 setType:2];
  [v4 setSectionBundleIdentifier:@"com.apple.parsec.image_search.msgs-zkw"];
  v12 = [SFURLImage alloc];
  v13 = [v3 objectForKey:@"thumbnail-url"];
  v14 = [NSURL URLWithString:v13];
  v15 = [v12 initWithURL:v14];

  [v4 setThumbnail:v15];
  v16 = objc_alloc_init(SFDescriptionCardSection);
  v17 = [v3 objectForKey:@"desc-provider-name"];
  [v16 setTitle:v17];

  v18 = objc_alloc_init(SFMetaInfoCardSection);
  v19 = [v3 objectForKey:@"meta-hostpage-url"];
  v20 = [NSURL URLWithString:v19];
  [v18 setHostPageURL:v20];

  v21 = objc_alloc_init(SFCard);
  v26[0] = v16;
  v26[1] = v18;
  v22 = [NSArray arrayWithObjects:v26 count:2];
  [v21 setCardSections:v22];

  v23 = objc_alloc_init(SFPunchout);
  v24 = [v3 objectForKey:@"app-provider-name"];

  [v23 setLabel:v24];
  [v4 setPunchout:v23];
  [v4 setInlineCard:v21];

  return v4;
}

- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = v7;
      v11 = "session %@ parsec bag failed to load";
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    }
  }

  else if (v10)
  {
    v12 = 138412290;
    v13 = v7;
    v11 = "session %@ parsec bag loaded";
    goto LABEL_6;
  }
}

@end