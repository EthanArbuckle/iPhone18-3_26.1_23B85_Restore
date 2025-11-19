@interface MapCameraController
- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectApproximatingRouteFromStartPOIShape:(id)a3 toEndPOIShapes:(id)a4 routeLineMapRect:(id)a5 includePadding:(BOOL)a6;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectForRouteLines:(id)a3 includePadding:(BOOL)a4;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectForRoutes:(id)a3 includeCompassInset:(BOOL)a4 startPOIShape:(id)a5 endPOIShapes:(id)a6;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectForRoutes:(id)a3 includeCompassInset:(BOOL)a4 waypoints:(BOOL)a5;
- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectFromLocation:(id)a3 alongRoute:(id)a4;
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectApproximatingRouteFromStartPOIShape:(id)a3 toEndPOIShapes:(id)a4 routeLineMapRect:(id)a5;
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectForTripFromLocation:(id)a3 alongRoute:(id)a4;
- (BOOL)_frameVenueLabelMarker:(id)a3 completion:(id)a4;
- (BOOL)_mapViewFitsLabelMarker:(id)a3 withEdgeInsets:(UIEdgeInsets)a4;
- (BOOL)searchResultIsVenueOrBuilding:(id)a3;
- (MKMapView)mapView;
- (MapCameraController)initWithMapView:(id)a3;
- (UIEdgeInsets)_insetsByAddingCompassPaddingToInsets:(UIEdgeInsets)a3;
- (UIEdgeInsets)_insetsForPin;
- (double)_maximumEdgeToEdgeDistanceBetweenCurrentAndTargetMapRect:(id)a3;
- (id)_poiShapeAnchorPointMarkersFromRoute:(id)a3;
- (id)_poiShapeWaypointMarkersFromRoute:(id)a3;
- (void)_frameMapRect:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)_frameNotVisibleLabelMarker:(id)a3 edgeInsets:(UIEdgeInsets)a4 completion:(id)a5;
- (void)_frameSearchResult:(id)a3 minZoom:(id)a4 maxZoom:(id)a5 completion:(id)a6;
- (void)_frameVisibleLabelMarker:(id)a3 edgeInsets:(UIEdgeInsets)a4 completion:(id)a5;
- (void)_notifyObserversWillChangeVisibleRect;
- (void)_setCenterCoordinate:(CLLocationCoordinate2D)a3 duration:(double)a4 completion:(id)a5;
- (void)_setCenterCoordinate:(CLLocationCoordinate2D)a3 zoomLevel:(double)a4 animated:(BOOL)a5;
- (void)_setMapCamera:(id)a3 duration:(double)a4 options:(unint64_t)a5 completion:(id)a6;
- (void)displayMapRegion:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)displayTransitRoute:(id)a3 boardingStopCoord:(id)a4 boardingStopIndex:(unint64_t)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)frameApproximateRouteFromStartPOIShape:(id)a3 toEndPOIShapes:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)frameLabelMarker:(id)a3 edgeInsets:(UIEdgeInsets)a4 minZoom:(id)a5 maxZoom:(id)a6 completion:(id)a7;
- (void)frameMapItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)frameMapRect:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)frameRoutes:(id)a3 includeCompassInset:(BOOL)a4 waypoints:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)frameSearchResults:(id)a3 withResultToSelect:(id)a4 historyItem:(id)a5 suggestedMapRegion:(id)a6 minZoom:(id)a7 maxZoom:(id)a8 disableAdditionalViewportPadding:(BOOL)a9 completion:(id)a10;
- (void)restoreRegionForMapSelectionForLabelMarker:(id)a3 edgeInsets:(UIEdgeInsets)a4 completion:(id)a5;
@end

@implementation MapCameraController

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (BOOL)_mapViewFitsLabelMarker:(id)a3 withEdgeInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  [a3 coordinate];
  v7 = CLLocationCoordinate2DMake(v5, v6);
  v8 = [(MapCameraController *)self mapView];
  v9 = [(MapCameraController *)self mapView];
  [v8 convertCoordinate:v9 toPointToView:{v7.latitude, v7.longitude}];
  v33 = v11;
  v34 = v10;

  v12 = [(MapCameraController *)self mapView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(MapCameraController *)self mapView];
  [v21 defaultInsetsForBalloonCallout];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v31 = v33;
  v30 = v34;

  v40.origin.x = v25 + left + v14;
  v40.origin.y = v23 + top + v16;
  v40.size.width = v18 - (left + right + v25 + v29);
  v40.size.height = v20 - (top + bottom + v23 + v27);
  return CGRectContainsPoint(v40, *&v30);
}

