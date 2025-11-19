@interface SearchToShareAppViewController
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
- (void)requestExpandedPresentationStyleForBrowser:(id)a3 completion:(id)a4;
- (void)saveRecents;
- (void)searchBrowserRootViewControllerDidSelectCancel:(id)a3;
- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5;
- (void)updateConstraintsForSearchBrowser;
- (void)updateConstraintsForZKWBrowser;
- (void)updateRecentResults:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SearchToShareAppViewController

- (void)updateConstraintsForZKWBrowser
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v3 = [(STSPicker *)self->_zkwPicker view];
  v4 = [v3 topAnchor];
  v5 = [(SearchToShareAppViewController *)self view];
  v6 = [v5 topAnchor];
  v23 = [v4 constraintEqualToAnchor:v6];

  v7 = [(STSPicker *)self->_zkwPicker view];
  v8 = [v7 bottomAnchor];
  v9 = [(SearchToShareAppViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 bottomAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];

  v13 = [(STSPicker *)self->_zkwPicker view];
  v14 = [v13 leadingAnchor];
  v15 = [(SearchToShareAppViewController *)self view];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];

  v18 = [(STSPicker *)self->_zkwPicker view];
  v19 = [v18 trailingAnchor];
  v20 = [(SearchToShareAppViewController *)self view];
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
  v5 = [(SearchToShareAppViewController *)self view];
  v6 = [v5 topAnchor];
  v22 = [v4 constraintEqualToAnchor:v6];

  v7 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  v8 = [v7 bottomAnchor];
  v9 = [(SearchToShareAppViewController *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  v12 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  v13 = [v12 leadingAnchor];
  v14 = [(SearchToShareAppViewController *)self view];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];

  v17 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  v18 = [v17 trailingAnchor];
  v19 = [(SearchToShareAppViewController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];

  [(NSMutableArray *)self->_constraints addObject:v22];
  [(NSMutableArray *)self->_constraints addObject:v11];
  [(NSMutableArray *)self->_constraints addObject:v16];
  [(NSMutableArray *)self->_constraints addObject:v21];
  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = SearchToShareAppViewController;
  [(SearchToShareAppViewController *)&v5 awakeFromNib];
  v3 = objc_alloc_init(NSMutableArray);
  recentResults = self->_recentResults;
  self->_recentResults = v3;

  self->_updateRecents = 0;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SearchToShareAppViewController;
  [(SearchToShareAppViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(STSPicker *)self->_zkwPicker pickerView];
  v4 = [(SearchToShareAppViewController *)self view];
  [v4 layoutMargins];
  [v3 setTopInset:?];

  v5 = [(STSPicker *)self->_zkwPicker pickerView];
  v6 = [(SearchToShareAppViewController *)self view];
  [v6 layoutMargins];
  [v5 setBottomInset:v7];

  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  v9 = [(SearchToShareAppViewController *)self view];
  [v9 layoutMargins];
  [(STSSearchBrowserRootViewController *)searchBrowserRootViewController setTopInset:?];

  v10 = self->_searchBrowserRootViewController;
  v11 = [(SearchToShareAppViewController *)self view];
  [v11 layoutMargins];
  [(STSSearchBrowserRootViewController *)v10 setBottomInset:v12];
}

- (void)browser:(id)a3 didSelectProviderLink:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v7 = [(SearchToShareAppViewController *)self extensionContext];
    v6 = [v5 sts_providerHostPageURL];

    [v7 openURL:v6 completionHandler:0];
  }
}

- (void)browser:(id)a3 didSelectResult:(id)a4 withPayload:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001810;
  block[3] = &unk_100008258;
  v10 = v8;
  v13 = v10;
  dispatch_async(v9, block);
  v11 = [v10 imageURL];

  if (v11)
  {
    [(SearchToShareAppViewController *)self _addResultToRecents:v7];
    self->_updateRecents = 1;
  }
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
  v9[2] = sub_100001A48;
  v9[3] = &unk_100008258;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001A50;
  v8[3] = &unk_100008258;
  [(SearchToShareAppViewController *)self _transitionContentFromViewController:zkwPicker toViewController:searchBrowserRootViewController animations:v9 completion:v8];
}

