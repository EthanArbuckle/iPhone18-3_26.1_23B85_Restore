@interface MKUserLocationView
- (CGPoint)calloutOffset;
- (CGPoint)centerOffset;
- (CGPoint)leftCalloutOffset;
- (CGPoint)rightCalloutOffset;
- (CGRect)_mapkit_visibleRect;
- (MKUserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)_annotationTrackingInsets;
- (void)_setMapDisplayStyle:(id)a3;
- (void)_setMapPitchRadians:(double)a3;
- (void)_setMapRotationRadians:(double)a3;
- (void)_setMapType:(unint64_t)a3;
- (void)_setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateFromMap;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setAnnotation:(id)a3;
@end

@implementation MKUserLocationView

- (CGPoint)centerOffset
{
  [(MKAnnotationView *)self->_mkUserLocationView centerOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_updateFromMap
{
  v3.receiver = self;
  v3.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v3 _updateFromMap];
  [(_MKPuckAnnotationView *)self->_mkUserLocationView _updateFromMap];
}

- (UIEdgeInsets)_annotationTrackingInsets
{
  [(_MKPuckAnnotationView *)self->_mkUserLocationView _annotationTrackingInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)_mapkit_visibleRect
{
  [(_MKPuckAnnotationView *)self->_mkUserLocationView _mapkit_visibleRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setMapRotationRadians:(double)a3
{
  v5.receiver = self;
  v5.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v5 _setMapRotationRadians:?];
  [(_MKPuckAnnotationView *)self->_mkUserLocationView _setMapRotationRadians:a3];
}

- (void)_setMapPitchRadians:(double)a3
{
  v5.receiver = self;
  v5.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v5 _setMapPitchRadians:?];
  [(_MKPuckAnnotationView *)self->_mkUserLocationView _setMapPitchRadians:a3];
}

- (void)_setMapDisplayStyle:(id)a3
{
  v3 = *&a3.var0;
  v5.receiver = self;
  v5.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v5 _setMapDisplayStyle:*&a3.var0 & 0xFFFFFFFFFFFFLL];
  [(_MKPuckAnnotationView *)self->_mkUserLocationView _setMapDisplayStyle:v3 & 0xFFFFFFFFFFFFLL];
}

- (void)_setMapType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v5 _setMapType:?];
  [(_MKPuckAnnotationView *)self->_mkUserLocationView _setMapType:a3];
}

- (void)prepareForDisplay
{
  v3.receiver = self;
  v3.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v3 prepareForDisplay];
  [(MKAnnotationView *)self->_mkUserLocationView prepareForDisplay];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v3 prepareForReuse];
  [(MKAnnotationView *)self->_mkUserLocationView prepareForReuse];
}

- (void)_setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->_selected = a3;
  [MKAnnotationView _setSelected:"_setSelected:animated:" animated:?];
  v7.receiver = self;
  v7.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v7 _setSelected:v5 animated:v4];
}

- (CGPoint)rightCalloutOffset
{
  [(MKAnnotationView *)self->_mkUserLocationView rightCalloutOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)leftCalloutOffset
{
  [(MKAnnotationView *)self->_mkUserLocationView leftCalloutOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)calloutOffset
{
  [(_MKPuckAnnotationView *)self->_mkUserLocationView calloutOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setAnnotation:(id)a3
{
  mkUserLocationView = self->_mkUserLocationView;
  v5 = a3;
  [(_MKUserLocationView *)mkUserLocationView setAnnotation:v5];
  v6.receiver = self;
  v6.super_class = MKUserLocationView;
  [(MKAnnotationView *)&v6 setAnnotation:v5];
}

- (MKUserLocationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = MKUserLocationView;
  v7 = [(MKAnnotationView *)&v12 initWithAnnotation:v6 reuseIdentifier:a4];
  if (v7)
  {
    v8 = [(_MKUserLocationView *)[_MKUserLocationInternalView alloc] initWithAnnotation:v6 reuseIdentifier:0];
    [(_MKUserLocationInternalView *)v8 bounds];
    [(_MKUserLocationInternalView *)v8 setFrame:?];
    [(_MKUserLocationInternalView *)v8 setParentView:v7];
    mkUserLocationView = v7->_mkUserLocationView;
    v7->_mkUserLocationView = &v8->super;
    v10 = v8;

    v7->super._collisionMode = 2;
    [(_MKUserLocationView *)v7->_mkUserLocationView bounds];
    [(MKUserLocationView *)v7 setFrame:?];
    [(MKUserLocationView *)v7 addSubview:v7->_mkUserLocationView];
  }

  return v7;
}

@end