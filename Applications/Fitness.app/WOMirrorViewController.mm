@interface WOMirrorViewController
- (BOOL)isCompleted;
- (BOOL)showingSummaryForWorkoutUUID:(id)d;
- (BOOL)willPresentSummaryOnEndWorkout;
- (WOMirrorViewController)initWithCoder:(id)coder;
- (WOMirrorViewController)initWithDataLinkMonitor:(id)monitor summaryViewControllerCompletion:(id)completion;
- (WOMirrorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissLiveActivityForActiveSummary;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)showNotification:(id)notification;
- (void)showTimeoutDialogWithDismissCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation WOMirrorViewController

- (WOMirrorViewController)initWithDataLinkMonitor:(id)monitor summaryViewControllerCompletion:(id)completion
{
  v5 = _Block_copy(completion);
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

  v7 = sub_100461990(monitor, v5, v6);
  sub_1000245E0(v5);
  return v7;
}

- (WOMirrorViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___WOMirrorViewController____lazy_storage___canHostMapView) = 2;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10045F0C8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = type metadata accessor for SessionCurrentView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;

  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.currentView.getter();

  dispatch thunk of ScreenAssertionManager.evaluateScreenAssertion(currentView:)();

  (*(v6 + 8))(v8, v5);
  v10 = type metadata accessor for MirrorViewController();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(WOMirrorViewController *)&v11 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;

  dispatch thunk of ScreenAssertionManager.releaseAssertion()();

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for MirrorViewController();
  [(WOMirrorViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_10045F674(animated, v6, v7);
  sub_1000245E0(v6);
}

- (void)showNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  MirrorViewMonitor.notificationCenter.getter();
  dispatch thunk of WorkoutNotificationCenter.add(_:)();
}

- (void)showTimeoutDialogWithDismissCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v4;
  selfCopy = self;
  MirrorViewMonitor.sessionViewModel.getter();

  dispatch thunk of SessionViewModel.mirroredEndWorkoutTimeoutAlertDismissed.setter();

  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.mirroredEndWorkoutTimeoutAlert.setter();
}

- (BOOL)willPresentSummaryOnEndWorkout
{
  selfCopy = self;
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
  selfCopy = self;
  MirrorViewMonitor.sessionViewModel.getter();
  dispatch thunk of SessionViewModel.currentView.getter();

  (*(v4 + 104))(v6, enum case for SessionCurrentView.summaryView(_:), v3);
  v11 = static SessionCurrentView.== infix(_:_:)();

  v12 = *(v4 + 8);
  v12(v6, v3);
  v12(v9, v3);
  return v11 & 1;
}

- (BOOL)showingSummaryForWorkoutUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_100460C78(v7);

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)dismissLiveActivityForActiveSummary
{
  selfCopy = self;
  sub_1004613D4();
}

- (WOMirrorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end