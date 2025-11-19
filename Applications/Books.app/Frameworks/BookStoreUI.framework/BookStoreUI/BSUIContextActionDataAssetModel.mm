@interface BSUIContextActionDataAssetModel
- (BSUIContextActionDataAssetModel)init;
- (BSUIContextActionDataAssetModel)initWithAdamID:(id)a3;
- (BSUIContextActionDataAssetModel)initWithLibraryAsset:(id)a3 productProfile:(id)a4;
@end

@implementation BSUIContextActionDataAssetModel

- (BSUIContextActionDataAssetModel)initWithAdamID:(id)a3
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

- (BSUIContextActionDataAssetModel)initWithLibraryAsset:(id)a3 productProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  return ContextActionDataModel.Asset.init(libraryAsset:productProfile:)(v5, a4);
}

- (BSUIContextActionDataAssetModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end