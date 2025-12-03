@interface BKPersonalizationEventProcessor
- (BKPersonalizationEventProcessor)init;
- (BKPersonalizationEventProcessor)initWithDonor:(id)donor;
@end

@implementation BKPersonalizationEventProcessor

- (BKPersonalizationEventProcessor)initWithDonor:(id)donor
{
  *(&self->super.isa + OBJC_IVAR___BKPersonalizationEventProcessor_donor) = donor;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PersonalizationEventProcessor();
  donorCopy = donor;
  return [(BKPersonalizationEventProcessor *)&v6 init];
}

- (BKPersonalizationEventProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end