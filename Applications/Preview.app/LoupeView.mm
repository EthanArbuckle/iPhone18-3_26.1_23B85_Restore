@interface LoupeView
- (_TtC7Preview9LoupeView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation LoupeView

- (void)layoutSubviews
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = ObjectType;
  v4 = self;
  [(LoupeView *)&v5 layoutSubviews];
  sub_10009F518();
}

- (_TtC7Preview9LoupeView)initWithFrame:(CGRect)a3
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