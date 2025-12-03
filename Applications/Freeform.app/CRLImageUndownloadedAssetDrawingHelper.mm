@interface CRLImageUndownloadedAssetDrawingHelper
- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithImageRep:(id)rep asset:(id)asset;
- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithRep:(id)rep;
- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithRep:(id)rep asset:(id)asset;
- (void)drawInConext:(CGContext *)conext withOriginalImageRect:(CGRect)rect;
@end

@implementation CRLImageUndownloadedAssetDrawingHelper

- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithImageRep:(id)rep asset:(id)asset
{
  repCopy = rep;
  assetCopy = asset;
  v7 = sub_10083EBF8(repCopy, assetCopy);

  return v7;
}

- (void)drawInConext:(CGContext *)conext withOriginalImageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  conextCopy = conext;
  selfCopy = self;
  sub_10083DB8C(conextCopy, x, y, width, height);
}

- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithRep:(id)rep asset:(id)asset
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8Freeform38CRLImageUndownloadedAssetDrawingHelper)initWithRep:(id)rep
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end