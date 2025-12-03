@interface FeedbackCommunityIDManager
+ (_TtC4Maps26FeedbackCommunityIDManager)shared;
- (_TtC4Maps26FeedbackCommunityIDManager)init;
- (void)fetchAuthenticationInfoForRAPReportWithReportID:(id)d completion:(id)completion;
- (void)fetchAuthenticationInfoForRAPReportWithReportID:(id)d shouldIncreaseCount:(BOOL)count completion:(id)completion;
- (void)fetchAuthenticationInfoForReviewedPlaceWithMuid:(unint64_t)muid identifierHistory:(id)history shouldIncreaseCount:(BOOL)count completion:(id)completion;
@end

@implementation FeedbackCommunityIDManager

+ (_TtC4Maps26FeedbackCommunityIDManager)shared
{
  if (qword_101906848 != -1)
  {
    swift_once();
  }

  v3 = qword_101960290;

  return v3;
}

- (_TtC4Maps26FeedbackCommunityIDManager)init
{
  v3 = OBJC_IVAR____TtC4Maps26FeedbackCommunityIDManager_syncCache;
  if (qword_101906520 != -1)
  {
    swift_once();
  }

  v4 = qword_10195FA50;
  *(&self->super.isa + v3) = qword_10195FA50;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FeedbackCommunityIDManager();
  v5 = v4;
  return [(FeedbackCommunityIDManager *)&v7 init];
}

- (void)fetchAuthenticationInfoForReviewedPlaceWithMuid:(unint64_t)muid identifierHistory:(id)history shouldIncreaseCount:(BOOL)count completion:(id)completion
{
  v10 = _Block_copy(completion);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_100273C10;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = muid;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  *(v13 + 40) = self;
  *(v13 + 48) = count;
  v17[4] = sub_100425568;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100423014;
  v17[3] = &unk_1016187E8;
  v14 = _Block_copy(v17);
  selfCopy = self;
  historyCopy = history;
  sub_1000CD9D4(v10);

  [v12 fetchReviewedPlaceForMUID:muid withIdentifierHistory:historyCopy completion:v14];

  sub_1000588AC(v10);
  _Block_release(v14);
}

- (void)fetchAuthenticationInfoForRAPReportWithReportID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = v6;
  if (d)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_100273C10;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  selfCopy = self;
  sub_1004239B4(v8, d, v7, v10);
  sub_1000588AC(v7);
}

- (void)fetchAuthenticationInfoForRAPReportWithReportID:(id)d shouldIncreaseCount:(BOOL)count completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = v8;
  if (d)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v11;
    if (v9)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      v9 = sub_1000DF014;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  selfCopy = self;
  sub_100423B74(v10, d, count, v9, v12);
  sub_1000588AC(v9);
}

@end