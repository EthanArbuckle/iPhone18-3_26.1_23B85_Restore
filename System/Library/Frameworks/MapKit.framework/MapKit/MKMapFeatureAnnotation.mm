@interface MKMapFeatureAnnotation
- (CLLocationCoordinate2D)coordinate;
- (MKMapFeatureAnnotation)initWithVKLabelMarker:(id)a3 isHybridMap:(BOOL)a4;
- (void)_setProperties;
@end

@implementation MKMapFeatureAnnotation

- (void)_setProperties
{
  if ([(VKLabelMarker *)self->_marker externalFeatureCategory]== 3)
  {
    v3 = 2;
LABEL_5:
    self->_featureType = v3;
    return;
  }

  if ([(VKLabelMarker *)self->_marker externalFeatureCategory]== 2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if ([(VKLabelMarker *)self->_marker externalFeatureCategory]== 1)
  {
    v9 = [(VKLabelMarker *)self->_marker styleAttributes];
    self->_featureType = 0;
    v4 = [v9 poiCategory];
    v5 = MKPointOfInterestCategoryForGEOPOICategory(v4);
    pointOfInterestCategory = self->_pointOfInterestCategory;
    self->_pointOfInterestCategory = v5;

    v7 = [[MKIconStyle alloc] initWithStyleAttributes:v9 isHybridMap:self->_isHybridMap];
    iconStyle = self->_iconStyle;
    self->_iconStyle = v7;
  }
}

- (CLLocationCoordinate2D)coordinate
{
  [(VKLabelMarker *)self->_marker coordinate];
  v4 = v3;
  [(VKLabelMarker *)self->_marker coordinate];

  v8 = CLLocationCoordinate2DMake(v4, v5);
  longitude = v8.longitude;
  latitude = v8.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKMapFeatureAnnotation)initWithVKLabelMarker:(id)a3 isHybridMap:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MKMapFeatureAnnotation;
  v8 = [(MKMapFeatureAnnotation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_marker, a3);
    v9->_isHybridMap = a4;
    [(MKMapFeatureAnnotation *)v9 _setProperties];
  }

  return v9;
}

@end