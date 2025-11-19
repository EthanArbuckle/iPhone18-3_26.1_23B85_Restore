@interface PedestrianARFeatureSetMapEntry
- (PedestrianARFeatureSetMapEntry)initWithFeatureSet:(id)a3 featureEntries:(id)a4;
- (id)description;
@end

@implementation PedestrianARFeatureSetMapEntry

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p, featureSet: %@, featureEntries: %@>", v4, self, self->_featureSet, self->_featureEntries];

  return v5;
}

- (PedestrianARFeatureSetMapEntry)initWithFeatureSet:(id)a3 featureEntries:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[PedestrianARFeatureSetMapEntry initWithFeatureSet:featureEntries:]";
      v21 = 2080;
      v22 = "PedestrianARVKMapViewMapDelegate.m";
      v23 = 1024;
      v24 = 58;
      v25 = 2080;
      v26 = "featureSet != nil";
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

  if (!v8)
  {
    v15 = sub_10006D178();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v20 = "[PedestrianARFeatureSetMapEntry initWithFeatureSet:featureEntries:]";
      v21 = 2080;
      v22 = "PedestrianARVKMapViewMapDelegate.m";
      v23 = 1024;
      v24 = 59;
      v25 = 2080;
      v26 = "featureEntries != nil";
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
  v18.super_class = PedestrianARFeatureSetMapEntry;
  v9 = [(PedestrianARFeatureSetMapEntry *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_featureSet, a3);
    objc_storeStrong(&v10->_featureEntries, a4);
  }

  return v10;
}

@end