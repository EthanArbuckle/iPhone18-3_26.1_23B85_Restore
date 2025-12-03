@interface VNModelCatalogBridgingInterface
- (id)foregroundBackgroundSegmentationModelBundleURLWithError:(id *)error;
- (void)downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:(id)handler;
@end

@implementation VNModelCatalogBridgingInterface

- (id)foregroundBackgroundSegmentationModelBundleURLWithError:(id *)error
{
  v4 = objc_alloc_init(_TtC19ModelCatalogWrapper19ModelCatalogWrapper);
  v5 = [(ModelCatalogWrapper *)v4 foregroundBackgroundSegmentationModelBundleURLAndReturnError:error];

  return v5;
}

- (void)downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc_init(_TtC19ModelCatalogWrapper19ModelCatalogWrapper);
  [(ModelCatalogWrapper *)v4 downloadForegroundBackgroundSegmentationModelBundleWithCompletionHandler:handlerCopy];
}

@end