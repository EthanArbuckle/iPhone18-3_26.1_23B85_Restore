@interface SearchResultsPageRenderer
- (CGRect)overviewRect;
- (SearchResultsPageRenderer)initWithSearchResults:(id)a3 title:(id)a4 subTitle:(id)a5 mapView:(id)a6;
- (double)_zoomLevelForCoordinateRegion:(id *)a3 clampTo:(double)a4;
- (id)computeCurrentPrintInfo;
- (int64_t)numberOfPages;
- (void)_drawPinsInRect:(CGRect)a3 zoomLevel:(double)a4;
- (void)drawContentForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)drawTopContentInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4;
- (void)prepareForDrawingPages:(_NSRange)a3;
@end

@implementation SearchResultsPageRenderer

- (void)drawContentForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = objc_alloc_init(NSMutableArray);
  [v10 addObject:self];
  v40 = self;
  v11 = [(MapCachedPageRenderer *)self currentPrintInfo];
  v12 = [v11 searchResultCells];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v45 + 1) + 8 * i);
        if ([v18 page] == a3)
        {
          [v10 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v15);
  }

  v19 = +[UIPrintInteractionController sharedPrintController];
  [v19 _enableManualPrintPage:1];

  while ([v10 count])
  {
    v20 = [v10 objectAtIndexedSubscript:0];
    v21 = [v20 snapshotBlock];
    v22 = v21;
    if (v21)
    {
      (*(v21 + 16))(v21);
      v23 = +[NSDate date];
      if (([v20 hasSnapshot] & 1) == 0)
      {
        do
        {
          v24 = objc_autoreleasePoolPush();
          v25 = +[NSRunLoop currentRunLoop];
          v26 = [NSDate dateWithTimeIntervalSinceNow:1.0];
          [v25 runUntilDate:v26];

          v27 = +[NSDate date];
          [v27 timeIntervalSinceDate:v23];
          v29 = v28;

          objc_autoreleasePoolPop(v24);
        }

        while (([v20 hasSnapshot] & 1) == 0 && v29 <= 30.0);
      }
    }

    [v20 releaseSnapshotCreator];
    [v10 removeObjectAtIndex:0];
  }

  v30 = +[UIPrintInteractionController sharedPrintController];
  v31 = [v30 printPageRenderer];

  if (v31)
  {
    v32 = +[UIPrintInteractionController sharedPrintController];
    [v32 _enableManualPrintPage:0];

    [(MapPageRenderer *)v40 drawOverview];
    v33 = [[MapScaleCell alloc] initWithDistanceInMeters:MKMetersBetweenMapPoints(v40->_mlMapPoint, v40->_mrMapPoint)];
    [(SearchResultsPageRenderer *)v40 overviewRect];
    [(MapScaleCell *)v33 drawInRect:?];
    [(SearchResultsPageRenderer *)v40 _drawPinsInRect:x zoomLevel:y, width, height, v40->super.super._zoomLevel];
    [(SearchResultsPageRenderer *)v40 drawTopContentInRect:a3 forPageAtIndex:x, y, width, height];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v13;
    v35 = [v34 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v42;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v42 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v41 + 1) + 8 * j);
          if ([v39 page] == a3)
          {
            [v39 drawInRect:{x, y, width, height}];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v36);
    }
  }
}

- (void)_drawPinsInRect:(CGRect)a3 zoomLevel:(double)a4
{
  [(SearchResultsPageRenderer *)self overviewRect:a3.origin.x];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  MKZoomScaleForZoomLevelF();
  v14 = v13;
  v37 = *&CGAffineTransformIdentity.c;
  *&v47.a = *&CGAffineTransformIdentity.a;
  *&v47.c = v37;
  *&v47.tx = *&CGAffineTransformIdentity.tx;
  v36 = *&v47.tx;
  x = self->_topLeftCorner.x;
  v49.origin.x = v6;
  v49.origin.y = v8;
  v49.size.width = v10;
  v49.size.height = v12;
  v16 = CGRectGetMinX(v49) - x;
  y = self->_topLeftCorner.y;
  v50.origin.x = v6;
  v50.origin.y = v8;
  v50.size.width = v10;
  v50.size.height = v12;
  MinY = CGRectGetMinY(v50);
  *&v46.a = *&v47.a;
  *&v46.c = v37;
  *&v46.tx = *&v47.tx;
  CGAffineTransformTranslate(&v47, &v46, v16, MinY - y);
  v45 = v47;
  CGAffineTransformScale(&v46, &v45, v14, v14);
  v47 = v46;
  [(UIColor *)self->super.super._calloutTextColor set];
  v19 = [(MapCachedPageRenderer *)self currentPrintInfo];
  v20 = [v19 searchResultCells];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10073088C;
  v43[3] = &unk_101627AC0;
  v44 = v47;
  [v20 sortedArrayUsingComparator:v43];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v21 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v39 + 1) + 8 * i);
        v46 = v47;
        [v25 transformedPoint:{&v46, v36}];
        v27 = v26;
        v29 = v28;
        [PDFUtilities renderDocumentForType:6 inRect:v26 + -17.0000005, v28 + -35.0, 34.000001, 40.0];
        v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v25 order]);
        v31 = [NSNumberFormatter localizedStringFromNumber:v30 numberStyle:0];

        v32 = [UIFont boldSystemFontOfSize:9.0];
        [v31 _maps_sizeWithFont:v32];
        v34 = v33;

        v35 = [UIFont boldSystemFontOfSize:9.0];
        [v31 _maps_drawAtPoint:v35 withFont:{v27 + v34 * -0.5, v29 + -26.0}];
      }

      v22 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v22);
  }
}

