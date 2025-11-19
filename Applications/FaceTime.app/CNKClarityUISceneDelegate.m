@interface CNKClarityUISceneDelegate
- (CNKClarityUISceneDelegate)init;
@end

@implementation CNKClarityUISceneDelegate

- (CNKClarityUISceneDelegate)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ClarityUISceneDelegate();
  v3 = [(CNKClarityUISceneDelegate *)&v5 init];

  return v3;
}

@end