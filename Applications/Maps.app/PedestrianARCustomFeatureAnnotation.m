@interface PedestrianARCustomFeatureAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (NSString)debugDescription;
- (PedestrianARCustomFeatureAnnotation)initWithCustomFeature:(id)a3 labelMarker:(id)a4 isActive:(BOOL)a5;
@end

@implementation PedestrianARCustomFeatureAnnotation

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(PedestrianARCustomFeatureAnnotation *)self feature];
  v6 = [(PedestrianARCustomFeatureAnnotation *)self labelMarker];
  v7 = [(PedestrianARCustomFeatureAnnotation *)self labelMarker];
  v8 = [v7 arWalkingFeature];
  v9 = [(PedestrianARCustomFeatureAnnotation *)self isActive];
  v10 = [(PedestrianARCustomFeatureAnnotation *)self isOccluded];
  [(PedestrianARCustomFeatureAnnotation *)self coordinate];
  v12 = v11;
  [(PedestrianARCustomFeatureAnnotation *)self coordinate];
  v14 = [v3 initWithFormat:@"<\n%@: %p \n customFeature: %@ \n labelMarker: %@ \n arWalkingFeature: %@ \n isActive: %d \n isOccluded: %d \n coordinate: {%+.6f, %+.6f}\n>", v4, self, v5, v6, v8, v9, v10, v12, v13];

  return v14;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  [(VKLabelMarker *)self->_labelMarker coordinate];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (PedestrianARCustomFeatureAnnotation)initWithCustomFeature:(id)a3 labelMarker:(id)a4 isActive:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
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

  if (!v10)
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
    objc_storeStrong(&v11->_feature, a3);
    objc_storeStrong(&v12->_labelMarker, a4);
    v12->_isActive = a5;
    v12->_isOccluded = [(VKLabelMarker *)v12->_labelMarker isOccluded];
  }

  return v12;
}

@end