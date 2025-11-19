@interface UGCSubmissionLookupManager
- (_TtC4Maps26UGCSubmissionLookupManager)init;
- (void)fetchSubmissionWithCommunityIDAndICloudIDFor:(unint64_t)a3 identifierHistory:(id)a4 completion:(id)a5;
- (void)fetchSubmissionWithICloudIDFor:(unint64_t)a3 completion:(id)a4;
@end

@implementation UGCSubmissionLookupManager

- (_TtC4Maps26UGCSubmissionLookupManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps26UGCSubmissionLookupManager_ticket) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for UGCSubmissionLookupManager();
  return [(UGCSubmissionLookupManager *)&v3 init];
}

- (void)fetchSubmissionWithICloudIDFor:(unint64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100273C10;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_100271898(a3, v6, v7);
  sub_1000588AC(v6);
}

- (void)fetchSubmissionWithCommunityIDAndICloudIDFor:(unint64_t)a3 identifierHistory:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_1002732F0();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_1000DF014;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  sub_100271E24(a3, v8, v7, v9);
  sub_1000588AC(v7);
}

@end