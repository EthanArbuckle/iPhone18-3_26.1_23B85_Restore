@interface SummariesElectrocardiogramListDataProvider
- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)init;
- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5;
- (id)activeECGAlgorithmVersion;
- (id)createDataFetcherForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7;
@end

@implementation SummariesElectrocardiogramListDataProvider

- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher) = 0;
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

- (id)createDataFetcherForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7
{
  v8 = _Block_copy(a7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  v11 = sub_29D836654();
  v12 = &v11[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler];
  v13 = *&v11[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler];
  v14 = *&v11[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler + 8];
  *v12 = sub_29D7CB5E4;
  v12[1] = v9;
  sub_29D694784(v13);

  v15 = *(&v10->super.super.super.isa + OBJC_IVAR____TtC5Heart42SummariesElectrocardiogramListDataProvider____lazy_storage___dataFetcher);
  v16 = v15;

  return v15;
}

- (id)activeECGAlgorithmVersion
{
  v2 = self;
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

- (_TtC5Heart42SummariesElectrocardiogramListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5
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