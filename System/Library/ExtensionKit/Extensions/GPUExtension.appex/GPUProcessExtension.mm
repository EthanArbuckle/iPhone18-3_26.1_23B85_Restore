@interface GPUProcessExtension
- (_TtC12GPUExtension19GPUProcessExtension)init;
- (void)lockdownSandbox:(id)sandbox;
@end

@implementation GPUProcessExtension

- (_TtC12GPUExtension19GPUProcessExtension)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for GPUProcessExtension();
  v2 = [(GPUProcessExtension *)&v4 init];
  [(GPUProcessExtension *)v2 setSharedInstance:v2];
  return v2;
}

- (void)lockdownSandbox:(id)sandbox
{
  v4 = sub_10000DC68();
  v6 = v5;
  selfCopy = self;
  sub_10000D99C(v4, v6);

  _swift_bridgeObjectRelease(v6);
}

@end