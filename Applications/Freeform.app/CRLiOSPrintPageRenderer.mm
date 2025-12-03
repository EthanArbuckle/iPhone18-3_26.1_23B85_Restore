@interface CRLiOSPrintPageRenderer
- (_TtC8Freeform23CRLiOSPrintPageRenderer)init;
- (int64_t)numberOfPages;
- (void)drawPageAtIndex:(int64_t)index inRect:(CGRect)rect;
@end

@implementation CRLiOSPrintPageRenderer

- (int64_t)numberOfPages
{
  v2 = self + OBJC_IVAR____TtC8Freeform23CRLiOSPrintPageRenderer_exporter;
  swift_beginAccess();
  v3 = *(v2 + 1);
  if (v2[49] != 1 || v3 == 0)
  {
    return 1;
  }

  if (v3 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

- (void)drawPageAtIndex:(int64_t)index inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_100B7F264(index, x, y, width, height);
}

- (_TtC8Freeform23CRLiOSPrintPageRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end