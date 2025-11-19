@interface DetermineIntentHandler
- (void)resolveNowPlayingIntentInfoForDetermine:(id)a3 withCompletion:(id)a4;
@end

@implementation DetermineIntentHandler

- (void)resolveNowPlayingIntentInfoForDetermine:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  DetermineIntentHandler.resolveNowPlayingIntentInfo(for:with:)(v8, sub_1186C8, v7);
}

@end