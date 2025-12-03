@interface PedestrianARCustomFeatureAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (NSString)debugDescription;
- (PedestrianARCustomFeatureAnnotation)initWithCustomFeature:(id)feature labelMarker:(id)marker isActive:(BOOL)active;
@end

@implementation PedestrianARCustomFeatureAnnotation

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  feature = [(PedestrianARCustomFeatureAnnotation *)self feature];
  labelMarker = [(PedestrianARCustomFeatureAnnotation *)self labelMarker];
  labelMarker2 = [(PedestrianARCustomFeatureAnnotation *)self labelMarker];
  arWalkingFeature = [labelMarker2 arWalkingFeature];
  isActive = [(PedestrianARCustomFeatureAnnotation *)self isActive];
  isOccluded = [(PedestrianARCustomFeatureAnnotation *)self isOccluded];
  [(PedestrianARCustomFeatureAnnotation *)self coordinate];
  v12 = v11;
  [(PedestrianARCustomFeatureAnnotation *)self coordinate];
  v14 = [v3 initWithFormat:@"<\n%@: %p \n customFeature: %@ \n labelMarker: %@ \n arWalkingFeature: %@ \n isActive: %d \n isOccluded: %d \n coordinate: {%+.6f, %+.6f}\n>", v4, self, feature, labelMarker, arWalkingFeature, isActive, isOccluded, v12, v13];

  return v14;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(VKLabelMarker *)self->_labelMarker coordinate];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (PedestrianARCustomFeatureAnnotation)initWithCustomFeature:(id)feature labelMarker:(id)marker isActive:(BOOL)active
{
  featureCopy = feature;
  markerCopy = marker;
  if (!featureCopy)
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[PedestrianARCustomFeatureAnnotation initWithCustomFeature:labelMarker:isActive:]";
      v23 = 2080;
      v24 = "PedestrianARDebugMapAnnotationsTask.m";
      v25 = 1024;
      v26 = 86;
      v27 = 2080;
      v28 = "customFeature != nil";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!markerCopy)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[PedestrianARCustomFeatureAnnotation initWithCustomFeature:labelMarker:isActive:]";
      v23 = 2080;
      v24 = "PedestrianARDebugMapAnnotationsTask.m";
      v25 = 1024;
      v26 = 87;
      v27 = 2080;
      v28 = "labelMarker != nil";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v20.receiver = self;
  v20.super_class = PedestrianARCustomFeatureAnnotation;
  v11 = [(PedestrianARCustomFeatureAnnotation *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feature, feature);
    objc_storeStrong(&v12->_labelMarker, marker);
    v12->_isActive = active;
    v12->_isOccluded = [(VKLabelMarker *)v12->_labelMarker isOccluded];
  }

  return v12;
}

@end