- (UIEdgeInsets)_insetsForPin
{
  +[MKPinAnnotationView _perceivedSize];
  v3 = v2;
  v5 = v4;
  v6 = +[UIDevice currentDevice];
  if ([v6 userInterfaceIdiom] == 1)
  {
    v7 = v5 + v5;
  }

  else
  {
    v7 = v5 + 4.0;
  }

  v8 = v7;
  v9 = v3 + v3;
  v10 = v7;
  v11 = v3 + v3;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (UIEdgeInsets)_insetsByAddingCompassPaddingToInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(MapCameraController *)self mapView];
  if (sub_10000FA08(v8))
  {
    v9 = [(MapCameraController *)self mapView];
    v10 = sub_10000FA08(v9);

    if (v10 != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = [(MapCameraController *)self mapView];
  [v11 _compassDiameter];
  v13 = v12;

  v14 = sub_100019A44() + v13;
  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    left = v14 + left;
  }

  else
  {
    right = v14 + right;
  }

LABEL_8:
  v15 = top;
  v16 = left;
  v17 = bottom;
  v18 = right;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (double)_maximumEdgeToEdgeDistanceBetweenCurrentAndTargetMapRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v25 = a3.var1.var1;
  v4 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v8 = [(MapCameraController *)self mapView];
  [v8 visibleMapRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(MapCameraController *)self mapView];
  [v17 _zoomLevelForMapRect:0 includeAccessoryPadding:{v6, v5, v4, var1}];
  MKZoomScaleForZoomLevelF();
  v19 = v18;

  v20 = [(MapCameraController *)self mapView];
  [v20 _zoomLevelForMapRect:0 includeAccessoryPadding:{v10, v12, v14, v16}];
  MKZoomScaleForZoomLevelF();
  v22 = v21;

  return fmax(v19, v22) * fmax(fmax(fmax(vabdd_f64(v6, v10), vabdd_f64(v5, v12)), vabdd_f64(v6 + var0, v10 + v14)), vabdd_f64(v5 + v25, v12 + v16));
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectFromLocation:(id)a3 alongRoute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 routeMatch];
  v9 = [v8 stepIndex];
  v10 = [v8 routeCoordinate];
  if (v8)
  {
    v9 = [v8 stepIndex];
    v11 = [v8 routeCoordinate];
  }

  else
  {
    LODWORD(v11) = v10;
    [v6 coordinate];
    GEOLocationCoordinate2DFromCLLocationCoordinate2D();
    v12 = [v7 closestPointOnRoute:?];
    if (GEOPolylineCoordinateIsValid())
    {
      v11 = v12;
      v9 = [v7 stepIndexForPointIndex:v12];
    }

    else
    {
      v11 = v11;
      [v7 _maps_boundingMapRect];
    }
  }

  v13 = [v7 steps];
  v14 = [v13 count];

  if (v9 >= v14)
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

  else
  {
    v15 = [v7 steps];
    v16 = [v15 objectAtIndexedSubscript:v9];
    [v7 _maps_boundingRectForStep:v16 fromPoint:v11];
    x = v17;
    y = v19;
    width = v21;
    height = v23;

    while (1)
    {
      ++v9;
      v25 = [v7 steps];
      v26 = [v25 count];

      if (v9 >= v26)
      {
        break;
      }

      v27 = [v7 steps];
      v28 = [v27 objectAtIndexedSubscript:v9];
      [v7 _maps_boundingRectForStep:v28];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = width;
      v69.size.height = height;
      v74.origin.x = v30;
      v74.origin.y = v32;
      v74.size.width = v34;
      v74.size.height = v36;
      v70 = MKMapRectUnion(v69, v74);
      x = v70.origin.x;
      y = v70.origin.y;
      width = v70.size.width;
      height = v70.size.height;
    }
  }

  v37 = [v7 destination];
  if (v6)
  {
    v38 = [(MapCameraController *)self mapView];
    [v6 coordinate];
    v39 = [POIShapeFactory userLocationPOIShapeWithMapView:v38 coordinate:?];
  }

  else
  {
    v39 = 0;
  }

  v40 = [(MapCameraController *)self mapView];
  v41 = [POIShapeFactory composedWaypointPOIShapeWithMapView:v40 composedWaypoint:v37];

  if (v41)
  {
    v68 = v41;
    v42 = [NSArray arrayWithObjects:&v68 count:1];
  }

  else
  {
    v42 = 0;
  }

  [(MapCameraController *)self mapRectApproximatingRouteFromStartPOIShape:v39 toEndPOIShapes:v42 routeLineMapRect:x, y, width, height];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  if (v41)
  {
  }

  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v75.origin.x = v44;
  v75.origin.y = v46;
  v75.size.width = v48;
  v75.size.height = v50;
  v72 = MKMapRectUnion(v71, v75);
  v51 = v72.origin.x;
  v52 = v72.origin.y;
  v53 = v72.size.width;
  v54 = v72.size.height;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  [WeakRetained mapRectThatFits:v51 edgePadding:{v52, v53, v54, 20.0, 20.0, 20.0, 20.0}];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  v64 = v57;
  v65 = v59;
  v66 = v61;
  v67 = v63;
  result.var1.var1 = v67;
  result.var1.var0 = v66;
  result.var0.var1 = v65;
  result.var0.var0 = v64;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectApproximatingRouteFromStartPOIShape:(id)a3 toEndPOIShapes:(id)a4 routeLineMapRect:(id)a5 includePadding:(BOOL)a6
{
  v6 = a6;
  var1 = a5.var1.var1;
  var0 = a5.var1.var0;
  v9 = a5.var0.var1;
  v10 = a5.var0.var0;
  v13 = a3;
  v14 = a4;
  v15 = v14;
  if (v13 || [v14 count])
  {
    if (v6)
    {
      UIEdgeInsetsMakeWithEdges();
      top = v16;
      bottom = v19;
      v101 = v18;
      v99 = v20;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
      bottom = UIEdgeInsetsZero.bottom;
      v101 = left;
      v99 = right;
    }

    v105 = v10;
    v23 = [[NSMutableArray alloc] initWithArray:v15];
    v24 = v23;
    if (v13)
    {
      [v23 insertObject:v13 atIndex:0];
    }

    v25 = [v24 count];
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
    if (v25)
    {
      v30 = v25;
      v96 = top;
      v103 = height;
      v97 = v95;
      v98 = v15;
      __chkstk_darwin(v25);
      v32 = &v95[-2 * v31];
      v33 = __chkstk_darwin(v31);
      v35 = &v95[-2 * v34];
      v36 = 0;
      for (i = 0; i != v30; ++i)
      {
        v38 = [v24 objectAtIndexedSubscript:{i, v33}];
        [v38 centerCoordinate];
        latitude = v106.latitude;
        longitude = v106.longitude;
        if (CLLocationCoordinate2DIsValid(v106))
        {
          v41 = &v32[2 * v36];
          *v41 = latitude;
          v41[1] = longitude;
          v42 = &v35[2 * v36];
          [v38 estimatedSize];
          *v42 = v43;
          v42[1] = v44;
          ++v36;
        }
      }

      if (v36)
      {
        v95[1] = v95;
        __chkstk_darwin(v45);
        v46 = v32 + 1;
        v47 = &v95[-2 * v36 + 1];
        v48 = v36;
        do
        {
          *(v47 - 1) = MKMapPointForCoordinate(*(v46 - 1));
          v46 += 2;
          v47 += 2;
          --v48;
        }

        while (v48);
        MKMapRectBoundingMapPoints();
        v115.origin.x = v105;
        v115.origin.y = v9;
        v115.size.width = var0;
        v115.size.height = var1;
        v111 = MKMapRectUnion(v110, v115);
        v49 = v111.origin.x;
        v50 = v111.origin.y;
        v51 = v111.size.width;
        v52 = v111.size.height;
        v53 = [(MapCameraController *)self mapView];
        [v53 _zoomLevelForMapRect:0 includeAccessoryPadding:{v49, v50, v51, v52}];
        MKZoomScaleForZoomLevelF();
        v55 = v54;

        v56 = (v35 + 1);
        v57 = v32 + 1;
        v58 = v36;
        v59 = MKMapRectNull.origin.x;
        v60 = y;
        v61 = width;
        v62 = v103;
        v63 = v103;
        v102 = 1.0 / v55;
        do
        {
          v64 = x;
          v65 = y;
          v66 = width;
          v67 = v62;
          if (v55 > 0.0)
          {
            v104 = v61;
            v105 = v60;
            v68 = v63;
            v69 = v55;
            v70 = width;
            v71 = y;
            v72 = x;
            v73 = *(v56 - 1);
            v74 = *v56;
            v75 = v59;
            v76 = MKMapPointForCoordinate(*(v57 - 1));
            v59 = v75;
            v66 = v73 * v102;
            x = v72;
            v67 = v74 * v102;
            y = v71;
            width = v70;
            v55 = v69;
            v63 = v68;
            v62 = v103;
            v61 = v104;
            v60 = v105;
            v64 = v76.x - v66 * 0.5;
            v65 = v76.y - v67 * 0.5;
          }

          if (v59 == x && v60 == y)
          {
            v63 = v67;
            v61 = v66;
            v60 = v65;
            v59 = v64;
          }

          else
          {
            v112.origin.x = v59;
            v112.origin.y = v60;
            v112.size.width = v61;
            v112.size.height = v63;
            v113 = MKMapRectUnion(v112, *&v64);
            v59 = v113.origin.x;
            v60 = v113.origin.y;
            v61 = v113.size.width;
            v63 = v113.size.height;
          }

          v56 += 2;
          v57 += 2;
          --v58;
        }

        while (v58);
        v78 = v59;
        v79 = [(MapCameraController *)self mapView];
        [v79 mapRectThatFits:v78 edgePadding:{v60, v61, v63, v96, v101, bottom, v99}];
        x = v80;
        y = v81;
        width = v82;
        v84 = v83;

        v103 = v84;
        if (v36 == 1)
        {
          v85 = y + v84 * 0.5;
          v107.x = x + width * 0.5;
          v107.y = v85;
          v109.x = v107.x;
          v109.y = y;
          v86 = MKMetersBetweenMapPoints(v107, v109);
          v15 = v98;
          if (v86 < 175.0)
          {
            v108.x = x + width * 0.5;
            v108.y = v85;
            MKCoordinateForMapPoint(v108);
            MKMapRectMakeWithRadialDistance();
            x = v87;
            y = v88;
            width = v89;
            v103 = v90;
          }
        }

        else
        {
          v15 = v98;
        }
      }

      else
      {
        v15 = v98;
      }

      height = v103;
    }
  }

  else
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

  v91 = x;
  v92 = y;
  v93 = width;
  v94 = height;
  result.var1.var1 = v94;
  result.var1.var0 = v93;
  result.var0.var1 = v92;
  result.var0.var0 = v91;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectApproximatingRouteFromStartPOIShape:(id)a3 toEndPOIShapes:(id)a4 routeLineMapRect:(id)a5
{
  var1 = a5.var1.var1;
  var0 = a5.var1.var0;
  v7 = a5.var0.var1;
  v8 = a5.var0.var0;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = a4;
  v15 = a3;
  [(MapCameraController *)self _insetsByAddingCompassPaddingToInsets:UIEdgeInsetsZero.top, left, bottom, right];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(MapCameraController *)self _mapRectApproximatingRouteFromStartPOIShape:v15 toEndPOIShapes:v14 routeLineMapRect:1 includePadding:v8, v7, var0, var1];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [(MapCameraController *)self mapView];
  [v32 mapRectThatFits:v25 edgePadding:{v27, v29, v31, v17, v19, v21, v23}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = v34;
  v42 = v36;
  v43 = v38;
  v44 = v40;
  result.var1.var1 = v44;
  result.var1.var0 = v43;
  result.var0.var1 = v42;
  result.var0.var0 = v41;
  return result;
}

- (id)_poiShapeWaypointMarkersFromRoute:(id)a3
{
  v4 = [a3 waypoints];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1008EE4D4;
  v7[3] = &unk_10162E1D0;
  v7[4] = self;
  v5 = sub_100021DB0(v4, v7);

  return v5;
}

- (id)_poiShapeAnchorPointMarkersFromRoute:(id)a3
{
  v4 = [a3 anchorPoints];
  v5 = [v4 anchorPoints];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1008EE624;
  v8[3] = &unk_10162E1A8;
  v8[4] = self;
  v6 = sub_100021DB0(v5, v8);

  return v6;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectForRoutes:(id)a3 includeCompassInset:(BOOL)a4 waypoints:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v5)
  {
    v10 = [v8 firstObject];
    v11 = [v10 anchorPoints];
    v12 = [v11 count];

    if (v12)
    {
      [(MapCameraController *)self _poiShapeAnchorPointMarkersFromRoute:v10];
    }

    else
    {
      [(MapCameraController *)self _poiShapeWaypointMarkersFromRoute:v10];
    }
    v13 = ;
  }

  else
  {
    v13 = 0;
  }

  [(MapCameraController *)self _mapRectForRoutes:v9 includeCompassInset:v6 startPOIShape:0 endPOIShapes:v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.var1.var1 = v25;
  result.var1.var0 = v24;
  result.var0.var1 = v23;
  result.var0.var0 = v22;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectForRouteLines:(id)a3 includePadding:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 count])
  {
    if (v4)
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = [v6 firstObject];
    v9 = [v8 transportType];

    if (v9 == 1)
    {
      v10 = v7 + 10.0;
    }

    else
    {
      v10 = v7;
    }

    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v37 + 1) + 8 * i) _maps_boundingMapRect];
          v45.origin.x = v20;
          v45.origin.y = v21;
          v45.size.width = v22;
          v45.size.height = v23;
          v42.origin.x = x;
          v42.origin.y = y;
          v42.size.width = width;
          v42.size.height = height;
          v43 = MKMapRectUnion(v42, v45);
          x = v43.origin.x;
          y = v43.origin.y;
          width = v43.size.width;
          height = v43.size.height;
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    v24 = [(MapCameraController *)self mapView];
    [v24 mapRectThatFits:x edgePadding:{y, width, height, v10, v10, v10, v10}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v26 = MKMapRectNull.origin.x;
    v28 = MKMapRectNull.origin.y;
    v30 = MKMapRectNull.size.width;
    v32 = MKMapRectNull.size.height;
  }

  v33 = v26;
  v34 = v28;
  v35 = v30;
  v36 = v32;
  result.var1.var1 = v36;
  result.var1.var0 = v35;
  result.var0.var1 = v34;
  result.var0.var0 = v33;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_mapRectForRoutes:(id)a3 includeCompassInset:(BOOL)a4 startPOIShape:(id)a5 endPOIShapes:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  [(MapCameraController *)self _mapRectForRouteLines:a3 includePadding:0];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(MapCameraController *)self _mapRectApproximatingRouteFromStartPOIShape:v11 toEndPOIShapes:v10 routeLineMapRect:0 includePadding:?];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v62.origin.x = v21;
  v62.origin.y = v23;
  v62.size.width = v25;
  v62.size.height = v27;
  v65.origin.x = v13;
  v65.origin.y = v15;
  v65.size.width = v17;
  v65.size.height = v19;
  v63 = MKMapRectUnion(v62, v65);
  y = v63.origin.y;
  x = v63.origin.x;
  height = v63.size.height;
  width = v63.size.width;
  v28 = MKMapRectNull.origin.y;
  if ((v21 != MKMapRectNull.origin.x || v23 != v28) && v25 != 0.0 && v27 != 0.0 || (bottom = UIEdgeInsetsZero.bottom, right = UIEdgeInsetsZero.right, top = UIEdgeInsetsZero.top, left = UIEdgeInsetsZero.left, v13 != MKMapRectNull.origin.x || v15 != v28) && v17 != 0.0 && v19 != 0.0)
  {
    UIEdgeInsetsMakeWithEdges();
    top = v33;
    left = v34;
    bottom = v35;
    right = v36;
  }

  if (v7)
  {
    [(MapCameraController *)self _insetsByAddingCompassPaddingToInsets:top, left, bottom, right];
    top = v37;
    left = v38;
    bottom = v39;
    right = v40;
  }

  v41 = [(MapCameraController *)self mapView:*&height];
  [v41 mapRectThatFits:v61 edgePadding:{v59, v57, v55, top, left, bottom, right}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = v43;
  v51 = v45;
  v52 = v47;
  v53 = v49;
  result.var1.var1 = v53;
  result.var1.var0 = v52;
  result.var0.var1 = v51;
  result.var0.var0 = v50;
  return result;
}

