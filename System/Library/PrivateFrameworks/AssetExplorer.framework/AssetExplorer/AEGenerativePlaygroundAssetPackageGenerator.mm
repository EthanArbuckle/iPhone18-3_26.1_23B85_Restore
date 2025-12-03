@interface AEGenerativePlaygroundAssetPackageGenerator
- (id)generatePackageFromGenerativePlaygroundAsset:(id)asset;
@end

@implementation AEGenerativePlaygroundAssetPackageGenerator

- (id)generatePackageFromGenerativePlaygroundAsset:(id)asset
{
  assetCopy = asset;
  v4 = [AEMutableAssetPackage alloc];
  identifier = [assetCopy identifier];
  v6 = [(AEMutableAssetPackage *)v4 initWithAssetIdentifier:identifier];

  imageURLWrapper = [assetCopy imageURLWrapper];
  v8 = [imageURLWrapper url];
  identifier2 = [*MEMORY[0x277CE1DB0] identifier];
  [(AEMutableAssetPackage *)v6 storeURL:v8 forType:identifier2];

  previewImage = [assetCopy previewImage];
  [(AEMutableAssetPackage *)v6 setSidecarObject:previewImage forKey:@"com.apple.assetexplorer.asset-preview-image"];

  recipeData = [assetCopy recipeData];
  underlyingData = [recipeData underlyingData];
  [(AEMutableAssetPackage *)v6 setSidecarObject:underlyingData forKey:@"com.apple.assetexplorer.generatedimagerecipe"];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pixelWidth = [assetCopy pixelWidth];
  [v13 setValue:pixelWidth forKey:@"AEAssetPackageDisplayPixelWidth"];

  pixelHeight = [assetCopy pixelHeight];
  [v13 setValue:pixelHeight forKey:@"AEAssetPackageDisplayPixelHeight"];

  creationDate = [assetCopy creationDate];

  [v13 setValue:creationDate forKey:@"AEAssetPackageDisplayCreationDate"];
  [v13 setValue:&unk_2852F95C0 forKey:@"AEAssetPackageDisplayMediaType"];
  [v13 setValue:&unk_2852F95D8 forKey:@"AEAssetPackageDisplayPlaybackStyle"];
  [(AEMutableAssetPackage *)v6 addSidecarEntriesFromDictionary:v13];

  return v6;
}

@end