@interface CRLUndownloadedAssetDrawingHelper
- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)init;
- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)initWithRep:(id)a3;
- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)initWithRep:(id)a3 asset:(id)a4;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation CRLUndownloadedAssetDrawingHelper

- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)initWithRep:(id)a3 asset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_101252E28(v5, v6);

  return v7;
}

- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)initWithRep:(id)a3
{
  v3 = a3;
  v4 = sub_1012538FC();

  return v4;
}

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_101251240(v4);
}

- (_TtC8Freeform33CRLUndownloadedAssetDrawingHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end