- (void)_notifyObserversWillChangeVisibleRect
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) mapCameraControllerWillChangeVisibleRect:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_setCenterCoordinate:(CLLocationCoordinate2D)a3 zoomLevel:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v10 = sub_1008EEDF8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = NSStringFromCLLocationCoordinate();
    v14 = 138412546;
    v15 = v11;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "setting center coordinate %@, zoom level %#.2lf animated", &v14, 0x16u);
  }

  v12 = [(MapCameraController *)self mapView];
  [v12 setUserTrackingMode:0];

  [(MapCameraController *)self _notifyObserversWillChangeVisibleRect];
  v13 = [(MapCameraController *)self mapView];
  [v13 setCenterCoordinate:v5 zoomLevel:latitude animated:{longitude, a4}];
}

- (void)_setCenterCoordinate:(CLLocationCoordinate2D)a3 duration:(double)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [(MapCameraController *)self mapView];
  [v8 setUserTrackingMode:0];

  [(MapCameraController *)self _notifyObserversWillChangeVisibleRect];
  v9 = sub_1008EEDF8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromCLLocationCoordinate();
    v28 = 138412290;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setting center coordinate %@ animated", &v28, 0xCu);
  }

  v11 = [(MapCameraController *)self mapView];
  v12 = [v11 _mapLayer];
  VKLocationCoordinate2DMake();
  v14 = v13;
  v16 = v15;
  v17 = [(MapCameraController *)self mapView];
  v18 = [v17 _mapLayer];
  [v18 altitude];
  v20 = v19;
  v21 = [(MapCameraController *)self mapView];
  v22 = [v21 _mapLayer];
  [v22 yaw];
  v24 = v23;
  v25 = [(MapCameraController *)self mapView];
  v26 = [v25 _mapLayer];
  [v26 pitch];
  [v12 setCenterCoordinate:0 altitude:v7 yaw:v14 pitch:v16 duration:v20 timingCurve:v24 completion:{v27, a4}];
}

