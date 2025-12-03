@interface CRLUndownloadedAssetDrawingHelper
- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)init;
- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)initWithRep:(id)rep;
- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)initWithRep:(id)rep asset:(id)asset;
- (void)drawInContext:(CGContext *)context;
@end

@implementation CRLUndownloadedAssetDrawingHelper

- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)initWithRep:(id)rep asset:(id)asset
{
  repCopy = rep;
  assetCopy = asset;
  v7 = sub_101252E28(repCopy, assetCopy);

  return v7;
}

- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)initWithRep:(id)rep
{
  repCopy = rep;
  v4 = sub_1012538FC();

  return v4;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_101251240(contextCopy);
}

- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end