@interface MKMapView
- ($873BFAB23BBB6E2F0B0288ED2F935688)clampRect:(id)a3 toMinZoom:(id)a4 maxZoom:(id)a5;
- ($873BFAB23BBB6E2F0B0288ED2F935688)clampRect:(id)a3 toMinZoom:(id)a4 maxZoom:(id)a5 withFixedPoint:(id)a6;
- ($873BFAB23BBB6E2F0B0288ED2F935688)displayMapRegionForSearchResult:(id)a3;
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectContainingSearchResults:(id)a3;
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectContainingSearchResults:(id)a3 edgePadding:(UIEdgeInsets)a4;
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectThatFits:(id)a3 minMetersPerPoint:(double)a4;
- ($873BFAB23BBB6E2F0B0288ED2F935688)regionForSearchResults:(id)a3 suggestedRegion:(id)a4 minZoom:(id)a5 maxZoom:(id)a6 disableAdditionalViewportPadding:(BOOL)a7;
- (BOOL)isCoordinateVisible:(CLLocationCoordinate2D)a3;
- (UIEdgeInsets)defaultInsetsForBalloonCallout;
- (UIEdgeInsets)defaultInsetsForPinAnnotations;
- (UIEdgeInsets)splitViewInsetsForPinAnnotations;
- (id)snapshotImage;
- (id)snapshotImageWithScale:(double)a3 allowSnapshotting:(BOOL)a4;
- (id)snapshotOptions;
- (void)_performFlyoverAnnouncementAnimation:(id)a3;
- (void)animateToVisibleMapRect:(id)a3 usingDefaultAnimationDuration:(BOOL)a4 resetHeading:(BOOL)a5 completion:(id)a6;
- (void)getRapSnapshotImageDataWithCompletion:(id)a3;
- (void)goToSearchResults:(id)a3 mapRegion:(id)a4 requireMapMovement:(BOOL)a5 setCameraFromMapItemViewportFrame:(BOOL)a6 animation:(int64_t)a7 minZoom:(id)a8 maxZoom:(id)a9 disableAdditionalViewportPadding:(BOOL)a10 completion:(id)a11;
@end

@implementation MKMapView

