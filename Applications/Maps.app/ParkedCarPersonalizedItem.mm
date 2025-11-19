@interface ParkedCarPersonalizedItem
- (CLLocationCoordinate2D)coordinate;
- (NSSet)keys;
- (ParkedCarPersonalizedItem)initWithParkedCar:(id)a3;
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
  v3 = [(ParkedCarPersonalizedItem *)self styleAttributes];
  v4 = [v3 styleAttributes];
  v5 = [v4 poiType];
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

  v13 = v12 ^ v5;
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

  v22 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v23 = [v22 name];

  if (v23)
  {
    v24 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v25 = [v24 name];
    v21 ^= [v25 hash];
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

- (ParkedCarPersonalizedItem)initWithParkedCar:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ParkedCarPersonalizedItem;
  v6 = [(ParkedCarPersonalizedItem *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parkedCar, a3);
    v8 = [v5 mapItem];
    mapItem = v7->_mapItem;
    v7->_mapItem = v8;

    [v5 coordinate];
    v7->_coordinate.latitude = v10;
    v7->_coordinate.longitude = v11;
    v12 = [v5 title];
    title = v7->_title;
    v7->_title = v12;
  }

  return v7;
}

@end