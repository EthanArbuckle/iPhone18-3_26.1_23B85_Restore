@interface CollectionListViewController
+ (NSString)defaultNavigationTitle;
- (CollectionListViewController)initWithAppController:(id)controller;
- (CollectionListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CollectionListViewController)initWithViewModel:(id)model;
- (id)supportArticleURLHandler;
- (void)analyticsIncreaseCountViewForCollectionsView:(id)view;
- (void)analyticsIncreaseCountViewForCollectionsViewDelay:(id)delay;
- (void)applicationWillEnterBackground;
- (void)cancelAnalyticsIncreaseCountViewForCollectionsViewDelay;
- (void)dealloc;
- (void)didPresentSearchController:(id)controller;
- (void)loadView;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)searchWithSearchQuery:(id)query;
- (void)setSupportArticleURLHandler:(id)handler;
- (void)setViewModel:(id)model;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation CollectionListViewController

- (void)setViewModel:(id)model
{
  v4 = *(self + OBJC_IVAR___CollectionListViewController_viewModel);
  *(self + OBJC_IVAR___CollectionListViewController_viewModel) = model;
  modelCopy = model;
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

- (void)setSupportArticleURLHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10001E970(v8);
}

- (void)dealloc
{
  selfCopy = self;
  [(CollectionListViewController *)selfCopy cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver:selfCopy name:UIApplicationWillEnterForegroundNotification object:0];
  [defaultCenter removeObserver:selfCopy name:UIApplicationDidEnterBackgroundNotification object:0];

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for CollectionListViewController();
  [(TPSViewController *)&v4 dealloc];
}

- (CollectionListViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v5 = sub_10001E56C(model);

  return v5;
}

- (void)loadView
{
  selfCopy = self;
  sub_10001C088();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001C470();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for CollectionListViewController();
  [(CollectionListViewController *)&v6 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
}

- (void)applicationWillEnterBackground
{
  selfCopy = self;
  [(CollectionListViewController *)selfCopy cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
  *(selfCopy + OBJC_IVAR___CollectionListViewController_canIncreaseViewCount) = 0;
}

- (CollectionListViewController)initWithAppController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CollectionListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)searchWithSearchQuery:(id)query
{
  queryCopy = query;
  selfCopy = self;
  sub_10001D838(queryCopy);
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10001DED8(controllerCopy);
}

- (void)didPresentSearchController:(id)controller
{
  *(self + OBJC_IVAR___CollectionListViewController_searchActive) = 1;
  selfCopy = self;
  sub_10001D1E0();
}

- (void)willDismissSearchController:(id)controller
{
  *(self + OBJC_IVAR___CollectionListViewController_searchActive) = 0;
  v3 = *(self + OBJC_IVAR___CollectionListViewController_searchResultsViewModel);
  selfCopy = self;
  v4 = v3;
  dispatch thunk of SearchResultsViewModel.reset()();

  sub_10001D1E0();
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_10001E70C();
}

- (void)cancelAnalyticsIncreaseCountViewForCollectionsViewDelay
{
  v3 = objc_opt_self();
  v4 = objc_allocWithZone(TPSViewSourceProxy);
  selfCopy = self;
  v5 = [v4 init];
  [v3 cancelPreviousPerformRequestsWithTarget:selfCopy selector:"analyticsIncreaseCountViewForCollectionsView:" object:v5];
}

- (void)analyticsIncreaseCountViewForCollectionsViewDelay:(id)delay
{
  delayCopy = delay;
  selfCopy = self;
  sub_10001E1F4(delayCopy);
}

- (void)analyticsIncreaseCountViewForCollectionsView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10001E360(viewCopy);
}

@end