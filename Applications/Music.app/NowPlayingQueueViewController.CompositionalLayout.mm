@interface NowPlayingQueueViewController.CompositionalLayout
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithCoder:(id)coder;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)section;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSectionProvider:(id)provider;
- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
@end

@implementation NowPlayingQueueViewController.CompositionalLayout

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  kindCopy = kind;
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = _s19CompositionalLayoutCMa();
  v16.receiver = selfCopy;
  v16.super_class = v13;
  v14 = [(NowPlayingQueueViewController.CompositionalLayout *)&v16 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:isa];

  if (v14)
  {
    sub_10056B6D0(v14);
  }

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
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

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = _s19CompositionalLayoutCMa();
  v16.receiver = selfCopy;
  v16.super_class = v13;
  v14 = [(NowPlayingQueueViewController.CompositionalLayout *)&v16 layoutAttributesForInteractivelyMovingItemAtIndexPath:isa withTargetPosition:x, y];

  [v14 frame];
  if (CGRectGetMinY(v18) < *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY))
  {
    [v14 frame];
    [v14 setFrame:?];
  }

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)section
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = 0;
  v5.receiver = self;
  v5.super_class = _s19CompositionalLayoutCMa();
  return [(NowPlayingQueueViewController.CompositionalLayout *)&v5 initWithSection:section];
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)section configuration:(id)configuration
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = 0;
  v7.receiver = self;
  v7.super_class = _s19CompositionalLayoutCMa();
  return [(NowPlayingQueueViewController.CompositionalLayout *)&v7 initWithSection:section configuration:configuration];
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSectionProvider:(id)provider
{
  v4 = _Block_copy(provider);
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

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v6 = _Block_copy(provider);
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
  configurationCopy = configuration;

  v12.receiver = self;
  v12.super_class = _s19CompositionalLayoutCMa();
  v10 = [(NowPlayingQueueViewController.CompositionalLayout *)&v12 initWithSectionProvider:v8 configuration:configurationCopy];

  _Block_release(v8);
  return v10;
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource) = 0;
  v7.receiver = self;
  v7.super_class = _s19CompositionalLayoutCMa();
  coderCopy = coder;
  v5 = [(NowPlayingQueueViewController.CompositionalLayout *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtCC5Music29NowPlayingQueueViewController19CompositionalLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration
{
  v7 = _Block_copy(provider);
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

  sectionCopy = section;
  return sub_10056C808(section, v7, v8, configuration);
}

@end