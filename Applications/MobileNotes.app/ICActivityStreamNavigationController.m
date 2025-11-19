@interface ICActivityStreamNavigationController
- (ICActivityStreamCoordinating)coordinator;
- (ICActivityStreamNavigationController)initWithCoordinator:(id)a3 hasInteractiveSizing:(BOOL)a4;
- (ICActivityStreamNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (ICActivityStreamNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (ICActivityStreamNavigationController)initWithRootViewController:(id)a3;
- (double)viewModeDurationFor:(int64_t)a3;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (int64_t)viewMode;
- (void)_sheetPresentationController:(id)a3 didChangeIndexOfCurrentDetent:(int64_t)a4;
- (void)analyticsSessionWillEnd;
- (void)handleTap:(id)a3;
- (void)moveToViewMode:(int64_t)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setActivityStreamViewController:(id)a3;
- (void)setObject:(id)a3;
- (void)setSelection:(id)a3;
- (void)setSheetController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willEnterForeground;
@end

@implementation ICActivityStreamNavigationController

- (ICActivityStreamNavigationController)initWithCoordinator:(id)a3 hasInteractiveSizing:(BOOL)a4
{
  swift_unknownObjectRetain();
  v6 = sub_10001E74C(a3, a4);
  swift_unknownObjectRelease();
  return v6;
}

- (void)setObject:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_10001EF8C(a3);
}

- (void)setSelection:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001F5F4(a3);
}

- (ICActivityStreamCoordinating)coordinator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActivityStreamViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController);
  *(self + OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController) = a3;
  v3 = a3;
}

- (void)setSheetController:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICActivityStreamNavigationController_sheetController);
  *(self + OBJC_IVAR___ICActivityStreamNavigationController_sheetController) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100417E98();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100418C68(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(ICActivityStreamNavigationController *)&v6 viewDidAppear:v3];
  sub_100419564();
  LODWORD(v3) = UIAccessibilityLayoutChangedNotification;
  v5 = [v4 view];
  UIAccessibilityPostNotification(v3, v5);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100418E28();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ICActivityStreamNavigationController *)&v5 viewWillDisappear:v3];
  sub_10001F06C();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(ICActivityStreamNavigationController *)&v7 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR___ICActivityStreamNavigationController_activityStreamViewController];
  if (v5)
  {
    v6 = v5;
    sub_100193AF0(0);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1004198B4(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)willEnterForeground
{
  v3 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = self;
  Date.init()();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR___ICActivityStreamNavigationController_timeOfLastViewModeChange;
  swift_beginAccess();
  sub_10023A078(v5, v6 + v8);
  swift_endAccess();
}

- (void)analyticsSessionWillEnd
{
  v2 = self;
  sub_10001F06C();
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10041A150(v4);
}

- (int64_t)viewMode
{
  v2 = self;
  v3 = sub_10041A8C4();

  return v3;
}

- (void)moveToViewMode:(int64_t)a3
{
  v4 = self;
  sub_10041AA34(a3);
}

- (double)viewModeDurationFor:(int64_t)a3
{
  v4 = self;
  v5 = sub_10041A0C8(a3);

  return v5;
}

- (ICActivityStreamNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICActivityStreamNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICActivityStreamNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  if (*(self + OBJC_IVAR___ICActivityStreamNavigationController_hasInteractiveSizing) == 1)
  {
    return [a3 presentationStyle];
  }

  else
  {
    return 2;
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10041BA5C();
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10041BBC0(v6);

  swift_unknownObjectRelease();
}

- (void)_sheetPresentationController:(id)a3 didChangeIndexOfCurrentDetent:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10041B678(v6, a4);
}

@end