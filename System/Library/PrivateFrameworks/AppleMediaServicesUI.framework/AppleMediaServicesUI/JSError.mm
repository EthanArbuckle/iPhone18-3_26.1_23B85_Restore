@interface JSError
- (NSDictionary)export;
- (_TtC14amsengagementd7JSError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation JSError

- (NSDictionary)export
{
  v2 = self;
  sub_100051018();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC14amsengagementd7JSError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10010F338();
}

@end