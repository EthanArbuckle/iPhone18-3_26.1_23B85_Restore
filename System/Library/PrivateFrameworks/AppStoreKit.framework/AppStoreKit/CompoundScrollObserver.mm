@interface CompoundScrollObserver
- (_TtC11AppStoreKit22CompoundScrollObserver)init;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation CompoundScrollObserver

- (_TtC11AppStoreKit22CompoundScrollObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  CompoundScrollObserver.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  CompoundScrollObserver.scrollViewWillBeginDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  CompoundScrollObserver.scrollViewDidEndDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  CompoundScrollObserver.scrollViewDidEndDragging(_:willDecelerate:)(draggingCopy, decelerate);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  CompoundScrollObserver.scrollViewWillBeginDragging(_:)(draggingCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  CompoundScrollObserver.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(draggingCopy, offset, x, y);
}

@end