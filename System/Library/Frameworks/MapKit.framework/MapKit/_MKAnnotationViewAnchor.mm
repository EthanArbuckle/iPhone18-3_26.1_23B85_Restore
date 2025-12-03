@interface _MKAnnotationViewAnchor
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (CGPoint)pointInLayer:(id)layer bound:(CGRect)bound;
- (double)pointOffsetForDistanceOffset:(double)offset;
@end

@implementation _MKAnnotationViewAnchor

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(MKAnnotationView *)self->_annotationView _presentationCoordinate];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (double)pointOffsetForDistanceOffset:(double)offset
{
  _staticMapView = [(MKAnnotationView *)self->_annotationView _staticMapView];
  if (_staticMapView)
  {
    [(_MKAnnotationViewAnchor *)self coordinate];
    v7 = v6;
    v9 = v8;
    v10 = MKMapRectMakeWithRadialDistance(v6, v8, offset);
    v25.x = v10 + v11;
    v25.y = v13 + v12 * 0.5;
    v14 = MKCoordinateForMapPoint(v25);
    [_staticMapView convertCoordinate:_staticMapView toPointToView:{v7, v9}];
    v16 = v15;
    v18 = v17;
    [_staticMapView convertCoordinate:_staticMapView toPointToView:{v14.latitude, v14.longitude}];
    v21 = sqrt((v20 - v18) * (v20 - v18) + (v19 - v16) * (v19 - v16));
  }

  else
  {
    v24.receiver = self;
    v24.super_class = _MKAnnotationViewAnchor;
    [(VKAnchorWrapper *)&v24 pointOffsetForDistanceOffset:offset];
    v21 = v22;
  }

  return v21;
}

- (CGPoint)pointInLayer:(id)layer bound:(CGRect)bound
{
  height = bound.size.height;
  width = bound.size.width;
  y = bound.origin.y;
  x = bound.origin.x;
  layerCopy = layer;
  _staticMapView = [(MKAnnotationView *)self->_annotationView _staticMapView];
  if (_staticMapView)
  {
    [(_MKAnnotationViewAnchor *)self coordinate];
    [_staticMapView convertCoordinate:_staticMapView toPointToView:?];
    v12 = v11;
    v14 = v13;
    if (layerCopy)
    {
      layer = [_staticMapView layer];
      [layer convertPoint:layerCopy toLayer:{v12, v14}];
      v12 = v16;
      v14 = v17;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = _MKAnnotationViewAnchor;
    [(VKAnchorWrapper *)&v22 pointInLayer:layerCopy bound:x, y, width, height];
    v12 = v18;
    v14 = v19;
  }

  v20 = v12;
  v21 = v14;
  result.y = v21;
  result.x = v20;
  return result;
}

@end