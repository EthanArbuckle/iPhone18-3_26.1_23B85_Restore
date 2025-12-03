@interface CardAuxiliaryNavigationBarViewModel
- (_TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel)init;
- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event;
@end

@implementation CardAuxiliaryNavigationBarViewModel

- (_TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event
{
  triggerCopy = trigger;
  selfCopy = self;
  sub_13FC60(triggerCopy, state);
}

@end