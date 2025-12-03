@interface DetermineIntentHandler
- (void)resolveNowPlayingIntentInfoForDetermine:(id)determine withCompletion:(id)completion;
@end

@implementation DetermineIntentHandler

- (void)resolveNowPlayingIntentInfoForDetermine:(id)determine withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  determineCopy = determine;
  selfCopy = self;
  DetermineIntentHandler.resolveNowPlayingIntentInfo(for:with:)(determineCopy, sub_1186C8, v7);
}

@end