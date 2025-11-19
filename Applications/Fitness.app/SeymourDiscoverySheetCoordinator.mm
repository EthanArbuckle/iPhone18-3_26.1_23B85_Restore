@interface SeymourDiscoverySheetCoordinator
- (_TtC10FitnessApp32SeymourDiscoverySheetCoordinator)init;
- (_TtC10FitnessApp32SeymourDiscoverySheetCoordinator)initWithAppContext:(id)a3 badgingProvider:(id)a4 delegate:(id)a5;
- (void)activate;
@end

@implementation SeymourDiscoverySheetCoordinator

- (_TtC10FitnessApp32SeymourDiscoverySheetCoordinator)initWithAppContext:(id)a3 badgingProvider:(id)a4 delegate:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100324BD4(v7, a4, a5);
}

- (void)activate
{
  v2 = self;
  sub_100324DBC();
}

- (_TtC10FitnessApp32SeymourDiscoverySheetCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end