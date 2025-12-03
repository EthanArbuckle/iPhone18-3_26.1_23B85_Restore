@interface PosterRenderer
- (void)renderer:(id)renderer didReceiveTapAtPoint:(CGPoint)point;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation PosterRenderer

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000039D4(invalidateCopy);
}

- (void)renderer:(id)renderer didReceiveTapAtPoint:(CGPoint)point
{
  rendererCopy = renderer;
  selfCopy = self;
  sub_100003EAC(rendererCopy);
}

@end