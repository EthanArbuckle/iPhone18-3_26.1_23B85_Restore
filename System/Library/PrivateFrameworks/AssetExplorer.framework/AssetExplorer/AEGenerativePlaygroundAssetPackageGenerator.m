@interface AEGenerativePlaygroundAssetPackageGenerator
- (id)generatePackageFromGenerativePlaygroundAsset:(id)a3;
@end

@implementation AEGenerativePlaygroundAssetPackageGenerator

- (id)generatePackageFromGenerativePlaygroundAsset:(id)a3
{
  v3 = a3;
  v4 = [AEMutableAssetPackage alloc];
  v5 = [v3 identifier];
  v6 = [(AEMutableAssetPackage *)v4 initWithAssetIdentifier:v5];

  v7 = [v3 imageURLWrapper];
  v8 = [v7 url];
  v9 = [*MEMORY[0x277CE1DB0] identifier];
  [(AEMutableAssetPackage *)v6 storeURL:v8 forType:v9];

  v10 = [v3 previewImage];
  [(AEMutableAssetPackage *)v6 setSidecarObject:v10 forKey:@"com.apple.assetexplorer.asset-preview-image"];

  v11 = [v3 recipeData];
  v12 = [v11 underlyingData];
  [(AEMutableAssetPackage *)v6 setSidecarObject:v12 forKey:@"com.apple.assetexplorer.generatedimagerecipe"];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [v3 pixelWidth];
  [v13 setValue:v14 forKey:@"AEAssetPackageDisplayPixelWidth"];

  v15 = [v3 pixelHeight];
  [v13 setValue:v15 forKey:@"AEAssetPackageDisplayPixelHeight"];

  v16 = [v3 creationDate];

  [v13 setValue:v16 forKey:@"AEAssetPackageDisplayCreationDate"];
  [v13 setValue:&unk_2852F95C0 forKey:@"AEAssetPackageDisplayMediaType"];
  [v13 setValue:&unk_2852F95D8 forKey:@"AEAssetPackageDisplayPlaybackStyle"];
  [(AEMutableAssetPackage *)v6 addSidecarEntriesFromDictionary:v13];

  return v6;
}

@end