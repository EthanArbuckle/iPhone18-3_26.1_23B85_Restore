@interface MapRoutePageRenderer
- (CGAffineTransform)_overviewAffineTransformForRect:(SEL)a3 zoomLevel:(CGRect)a4;
- (CGRect)overviewRect;
- (MapRoutePageRenderer)initWithRoute:(id)a3 mapView:(id)a4;
- (double)_zoomLevelForCoordinateRegion:(id *)a3;
- (id)computeCurrentPrintInfo;
- (int64_t)numberOfPages;
- (void)_drawAddressWithPin:(unsigned int)a3 address:(id)a4 inRect:(CGRect)a5;
- (void)_drawBottomMarginContentInRect:(CGRect)a3;
- (void)_drawRouteLineInRect:(CGRect)a3 zoomLevel:(double)a4 transform:(CGAffineTransform *)a5;
- (void)_layoutRouteStepCalloutAtIndex:(unint64_t)a3 depth:(int64_t)a4;
- (void)drawContentForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)drawTopContentInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4;
- (void)prepareForDrawingPages:(_NSRange)a3;
@end

@implementation MapRoutePageRenderer

- (void)drawContentForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(NSMutableArray *)self->_snapshotObjects addObject:self];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v10 = [(MapCachedPageRenderer *)self currentPrintInfo];
  v11 = [v10 routeStepCells];

  v12 = [v11 countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v80;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v80 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v79 + 1) + 8 * i);
        if ([v16 page] == a3)
        {
          [(NSMutableArray *)self->_snapshotObjects addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v13);
  }

  v17 = +[UIPrintInteractionController sharedPrintController];
  [v17 _enableManualPrintPage:1];

  while ([(NSMutableArray *)self->_snapshotObjects count])
  {
    v18 = [(NSMutableArray *)self->_snapshotObjects objectAtIndexedSubscript:0];
    v19 = [v18 snapshotBlock];
    v20 = v19;
    if (v19)
    {
      (*(v19 + 16))(v19);
      v21 = +[NSDate date];
      if (([v18 hasSnapshot] & 1) == 0)
      {
        do
        {
          v22 = objc_autoreleasePoolPush();
          v23 = +[NSRunLoop currentRunLoop];
          v24 = [NSDate dateWithTimeIntervalSinceNow:1.0];
          [v23 runUntilDate:v24];

          v25 = +[NSDate date];
          [v25 timeIntervalSinceDate:v21];
          v27 = v26;

          objc_autoreleasePoolPop(v22);
        }

        while (([v18 hasSnapshot] & 1) == 0 && v27 <= 30.0);
      }
    }

    [v18 releaseSnapshotCreator];
    [(NSMutableArray *)self->_snapshotObjects removeObjectAtIndex:0];
  }

  v28 = +[UIPrintInteractionController sharedPrintController];
  v29 = [v28 printPageRenderer];

  if (v29)
  {
    v30 = +[UIPrintInteractionController sharedPrintController];
    [v30 _enableManualPrintPage:0];

    [(MapPageRenderer *)self drawOverview];
    [(MapRoutePageRenderer *)self overviewRect];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    [(MapRoutePageRenderer *)self _overviewAffineTransformForRect:v31 zoomLevel:?];
    zoomLevel = self->super.super._zoomLevel;
    v73 = v76;
    v74 = v77;
    v75 = v78;
    [(MapRoutePageRenderer *)self _drawRouteLineInRect:&v73 zoomLevel:x transform:y, width, height, zoomLevel];
    v40 = [(MapCachedPageRenderer *)self currentPrintInfo];
    v41 = [v40 routeStepCalloutCells];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v42 = v41;
    v43 = [v42 countByEnumeratingWithState:&v69 objects:v84 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v70;
      do
      {
        for (j = 0; j != v44; j = j + 1)
        {
          if (*v70 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v69 + 1) + 8 * j);
          v73 = v76;
          v74 = v77;
          v75 = v78;
          [v47 setTransform:&v73];
        }

        v44 = [v42 countByEnumeratingWithState:&v69 objects:v84 count:16];
      }

      while (v44);
    }

    v48 = [[MapScaleCell alloc] initWithDistanceInMeters:MKMetersBetweenMapPoints(self->mlMapPoint, self->mrMapPoint)];
    [(MapScaleCell *)v48 drawInRect:v32, v34, v36, v38];
    [(MapRoutePageRenderer *)self drawTopContentInRect:a3 forPageAtIndex:x, y, width, height];
    [(MapRoutePageRenderer *)self _drawBottomMarginContentInRect:x, y, width, height];
    v49 = [v42 count];
    v50 = v49;
    if (!a3 && v49)
    {
      v51 = 0;
      do
      {
        [(MapRoutePageRenderer *)self _layoutRouteStepCalloutAtIndex:v51++ depth:1];
      }

      while (v50 != v51);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v52 = [(MapCachedPageRenderer *)self currentPrintInfo];
    v53 = [v52 routeStepCells];

    v54 = [v53 countByEnumeratingWithState:&v65 objects:v83 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v66;
      do
      {
        for (k = 0; k != v55; k = k + 1)
        {
          if (*v66 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v65 + 1) + 8 * k);
          if ([v58 page] == a3)
          {
            [v58 drawInRect:{x, y, width, height}];
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v65 objects:v83 count:16];
      }

      while (v55);
    }

    if ([v42 count])
    {
      if ((v50 - 1) >= 2)
      {
        v59 = 0;
        v60 = v50 - 2;
        v61 = 1;
        do
        {
          v62 = v59;
          v59 = [v42 objectAtIndexedSubscript:v61];

          [v59 drawInRect:{x, y, width, height}];
          ++v61;
          --v60;
        }

        while (v60);
      }

      v63 = [v42 objectAtIndexedSubscript:0];
      [v63 drawInRect:{x, y, width, height}];

      v64 = [v42 lastObject];
      [v64 drawInRect:{x, y, width, height}];
    }
  }
}

