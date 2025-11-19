@interface AXPhotosVisionEngine
+ (id)sharedEngine;
- (AXPhotosVisionEngine)init;
- (void)analyzeImage:(id)a3 completion:(id)a4;
@end

@implementation AXPhotosVisionEngine

+ (id)sharedEngine
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __36__AXPhotosVisionEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedEngine_onceToken != -1)
  {
    dispatch_once(&sharedEngine_onceToken, block);
  }

  v2 = sharedEngine_sharedVisionEngine;

  return v2;
}

uint64_t __36__AXPhotosVisionEngine_sharedEngine__block_invoke(uint64_t a1)
{
  sharedEngine_sharedVisionEngine = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

- (AXPhotosVisionEngine)init
{
  v9.receiver = self;
  v9.super_class = AXPhotosVisionEngine;
  v2 = [(AXPhotosVisionEngine *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x29EDBD768]) initWithIdentifier:@"ImageTest"];
    [v3 setMaximumQueueSize:1000];
    [v3 setDiagnosticsEnabled:0];
    [(AXPhotosVisionEngine *)v2 setEngine:v3];
    v4 = [objc_alloc(MEMORY[0x29EDBD748]) initWithIdentifier:@"imageNode"];
    [v3 addSourceNode:v4];
    [(AXPhotosVisionEngine *)v2 setImageNode:v4];
    v5 = [(AXPhotosVisionEngine *)v2 engine];
    v6 = [v5 canAddEvaluationNodeClass:objc_opt_class()];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x29EDBD730]) initWithIdentifier:@"face"];
      [v3 addEvaluationNode:v7];
      [(AXPhotosVisionEngine *)v2 setFaceNode:v7];
    }
  }

  return v2;
}

- (void)analyzeImage:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = MEMORY[0x29EDB9178];
    v8 = a3;
    v9 = [[v7 alloc] initWithImage:v8];

    v10 = [MEMORY[0x29EDBD760] voiceOverOptions];
    [v10 setDetectText:0];
    [v10 setDetectFaceLandmarks:0];
    v11 = [(AXPhotosVisionEngine *)self imageNode];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __48__AXPhotosVisionEngine_analyzeImage_completion___block_invoke;
    v12[3] = &unk_29F2E8218;
    v13 = v6;
    [v11 triggerWithImage:v9 options:v10 cacheKey:0 resultHandler:v12];
  }
}

@end