@interface ScrollViewDelegateCoordinator
- (_TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator)init;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation ScrollViewDelegateCoordinator

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_94CA0(v4);
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_94DE0(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_94F20(v4);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_95060(v6, a4);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_951BC(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  sub_952FC(v9, a5, x, y);
}

- (_TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29ScrollViewDelegateCoordinator_scrollCoordinators) = _swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScrollViewDelegateCoordinator();
  return [(ScrollViewDelegateCoordinator *)&v3 init];
}

@end