@interface SimpleMapPageRenderer
- (CGRect)overviewRect;
- (SimpleMapPageRenderer)initWithMapView:(id)a3;
- (void)_setTitlesWithMapItem:(id)a3;
- (void)drawContentForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4;
- (void)drawTopContentInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4;
- (void)prepareForDrawingPages:(_NSRange)a3;
@end

@implementation SimpleMapPageRenderer

- (void)drawContentForPageAtIndex:(int64_t)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(MapPageRenderer *)self visibleMapRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(SimpleMapPageRenderer *)self overviewRect];
  v17 = v16;
  MKZoomScaleForZoomLevelF();
  v19 = v17 / v18;
  v43.x = v9 + (v13 - v17 / v18) * 0.5;
  v43.y = v11 + v15 * 0.5;
  v44.x = v43.x + v19;
  v44.y = v43.y;
  self->_widthInMeters = MKMetersBetweenMapPoints(v43, v44);
  v20 = [(MapPageRenderer *)self snapshotBlock];
  v21 = v20;
  if (v20)
  {
    (*(v20 + 16))(v20);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v22 = +[MKMapService sharedService];
  v23 = [v22 ticketForReverseGeocodeCoordinate:{self->super._centerCoordinate.latitude, self->super._centerCoordinate.longitude}];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10072C370;
  v38[3] = &unk_101627A28;
  v38[4] = self;
  v38[5] = &v39;
  [v23 submitWithHandler:v38 networkActivity:0];
  v24 = +[UIPrintInteractionController sharedPrintController];
  [v24 _enableManualPrintPage:1];

  v25 = +[NSDate date];
  v26 = 0.0;
  while ((*(v40 + 24) != 1 || !self->super._hasSnapshot) && v26 <= 30.0)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = +[NSRunLoop currentRunLoop];
    v29 = [NSDate dateWithTimeIntervalSinceNow:1.0];
    [v28 runUntilDate:v29];

    v30 = +[NSDate date];
    [v30 timeIntervalSinceDate:v25];
    v26 = v31;

    objc_autoreleasePoolPop(v27);
  }

  v32 = +[UIPrintInteractionController sharedPrintController];
  v33 = [v32 printPageRenderer];

  if (v33)
  {
    v34 = +[UIPrintInteractionController sharedPrintController];
    [v34 _enableManualPrintPage:0];

    [(MapPageRenderer *)self drawOverview];
    v35 = [[MapScaleCell alloc] initWithDistanceInMeters:self->_widthInMeters];
    [(SimpleMapPageRenderer *)self overviewRect];
    [(MapScaleCell *)v35 drawInRect:?];
    [(SimpleMapPageRenderer *)self drawTopContentInRect:a3 forPageAtIndex:x, y, width, height];
  }

  _Block_object_dispose(&v39, 8);
}

- (void)drawTopContentInRect:(CGRect)a3 forPageAtIndex:(int64_t)a4
{
  self->super._topContentIconType = 7;
  v4.receiver = self;
  v4.super_class = SimpleMapPageRenderer;
  [(MapPageRenderer *)&v4 drawTopContentInRect:a4 forPageAtIndex:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)_setTitlesWithMapItem:(id)a3
{
  v19 = a3;
  v4 = [v19 _geoAddress];
  v5 = [v4 structuredAddress];

  widthInMeters = self->_widthInMeters;
  title = self->super._title;
  self->super._title = 0;

  subTitle = self->super._subTitle;
  self->super._subTitle = 0;

  v9 = [v5 areaOfInterests];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectAtIndexedSubscript:0];
LABEL_16:
    v13 = self->super._title;
    self->super._title = v11;

    goto LABEL_17;
  }

  if ([v5 hasInlandWater])
  {
    v11 = [v5 inlandWater];
    goto LABEL_16;
  }

  if ([v5 hasOcean])
  {
    v11 = [v5 ocean];
    goto LABEL_16;
  }

  v12 = [v19 _addressFormattedAsCity];

  if (v12 && widthInMeters < 300000.0)
  {
    v11 = [v19 _addressFormattedAsCity];
    goto LABEL_16;
  }

  if ([v5 hasSubLocality] && widthInMeters < 300000.0)
  {
    v11 = [v5 subLocality];
    goto LABEL_16;
  }

  if ([v5 hasSubAdministrativeArea] && widthInMeters < 300000.0)
  {
    v11 = [v5 subAdministrativeArea];
    goto LABEL_16;
  }

  if ([v5 hasAdministrativeArea])
  {
    v15 = [v5 administrativeArea];
    v16 = self->super._title;
    self->super._title = v15;

    goto LABEL_21;
  }

  if ([v5 hasCountry])
  {
    v18 = [v5 country];
    v17 = self->super._title;
    self->super._title = v18;
    goto LABEL_24;
  }

LABEL_17:
  if (![v5 hasAdministrativeArea])
  {
LABEL_21:
    if (![v5 hasCountry])
    {
      goto LABEL_25;
    }

    v14 = [v5 country];
    goto LABEL_23;
  }

  v14 = [v5 administrativeArea];
LABEL_23:
  v17 = self->super._subTitle;
  self->super._subTitle = v14;
LABEL_24:

LABEL_25:
}

- (void)prepareForDrawingPages:(_NSRange)a3
{
  [(MKMapView *)self->super._mapView _zoomLevel:a3.location];
  self->super._zoomLevel = v4;
  [(MapPageRenderer *)self visibleMapRect];
  v9.x = v5 + v6 * 0.5;
  v9.y = v7 + v8 * 0.5;
  self->super._centerCoordinate = MKCoordinateForMapPoint(v9);
}

- (CGRect)overviewRect
{
  [(SimpleMapPageRenderer *)self paperRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SimpleMapPageRenderer *)self printableRect];
  r2 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v18 = CGRectGetWidth(v29) + -126.0;
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

- (SimpleMapPageRenderer)initWithMapView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SimpleMapPageRenderer;
  v5 = [(MapPageRenderer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MapPageRenderer *)v5 setMapView:v4];
  }

  return v6;
}

@end