@interface CachedVoicemailManager
- (int64_t)estimatedCount;
- (void)fetchMessagesWithCompletion:(id)completion;
- (void)setEstimatedCount:(int64_t)count;
- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion;
@end

@implementation CachedVoicemailManager

- (int64_t)estimatedCount
{
  selfCopy = self;
  v3 = sub_100212610();

  return v3;
}

- (void)setEstimatedCount:(int64_t)count
{
  selfCopy = self;
  sub_100212650(count);
}

- (void)fetchMessagesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_100211F74(&unk_1003000B0, v5);
}

- (void)voicemailWithIdentifier:(MPMessageID *)identifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = identifier;
  v7[3] = v6;
  v7[4] = self;
  identifierCopy = identifier;
  selfCopy = self;

  sub_100211F74(&unk_100300060, v7);
}

@end