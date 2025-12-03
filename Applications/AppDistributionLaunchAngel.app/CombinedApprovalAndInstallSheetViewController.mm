@interface CombinedApprovalAndInstallSheetViewController
- (CGSize)preferredContentSize;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)cancelPressed;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation CombinedApprovalAndInstallSheetViewController

- (CGSize)preferredContentSize
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = 624.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  v13 = sub_100040CCC(itemCopy, actionCopy);

  return v13;
}

- (void)cancelPressed
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
  sub_100007954(0, 0, v6, &unk_100067240, v10);
}

@end