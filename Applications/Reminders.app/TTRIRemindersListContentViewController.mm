@interface TTRIRemindersListContentViewController
- (_TtC9Reminders38TTRIRemindersListContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)hoverInteraction:(id)a3 didBeginHoverAndHoldAtLocation:(CGPoint)a4 elevation:(double)a5;
- (void)hoverInteractionDidEndHoverAndHold:(id)a3;
- (void)loadView;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TTRIRemindersListContentViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v6 = *&v5[qword_10078A548];
  if (v6)
  {
    v7 = v6;
    sub_1003BBE4C();
  }

  v8.receiver = v4;
  v8.super_class = ObjectType;
  [(TTRIRemindersListContentViewController *)&v8 dealloc];
}

- (void)loadView
{
  v5 = self;
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  [(TTRIRemindersListContentViewController *)v5 setView:v2];

  v3 = [(TTRIRemindersListContentViewController *)v5 view];
  if (v3)
  {
    v4 = v3;
    [v3 setPreservesSuperviewLayoutMargins:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003C1744();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1003C308C(a3, a4);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1003C3538();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1003C3868(a3);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = self;
  v6 = [a3 nextFocusedView];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for TTRIRemindersListReminderCell();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {

      v6 = 0;
    }
  }

  v8 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell);
  *(&v5->super.super.super.isa + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell) = v6;
}

- (_TtC9Reminders38TTRIRemindersListContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hoverInteraction:(id)a3 didBeginHoverAndHoldAtLocation:(CGPoint)a4 elevation:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = self;
  sub_1003DD888(v8, x, y);
}

- (void)hoverInteractionDidEndHoverAndHold:(id)a3
{
  v3 = self;
  sub_100117CEC();
  PassthroughSubject.send(_:)();
}

@end