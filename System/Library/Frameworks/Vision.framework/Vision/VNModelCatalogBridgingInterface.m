@interface VNModelCatalogBridgingInterface
- (id)foregroundBackgroundSegmentationModelBundleURLWithError:(id *)a3;
- (void)downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:(id)a3;
@end

@implementation VNModelCatalogBridgingInterface

- (id)foregroundBackgroundSegmentationModelBundleURLWithError:(id *)a3
{
  v4 = objc_alloc_init(_TtC19ModelCatalogWrapper19ModelCatalogWrapper);
  v5 = [(ModelCatalogWrapper *)v4 foregroundBackgroundSegmentationModelBundleURLAndReturnError:a3];

  return v5;
}

- (void)downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_TtC19ModelCatalogWrapper19ModelCatalogWrapper);
  [(ModelCatalogWrapper *)v4 downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:v3];
}

@end