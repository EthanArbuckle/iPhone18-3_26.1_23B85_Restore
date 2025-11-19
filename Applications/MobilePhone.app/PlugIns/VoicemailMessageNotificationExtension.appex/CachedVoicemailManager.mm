@interface CachedVoicemailManager
- (_TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager)init;
- (int64_t)estimatedCount;
- (void)fetchMessagesWithCompletion:(id)a3;
- (void)setEstimatedCount:(int64_t)a3;
- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4;
@end

@implementation CachedVoicemailManager

- (int64_t)estimatedCount
{
  v2 = self + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager__estimatedCount;
  v3 = self;
  os_unfair_lock_lock(v2);
  v4 = *(v2 + 1);
  os_unfair_lock_unlock(v2);

  return v4;
}

- (void)setEstimatedCount:(int64_t)a3
{
  v4 = self;
  sub_100028A10(a3);
}

- (void)fetchMessagesWithCompletion:(id)a3
{
  v5 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_10006099C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100079DB8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100079DC0;
  v12[5] = v11;
  v13 = self;
  sub_10005E2C8(0, 0, v7, &unk_100079DC8, v12);
}

- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10006099C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100079D98;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100079DA0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10005E2C8(0, 0, v9, &unk_10007AD00, v14);
}

- (_TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end