- ($873BFAB23BBB6E2F0B0288ED2F935688)clampRect:(id)a3 toMinZoom:(id)a4 maxZoom:(id)a5 withFixedPoint:(id)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v9 = a3.var1.var1;
  v10 = a3.var1.var0;
  v11 = a3.var0.var1;
  v12 = a3.var0.var0;
  v14 = a4;
  v15 = a5;
  [(MKMapView *)self _zoomLevelForMapRect:0 includeAccessoryPadding:v12, v11, v10, v9];
  v17 = v16;
  if (v14 && ([v14 doubleValue], v18 = v14, v17 < v19) || v15 && (objc_msgSend(v15, "doubleValue"), v18 = v15, v17 > v20))
  {
    [v18 doubleValue];
    v22 = exp2(v17 - v21);
    v10 = v22 * v10;
    v9 = v22 * v9;
    v12 = v22 * v12 + (1.0 - v22) * var0;
    v11 = v22 * v11 + (1.0 - v22) * var1;
  }

  v23 = v12;
  v24 = v11;
  v25 = v10;
  v26 = v9;
  result.var1.var1 = v26;
  result.var1.var0 = v25;
  result.var0.var1 = v24;
  result.var0.var0 = v23;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)clampRect:(id)a3 toMinZoom:(id)a4 maxZoom:(id)a5
{
  [(MKMapView *)self clampRect:a4 toMinZoom:a5 maxZoom:a3.var0.var0 withFixedPoint:a3.var0.var1, a3.var1.var0, a3.var1.var1, a3.var0.var0 + a3.var1.var0 * 0.5, a3.var0.var1 + a3.var1.var1 * 0.5];
  result.var1.var1 = v8;
  result.var1.var0 = v7;
  result.var0.var1 = v6;
  result.var0.var0 = v5;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)displayMapRegionForSearchResult:(id)a3
{
  v3 = [a3 mapItem];
  v4 = [v3 _geoMapItem];
  v5 = [v4 displayMapRegionOrNil];

  if (v5)
  {
    GEOMapRectForMapRegion();
    x = v6;
    y = v8;
    width = v10;
    height = v12;
  }

  else
  {
    x = MKMapRectNull.origin.x;
    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.var1.var1 = v17;
  result.var1.var0 = v16;
  result.var0.var1 = v15;
  result.var0.var0 = v14;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)regionForSearchResults:(id)a3 suggestedRegion:(id)a4 minZoom:(id)a5 maxZoom:(id)a6 disableAdditionalViewportPadding:(BOOL)a7
{
  v7 = a7;
  var1 = a4.var1.var1;
  var0 = a4.var1.var0;
  v12 = a4.var0.var1;
  v13 = a4.var0.var0;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  if ([(MKMapView *)self rectIsEmpty:v13, v12, var0, var1])
  {
    if ([v15 count] != 1)
    {
      v18 = 0;
LABEL_21:
      [(MKMapView *)self mapRectContainingSearchResults:v15];
      v13 = v30;
      v12 = v31;
      var0 = v32;
      var1 = v33;
      v29 = [(MKMapView *)self rectIsEmpty:?];
      goto LABEL_22;
    }

    v18 = [v15 firstObject];
LABEL_16:
    if (v18)
    {
      [(MKMapView *)self displayMapRegionForSearchResult:v18];
      v13 = v25;
      v12 = v26;
      var0 = v27;
      var1 = v28;
      if (![(MKMapView *)self rectIsEmpty:?])
      {
        v29 = 0;
        goto LABEL_23;
      }
    }

    goto LABEL_21;
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v93 objects:v97 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v94;
    while (2)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v94 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v93 + 1) + 8 * i) coordinate];
        v101 = MKMapPointForCoordinate(v98);
        v104.origin.x = v13;
        v104.origin.y = v12;
        v104.size.width = var0;
        v104.size.height = var1;
        if (MKMapRectContainsPoint(v104, v101))
        {
          v24 = 0;
          goto LABEL_14;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v93 objects:v97 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v24 = 1;
LABEL_14:

  if ([v19 count] != 1)
  {
    v18 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v18 = [v19 firstObject];
  if (v24)
  {
    goto LABEL_16;
  }

  v29 = 0;
LABEL_22:
  if (v18)
  {
LABEL_23:
    [v18 coordinate];
    v102 = MKMapPointForCoordinate(v99);
    v105.origin.x = v13;
    v105.origin.y = v12;
    v105.size.width = var0;
    v105.size.height = var1;
    if (!MKMapRectContainsPoint(v105, v102))
    {
      [(MKMapView *)self displayMapRegionForSearchResult:v18];
      v13 = v34;
      v12 = v35;
      var0 = v36;
      var1 = v37;
      v29 = [(MKMapView *)self rectIsEmpty:?];
    }

    v38 = [v18 mapItem];
    if ([v38 _hasVenueFeatureType])
    {
      v39 = [v18 mapItem];
      if ([v39 _venueFeatureType] == 1)
      {
      }

      else
      {
        [v18 mapItem];
        v49 = v29;
        v50 = v15;
        v51 = v16;
        v52 = v17;
        v54 = v53 = v7;
        v91 = [v54 _venueFeatureType];

        v7 = v53;
        v17 = v52;
        v16 = v51;
        v15 = v50;
        v29 = v49;

        if (v91 != 2)
        {
          goto LABEL_36;
        }
      }

      v55 = [v18 mapItem];
      v56 = [v55 _hasDisplayMaxZoom];

      if (!v56)
      {
LABEL_36:
        if (v29)
        {
          [v18 coordinate];
          MKMapRectMakeWithRadialDistance();
          v13 = v62;
          v12 = v63;
          var0 = v64;
          var1 = v65;
        }

        v40 = 0;
        if (v7)
        {
          goto LABEL_39;
        }

LABEL_29:
        [(MKMapView *)self splitViewInsetsForPinAnnotations];
        top = v41;
        left = v43;
        bottom = v45;
        right = v47;
        goto LABEL_40;
      }

      v57 = [v18 mapItem];
      [v57 _displayMaxZoom];
      [(MKMapView *)self _mapKitZoomLevelForVectorKitTileZoomLevel:v58];
      v38 = [NSNumber numberWithDouble:?];

      if (!v16 || ([v38 floatValue], v60 = v59, objc_msgSend(v16, "floatValue"), v60 > v61))
      {
        v38 = v38;

        v16 = v38;
      }
    }

    goto LABEL_36;
  }

LABEL_28:
  v40 = 1;
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_39:
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
LABEL_40:
  [(MKMapView *)self mapRectThatFits:v13 edgePadding:v12, var0, var1, top, left, bottom, right];
  [MKMapView mapRectThatFits:"mapRectThatFits:minMetersPerPoint:" minMetersPerPoint:?];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  if (v17 | v16)
  {
    if (v40)
    {
      v74 = sub_100729204(v15);
      v103.x = v74 + v75 * 0.5;
      v103.y = v76 + v77 * 0.5;
      y = v103.y;
      x = v103.x;
      v106.origin.x = v67;
      v106.origin.y = v69;
      v106.size.width = v71;
      v106.size.height = v73;
      v78 = MKMapRectContainsPoint(v106, v103);
      v80 = y;
      v79 = x;
      if (!v78)
      {
        v79 = v13 + var0 * 0.5;
        v80 = v12 + var1 * 0.5;
      }
    }

    else
    {
      [v18 coordinate];
      v81 = MKMapPointForCoordinate(v100);
      v79 = v81.x;
      v80 = v81.y;
    }

    [(MKMapView *)self clampRect:v16 toMinZoom:v17 maxZoom:v67 withFixedPoint:v69, v71, v73, v79, v80, *&y];
    v67 = v82;
    v69 = v83;
    v71 = v84;
    v73 = v85;
  }

  v86 = v67;
  v87 = v69;
  v88 = v71;
  v89 = v73;
  result.var1.var1 = v89;
  result.var1.var0 = v88;
  result.var0.var1 = v87;
  result.var0.var0 = v86;
  return result;
}

- (void)goToSearchResults:(id)a3 mapRegion:(id)a4 requireMapMovement:(BOOL)a5 setCameraFromMapItemViewportFrame:(BOOL)a6 animation:(int64_t)a7 minZoom:(id)a8 maxZoom:(id)a9 disableAdditionalViewportPadding:(BOOL)a10 completion:(id)a11
{
  v12 = a6;
  v13 = a5;
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a11;
  if ([v16 count])
  {
    if ([v16 count] == 1)
    {
      v82 = v18;
      v21 = [v16 firstObject];
      v22 = [v21 mapItem];
      v23 = [v22 _viewportFrame];

      if (v23 && v12)
      {
        [v22 _viewportFrame];
        v25 = v24 = v19;
        [v25 latitude];
        v27 = v26;
        [v25 longitude];
        v102 = CLLocationCoordinate2DMake(v27, v28);
        MKMapPointForCoordinate(v102);
        [v25 distance];
        [(MKMapView *)self frame];
        MKMapRectMakeWithZoomLevel();
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        [(MKMapView *)self frame];
        v39 = [MKMapCamera _cameraLookingAtMapRect:v30 forViewSize:v32, v34, v36, v37, v38];
        [v25 pitch];
        [v39 setPitch:v40];
        [v25 heading];
        [v39 setHeading:v41];
        v95[0] = _NSConcreteStackBlock;
        v95[1] = 3221225472;
        v95[2] = sub_1007299F4;
        v95[3] = &unk_1016279D8;
        v96 = v20;
        v97 = v30;
        v98 = v32;
        v99 = v34;
        v100 = v36;
        [(MKMapView *)self setCamera:v39 animated:0 completionHandler:v95];

        v19 = v24;
        v18 = v82;
        goto LABEL_46;
      }

      v18 = v82;
    }

    v42 = a10;
    if (v13)
    {
      v43 = 0;
      v44 = 1;
    }

    else
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v45 = v16;
      v46 = [v45 countByEnumeratingWithState:&v91 objects:v101 count:16];
      if (v46)
      {
        v47 = v46;
        v79 = v13;
        v80 = v19;
        v81 = v17;
        v83 = v18;
        v43 = 0;
        v48 = 0;
        v49 = *v92;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v92 != v49)
            {
              objc_enumerationMutation(v45);
            }

            v51 = *(*(&v91 + 1) + 8 * i);
            [v51 coordinate];
            if ([(MKMapView *)self isCoordinateVisible:?])
            {
              if (!v43)
              {
                v43 = v51;
              }

              ++v48;
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v91 objects:v101 count:16];
        }

        while (v47);
        v44 = v48 == 0;
        v19 = v80;
        v17 = v81;
        v18 = v83;
        v13 = v79;
      }

      else
      {
        v43 = 0;
        v44 = 1;
      }

      v42 = a10;
    }

    GEOMapRectForMapRegion();
    [(MKMapView *)self regionForSearchResults:v16 suggestedRegion:v18 minZoom:v19 maxZoom:v42 disableAdditionalViewportPadding:?];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    [(MKMapView *)self bounds];
    v62 = fmin(v60 / v57, v61 / v59);
    if (__isinfd() || __isnand())
    {
      MKZoomScaleForZoomLevelF();
      v62 = v63;
    }

    [(MKMapView *)self visibleMapRect];
    v65 = v64;
    v67 = v66;
    [(MKMapView *)self bounds];
    v70 = fmin(v68 / v65, v69 / v67);
    if (__isinfd() || __isnand())
    {
      MKZoomScaleForZoomLevelF();
      v70 = v71;
    }

    if (v20)
    {
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_100729A1C;
      v85[3] = &unk_1016279D8;
      v86 = v20;
      v87 = v53;
      v88 = v55;
      v89 = v57;
      v90 = v59;
      v72 = objc_retainBlock(v85);

      if (v44)
      {
LABEL_33:
        if (a7)
        {
          v13 = a7 != 2;
        }

        v74 = self;
        v75 = v53;
        v76 = v55;
        v77 = v57;
        v78 = v59;
        v73 = v13;
        goto LABEL_44;
      }
    }

    else
    {
      v72 = 0;
      if (v44)
      {
        goto LABEL_33;
      }
    }

    if (v62 / v70 <= 4.0)
    {
      if (v20)
      {
        (*(v20 + 2))(v20, 1, v43, v53, v55, v57, v59);
      }

      goto LABEL_45;
    }

    if (a7)
    {
      v73 = a7 != 2;
    }

    else
    {
      v73 = v62 / v70 < 18.0;
    }

    v74 = self;
    v75 = v53;
    v76 = v55;
    v77 = v57;
    v78 = v59;
