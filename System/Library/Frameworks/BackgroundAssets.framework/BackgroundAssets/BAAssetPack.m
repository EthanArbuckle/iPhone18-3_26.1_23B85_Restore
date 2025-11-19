@interface BAAssetPack
- (BAAssetPack)init;
- (NSData)userInfo;
- (NSString)identifier;
- (id)download;
- (id)downloadForContentRequest:(int64_t)a3;
- (id)init:(id)a3;
@end

@implementation BAAssetPack

- (NSString)identifier
{
  v2 = (*(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack);
  v3 = *v2;
  v4 = v2[1];

  v5 = sub_236E81E74();

  return v5;
}

- (NSData)userInfo
{
  v2 = *(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack;
  v3 = *(v2 + 5);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 4);
    sub_236E59298(v5, *(v2 + 5));
    v6 = sub_236E81A24();
    sub_236E592EC(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (id)download
{
  v3 = type metadata accessor for AssetPack(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E393B0(*(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, v6);
  v7 = self;
  v8 = AssetPack.download(for:)(0, 1);
  sub_236E39414(v6);

  return v8;
}

- (id)downloadForContentRequest:(int64_t)a3
{
  v5 = type metadata accessor for AssetPack(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236E393B0(*(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) + OBJC_IVAR____TtCE16BackgroundAssetsCSo11BAAssetPackP33_FC678A7B1B18D835D2D983742E3D211216AssetPackWrapper_assetPack, v8);
  v9 = self;
  v10 = AssetPack.download(for:)(a3, 0);
  sub_236E39414(v8);

  return v10;
}

- (id)init:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___BAAssetPack_assetPackWrapper) = a3;
  v5.receiver = self;
  v5.super_class = BAAssetPack;
  v3 = a3;
  return [(BAAssetPack *)&v5 init];
}

- (BAAssetPack)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end