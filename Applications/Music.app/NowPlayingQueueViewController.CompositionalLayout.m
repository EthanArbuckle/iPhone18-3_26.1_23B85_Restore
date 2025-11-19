@interface NowPlayingQueueViewController.CompositionalLayout
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithCoder:(id)a3;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)a3;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSectionProvider:(id)a3;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
@end

@implementation NowPlayingQueueViewController.CompositionalLayout

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = _s19CompositionalLayoutCMa();
  v16.receiver = v11;
  v16.super_class = v13;
  v14 = [(NowPlayingQueueViewController.CompositionalLayout *)&v16 layoutAttributesForSupplementaryViewOfKind:v10 atIndexPath:isa];

  if (v14)
  {
    sub_10056B6D0(v14);
  }

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_10056BE24(x, y, width, height);

  if (v8)
  {
    sub_10056CA5C();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = _s19CompositionalLayoutCMa();
  v16.receiver = v11;
  v16.super_class = v13;
  v14 = [(NowPlayingQueueViewController.CompositionalLayout *)&v16 layoutAttributesForInteractivelyMovingItemAtIndexPath:isa withTargetPosition:x, y];

  [v14 frame];
  if (CGRectGetMinY(v18) < *(&v11->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY))
  {
    [v14 frame];
    [v14 setFrame:?];
  }

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = 0;
  v5.receiver = self;
  v5.super_class = _s19CompositionalLayoutCMa();
  return [(NowPlayingQueueViewController.CompositionalLayout *)&v5 initWithSection:a3];
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)a3 configuration:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = 0;
  v7.receiver = self;
  v7.super_class = _s19CompositionalLayoutCMa();
  return [(NowPlayingQueueViewController.CompositionalLayout *)&v7 initWithSection:a3 configuration:a4];
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSectionProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = 0;
  aBlock[4] = sub_10056CAB0;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010B2BE8;
  v6 = _Block_copy(aBlock);

  v9.receiver = self;
  v9.super_class = _s19CompositionalLayoutCMa();
  v7 = [(NowPlayingQueueViewController.CompositionalLayout *)&v9 initWithSectionProvider:v6];

  _Block_release(v6);
  return v7;
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = 0;
  aBlock[4] = sub_10056CAB0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010B2B98;
  v8 = _Block_copy(aBlock);
  v9 = a4;

  v12.receiver = self;
  v12.super_class = _s19CompositionalLayoutCMa();
  v10 = [(NowPlayingQueueViewController.CompositionalLayout *)&v12 initWithSectionProvider:v8 configuration:v9];

  _Block_release(v8);
  return v10;
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = 0;
  v7.receiver = self;
  v7.super_class = _s19CompositionalLayoutCMa();
  v4 = a3;
  v5 = [(NowPlayingQueueViewController.CompositionalLayout *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5
{
  v7 = _Block_copy(a4);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_10056CA54;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  return sub_10056C808(a3, v7, v8, a5);
}

@end