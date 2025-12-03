@interface SearchDotPlace
- (BOOL)isEqual:(id)equal;
- (CLLocationCoordinate2D)coordinate;
- (SearchDotPlace)init;
- (SearchDotPlace)initWithGEODotPlace:(id)place;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SearchDotPlace *)self identifier];
      identifier2 = [(SearchDotPlace *)v5 identifier];

      v8 = [identifier isEqualToGEOMapItemIdentifier:identifier2];
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
  identifier = [(SearchDotPlace *)self identifier];
  muid = [identifier muid];

  return muid;
}

- (SearchDotPlace)initWithGEODotPlace:(id)place
{
  placeCopy = place;
  v21.receiver = self;
  v21.super_class = SearchDotPlace;
  v5 = [(SearchDotPlace *)&v21 init];
  if (v5)
  {
    identifier = [placeCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    latLng = [placeCopy latLng];
    [latLng lat];
    v10 = v9;
    latLng2 = [placeCopy latLng];
    [latLng2 lng];
    v5->_coordinate = CLLocationCoordinate2DMake(v10, v12);

    styleAttributes = [placeCopy styleAttributes];
    styleAttributes = v5->_styleAttributes;
    v5->_styleAttributes = styleAttributes;

    name = [placeCopy name];
    name = v5->_name;
    v5->_name = name;

    v17 = [[GEODotPlaceMapItem alloc] initWithDotPlace:placeCopy];
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