@interface MapsSubtitleHeaderView
- (_TtP4Maps30MapsSubtitleHeaderViewDelegate_)delegate;
- (void)setDelegate:(id)a3;
- (void)setHeaderSize:(int64_t)a3;
- (void)setParentViewController:(id)a3;
- (void)setShowTitle:(BOOL)a3;
@end

@implementation MapsSubtitleHeaderView

- (void)setHeaderSize:(int64_t)a3
{
  *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerSize) = a3;
  v3 = self;
  sub_10018D9D4();
}

- (void)setShowTitle:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_showTitle) = a3;
  v3 = self;
  sub_10018D9D4();
}

- (_TtP4Maps30MapsSubtitleHeaderViewDelegate_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_delegate) = a3;
  swift_unknownObjectRetain_n();
  v4 = self;
  swift_unknownObjectRelease();
  sub_10018D9D4();
  swift_unknownObjectRelease();
}

- (void)setParentViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_parentViewController);
  *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_parentViewController) = a3;
  v5 = a3;
  v6 = self;

  sub_10018D9D4();
}

@end