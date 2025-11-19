@interface SearchResultsDebugOverlay
+ (id)rendererWithPolygon:(id)a3;
+ (id)viewForAnnotation:(id)a3;
- (SearchResultsDebugOverlay)initWithMapView:(id)a3;
- (id)annotationTitleWithMapRegion:(id)a3 title:(id)a4;
- (id)polygonForMapRegion:(id)a3 title:(id)a4;
- (void)drawDebugMapRegionsWithSearchResults:(id)a3 suggestedMapRegion:(id)a4;
- (void)removeDrawnDebugMapRegions;
@end

@implementation SearchResultsDebugOverlay

- (id)annotationTitleWithMapRegion:(id)a3 title:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 eastLng];
  v8 = [NSString stringWithFormat:@"eastLng : %f", v7];
  [v6 westLng];
  v10 = [NSString stringWithFormat:@"westLng : %f", v9];
  [v6 northLat];
  v12 = [NSString stringWithFormat:@"northLat : %f", v11];
  [v6 southLat];
  v14 = v13;

  v15 = [NSString stringWithFormat:@"southLat : %f", v14];
  v16 = [NSString stringWithFormat:@"{%@ %@ %@ %@}", v8, v10, v12, v15];
  v17 = [NSString stringWithFormat:@"%@: %@", v5, v16];

  return v17;
}

- (id)polygonForMapRegion:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 northLat];
  v9 = v8;
  [v7 westLng];
  v28 = CLLocationCoordinate2DMake(v9, v10);
  v11 = MKMapPointForCoordinate(v28);
  [v7 northLat];
  v13 = v12;
  [v7 eastLng];
  v29 = CLLocationCoordinate2DMake(v13, v14);
  v15 = MKMapPointForCoordinate(v29);
  [v7 southLat];
  v17 = v16;
  [v7 eastLng];
  v30 = CLLocationCoordinate2DMake(v17, v18);
  v19 = MKMapPointForCoordinate(v30);
  [v7 southLat];
  v21 = v20;
  [v7 westLng];
  v31 = CLLocationCoordinate2DMake(v21, v22);
  v26[0] = v11;
  v26[1] = v15;
  v26[2] = v19;
  v26[3] = MKMapPointForCoordinate(v31);
  v23 = [SearchResultDebugPolygon polygonWithPoints:v26 count:4];
  v24 = [(SearchResultsDebugOverlay *)self annotationTitleWithMapRegion:v7 title:v6];

  [v23 setTitle:v24];

  return v23;
}

- (void)removeDrawnDebugMapRegions
{
  v3 = [(SearchResultsDebugOverlay *)self mapView];
  v4 = [(SearchResultsDebugOverlay *)self polygons];
  [v3 removeOverlays:v4];

  v5 = [(SearchResultsDebugOverlay *)self mapView];
  v6 = [(SearchResultsDebugOverlay *)self polygons];
  [v5 removeAnnotations:v6];

  [(SearchResultsDebugOverlay *)self setPolygons:0];
}

- (void)drawDebugMapRegionsWithSearchResults:(id)a3 suggestedMapRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SearchResultsDebugOverlay *)self polygons];
  v9 = [v8 count];

  if (v9)
  {
    [(SearchResultsDebugOverlay *)self removeDrawnDebugMapRegions];
  }

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count") + 1}];
  [(SearchResultsDebugOverlay *)self setPolygons:v10];

  if (v7)
  {
    v11 = [(SearchResultsDebugOverlay *)self polygonForMapRegion:v7 title:@"searchResultsRegion"];
    v12 = +[UIColor blueColor];
    [v11 setStrokeColor:v12];

    v13 = [(SearchResultsDebugOverlay *)self polygons];
    [v13 addObject:v11];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v6;
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
        v20 = [v19 mapItem];
        v21 = [v20 _displayMapRegion];

        if (v21)
        {
          v22 = [v19 title];
          v23 = [(SearchResultsDebugOverlay *)self polygonForMapRegion:v21 title:v22];

          v24 = [(SearchResultsDebugOverlay *)self polygons];
          [v24 addObject:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  v25 = [(SearchResultsDebugOverlay *)self mapView];
  v26 = [(SearchResultsDebugOverlay *)self polygons];
  [v25 addOverlays:v26];

  v27 = [(SearchResultsDebugOverlay *)self mapView];
  v28 = [(SearchResultsDebugOverlay *)self polygons];
  [v27 addAnnotations:v28];
}

- (SearchResultsDebugOverlay)initWithMapView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SearchResultsDebugOverlay;
  v6 = [(SearchResultsDebugOverlay *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, a3);
  }

  return v7;
}

+ (id)viewForAnnotation:(id)a3
{
  v3 = a3;
  v4 = [[MKAnnotationView alloc] initWithAnnotation:v3 reuseIdentifier:@"polygonAnnotation"];

  return v4;
}

+ (id)rendererWithPolygon:(id)a3
{
  v3 = a3;
  v4 = [[MKPolygonRenderer alloc] initWithPolygon:v3];
  v5 = [v3 strokeColor];

  v6 = [v5 colorWithAlphaComponent:0.800000012];
  [v4 setStrokeColor:v6];

  [v4 setLineWidth:1.0];

  return v4;
}

@end