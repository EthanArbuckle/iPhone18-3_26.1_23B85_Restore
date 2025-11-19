@interface _MKAnnotationViewAnchor
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (CGPoint)pointInLayer:(id)a3 bound:(CGRect)a4;
- (double)pointOffsetForDistanceOffset:(double)a3;
@end

@implementation _MKAnnotationViewAnchor

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(MKAnnotationView *)self->_annotationView _presentationCoordinate];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (double)pointOffsetForDistanceOffset:(double)a3
{
  v5 = [(MKAnnotationView *)self->_annotationView _staticMapView];
  if (v5)
  {
    [(_MKAnnotationViewAnchor *)self coordinate];
    v7 = v6;
    v9 = v8;
    v10 = MKMapRectMakeWithRadialDistance(v6, v8, a3);
    v25.x = v10 + v11;
    v25.y = v13 + v12 * 0.5;
    v14 = MKCoordinateForMapPoint(v25);
    [v5 convertCoordinate:v5 toPointToView:{v7, v9}];
    v16 = v15;
    v18 = v17;
    [v5 convertCoordinate:v5 toPointToView:{v14.latitude, v14.longitude}];
    v21 = sqrt((v20 - v18) * (v20 - v18) + (v19 - v16) * (v19 - v16));
  }

  else
  {
    v24.receiver = self;
    v24.super_class = _MKAnnotationViewAnchor;
    [(VKAnchorWrapper *)&v24 pointOffsetForDistanceOffset:a3];
    v21 = v22;
  }

  return v21;
}

- (CGPoint)pointInLayer:(id)a3 bound:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(MKAnnotationView *)self->_annotationView _staticMapView];
  if (v10)
  {
    [(_MKAnnotationViewAnchor *)self coordinate];
    [v10 convertCoordinate:v10 toPointToView:?];
    v12 = v11;
    v14 = v13;
    if (v9)
    {
      v15 = [v10 layer];
      [v15 convertPoint:v9 toLayer:{v12, v14}];
      v12 = v16;
      v14 = v17;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = _MKAnnotationViewAnchor;
    [(VKAnchorWrapper *)&v22 pointInLayer:v9 bound:x, y, width, height];
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