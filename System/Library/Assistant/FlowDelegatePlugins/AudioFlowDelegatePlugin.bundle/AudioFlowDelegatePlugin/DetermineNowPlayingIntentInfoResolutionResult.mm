@interface DetermineNowPlayingIntentInfoResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (DetermineNowPlayingIntentInfoResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation DetermineNowPlayingIntentInfoResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(reason);

  return v4;
}

- (DetermineNowPlayingIntentInfoResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_2CE200();
  intentCopy = intent;
  isa = sub_2CE1F0().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
  v8 = [(NowPlayingIntentInfoResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end