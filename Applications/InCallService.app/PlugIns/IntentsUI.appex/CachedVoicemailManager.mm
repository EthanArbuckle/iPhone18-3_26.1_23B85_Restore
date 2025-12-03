@interface CachedVoicemailManager
- (_TtC9IntentsUI22CachedVoicemailManager)init;
- (int64_t)estimatedCount;
- (void)fetchMessagesWithCompletion:(id)completion;
- (void)setEstimatedCount:(int64_t)count;
- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion;
@end

@implementation CachedVoicemailManager

- (int64_t)estimatedCount
{
  v2 = self + OBJC_IVAR____TtC9IntentsUI22CachedVoicemailManager__estimatedCount;
  selfCopy = self;
  os_unfair_lock_lock(v2);
  v4 = *(v2 + 1);
  os_unfair_lock_unlock(v2);

  return v4;
}

- (void)setEstimatedCount:(int64_t)count
{
  selfCopy = self;
  sub_100035F80(count);
}

- (void)fetchMessagesWithCompletion:(id)completion
{
  v5 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_10007B608();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000A18D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000A18D8;
  v13[5] = v12;
  selfCopy = self;
  sub_100052478(0, 0, v8, &unk_1000A18E0, v13);
}

- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion
{
  v7 = sub_100030744(&qword_1000C5110);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_10007B608();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000A18B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000A1DF0;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_100052478(0, 0, v10, &unk_1000A18C0, v15);
}

- (_TtC9IntentsUI22CachedVoicemailManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end