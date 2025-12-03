@interface AegirRenderingController
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didReceiveTapAtPoint:(CGPoint)point;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation AegirRenderingController

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000322C4(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100033BE8(rendererCopy);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didReceiveTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  rendererCopy = renderer;
  selfCopy = self;
  sub_100033E74(x, y);
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100033908();
}

@end