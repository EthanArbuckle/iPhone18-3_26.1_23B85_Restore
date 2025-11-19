@interface CollectionListViewController
+ (NSString)defaultNavigationTitle;
- (CollectionListViewController)initWithAppController:(id)a3;
- (CollectionListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CollectionListViewController)initWithViewModel:(id)a3;
- (id)supportArticleURLHandler;
- (void)analyticsIncreaseCountViewForCollectionsView:(id)a3;
- (void)analyticsIncreaseCountViewForCollectionsViewDelay:(id)a3;
- (void)applicationWillEnterBackground;
- (void)cancelAnalyticsIncreaseCountViewForCollectionsViewDelay;
- (void)dealloc;
- (void)didPresentSearchController:(id)a3;
- (void)loadView;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)searchWithSearchQuery:(id)a3;
- (void)setSupportArticleURLHandler:(id)a3;
- (void)setViewModel:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CollectionListViewController

- (void)setViewModel:(id)a3
{
  v4 = *(self + OBJC_IVAR___CollectionListViewController_viewModel);
  *(self + OBJC_IVAR___CollectionListViewController_viewModel) = a3;
  v3 = a3;
}

+ (NSString)defaultNavigationTitle
{
  if (qword_1000B2B40 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)supportArticleURLHandler
{
  if (*(self + OBJC_IVAR___CollectionListViewController_supportArticleURLHandler))
  {
    v2 = *(self + OBJC_IVAR___CollectionListViewController_supportArticleURLHandler + 8);
    v5[4] = *(self + OBJC_IVAR___CollectionListViewController_supportArticleURLHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10001BAA4;
    v5[3] = &unk_1000A3628;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSupportArticleURLHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_10001E9B8;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CollectionListViewController_supportArticleURLHandler);
  v8 = *(self + OBJC_IVAR___CollectionListViewController_supportArticleURLHandler);
  v9 = *(self + OBJC_IVAR___CollectionListViewController_supportArticleURLHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  v10 = self;
  sub_10001E970(v8);
}

- (void)dealloc
{
  v2 = self;
  [(CollectionListViewController *)v2 cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v2 name:UIApplicationWillEnterForegroundNotification object:0];
  [v3 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionListViewController();
  [(TPSViewController *)&v4 dealloc];
}

- (CollectionListViewController)initWithViewModel:(id)a3
{
  v4 = a3;
  v5 = sub_10001E56C(a3);

  return v5;
}

- (void)loadView
{
  v2 = self;
  sub_10001C088();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10001C470();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CollectionListViewController();
  [(CollectionListViewController *)&v6 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
}

- (void)applicationWillEnterBackground
{
  v2 = self;
  [(CollectionListViewController *)v2 cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
  *(v2 + OBJC_IVAR___CollectionListViewController_canIncreaseViewCount) = 0;
}

- (CollectionListViewController)initWithAppController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CollectionListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)searchWithSearchQuery:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001D838(v4);
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001DED8(v4);
}

- (void)didPresentSearchController:(id)a3
{
  *(self + OBJC_IVAR___CollectionListViewController_searchActive) = 1;
  v3 = self;
  sub_10001D1E0();
}

- (void)willDismissSearchController:(id)a3
{
  *(self + OBJC_IVAR___CollectionListViewController_searchActive) = 0;
  v3 = *(self + OBJC_IVAR___CollectionListViewController_searchResultsViewModel);
  v5 = self;
  v4 = v3;
  dispatch thunk of SearchResultsViewModel.reset()();

  sub_10001D1E0();
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001E70C();
}

- (void)cancelAnalyticsIncreaseCountViewForCollectionsViewDelay
{
  v3 = objc_opt_self();
  v4 = objc_allocWithZone(TPSViewSourceProxy);
  v6 = self;
  v5 = [v4 init];
  [v3 cancelPreviousPerformRequestsWithTarget:v6 selector:"analyticsIncreaseCountViewForCollectionsView:" object:v5];
}

- (void)analyticsIncreaseCountViewForCollectionsViewDelay:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001E1F4(v4);
}

- (void)analyticsIncreaseCountViewForCollectionsView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001E360(v4);
}

@end