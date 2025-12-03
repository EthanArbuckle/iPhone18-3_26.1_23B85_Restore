@interface NowPlayingQueueViewController.CollectionView
- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)path;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtCC5Music29NowPlayingQueueViewController14CollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)cancelInteractiveMovement;
- (void)endInteractiveMovement;
@end

@implementation NowPlayingQueueViewController.CollectionView

- (BOOL)beginInteractiveMovementForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = sub_1004343A8();

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

- (void)endInteractiveMovement
{
  selfCopy = self;
  sub_10043454C();
}

- (void)cancelInteractiveMovement
{
  selfCopy = self;
  sub_100434920();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  sub_100009F78(0, &qword_101197A30);
  beginCopy = begin;
  selfCopy = self;
  panGestureRecognizer = [(NowPlayingQueueViewController.CollectionView *)selfCopy panGestureRecognizer];
  LOBYTE(self) = static NSObject.== infix(_:_:)();

  if ((self & 1) != 0 && (v8 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_shouldRecognizePanGestureBlock)) != 0)
  {

    v9 = v8([beginCopy locationInView:selfCopy]);

    sub_100020438(v8);
  }

  else
  {

    v9 = 1;
  }

  return v9 & 1;
}

- (_TtCC5Music29NowPlayingQueueViewController14CollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  return [(NowPlayingQueueViewController.CollectionView *)&v13 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

@end