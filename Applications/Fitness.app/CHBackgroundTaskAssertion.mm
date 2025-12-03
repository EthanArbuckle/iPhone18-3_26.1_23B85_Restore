@interface CHBackgroundTaskAssertion
- (CHBackgroundTaskAssertion)init;
- (void)activate;
- (void)invalidate;
@end

@implementation CHBackgroundTaskAssertion

- (void)activate
{
  selfCopy = self;
  sub_1002E019C();
}

- (void)invalidate
{
  selfCopy = self;
  sub_1002E03BC();
}

- (CHBackgroundTaskAssertion)init
{
  v2 = self + OBJC_IVAR___CHBackgroundTaskAssertion_identifier;
  *v2 = 0;
  v2[8] = 1;
  *(&self->super.isa + OBJC_IVAR___CHBackgroundTaskAssertion_state) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for BackgroundTaskAssertion();
  return [(CHBackgroundTaskAssertion *)&v4 init];
}

@end