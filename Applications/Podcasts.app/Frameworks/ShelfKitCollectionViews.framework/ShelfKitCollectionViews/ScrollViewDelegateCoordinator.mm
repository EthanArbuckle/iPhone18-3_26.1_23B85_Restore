@interface ScrollViewDelegateCoordinator
- (_TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator)init;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation ScrollViewDelegateCoordinator

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_94CA0(scrollCopy);
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_94DE0(deceleratingCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_94F20(deceleratingCopy);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_95060(draggingCopy, decelerate);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_951BC(draggingCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  sub_952FC(draggingCopy, offset, x, y);
}

- (_TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator_scrollCoordinators) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScrollViewDelegateCoordinator();
  return [(ScrollViewDelegateCoordinator *)&v3 init];
}

@end