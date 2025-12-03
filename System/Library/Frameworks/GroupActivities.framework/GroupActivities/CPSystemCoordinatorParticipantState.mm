@interface CPSystemCoordinatorParticipantState
- (CPSystemCoordinatorParticipantState)init;
- (CPSystemCoordinatorParticipantState)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSystemCoordinatorParticipantState

- (int64_t)hash
{
  selfCopy = self;
  v3 = SystemCoordinatorState.ParticipantState.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SystemCoordinatorState.ParticipantState.encode(with:)(coderCopy);
}

- (CPSystemCoordinatorParticipantState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized SystemCoordinatorState.ParticipantState.init(coder:)(coderCopy);

  return v4;
}

- (CPSystemCoordinatorParticipantState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end