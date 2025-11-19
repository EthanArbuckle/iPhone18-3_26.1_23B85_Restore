@interface HMCAMDEmbeddedDevice
- (HMCAMDEmbeddedDevice)init;
- (id)instanceOfClass:(Class)a3 forShortName:(id)a4;
- (id)performCommandFromClass:(id)a3 method:(id)a4 arguments:(id)a5 error:(id *)a6;
@end

@implementation HMCAMDEmbeddedDevice

- (id)performCommandFromClass:(id)a3 method:(id)a4 arguments:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"%@ is unavailable", v12];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)instanceOfClass:(Class)a3 forShortName:(id)a4
{
  v5 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6->_classInstances objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_opt_new();
    if (!v8)
    {
      goto LABEL_5;
    }

    [(NSMutableDictionary *)v6->_classInstances setObject:v8 forKeyedSubscript:v5];
  }

  v8 = [(NSMutableDictionary *)v6->_classInstances objectForKeyedSubscript:v5];
LABEL_5:
  objc_sync_exit(v6);

  return v8;
}

- (HMCAMDEmbeddedDevice)init
{
  v7.receiver = self;
  v7.super_class = HMCAMDEmbeddedDevice;
  v2 = [(HMCAMDEmbeddedDevice *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_filterNSDataLogging = 0;
    v4 = +[NSMutableDictionary dictionary];
    classInstances = v3->_classInstances;
    v3->_classInstances = v4;
  }

  return v3;
}

@end