- (void)_setMapCamera:(id)a3 duration:(double)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(MapCameraController *)self mapView];
  [v12 setUserTrackingMode:0];

  [(MapCameraController *)self _notifyObserversWillChangeVisibleRect];
  v13 = sub_1008EEDF8();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "setting camera %@ animated", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1008EF220;
  v15[3] = &unk_101661A90;
  v15[4] = self;
  v16 = v10;
  v14 = v10;
  [UIView animateWithDuration:a5 delay:v15 options:v11 animations:a4 completion:0.0];
}

- (void)_frameMapRect:(id)a3 duration:(double)a4 completion:(id)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v11 = a5;
  y = MKMapRectNull.origin.y;
  v13 = sub_1008EEDF8();
  v14 = v13;
  if (v9 == MKMapRectNull.origin.x && v8 == y)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v9, *&v8];
      v23 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&var0, *&var1];
      v24 = [NSString stringWithFormat:@"{%@, %@}", v22, v23];

      *buf = 138412290;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "not framing target map rect %@, it's null", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v9, *&v8];
      v17 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&var0, *&var1];
      v18 = [NSString stringWithFormat:@"{%@, %@}", v16, v17];

      v19 = [(MapCameraController *)self mapView];
      [v19 _edgeInsets];
      v20 = NSStringFromUIEdgeInsets(v31);
      *buf = 138543874;
      v26 = v18;
      v27 = 2048;
      v28 = a4;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "setting map camera to frame: %{public}@, duration: %#.1lfs, current edge insets: %{public}@", buf, 0x20u);
    }

    v21 = [(MapCameraController *)self mapView];
    [v21 setUserTrackingMode:0];

    [(MapCameraController *)self _notifyObserversWillChangeVisibleRect];
    v14 = [(MapCameraController *)self mapView];
    [v14 _setVisibleMapRect:v11 duration:v9 completionHandler:v8, var0, var1, a4];
  }
}

