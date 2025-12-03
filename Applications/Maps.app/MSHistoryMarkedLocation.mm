@interface MSHistoryMarkedLocation
- (BOOL)isEqualToMarkedLocation:(id)location;
- (BOOL)isEqualToSearchResult:(id)result;
- (MSHistoryMarkedLocation)initWithDroppedPin:(id)pin;
- (MSHistoryMarkedLocation)initWithSearchResult:(id)result;
- (id)droppedPin;
- (void)updateWithDroppedPin:(id)pin;
- (void)updateWithSearchResult:(id)result;
@end

@implementation MSHistoryMarkedLocation

- (BOOL)isEqualToMarkedLocation:(id)location
{
  locationCopy = location;
  if (locationCopy)
  {
    customName = [(MSHistoryMarkedLocation *)self customName];
    customName2 = [locationCopy customName];
    if ([customName isEqualToString:customName2])
    {
      latitude = [(MSHistoryMarkedLocation *)self latitude];
      latitude2 = [locationCopy latitude];
      if ([latitude isEqualToNumber:latitude2])
      {
        longitude = [(MSHistoryMarkedLocation *)self longitude];
        longitude2 = [locationCopy longitude];
        if ([longitude isEqualToNumber:longitude2] && (v11 = -[MSHistoryMarkedLocation floorOrdinal](self, "floorOrdinal"), v11 == objc_msgSend(locationCopy, "floorOrdinal")))
        {
          muid = [(MSHistoryMarkedLocation *)self muid];
          muid2 = [locationCopy muid];
          v14 = [muid isEqualToNumber:muid2];
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

- (BOOL)isEqualToSearchResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    customName = [(MSHistoryMarkedLocation *)self customName];
    name = [resultCopy name];
    if ([customName isEqualToString:name])
    {
      latitude = [(MSHistoryMarkedLocation *)self latitude];
      [resultCopy coordinate];
      v8 = [NSNumber numberWithDouble:?];
      if ([latitude isEqualToNumber:v8])
      {
        longitude = [(MSHistoryMarkedLocation *)self longitude];
        [resultCopy coordinate];
        v11 = [NSNumber numberWithDouble:v10];
        if ([longitude isEqualToNumber:v11] && (v12 = -[MSHistoryMarkedLocation floorOrdinal](self, "floorOrdinal"), v12 == objc_msgSend(resultCopy, "floorOrdinal")))
        {
          muid = [(MSHistoryMarkedLocation *)self muid];
          mapItem = [resultCopy mapItem];
          _geoMapItem = [mapItem _geoMapItem];
          v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [_geoMapItem _muid]);
          v15 = [muid isEqualToNumber:v14];
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

- (void)updateWithSearchResult:(id)result
{
  resultCopy = result;
  name = [resultCopy name];
  [(MSHistoryMarkedLocation *)self setCustomName:name];

  -[MSHistoryMarkedLocation setFloorOrdinal:](self, "setFloorOrdinal:", [resultCopy floorOrdinal]);
  mapItem = [resultCopy mapItem];

  _geoMapItem = [mapItem _geoMapItem];
  v7 = [GEOMapItemStorage mapItemStorageForGEOMapItem:_geoMapItem];
  [(MSHistoryMarkedLocation *)self setMapItemStorage:v7];
}

- (void)updateWithDroppedPin:(id)pin
{
  pinCopy = pin;
  latLng = [pinCopy latLng];
  [latLng lat];
  v6 = [NSNumber numberWithDouble:?];
  [(MSHistoryMarkedLocation *)self setLatitude:v6];

  latLng2 = [pinCopy latLng];
  [latLng2 lng];
  v8 = [NSNumber numberWithDouble:?];
  [(MSHistoryMarkedLocation *)self setLongitude:v8];

  floorOrdinal = [pinCopy floorOrdinal];

  [(MSHistoryMarkedLocation *)self setFloorOrdinal:floorOrdinal];
}

- (id)droppedPin
{
  v3 = objc_alloc_init(MSPDroppedPin);
  v4 = objc_alloc_init(GEOLatLng);
  [v3 setLatLng:v4];

  latitude = [(MSHistoryMarkedLocation *)self latitude];
  [latitude doubleValue];
  v7 = v6;
  latLng = [v3 latLng];
  [latLng setLat:v7];

  longitude = [(MSHistoryMarkedLocation *)self longitude];
  [longitude doubleValue];
  v11 = v10;
  latLng2 = [v3 latLng];
  [latLng2 setLng:v11];

  [v3 setFloorOrdinal:{-[MSHistoryMarkedLocation floorOrdinal](self, "floorOrdinal")}];
  createTime = [(MSHistoryMarkedLocation *)self createTime];
  [createTime timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];

  return v3;
}

- (MSHistoryMarkedLocation)initWithSearchResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = MSHistoryMarkedLocation;
  v5 = [(MSHistoryMarkedLocation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSHistoryMarkedLocation *)v5 updateWithSearchResult:resultCopy];
  }

  return v6;
}

- (MSHistoryMarkedLocation)initWithDroppedPin:(id)pin
{
  pinCopy = pin;
  v8.receiver = self;
  v8.super_class = MSHistoryMarkedLocation;
  v5 = [(MSHistoryMarkedLocation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSHistoryMarkedLocation *)v5 updateWithDroppedPin:pinCopy];
  }

  return v6;
}

@end