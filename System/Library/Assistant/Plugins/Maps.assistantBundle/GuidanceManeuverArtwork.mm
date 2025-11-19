@interface GuidanceManeuverArtwork
- (BOOL)isEqual:(id)a3;
- (BOOL)isStartRouteManeuver;
- (BOOL)isValue:(id)a3 equalTo:(id)a4;
- (GuidanceManeuverArtwork)initWithManeuver:(int)a3 junction:(id)a4 drivingSide:(int)a5 artworkDataSource:(id)a6;
- (unint64_t)hash;
@end

@implementation GuidanceManeuverArtwork

- (BOOL)isValue:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    goto LABEL_2;
  }

  v8 = 0;
  if (v5 && v6)
  {
    if (v5 == v6)
    {
LABEL_2:
      v8 = 1;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_3:

  return v8;
}

- (GuidanceManeuverArtwork)initWithManeuver:(int)a3 junction:(id)a4 drivingSide:(int)a5 artworkDataSource:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = GuidanceManeuverArtwork;
  v13 = [(GuidanceManeuverArtwork *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_maneuver = a3;
    objc_storeStrong(&v13->_junction, a4);
    v14->_drivingSide = a5;
    objc_storeStrong(&v14->_artworkDataSource, a6);
  }

  return v14;
}

- (BOOL)isStartRouteManeuver
{
  v2 = [(GuidanceManeuverArtwork *)self maneuver];
  result = 1;
  if (v2 - 25 > 0x3D || ((1 << (v2 - 25)) & 0x3000000000000001) == 0)
  {
    return v2 == 17;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_maneuver;
  v4 = v3 ^ [(MKJunction *)self->_junction hash];
  v5 = 2654435761 * self->_drivingSide;
  return v4 ^ v5 ^ [(GEOTransitArtworkDataSource *)self->_artworkDataSource hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(GuidanceManeuverArtwork *)v4 isMemberOfClass:objc_opt_class()]&& (maneuver = self->_maneuver, maneuver == [(GuidanceManeuverArtwork *)v4 maneuver]) && (drivingSide = self->_drivingSide, drivingSide == [(GuidanceManeuverArtwork *)v4 drivingSide]) && (junction = self->_junction, [(GuidanceManeuverArtwork *)v4 junction], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(junction) = [(GuidanceManeuverArtwork *)self isValue:junction equalTo:v8], v8, junction))
  {
    artworkDataSource = self->_artworkDataSource;
    v10 = [(GuidanceManeuverArtwork *)v4 artworkDataSource];
    v11 = [(GuidanceManeuverArtwork *)self isValue:artworkDataSource equalTo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end