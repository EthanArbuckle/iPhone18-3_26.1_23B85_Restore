@interface WOMirrorViewController
- (BOOL)isCompleted;
- (BOOL)showingSummaryForWorkoutUUID:(id)a3;
- (BOOL)willPresentSummaryOnEndWorkout;
- (WOMirrorViewController)initWithCoder:(id)a3;
- (WOMirrorViewController)initWithDataLinkMonitor:(id)a3 summaryViewControllerCompletion:(id)a4;
- (WOMirrorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissLiveActivityForActiveSummary;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)showNotification:(id)a3;
- (void)showTimeoutDialogWithDismissCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation WOMirrorViewController

- (WOMirrorViewController)initWithDataLinkMonitor:(id)a3 summaryViewControllerCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_100461F58;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100461990(a3, v5, v6);
  sub_1000245E0(v5);
  return v7;
}

- (WOMirrorViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___WOMirrorViewController____lazy_storage___canHostMapView) = 2;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10045F0C8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for SessionCurrentView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;

  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.currentView.getter();

  dispatch thunk of ScreenAssertionManager.evaluateScreenAssertion(currentView:)();

  (*(v6 + 8))(v8, v5);
  v10 = type metadata accessor for MirrorViewController();
  v11.receiver = v9;
  v11.super_class = v10;
  [(WOMirrorViewController *)&v11 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self;

  dispatch thunk of ScreenAssertionManager.releaseAssertion()();

  v5.receiver = v4;
  v5.super_class = type metadata accessor for MirrorViewController();
  [(WOMirrorViewController *)&v5 viewDidDisappear:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100462098;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_10045F674(a3, v6, v7);
  sub_1000245E0(v6);
}

- (void)showNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  MirrorViewMonitor.notificationCenter.getter();
  dispatch thunk of WorkoutNotificationCenter.add(_:)();
}

- (void)showTimeoutDialogWithDismissCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  *(swift_allocObject() + 16) = v4;
  v5 = self;
  MirrorViewMonitor.sessionViewModel.getter();

  dispatch thunk of SessionViewModel.mirroredEndWorkoutTimeoutAlertDismissed.setter();

  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.mirroredEndWorkoutTimeoutAlert.setter();
}

- (BOOL)willPresentSummaryOnEndWorkout
{
  v2 = self;
  v3 = sub_100460154();

  return v3 & 1;
}

- (BOOL)isCompleted
{
  v3 = type metadata accessor for SessionCurrentView();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = self;
  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.currentView.getter();

  (*(v4 + 104))(v6, enum case for SessionCurrentView.summaryView(_:), v3);
  v11 = static SessionCurrentView.== infix(_:_:)();

  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  return v11 & 1;
}

- (BOOL)showingSummaryForWorkoutUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  v9 = sub_100460C78(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)dismissLiveActivityForActiveSummary
{
  v2 = self;
  sub_1004613D4();
}

- (WOMirrorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end