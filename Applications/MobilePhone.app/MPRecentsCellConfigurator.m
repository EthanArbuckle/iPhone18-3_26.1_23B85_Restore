@interface MPRecentsCellConfigurator
+ (UIEdgeInsets)separatorInsetsFor:(id)a3 isEditing:(BOOL)a4;
- (MPRecentsCellConfigurator)init;
- (MPRecentsCellConfigurator)initWithTableView:(id)a3 recentsController:(id)a4 featureFlags:(id)a5 tapTargets:(BOOL)a6 callReportingViewModel:(id)a7 reportFlowPresenter:(id)a8 contactsService:(id)a9 avatarViewControllerSettings:(id)a10 placeCallAction:(id)a11 removeCallsAtIndexPaths:(id)a12 presentingViewController:(id)a13;
- (id)reportSwipeActionForCall:(id)a3;
- (int64_t)configureCardController:(id)a3 presentationResultForRecentCall:(id)a4;
@end

@implementation MPRecentsCellConfigurator

+ (UIEdgeInsets)separatorInsetsFor:(id)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  v6 = objc_opt_self();

  [v6 separatorInsetForContentSizeCategory:a3 isEditing:v4];
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (MPRecentsCellConfigurator)initWithTableView:(id)a3 recentsController:(id)a4 featureFlags:(id)a5 tapTargets:(BOOL)a6 callReportingViewModel:(id)a7 reportFlowPresenter:(id)a8 contactsService:(id)a9 avatarViewControllerSettings:(id)a10 placeCallAction:(id)a11 removeCallsAtIndexPaths:(id)a12 presentingViewController:(id)a13
{
  v18 = _Block_copy(a11);
  v19 = _Block_copy(a12);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v31 = a13;
  v29 = specialized RecentsCellConfigurator.init(tableView:recentsController:featureFlags:tapTargets:callReportingViewModel:reportFlowPresenter:contactsService:avatarViewControllerSettings:placeCallAction:removeCallsAtIndexPaths:presentingViewController:)(v22, v23, v24, a6, v25, v26, v27, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CHRecentCall) -> (), v20, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v21);

  return v29;
}

- (int64_t)configureCardController:(id)a3 presentationResultForRecentCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = RecentsCellConfigurator.configure(cardController:for:)(v6, v7);

  return v9;
}

- (id)reportSwipeActionForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = RecentsCellConfigurator.reportSwipeAction(for:)(v4);

  return v6;
}

- (MPRecentsCellConfigurator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end