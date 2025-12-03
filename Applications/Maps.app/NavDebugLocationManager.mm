@interface NavDebugLocationManager
- (NavDebugLocationManager)init;
- (id)rendererForOverlay:(id)overlay;
- (id)viewForAnnotation:(id)annotation;
- (void)addLocation:(id)location;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setMapView:(id)view;
@end

@implementation NavDebugLocationManager

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if ([pathCopy isEqualToString:@"NavigationShowRawGPSTrail"] && (objc_msgSend(objectCopy, "BOOLForKey:", pathCopy) & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_annotations;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(MKMapView *)self->_mapView removeAnnotation:*(*(&v15 + 1) + 8 * v14), v15];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)self->_annotations removeAllObjects];
  }
}

- (id)viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = annotationCopy;
    v6 = [(MKMapView *)self->_mapView dequeueReusableAnnotationViewWithIdentifier:@"NavDebugLocationManager"];
    if (v6)
    {
      v7 = v6;
      [(DebugLocationAnnotationView *)v6 setDebugLocationAnnotation:v5];
    }

    else
    {
      v7 = [[DebugLocationAnnotationView alloc] initWithAnnotation:v5 debugLocationAnnotation:v5 reuseIdentifier:@"NavDebugLocationManager"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)rendererForOverlay:(id)overlay
{
  overlayCopy = overlay;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_overlays allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        overlay = [v9 overlay];

        if (overlay == overlayCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)addLocation:(id)location
{
  locationCopy = location;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"NavigationShowRawGPSTrail"];

  if (v5)
  {
    if ([(NSMutableArray *)self->_annotations count]>= 3)
    {
      firstObject = [(NSMutableArray *)self->_annotations firstObject];
      [(NSMutableArray *)self->_annotations removeObjectAtIndex:0];
      [(MKMapView *)self->_mapView removeAnnotation:firstObject];
    }

    v7 = objc_alloc_init(DebugLocationAnnotation);
    [(DebugLocationAnnotation *)v7 setLocation:locationCopy];
    [(DebugLocationAnnotation *)v7 setLocationType:0];
    [(NSMutableArray *)self->_annotations addObject:v7];
    [(MKMapView *)self->_mapView addAnnotation:v7];
  }
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  p_mapView = &self->_mapView;
  if (self->_mapView != viewCopy)
  {
    obj = view;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allValues = [(NSMutableDictionary *)self->_overlays allValues];
    v8 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = *p_mapView;
          overlay = [v12 overlay];
          [v13 removeOverlay:overlay];

          overlay2 = [v12 overlay];
          [(MKMapView *)viewCopy addOverlay:overlay2];
        }

        v9 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = self->_annotations;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * j);
          [*p_mapView removeAnnotation:v21];
          [(MKMapView *)viewCopy addAnnotation:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }

    if (!viewCopy)
    {
      [(NSMutableDictionary *)self->_overlays removeAllObjects];
      [(NSMutableArray *)self->_annotations removeAllObjects];
    }

    objc_storeStrong(&self->_mapView, obj);
  }
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"NavigationShowRawGPSTrail"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allValues = [(NSMutableDictionary *)self->_overlays allValues];
  v5 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        mapView = self->_mapView;
        overlay = [*(*(&v21 + 1) + 8 * v8) overlay];
        [(MKMapView *)mapView removeOverlay:overlay];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_annotations;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(MKMapView *)self->_mapView removeAnnotation:*(*(&v17 + 1) + 8 * v15)];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16.receiver = self;
  v16.super_class = NavDebugLocationManager;
  [(NavDebugLocationManager *)&v16 dealloc];
}

- (NavDebugLocationManager)init
{
  v10.receiver = self;
  v10.super_class = NavDebugLocationManager;
  v2 = [(NavDebugLocationManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    overlays = v2->_overlays;
    v2->_overlays = v3;

    v5 = objc_alloc_init(NSMutableArray);
    annotations = v2->_annotations;
    v2->_annotations = v5;

    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 addObserver:v2 forKeyPath:@"NavigationShowRawGPSTrail" options:0 context:0];

    v8 = v2;
  }

  return v2;
}

@end