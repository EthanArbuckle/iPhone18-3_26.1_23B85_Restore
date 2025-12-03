@interface ParkedCarPersonalizedItem
- (CLLocationCoordinate2D)coordinate;
- (NSSet)keys;
- (ParkedCarPersonalizedItem)initWithParkedCar:(id)car;
- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
@end

@implementation ParkedCarPersonalizedItem

- (PersonalizedItemSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (PersonalizedItemClientFeatureIDAdornment)clientFeatureID
{
  styleAttributes = [(ParkedCarPersonalizedItem *)self styleAttributes];
  v3StyleAttributes = [styleAttributes styleAttributes];
  poiType = [v3StyleAttributes poiType];
  v6 = fabs(self->_coordinate.latitude);
  v7 = floor(v6 + 0.5);
  v8 = trunc(v7 * 5.42101086e-20);
  v9 = (v6 - v7) * 1.84467441e19;
  v10 = 2654435761u * (v7 - v8 * 1.84467441e19);
  v11 = v10 + v9;
  if (v9 <= 0.0)
  {
    v11 = 2654435761u * (v7 - v8 * 1.84467441e19);
  }

  v12 = v10 - fabs(v9);
  if (v9 >= 0.0)
  {
    v12 = v11;
  }

  v13 = v12 ^ poiType;
  v14 = fabs(self->_coordinate.longitude);
  v15 = floor(v14 + 0.5);
  v16 = (v14 - v15) * 1.84467441e19;
  v17 = v15 - trunc(v15 * 5.42101086e-20) * 1.84467441e19;
  v18 = 2654435761u * v17;
  v19 = v18 + v16;
  if (v16 <= 0.0)
  {
    v19 = 2654435761u * v17;
  }

  v20 = v18 - fabs(v16);
  if (v16 >= 0.0)
  {
    v20 = v19;
  }

  v21 = v13 ^ v20;

  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  name = [_geoMapItem name];

  if (name)
  {
    _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
    name2 = [_geoMapItem2 name];
    v21 ^= [name2 hash];
  }

  return [PersonalizedItemClientFeatureIDAdornment adornmentWithClientFeatureID:v21];
}

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  v2 = +[GEOFeatureStyleAttributes parkedCarStyleAttributes];
  v3 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v2];

  return v3;
}

- (NSSet)keys
{
  v2 = +[ParkedCar personalizedItemKey];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

- (ParkedCarPersonalizedItem)initWithParkedCar:(id)car
{
  carCopy = car;
  v15.receiver = self;
  v15.super_class = ParkedCarPersonalizedItem;
  v6 = [(ParkedCarPersonalizedItem *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parkedCar, car);
    mapItem = [carCopy mapItem];
    mapItem = v7->_mapItem;
    v7->_mapItem = mapItem;

    [carCopy coordinate];
    v7->_coordinate.latitude = v10;
    v7->_coordinate.longitude = v11;
    title = [carCopy title];
    title = v7->_title;
    v7->_title = title;
  }

  return v7;
}

@end