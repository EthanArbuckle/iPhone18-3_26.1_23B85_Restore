@interface MapsRadarComponent
+ (MapsRadarComponent)mapsAppCoreUIComponent;
+ (MapsRadarComponent)mapsAppNavUIWalkingComponent;
+ (MapsRadarComponent)mapsClientComponent;
+ (MapsRadarComponent)mapsComponent;
+ (MapsRadarComponent)mapsGeoServicesComponent;
+ (MapsRadarComponent)mapsLocationIntelligenceComponent;
+ (MapsRadarComponent)mapsMapDisplayComponent;
+ (MapsRadarComponent)mapsNavFrameworkComponent;
+ (MapsRadarComponent)mapsShareETACarPlayComponent;
+ (MapsRadarComponent)mapsShareETAiOSComponent;
+ (MapsRadarComponent)mapsSuggestionsComponent;
+ (MapsRadarComponent)mapsVisualLocalizationComponent;
- (MapsRadarComponent)initWithName:(id)name version:(id)version ID:(id)d;
- (NSString)debugDescription;
- (NSString)description;
- (void)_maps_buildDescriptionWithBlock:(id)block;
@end

@implementation MapsRadarComponent

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, @"version", self->_version);
  (*v4)(blockCopy, @"id", &self->_ID->super.super.isa);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100881D84;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarComponent *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarComponent *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (NSString)description
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100881FD4;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(MapsRadarComponent *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsRadarComponent *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (MapsRadarComponent)initWithName:(id)name version:(id)version ID:(id)d
{
  nameCopy = name;
  versionCopy = version;
  dCopy = d;
  if (!nameCopy)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v30 = "[MapsRadarComponent initWithName:version:ID:]";
      v31 = 2080;
      v32 = "MapsRadarComponent.m";
      v33 = 1024;
      v34 = 23;
      v35 = 2080;
      v36 = "name != nil";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!versionCopy)
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v30 = "[MapsRadarComponent initWithName:version:ID:]";
      v31 = 2080;
      v32 = "MapsRadarComponent.m";
      v33 = 1024;
      v34 = 24;
      v35 = 2080;
      v36 = "version != nil";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!dCopy)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v30 = "[MapsRadarComponent initWithName:version:ID:]";
      v31 = 2080;
      v32 = "MapsRadarComponent.m";
      v33 = 1024;
      v34 = 25;
      v35 = 2080;
      v36 = "ID != nil";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v30 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v28.receiver = self;
  v28.super_class = MapsRadarComponent;
  v11 = [(MapsRadarComponent *)&v28 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [versionCopy copy];
    version = v11->_version;
    v11->_version = v14;

    v16 = [dCopy copy];
    ID = v11->_ID;
    v11->_ID = v16;
  }

  return v11;
}

+ (MapsRadarComponent)mapsLocationIntelligenceComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps LocIntel (New Bugs)" version:@"iOS" ID:&off_1016E7400];

  return v2;
}

+ (MapsRadarComponent)mapsSuggestionsComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"MapsSuggestions Framework" version:@"All" ID:&off_1016E73E8];

  return v2;
}

+ (MapsRadarComponent)mapsShareETACarPlayComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps App Share ETA" version:@"CarPlay" ID:&off_1016E73D0];

  return v2;
}

+ (MapsRadarComponent)mapsShareETAiOSComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps App Share ETA" version:@"iOS" ID:&off_1016E73B8];

  return v2;
}

+ (MapsRadarComponent)mapsAppCoreUIComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps App Core UI" version:@"All" ID:&off_1016E73A0];

  return v2;
}

+ (MapsRadarComponent)mapsVisualLocalizationComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps Visual Localization" version:@"3DV" ID:&off_1016E7388];

  return v2;
}

+ (MapsRadarComponent)mapsAppNavUIWalkingComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps App Nav UI Walking" version:@"iOS" ID:&off_1016E7370];

  return v2;
}

+ (MapsRadarComponent)mapsNavFrameworkComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps FW Nav" version:@"iOS" ID:&off_1016E7358];

  return v2;
}

+ (MapsRadarComponent)mapsMapDisplayComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"MapDisplay" version:@"All" ID:&off_1016E7340];

  return v2;
}

+ (MapsRadarComponent)mapsGeoServicesComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"GeoServices" version:@"All" ID:&off_1016E7328];

  return v2;
}

+ (MapsRadarComponent)mapsComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps" version:@"New Bugs" ID:&off_1016E7310];

  return v2;
}

+ (MapsRadarComponent)mapsClientComponent
{
  v2 = [[MapsRadarComponent alloc] initWithName:@"Maps Client (New Bugs)" version:@"iOS" ID:&off_1016E72F8];

  return v2;
}

@end