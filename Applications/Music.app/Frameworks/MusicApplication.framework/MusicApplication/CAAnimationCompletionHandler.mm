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
  sub_8D3F68(startCopy);
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  selfCopy = self;
  sub_8D5C58(finished);
}

- (void)displayLinkFiredWithDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_8D4174(linkCopy);
}

- (_TtC14MusicUtilities28CAAnimationCompletionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end