@interface _MKLabelMarkerView
- (BOOL)shouldShowCallout;
- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3;
- (MKMapView)mapView;
- (_MKLabelMarkerView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (void)_deregisterObserver;
- (void)_registerObserver;
- (void)_updateAnchorOffset;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAnnotation:(id)a3;
@end

@implementation _MKLabelMarkerView

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  [(_MKLabelMarkerView *)self _updateAnchorOffset];
  v6.receiver = self;
  v6.super_class = _MKLabelMarkerView;
  return [(MKAnnotationView *)&v6 updateCalloutViewIfNeededAnimated:v3];
}

- (void)_updateAnchorOffset
{
  v3 = [(MKAnnotationView *)self annotation];
  [v3 calloutAnchorRect];
  [(MKAnnotationView *)self setCalloutOffset:CGRectGetMidX(v5), -8.0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v7 = [(MKAnnotationView *)self annotation];
  if ([v9 isEqualToString:@"leftCalloutAccessoryView"])
  {
    v8 = [v7 leftCalloutAccessoryView];
    [(MKAnnotationView *)self setLeftCalloutAccessoryView:v8];
  }

  else if ([v9 isEqualToString:@"rightCalloutAccessoryView"])
  {
    v8 = [v7 rightCalloutAccessoryView];
    [(MKAnnotationView *)self setRightCalloutAccessoryView:v8];
  }

  else
  {
    if (![v9 isEqualToString:@"detailCalloutAccessoryView"])
    {
      goto LABEL_8;
    }

    v8 = [v7 detailCalloutAccessoryView];
    [(MKAnnotationView *)self setDetailCalloutAccessoryView:v8];
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

- (void)setAnnotation:(id)a3
{
  v4 = a3;
  annotation = self->super._annotation;
  if (annotation != v4)
  {
    if (annotation)
    {
      [(_MKLabelMarkerView *)self _deregisterObserver];
    }

    v17.receiver = self;
    v17.super_class = _MKLabelMarkerView;
    [(MKAnnotationView *)&v17 setAnnotation:v4];
    v6 = [(MKAnnotationView *)self annotation];
    [v6 calloutAnchorRect];
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
    v14 = [v6 leftCalloutAccessoryView];
    [(MKAnnotationView *)self setLeftCalloutAccessoryView:v14];

    v15 = [v6 rightCalloutAccessoryView];
    [(MKAnnotationView *)self setRightCalloutAccessoryView:v15];

    v16 = [v6 detailCalloutAccessoryView];
    [(MKAnnotationView *)self setDetailCalloutAccessoryView:v16];

    [(MKAnnotationView *)self setCanShowCallout:[(_MKLabelMarkerView *)self shouldShowCallout]];
    [(_MKLabelMarkerView *)self _registerObserver];
  }
}

- (void)_deregisterObserver
{
  v3 = [(MKAnnotationView *)self annotation];
  [v3 removeObserver:self forKeyPath:@"leftCalloutAccessoryView"];
  [v3 removeObserver:self forKeyPath:@"rightCalloutAccessoryView"];
  [v3 removeObserver:self forKeyPath:@"detailCalloutAccessoryView"];
}

- (void)_registerObserver
{
  v3 = [(MKAnnotationView *)self annotation];
  [v3 addObserver:self forKeyPath:@"leftCalloutAccessoryView" options:0 context:0];
  [v3 addObserver:self forKeyPath:@"rightCalloutAccessoryView" options:0 context:0];
  [v3 addObserver:self forKeyPath:@"detailCalloutAccessoryView" options:0 context:0];
}

- (BOOL)shouldShowCallout
{
  v3 = [(MKAnnotationView *)self annotation];
  if ([v3 suppressCallout] & 1) != 0 || (objc_msgSend(v3, "isRouteEta"))
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _MKLabelMarkerView;
    v4 = [(MKAnnotationView *)&v6 shouldShowCallout];
  }

  return v4;
}

- (_MKLabelMarkerView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = _MKLabelMarkerView;
  v4 = [(MKAnnotationView *)&v7 initWithAnnotation:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MKAnnotationView *)v4 setBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MKAnnotationView *)v5 setCanShowCallout:1];
  }

  return v5;
}

@end