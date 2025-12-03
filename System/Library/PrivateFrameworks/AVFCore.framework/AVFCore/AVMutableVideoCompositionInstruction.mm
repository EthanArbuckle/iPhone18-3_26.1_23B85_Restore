@interface AVMutableVideoCompositionInstruction
+ (AVMutableVideoCompositionInstruction)videoCompositionInstruction;
- (BOOL)enablePostProcessing;
- (CGColorRef)backgroundColor;
- (CMTimeRange)timeRange;
- (NSArray)layerInstructions;
- (NSArray)requiredSourceSampleDataTrackIDs;
- (void)setBackgroundColor:(CGColorRef)backgroundColor;
- (void)setEnablePostProcessing:(BOOL)enablePostProcessing;
- (void)setLayerInstructions:(NSArray *)layerInstructions;
- (void)setRequiredSourceSampleDataTrackIDs:(NSArray *)requiredSourceSampleDataTrackIDs;
- (void)setTimeRange:(CMTimeRange *)timeRange;
@end

@implementation AVMutableVideoCompositionInstruction

+ (AVMutableVideoCompositionInstruction)videoCompositionInstruction
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CMTimeRange)timeRange
{
  v4.receiver = self;
  v4.super_class = AVMutableVideoCompositionInstruction;
  return [(CMTimeRange *)&v4 timeRange];
}

- (void)setTimeRange:(CMTimeRange *)timeRange
{
  v5.receiver = self;
  v5.super_class = AVMutableVideoCompositionInstruction;
  v3 = *&timeRange->start.epoch;
  v4[0] = *&timeRange->start.value;
  v4[1] = v3;
  v4[2] = *&timeRange->duration.timescale;
  [(AVVideoCompositionInstruction *)&v5 setTimeRange:v4];
}

- (CGColorRef)backgroundColor
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionInstruction;
  return [(AVVideoCompositionInstruction *)&v3 backgroundColor];
}

- (void)setBackgroundColor:(CGColorRef)backgroundColor
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionInstruction;
  [(AVVideoCompositionInstruction *)&v3 setBackgroundColor:backgroundColor];
}

- (NSArray)layerInstructions
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionInstruction;
  return [(AVVideoCompositionInstruction *)&v3 layerInstructions];
}

- (void)setLayerInstructions:(NSArray *)layerInstructions
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionInstruction;
  [(AVVideoCompositionInstruction *)&v3 setLayerInstructions:layerInstructions];
}

- (BOOL)enablePostProcessing
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionInstruction;
  return [(AVVideoCompositionInstruction *)&v3 enablePostProcessing];
}

- (void)setEnablePostProcessing:(BOOL)enablePostProcessing
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionInstruction;
  [(AVVideoCompositionInstruction *)&v3 setEnablePostProcessing:enablePostProcessing];
}

- (NSArray)requiredSourceSampleDataTrackIDs
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionInstruction;
  return [(AVVideoCompositionInstruction *)&v3 requiredSourceSampleDataTrackIDs];
}

- (void)setRequiredSourceSampleDataTrackIDs:(NSArray *)requiredSourceSampleDataTrackIDs
{
  v3.receiver = self;
  v3.super_class = AVMutableVideoCompositionInstruction;
  [(AVVideoCompositionInstruction *)&v3 setRequiredSourceSampleDataTrackIDs:requiredSourceSampleDataTrackIDs];
}

@end