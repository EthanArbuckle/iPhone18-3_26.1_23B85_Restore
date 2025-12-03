@interface PedestrianARVKFeatureMapEntry
- (PedestrianARVKFeatureMapEntry)initWithFeature:(id)feature guidanceInfo:(id)info;
- (id)description;
@end

@implementation PedestrianARVKFeatureMapEntry

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  feature = self->_feature;
  mapsShortDescription = [(MNGuidanceARInfo *)self->_guidanceInfo mapsShortDescription];
  v7 = [NSString stringWithFormat:@"<%@: %p, feature: %@, guidanceInfo: %@>", v4, self, feature, mapsShortDescription];

  return v7;
}

- (PedestrianARVKFeatureMapEntry)initWithFeature:(id)feature guidanceInfo:(id)info
{
  featureCopy = feature;
  infoCopy = info;
  if (!featureCopy)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[PedestrianARVKFeatureMapEntry initWithFeature:guidanceInfo:]";
      v21 = 2080;
      v22 = "PedestrianARVKMapViewMapDelegate.m";
      v23 = 1024;
      v24 = 29;
      v25 = 2080;
      v26 = "feature != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!infoCopy)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[PedestrianARVKFeatureMapEntry initWithFeature:guidanceInfo:]";
      v21 = 2080;
      v22 = "PedestrianARVKMapViewMapDelegate.m";
      v23 = 1024;
      v24 = 30;
      v25 = 2080;
      v26 = "guidanceInfo != nil";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v20 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v18.receiver = self;
  v18.super_class = PedestrianARVKFeatureMapEntry;
  v9 = [(PedestrianARVKFeatureMapEntry *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feature, feature);
    objc_storeStrong(&v10->_guidanceInfo, info);
  }

  return v10;
}

@end