@interface _MKAnnotationViewCustomFeatureAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (MKAnnotationView)annotationView;
- (VKCustomFeature)feature;
- (_MKAnnotationViewCustomFeatureAnnotation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MKAnnotationViewCustomFeatureAnnotation

- (MKAnnotationView)annotationView
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationView);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (VKCustomFeature)feature
{
  customFeature = self->_customFeature;
  if (!customFeature)
  {
    WeakRetained = objc_loadWeakRetained(&self->_annotationView);
    [WeakRetained coordinate];
    self->_coordinate.latitude = v5;
    self->_coordinate.longitude = v6;
    v7 = [objc_alloc(MEMORY[0x1E69DF408]) initWithCoordinate:{self->_coordinate.latitude, self->_coordinate.longitude}];
    v8 = self->_customFeature;
    self->_customFeature = v7;

    v9 = objc_loadWeakRetained(&self->_annotationView);
    -[VKCustomFeature setFeatureID:](self->_customFeature, "setFeatureID:", [v9 _featureId]);

    v10 = [MEMORY[0x1E69A1DB0] annotationViewProvidedCustomFeatureStyleAttributes];
    if ([WeakRetained isSelected])
    {
      v11 = [MEMORY[0x1E69A1DB0] styleAttributesForCalloutWithAttributes:v10];

      v10 = v11;
    }

    [(VKCustomFeature *)self->_customFeature setStyleAttributes:v10];
    [WeakRetained _collisionFrame];
    v26 = CGRectInset(v25, 5.0, 5.0);
    width = v26.size.width;
    height = v26.size.height;
    [WeakRetained _collisionAlignmentRectInsets];
    v16 = (v14 - v15) * 0.5;
    v19 = (v17 - v18) * 0.5;
    [WeakRetained centerOffset];
    -[VKCustomFeature setPlaceholderIconWithSize:anchorPoint:isRound:](self->_customFeature, "setPlaceholderIconWithSize:anchorPoint:isRound:", [WeakRetained collisionMode] == 1, width, height, width * 0.5 - (v20 + v16), height * 0.5 - (v21 + v19));
    v22 = objc_loadWeakRetained(&self->_annotationView);
    [v22 configureCustomFeature:self->_customFeature];

    customFeature = self->_customFeature;
  }

  return customFeature;
}

- (_MKAnnotationViewCustomFeatureAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _MKAnnotationViewCustomFeatureAnnotation;
  v5 = [(_MKAnnotationViewCustomFeatureAnnotation *)&v11 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"lat"];
    v5->_coordinate.latitude = v6;
    [v4 decodeDoubleForKey:@"lng"];
    v5->_coordinate.longitude = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feature"];
    customFeature = v5->_customFeature;
    v5->_customFeature = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(_MKAnnotationViewCustomFeatureAnnotation *)self coordinate];
  [v4 encodeDouble:@"lat" forKey:?];
  [(_MKAnnotationViewCustomFeatureAnnotation *)self coordinate];
  [v4 encodeDouble:@"lng" forKey:v5];
  v6 = [(_MKAnnotationViewCustomFeatureAnnotation *)self feature];
  [v4 encodeObject:v6 forKey:@"feature"];
}

@end