- (void)_layoutRouteStepCalloutAtIndex:(unint64_t)a3 depth:(int64_t)a4
{
  v7 = [(MapCachedPageRenderer *)self currentPrintInfo];
  v13 = [v7 routeStepCalloutCells];

  v8 = [v13 count];
  v9 = [v13 objectAtIndexedSubscript:a3];
  v10 = a3 + 1;
  if (v10 < v8)
  {
    v11 = -1;
    do
    {
      if (v11)
      {
        v12 = [v13 objectAtIndexedSubscript:v10];
        if (([v12 shouldRotateWithCallout:v9] & 1) != 0 || (objc_msgSend(v12, "shouldRotateWithCallout:", self->_redPinCallout) & 1) != 0 || objc_msgSend(v12, "shouldRotateWithCallout:", self->_greenPinCallout))
        {
          if ([v12 rotate])
          {
            if (a4 > 3 || ([(MapRoutePageRenderer *)self _layoutRouteStepCalloutAtIndex:v10 depth:a4 + 1], a4 >= 2))
            {

              break;
            }
          }
        }
      }

      ++v10;
      --v11;
    }

    while (v8 != v10);
  }
}

- (void)_drawBottomMarginContentInRect:(CGRect)a3
{
  [(MapRoutePageRenderer *)self overviewRect:a3.origin.x];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v8 = CGRectGetMaxY(v18) + 13.5;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v10 = CGRectGetWidth(v20) * 0.5 + -20.0;
  [(MapRoutePageRenderer *)self printableRect];
  v11 = CGRectGetMaxY(v21) - v8;
  v12 = [(GEOComposedRoute *)self->_route origin];
  v13 = [v12 navDisplayAddress];
  [(MapRoutePageRenderer *)self _drawAddressWithPin:4 address:v13 inRect:MinX, v8, v10, v11];

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v14 = CGRectGetMidX(v22) + -4.65000021;
  v16 = [(GEOComposedRoute *)self->_route destination];
  v15 = [v16 navDisplayAddress];
  [(MapRoutePageRenderer *)self _drawAddressWithPin:5 address:v15 inRect:v14, v8, v10, v11];
}

- (void)_drawAddressWithPin:(unsigned int)a3 address:(id)a4 inRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = *&a3;
  v10 = a4;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MinX = CGRectGetMinX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  [PDFUtilities renderDocumentForType:v9 inRect:MinX, CGRectGetMinY(v16), 15.3000004, 18.0];
  v12 = [UIColor colorWithWhite:0.400000006 alpha:1.0];
  [v12 set];

  v13 = [UIFont systemFontOfSize:9.0];
  [v10 _maps_drawInRect:v13 withFont:{x + 25.3000004, y, width + -25.3000004, height}];
}

