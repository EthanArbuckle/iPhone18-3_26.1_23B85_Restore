@interface BCMAssetWrapper
+ (id)actionTextForType:(int64_t)a3 withAsset:(id)a4;
+ (id)assetWithData:(id)a3;
+ (id)nameForResourceType:(int64_t)a3;
- (BCMAssetWrapper)init;
@end

@implementation BCMAssetWrapper

+ (id)assetWithData:(id)a3
{
  v3 = sub_1EEE54();
  v4 = _s8BookCore13MAssetWrapperC5asset4withSo8BFMAsset_pSgSDys11AnyHashableVypG_tFZ_0(v3);

  return v4;
}

+ (id)actionTextForType:(int64_t)a3 withAsset:(id)a4
{
  sub_1EE9F4();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    swift_unknownObjectRetain();
    MAsset.actionText(for:)(a3);
    v7 = v6;
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_1EEED4();

      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)nameForResourceType:(int64_t)a3
{
  v3 = sub_1EE834();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EE844();
  sub_1EE824();
  (*(v4 + 8))(v6, v3);
  v7 = sub_1EEED4();

  return v7;
}

- (BCMAssetWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MAssetWrapper();
  return [(BCMAssetWrapper *)&v3 init];
}

@end