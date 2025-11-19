@interface MSHistoryMarkedLocation
- (BOOL)isEqualToMarkedLocation:(id)a3;
- (BOOL)isEqualToSearchResult:(id)a3;
- (MSHistoryMarkedLocation)initWithDroppedPin:(id)a3;
- (MSHistoryMarkedLocation)initWithSearchResult:(id)a3;
- (id)droppedPin;
- (void)updateWithDroppedPin:(id)a3;
- (void)updateWithSearchResult:(id)a3;
@end

@implementation MSHistoryMarkedLocation

- (BOOL)isEqualToMarkedLocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MSHistoryMarkedLocation *)self customName];
    v6 = [v4 customName];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(MSHistoryMarkedLocation *)self latitude];
      v8 = [v4 latitude];
      if ([v7 isEqualToNumber:v8])
      {
        v9 = [(MSHistoryMarkedLocation *)self longitude];
        v10 = [v4 longitude];
        if ([v9 isEqualToNumber:v10] && (v11 = -[MSHistoryMarkedLocation floorOrdinal](self, "floorOrdinal"), v11 == objc_msgSend(v4, "floorOrdinal")))
        {
          v12 = [(MSHistoryMarkedLocation *)self muid];
          v13 = [v4 muid];
          v14 = [v12 isEqualToNumber:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEqualToSearchResult:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MSHistoryMarkedLocation *)self customName];
    v6 = [v4 name];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(MSHistoryMarkedLocation *)self latitude];
      [v4 coordinate];
      v8 = [NSNumber numberWithDouble:?];
      if ([v7 isEqualToNumber:v8])
      {
        v9 = [(MSHistoryMarkedLocation *)self longitude];
        [v4 coordinate];
        v11 = [NSNumber numberWithDouble:v10];
        if ([v9 isEqualToNumber:v11] && (v12 = -[MSHistoryMarkedLocation floorOrdinal](self, "floorOrdinal"), v12 == objc_msgSend(v4, "floorOrdinal")))
        {
          v17 = [(MSHistoryMarkedLocation *)self muid];
          v18 = [v4 mapItem];
          v13 = [v18 _geoMapItem];
          v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v13 _muid]);
          v15 = [v17 isEqualToNumber:v14];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)updateWithSearchResult:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  [(MSHistoryMarkedLocation *)self setCustomName:v5];

  -[MSHistoryMarkedLocation setFloorOrdinal:](self, "setFloorOrdinal:", [v4 floorOrdinal]);
  v8 = [v4 mapItem];

  v6 = [v8 _geoMapItem];
  v7 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v6];
  [(MSHistoryMarkedLocation *)self setMapItemStorage:v7];
}

- (void)updateWithDroppedPin:(id)a3
{
  v4 = a3;
  v5 = [v4 latLng];
  [v5 lat];
  v6 = [NSNumber numberWithDouble:?];
  [(MSHistoryMarkedLocation *)self setLatitude:v6];

  v7 = [v4 latLng];
  [v7 lng];
  v8 = [NSNumber numberWithDouble:?];
  [(MSHistoryMarkedLocation *)self setLongitude:v8];

  v9 = [v4 floorOrdinal];

  [(MSHistoryMarkedLocation *)self setFloorOrdinal:v9];
}

- (id)droppedPin
{
  v3 = objc_alloc_init(MSPDroppedPin);
  v4 = objc_alloc_init(GEOLatLng);
  [v3 setLatLng:v4];

  v5 = [(MSHistoryMarkedLocation *)self latitude];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v3 latLng];
  [v8 setLat:v7];

  v9 = [(MSHistoryMarkedLocation *)self longitude];
  [v9 doubleValue];
  v11 = v10;
  v12 = [v3 latLng];
  [v12 setLng:v11];

  [v3 setFloorOrdinal:{-[MSHistoryMarkedLocation floorOrdinal](self, "floorOrdinal")}];
  v13 = [(MSHistoryMarkedLocation *)self createTime];
  [v13 timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];

  return v3;
}

- (MSHistoryMarkedLocation)initWithSearchResult:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSHistoryMarkedLocation;
  v5 = [(MSHistoryMarkedLocation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSHistoryMarkedLocation *)v5 updateWithSearchResult:v4];
  }

  return v6;
}

- (MSHistoryMarkedLocation)initWithDroppedPin:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSHistoryMarkedLocation;
  v5 = [(MSHistoryMarkedLocation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSHistoryMarkedLocation *)v5 updateWithDroppedPin:v4];
  }

  return v6;
}

@end