- (void)frameMapRect:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v11 = a5;
  y = MKMapRectNull.origin.y;
  v13 = sub_1008EEDF8();
  v14 = v13;
  if (v9 == MKMapRectNull.origin.x && v8 == y)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v9, *&v8];
      v23 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&var0, *&var1];
      v24 = [NSString stringWithFormat:@"{%@, %@}", v22, v23];

      *buf = 138412290;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "not framing target map rect %@, it's null", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v9, *&v8];
      v17 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&var0, *&var1];
      v18 = [NSString stringWithFormat:@"{%@, %@}", v16, v17];

      v19 = [(MapCameraController *)self mapView];
      [v19 _edgeInsets];
      v20 = NSStringFromUIEdgeInsets(v31);
      *buf = 138412802;
      v26 = v18;
      v27 = 1024;
      v28 = v5;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "setting map camera to frame: %@, animated: %d, current edge insets: %{public}@", buf, 0x1Cu);
    }

    v21 = [(MapCameraController *)self mapView];
    [v21 setUserTrackingMode:0];

    [(MapCameraController *)self _notifyObserversWillChangeVisibleRect];
    v14 = [(MapCameraController *)self mapView];
    [v14 _setVisibleMapRect:v5 animated:v11 completionHandler:v9, v8, var0, var1];
  }
}

- (void)restoreRegionForMapSelectionForLabelMarker:(id)a3 edgeInsets:(UIEdgeInsets)a4 completion:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v19 = a3;
  v11 = a5;
  if ([(MapCameraController *)self _mapViewFitsLabelMarker:v19 withEdgeInsets:top, left, bottom, right])
  {
    if (v11)
    {
      v11[2](v11, 1);
    }
  }

  else
  {
    v12 = [(MapCameraController *)self mapView];
    v13 = [v12 camera];
    v14 = [v13 copy];

    [v19 coordinate];
    v16 = v15;
    [v19 coordinate];
    v18 = CLLocationCoordinate2DMake(v16, v17);
    [v14 setCenterCoordinate:{v18.latitude, v18.longitude}];
    [(MapCameraController *)self restoreRegionForMapSelectionWithCamera:v14 completion:v11];
  }
}

