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
  selfCopy = self;
  sub_100C2491C(startCopy);
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  selfCopy = self;
  sub_100C2660C(finished);
}

- (void)displayLinkFiredWithDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_100C24B28(linkCopy);
}

- (_TtC14MusicUtilities28CAAnimationCompletionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end