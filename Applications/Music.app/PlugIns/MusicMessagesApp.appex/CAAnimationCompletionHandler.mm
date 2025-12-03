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
  sub_10040FEC4(startCopy);
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  selfCopy = self;
  sub_100411BB4(finished);
}

- (void)displayLinkFiredWithDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_1004100D0(linkCopy);
}

- (_TtC14MusicUtilities28CAAnimationCompletionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end