- (BOOL)searchResultIsVenueOrBuilding:(id)a3
{
  v3 = [a3 mapItem];
  if ([v3 _hasVenueFeatureType])
  {
    v4 = [v3 _venueFeatureType] == 1 || objc_msgSend(v3, "_venueFeatureType") == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_frameSearchResult:(id)a3 minZoom:(id)a4 maxZoom:(id)a5 completion:(id)a6
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v14 = [(MapCameraController *)self mapView];
    [v14 setUserTrackingMode:0];

    [(MapCameraController *)self _notifyObserversWillChangeVisibleRect];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    v20 = v13;
    v16 = [NSArray arrayWithObjects:&v20 count:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1008EFB1C;
    v18[3] = &unk_10162E180;
    v19 = v10;
    LOBYTE(v17) = 0;
    [WeakRetained goToSearchResults:v16 mapRegion:0 requireMapMovement:1 animation:0 minZoom:v12 maxZoom:v11 disableAdditionalViewportPadding:v17 completion:v18];
  }
}

- (void)frameSearchResults:(id)a3 withResultToSelect:(id)a4 historyItem:(id)a5 suggestedMapRegion:(id)a6 minZoom:(id)a7 maxZoom:(id)a8 disableAdditionalViewportPadding:(BOOL)a9 completion:(id)a10
{
  v24 = a3;
  v16 = a10;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = [(MapCameraController *)self mapView];
  [v20 setUserTrackingMode:0];

  [(MapCameraController *)self _notifyObserversWillChangeVisibleRect];
  if (a4)
  {
    v21 = 1;
  }

  else
  {
    v21 = [v24 count] > 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  LOBYTE(v23) = a9;
  [WeakRetained goToSearchResults:v24 mapRegion:v19 requireMapMovement:v21 setCameraFromMapItemViewportFrame:a5 == 0 animation:0 minZoom:v18 maxZoom:v17 disableAdditionalViewportPadding:v23 completion:v16];
}

- (void)displayTransitRoute:(id)a3 boardingStopCoord:(id)a4 boardingStopIndex:(unint64_t)a5 animated:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v56 = a3;
  v12 = a7;
  if (v56)
  {
    [v56 pointAt:{objc_msgSend(v56, "routeCoordinateAtDistance:beforeRouteCoordinate:", a4, 500.0)}];
    GEOMapPoint3DForCoordinate();
    v14 = v13;
    v16 = v15;
    v17 = [v56 stops];
    v18 = [v17 count];

    if (v18 <= a5)
    {
      v20 = v14;
      v19 = v16;
    }

    else
    {
      v19 = v16;
      v20 = v14;
      v21 = v56;
      do
      {
        v22 = [v21 stops];
        v23 = [v22 objectAtIndexedSubscript:a5];

        v24 = [v23 latLng];
        v25 = v24;
        if (v24)
        {
          [v24 lat];
          [v25 lng];
          GEOMapPoint3DForCoordinate();
          v20 = fmin(v20, v26);
          v14 = fmax(v14, v26);
          v19 = fmin(v19, v27);
          v16 = fmax(v16, v27);
        }

        ++a5;
        v28 = [v56 stops];
        v29 = [v28 count];

        v21 = v56;
      }

      while (a5 < v29);
    }

    v30 = [[GEOMapRegion alloc] initWithMapRect:{v20, v19, v14 - v20, v16 - v19}];
    UIEdgeInsetsMakeWithEdges();
    [(MapCameraController *)self _insetsByAddingCompassPaddingToInsets:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    GEOMapRectForMapRegion();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = [(MapCameraController *)self mapView];
    [v47 mapRectThatFits:v40 edgePadding:{v42, v44, v46, v32, v34, v36, v38}];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    [(MapCameraController *)self frameMapRect:v8 animated:v12 completion:v49, v51, v53, v55];
  }

  else if (v12)
  {
    v12[2](v12, 0);
  }
}

- (void)displayMapRegion:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9 = a3;
  v8 = a5;
  if (v9)
  {
    GEOMapRectForMapRegion();
    [(MapCameraController *)self frameMapRect:v6 animated:v8 completion:?];
  }

  else if (v8)
  {
    v8[2](v8, 0);
  }
}

- (BOOL)_frameVenueLabelMarker:(id)a3 completion:(id)a4
{
  v12 = 0.0;
  v13 = 0.0;
  v11 = 0.0;
  v5 = [a3 positionOfInterest:&v12 zoom:&v11];
  if (v5)
  {
    v6 = [(MapCameraController *)self mapView];
    [v6 _mapKitZoomLevelForVectorKitTileZoomLevel:v11];
    v8 = v7;

    v9 = CLLocationCoordinate2DMake(v12, v13);
    [(MapCameraController *)self _setCenterCoordinate:1 zoomLevel:v9.latitude animated:v9.longitude, v8];
  }

  return v5;
}

- (void)_frameNotVisibleLabelMarker:(id)a3 edgeInsets:(UIEdgeInsets)a4 completion:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v16 = a3;
  v11 = a5;
  if ([(MapCameraController *)self _mapViewFitsLabelMarker:v16 withEdgeInsets:top, left, bottom, right])
  {
    if (v11)
    {
      v11[2](v11, 1);
    }
  }

  else
  {
    [v16 coordinate];
    v13 = v12;
    [v16 coordinate];
    v15 = CLLocationCoordinate2DMake(v13, v14);
    [(MapCameraController *)self _setCenterCoordinate:v11 duration:v15.latitude completion:v15.longitude, 0.25];
  }
}

