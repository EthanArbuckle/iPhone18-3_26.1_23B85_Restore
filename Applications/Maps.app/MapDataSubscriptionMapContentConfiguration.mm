@interface MapDataSubscriptionMapContentConfiguration
- (MapDataSubscriptionMapContentConfiguration)initWithSubscriptions:(id)subscriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)makeContentView;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
@end

@implementation MapDataSubscriptionMapContentConfiguration

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  overlayCopy = overlay;
  v5 = [[MKPolygonRenderer alloc] initWithOverlay:overlayCopy];

  v6 = +[UIColor systemBlueColor];
  [v5 setStrokeColor:v6];

  v7 = +[UIColor systemBlueColor];
  v8 = [v7 colorWithAlphaComponent:0.400000006];
  [v5 setFillColor:v8];

  [v5 setLineWidth:3.0];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MapDataSubscriptionMapContentConfiguration allocWithZone:zone];
  subscriptions = self->_subscriptions;

  return [(MapDataSubscriptionMapContentConfiguration *)v4 initWithSubscriptions:subscriptions];
}

- (id)makeContentView
{
  v3 = objc_alloc_init(MapDataSubscriptionMapView);
  [(MapDataSubscriptionMapView *)v3 setDelegate:self];
  [(MapDataSubscriptionMapView *)v3 setScrollEnabled:0];
  [(MapDataSubscriptionMapView *)v3 setZoomEnabled:0];
  [(MapDataSubscriptionMapView *)v3 setRotateEnabled:0];
  v45 = v3;
  [(MapDataSubscriptionMapView *)v3 setPitchEnabled:0];
  v4 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = self->_subscriptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v5);
        }

        subscription = [*(*(&v51 + 1) + 8 * i) subscription];
        region = [subscription region];

        if ([region vertexsCount])
        {
          v12 = malloc_type_calloc([region vertexsCount], 0x10uLL, 0x1000040451B5BE8uLL);
          vertexs = [region vertexs];
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_1009367A8;
          v50[3] = &unk_10162F110;
          v50[4] = v12;
          [vertexs enumerateObjectsUsingBlock:v50];

          v14 = +[MKPolygon polygonWithCoordinates:count:](MKPolygon, "polygonWithCoordinates:count:", v12, [region vertexsCount]);
          free(v12);
          [v4 addObject:v14];
        }

        else
        {
          [region northLat];
          v16 = v15;
          [region westLng];
          v56[0] = v16;
          v56[1] = v17;
          [region southLat];
          v19 = v18;
          [region westLng];
          v56[2] = v19;
          v56[3] = v20;
          [region southLat];
          v22 = v21;
          [region eastLng];
          v56[4] = v22;
          v56[5] = v23;
          [region northLat];
          v25 = v24;
          [region eastLng];
          v56[6] = v25;
          v56[7] = v26;
          v27 = [MKPolygon polygonWithCoordinates:v56 count:4];
          [v4 addObject:v27];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v7);
  }

  y = MKMapRectNull.origin.y;
  width = MKMapRectNull.size.width;
  height = MKMapRectNull.size.height;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = v4;
  v32 = [v31 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v47;
    v35 = y;
    x = MKMapRectNull.origin.x;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v47 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v38 = *(*(&v46 + 1) + 8 * j);
        if (x == MKMapRectNull.origin.x && v35 == y)
        {
          [v38 boundingMapRect];
        }

        else
        {
          [v38 boundingMapRect];
          v61.origin.x = v40;
          v61.origin.y = v41;
          v61.size.width = v42;
          v61.size.height = v43;
          v59.origin.x = x;
          v59.origin.y = v35;
          v59.size.width = width;
          v59.size.height = height;
          v60 = MKMapRectUnion(v59, v61);
        }

        x = v60.origin.x;
        v35 = v60.origin.y;
        width = v60.size.width;
        height = v60.size.height;
      }

      v33 = [v31 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v33);
  }

  else
  {
    v35 = y;
    x = MKMapRectNull.origin.x;
  }

  [(MapDataSubscriptionMapView *)v45 setVisibleMapRect:0 edgePadding:x animated:v35, width, height, 20.0, 20.0, 20.0, 20.0];
  [(MapDataSubscriptionMapView *)v45 addOverlays:v31];

  return v45;
}

- (MapDataSubscriptionMapContentConfiguration)initWithSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  v10.receiver = self;
  v10.super_class = MapDataSubscriptionMapContentConfiguration;
  v5 = [(MapDataSubscriptionMapContentConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [subscriptionsCopy copy];
    subscriptions = v5->_subscriptions;
    v5->_subscriptions = v6;

    v8 = v5;
  }

  return v5;
}

@end