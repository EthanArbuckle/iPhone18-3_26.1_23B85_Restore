@interface SearchResultsDebugOverlay
+ (id)rendererWithPolygon:(id)polygon;
+ (id)viewForAnnotation:(id)annotation;
- (SearchResultsDebugOverlay)initWithMapView:(id)view;
- (id)annotationTitleWithMapRegion:(id)region title:(id)title;
- (id)polygonForMapRegion:(id)region title:(id)title;
- (void)drawDebugMapRegionsWithSearchResults:(id)results suggestedMapRegion:(id)region;
- (void)removeDrawnDebugMapRegions;
@end

@implementation SearchResultsDebugOverlay

- (id)annotationTitleWithMapRegion:(id)region title:(id)title
{
  titleCopy = title;
  regionCopy = region;
  [regionCopy eastLng];
  v8 = [NSString stringWithFormat:@"eastLng : %f", v7];
  [regionCopy westLng];
  v10 = [NSString stringWithFormat:@"westLng : %f", v9];
  [regionCopy northLat];
  v12 = [NSString stringWithFormat:@"northLat : %f", v11];
  [regionCopy southLat];
  v14 = v13;

  v15 = [NSString stringWithFormat:@"southLat : %f", v14];
  v16 = [NSString stringWithFormat:@"{%@ %@ %@ %@}", v8, v10, v12, v15];
  v17 = [NSString stringWithFormat:@"%@: %@", titleCopy, v16];

  return v17;
}

- (id)polygonForMapRegion:(id)region title:(id)title
{
  titleCopy = title;
  regionCopy = region;
  [regionCopy northLat];
  v9 = v8;
  [regionCopy westLng];
  v28 = CLLocationCoordinate2DMake(v9, v10);
  v11 = MKMapPointForCoordinate(v28);
  [regionCopy northLat];
  v13 = v12;
  [regionCopy eastLng];
  v29 = CLLocationCoordinate2DMake(v13, v14);
  v15 = MKMapPointForCoordinate(v29);
  [regionCopy southLat];
  v17 = v16;
  [regionCopy eastLng];
  v30 = CLLocationCoordinate2DMake(v17, v18);
  v19 = MKMapPointForCoordinate(v30);
  [regionCopy southLat];
  v21 = v20;
  [regionCopy westLng];
  v31 = CLLocationCoordinate2DMake(v21, v22);
  v26[0] = v11;
  v26[1] = v15;
  v26[2] = v19;
  v26[3] = MKMapPointForCoordinate(v31);
  v23 = [SearchResultDebugPolygon polygonWithPoints:v26 count:4];
  v24 = [(SearchResultsDebugOverlay *)self annotationTitleWithMapRegion:regionCopy title:titleCopy];

  [v23 setTitle:v24];

  return v23;
}

- (void)removeDrawnDebugMapRegions
{
  mapView = [(SearchResultsDebugOverlay *)self mapView];
  polygons = [(SearchResultsDebugOverlay *)self polygons];
  [mapView removeOverlays:polygons];

  mapView2 = [(SearchResultsDebugOverlay *)self mapView];
  polygons2 = [(SearchResultsDebugOverlay *)self polygons];
  [mapView2 removeAnnotations:polygons2];

  [(SearchResultsDebugOverlay *)self setPolygons:0];
}

- (void)drawDebugMapRegionsWithSearchResults:(id)results suggestedMapRegion:(id)region
{
  resultsCopy = results;
  regionCopy = region;
  polygons = [(SearchResultsDebugOverlay *)self polygons];
  v9 = [polygons count];

  if (v9)
  {
    [(SearchResultsDebugOverlay *)self removeDrawnDebugMapRegions];
  }

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(resultsCopy, "count") + 1}];
  [(SearchResultsDebugOverlay *)self setPolygons:v10];

  if (regionCopy)
  {
    v11 = [(SearchResultsDebugOverlay *)self polygonForMapRegion:regionCopy title:@"searchResultsRegion"];
    v12 = +[UIColor blueColor];
    [v11 setStrokeColor:v12];

    polygons2 = [(SearchResultsDebugOverlay *)self polygons];
    [polygons2 addObject:v11];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = resultsCopy;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        mapItem = [v19 mapItem];
        _displayMapRegion = [mapItem _displayMapRegion];

        if (_displayMapRegion)
        {
          title = [v19 title];
          v23 = [(SearchResultsDebugOverlay *)self polygonForMapRegion:_displayMapRegion title:title];

          polygons3 = [(SearchResultsDebugOverlay *)self polygons];
          [polygons3 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  mapView = [(SearchResultsDebugOverlay *)self mapView];
  polygons4 = [(SearchResultsDebugOverlay *)self polygons];
  [mapView addOverlays:polygons4];

  mapView2 = [(SearchResultsDebugOverlay *)self mapView];
  polygons5 = [(SearchResultsDebugOverlay *)self polygons];
  [mapView2 addAnnotations:polygons5];
}

- (SearchResultsDebugOverlay)initWithMapView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = SearchResultsDebugOverlay;
  v6 = [(SearchResultsDebugOverlay *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, view);
  }

  return v7;
}

+ (id)viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v4 = [[MKAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:@"polygonAnnotation"];

  return v4;
}

+ (id)rendererWithPolygon:(id)polygon
{
  polygonCopy = polygon;
  v4 = [[MKPolygonRenderer alloc] initWithPolygon:polygonCopy];
  strokeColor = [polygonCopy strokeColor];

  v6 = [strokeColor colorWithAlphaComponent:0.800000012];
  [v4 setStrokeColor:v6];

  [v4 setLineWidth:1.0];

  return v4;
}

@end