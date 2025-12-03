@interface RCWaveformSnapshotGenerator
+ (id)snapshotForComposition:(id)composition size:(CGSize)size;
@end

@implementation RCWaveformSnapshotGenerator

+ (id)snapshotForComposition:(id)composition size:(CGSize)size
{
  height = size.height;
  width = size.width;
  compositionCopy = composition;
  v7 = objc_alloc_init(RCApplicationWaveformRenderer);
  [(RCApplicationWaveformRenderer *)v7 setIsPlayback:1];
  v8 = [[RCCompositionWaveformDataSource alloc] initWithComposition:compositionCopy trackIndex:{(objc_msgSend(compositionCopy, "hasMultipleTracks") << 63) >> 63}];

  [v8 beginLoading];
  [v8 waitUntilFinished];
  y = CGPointZero.y;
  view = [(RCApplicationWaveformRenderer *)v7 view];
  [view setFrame:{CGPointZero.x, y, width, height}];

  [(RCWaveformRenderer *)v7 setDataSource:v8];
  RCTimeRangeMake();
  v11 = [RCWaveformRenderer rasterizeTimeRange:v7 imageSize:"rasterizeTimeRange:imageSize:afterScreenUpdates:" afterScreenUpdates:1];

  return v11;
}

@end