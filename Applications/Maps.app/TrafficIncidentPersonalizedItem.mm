@interface TrafficIncidentPersonalizedItem
- (CLLocationCoordinate2D)coordinate;
- (GEOEnhancedPlacement)enhancedPlacement;
- (GEOLabelGeometry)labelGeometry;
- (NSSet)keys;
- (PersonalizedItemPrioritizedStringAdornment)title;
- (PersonalizedItemSource)source;
- (PersonalizedItemStyleAttributesAdornment)styleAttributes;
- (TrafficIncidentPersonalizedItem)initWithIncidentReport:(id)report;
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
  mapItem = [(TrafficIncidentPersonalizedItem *)self mapItem];
  _labelGeometry = [mapItem _labelGeometry];

  return _labelGeometry;
}

- (GEOEnhancedPlacement)enhancedPlacement
{
  mapItem = [(TrafficIncidentPersonalizedItem *)self mapItem];
  _enhancedPlacement = [mapItem _enhancedPlacement];

  return _enhancedPlacement;
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
  uniqueID = [(TrafficIncidentReport *)self->_report uniqueID];
  v3 = [NSSet setWithObject:uniqueID];

  return v3;
}

- (TrafficIncidentPersonalizedItem)initWithIncidentReport:(id)report
{
  reportCopy = report;
  v28.receiver = self;
  v28.super_class = TrafficIncidentPersonalizedItem;
  v6 = [(TrafficIncidentPersonalizedItem *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_report, report);
    v8 = [MKPlacemark alloc];
    mapItemLocation = [reportCopy mapItemLocation];
    latLng = [mapItemLocation latLng];
    [latLng lat];
    v12 = v11;
    mapItemLocation2 = [reportCopy mapItemLocation];
    latLng2 = [mapItemLocation2 latLng];
    [latLng2 lng];
    v16 = CLLocationCoordinate2DMake(v12, v15);
    v17 = [v8 initWithCoordinate:{v16.latitude, v16.longitude}];

    v18 = [[MKMapItem alloc] initWithPlacemark:v17];
    mapItem = v7->_mapItem;
    v7->_mapItem = v18;

    mapItemLocation3 = [reportCopy mapItemLocation];
    latLng3 = [mapItemLocation3 latLng];
    [latLng3 lat];
    v23 = v22;
    mapItemLocation4 = [reportCopy mapItemLocation];
    latLng4 = [mapItemLocation4 latLng];
    [latLng4 lng];
    v7->_coordinate = CLLocationCoordinate2DMake(v23, v26);
  }

  return v7;
}

@end