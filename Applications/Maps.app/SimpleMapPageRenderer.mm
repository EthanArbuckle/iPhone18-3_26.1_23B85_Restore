@interface SimpleMapPageRenderer
- (CGRect)overviewRect;
- (SimpleMapPageRenderer)initWithMapView:(id)view;
- (void)_setTitlesWithMapItem:(id)item;
- (void)drawContentForPageAtIndex:(int64_t)index inRect:(CGRect)rect;
- (void)drawTopContentInRect:(CGRect)rect forPageAtIndex:(int64_t)index;
- (void)prepareForDrawingPages:(_NSRange)pages;
@end

@implementation SimpleMapPageRenderer

- (void)drawContentForPageAtIndex:(int64_t)index inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
  snapshotBlock = [(MapPageRenderer *)self snapshotBlock];
  v21 = snapshotBlock;
  if (snapshotBlock)
  {
    (*(snapshotBlock + 16))(snapshotBlock);
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
  printPageRenderer = [v32 printPageRenderer];

  if (printPageRenderer)
  {
    v34 = +[UIPrintInteractionController sharedPrintController];
    [v34 _enableManualPrintPage:0];

    [(MapPageRenderer *)self drawOverview];
    v35 = [[MapScaleCell alloc] initWithDistanceInMeters:self->_widthInMeters];
    [(SimpleMapPageRenderer *)self overviewRect];
    [(MapScaleCell *)v35 drawInRect:?];
    [(SimpleMapPageRenderer *)self drawTopContentInRect:index forPageAtIndex:x, y, width, height];
  }

  _Block_object_dispose(&v39, 8);
}

- (void)drawTopContentInRect:(CGRect)rect forPageAtIndex:(int64_t)index
{
  self->super._topContentIconType = 7;
  v4.receiver = self;
  v4.super_class = SimpleMapPageRenderer;
  [(MapPageRenderer *)&v4 drawTopContentInRect:index forPageAtIndex:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
}

- (void)_setTitlesWithMapItem:(id)item
{
  itemCopy = item;
  _geoAddress = [itemCopy _geoAddress];
  structuredAddress = [_geoAddress structuredAddress];

  widthInMeters = self->_widthInMeters;
  title = self->super._title;
  self->super._title = 0;

  subTitle = self->super._subTitle;
  self->super._subTitle = 0;

  areaOfInterests = [structuredAddress areaOfInterests];
  v10 = areaOfInterests;
  if (areaOfInterests)
  {
    inlandWater = [areaOfInterests objectAtIndexedSubscript:0];
LABEL_16:
    v13 = self->super._title;
    self->super._title = inlandWater;

    goto LABEL_17;
  }

  if ([structuredAddress hasInlandWater])
  {
    inlandWater = [structuredAddress inlandWater];
    goto LABEL_16;
  }

  if ([structuredAddress hasOcean])
  {
    inlandWater = [structuredAddress ocean];
    goto LABEL_16;
  }

  _addressFormattedAsCity = [itemCopy _addressFormattedAsCity];

  if (_addressFormattedAsCity && widthInMeters < 300000.0)
  {
    inlandWater = [itemCopy _addressFormattedAsCity];
    goto LABEL_16;
  }

  if ([structuredAddress hasSubLocality] && widthInMeters < 300000.0)
  {
    inlandWater = [structuredAddress subLocality];
    goto LABEL_16;
  }

  if ([structuredAddress hasSubAdministrativeArea] && widthInMeters < 300000.0)
  {
    inlandWater = [structuredAddress subAdministrativeArea];
    goto LABEL_16;
  }

  if ([structuredAddress hasAdministrativeArea])
  {
    administrativeArea = [structuredAddress administrativeArea];
    v16 = self->super._title;
    self->super._title = administrativeArea;

    goto LABEL_21;
  }

  if ([structuredAddress hasCountry])
  {
    country = [structuredAddress country];
    v17 = self->super._title;
    self->super._title = country;
    goto LABEL_24;
  }

LABEL_17:
  if (![structuredAddress hasAdministrativeArea])
  {
LABEL_21:
    if (![structuredAddress hasCountry])
    {
      goto LABEL_25;
    }

    country2 = [structuredAddress country];
    goto LABEL_23;
  }

  country2 = [structuredAddress administrativeArea];
LABEL_23:
  v17 = self->super._subTitle;
  self->super._subTitle = country2;
LABEL_24:

LABEL_25:
}

- (void)prepareForDrawingPages:(_NSRange)pages
{
  [(MKMapView *)self->super._mapView _zoomLevel:pages.location];
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

- (SimpleMapPageRenderer)initWithMapView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = SimpleMapPageRenderer;
  v5 = [(MapPageRenderer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MapPageRenderer *)v5 setMapView:viewCopy];
  }

  return v6;
}

@end