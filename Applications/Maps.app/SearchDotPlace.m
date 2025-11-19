@interface SearchDotPlace
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (SearchDotPlace)init;
- (SearchDotPlace)initWithGEODotPlace:(id)a3;
- (unint64_t)hash;
@end

@implementation SearchDotPlace

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SearchDotPlace *)self identifier];
      v7 = [(SearchDotPlace *)v5 identifier];

      v8 = [v6 isEqualToGEOMapItemIdentifier:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SearchDotPlace *)self identifier];
  v3 = [v2 muid];

  return v3;
}

- (SearchDotPlace)initWithGEODotPlace:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SearchDotPlace;
  v5 = [(SearchDotPlace *)&v21 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 latLng];
    [v8 lat];
    v10 = v9;
    v11 = [v4 latLng];
    [v11 lng];
    v5->_coordinate = CLLocationCoordinate2DMake(v10, v12);

    v13 = [v4 styleAttributes];
    styleAttributes = v5->_styleAttributes;
    v5->_styleAttributes = v13;

    v15 = [v4 name];
    name = v5->_name;
    v5->_name = v15;

    v17 = [[GEODotPlaceMapItem alloc] initWithDotPlace:v4];
    v18 = [[MKMapItem alloc] initWithGeoMapItem:v17 isPlaceHolderPlace:0];
    mapItem = v5->_mapItem;
    v5->_mapItem = v18;
  }

  return v5;
}

- (SearchDotPlace)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end