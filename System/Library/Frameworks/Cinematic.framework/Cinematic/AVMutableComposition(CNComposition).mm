@interface AVMutableComposition(CNComposition)
- (id)addTracksForCinematicAssetInfo:()CNComposition preferredStartingTrackID:;
@end

@implementation AVMutableComposition(CNComposition)

- (id)addTracksForCinematicAssetInfo:()CNComposition preferredStartingTrackID:
{
  v6 = a3;
  v7 = [v6 cinematicVideoTrack];
  v8 = [v7 mediaType];
  v9 = [a1 addMutableTrackWithMediaType:v8 preferredTrackID:a4];

  v10 = [v6 cinematicDisparityTrack];
  v11 = [v10 mediaType];
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

  v14 = [a1 addMutableTrackWithMediaType:v11 preferredTrackID:v12];

  v15 = [v6 cinematicMetadataTrack];

  v16 = [v15 mediaType];
  v17 = [a1 addMutableTrackWithMediaType:v16 preferredTrackID:v13];

  v18 = [(CNAssetInfo *)[CNCompositionInfo alloc] _initWithVideoTrack:v9 disparityTrack:v14 metadataTrack:v17];

  return v18;
}

@end