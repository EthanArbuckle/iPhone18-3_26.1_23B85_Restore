@interface VenueAreaIdentifier
+ (id)keyForVenue:(id)a3 building:(id)a4 floorOrdinal:(id)a5;
- (BOOL)isEqual:(id)a3;
- (VenueAreaIdentifier)initWithVenueID:(unint64_t)a3 buildingID:(id)a4 levelID:(id)a5 floorOrdinal:(id)a6;
- (unint64_t)hash;
@end

@implementation VenueAreaIdentifier

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 venueID];
    if (v6 == [(VenueAreaIdentifier *)self venueID])
    {
      v7 = [v5 buildingID];
      v8 = [(VenueAreaIdentifier *)self buildingID];
      if ([NSNumber number:v7 isEqualToNumber:v8])
      {
        v9 = [v5 levelID];
        v10 = [(VenueAreaIdentifier *)self levelID];
        if ([NSNumber number:v9 isEqualToNumber:v10])
        {
          v11 = [v5 floorOrdinal];
          v12 = [(VenueAreaIdentifier *)self floorOrdinal];
          v13 = [NSNumber number:v11 isEqualToNumber:v12];
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
  v5 = [(VenueAreaIdentifier *)self buildingID];
  v6 = [v5 hash];
  v7 = [(VenueAreaIdentifier *)self levelID];
  v8 = v6 ^ [v7 hash];
  v9 = [(VenueAreaIdentifier *)self floorOrdinal];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v4;
}

- (VenueAreaIdentifier)initWithVenueID:(unint64_t)a3 buildingID:(id)a4 levelID:(id)a5 floorOrdinal:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = VenueAreaIdentifier;
  v13 = [(VenueAreaIdentifier *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_venueID = a3;
    v15 = [v10 copy];
    buildingID = v14->_buildingID;
    v14->_buildingID = v15;

    v17 = [v11 copy];
    levelID = v14->_levelID;
    v14->_levelID = v17;

    v19 = [v12 copy];
    floorOrdinal = v14->_floorOrdinal;
    v14->_floorOrdinal = v19;
  }

  return v14;
}

+ (id)keyForVenue:(id)a3 building:(id)a4 floorOrdinal:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [VenueAreaIdentifier alloc];
    v11 = [v7 venueID];
    if (v8)
    {
      v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 buildingId]);
      v13 = [(VenueAreaIdentifier *)v10 initWithVenueID:v11 buildingID:v12 levelID:0 floorOrdinal:v9];
    }

    else
    {
      v13 = [(VenueAreaIdentifier *)v10 initWithVenueID:v11 buildingID:0 levelID:0 floorOrdinal:v9];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end