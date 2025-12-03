@interface AVUnitTestUnplayableAPACAssetTrackInspector
- (BOOL)isPlayable;
- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index;
- (void)dealloc;
@end

@implementation AVUnitTestUnplayableAPACAssetTrackInspector

- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index
{
  v6.receiver = self;
  v6.super_class = AVUnitTestUnplayableAPACAssetTrackInspector;
  return [(AVFigAssetTrackInspector *)&v6 _initWithAsset:asset trackID:*&d trackIndex:index];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVUnitTestUnplayableAPACAssetTrackInspector;
  [(AVFigAssetTrackInspector *)&v2 dealloc];
}

- (BOOL)isPlayable
{
  v6.receiver = self;
  v6.super_class = AVUnitTestUnplayableAPACAssetTrackInspector;
  v3 = [-[AVFigAssetTrackInspector formatDescriptions](&v6 formatDescriptions)];
  if (CMFormatDescriptionGetMediaSubType(v3) == 1634754915)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = AVUnitTestUnplayableAPACAssetTrackInspector;
  return [(AVFigAssetTrackInspector *)&v5 isPlayable];
}

@end