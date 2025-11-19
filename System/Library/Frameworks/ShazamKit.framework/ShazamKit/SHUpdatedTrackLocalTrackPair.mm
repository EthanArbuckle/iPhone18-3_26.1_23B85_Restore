@interface SHUpdatedTrackLocalTrackPair
- (SHUpdatedTrackLocalTrackPair)initWithUpdatedTrack:(id)a3 localTrack:(id)a4;
@end

@implementation SHUpdatedTrackLocalTrackPair

- (SHUpdatedTrackLocalTrackPair)initWithUpdatedTrack:(id)a3 localTrack:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHUpdatedTrackLocalTrackPair;
  v9 = [(SHUpdatedTrackLocalTrackPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updatedTrack, a3);
    objc_storeStrong(&v10->_localTrack, a4);
  }

  return v10;
}

@end