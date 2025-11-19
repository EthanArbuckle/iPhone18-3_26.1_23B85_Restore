@interface CRLiOSPrintPageRenderer
- (_TtC8Freeform23CRLiOSPrintPageRenderer)init;
- (int64_t)numberOfPages;
- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
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

- (void)drawPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = self;
  sub_100B7F264(a3, x, y, width, height);
}

- (_TtC8Freeform23CRLiOSPrintPageRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end