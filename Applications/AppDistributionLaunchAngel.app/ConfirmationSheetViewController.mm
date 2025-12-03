@interface ConfirmationSheetViewController
- (id)miniProductPagePresentingViewController;
- (void)dealloc;
- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification;
- (void)miniProductPageRequestDidFinish;
- (void)moreButtonPressed;
- (void)primaryButtonPressed;
- (void)viewDidLoad;
@end

@implementation ConfirmationSheetViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:STRestrictionsPINControllerDidFinishNotification object:0];

  v6.receiver = selfCopy;
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
  selfCopy = self;
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
  selfCopy = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = selfCopy;
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

  selfCopy = self;

  return selfCopy;
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

- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_100028234(notificationCopy);
}

@end