@interface SRSensorsCache
+ (void)initialize;
+ (void)setDefaultCache:(id)cache;
- (SRSensorsCache)init;
- (SRSensorsCache)initWithDirectories:(id)directories;
- (void)dealloc;
@end

@implementation SRSensorsCache

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000169A8 = os_log_create("com.apple.SensorKit", "SensorsCache");
  }
}

+ (void)setDefaultCache:(id)cache
{
  if (qword_1000169B0 != cache)
  {

    qword_1000169B0 = cache;
  }
}

- (SRSensorsCache)init
{
  v3 = NSClassFromString(@"SRSensorReader");
  if (!v3 || (v4 = [[NSBundle bundleForClass:?]]) == 0)
  {
    v5 = [+[NSFileManager URLForDirectory:0]inDomain:"URLForDirectory:inDomain:appropriateForURL:create:error:" appropriateForURL:5 create:8 error:0, 0, &v13];
    if (!v5)
    {
      v6 = qword_1000169A8;
      if (os_log_type_enabled(qword_1000169A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v17 = v13;
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Failed to locate the /System/Library directory because %{public}@", buf, 0xCu);
      }

      v5 = [NSURL fileURLWithPath:@"/System/Library"];
    }

    v4 = [NSURL fileURLWithPath:[NSString pathWithComponents:&off_100012028] isDirectory:1 relativeToURL:v5];
  }

  v7 = [NSURL fileURLWithPath:@"SensorDescriptions" isDirectory:1 relativeToURL:v4];
  v8 = [NSURL fileURLWithPath:@"SensorKit" isDirectory:1 relativeToURL:[NSURL fileURLWithPath:@"/var/mobile/Library" isDirectory:1]];
  if (v8)
  {
    v9 = [NSURL fileURLWithPath:@"SensorDescriptions" isDirectory:1 relativeToURL:v8];
    v15[0] = v7;
    v15[1] = v9;
    v10 = v15;
    v11 = 2;
  }

  else
  {
    v14 = v7;
    v10 = &v14;
    v11 = 1;
  }

  return [(SRSensorsCache *)self initWithDirectories:[NSArray arrayWithObjects:v10 count:v11]];
}

- (SRSensorsCache)initWithDirectories:(id)directories
{
  v6.receiver = self;
  v6.super_class = SRSensorsCache;
  v4 = [(SRSensorsCache *)&v6 init];
  if (v4)
  {
    v4->_sensorsCache = objc_alloc_init(NSCache);
    v4->_sensorDescriptionsDirs = directories;
  }

  return v4;
}

- (void)dealloc
{
  self->_sensorDescriptionsDirs = 0;

  self->_sensorsCache = 0;
  v3.receiver = self;
  v3.super_class = SRSensorsCache;
  [(SRSensorsCache *)&v3 dealloc];
}

@end