- (void)drawTopContentInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4
{
  self->super.super._topContentIconType = 7;
  v4.receiver = self;
  v4.super_class = SearchResultsPageRenderer;
  [(MapPageRenderer *)&v4 drawTopContentInRect:a4 forPageAtIndex:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)prepareForDrawingPages:(_NSRange)a3
{
  v4 = malloc_type_malloc(16 * [(NSArray *)self->_searchResults count:a3.location], 0x1000040451B5BE8uLL);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_searchResults;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      v10 = 0;
      v11 = v4 + 16 * v8 + 8;
      v8 += v7;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * v10) coordinate];
        *(v11 - 8) = MKMapPointForCoordinate(v25);
        v10 = v10 + 1;
        v11 += 16;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  MKMapRectBoundingMapPoints();
  v27 = MKCoordinateRegionForMapRect(v26);
  latitude = v27.center.latitude;
  longitude = v27.center.longitude;
  latitudeDelta = v27.span.latitudeDelta;
  longitudeDelta = v27.span.longitudeDelta;
  self->super.super._centerCoordinate.latitude = v27.center.latitude;
  self->super.super._centerCoordinate.longitude = v27.center.longitude;
  v16 = [(NSArray *)self->_searchResults count];
  v17 = -1.0;
  if (v16 == 1)
  {
    [(MKMapView *)self->super.super._mapView _zoomLevel];
    v17 = floor(v18) + -1.0;
  }

  [(SearchResultsPageRenderer *)self _zoomLevelForCoordinateRegion:latitude clampTo:longitude, latitudeDelta, longitudeDelta, v17, v20];
  self->super.super._zoomLevel = v19;
  free(v4);
}

- (CGRect)overviewRect
{
  [(SearchResultsPageRenderer *)self paperRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SearchResultsPageRenderer *)self printableRect];
  r2 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v18 = CGRectGetWidth(v29) * 0.5 + -83.0;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  v19 = CGRectGetHeight(v30) + -146.0;
  v20 = 0x404F800000000000;
  v21 = 0x4053200000000000;
  v22 = v18;
  v23 = r2;
  v24 = v13;
  v25 = v15;
  v26 = v17;

  return CGRectIntersection(*&v20, *&v23);
}

- (int64_t)numberOfPages
{
  v2 = [(MapCachedPageRenderer *)self currentPrintInfo];
  v3 = [v2 numberOfPages];

  return v3;
}

