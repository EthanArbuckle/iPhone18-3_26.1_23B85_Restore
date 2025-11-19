@interface SummariesAtrialFibrillationListDataProvider
- (_TtC5Heart43SummariesAtrialFibrillationListDataProvider)init;
- (_TtC5Heart43SummariesAtrialFibrillationListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)createDataFetcherForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7;
@end

@implementation SummariesAtrialFibrillationListDataProvider

- (_TtC5Heart43SummariesAtrialFibrillationListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_store) = 0;
  v7 = self + OBJC_IVAR____TtC5Heart43SummariesAtrialFibrillationListDataProvider_healthExperienceStore;
  v8 = type metadata accessor for SummariesAtrialFibrillationListDataProvider();
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(WDSampleListDataProvider *)&v10 initWithDisplayType:a3 profile:a4];
}

- (id)createDataFetcherForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7
{
  v11 = _Block_copy(a7);
  if (a6)
  {
    sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
    sub_29D939F38();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a4;
  v15 = self;
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