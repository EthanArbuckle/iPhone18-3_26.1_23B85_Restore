@interface ISComponentGroup
- (ISComponentGroup)init;
- (ISComponentGroup)initWithEventsBridge:(id)bridge;
- (ISComponentIdentifier)componentIdentifier;
- (NSArray)events;
@end

@implementation ISComponentGroup

- (ISComponentGroup)initWithEventsBridge:(id)bridge
{
  sub_23C5AE59C();
  *(&self->super.isa + OBJC_IVAR___ISComponentGroup_eventsInternal) = sub_23C8718A4();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ComponentGroupBridge();
  return [(ISComponentGroup *)&v5 init];
}

- (NSArray)events
{
  v2 = *(&self->super.isa + OBJC_IVAR___ISComponentGroup_eventsInternal);
  sub_23C5AE59C();

  v3 = sub_23C871894();

  return v3;
}

- (ISComponentIdentifier)componentIdentifier
{
  selfCopy = self;
  sub_23C5AE33C();
  v4 = v3;

  return v4;
}

- (ISComponentGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end