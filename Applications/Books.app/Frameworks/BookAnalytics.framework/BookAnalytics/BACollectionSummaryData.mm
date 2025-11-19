@interface BACollectionSummaryData
- (BACollectionSummaryData)init;
- (BACollectionSummaryData)initWithCollectionSummary:(id)a3;
@end

@implementation BACollectionSummaryData

- (BACollectionSummaryData)initWithCollectionSummary:(id)a3
{
  type metadata accessor for BridgedCollectionIDData();
  *(&self->super.isa + OBJC_IVAR___BACollectionSummaryData_collectionSummary) = sub_1E18C0();
  v5.receiver = self;
  v5.super_class = type metadata accessor for BridgedCollectionSummaryData();
  return [(BACollectionSummaryData *)&v5 init];
}

- (BACollectionSummaryData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end