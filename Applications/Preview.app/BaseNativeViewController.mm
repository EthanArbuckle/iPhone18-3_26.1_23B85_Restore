@interface BaseNativeViewController
- (_TtC7Preview24BaseNativeViewController)init;
- (_TtC7Preview24BaseNativeViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation BaseNativeViewController

- (_TtC7Preview24BaseNativeViewController)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BaseNativeViewController();
  v3 = [(BaseNativeViewController *)&v5 initWithNibName:0 bundle:0];

  return v3;
}

- (_TtC7Preview24BaseNativeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end