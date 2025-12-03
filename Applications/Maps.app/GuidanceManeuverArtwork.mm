@interface GuidanceManeuverArtwork
+ (GuidanceManeuverArtwork)artworkWithManeuver:(int)maneuver;
- (BOOL)isEqual:(id)equal;
- (BOOL)isStartRouteManeuver;
- (BOOL)isValue:(id)value equalTo:(id)to;
- (GuidanceManeuverArtwork)initWithManeuver:(int)maneuver junction:(id)junction drivingSide:(int)side artworkDataSource:(id)source;
- (unint64_t)hash;
@end

@implementation GuidanceManeuverArtwork

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(GuidanceManeuverArtwork *)equalCopy isMemberOfClass:objc_opt_class()]&& (maneuver = self->_maneuver, maneuver == [(GuidanceManeuverArtwork *)equalCopy maneuver]) && (drivingSide = self->_drivingSide, drivingSide == [(GuidanceManeuverArtwork *)equalCopy drivingSide]) && (junction = self->_junction, [(GuidanceManeuverArtwork *)equalCopy junction], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(junction) = [(GuidanceManeuverArtwork *)self isValue:junction equalTo:v8], v8, junction))
  {
    artworkDataSource = self->_artworkDataSource;
    artworkDataSource = [(GuidanceManeuverArtwork *)equalCopy artworkDataSource];
    v11 = [(GuidanceManeuverArtwork *)self isValue:artworkDataSource equalTo:artworkDataSource];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_maneuver;
  v4 = v3 ^ [(MKJunction *)self->_junction hash];
  v5 = 2654435761 * self->_drivingSide;
  return v4 ^ v5 ^ [(GEOTransitArtworkDataSource *)self->_artworkDataSource hash];
}

- (BOOL)isStartRouteManeuver
{
  maneuver = [(GuidanceManeuverArtwork *)self maneuver];
  result = 1;
  if (maneuver - 25 > 0x3D || ((1 << (maneuver - 25)) & 0x3000000000000001) == 0)
  {
    return maneuver == 17;
  }

  return result;
}

- (GuidanceManeuverArtwork)initWithManeuver:(int)maneuver junction:(id)junction drivingSide:(int)side artworkDataSource:(id)source
{
  junctionCopy = junction;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = GuidanceManeuverArtwork;
  v13 = [(GuidanceManeuverArtwork *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_maneuver = maneuver;
    objc_storeStrong(&v13->_junction, junction);
    v14->_drivingSide = side;
    objc_storeStrong(&v14->_artworkDataSource, source);
  }

  return v14;
}

- (BOOL)isValue:(id)value equalTo:(id)to
{
  valueCopy = value;
  toCopy = to;
  v7 = toCopy;
  if (!(valueCopy | toCopy))
  {
    goto LABEL_2;
  }

  v8 = 0;
  if (valueCopy && toCopy)
  {
    if (valueCopy == toCopy)
    {
LABEL_2:
      v8 = 1;
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [valueCopy isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_3:

  return v8;
}

+ (GuidanceManeuverArtwork)artworkWithManeuver:(int)maneuver
{
  v3 = [[self alloc] initWithManeuver:*&maneuver junction:0 drivingSide:0 artworkDataSource:0];

  return v3;
}

@end