- (void)_frameVisibleLabelMarker:(id)a3 edgeInsets:(UIEdgeInsets)a4 completion:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v7 = a3;
  v8 = a5;
  v9 = [v7 mapRegion];
  GEOMapRectForMapRegion();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(MapCameraController *)self mapView];
  v126.origin.x = v11;
  v126.origin.y = v13;
  v126.size.width = v15;
  v126.size.height = v17;
  v127 = MKCoordinateRegionForMapRect(v126);
  latitude = v127.center.latitude;
  longitude = v127.center.longitude;
  latitudeDelta = v127.span.latitudeDelta;
  longitudeDelta = v127.span.longitudeDelta;
  v23 = [(MapCameraController *)self mapView];
  [v18 convertRegion:v23 toRectToView:{latitude, longitude, latitudeDelta, longitudeDelta}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [(MapCameraController *)self mapView];
  v33 = [v32 viewForAnnotation:v7];

  if (v33)
  {
    [v33 bounds];
    x = v34;
    y = v36;
    width = v38;
    height = v40;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v42 = [v33 subviews];
    v43 = [v42 countByEnumeratingWithState:&v121 objects:v125 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v122;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v122 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [*(*(&v121 + 1) + 8 * i) frame];
          v149.origin.x = v47;
          v149.origin.y = v48;
          v149.size.width = v49;
          v149.size.height = v50;
          v128.origin.x = v25;
          v128.origin.y = v27;
          v128.size.width = v29;
          v128.size.height = v31;
          v129 = CGRectUnion(v128, v149);
        }

        x = v129.origin.x;
        y = v129.origin.y;
        width = v129.size.width;
        height = v129.size.height;
        v44 = [v42 countByEnumeratingWithState:&v121 objects:v125 count:16];
      }

      while (v44);
    }

    if (width != CGSizeZero.width || height != CGSizeZero.height)
    {
      v52 = [(MapCameraController *)self mapView];
      [v52 convertRect:v33 fromView:{x, y, width, height}];
      v25 = v53;
      v27 = v54;
      v29 = v55;
      v31 = v56;
    }
  }

  v57 = [(MapCameraController *)self mapView];
  [v7 screenCollisionBounds];
  [v57 convertRect:0 fromView:?];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v130.origin.x = v25;
  v130.origin.y = v27;
  v130.size.width = v29;
  v130.size.height = v31;
  v150.origin.x = v59;
  v150.origin.y = v61;
  v150.size.width = v63;
  v150.size.height = v65;
  v131 = CGRectUnion(v130, v150);
  v132 = CGRectInset(v131, -5.0, -5.0);
  v66 = v132.origin.x;
  v67 = v132.origin.y;
  v68 = v132.size.width;
  v69 = v132.size.height;
  if (!__isinfd() && !__isinfd() && !__isinfd() && !__isinfd())
  {
    v70 = [(MapCameraController *)self mapView];
    [v70 bounds];
    v72 = v71 + left;
    v115 = v73 + top;
    v75 = v74 - (left + right);
    v77 = v76 - (top + bottom);

    v133.origin.x = v66;
    v133.origin.y = v67;
    v133.size.width = v68;
    v133.size.height = v69;
    MinX = CGRectGetMinX(v133);
    v134.origin.x = v72;
    v134.origin.y = v115;
    v134.size.width = v75;
    v134.size.height = v77;
    if (MinX >= CGRectGetMinX(v134))
    {
      v137.origin.x = v66;
      v137.origin.y = v67;
      v137.size.width = v68;
      v137.size.height = v69;
      MaxX = CGRectGetMaxX(v137);
      v138.origin.x = v72;
      v138.size.height = v77;
      v138.origin.y = v115;
      v138.size.width = v75;
      if (MaxX <= CGRectGetMaxX(v138))
      {
        horizontal = UIOffsetZero.horizontal;
      }

      else
      {
        v139.origin.x = v66;
        v139.origin.y = v67;
        v139.size.width = v68;
        v139.size.height = v69;
        v82 = CGRectGetMaxX(v139);
        v140.origin.x = v72;
        v140.size.height = v77;
        v140.origin.y = v115;
        v140.size.width = v75;
        horizontal = v82 - CGRectGetMaxX(v140);
      }
    }

    else
    {
      v135.origin.x = v72;
      v135.size.height = v77;
      v135.origin.y = v115;
      v135.size.width = v75;
      v79 = CGRectGetMinX(v135);
      v136.origin.x = v66;
      v136.origin.y = v67;
      v136.size.width = v68;
      v136.size.height = v69;
      horizontal = CGRectGetMinX(v136) - v79;
    }

    v118 = horizontal;
    v141.origin.x = v66;
    v141.origin.y = v67;
    v141.size.width = v68;
    v141.size.height = v69;
    MinY = CGRectGetMinY(v141);
    v142.origin.x = v72;
    v142.size.height = v77;
    v142.origin.y = v115;
    v142.size.width = v75;
    if (MinY >= CGRectGetMinY(v142))
    {
      v145.origin.x = v66;
      v145.origin.y = v67;
      v145.size.width = v68;
      v145.size.height = v69;
      MaxY = CGRectGetMaxY(v145);
      v146.origin.x = v72;
      v146.size.height = v77;
      v146.origin.y = v115;
      v146.size.width = v75;
      if (MaxY <= CGRectGetMaxY(v146))
      {
        vertical = UIOffsetZero.vertical;
      }

      else
      {
        v147.origin.x = v66;
        v147.origin.y = v67;
        v147.size.width = v68;
        v147.size.height = v69;
        v87 = CGRectGetMaxY(v147);
        v148.origin.x = v72;
        v148.size.height = v77;
        v148.origin.y = v115;
        v148.size.width = v75;
        vertical = v87 - CGRectGetMaxY(v148);
      }
    }

    else
    {
      v143.origin.x = v72;
      v143.size.height = v77;
      v143.origin.y = v115;
      v143.size.width = v75;
      v84 = CGRectGetMinY(v143);
      v144.origin.x = v66;
      v144.origin.y = v67;
      v144.size.width = v68;
      v144.size.height = v69;
      vertical = CGRectGetMinY(v144) - v84;
    }

    v88 = [(MapCameraController *)self mapView];
    [v88 centerCoordinate];
    v90 = v89;
    v92 = v91;

    if (v118 > 0.0 || vertical > 0.0)
    {
      v95 = [(MapCameraController *)self mapView];
      v96 = [(MapCameraController *)self mapView];
      [v95 convertCoordinate:v96 toPointToView:{v90, v92}];
      v98 = v97;
      v100 = v99;

      v101 = [(MapCameraController *)self mapView];
      v102 = [(MapCameraController *)self mapView];
      [v101 convertPoint:v102 toCoordinateFromView:{v98 + v118, v100 + vertical}];
      v93 = v103;
      v94 = v104;
    }

    else
    {
      v93 = v90;
      v94 = v92;
    }

    if (v93 != v90 || v94 != v92)
    {
      v105 = [(MapCameraController *)self mapView];
      [v105 region];

      MKMapRectForCoordinateRegion();
      v110 = [[GEOMapRegion alloc] initWithMapRect:{v106, v107, v108, v109}];
      v111 = [(MapCameraController *)self mapView];
      v112 = [v111 _mapLayer];
      [v112 durationToAnimateToMapRegion:v110];
      v114 = v113;

      [(MapCameraController *)self _setCenterCoordinate:v8 duration:v93 completion:v94, v114];
    }
  }
}

