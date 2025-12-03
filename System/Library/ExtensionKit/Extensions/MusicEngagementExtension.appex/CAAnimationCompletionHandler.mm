@interface CAAnimationCompletionHandler
- (_TtC14MusicUtilities28CAAnimationCompletionHandler)init;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)displayLinkFiredWithDisplayLink:(id)link;
@end

@implementation CAAnimationCompletionHandler

- (void)animationDidStart:(id)start
{
  startCopy = start;
  v7._attr = self;
  attr = v7._attr;
  v7.super.isa = startCopy;
  CAAnimationCompletionHandler.animationDidStart(_:)(v7);
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  selfCopy = self;
  specialized CAAnimationCompletionHandler.animationDidStop(_:finished:)(finished);
}

- (void)displayLinkFiredWithDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  CAAnimationCompletionHandler.displayLinkFired(displayLink:)(linkCopy);
}

- (_TtC14MusicUtilities28CAAnimationCompletionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end