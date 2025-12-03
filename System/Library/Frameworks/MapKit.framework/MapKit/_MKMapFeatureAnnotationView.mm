@interface _MKMapFeatureAnnotationView
- (CGPoint)_anchorPointForCalloutAnchorPosition:(int64_t)position;
- (CGPoint)_openInMapsAnchorPoint;
- (CGRect)_frameForSelectionAdjustment;
- (CGRect)_labelDisplayFrame;
- (_MKMapFeatureAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (unint64_t)_reasonToDeferSelectionAccessoryPresentationStyle:(id)style;
@end

@implementation _MKMapFeatureAnnotationView

- (unint64_t)_reasonToDeferSelectionAccessoryPresentationStyle:(id)style
{
  styleCopy = style;
  if (([styleCopy _style] | 2) == 3)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _MKMapFeatureAnnotationView;
    v5 = [(MKAnnotationView *)&v7 _reasonToDeferSelectionAccessoryPresentationStyle:styleCopy];
  }

  return v5;
}

- (CGRect)_labelDisplayFrame
{
  annotation = [(MKAnnotationView *)self annotation];
  marker = [annotation marker];

  _mapView = [(MKAnnotationView *)self _mapView];
  [marker screenBounds];
  [_mapView convertRect:self toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_frameForSelectionAdjustment
{
  annotation = [(MKAnnotationView *)self annotation];
  marker = [annotation marker];

  [marker screenBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGPoint)_anchorPointForCalloutAnchorPosition:(int64_t)position
{
  [(_MKMapFeatureAnnotationView *)self _labelDisplayFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  annotation = [(MKAnnotationView *)self annotation];
  v14 = annotation;
  if (position > 2)
  {
    if (position == 3)
    {
      featureType = [annotation featureType];
      v25 = v6;
      v26 = v8;
      v27 = v10;
      v28 = v12;
      if (featureType)
      {
        MaxX = CGRectGetMaxX(*&v25);
        goto LABEL_13;
      }

      MidX = CGRectGetMidX(*&v25);
      v32 = 30.0;
    }

    else
    {
      if (position != 4)
      {
        goto LABEL_9;
      }

      featureType2 = [annotation featureType];
      v18 = v6;
      v19 = v8;
      v20 = v10;
      v21 = v12;
      if (featureType2)
      {
        MaxX = CGRectGetMinX(*&v18);
LABEL_13:
        v15 = MaxX;
        v38.origin.x = v6;
        v38.origin.y = v8;
        v38.size.width = v10;
        v38.size.height = v12;
        MidY = CGRectGetMidY(v38);
        goto LABEL_14;
      }

      MidX = CGRectGetMidX(*&v18);
      v32 = -30.0;
    }

    v15 = MidX + v32;
    v39.origin.x = v6;
    v39.origin.y = v8;
    v39.size.width = v10;
    v39.size.height = v12;
    v23 = CGRectGetMinY(v39) + 41.0;
    goto LABEL_15;
  }

  if (position == 1)
  {
    v36.origin.x = v6;
    v36.origin.y = v8;
    v36.size.width = v10;
    v36.size.height = v12;
    v15 = CGRectGetMidX(v36);
    v37.origin.x = v6;
    v37.origin.y = v8;
    v37.size.width = v10;
    v37.size.height = v12;
    MidY = CGRectGetMaxY(v37);
    goto LABEL_14;
  }

  if (position == 2)
  {
    v34.origin.x = v6;
    v34.origin.y = v8;
    v34.size.width = v10;
    v34.size.height = v12;
    v15 = CGRectGetMidX(v34);
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    MidY = CGRectGetMinY(v35);
LABEL_14:
    v23 = MidY;
    goto LABEL_15;
  }

LABEL_9:
  v15 = *MEMORY[0x1E695EFF8];
  v23 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_15:

  v29 = v15;
  v30 = v23;
  result.y = v30;
  result.x = v29;
  return result;
}

- (CGPoint)_openInMapsAnchorPoint
{
  [(_MKMapFeatureAnnotationView *)self _labelDisplayFrame];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MaxY = CGRectGetMaxY(v11);
  v8 = MidX;
  result.y = MaxY;
  result.x = v8;
  return result;
}

- (_MKMapFeatureAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = _MKMapFeatureAnnotationView;
  v4 = [(MKAnnotationView *)&v7 initWithAnnotation:annotation reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MKAnnotationView *)v4 setBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MKAnnotationView *)v5 setCanShowCallout:0];
  }

  return v5;
}

@end