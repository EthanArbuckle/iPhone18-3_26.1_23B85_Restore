@interface HMCAMDEmbeddedDevice
- (HMCAMDEmbeddedDevice)init;
- (id)instanceOfClass:(Class)class forShortName:(id)name;
- (id)performCommandFromClass:(id)class method:(id)method arguments:(id)arguments error:(id *)error;
@end

@implementation HMCAMDEmbeddedDevice

- (id)performCommandFromClass:(id)class method:(id)method arguments:(id)arguments error:(id *)error
{
  classCopy = class;
  methodCopy = method;
  argumentsCopy = arguments;
  v12 = NSStringFromSelector(a2);
  v13 = [NSString stringWithFormat:@"%@ is unavailable", v12];
  v14 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (id)instanceOfClass:(Class)class forShortName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableDictionary *)selfCopy->_classInstances objectForKeyedSubscript:nameCopy];

  if (!v7)
  {
    v8 = objc_opt_new();
    if (!v8)
    {
      goto LABEL_5;
    }

    [(NSMutableDictionary *)selfCopy->_classInstances setObject:v8 forKeyedSubscript:nameCopy];
  }

  v8 = [(NSMutableDictionary *)selfCopy->_classInstances objectForKeyedSubscript:nameCopy];
LABEL_5:
  objc_sync_exit(selfCopy);

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