LABEL_44:
    [(MKMapView *)v74 _setVisibleMapRect:v73 animated:v72 completionHandler:v75, v76, v77, v78];
LABEL_45:

    goto LABEL_46;
  }

  if (v20)
  {
    (*(v20 + 2))(v20, 1, 0, MKMapRectNull.origin.x, MKMapRectNull.origin.y, MKMapRectNull.size.width, MKMapRectNull.size.height);
  }

LABEL_46:
}

- (BOOL)isCoordinateVisible:(CLLocationCoordinate2D)a3
{
  [(MKMapView *)self convertCoordinate:self toPointToView:a3.latitude, a3.longitude];
  v5 = v4;
  v7 = v6;
  [(MKMapView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(MKMapView *)self _edgeInsets];
  v17 = v16 + v11;
  v20 = v13 - (v18 + v19);
  v22 = v15 - (v16 + v21);
  v23 = v18 + v9;
  v24 = v17;
  v25 = v20;
  v26 = v5;
  v27 = v7;

  return CGRectContainsPoint(*&v23, *&v26);
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectContainingSearchResults:(id)a3 edgePadding:(UIEdgeInsets)a4
{
  [(MKMapView *)self mapRectThatFits:sub_100729204(a3) edgePadding:?];

  [MKMapView mapRectThatFits:"mapRectThatFits:minMetersPerPoint:" minMetersPerPoint:?];
  result.var1.var1 = v8;
  result.var1.var0 = v7;
  result.var0.var1 = v6;
  result.var0.var0 = v5;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectContainingSearchResults:(id)a3
{
  v4 = a3;
  [(MKMapView *)self defaultInsetsForPinAnnotations];
  [(MKMapView *)self mapRectContainingSearchResults:v4 edgePadding:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var1.var1 = v16;
  result.var1.var0 = v15;
  result.var0.var1 = v14;
  result.var0.var0 = v13;
  return result;
}

- (UIEdgeInsets)splitViewInsetsForPinAnnotations
{
  +[MKPinAnnotationView _perceivedSize];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = v3;
  result.right = v3;
  result.bottom = v6;
  result.left = v7;
  result.top = v5;
  return result;
}

- (UIEdgeInsets)defaultInsetsForBalloonCallout
{
  v2 = 82.0;
  v3 = 45.0;
  v4 = 40.0;
  v5 = 40.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)defaultInsetsForPinAnnotations
{
  v2 = [(MKMapView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 3)
  {
    v4 = 10.0;
  }

  else
  {
    v4 = 40.0;
  }

  if (v3 == 3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = MKPopoverSmallCalloutHeight;
  }

  +[MKPinAnnotationView _perceivedSize];
  v7 = v6;
  v8 = v6 + v5;
  v9 = v4;
  v10 = v4;
  result.right = v10;
  result.bottom = v7;
  result.left = v9;
  result.top = v8;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRectThatFits:(id)a3 minMetersPerPoint:(double)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  y = a3.var0.var1;
  x = a3.var0.var0;
  v10 = a3.var0.var0 + a3.var1.var0;
  v11 = a3.var0.var1 + a3.var1.var1;
  v9 = v11;
  MKCoordinateForMapPoint(a3.var0);
  v23.x = v10;
  v23.y = v9;
  MKCoordinateForMapPoint(v23);
  GEOCalculateDistance();
  v13 = v12;
  [(MKMapView *)self bounds];
  if (v13 / v14 < a4)
  {
    v15 = a4 / (v13 / v14);
    v16 = var0 * -0.5 * v15;
    v17 = var1 * -0.5 * v15;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = var0;
    v24.size.height = var1;
    v25 = MKMapRectInset(v24, v16, v17);
    x = v25.origin.x;
    y = v25.origin.y;
    var0 = v25.size.width;
    var1 = v25.size.height;
  }

  v18 = x;
  v19 = y;
  v20 = var0;
  v21 = var1;
  result.var1.var1 = v21;
  result.var1.var0 = v20;
  result.var0.var1 = v19;
  result.var0.var0 = v18;
  return result;
}

- (id)snapshotOptions
{
  v3 = objc_alloc_init(MKMapSnapshotOptions);
  [(MKMapView *)self bounds];
  [v3 setSize:{v4, v5}];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  [v3 setScale:?];

  [v3 setMapType:{-[MKMapView mapType](self, "mapType")}];
  [(MKMapView *)self visibleMapRect];
  [v3 setMapRect:?];
  v7 = [(MKMapView *)self camera];
  [v3 setCamera:v7];

  return v3;
}

- (void)animateToVisibleMapRect:(id)a3 usingDefaultAnimationDuration:(BOOL)a4 resetHeading:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v10 = a3.var0.var1;
  v11 = a3.var0.var0;
  v13 = a6;
  if (v11 != MKMapRectNull.origin.x || v10 != MKMapRectNull.origin.y)
  {
    [(MKMapView *)self mapRectThatFits:v11 edgePadding:v10, var0, var1, 60.0, 60.0, 60.0, 60.0];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(MKMapView *)self bounds];
    v25 = [MKMapCamera _cameraLookingAtMapRect:v16 forViewSize:v18, v20, v22, v23, v24];
    v26 = v25;
    if (v6)
    {
      [v25 setHeading:0.0];
      if (!v7)
      {
LABEL_7:
        v27 = objc_opt_class();
        [(MKMapView *)self visibleMapRect];
        [v27 _animationDurationFromMapRect:? toMapRect:?];
        v29 = v28;
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100D1D104;
        v31[3] = &unk_101661A90;
        v31[4] = self;
        v32 = v26;
        [UIView animateWithDuration:v31 animations:v13 completion:v29];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v30 = [(MKMapView *)self camera];
      [v30 heading];
      [v26 setHeading:?];

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    [(MKMapView *)self setCamera:v26 animated:1 completionHandler:v13];
    goto LABEL_10;
  }

LABEL_11:
}

- (id)snapshotImageWithScale:(double)a3 allowSnapshotting:(BOOL)a4
{
  v4 = a4;
  [(MKMapView *)self bounds];
  v21.width = v7;
  v21.height = v8;
  UIGraphicsBeginImageContextWithOptions(v21, 0, a3);
  v9 = [(MKMapView *)self window];
  v10 = [v9 windowScene];

  if ([v10 activationState])
  {
    v11 = [v10 activationState];
    if (!v4 || v11 != 1)
    {
      goto LABEL_10;
    }
  }

  else if (!v4)
  {
    goto LABEL_10;
  }

  v12 = [(MKMapView *)self window];
  v13 = [v12 screen];
  if (v13)
  {
    v14 = v13;
    v15 = [UIApplication _maps_isAnySceneForegroundForRole:_UIWindowSceneSessionTypeCoverSheet];

    if (!v15)
    {
      [(MKMapView *)self bounds];
      [(MKMapView *)self drawViewHierarchyInRect:1 afterScreenUpdates:?];
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_10:
  v16 = [(MKMapView *)self rendersInBackground];
  [(MKMapView *)self setRendersInBackground:1];
  v17 = [(MKMapView *)self layer];
  [v17 renderInContext:UIGraphicsGetCurrentContext()];

  [(MKMapView *)self setRendersInBackground:v16];
LABEL_11:
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (id)snapshotImage
{
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  v4 = [(MKMapView *)self snapshotImageWithScale:?];

  return v4;
}

- (void)getRapSnapshotImageDataWithCompletion:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_RAPCommunityID())
  {
    v5 = [(MKMapView *)self snapshotOptions];
    v6 = [[MKMapSnapshotter alloc] initWithOptions:v5];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100E6368C;
    v7[3] = &unk_101656670;
    v8 = v4;
    [v6 startWithCompletionHandler:v7];
  }

  else
  {
    v5 = [(MKMapView *)self snapshotImage];
    v6 = UIImageJPEGRepresentation(v5, 0.400000006);
    (*(v4 + 2))(v4, v6);
  }
}

- (void)_performFlyoverAnnouncementAnimation:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:17024 flyoverAnimationID:{objc_msgSend(v4, "animationID")}];

  v6 = [v4 flyover];

  [(MKMapView *)self _performFlyoverAnimation:v6];
}

@end