@interface TrafficIncidentPersonalizedItem
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (NSSet)keys;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (TrafficIncidentPersonalizedItem)initWithIncidentReport:(id)a3;
@end

@implementation TrafficIncidentPersonalizedItem

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

- (GEOLabelGeometry)labelGeometry
{
  v2 = [(TrafficIncidentPersonalizedItem *)self mapItem];
  v3 = [v2 _labelGeometry];

  return v3;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  v2 = [(TrafficIncidentPersonalizedItem *)self mapItem];
  v3 = [v2 _enhancedPlacement];

  return v3;
}

- (PersonalizedItemStyleAttributesAdornment)styleAttributes
{
  v2 = [TrafficIncidentLayoutItem styleAttributesForType:[(TrafficIncidentReport *)self->_report incidentType]];
  v6 = &off_1016E8138;
  v7 = &off_1016E8150;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [PersonalizedItemStyleAttributesAdornment adornmentWithStyleAttributes:v2 additionalAttributes:v3];

  return v4;
}

- (PersonalizedItemPrioritizedStringAdornment)title
{
  v2 = [TrafficIncidentLayoutItem defaultDisplayTextForType:[(TrafficIncidentReport *)self->_report incidentType]];
  v3 = [PersonalizedItemPrioritizedStringAdornment adornmentWithString:v2 priority:1];

  return v3;
}

- (NSSet)keys
{
  v2 = [(TrafficIncidentReport *)self->_report uniqueID];
  v3 = [NSSet setWithObject:v2];

  return v3;
}

- (TrafficIncidentPersonalizedItem)initWithIncidentReport:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = TrafficIncidentPersonalizedItem;
  v6 = [(TrafficIncidentPersonalizedItem *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_report, a3);
    v8 = [MKPlacemark alloc];
    v9 = [v5 mapItemLocation];
    v10 = [v9 latLng];
    [v10 lat];
    v12 = v11;
    v13 = [v5 mapItemLocation];
    v14 = [v13 latLng];
    [v14 lng];
    v16 = CLLocationCoordinate2DMake(v12, v15);
    v17 = [v8 initWithCoordinate:{v16.latitude, v16.longitude}];

    v18 = [[MKMapItem alloc] initWithPlacemark:v17];
    mapItem = v7->_mapItem;
    v7->_mapItem = v18;

    v20 = [v5 mapItemLocation];
    v21 = [v20 latLng];
    [v21 lat];
    v23 = v22;
    v24 = [v5 mapItemLocation];
    v25 = [v24 latLng];
    [v25 lng];
    v7->_coordinate = CLLocationCoordinate2DMake(v23, v26);
  }

  return v7;
}

@end