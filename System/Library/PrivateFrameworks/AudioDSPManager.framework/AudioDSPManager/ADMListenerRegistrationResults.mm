@interface ADMListenerRegistrationResults
- (ADMListenerRegistrationResults)init;
- (NSString)error;
- (int64_t)getListenerKey;
@end

@implementation ADMListenerRegistrationResults

- (NSString)error
{
  selfCopy = self;
  sub_223B60CD4();

  v3 = sub_223BF453C();

  return v3;
}

- (int64_t)getListenerKey
{
  if (self->state[OBJC_IVAR___ADMListenerRegistrationResults_state + 8] == 1)
  {
    return *(&self->super.isa + OBJC_IVAR___ADMListenerRegistrationResults_state);
  }

  else
  {
    return 0;
  }
}

- (ADMListenerRegistrationResults)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end