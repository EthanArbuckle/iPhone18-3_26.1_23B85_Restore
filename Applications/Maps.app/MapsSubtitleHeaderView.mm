@interface MapsSubtitleHeaderView
- (_TtP4Maps30MapsSubtitleHeaderViewDelegate_)delegate;
- (void)setDelegate:(id)delegate;
- (void)setHeaderSize:(int64_t)size;
- (void)setParentViewController:(id)controller;
- (void)setShowTitle:(BOOL)title;
@end

@implementation MapsSubtitleHeaderView

- (void)setHeaderSize:(int64_t)size
{
  *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_headerSize) = size;
  selfCopy = self;
  sub_10018D9D4();
}

- (void)setShowTitle:(BOOL)title
{
  *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_showTitle) = title;
  selfCopy = self;
  sub_10018D9D4();
}

- (_TtP4Maps30MapsSubtitleHeaderViewDelegate_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_delegate) = delegate;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  sub_10018D9D4();
  swift_unknownObjectRelease();
}

- (void)setParentViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_parentViewController);
  *(self + OBJC_IVAR____TtC4Maps22MapsSubtitleHeaderView_parentViewController) = controller;
  controllerCopy = controller;
  selfCopy = self;

  sub_10018D9D4();
}

@end