@interface AVMutableComposition(CNComposition)
- (id)addTracksForCinematicAssetInfo:()CNComposition preferredStartingTrackID:;
@end

@implementation AVMutableComposition(CNComposition)

- (id)addTracksForCinematicAssetInfo:()CNComposition preferredStartingTrackID:
{
  v6 = a3;
  cinematicVideoTrack = [v6 cinematicVideoTrack];
  mediaType = [cinematicVideoTrack mediaType];
  v9 = [self addMutableTrackWithMediaType:mediaType preferredTrackID:a4];

  cinematicDisparityTrack = [v6 cinematicDisparityTrack];
  mediaType2 = [cinematicDisparityTrack mediaType];
  if (a4)
  {
    v12 = (a4 + 1);
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    v13 = (a4 + 2);
  }

  else
  {
    v13 = 0;
  }

  v14 = [self addMutableTrackWithMediaType:mediaType2 preferredTrackID:v12];

  cinematicMetadataTrack = [v6 cinematicMetadataTrack];

  mediaType3 = [cinematicMetadataTrack mediaType];
  v17 = [self addMutableTrackWithMediaType:mediaType3 preferredTrackID:v13];

  v18 = [(CNAssetInfo *)[CNCompositionInfo alloc] _initWithVideoTrack:v9 disparityTrack:v14 metadataTrack:v17];

  return v18;
}

@end