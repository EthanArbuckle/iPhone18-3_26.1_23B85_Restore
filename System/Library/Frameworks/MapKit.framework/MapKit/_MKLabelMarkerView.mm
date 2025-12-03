@interface _MKLabelMarkerView
- (BOOL)shouldShowCallout;
- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)animated;
- (MKMapView)mapView;
- (_MKLabelMarkerView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (void)_deregisterObserver;
- (void)_registerObserver;
- (void)_updateAnchorOffset;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAnnotation:(id)annotation;
@end

@implementation _MKLabelMarkerView

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(_MKLabelMarkerView *)self _updateAnchorOffset];
  v6.receiver = self;
  v6.super_class = _MKLabelMarkerView;
  return [(MKAnnotationView *)&v6 updateCalloutViewIfNeededAnimated:animatedCopy];
}

- (void)_updateAnchorOffset
{
  annotation = [(MKAnnotationView *)self annotation];
  [annotation calloutAnchorRect];
  [(MKAnnotationView *)self setCalloutOffset:CGRectGetMidX(v5), -8.0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  annotation = [(MKAnnotationView *)self annotation];
  if ([pathCopy isEqualToString:@"leftCalloutAccessoryView"])
  {
    leftCalloutAccessoryView = [annotation leftCalloutAccessoryView];
    [(MKAnnotationView *)self setLeftCalloutAccessoryView:leftCalloutAccessoryView];
  }

  else if ([pathCopy isEqualToString:@"rightCalloutAccessoryView"])
  {
    leftCalloutAccessoryView = [annotation rightCalloutAccessoryView];
    [(MKAnnotationView *)self setRightCalloutAccessoryView:leftCalloutAccessoryView];
  }

  else
  {
    if (![pathCopy isEqualToString:@"detailCalloutAccessoryView"])
    {
      goto LABEL_8;
    }

    leftCalloutAccessoryView = [annotation detailCalloutAccessoryView];
    [(MKAnnotationView *)self setDetailCalloutAccessoryView:leftCalloutAccessoryView];
  }

LABEL_8:
}

- (void)dealloc
{
  [(_MKLabelMarkerView *)self _deregisterObserver];
  v3.receiver = self;
  v3.super_class = _MKLabelMarkerView;
  [(MKAnnotationView *)&v3 dealloc];
}

- (void)setAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotation = self->super._annotation;
  if (annotation != annotationCopy)
  {
    if (annotation)
    {
      [(_MKLabelMarkerView *)self _deregisterObserver];
    }

    v17.receiver = self;
    v17.super_class = _MKLabelMarkerView;
    [(MKAnnotationView *)&v17 setAnnotation:annotationCopy];
    annotation = [(MKAnnotationView *)self annotation];
    [annotation calloutAnchorRect];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    MidX = CGRectGetMidX(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    [(MKAnnotationView *)self setCalloutOffset:MidX, CGRectGetMinY(v19)];
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinX = CGRectGetMinX(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    [(MKAnnotationView *)self setLeftCalloutOffset:MinX, CGRectGetMidY(v21)];
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MaxX = CGRectGetMaxX(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    [(MKAnnotationView *)self setRightCalloutOffset:MaxX, CGRectGetMidY(v23)];
    leftCalloutAccessoryView = [annotation leftCalloutAccessoryView];
    [(MKAnnotationView *)self setLeftCalloutAccessoryView:leftCalloutAccessoryView];

    rightCalloutAccessoryView = [annotation rightCalloutAccessoryView];
    [(MKAnnotationView *)self setRightCalloutAccessoryView:rightCalloutAccessoryView];

    detailCalloutAccessoryView = [annotation detailCalloutAccessoryView];
    [(MKAnnotationView *)self setDetailCalloutAccessoryView:detailCalloutAccessoryView];

    [(MKAnnotationView *)self setCanShowCallout:[(_MKLabelMarkerView *)self shouldShowCallout]];
    [(_MKLabelMarkerView *)self _registerObserver];
  }
}

- (void)_deregisterObserver
{
  annotation = [(MKAnnotationView *)self annotation];
  [annotation removeObserver:self forKeyPath:@"leftCalloutAccessoryView"];
  [annotation removeObserver:self forKeyPath:@"rightCalloutAccessoryView"];
  [annotation removeObserver:self forKeyPath:@"detailCalloutAccessoryView"];
}

- (void)_registerObserver
{
  annotation = [(MKAnnotationView *)self annotation];
  [annotation addObserver:self forKeyPath:@"leftCalloutAccessoryView" options:0 context:0];
  [annotation addObserver:self forKeyPath:@"rightCalloutAccessoryView" options:0 context:0];
  [annotation addObserver:self forKeyPath:@"detailCalloutAccessoryView" options:0 context:0];
}

- (BOOL)shouldShowCallout
{
  annotation = [(MKAnnotationView *)self annotation];
  if ([annotation suppressCallout] & 1) != 0 || (objc_msgSend(annotation, "isRouteEta"))
  {
    shouldShowCallout = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _MKLabelMarkerView;
    shouldShowCallout = [(MKAnnotationView *)&v6 shouldShowCallout];
  }

  return shouldShowCallout;
}

- (_MKLabelMarkerView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = _MKLabelMarkerView;
  v4 = [(MKAnnotationView *)&v7 initWithAnnotation:annotation reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MKAnnotationView *)v4 setBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MKAnnotationView *)v5 setCanShowCallout:1];
  }

  return v5;
}

@end