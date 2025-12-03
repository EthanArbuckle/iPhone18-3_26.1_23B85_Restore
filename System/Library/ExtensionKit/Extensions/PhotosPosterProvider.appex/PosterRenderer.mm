@interface PosterRenderer
- (void)renderer:(id)renderer didReceiveEvent:(id)event;
- (void)rendererDidInvalidate:(id)invalidate;
@end

@implementation PosterRenderer

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100005C94(invalidateCopy);
}

- (void)renderer:(id)renderer didReceiveEvent:(id)event
{
  rendererCopy = renderer;
  eventCopy = event;
  selfCopy = self;
  sub_1000061F4(selfCopy, eventCopy);
}

@end