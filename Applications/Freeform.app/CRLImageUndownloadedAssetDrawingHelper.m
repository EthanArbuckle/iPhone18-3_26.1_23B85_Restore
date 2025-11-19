@interface CRLImageUndownloadedAssetDrawingHelper
- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithImageRep:(id)a3 asset:(id)a4;
- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithRep:(id)a3;
- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithRep:(id)a3 asset:(id)a4;
- (void)drawInConext:(CGContext *)a3 withOriginalImageRect:(CGRect)a4;
@end

@implementation CRLImageUndownloadedAssetDrawingHelper

- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithImageRep:(id)a3 asset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_10083EBF8(v5, v6);

  return v7;
}

- (void)drawInConext:(CGContext *)a3 withOriginalImageRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = self;
  sub_10083DB8C(v9, x, y, width, height);
}

- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithRep:(id)a3 asset:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithRep:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end