- (void)frameLabelMarker:(id)a3 edgeInsets:(UIEdgeInsets)a4 minZoom:(id)a5 maxZoom:(id)a6 completion:(id)a7
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v21 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [v21 featureAnnotation];
  if ([v18 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
  {
    v19 = [v18 searchResult];
    if (v19 && [(MapCameraController *)self searchResultIsVenueOrBuilding:v19])
    {
      [(MapCameraController *)self _frameSearchResult:v19 minZoom:v15 maxZoom:v16 completion:v17];

      goto LABEL_12;
    }
  }

  if (![v21 isVenueButton] || !-[MapCameraController _frameVenueLabelMarker:completion:](self, "_frameVenueLabelMarker:completion:", v21, v17))
  {
    v20 = [v21 mapRegion];

    if (v20)
    {
      if ([v21 isVisible])
      {
        [(MapCameraController *)self _frameVisibleLabelMarker:v21 edgeInsets:v17 completion:top, left, bottom, right];
      }

      else
      {
        [(MapCameraController *)self _frameNotVisibleLabelMarker:v21 edgeInsets:v17 completion:top, left, bottom, right];
      }
    }
  }

LABEL_12:
}

- (void)frameMapItem:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a3 _displayMapRegion];
  [(MapCameraController *)self displayMapRegion:v9 animated:v5 completion:v8];
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectForTripFromLocation:(id)a3 alongRoute:(id)a4
{
  [(MapCameraController *)self _mapRectFromLocation:a3 alongRoute:a4];
  result.var1.var1 = v7;
  result.var1.var0 = v6;
  result.var0.var1 = v5;
  result.var0.var0 = v4;
  return result;
}

- (void)frameApproximateRouteFromStartPOIShape:(id)a3 toEndPOIShapes:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10 || [v11 count])
  {
    [(MapCameraController *)self mapRectApproximatingRouteFromStartPOIShape:v10 toEndPOIShapes:v11 routeLineMapRect:MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height];
    v14 = v13;
    v46 = v15;
    v47 = v13;
    v17 = v16;
    v18 = v15;
    v20 = v19;
    v21 = [(MapCameraController *)self mapView];
    [v21 visibleMapRect];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [(MapCameraController *)self mapView];
    [v30 _zoomLevelForMapRect:0 includeAccessoryPadding:{v14, v17, v18, v20}];
    MKZoomScaleForZoomLevelF();
    v32 = v31;

    v33 = [(MapCameraController *)self mapView];
    [v33 _zoomLevelForMapRect:0 includeAccessoryPadding:{v23, v25, v27, v29}];
    MKZoomScaleForZoomLevelF();
    v35 = v34;

    v36 = fmax(v32, v35) * fmax(fmax(fmax(vabdd_f64(v47, v23), vabdd_f64(v17, v25)), vabdd_f64(v47 + v46, v23 + v27)), vabdd_f64(v17 + v20, v25 + v29));
    if (v36 <= 20.0)
    {
      v37 = sub_1008EEDF8();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v47, *&v17];
        v39 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v46, *&v20];
        v40 = [NSString stringWithFormat:@"{%@, %@}", v38, v39];

        v41 = v40;
        v42 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v23, *&v25];
        v43 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v27, *&v29];
        v44 = [NSString stringWithFormat:@"{%@, %@}", v42, v43];

        *buf = 138413058;
        v49 = v40;
        v50 = 2112;
        v51 = v44;
        v52 = 2048;
        v53 = v36;
        v54 = 2048;
        v55 = 0x4034000000000000;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "not framing approx route, target map rect %@ not different enough from current map rect %@ (%#.1lf <= %#.1lf)", buf, 0x2Au);
      }

      if (v12)
      {
        v12[2](v12, 1);
      }
    }

    else
    {
      [(MapCameraController *)self frameMapRect:v7 animated:v12 completion:v47, v17, v46, v20];
    }
  }

  else
  {
    v45 = sub_1008EEDF8();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "not framing approx route, no POI shapes provided", buf, 2u);
    }
  }
}

- (void)frameRoutes:(id)a3 includeCompassInset:(BOOL)a4 waypoints:(BOOL)a5 animated:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v12 = a7;
  [(MapCameraController *)self _mapRectForRoutes:a3 includeCompassInset:v9 waypoints:v8];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(MapCameraController *)self _maximumEdgeToEdgeDistanceBetweenCurrentAndTargetMapRect:?];
  v22 = v21;
  if (v21 <= 10.0)
  {
    v23 = sub_1008EEDF8();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v14, *&v16];
      v25 = [NSString stringWithFormat:@"{%.1f, %.1f}", *&v18, *&v20];
      v26 = [NSString stringWithFormat:@"{%@, %@}", v24, v25];

      v27 = v26;
      v28 = [(MapCameraController *)self mapView];
      [v28 visibleMapRect];
      v30 = v29;
      v32 = v31;
      v35 = [NSString stringWithFormat:@"{%.1f, %.1f}", v33, v34];
      v36 = [NSString stringWithFormat:@"{%.1f, %.1f}", v30, v32];
      v37 = [NSString stringWithFormat:@"{%@, %@}", v35, v36];

      *buf = 138413058;
      v39 = v26;
      v40 = 2112;
      v41 = v37;
      v42 = 2048;
      v43 = v22;
      v44 = 2048;
      v45 = 0x4024000000000000;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "not framing routes, target map rect %@ not different enough from current map rect %@ (%#.1lf <= %#.1lf)", buf, 0x2Au);
    }

    if (v12)
    {
      v12[2](v12, 1);
    }
  }

  else
  {
    [(MapCameraController *)self frameMapRect:v7 animated:v12 completion:v14, v16, v18, v20];
  }
}

- (MapCameraController)initWithMapView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MapCameraController;
  v5 = [(MapCameraController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mapView, v4);
    v7 = +[NSHashTable weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = v6;
  }

  return v6;
}

@end