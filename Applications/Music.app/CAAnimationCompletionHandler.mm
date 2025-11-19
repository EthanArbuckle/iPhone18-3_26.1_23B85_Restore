@interface CAAnimationCompletionHandler
- (_TtC14MusicUtilities28CAAnimationCompletionHandler)init;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)displayLinkFiredWithDisplayLink:(id)a3;
@end

@implementation CAAnimationCompletionHandler

- (void)animationDidStart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100C2491C(v4);
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100C2660C(a4);
}

- (void)displayLinkFiredWithDisplayLink:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100C24B28(v4);
}

- (_TtC14MusicUtilities28CAAnimationCompletionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end