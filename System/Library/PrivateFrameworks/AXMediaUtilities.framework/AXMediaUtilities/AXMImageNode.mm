@interface AXMImageNode
- (void)triggerWithImage:(id)image options:(id)options cacheKey:(id)key resultHandler:(id)handler;
- (void)triggerWithImage:(id)image photoLibraryURL:(id)l options:(id)options cacheKey:(id)key resultHandler:(id)handler;
- (void)triggerWithImageAssetLocalIdentifier:(id)identifier photoLibraryURL:(id)l options:(id)options cacheKey:(id)key resultHandler:(id)handler;
- (void)triggerWithImageAssetLocalIdentifier:(id)identifier photoLibraryURL:(id)l usePHAsset:(BOOL)asset options:(id)options cacheKey:(id)key resultHandler:(id)handler;
- (void)triggerWithImageURL:(id)l assetLocalIdentifier:(id)identifier photoLibraryURL:(id)rL options:(id)options cacheKey:(id)key resultHandler:(id)handler;
- (void)triggerWithImageURL:(id)l options:(id)options cacheKey:(id)key resultHandler:(id)handler;
- (void)triggerWithPixelBuffer:(__CVBuffer *)buffer exifOrientation:(unsigned int)orientation options:(id)options cacheKey:(id)key resultHandler:(id)handler;
@end

@implementation AXMImageNode

id __29__AXMImageNode_produceImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"input"];
  if ([v5 inputType] == 2)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v5 URL];
    v8 = [v7 path];
    if (v8)
    {
      v9 = [v5 URL];
      v10 = [v9 path];
      v11 = [v6 fileExistsAtPath:v10] ^ 1;
    }

    else
    {
      v11 = 1;
    }

    if (a3 && v11)
    {
      v12 = [v5 URL];
      v13 = [v12 path];
      *a3 = _AXMMakeError(0, @"Input file URL does not exist: %@", v14, v15, v16, v17, v18, v19, v13);
    }
  }

  v20 = [v4 objectForKeyedSubscript:@"input"];

  return v20;
}

