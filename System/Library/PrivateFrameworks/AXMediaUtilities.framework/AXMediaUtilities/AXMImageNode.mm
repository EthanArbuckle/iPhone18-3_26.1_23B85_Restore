@interface AXMImageNode
- (void)triggerWithImage:(id)a3 options:(id)a4 cacheKey:(id)a5 resultHandler:(id)a6;
- (void)triggerWithImage:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 cacheKey:(id)a6 resultHandler:(id)a7;
- (void)triggerWithImageAssetLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 cacheKey:(id)a6 resultHandler:(id)a7;
- (void)triggerWithImageAssetLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 usePHAsset:(BOOL)a5 options:(id)a6 cacheKey:(id)a7 resultHandler:(id)a8;
- (void)triggerWithImageURL:(id)a3 assetLocalIdentifier:(id)a4 photoLibraryURL:(id)a5 options:(id)a6 cacheKey:(id)a7 resultHandler:(id)a8;
- (void)triggerWithImageURL:(id)a3 options:(id)a4 cacheKey:(id)a5 resultHandler:(id)a6;
- (void)triggerWithPixelBuffer:(__CVBuffer *)a3 exifOrientation:(unsigned int)a4 options:(id)a5 cacheKey:(id)a6 resultHandler:(id)a7;
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