- (id)computeCurrentPrintInfo
{
  v3 = [(SearchResultsPageRenderer *)self searchResultsPerPage];
  if (v3 >= 2)
  {
    v40 = v3;
    v44 = vcvtps_s32_f32([(NSArray *)self->_searchResults count]/ v3);
    v45 = objc_alloc_init(NSMutableArray);
    [(SearchResultsPageRenderer *)self paperRect];
    v42 = v6;
    v43 = v5;
    rect = v7;
    v9 = v8;
    [(SearchResultsPageRenderer *)self overviewRect];
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    MaxX = CGRectGetMaxX(v52);
    v15 = MaxX + 41.0;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    MinY = CGRectGetMinY(v53);
    v54.origin.y = v42;
    v54.origin.x = v43;
    v54.size.width = rect;
    v54.size.height = v9;
    v17 = -104.0 - MaxX + CGRectGetMaxX(v54);
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    v18 = CGRectGetHeight(v55);
    v56.origin.x = v15;
    v56.origin.y = MinY;
    v56.size.width = v17;
    v56.size.height = v18;
    v19 = CGRectGetHeight(v56);
    v57.origin.x = v15;
    v57.origin.y = MinY;
    v57.size.width = v17;
    v57.size.height = v18;
    v20 = CGRectGetWidth(v57);
    v58.origin.x = v15;
    v58.origin.y = MinY;
    v58.size.width = v17;
    v58.size.height = v18;
    MinX = CGRectGetMinX(v58);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v22 = self->_searchResults;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      v26 = 1;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v46 + 1) + 8 * i);
          v29 = [(MapPageRenderer *)self mapView];
          v30 = +[SearchResultCell cellWithSearchResult:order:mapType:](SearchResultCell, "cellWithSearchResult:order:mapType:", v28, v26, [v29 mapType]);

          [v30 setFrame:{MinX, 0.0, v20, 81.5}];
          [v45 addObject:v30];
          ++v26;
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v24);
    }

    v31 = [v45 count];
    v59.origin.x = v15;
    v59.origin.y = MinY;
    v59.size.width = v17;
    v59.size.height = v18;
    v32 = CGRectGetMinY(v59);
    if (v31)
    {
      v33 = v32;
      v34 = 0;
      v35 = 0;
      v36 = v40;
      v37 = (v19 + v40 * -81.5) / (v40 - 1) + 81.5;
      do
      {
        v38 = v35;
        v35 = [v45 objectAtIndexedSubscript:{v34, v40}];

        [v35 setY:v33];
        [v35 setPage:v34 / v36];
        v33 = v37 + v33;
        v60.origin.x = v15;
        v60.origin.y = MinY;
        v60.size.width = v17;
        v60.size.height = v18;
        if (v33 >= CGRectGetMaxY(v60))
        {
          v61.origin.x = v15;
          v61.origin.y = MinY;
          v61.size.width = v17;
          v61.size.height = v18;
          v33 = CGRectGetMinY(v61);
        }

        ++v34;
      }

      while (v31 != v34);
    }

    v4 = [[MapsSearchPrintingInfo alloc] initWithNumberOfPages:v44 searchResultCells:v45];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SearchResultsPageRenderer)initWithSearchResults:(id)a3 title:(id)a4 subTitle:(id)a5 mapView:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SearchResultsPageRenderer;
  v15 = [(MapCachedPageRenderer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_searchResults, a3);
    [(MapPageRenderer *)v16 setTitle:v12];
    [(MapPageRenderer *)v16 setSubTitle:v13];
    [(MapPageRenderer *)v16 setMapView:v14];
  }

  return v16;
}

- (double)_zoomLevelForCoordinateRegion:(id *)a3 clampTo:(double)a4
{
  v7 = v6;
  v38 = v4;
  v39 = v5;
  [(SearchResultsPageRenderer *)self overviewRect];
  v10 = v9 * 0.5;
  v12 = v11 * 0.5;
  if (v7 <= 0.0)
  {
    v13 = 18;
  }

  else
  {
    v13 = v7;
  }

  if (v7 <= 0.0)
  {
    v14 = 3;
  }

  else
  {
    v14 = (v7 + -1.0);
  }

  v15 = v13;
  MKTilePointForCoordinate();
  if (v13 <= v14)
  {
    v35 = v16 - v10;
    v30 = v17 - v12;
  }

  else
  {
    while (1)
    {
      v15 = v13;
      MKTilePointForCoordinate();
      v19 = v18 - v10;
      v20 = v10;
      v22 = v21 - v12;
      v23 = v12;
      v37 = v19;
      MKCoordinateForTilePoint();
      coordinate = v24;
      v26 = v25;
      MKCoordinateForTilePoint();
      v42 = v27;
      v29 = v28;
      v30 = v22;
      MKCoordinateForTilePoint();
      coordinate_8 = v31;
      MKCoordinateForTilePoint();
      v33 = v32;
      v43.latitude = coordinate;
      v43.longitude = v26;
      self->_mlMapPoint = MKMapPointForCoordinate(v43);
      v44.latitude = v42;
      v44.longitude = v29;
      self->_mrMapPoint = MKMapPointForCoordinate(v44);
      if (coordinate_8 + 0.0001 - v33 >= v38 && 0.0001 - v26 + v29 >= v39)
      {
        break;
      }

      --v13;
      v10 = v20;
      v12 = v23;
      if (v13 <= v14)
      {
        v15 = v14;
        break;
      }
    }

    v35 = v37;
  }

  self->_topLeftCorner.x = v35;
  self->_topLeftCorner.y = v30;
  return v15;
}

@end