- (void)triggerWithImage:(id)image options:(id)options cacheKey:(id)key resultHandler:(id)handler
{
  v20[2] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  optionsCopy = options;
  keyCopy = key;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    optionsCopy = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v14 = [AXMPipelineContextInput inputWithCIImage:imageCopy];
  v19[0] = @"input";
  v19[1] = @"diagnosticsEnabled";
  v20[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v20[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17 = [AXMVisionPipelineContext contextWithSourceParameters:v16 options:optionsCopy];

  [v17 setShouldCallCompletionHandlersForEngineBusyError:1];
  v18.receiver = self;
  v18.super_class = AXMImageNode;
  [(AXMSourceNode *)&v18 triggerWithContext:v17 cacheKey:keyCopy resultHandler:handlerCopy];
}

- (void)triggerWithImageURL:(id)l assetLocalIdentifier:(id)identifier photoLibraryURL:(id)rL options:(id)options cacheKey:(id)key resultHandler:(id)handler
{
  v29[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  rLCopy = rL;
  optionsCopy = options;
  keyCopy = key;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    optionsCopy = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v18 = [AXMPipelineContextInput inputWithURL:lCopy photoLibraryURL:rLCopy];
  v28[0] = @"input";
  v28[1] = @"diagnosticsEnabled";
  v29[0] = v18;
  selfCopy = self;
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v29[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v22 = [AXMVisionPipelineContext contextWithSourceParameters:v21 options:optionsCopy];

  [v22 setShouldCallCompletionHandlersForEngineBusyError:1];
  v23 = [AXMVisionFeatureAssetMetadata assetMetadataFromURL:lCopy localIdentifier:identifierCopy photoLibraryURL:rLCopy];
  v24 = [AXMVisionFeature featureWithAssetMetadata:v23];
  if (v24)
  {
    [v22 appendFeature:v24];
  }

  v27.receiver = selfCopy;
  v27.super_class = AXMImageNode;
  [(AXMSourceNode *)&v27 triggerWithContext:v22 cacheKey:keyCopy resultHandler:handlerCopy];
}

- (void)triggerWithImageURL:(id)l options:(id)options cacheKey:(id)key resultHandler:(id)handler
{
  v22[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  keyCopy = key;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    optionsCopy = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v14 = [AXMPipelineContextInput inputWithURL:lCopy];
  v21[0] = @"input";
  v21[1] = @"diagnosticsEnabled";
  v22[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v22[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v17 = [AXMVisionPipelineContext contextWithSourceParameters:v16 options:optionsCopy];

  [v17 setShouldCallCompletionHandlersForEngineBusyError:1];
  v18 = [AXMVisionFeatureAssetMetadata assetMetadataFromURL:lCopy];
  v19 = [AXMVisionFeature featureWithAssetMetadata:v18];
  if (v19)
  {
    [v17 appendFeature:v19];
  }

  v20.receiver = self;
  v20.super_class = AXMImageNode;
  [(AXMSourceNode *)&v20 triggerWithContext:v17 cacheKey:keyCopy resultHandler:handlerCopy];
}

- (void)triggerWithPixelBuffer:(__CVBuffer *)buffer exifOrientation:(unsigned int)orientation options:(id)options cacheKey:(id)key resultHandler:(id)handler
{
  v9 = *&orientation;
  v22[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  keyCopy = key;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    optionsCopy = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v15 = [AXMPixelBufferWrapper wrapperWithPixelBuffer:buffer orientation:v9];
  v16 = [AXMPipelineContextInput inputWithPixelBuffer:v15];
  v21[0] = @"input";
  v21[1] = @"diagnosticsEnabled";
  v22[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v22[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [AXMVisionPipelineContext contextWithSourceParameters:v18 options:optionsCopy];

  [v19 setShouldCallCompletionHandlersForEngineBusyError:1];
  v20.receiver = self;
  v20.super_class = AXMImageNode;
  [(AXMSourceNode *)&v20 triggerWithContext:v19 cacheKey:keyCopy resultHandler:handlerCopy];
}

- (void)triggerWithImage:(id)image photoLibraryURL:(id)l options:(id)options cacheKey:(id)key resultHandler:(id)handler
{
  v23[2] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  lCopy = l;
  optionsCopy = options;
  keyCopy = key;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    optionsCopy = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v17 = [AXMPipelineContextInput inputWithCIImage:imageCopy photoLibraryURL:lCopy];
  v22[0] = @"input";
  v22[1] = @"diagnosticsEnabled";
  v23[0] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v23[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v20 = [AXMVisionPipelineContext contextWithSourceParameters:v19 options:optionsCopy];

  [v20 setShouldCallCompletionHandlersForEngineBusyError:1];
  v21.receiver = self;
  v21.super_class = AXMImageNode;
  [(AXMSourceNode *)&v21 triggerWithContext:v20 cacheKey:keyCopy resultHandler:handlerCopy];
}

- (void)triggerWithImageAssetLocalIdentifier:(id)identifier photoLibraryURL:(id)l options:(id)options cacheKey:(id)key resultHandler:(id)handler
{
  v34[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  optionsCopy = options;
  keyCopy = key;
  handlerCopy = handler;
  if (!optionsCopy)
  {
    optionsCopy = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v15 = [[AXMPhotoAssetData alloc] initWithImageAssetLocalIdentifier:identifierCopy photoLibraryURL:lCopy allowsNetworkAccess:0 needsImageData:1];
  v16 = objc_alloc(MEMORY[0x1E695F658]);
  imageData = [(AXMPhotoAssetData *)v15 imageData];
  v18 = [v16 initWithData:imageData];

  v19 = [v18 imageByApplyingOrientation:{-[AXMPhotoAssetData orientation](v15, "orientation")}];

  v29 = v19;
  v20 = [AXMPipelineContextInput inputWithCIImage:v19 photoLibraryURL:lCopy];
  v33[0] = @"input";
  v33[1] = @"diagnosticsEnabled";
  v34[0] = v20;
  selfCopy = self;
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v34[1] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v24 = [AXMVisionPipelineContext contextWithSourceParameters:v23 options:optionsCopy];

  [v24 setShouldCallCompletionHandlersForEngineBusyError:1];
  creationDate = [(AXMPhotoAssetData *)v15 creationDate];
  v26 = [(AXMPhotoAssetData *)v15 UTI];
  v27 = [AXMVisionFeatureAssetMetadata assetMetadataWithLocalIdentifier:identifierCopy photoLibraryURL:lCopy creationDate:creationDate UTI:v26];

  v28 = [AXMVisionFeature featureWithAssetMetadata:v27];
  if (v28)
  {
    [v24 appendFeature:v28];
  }

  v32.receiver = selfCopy;
  v32.super_class = AXMImageNode;
  [(AXMSourceNode *)&v32 triggerWithContext:v24 cacheKey:keyCopy resultHandler:handlerCopy];
}

- (void)triggerWithImageAssetLocalIdentifier:(id)identifier photoLibraryURL:(id)l usePHAsset:(BOOL)asset options:(id)options cacheKey:(id)key resultHandler:(id)handler
{
  v33[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  lCopy = l;
  optionsCopy = options;
  keyCopy = key;
  handlerCopy = handler;
  if (asset)
  {
    v28 = keyCopy;
    if (!optionsCopy)
    {
      optionsCopy = +[AXMVisionAnalysisOptions defaultOptions];
    }

    v19 = [[AXMPhotoAssetData alloc] initWithImageAssetLocalIdentifier:identifierCopy photoLibraryURL:lCopy allowsNetworkAccess:0 needsImageData:0];
    v27 = [AXMPipelineContextInput inputWithPHAssetLocalIdentifier:identifierCopy photoLibraryURL:lCopy];
    v32[0] = @"input";
    v32[1] = @"diagnosticsEnabled";
    v33[0] = v27;
    selfCopy = self;
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
    v33[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v22 = [AXMVisionPipelineContext contextWithSourceParameters:v21 options:optionsCopy];

    [v22 setShouldCallCompletionHandlersForEngineBusyError:1];
    creationDate = [(AXMPhotoAssetData *)v19 creationDate];
    v29 = v19;
    v24 = [(AXMPhotoAssetData *)v19 UTI];
    v25 = [AXMVisionFeatureAssetMetadata assetMetadataWithLocalIdentifier:identifierCopy photoLibraryURL:lCopy creationDate:creationDate UTI:v24];

    v26 = [AXMVisionFeature featureWithAssetMetadata:v25];
    if (v26)
    {
      [v22 appendFeature:v26];
    }

    v31.receiver = selfCopy;
    v31.super_class = AXMImageNode;
    keyCopy = v28;
    [(AXMSourceNode *)&v31 triggerWithContext:v22 cacheKey:v28 resultHandler:handlerCopy];
  }

  else
  {
    [(AXMImageNode *)self triggerWithImageAssetLocalIdentifier:identifierCopy photoLibraryURL:lCopy options:optionsCopy cacheKey:keyCopy resultHandler:handlerCopy];
  }
}

@end