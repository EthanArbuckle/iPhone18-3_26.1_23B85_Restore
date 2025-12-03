@interface ICActivityStreamNavigationController
- (ICActivityStreamCoordinating)coordinator;
- (ICActivityStreamNavigationController)initWithCoordinator:(id)coordinator hasInteractiveSizing:(BOOL)sizing;
- (ICActivityStreamNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (ICActivityStreamNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (ICActivityStreamNavigationController)initWithRootViewController:(id)controller;
- (double)viewModeDurationFor:(int64_t)for;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (int64_t)viewMode;
- (void)_sheetPresentationController:(id)controller didChangeIndexOfCurrentDetent:(int64_t)detent;
- (void)analyticsSessionWillEnd;
- (void)handleTap:(id)tap;
- (void)moveToViewMode:(int64_t)mode;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setActivityStreamViewController:(id)controller;
- (void)setObject:(id)object;
- (void)setSelection:(id)selection;
- (void)setSheetController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willEnterForeground;
@end

@implementation ICActivityStreamNavigationController

- (ICActivityStreamNavigationController)initWithCoordinator:(id)coordinator hasInteractiveSizing:(BOOL)sizing
{
  swift_unknownObjectRetain();
  v6 = sub_10001E74C(coordinator, sizing);
  swift_unknownObjectRelease();
  return v6;
}

- (void)setObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  sub_10001EF8C(object);
}

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_10001F5F4(selection);
}

- (ICActivityStreamCoordinating)coordinator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActivityStreamViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
  *(self + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController) = controller;
  controllerCopy = controller;
}

- (void)setSheetController:(id)controller
{
  v4 = *(self + OBJC_IVAR___ICActivityStreamNavigationController_sheetController);
  *(self + OBJC_IVAR___ICActivityStreamNavigationController_sheetController) = controller;
  controllerCopy = controller;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100417E98();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100418C68(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ICActivityStreamNavigationController *)&v6 viewDidAppear:appearCopy];
  sub_100419564();
  LODWORD(appearCopy) = UIAccessibilityLayoutChangedNotification;
  view = [v4 view];
  UIAccessibilityPostNotification(appearCopy, view);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100418E28();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ICActivityStreamNavigationController *)&v5 viewWillDisappear:disappearCopy];
  sub_10001F06C();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(ICActivityStreamNavigationController *)&v7 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
  if (v5)
  {
    v6 = v5;
    sub_100193AF0(0);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1004198B4(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)willEnterForeground
{
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  selfCopy = self;
  Date.init()();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR___ICActivityStreamNavigationController_timeOfLastViewModeChange;
  swift_beginAccess();
  sub_10023A078(v5, selfCopy + v8);
  swift_endAccess();
}

- (void)analyticsSessionWillEnd
{
  selfCopy = self;
  sub_10001F06C();
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_10041A150(tapCopy);
}

- (int64_t)viewMode
{
  selfCopy = self;
  v3 = sub_10041A8C4();

  return v3;
}

- (void)moveToViewMode:(int64_t)mode
{
  selfCopy = self;
  sub_10041AA34(mode);
}

- (double)viewModeDurationFor:(int64_t)for
{
  selfCopy = self;
  v5 = sub_10041A0C8(for);

  return v5;
}

- (ICActivityStreamNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICActivityStreamNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICActivityStreamNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if (*(self + OBJC_IVAR___ICActivityStreamNavigationController_hasInteractiveSizing) == 1)
  {
    return [controller presentationStyle];
  }

  else
  {
    return 2;
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_10041BA5C();
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10041BBC0(controllerCopy);

  swift_unknownObjectRelease();
}

- (void)_sheetPresentationController:(id)controller didChangeIndexOfCurrentDetent:(int64_t)detent
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10041B678(controllerCopy, detent);
}

@end