@interface AVMutableVideoCompositionLayerInstruction
+ (AVMutableVideoCompositionLayerInstruction)videoCompositionLayerInstruction;
+ (AVMutableVideoCompositionLayerInstruction)videoCompositionLayerInstructionWithAssetTrack:(AVAssetTrack *)track;
- (CMPersistentTrackID)trackID;
- (void)setCropRectangle:(CGRect)cropRectangle atTime:(CMTime *)time;
- (void)setCropRectangleRampFromStartCropRectangle:(CGRect)startCropRectangle toEndCropRectangle:(CGRect)endCropRectangle timeRange:(CMTimeRange *)timeRange;
- (void)setOpacity:(float)opacity atTime:(CMTime *)time;
- (void)setOpacityRampFromStartOpacity:(float)startOpacity toEndOpacity:(float)endOpacity timeRange:(CMTimeRange *)timeRange;
- (void)setTrackID:(CMPersistentTrackID)trackID;
- (void)setTransform:(CGAffineTransform *)transform atTime:(CMTime *)time;
- (void)setTransformRampFromStartTransform:(CGAffineTransform *)startTransform toEndTransform:(CGAffineTransform *)endTransform timeRange:(CMTimeRange *)timeRange;
@end

@implementation AVMutableVideoCompositionLayerInstruction

+ (AVMutableVideoCompositionLayerInstruction)videoCompositionLayerInstructionWithAssetTrack:(AVAssetTrack *)track
{
  v4 = objc_alloc_init(self);
  if (track)
  {
    [(AVMutableVideoCompositionLayerInstruction *)v4 setTrackID:[(AVAssetTrack *)track trackID]];
  }

  return v4;
}

+ (AVMutableVideoCompositionLayerInstruction)videoCompositionLayerInstruction
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CMPersistentTrackID)trackID
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionLayerInstruction;
  return [(AVVideoCompositionLayerInstruction *)&v3 trackID];
}

- (void)setTrackID:(CMPersistentTrackID)trackID
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionLayerInstruction;
  [(AVVideoCompositionLayerInstruction *)&v3 setTrackID:*&trackID];
}

- (void)setTransform:(CGAffineTransform *)transform atTime:(CMTime *)time
{
  v7.receiver = self;
  v7.super_class = AVMutableVideoCompositionLayerInstruction;
  v4 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v4;
  v6[2] = *&transform->tx;
  v5 = *time;
  [(AVVideoCompositionLayerInstruction *)&v7 setTransform:v6 atTime:&v5];
}

- (void)setTransformRampFromStartTransform:(CGAffineTransform *)startTransform toEndTransform:(CGAffineTransform *)endTransform timeRange:(CMTimeRange *)timeRange
{
  v11.receiver = self;
  v11.super_class = AVMutableVideoCompositionLayerInstruction;
  v5 = *&startTransform->c;
  v10[0] = *&startTransform->a;
  v10[1] = v5;
  v10[2] = *&startTransform->tx;
  v6 = *&endTransform->c;
  v9[0] = *&endTransform->a;
  v9[1] = v6;
  v9[2] = *&endTransform->tx;
  v7 = *&timeRange->start.epoch;
  v8[0] = *&timeRange->start.value;
  v8[1] = v7;
  v8[2] = *&timeRange->duration.timescale;
  [(AVVideoCompositionLayerInstruction *)&v11 setTransformRampFromStartTransform:v10 toEndTransform:v9 timeRange:v8];
}

- (void)setOpacity:(float)opacity atTime:(CMTime *)time
{
  v5.receiver = self;
  v5.super_class = AVMutableVideoCompositionLayerInstruction;
  v4 = *time;
  [(AVVideoCompositionLayerInstruction *)&v5 setOpacity:&v4 atTime:?];
}

- (void)setOpacityRampFromStartOpacity:(float)startOpacity toEndOpacity:(float)endOpacity timeRange:(CMTimeRange *)timeRange
{
  v7.receiver = self;
  v7.super_class = AVMutableVideoCompositionLayerInstruction;
  v5 = *&timeRange->start.epoch;
  v6[0] = *&timeRange->start.value;
  v6[1] = v5;
  v6[2] = *&timeRange->duration.timescale;
  [AVVideoCompositionLayerInstruction setOpacityRampFromStartOpacity:sel_setOpacityRampFromStartOpacity_toEndOpacity_timeRange_ toEndOpacity:v6 timeRange:?];
}

- (void)setCropRectangle:(CGRect)cropRectangle atTime:(CMTime *)time
{
  v5.receiver = self;
  v5.super_class = AVMutableVideoCompositionLayerInstruction;
  v4 = *time;
  [(AVVideoCompositionLayerInstruction *)&v5 setCropRectangle:&v4 atTime:cropRectangle.origin.x, cropRectangle.origin.y, cropRectangle.size.width, cropRectangle.size.height];
}

- (void)setCropRectangleRampFromStartCropRectangle:(CGRect)startCropRectangle toEndCropRectangle:(CGRect)endCropRectangle timeRange:(CMTimeRange *)timeRange
{
  v7.receiver = self;
  v7.super_class = AVMutableVideoCompositionLayerInstruction;
  v5 = *&timeRange->start.epoch;
  v6[0] = *&timeRange->start.value;
  v6[1] = v5;
  v6[2] = *&timeRange->duration.timescale;
  [(AVVideoCompositionLayerInstruction *)&v7 setCropRectangleRampFromStartCropRectangle:v6 toEndCropRectangle:startCropRectangle.origin.x timeRange:startCropRectangle.origin.y, startCropRectangle.size.width, startCropRectangle.size.height, endCropRectangle.origin.x, endCropRectangle.origin.y, endCropRectangle.size.width, endCropRectangle.size.height];
}

@end