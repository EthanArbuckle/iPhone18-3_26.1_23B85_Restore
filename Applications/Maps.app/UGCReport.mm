@interface UGCReport
- (UGCReviewedPlace)newReviewedPlace;
- (_TtC4Maps9UGCReport)init;
- (_TtC4Maps9UGCReport)initWithReportType:(int64_t)type initialForm:(id)form mapItem:(id)item submitter:(id)submitter;
- (id)buildPhotosSubmissionParameters;
- (id)buildSubmissionParametersWithSubmissionFields:(id)fields;
- (void)fetchCoarsenedDeviceLocationWithCompletion:(id)completion;
- (void)persistSubmissionWithUpdatedReviewedPlace:(id)place communityIdentifier:(id)identifier completion:(id)completion;
- (void)setMapItem:(id)item;
- (void)setNewReviewedPlace:(id)place;
- (void)setSubmitter:(id)submitter;
- (void)submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:(int64_t)policy progressBlock:(id)block completion:(id)completion;
- (void)submitRatingsAndPhotosWithUploadPolicy:(int64_t)policy progressBlock:(id)block completion:(id)completion;
@end

@implementation UGCReport

- (UGCReviewedPlace)newReviewedPlace
{
  selfCopy = self;
  v3 = sub_1001130A4();

  return v3;
}

- (void)setNewReviewedPlace:(id)place
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport____lazy_storage___newReviewedPlace);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport____lazy_storage___newReviewedPlace) = place;
  placeCopy = place;
}

- (void)setSubmitter:(id)submitter
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_submitter);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_submitter) = submitter;
  submitterCopy = submitter;
}

- (void)setMapItem:(id)item
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_mapItem);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_mapItem) = item;
  itemCopy = item;
}

- (_TtC4Maps9UGCReport)initWithReportType:(int64_t)type initialForm:(id)form mapItem:(id)item submitter:(id)submitter
{
  formCopy = form;
  itemCopy = item;
  submitterCopy = submitter;
  v12 = sub_100115C88(type, formCopy, itemCopy, submitterCopy);

  return v12;
}

- (_TtC4Maps9UGCReport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)submitRatingsAndPhotosSimultaneouslyUsingDSIDWithUploadPolicy:(int64_t)policy progressBlock:(id)block completion:(id)completion
{
  v8 = _Block_copy(block);
  v9 = _Block_copy(completion);
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
  selfCopy = self;
  sub_100113574(policy, v8, v11, v10, v12);
  sub_1000588AC(v10);
  sub_1000588AC(v8);
}

- (void)submitRatingsAndPhotosWithUploadPolicy:(int64_t)policy progressBlock:(id)block completion:(id)completion
{
  v8 = _Block_copy(block);
  v9 = _Block_copy(completion);
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
  selfCopy = self;
  sub_100113E18(policy, v8, v11, v10, v12);
  sub_1000588AC(v10);
  sub_1000588AC(v8);
}

- (id)buildPhotosSubmissionParameters
{
  v3 = objc_allocWithZone(UGCSubmissionFields);
  selfCopy = self;
  v5 = [v3 init];
  emptyRatingForm = [objc_opt_self() emptyRatingForm];
  [emptyRatingForm fillSubmissionFields:v5];
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps9UGCReport_initialForm) fillSubmissionFieldsForPhotos:v5];
  v7 = [(UGCReport *)selfCopy buildSubmissionParametersWithSubmissionFields:v5];

  return v7;
}

- (id)buildSubmissionParametersWithSubmissionFields:(id)fields
{
  fieldsCopy = fields;
  selfCopy = self;
  v6 = sub_100115638(fieldsCopy);

  return v6;
}

- (void)fetchCoarsenedDeviceLocationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_100115D68(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)persistSubmissionWithUpdatedReviewedPlace:(id)place communityIdentifier:(id)identifier completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (identifier)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  placeCopy = place;
  selfCopy = self;
  sub_100115F58(placeCopy, v9, identifier, sub_100115C80, v11);
}

@end