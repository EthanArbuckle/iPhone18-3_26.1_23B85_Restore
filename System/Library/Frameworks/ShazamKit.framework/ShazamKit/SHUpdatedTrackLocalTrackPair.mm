@interface SHUpdatedTrackLocalTrackPair
- (SHUpdatedTrackLocalTrackPair)initWithUpdatedTrack:(id)track localTrack:(id)localTrack;
@end

@implementation SHUpdatedTrackLocalTrackPair

- (SHUpdatedTrackLocalTrackPair)initWithUpdatedTrack:(id)track localTrack:(id)localTrack
{
  trackCopy = track;
  localTrackCopy = localTrack;
  v12.receiver = self;
  v12.super_class = SHUpdatedTrackLocalTrackPair;
  v9 = [(SHUpdatedTrackLocalTrackPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updatedTrack, track);
    objc_storeStrong(&v10->_localTrack, localTrack);
  }

  return v10;
}

@end