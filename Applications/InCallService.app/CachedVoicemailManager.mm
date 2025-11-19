@interface CachedVoicemailManager
- (int64_t)estimatedCount;
- (void)fetchMessagesWithCompletion:(id)a3;
- (void)setEstimatedCount:(int64_t)a3;
- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4;
@end

@implementation CachedVoicemailManager

- (int64_t)estimatedCount
{
  v2 = self;
  v3 = sub_100212610();

  return v3;
}

- (void)setEstimatedCount:(int64_t)a3
{
  v4 = self;
  sub_100212650(a3);
}

- (void)fetchMessagesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_100211F74(&unk_1003000B0, v5);
}

- (void)voicemailWithIdentifier:(MPMessageID *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_100211F74(&unk_100300060, v7);
}

@end