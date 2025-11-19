@interface ScrollPocketBarInteraction
- (UIView)view;
- (_TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction)init;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation ScrollPocketBarInteraction

- (UIView)view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized ScrollPocketBarInteraction.willMove(to:)();
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  ScrollPocketBarInteraction.didMove(to:)(a3);
}

- (_TtC7SwiftUIP33_2144E363A5C573328950F48844B228C426ScrollPocketBarInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end