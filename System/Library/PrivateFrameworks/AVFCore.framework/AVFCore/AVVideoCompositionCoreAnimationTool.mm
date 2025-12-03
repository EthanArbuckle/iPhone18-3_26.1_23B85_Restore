@interface AVVideoCompositionCoreAnimationTool
+ (AVVideoCompositionCoreAnimationTool)videoCompositionCoreAnimationToolWithAdditionalLayer:(CALayer *)layer asTrackID:(CMPersistentTrackID)trackID;
+ (AVVideoCompositionCoreAnimationTool)videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:(CALayer *)videoLayer inLayer:(CALayer *)animationLayer;
+ (AVVideoCompositionCoreAnimationTool)videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers:(NSArray *)videoLayers inLayer:(CALayer *)animationLayer;
- (AVVideoCompositionCoreAnimationTool)initWithMagicTrackID:(int)d animationLayer:(id)layer videoLayers:(id)layers;
- (id)_auxiliaryTrackLayer;
- (id)_postProcessingRootLayer;
- (id)_postProcessingVideoLayers;
- (int)_auxiliaryTrackID;
- (void)dealloc;
@end

@implementation AVVideoCompositionCoreAnimationTool

- (AVVideoCompositionCoreAnimationTool)initWithMagicTrackID:(int)d animationLayer:(id)layer videoLayers:(id)layers
{
  v11.receiver = self;
  v11.super_class = AVVideoCompositionCoreAnimationTool;
  v8 = [(AVVideoCompositionCoreAnimationTool *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(AVVideoCompositionCoreAnimationToolInternal);
    v8->_videoCompositionTool = v9;
    if (v9)
    {
      CFRetain(v9);
      v8->_videoCompositionTool->way = d == 0;
      v8->_videoCompositionTool->animationLayer = layer;
      v8->_videoCompositionTool->auxiliaryTrackID = d;
      v8->_videoCompositionTool->postProcessingVideoLayers = [layers copy];
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

+ (AVVideoCompositionCoreAnimationTool)videoCompositionCoreAnimationToolWithAdditionalLayer:(CALayer *)layer asTrackID:(CMPersistentTrackID)trackID
{
  v4 = [[self alloc] initWithMagicTrackID:*&trackID animationLayer:layer videoLayers:0];

  return v4;
}

+ (AVVideoCompositionCoreAnimationTool)videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayer:(CALayer *)videoLayer inLayer:(CALayer *)animationLayer
{
  v6 = [self alloc];
  v7 = [v6 initWithMagicTrackID:0 animationLayer:animationLayer videoLayers:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", videoLayer)}];

  return v7;
}

+ (AVVideoCompositionCoreAnimationTool)videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers:(NSArray *)videoLayers inLayer:(CALayer *)animationLayer
{
  v4 = [[self alloc] initWithMagicTrackID:0 animationLayer:animationLayer videoLayers:videoLayers];

  return v4;
}

- (void)dealloc
{
  videoCompositionTool = self->_videoCompositionTool;
  if (videoCompositionTool)
  {

    CFRelease(self->_videoCompositionTool);
  }

  v4.receiver = self;
  v4.super_class = AVVideoCompositionCoreAnimationTool;
  [(AVVideoCompositionCoreAnimationTool *)&v4 dealloc];
}

- (id)_auxiliaryTrackLayer
{
  videoCompositionTool = self->_videoCompositionTool;
  if (videoCompositionTool->way)
  {
    return 0;
  }

  else
  {
    return videoCompositionTool->animationLayer;
  }
}

- (int)_auxiliaryTrackID
{
  videoCompositionTool = self->_videoCompositionTool;
  if (videoCompositionTool->way)
  {
    return 0;
  }

  else
  {
    return videoCompositionTool->auxiliaryTrackID;
  }
}

- (id)_postProcessingRootLayer
{
  videoCompositionTool = self->_videoCompositionTool;
  if (videoCompositionTool->way == 1)
  {
    return videoCompositionTool->animationLayer;
  }

  else
  {
    return 0;
  }
}

- (id)_postProcessingVideoLayers
{
  videoCompositionTool = self->_videoCompositionTool;
  if (videoCompositionTool->way == 1)
  {
    return videoCompositionTool->postProcessingVideoLayers;
  }

  else
  {
    return 0;
  }
}

@end