@interface APRotatingIdentifierProvider
- (APRotatingIdentifierProvider)init;
- (id)getIdentifiersWithType:(int64_t)a3 source:(int64_t)a4 processId:(id)a5;
- (void)notificationReceived;
@end

@implementation APRotatingIdentifierProvider

- (id)getIdentifiersWithType:(int64_t)a3 source:(int64_t)a4 processId:(id)a5
{
  sub_1BB014B48();
  v9 = *(&self->super.isa + OBJC_IVAR___APRotatingIdentifierProvider_lock);
  sub_1BB014488();
  v6 = self;

  sub_1BAFD86D0(&qword_1EBC3B220, &qword_1BB019180);
  sub_1BB014698();

  type metadata accessor for RotatingIdentifier();
  v7 = sub_1BB014C68();

  return v7;
}

- (void)notificationReceived
{
  v2 = self;
  RotatingIdentifierProvider.notificationReceived()();
}

- (APRotatingIdentifierProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end