@interface RCWaveformSnapshotGenerator
+ (id)snapshotForComposition:(id)a3 size:(CGSize)a4;
@end

@implementation RCWaveformSnapshotGenerator

+ (id)snapshotForComposition:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = objc_alloc_init(RCApplicationWaveformRenderer);
  [(RCApplicationWaveformRenderer *)v7 setIsPlayback:1];
  v8 = [[RCCompositionWaveformDataSource alloc] initWithComposition:v6 trackIndex:{(objc_msgSend(v6, "hasMultipleTracks") << 63) >> 63}];

  [v8 beginLoading];
  [v8 waitUntilFinished];
  y = CGPointZero.y;
  v10 = [(RCApplicationWaveformRenderer *)v7 view];
  [v10 setFrame:{CGPointZero.x, y, width, height}];

  [(RCWaveformRenderer *)v7 setDataSource:v8];
  RCTimeRangeMake();
  v11 = [RCWaveformRenderer rasterizeTimeRange:v7 imageSize:"rasterizeTimeRange:imageSize:afterScreenUpdates:" afterScreenUpdates:1];

  return v11;
}

@end