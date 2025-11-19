@interface NowPlayingQueueViewController.CollectionView
- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtCC5Music29NowPlayingQueueViewController14CollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)cancelInteractiveMovement;
- (void)endInteractiveMovement;
@end

@implementation NowPlayingQueueViewController.CollectionView

- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  v9 = sub_1004343A8();

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)endInteractiveMovement
{
  v2 = self;
  sub_10043454C();
}

- (void)cancelInteractiveMovement
{
  v2 = self;
  sub_100434920();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  sub_100009F78(0, &qword_101197A30);
  v5 = a3;
  v6 = self;
  v7 = [(NowPlayingQueueViewController.CollectionView *)v6 panGestureRecognizer];
  LOBYTE(self) = static NSObject.== infix(_:_:)();

  if ((self & 1) != 0 && (v8 = *(&v6->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock)) != 0)
  {

    v9 = v8([v5 locationInView:v6]);

    sub_100020438(v8);
  }

  else
  {

    v9 = 1;
  }

  return v9 & 1;
}

- (_TtCC5Music29NowPlayingQueueViewController14CollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidBeginBlock);
  *v9 = 0;
  v9[1] = 0;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementDidEndBlock);
  *v10 = 0;
  v10[1] = 0;
  v11 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock);
  *v11 = 0;
  v11[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement) = 0;
  v13.receiver = self;
  v13.super_class = _s14CollectionViewCMa();
  return [(NowPlayingQueueViewController.CollectionView *)&v13 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

@end