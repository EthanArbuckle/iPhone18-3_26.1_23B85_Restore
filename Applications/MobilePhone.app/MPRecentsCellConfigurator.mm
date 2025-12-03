@interface MPRecentsCellConfigurator
+ (UIEdgeInsets)separatorInsetsFor:(id)for isEditing:(BOOL)editing;
- (MPRecentsCellConfigurator)init;
- (MPRecentsCellConfigurator)initWithTableView:(id)view recentsController:(id)controller featureFlags:(id)flags tapTargets:(BOOL)targets callReportingViewModel:(id)model reportFlowPresenter:(id)presenter contactsService:(id)service avatarViewControllerSettings:(id)self0 placeCallAction:(id)self1 removeCallsAtIndexPaths:(id)self2 presentingViewController:(id)self3;
- (id)reportSwipeActionForCall:(id)call;
- (int64_t)configureCardController:(id)controller presentationResultForRecentCall:(id)call;
@end

@implementation MPRecentsCellConfigurator

+ (UIEdgeInsets)separatorInsetsFor:(id)for isEditing:(BOOL)editing
{
  editingCopy = editing;
  v6 = objc_opt_self();

  [v6 separatorInsetForContentSizeCategory:for isEditing:editingCopy];
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (MPRecentsCellConfigurator)initWithTableView:(id)view recentsController:(id)controller featureFlags:(id)flags tapTargets:(BOOL)targets callReportingViewModel:(id)model reportFlowPresenter:(id)presenter contactsService:(id)service avatarViewControllerSettings:(id)self0 placeCallAction:(id)self1 removeCallsAtIndexPaths:(id)self2 presentingViewController:(id)self3
{
  v18 = _Block_copy(action);
  v19 = _Block_copy(paths);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  viewCopy = view;
  controllerCopy = controller;
  flagsCopy = flags;
  modelCopy = model;
  presenterCopy = presenter;
  serviceCopy = service;
  settingsCopy = settings;
  viewControllerCopy = viewController;
  v29 = specialized RecentsCellConfigurator.init(tableView:recentsController:featureFlags:tapTargets:callReportingViewModel:reportFlowPresenter:contactsService:avatarViewControllerSettings:placeCallAction:removeCallsAtIndexPaths:presentingViewController:)(viewCopy, controllerCopy, flagsCopy, targets, modelCopy, presenterCopy, serviceCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CHRecentCall) -> (), v20, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v21);

  return v29;
}

- (int64_t)configureCardController:(id)controller presentationResultForRecentCall:(id)call
{
  controllerCopy = controller;
  callCopy = call;
  selfCopy = self;
  v9 = RecentsCellConfigurator.configure(cardController:for:)(controllerCopy, callCopy);

  return v9;
}

- (id)reportSwipeActionForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  v6 = RecentsCellConfigurator.reportSwipeAction(for:)(callCopy);

  return v6;
}

- (MPRecentsCellConfigurator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end