@interface BAAssetPackManifest
- (BAAssetPackManifest)init;
- (BAAssetPackManifest)initWithContentsOfURL:(id)a3 applicationGroupIdentifier:(id)a4 error:(id *)a5;
- (NSSet)assetPacks;
- (id)allDownloads;
- (id)allDownloadsForContentRequest:(int64_t)a3;
- (id)initFromData:(id)a3 applicationGroupIdentifier:(id)a4 error:(id *)a5;
@end

@implementation BAAssetPackManifest

- (NSSet)assetPacks
{
  v2 = *(&self->super.isa + OBJC_IVAR___BAAssetPackManifest_manifest);
  v3 = self;
  v4 = sub_236E70B04(sub_236E74CAC, 0, v2);
  sub_236E56E2C(v4);

  type metadata accessor for BAAssetPack();
  sub_236E755C4(&qword_27DE88000, type metadata accessor for BAAssetPack);
  v5 = sub_236E82094();

  return v5;
}

- (BAAssetPackManifest)initWithContentsOfURL:(id)a3 applicationGroupIdentifier:(id)a4 error:(id *)a5
{
  v6 = sub_236E819F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_236E819C4();
  v14 = sub_236E81E94();
  v16 = v15;
  (*(v7 + 16))(v11, v13, v6);
  AssetPackManifest.init(contentsOf:appGroupID:)(v11, v14, v16, v23);
  v17 = v23[0].n128_u8[8];
  v18 = (self + OBJC_IVAR___BAAssetPackManifest_manifest);
  v18->n128_u64[0] = v23[0].n128_u64[0];
  v18->n128_u8[8] = v17;
  v18[1] = v23[1];
  v22.receiver = self;
  v22.super_class = BAAssetPackManifest;
  v19 = [(BAAssetPackManifest *)&v22 init];
  (*(v7 + 8))(v13, v6);
  return v19;
}

- (id)initFromData:(id)a3 applicationGroupIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_236E81A34();
  v11 = v10;

  v12 = sub_236E81E94();
  v14 = v13;

  sub_236E59298(v9, v11);
  AssetPackManifest.init(from:appGroupID:)(v9, v11, v12, v14, &v20);
  v15 = v21;
  v16 = self + OBJC_IVAR___BAAssetPackManifest_manifest;
  *v16 = v20;
  v16[8] = v15;
  *(v16 + 1) = v22;
  v19.receiver = self;
  v19.super_class = BAAssetPackManifest;
  v17 = [(BAAssetPackManifest *)&v19 init];
  sub_236E38C74(v9, v11);
  return v17;
}

- (id)allDownloads
{
  v2 = *(&self->super.isa + OBJC_IVAR___BAAssetPackManifest_manifest);
  v3 = self;
  v4 = sub_236E705A8(v2);
  sub_236E56F8C(v4);

  sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
  sub_236E3AA4C();
  v5 = sub_236E82094();

  return v5;
}

- (id)allDownloadsForContentRequest:(int64_t)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___BAAssetPackManifest_manifest);
  v5 = self;
  v6 = sub_236E70854(v4, a3);
  sub_236E56F8C(v6);

  sub_236E588C4(0, &qword_27DE88510, off_278A0CA20);
  sub_236E3AA4C();
  v7 = sub_236E82094();

  return v7;
}

- (BAAssetPackManifest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end