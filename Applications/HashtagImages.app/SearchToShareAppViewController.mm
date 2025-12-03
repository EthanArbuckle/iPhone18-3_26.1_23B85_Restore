@interface SearchToShareAppViewController
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
- (void)requestExpandedPresentationStyleForBrowser:(id)browser completion:(id)completion;
- (void)saveRecents;
- (void)searchBrowserRootViewControllerDidSelectCancel:(id)cancel;
- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error;
- (void)updateConstraintsForSearchBrowser;
- (void)updateConstraintsForZKWBrowser;
- (void)updateRecentResults:(id)results;
- (void)viewDidLayoutSubviews;
@end

@implementation SearchToShareAppViewController

- (void)updateConstraintsForZKWBrowser
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  view = [(STSPicker *)self->_zkwPicker view];
  topAnchor = [view topAnchor];
  view2 = [(SearchToShareAppViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];

  view3 = [(STSPicker *)self->_zkwPicker view];
  bottomAnchor = [view3 bottomAnchor];
  view4 = [(SearchToShareAppViewController *)self view];
  window = [view4 window];
  bottomAnchor2 = [window bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  view5 = [(STSPicker *)self->_zkwPicker view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(SearchToShareAppViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  view7 = [(STSPicker *)self->_zkwPicker view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [(SearchToShareAppViewController *)self view];
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
  view2 = [(SearchToShareAppViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];

  view3 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  bottomAnchor = [view3 bottomAnchor];
  view4 = [(SearchToShareAppViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  view5 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(SearchToShareAppViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  view7 = [(STSSearchBrowserRootViewController *)self->_searchBrowserRootViewController view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [(SearchToShareAppViewController *)self view];
  trailingAnchor2 = [view8 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

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
  pickerView = [(STSPicker *)self->_zkwPicker pickerView];
  view = [(SearchToShareAppViewController *)self view];
  [view layoutMargins];
  [pickerView setTopInset:?];

  pickerView2 = [(STSPicker *)self->_zkwPicker pickerView];
  view2 = [(SearchToShareAppViewController *)self view];
  [view2 layoutMargins];
  [pickerView2 setBottomInset:v7];

  searchBrowserRootViewController = self->_searchBrowserRootViewController;
  view3 = [(SearchToShareAppViewController *)self view];
  [view3 layoutMargins];
  [(STSSearchBrowserRootViewController *)searchBrowserRootViewController setTopInset:?];

  v10 = self->_searchBrowserRootViewController;
  view4 = [(SearchToShareAppViewController *)self view];
  [view4 layoutMargins];
  [(STSSearchBrowserRootViewController *)v10 setBottomInset:v12];
}

- (void)browser:(id)browser didSelectProviderLink:(id)link
{
  if (link)
  {
    linkCopy = link;
    extensionContext = [(SearchToShareAppViewController *)self extensionContext];
    sts_providerHostPageURL = [linkCopy sts_providerHostPageURL];

    [extensionContext openURL:sts_providerHostPageURL completionHandler:0];
  }
}

- (void)browser:(id)browser didSelectResult:(id)result withPayload:(id)payload
{
  resultCopy = result;
  payloadCopy = payload;
  v9 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001810;
  block[3] = &unk_100008258;
  v10 = payloadCopy;
  v13 = v10;
  dispatch_async(v9, block);
  imageURL = [v10 imageURL];

  if (imageURL)
  {
    [(SearchToShareAppViewController *)self _addResultToRecents:resultCopy];
    self->_updateRecents = 1;
  }
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
  v9[2] = sub_100001A48;
  v9[3] = &unk_100008258;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001A50;
  v8[3] = &unk_100008258;
  [(SearchToShareAppViewController *)self _transitionContentFromViewController:zkwPicker toViewController:searchBrowserRootViewController animations:v9 completion:v8];
}

- (void)browser:(id)browser didSearchFor:(id)for
{
  forCopy = for;
  [(STSPicker *)self->_zkwPicker cancelImageDownloads];
  zkwPicker = self->_zkwPicker;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001BA0;
  v8[3] = &unk_100008280;
  v8[4] = self;
  v9 = forCopy;
  v7 = forCopy;
  [(SearchToShareAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v8];
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
  v10[2] = sub_100001E28;
  v10[3] = &unk_100008280;
  v10[4] = self;
  v11 = resultCopy;
  v9 = resultCopy;
  [(SearchToShareAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v10];
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
  v10[2] = sub_100002074;
  v10[3] = &unk_100008280;
  v10[4] = self;
  v11 = suggestionCopy;
  v9 = suggestionCopy;
  [(SearchToShareAppViewController *)self requestExpandedPresentationStyleForBrowser:zkwPicker completion:v10];
}

- (void)requestExpandedPresentationStyleForBrowser:(id)browser completion:(id)completion
{
  completionCopy = completion;
  if ([(SearchToShareAppViewController *)self presentationStyle]!= 1)
  {
    [(SearchToShareAppViewController *)self setRequestExpandedCompletion:completionCopy];
  }

  if (completionCopy)
  {
    completionCopy[2]();
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

    extensionContext = [(SearchToShareAppViewController *)self extensionContext];
    [extensionContext openURL:v10 completionHandler:0];
  }

  else
  {
    text = [NSURL URLWithString:@"https://www.bing.com/images/search"];
    v13 = +[STSFeedbackReporter sharedInstance];
    [v13 didEngageProviderLogo];

    extensionContext2 = [(SearchToShareAppViewController *)self extensionContext];
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

- (void)updateRecentResults:(id)results
{
  v4 = [results mutableCopy];
  recentResults = self->_recentResults;
  self->_recentResults = v4;

  [(SearchToShareAppViewController *)self saveRecents];
}

- (void)_transitionContentFromViewController:(id)controller toViewController:(id)viewController animations:(id)animations completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  animationsCopy = animations;
  completionCopy = completion;
  [(SearchToShareAppViewController *)self addChildViewController:viewControllerCopy];
  if (controllerCopy)
  {
    parentViewController = [controllerCopy parentViewController];

    if (!parentViewController)
    {
      [(SearchToShareAppViewController *)self addChildViewController:controllerCopy];
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
    v18[2] = sub_100002914;
    v18[3] = &unk_1000082D0;
    v19 = controllerCopy;
    selfCopy = self;
    v21 = viewControllerCopy;
    v22 = completionCopy;
    [(SearchToShareAppViewController *)self transitionFromViewController:v19 toViewController:v21 duration:5242880 options:animationsCopy animations:v18 completion:v15];
  }

  else
  {
    view = [(SearchToShareAppViewController *)self view];
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

  pickerView = [(STSPicker *)self->_zkwPicker pickerView];
  [pickerView setHeaderView:self->_zkwHeaderView];

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
    v12[2] = sub_100002FD4;
    v12[3] = &unk_100008320;
    v8 = recentsCopy;
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
  selfCopy = self;
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
      v8 = &stru_100008428;
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
      v11 = &stru_100008428;
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
      v14 = &stru_100008428;
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
      v17 = &stru_100008428;
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
      v20 = &stru_100008428;
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
      v25 = &stru_100008428;
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