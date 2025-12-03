@interface SeymourDiscoverySheetCoordinator
- (_TtC10FitnessApp32SeymourDiscoverySheetCoordinator)init;
- (_TtC10FitnessApp32SeymourDiscoverySheetCoordinator)initWithAppContext:(id)context badgingProvider:(id)provider delegate:(id)delegate;
- (void)activate;
@end

@implementation SeymourDiscoverySheetCoordinator

- (_TtC10FitnessApp32SeymourDiscoverySheetCoordinator)initWithAppContext:(id)context badgingProvider:(id)provider delegate:(id)delegate
{
  contextCopy = context;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100324BD4(contextCopy, provider, delegate);
}

- (void)activate
{
  selfCopy = self;
  sub_100324DBC();
}

- (_TtC10FitnessApp32SeymourDiscoverySheetCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end