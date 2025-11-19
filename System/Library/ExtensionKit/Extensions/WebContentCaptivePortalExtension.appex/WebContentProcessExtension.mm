@interface WebContentProcessExtension
- (_TtC32WebContentCaptivePortalExtension26WebContentProcessExtension)init;
- (void)lockdownSandbox:(id)a3;
@end

@implementation WebContentProcessExtension

- (_TtC32WebContentCaptivePortalExtension26WebContentProcessExtension)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for WebContentProcessExtension();
  v2 = [(WebContentProcessExtension *)&v4 init];
  [(WebContentProcessExtension *)v2 setSharedInstance:v2];
  return v2;
}

- (void)lockdownSandbox:(id)a3
{
  v4 = sub_100001854();
  v6 = v5;
  v7 = self;
  sub_100001310(v4, v6);

  _swift_bridgeObjectRelease(v6);
}

@end