- (void)triggerWithImage:(id)a3 options:(id)a4 cacheKey:(id)a5 resultHandler:(id)a6
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v11 = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v14 = [AXMPipelineContextInput inputWithCIImage:v10];
  v19[0] = @"input";
  v19[1] = @"diagnosticsEnabled";
  v20[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v20[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17 = [AXMVisionPipelineContext contextWithSourceParameters:v16 options:v11];

  [v17 setShouldCallCompletionHandlersForEngineBusyError:1];
  v18.receiver = self;
  v18.super_class = AXMImageNode;
  [(AXMSourceNode *)&v18 triggerWithContext:v17 cacheKey:v12 resultHandler:v13];
}

- (void)triggerWithImageURL:(id)a3 assetLocalIdentifier:(id)a4 photoLibraryURL:(id)a5 options:(id)a6 cacheKey:(id)a7 resultHandler:(id)a8
{
  v29[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v26 = a7;
  v25 = a8;
  if (!v17)
  {
    v17 = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v18 = [AXMPipelineContextInput inputWithURL:v14 photoLibraryURL:v16];
  v28[0] = @"input";
  v28[1] = @"diagnosticsEnabled";
  v29[0] = v18;
  v19 = self;
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v29[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v22 = [AXMVisionPipelineContext contextWithSourceParameters:v21 options:v17];

  [v22 setShouldCallCompletionHandlersForEngineBusyError:1];
  v23 = [AXMVisionFeatureAssetMetadata assetMetadataFromURL:v14 localIdentifier:v15 photoLibraryURL:v16];
  v24 = [AXMVisionFeature featureWithAssetMetadata:v23];
  if (v24)
  {
    [v22 appendFeature:v24];
  }

  v27.receiver = v19;
  v27.super_class = AXMImageNode;
  [(AXMSourceNode *)&v27 triggerWithContext:v22 cacheKey:v26 resultHandler:v25];
}

- (void)triggerWithImageURL:(id)a3 options:(id)a4 cacheKey:(id)a5 resultHandler:(id)a6
{
  v22[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v11 = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v14 = [AXMPipelineContextInput inputWithURL:v10];
  v21[0] = @"input";
  v21[1] = @"diagnosticsEnabled";
  v22[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v22[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v17 = [AXMVisionPipelineContext contextWithSourceParameters:v16 options:v11];

  [v17 setShouldCallCompletionHandlersForEngineBusyError:1];
  v18 = [AXMVisionFeatureAssetMetadata assetMetadataFromURL:v10];
  v19 = [AXMVisionFeature featureWithAssetMetadata:v18];
  if (v19)
  {
    [v17 appendFeature:v19];
  }

  v20.receiver = self;
  v20.super_class = AXMImageNode;
  [(AXMSourceNode *)&v20 triggerWithContext:v17 cacheKey:v12 resultHandler:v13];
}

- (void)triggerWithPixelBuffer:(__CVBuffer *)a3 exifOrientation:(unsigned int)a4 options:(id)a5 cacheKey:(id)a6 resultHandler:(id)a7
{
  v9 = *&a4;
  v22[2] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!v12)
  {
    v12 = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v15 = [AXMPixelBufferWrapper wrapperWithPixelBuffer:a3 orientation:v9];
  v16 = [AXMPipelineContextInput inputWithPixelBuffer:v15];
  v21[0] = @"input";
  v21[1] = @"diagnosticsEnabled";
  v22[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v22[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [AXMVisionPipelineContext contextWithSourceParameters:v18 options:v12];

  [v19 setShouldCallCompletionHandlersForEngineBusyError:1];
  v20.receiver = self;
  v20.super_class = AXMImageNode;
  [(AXMSourceNode *)&v20 triggerWithContext:v19 cacheKey:v13 resultHandler:v14];
}

- (void)triggerWithImage:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 cacheKey:(id)a6 resultHandler:(id)a7
{
  v23[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v14)
  {
    v14 = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v17 = [AXMPipelineContextInput inputWithCIImage:v12 photoLibraryURL:v13];
  v22[0] = @"input";
  v22[1] = @"diagnosticsEnabled";
  v23[0] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v23[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v20 = [AXMVisionPipelineContext contextWithSourceParameters:v19 options:v14];

  [v20 setShouldCallCompletionHandlersForEngineBusyError:1];
  v21.receiver = self;
  v21.super_class = AXMImageNode;
  [(AXMSourceNode *)&v21 triggerWithContext:v20 cacheKey:v15 resultHandler:v16];
}

- (void)triggerWithImageAssetLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 cacheKey:(id)a6 resultHandler:(id)a7
{
  v34[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v31 = a6;
  v30 = a7;
  if (!v14)
  {
    v14 = +[AXMVisionAnalysisOptions defaultOptions];
  }

  v15 = [[AXMPhotoAssetData alloc] initWithImageAssetLocalIdentifier:v12 photoLibraryURL:v13 allowsNetworkAccess:0 needsImageData:1];
  v16 = objc_alloc(MEMORY[0x1E695F658]);
  v17 = [(AXMPhotoAssetData *)v15 imageData];
  v18 = [v16 initWithData:v17];

  v19 = [v18 imageByApplyingOrientation:{-[AXMPhotoAssetData orientation](v15, "orientation")}];

  v29 = v19;
  v20 = [AXMPipelineContextInput inputWithCIImage:v19 photoLibraryURL:v13];
  v33[0] = @"input";
  v33[1] = @"diagnosticsEnabled";
  v34[0] = v20;
  v21 = self;
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
  v34[1] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v24 = [AXMVisionPipelineContext contextWithSourceParameters:v23 options:v14];

  [v24 setShouldCallCompletionHandlersForEngineBusyError:1];
  v25 = [(AXMPhotoAssetData *)v15 creationDate];
  v26 = [(AXMPhotoAssetData *)v15 UTI];
  v27 = [AXMVisionFeatureAssetMetadata assetMetadataWithLocalIdentifier:v12 photoLibraryURL:v13 creationDate:v25 UTI:v26];

  v28 = [AXMVisionFeature featureWithAssetMetadata:v27];
  if (v28)
  {
    [v24 appendFeature:v28];
  }

  v32.receiver = v21;
  v32.super_class = AXMImageNode;
  [(AXMSourceNode *)&v32 triggerWithContext:v24 cacheKey:v31 resultHandler:v30];
}

- (void)triggerWithImageAssetLocalIdentifier:(id)a3 photoLibraryURL:(id)a4 usePHAsset:(BOOL)a5 options:(id)a6 cacheKey:(id)a7 resultHandler:(id)a8
{
  v33[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (a5)
  {
    v28 = v17;
    if (!v16)
    {
      v16 = +[AXMVisionAnalysisOptions defaultOptions];
    }

    v19 = [[AXMPhotoAssetData alloc] initWithImageAssetLocalIdentifier:v14 photoLibraryURL:v15 allowsNetworkAccess:0 needsImageData:0];
    v27 = [AXMPipelineContextInput inputWithPHAssetLocalIdentifier:v14 photoLibraryURL:v15];
    v32[0] = @"input";
    v32[1] = @"diagnosticsEnabled";
    v33[0] = v27;
    v30 = self;
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
    v33[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v22 = [AXMVisionPipelineContext contextWithSourceParameters:v21 options:v16];

    [v22 setShouldCallCompletionHandlersForEngineBusyError:1];
    v23 = [(AXMPhotoAssetData *)v19 creationDate];
    v29 = v19;
    v24 = [(AXMPhotoAssetData *)v19 UTI];
    v25 = [AXMVisionFeatureAssetMetadata assetMetadataWithLocalIdentifier:v14 photoLibraryURL:v15 creationDate:v23 UTI:v24];

    v26 = [AXMVisionFeature featureWithAssetMetadata:v25];
    if (v26)
    {
      [v22 appendFeature:v26];
    }

    v31.receiver = v30;
    v31.super_class = AXMImageNode;
    v17 = v28;
    [(AXMSourceNode *)&v31 triggerWithContext:v22 cacheKey:v28 resultHandler:v18];
  }

  else
  {
    [(AXMImageNode *)self triggerWithImageAssetLocalIdentifier:v14 photoLibraryURL:v15 options:v16 cacheKey:v17 resultHandler:v18];
  }
}

@end