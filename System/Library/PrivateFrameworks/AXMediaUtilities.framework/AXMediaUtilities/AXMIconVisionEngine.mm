@interface AXMIconVisionEngine
+ (id)sharedInstance;
- (AXMBrailleEdgesDetectorNode)brailleEdgeDetector;
- (AXMIconClassDetectorNode)iconClassDetector;
- (AXMIconVisionEngine)initWithIdentifier:(id)identifier;
- (AXMImageNode)imageNode;
- (id)classifyImages:(id)images withTimeout:(double)timeout;
@end

@implementation AXMIconVisionEngine

- (AXMIconVisionEngine)initWithIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = AXMIconVisionEngine;
  v3 = [(AXMVisionEngine *)&v8 initWithIdentifier:identifier];
  if (v3)
  {
    if ([(AXMVisionEngine *)v3 canAddSourceNodeClass:objc_opt_class()])
    {
      v4 = [(AXMVisionEngineNode *)[AXMImageNode alloc] initWithIdentifier:@"image"];
      [(AXMVisionEngine *)v3 addSourceNode:v4];
      [(AXMIconVisionEngine *)v3 setImageNode:v4];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v5 = [(AXMMobileAssetEvaluationNode *)[AXMIconClassDetectorNode alloc] initWithIdentifier:@"iconClass"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v5];
      [(AXMIconVisionEngine *)v3 setIconClassDetector:v5];
    }

    if ([(AXMVisionEngine *)v3 canAddEvaluationNodeClass:objc_opt_class()])
    {
      v6 = [(AXMVisionEngineNode *)[AXMBrailleEdgesDetectorNode alloc] initWithIdentifier:@"brailleEdges"];
      [(AXMVisionEngine *)v3 addEvaluationNode:v6];
      [(AXMIconVisionEngine *)v3 setBrailleEdgeDetector:v6];
    }
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AXMIconVisionEngine_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance__instance;

  return v2;
}

void __37__AXMIconVisionEngine_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithIdentifier:@"SharedIconVision"];
  v2 = sharedInstance__instance;
  sharedInstance__instance = v1;
}

- (id)classifyImages:(id)images withTimeout:(double)timeout
{
  v36 = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = 0;
  imagesCopy = images;
  if ([imagesCopy count])
  {
    v6 = dispatch_group_create();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = imagesCopy;
    v7 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v7)
    {
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [MEMORY[0x1E695F658] imageWithData:v10];
          v12 = objc_alloc_init(AXMVisionAnalysisOptions);
          [(AXMVisionAnalysisOptions *)v12 setDetectIconClass:1];
          imageNode = [(AXMIconVisionEngine *)self imageNode];
          [imageNode setShouldProcessRemotely:1];

          dispatch_group_enter(v6);
          imageNode2 = [(AXMIconVisionEngine *)self imageNode];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __50__AXMIconVisionEngine_classifyImages_withTimeout___block_invoke;
          v20[3] = &unk_1E7A1D188;
          v22 = v34;
          v23 = &v28;
          v21 = v6;
          [imageNode2 triggerWithImage:v11 options:v12 cacheKey:v10 resultHandler:v20];
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v7);
    }

    v15 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_group_wait(v6, v15);
  }

  v16 = v29[5];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(v34, 8);

  return v16;
}

void __50__AXMIconVisionEngine_classifyImages_withTimeout___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [a2 features];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 value];
        if ([v9 length])
        {
          [v8 confidence];
          v11 = v10;
          v12 = *(*(*(a1 + 40) + 8) + 24);

          if (v11 > v12)
          {
            v13 = [v8 value];
            v14 = *(*(a1 + 48) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;

            [v8 confidence];
            *(*(*(a1 + 40) + 8) + 24) = v16;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (AXMImageNode)imageNode
{
  WeakRetained = objc_loadWeakRetained(&self->_imageNode);

  return WeakRetained;
}

- (AXMIconClassDetectorNode)iconClassDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_iconClassDetector);

  return WeakRetained;
}

- (AXMBrailleEdgesDetectorNode)brailleEdgeDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_brailleEdgeDetector);

  return WeakRetained;
}

@end