@interface ConfirmationSheetViewController
- (id)miniProductPagePresentingViewController;
- (void)dealloc;
- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)a3;
- (void)miniProductPageRequestDidFinish;
- (void)moreButtonPressed;
- (void)primaryButtonPressed;
- (void)viewDidLoad;
@end

@implementation ConfirmationSheetViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for ConfirmationSheetViewController();
  [(ConfirmationSheetViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for ConfirmationSheetViewController();
  v3 = self;
  [(ConfirmationSheetViewController *)&v4 viewDidLoad];
  sub_100023038();
  sub_1000256E8();
}

- (void)primaryButtonPressed
{
  v3 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_100007654(0, 0, v6, &unk_100066770, v10);
}

- (void)miniProductPageRequestDidFinish
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000294EC();
}

- (id)miniProductPagePresentingViewController
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;

  return v3;
}

- (void)moreButtonPressed
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_100028234(v5);
}

@end