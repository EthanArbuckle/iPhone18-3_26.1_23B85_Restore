@interface GEOTransitStepBadge
- (id)_maps_artworkCluster;
@end

@implementation GEOTransitStepBadge

- (id)_maps_artworkCluster
{
  if (([(GEOTransitStepBadge *)self hasArtwork]& 1) != 0 || [(GEOTransitStepBadge *)self hasText])
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:2];
    if ([(GEOTransitStepBadge *)self hasArtwork])
    {
      v4 = [(GEOTransitStepBadge *)self artwork];
      [v3 addObject:v4];
    }

    if ([(GEOTransitStepBadge *)self hasText])
    {
      v5 = [MKTransitText alloc];
      v6 = [(GEOTransitStepBadge *)self text];
      v7 = [v5 initWithFormattedString:v6];

      v8 = [[MKTransitArtwork alloc] initWithText:v7];
      [v3 addObject:v8];
    }

    v12 = v3;
    v9 = v3;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end