- (void)drawTopContentInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(GEOComposedRoute *)self->_route transportType];
  if (v10 <= 3)
  {
    self->super.super._topContentIconType = dword_101212C00[v10];
  }

  if ([(GEOComposedRoute *)self->_route transportType]== 1)
  {
    [(MapPageRenderer *)self setSubTitle:0];
  }

  else
  {
    v11 = [(GEOComposedRoute *)self->_route expandedDistance];
    [(MapPageRenderer *)self setTitle:v11];

    [(MapPageRenderer *)self setSubTitle:0];
    v12 = [(GEOComposedRoute *)self->_route expandedTravelTime];
    v13 = [NSString stringWithFormat:@"%@", v12];
    [(MapPageRenderer *)self setSubTitle:v13];
  }

  v14.receiver = self;
  v14.super_class = MapRoutePageRenderer;
  [(MapPageRenderer *)&v14 drawTopContentInRect:a4 forPageAtIndex:x, y, width, height];
}

- (void)_drawRouteLineInRect:(CGRect)a3 zoomLevel:(double)a4 transform:(CGAffineTransform *)a5
{
  [(MapRoutePageRenderer *)self overviewRect:a3.origin.x];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v24 = 0;
  v25 = 0;
  [(GEOComposedRoute *)self->_route _maps_getMapPoints:&v25 count:&v24];
  if (v24)
  {
    goto LABEL_2;
  }

  v21 = sub_10006D178();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v27 = "[MapRoutePageRenderer _drawRouteLineInRect:zoomLevel:transform:]";
    v28 = 2080;
    v29 = "MapRoutePageRenderer.m";
    v30 = 1024;
    v31 = 191;
    v32 = 2080;
    v33 = "count > 0";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
  }

  if (sub_100E03634())
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  if (v24)
  {
LABEL_2:
    MKZoomScaleForZoomLevelF();
    v16 = MKRoadWidthAtZoomScale(v15) * v15;
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v34.origin.x = v8;
    v34.origin.y = v10;
    v34.size.width = v12;
    v34.size.height = v14;
    CGContextClipToRect(CurrentContext, v34);
    CGContextSetLineCap(CurrentContext, kCGLineCapRound);
    CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, a5, *v25, *(v25 + 1));
    if (v24 >= 2)
    {
      v19 = 0;
      for (i = 1; i < v24; ++i)
      {
        CGPathAddLineToPoint(Mutable, a5, *(v25 + v19 + 16), *(v25 + v19 + 24));
        v19 += 16;
      }
    }

    free(v25);
    CGContextSaveGState(CurrentContext);
    CGContextBeginPath(CurrentContext);
    CGContextAddPath(CurrentContext, Mutable);
    CGContextSetLineWidth(CurrentContext, v16 + -1.0);
    CGContextSetStrokeColorWithColor(CurrentContext, [(UIColor *)self->_routeCenterPrintColor CGColor]);
    CGContextStrokePath(CurrentContext);
    CGContextRestoreGState(CurrentContext);
    CGPathRelease(Mutable);
    CGContextRestoreGState(CurrentContext);
  }
}

- (CGAffineTransform)_overviewAffineTransformForRect:(SEL)a3 zoomLevel:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MKZoomScaleForZoomLevelF();
  v12 = v11;
  v21 = *&CGAffineTransformIdentity.c;
  v22 = *&CGAffineTransformIdentity.a;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v21;
  v20 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v20;
  self = (self + 112);
  isa = self->super.super.super.super.isa;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v14 = CGRectGetMinX(v25) - *&isa;
  title = self->super.super._title;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MinY = CGRectGetMinY(v26);
  *&v24.a = v22;
  *&v24.c = v21;
  *&v24.tx = v20;
  CGAffineTransformTranslate(retstr, &v24, v14, MinY - *&title);
  v17 = *&retstr->c;
  *&v23.a = *&retstr->a;
  *&v23.c = v17;
  *&v23.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v24, &v23, v12, v12);
  v19 = *&v24.c;
  *&retstr->a = *&v24.a;
  *&retstr->c = v19;
  *&retstr->tx = *&v24.tx;
  return result;
}

