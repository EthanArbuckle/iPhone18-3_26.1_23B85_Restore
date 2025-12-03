@interface BSUIContextActionDataAssetModel
- (BSUIContextActionDataAssetModel)init;
- (BSUIContextActionDataAssetModel)initWithAdamID:(id)d;
- (BSUIContextActionDataAssetModel)initWithLibraryAsset:(id)asset productProfile:(id)profile;
@end

@implementation BSUIContextActionDataAssetModel

- (BSUIContextActionDataAssetModel)initWithAdamID:(id)d
{
  v4 = sub_2C58C8();
  v5 = self + OBJC_IVAR___BSUIContextActionDataAssetModel_initType;
  *v5 = v4;
  *(v5 + 1) = v6;
  v5[40] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContextActionDataModel.Asset();
  return [(BSUIContextActionDataAssetModel *)&v8 init];
}

- (BSUIContextActionDataAssetModel)initWithLibraryAsset:(id)asset productProfile:(id)profile
{
  assetCopy = asset;
  profileCopy = profile;
  return ContextActionDataModel.Asset.init(libraryAsset:productProfile:)(assetCopy, profile);
}

- (BSUIContextActionDataAssetModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end