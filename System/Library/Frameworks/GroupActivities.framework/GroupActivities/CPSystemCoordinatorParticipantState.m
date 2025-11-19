@interface CPSystemCoordinatorParticipantState
- (CPSystemCoordinatorParticipantState)init;
- (CPSystemCoordinatorParticipantState)initWithCoder:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSystemCoordinatorParticipantState

- (int64_t)hash
{
  v2 = self;
  v3 = SystemCoordinatorState.ParticipantState.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SystemCoordinatorState.ParticipantState.encode(with:)(v4);
}

- (CPSystemCoordinatorParticipantState)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized SystemCoordinatorState.ParticipantState.init(coder:)(v3);

  return v4;
}

- (CPSystemCoordinatorParticipantState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end