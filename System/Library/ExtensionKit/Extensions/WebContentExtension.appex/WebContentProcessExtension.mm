@interface WebContentProcessExtension
- (_TtC19WebContentExtension26WebContentProcessExtension)init;
- (void)lockdownSandbox:(id)a3;
@end

@implementation WebContentProcessExtension

- (_TtC19WebContentExtension26WebContentProcessExtension)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for WebContentProcessExtension();
  v2 = [(WebContentProcessExtension *)&v4 init];
  [(WebContentProcessExtension *)v2 setSharedInstance:v2];
  return v2;
}

- (void)lockdownSandbox:(id)a3
{
  v4 = sub_1000052D4();
  v6 = v5;
  v7 = self;
  sub_100004FB4(v4, v6);

  _swift_bridgeObjectRelease(v6);
}

@end