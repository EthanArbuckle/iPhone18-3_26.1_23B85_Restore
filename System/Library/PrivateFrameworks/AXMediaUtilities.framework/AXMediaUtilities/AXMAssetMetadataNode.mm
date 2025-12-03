@interface AXMAssetMetadataNode
- (void)triggerWithAssetURL:(id)l cacheKey:(id)key resultHandler:(id)handler;
@end

@implementation AXMAssetMetadataNode

- (void)triggerWithAssetURL:(id)l cacheKey:(id)key resultHandler:(id)handler
{
  v19[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  keyCopy = key;
  handlerCopy = handler;
  v18[0] = @"sourceProvidesResults";
  v18[1] = @"diagnosticsEnabled";
  v19[0] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v19[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v13 = +[AXMVisionAnalysisOptions defaultOptions];
  v14 = [AXMVisionPipelineContext contextWithSourceParameters:v12 options:v13];

  [v14 setShouldCallCompletionHandlersForEngineBusyError:1];
  if (lCopy)
  {
    v15 = [AXMVisionFeatureAssetMetadata assetMetadataFromURL:lCopy];
    v16 = [AXMVisionFeature featureWithAssetMetadata:v15];
    if (v16)
    {
      [v14 appendFeature:v16];
    }
  }

  v17.receiver = self;
  v17.super_class = AXMAssetMetadataNode;
  [(AXMSourceNode *)&v17 triggerWithContext:v14 cacheKey:keyCopy resultHandler:handlerCopy];
}

@end