@interface BKPersonalizationEventProcessor
- (BKPersonalizationEventProcessor)init;
- (BKPersonalizationEventProcessor)initWithDonor:(id)a3;
@end

@implementation BKPersonalizationEventProcessor

- (BKPersonalizationEventProcessor)initWithDonor:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___BKPersonalizationEventProcessor_donor) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PersonalizationEventProcessor();
  v4 = a3;
  return [(BKPersonalizationEventProcessor *)&v6 init];
}

- (BKPersonalizationEventProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end