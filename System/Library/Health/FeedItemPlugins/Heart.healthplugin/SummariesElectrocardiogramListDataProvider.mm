@interface SummariesElectrocardiogramListDataProvider
- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)init;
- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode;
- (id)activeECGAlgorithmVersion;
- (id)createDataFetcherForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
@end

@implementation SummariesElectrocardiogramListDataProvider

- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher) = 0;
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

- (id)createDataFetcherForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  v11 = sub_29D836654();
  v12 = &v11[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler];
  v13 = *&v11[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler];
  v14 = *&v11[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler + 8];
  *v12 = sub_29D7CB5E4;
  v12[1] = v9;
  sub_29D694784(v13);

  v15 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher);
  v16 = v15;

  return v15;
}

- (id)activeECGAlgorithmVersion
{
  selfCopy = self;
  v3 = sub_29D836654();
  v4 = *&v3[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_activeAlgorithmVersion];
  v5 = v3[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_activeAlgorithmVersion + 8];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v6 = sub_29D93A6E8();
  }

  return v6;
}

- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end