@interface DetermineNowPlayingIntentInfoResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
- (DetermineNowPlayingIntentInfoResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation DetermineNowPlayingIntentInfoResolutionResult

+ (id)unsupportedForReason:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(a3);

  return v4;
}

- (DetermineNowPlayingIntentInfoResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_2CE200();
  v6 = a4;
  isa = sub_2CE1F0().super.isa;

  v10.receiver = self;
  v10.super_class = type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
  v8 = [(NowPlayingIntentInfoResolutionResult *)&v10 initWithJSONDictionary:isa forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end