- (CGRect)overviewRect
{
  [(MapRoutePageRenderer *)self paperRect];
  v6 = v5;
  v8 = v7;
  if (v3 * v4 >= 2.22044605e-16)
  {
    v13 = v3;
    v14 = v4;
    [(MapRoutePageRenderer *)self printableRect];
    v24 = v15;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v26.origin.x = v6;
    v26.origin.y = v8;
    v26.size.width = v13;
    v26.size.height = v14;
    r1 = CGRectGetWidth(v26) * 0.5 + -83.0;
    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v13;
    v27.size.height = v14;
    Height = CGRectGetHeight(v27);
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v13;
    v28.size.height = v14;
    MaxY = CGRectGetMaxY(v28);
    v29.origin.x = v24;
    v29.origin.y = v17;
    v29.size.width = v19;
    v29.size.height = v21;
    v30.size.height = Height + -146.0 - MaxY + CGRectGetMaxY(v29);
    v30.origin.x = 63.0;
    v30.origin.y = 76.5;
    v30.size.width = r1;
    v32.origin.x = v24;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    *&x = CGRectIntersection(v30, v32);
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    v12 = CGRectZero.size.height;
  }

  result.size.height = v12;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)prepareForDrawingPages:(_NSRange)a3
{
  [(GEOComposedRoute *)self->_route _maps_boundingMapRect:a3.location];
  v8 = MKCoordinateRegionForMapRect(v7);
  latitude = v8.center.latitude;
  longitude = v8.center.longitude;
  [(MapRoutePageRenderer *)self _zoomLevelForCoordinateRegion:?];
  self->super.super._zoomLevel = v6;
  self->super.super._centerCoordinate.latitude = latitude;
  self->super.super._centerCoordinate.longitude = longitude;
}

- (int64_t)numberOfPages
{
  v2 = [(MapCachedPageRenderer *)self currentPrintInfo];
  v3 = [v2 numberOfPages];

  return v3;
}

