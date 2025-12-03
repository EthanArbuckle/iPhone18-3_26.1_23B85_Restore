@interface TTRIRemindersListContentViewController
- (_TtC9Reminders38TTRIRemindersListContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)hoverInteraction:(id)interaction didBeginHoverAndHoldAtLocation:(CGPoint)location elevation:(double)elevation;
- (void)hoverInteractionDidEndHoverAndHold:(id)hold;
- (void)loadView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TTRIRemindersListContentViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v6 = *&v5[qword_10078A548];
  if (v6)
  {
    v7 = v6;
    sub_1003BBE4C();
  }

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(TTRIRemindersListContentViewController *)&v8 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  [(TTRIRemindersListContentViewController *)selfCopy setView:v2];

  view = [(TTRIRemindersListContentViewController *)selfCopy view];
  if (view)
  {
    v4 = view;
    [view setPreservesSuperviewLayoutMargins:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003C1744();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_1003C308C(editing, animated);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1003C3538();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003C3868(disappear);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  nextFocusedView = [context nextFocusedView];
  if (nextFocusedView)
  {
    v7 = nextFocusedView;
    type metadata accessor for TTRIRemindersListReminderCell();
    nextFocusedView = swift_dynamicCastClass();
    if (!nextFocusedView)
    {

      nextFocusedView = 0;
    }
  }

  v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell) = nextFocusedView;
}

- (_TtC9Reminders38TTRIRemindersListContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hoverInteraction:(id)interaction didBeginHoverAndHoldAtLocation:(CGPoint)location elevation:(double)elevation
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  sub_1003DD888(interactionCopy, x, y);
}

- (void)hoverInteractionDidEndHoverAndHold:(id)hold
{
  selfCopy = self;
  sub_100117CEC();
  PassthroughSubject.send(_:)();
}

@end