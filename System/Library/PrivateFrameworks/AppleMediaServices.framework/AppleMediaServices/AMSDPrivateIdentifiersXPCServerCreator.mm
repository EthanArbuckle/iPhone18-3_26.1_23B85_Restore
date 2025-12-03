@interface AMSDPrivateIdentifiersXPCServerCreator
+ (id)serverWithError:(id *)error;
@end

@implementation AMSDPrivateIdentifiersXPCServerCreator

+ (id)serverWithError:(id *)error
{
  sub_1001A5FC8(v5);
  sub_10000C4FC(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100004118(v5);

  return v3;
}

@end