@interface VenueAreaIdentifier
+ (id)keyForVenue:(id)venue building:(id)building floorOrdinal:(id)ordinal;
- (BOOL)isEqual:(id)equal;
- (VenueAreaIdentifier)initWithVenueID:(unint64_t)d buildingID:(id)iD levelID:(id)levelID floorOrdinal:(id)ordinal;
- (unint64_t)hash;
@end

@implementation VenueAreaIdentifier

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    venueID = [v5 venueID];
    if (venueID == [(VenueAreaIdentifier *)self venueID])
    {
      buildingID = [v5 buildingID];
      buildingID2 = [(VenueAreaIdentifier *)self buildingID];
      if ([NSNumber number:buildingID isEqualToNumber:buildingID2])
      {
        levelID = [v5 levelID];
        levelID2 = [(VenueAreaIdentifier *)self levelID];
        if ([NSNumber number:levelID isEqualToNumber:levelID2])
        {
          floorOrdinal = [v5 floorOrdinal];
          floorOrdinal2 = [(VenueAreaIdentifier *)self floorOrdinal];
          v13 = [NSNumber number:floorOrdinal isEqualToNumber:floorOrdinal2];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithUnsignedLongLong:[(VenueAreaIdentifier *)self venueID]];
  v4 = [v3 hash];
  buildingID = [(VenueAreaIdentifier *)self buildingID];
  v6 = [buildingID hash];
  levelID = [(VenueAreaIdentifier *)self levelID];
  v8 = v6 ^ [levelID hash];
  floorOrdinal = [(VenueAreaIdentifier *)self floorOrdinal];
  v10 = v8 ^ [floorOrdinal hash];

  return v10 ^ v4;
}

- (VenueAreaIdentifier)initWithVenueID:(unint64_t)d buildingID:(id)iD levelID:(id)levelID floorOrdinal:(id)ordinal
{
  iDCopy = iD;
  levelIDCopy = levelID;
  ordinalCopy = ordinal;
  v22.receiver = self;
  v22.super_class = VenueAreaIdentifier;
  v13 = [(VenueAreaIdentifier *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_venueID = d;
    v15 = [iDCopy copy];
    buildingID = v14->_buildingID;
    v14->_buildingID = v15;

    v17 = [levelIDCopy copy];
    levelID = v14->_levelID;
    v14->_levelID = v17;

    v19 = [ordinalCopy copy];
    floorOrdinal = v14->_floorOrdinal;
    v14->_floorOrdinal = v19;
  }

  return v14;
}

+ (id)keyForVenue:(id)venue building:(id)building floorOrdinal:(id)ordinal
{
  venueCopy = venue;
  buildingCopy = building;
  ordinalCopy = ordinal;
  if (venueCopy)
  {
    v10 = [VenueAreaIdentifier alloc];
    venueID = [venueCopy venueID];
    if (buildingCopy)
    {
      v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [buildingCopy buildingId]);
      v13 = [(VenueAreaIdentifier *)v10 initWithVenueID:venueID buildingID:v12 levelID:0 floorOrdinal:ordinalCopy];
    }

    else
    {
      v13 = [(VenueAreaIdentifier *)v10 initWithVenueID:venueID buildingID:0 levelID:0 floorOrdinal:ordinalCopy];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end