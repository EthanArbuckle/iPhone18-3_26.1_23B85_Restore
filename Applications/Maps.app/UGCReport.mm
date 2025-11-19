@interface UGCReport
- (UGCReviewedPlace)newReviewedPlace;
- (_TtC4Maps9UGCReport)init;
- (_TtC4Maps9UGCReport)initWithReportType:(int64_t)a3 initialForm:(id)a4 mapItem:(id)a5 submitter:(id)a6;
- (id)buildPhotosSubmissionParameters;
- (id)buildSubmissionParametersWithSubmissionFields:(id)a3;
- (void)fetchCoarsenedDeviceLocationWithCompletion:(id)a3;
- (void)persistSubmissionWithUpdatedReviewedPlace:(id)a3 communityIdentifier:(id)a4 completion:(id)a5;
- (void)setMapItem:(id)a3;
- (void)setNewReviewedPlace:(id)a3;
- (void)setSubmitter:(id)a3;
- (void)submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:(int64_t)a3 progressBlock:(id)a4 completion:(id)a5;
- (void)submitRatingsAndPhotosWithUploadPolicy:(int64_t)a3 progressBlock:(id)a4 completion:(id)a5;
@end

@implementation UGCReport

- (UGCReviewedPlace)newReviewedPlace
{
  v2 = self;
  v3 = sub_1001130A4();

  return v3;
}

- (void)setNewReviewedPlace:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport____lazy_storage___newReviewedPlace);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport____lazy_storage___newReviewedPlace) = a3;
  v3 = a3;
}

- (void)setSubmitter:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_submitter);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_submitter) = a3;
  v3 = a3;
}

- (void)setMapItem:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_mapItem);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_mapItem) = a3;
  v3 = a3;
}

- (_TtC4Maps9UGCReport)initWithReportType:(int64_t)a3 initialForm:(id)a4 mapItem:(id)a5 submitter:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = sub_100115C88(a3, v9, v10, v11);

  return v12;
}

- (_TtC4Maps9UGCReport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:(int64_t)a3 progressBlock:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_100116428;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_100116400;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = self;
  sub_100113574(a3, v8, v11, v10, v12);
  sub_1000588AC(v10);
  sub_1000588AC(v8);
}

- (void)submitRatingsAndPhotosWithUploadPolicy:(int64_t)a3 progressBlock:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_1000D2C9C;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_100116400;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = self;
  sub_100113E18(a3, v8, v11, v10, v12);
  sub_1000588AC(v10);
  sub_1000588AC(v8);
}

- (id)buildPhotosSubmissionParameters
{
  v3 = objc_allocWithZone(UGCSubmissionFields);
  v4 = self;
  v5 = [v3 init];
  v6 = [objc_opt_self() emptyRatingForm];
  [v6 fillSubmissionFields:v5];
  [*(&v4->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_initialForm) fillSubmissionFieldsForPhotos:v5];
  v7 = [(UGCReport *)v4 buildSubmissionParametersWithSubmissionFields:v5];

  return v7;
}

- (id)buildSubmissionParametersWithSubmissionFields:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100115638(v4);

  return v6;
}

- (void)fetchCoarsenedDeviceLocationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100115D68(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)persistSubmissionWithUpdatedReviewedPlace:(id)a3 communityIdentifier:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = self;
  sub_100115F58(v12, v9, a4, sub_100115C80, v11);
}

@end