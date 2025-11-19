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
  v7._attr = self;
  attr = v7._attr;
  v7.super.isa = v4;
  CAAnimationCompletionHandler.animationDidStart(_:)(v7);
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  specialized CAAnimationCompletionHandler.animationDidStop(_:finished:)(a4);
}

- (void)displayLinkFiredWithDisplayLink:(id)a3
{
  v4 = a3;
  v5 = self;
  CAAnimationCompletionHandler.displayLinkFired(displayLink:)(v4);
}

- (_TtC14MusicUtilities28CAAnimationCompletionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end