- (id)computeCurrentPrintInfo
{
  v3 = [(GEOComposedRoute *)self->_route steps];
  v4 = [v3 count];

  if ([(GEOComposedRoute *)self->_route transportType]== 1)
  {
    v5 = [(GEOComposedRoute *)self->_route steppingSigns];
    v4 = [v5 count];
  }

  v6 = [(MapRoutePageRenderer *)self routeStepsPerPage];
  if (v6)
  {
    v7 = v6;
    v52 = v4 / v6;
    v55 = objc_alloc_init(NSMutableArray);
    v54 = objc_alloc_init(NSMutableArray);
    [(MapRoutePageRenderer *)self printableRect];
    v9 = v8;
    v49 = v11;
    v50 = v10;
    v13 = v12;
    [(MapRoutePageRenderer *)self overviewRect];
    x = v67.origin.x;
    y = v67.origin.y;
    width = v67.size.width;
    height = v67.size.height;
    v18 = CGRectGetMaxX(v67) + 40.0;
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    MinY = CGRectGetMinY(v68);
    v69.origin.x = v9;
    v69.size.width = v49;
    v69.origin.y = v50;
    v69.size.height = v13;
    v20 = CGRectGetMaxX(v69) - v18 + -63.0;
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    v21 = CGRectGetHeight(v70);
    if (v7 >= 2)
    {
      v71.origin.x = v18;
      v71.origin.y = MinY;
      v71.size.width = v20;
      v71.size.height = v21;
      v22 = (CGRectGetHeight(v71) - v7 * 81.5) / (v7 - 1) + 81.5;
    }

    else
    {
      v22 = 81.5;
    }

    v24 = vcvtps_s32_f32(v52);
    v72.origin.x = v18;
    v72.origin.y = MinY;
    v72.size.width = v20;
    v72.size.height = v21;
    v25 = CGRectGetWidth(v72);
    v73.origin.x = v18;
    v73.origin.y = MinY;
    v73.size.width = v20;
    v73.size.height = v21;
    MinX = CGRectGetMinX(v73);
    if ([(GEOComposedRoute *)self->_route transportType]== 1)
    {
      v62 = 0uLL;
      v63 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v27 = [(GEOComposedRoute *)self->_route steppingSigns];
      v28 = [v27 countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v61;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v61 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = [TransitRouteStepCell cellWithRoute:self->_route sign:*(*(&v60 + 1) + 8 * i)];
            [v32 setFrame:{MinX, 0.0, v25, 81.5}];
            [v55 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v29);
      }
    }

    else
    {
      v58 = 0uLL;
      v59 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v27 = [(GEOComposedRoute *)self->_route steps];
      v33 = [v27 countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v33)
      {
        v34 = v33;
        v51 = v24;
        v53 = v7;
        v35 = *v57;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v57 != v35)
            {
              objc_enumerationMutation(v27);
            }

            v37 = [*(*(&v56 + 1) + 8 * j) stepIndex];
            route = self->_route;
            v39 = [(MapPageRenderer *)self mapView];
            v40 = +[RouteStepCell cellWithRoute:stepIndex:mapType:](RouteStepCell, "cellWithRoute:stepIndex:mapType:", route, v37, [v39 mapType]);

            [v40 setFrame:{MinX, 0.0, v25, 81.5}];
            [v55 addObject:v40];
            v41 = [RouteStepCalloutCell cellWithRoute:self->_route stepIndex:v37 type:0];
            [v54 addObject:v41];
          }

          v34 = [v27 countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v34);
        v24 = v51;
        v7 = v53;
      }
    }

    v42 = [v55 count];
    v74.origin.x = v18;
    v74.origin.y = MinY;
    v74.size.width = v20;
    v74.size.height = v21;
    v43 = CGRectGetMinY(v74);
    if (v42)
    {
      v44 = v43;
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = v46;
        v46 = [v55 objectAtIndexedSubscript:v45];

        [v46 setY:v44];
        [v46 setPage:v45 / v7];
        v44 = v44 + v22;
        v75.origin.x = v18;
        v75.origin.y = MinY;
        v75.size.width = v20;
        v75.size.height = v21;
        if (v44 >= CGRectGetMaxY(v75))
        {
          v76.origin.x = v18;
          v76.origin.y = MinY;
          v76.size.width = v20;
          v76.size.height = v21;
          v44 = CGRectGetMinY(v76);
        }

        ++v45;
      }

      while (v42 != v45);
    }

    v23 = [[MapsRoutePrintingInfo alloc] initWithNumberOfPages:v24 routeStepCells:v55 routeStepCalloutCells:v54];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (MapRoutePageRenderer)initWithRoute:(id)a3 mapView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MapRoutePageRenderer;
  v9 = [(MapCachedPageRenderer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_route, a3);
    [(MapPageRenderer *)v10 setMapView:v8];
    v11 = [[UIColor alloc] initWithRed:0.278431373 green:0.560784314 blue:1.0 alpha:1.0];
    routeCenterPrintColor = v10->_routeCenterPrintColor;
    v10->_routeCenterPrintColor = v11;

    v13 = objc_alloc_init(NSMutableArray);
    snapshotObjects = v10->_snapshotObjects;
    v10->_snapshotObjects = v13;
  }

  return v10;
}

- (double)_zoomLevelForCoordinateRegion:(id *)a3
{
  v28 = v3;
  v29 = v4;
  [(MapRoutePageRenderer *)self overviewRect];
  v26 = v7 * 0.5;
  v27 = v6 * 0.5;
  MKTilePointForCoordinate();
  v8 = 20;
  while (1)
  {
    v9 = v8;
    MKTilePointForCoordinate();
    v11 = v10 - v27;
    v13 = v12 - v26;
    MKCoordinateForTilePoint();
    coordinate = v14;
    v16 = v15;
    MKCoordinateForTilePoint();
    v18 = v17;
    v20 = v19;
    MKCoordinateForTilePoint();
    coordinate_8 = v21;
    MKCoordinateForTilePoint();
    v23 = v22;
    v32.latitude = coordinate;
    v32.longitude = v16;
    self->mlMapPoint = MKMapPointForCoordinate(v32);
    v33.latitude = v18;
    v33.longitude = v20;
    self->mrMapPoint = MKMapPointForCoordinate(v33);
    if (coordinate_8 + 0.0001 - v23 >= v28 && 0.0001 - v16 + v20 >= v29)
    {
      break;
    }

    if (--v8 <= 3)
    {
      v9 = 3.0;
      break;
    }
  }

  self->topLeftCorner.x = v11;
  self->topLeftCorner.y = v13;
  return v9;
}

@end