- (void)browser:(id)a3 didSearchFor:(id)a4
{
  v5 = a4;
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  zkwPicker = self->_zkwPicker;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001BA0;
  v8[3] = &unk_100008280;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(SearchToShareAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v8];
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
  v10[2] = sub_100001E28;
  v10[3] = &unk_100008280;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [(SearchToShareAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v10];
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
  v10[2] = sub_100002074;
  v10[3] = &unk_100008280;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [(SearchToShareAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v10];
}

- (void)requestExpandedPresentationStyleForBrowser:(id)a3 completion:(id)a4
{
  v5 = a4;
  if ([(SearchToShareAppViewController *)self presentationStyle]!= 1)
  {
    [(SearchToShareAppViewController *)self setRequestExpandedCompletion:v5];
  }

  if (v5)
  {
    v5[2]();
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

    v12 = [(SearchToShareAppViewController *)self extensionContext];
    [v12 openURL:v10 completionHandler:0];
  }

  else
  {
    v14 = [NSURL URLWithString:@"https://www.bing.com/images/search"];
    v13 = +[STSFeedbackReporter sharedInstance];
    [v13 didEngageProviderLogo];

    v8 = [(SearchToShareAppViewController *)self extensionContext];
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
    v11[2] = sub_100002594;
    v11[3] = &unk_1000082A8;
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
    v10[2] = sub_1000026A8;
    v10[3] = &unk_100008258;
    v10[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000026B0;
    v9[3] = &unk_100008258;
    [(SearchToShareAppViewController *)self _transitionContentFromViewController:searchBrowserRootViewController toViewController:zkwPicker animations:v10 completion:v9];
  }

  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController setPresentationStyle:0];
}

- (void)updateRecentResults:(id)a3
{
  v4 = [a3 mutableCopy];
  recentResults = self->_recentResults;
  self->_recentResults = v4;

  [(SearchToShareAppViewController *)self saveRecents];
}

- (void)_transitionContentFromViewController:(id)a3 toViewController:(id)a4 animations:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(SearchToShareAppViewController *)self addChildViewController:v11];
  if (v10)
  {
    v14 = [v10 parentViewController];

    if (!v14)
    {
      [(SearchToShareAppViewController *)self addChildViewController:v10];
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
    v18[2] = sub_100002914;
    v18[3] = &unk_1000082D0;
    v19 = v10;
    v20 = self;
    v21 = v11;
    v22 = v13;
    [(SearchToShareAppViewController *)self transitionFromViewController:v19 toViewController:v21 duration:5242880 options:v12 animations:v18 completion:v15];
  }

  else
  {
    v16 = [(SearchToShareAppViewController *)self view];
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
  v4 = [PARSession sessionWithConfiguration:v3 delegate:self startImmediately:1];
  v5 = objc_alloc_init(STSSearchModel);
  objc_storeStrong(&self->_searchBrowserSearchModel, v5);
  [v5 setParsecSession:v4];
  v6 = [[STSSearchBrowserRootViewController alloc] initWithSearchModel:v5];
  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  self->_searchBrowserRootViewController = v6;

  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController setSelectionDelegate:self];
  [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController setPickerSelectionDelegate:self];
  v8 = objc_alloc_init(STSSearchModel);
  [v8 setParsecSession:v4];
  objc_storeStrong(&self->_zkwSearchModel, v8);
  [(STSSearchModel *)self->_zkwSearchModel setRecentsDelegate:self];
  v9 = [[STSPicker alloc] initWithSearchModel:v8 showSuggestions:1];
  zkwPicker = self->_zkwPicker;
  self->_zkwPicker = v9;

  [(STSPicker *)self->_zkwPicker setSelectionDelegate:self];
  v11 = objc_alloc_init(STSZKWBrowserHeaderView);
  zkwHeaderView = self->_zkwHeaderView;
  self->_zkwHeaderView = v11;

  v13 = [(STSPicker *)self->_zkwPicker pickerView];
  [v13 setHeaderView:self->_zkwHeaderView];

  [(STSZKWBrowserHeaderView *)self->_zkwHeaderView setDelegate:self->_zkwPicker];
  v14 = +[STSFeedbackReporter sharedInstance];
  [v14 setParsecSession:v4];

  v15 = +[NSMutableArray array];
  constraints = self->_constraints;
  self->_constraints = v15;

  v17 = self->_zkwPicker;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100002D6C;
  v27[3] = &unk_100008258;
  v27[4] = self;
  [(SearchToShareAppViewController *)self _transitionContentFromViewController:0 toViewController:v17 animations:v27 completion:0];
  v18 = +[NSUserDefaults standardUserDefaults];
  [v18 setObject:0 forKey:@"STSRecentResults"];
  v19 = [v18 objectForKey:@"STSRecentResults1"];
  v20 = objc_alloc_init(NSMutableArray);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100002D74;
  v25[3] = &unk_1000082F8;
  v25[4] = self;
  v21 = v20;
  v26 = v21;
  [v19 enumerateObjectsUsingBlock:v25];
  objc_storeStrong(&self->_recentResults, v20);
  recentResults = self->_recentResults;
  if (!recentResults)
  {
    v23 = objc_opt_new();
    v24 = self->_recentResults;
    self->_recentResults = v23;

    recentResults = self->_recentResults;
  }

  [(STSSearchModel *)self->_zkwSearchModel setRecentResults:recentResults];

  [(SearchToShareAppViewController *)self updateConstraintsForZKWBrowser];
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
    v12[2] = sub_100002FD4;
    v12[3] = &unk_100008320;
    v8 = v4;
    v13 = v8;
    v9 = [(NSMutableArray *)recentResults indexOfObjectPassingTest:v12];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 setType:2];
      [v8 setFbr:&stru_100008428];
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
      [v11 setFbr:&stru_100008428];
      [v11 setSectionBundleIdentifier:@"com.apple.parsec.image_search.msgs-zkw"];
      [(NSMutableArray *)self->_recentResults removeObjectAtIndex:v10];
      [(NSMutableArray *)self->_recentResults insertObject:v11 atIndex:0];
    }

    [(SearchToShareAppViewController *)self saveRecents];
  }
}

- (void)saveRecents
{
  v3 = objc_alloc_init(NSMutableArray);
  recentResults = self->_recentResults;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000314C;
  v11 = &unk_100008348;
  v12 = self;
  v5 = v3;
  v13 = v5;
  [(NSMutableArray *)recentResults enumerateObjectsUsingBlock:&v8];
  if ([v5 count])
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v5 copy];
    [v6 setObject:v7 forKey:@"STSRecentResults1"];

    [v6 synchronize];
  }
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
      v8 = &stru_100008428;
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
      v11 = &stru_100008428;
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
      v14 = &stru_100008428;
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
      v17 = &stru_100008428;
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
      v20 = &stru_100008428;
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
      v25 = &stru_100008428;
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
      v29 = &stru_100008428;
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