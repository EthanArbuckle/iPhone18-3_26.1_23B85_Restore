@interface SummariesAtrialFibrillationListDataProvider
- (_TtC5Heart43SummariesAtrialFibrillationListDataProvider)init;
- (_TtC5Heart43SummariesAtrialFibrillationListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)createDataFetcherForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
@end

@implementation SummariesAtrialFibrillationListDataProvider

- (_TtC5Heart43SummariesAtrialFibrillationListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_store) = 0;
  v7 = self + OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_healthExperienceStore;
  v8 = type metadata accessor for SummariesAtrialFibrillationListDataProvider();
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(WDSampleListDataProvider *)&v10 initWithDisplayType:type profile:profile];
}

- (id)createDataFetcherForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  v11 = _Block_copy(handler);
  if (descriptors)
  {
    sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
    sub_29D939F38();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  typeCopy = type;
  predicateCopy = predicate;
  selfCopy = self;
  v16 = sub_29D7CB5EC(sub_29D7CB5E4, v12);

  return v16;
}

- (_TtC5Heart43SummariesAtrialFibrillationListDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end