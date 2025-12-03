@interface AXMCameraMetadataNode
- (void)triggerWithCameraType:(int64_t)type cacheKey:(id)key resultHandler:(id)handler;
@end

@implementation AXMCameraMetadataNode

- (void)triggerWithCameraType:(int64_t)type cacheKey:(id)key resultHandler:(id)handler
{
  v17[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  keyCopy = key;
  v10 = +[AXMVisionAnalysisOptions defaultOptions];
  v16[0] = @"sourceProvidesResults";
  v16[1] = @"diagnosticsEnabled";
  v17[0] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [AXMVisionPipelineContext contextWithSourceParameters:v12 options:v10];

  v14 = [AXMVisionFeature featureWithCameraType:type];
  [v13 appendFeature:v14];
  v15.receiver = self;
  v15.super_class = AXMCameraMetadataNode;
  [(AXMSourceNode *)&v15 triggerWithContext:v13 cacheKey:keyCopy resultHandler:handlerCopy];
}

@end