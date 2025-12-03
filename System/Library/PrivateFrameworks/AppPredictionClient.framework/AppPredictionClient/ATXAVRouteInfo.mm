@interface ATXAVRouteInfo
- (ATXAVRouteInfo)initWithCoder:(id)coder;
- (ATXAVRouteInfo)initWithDeviceName:(id)name deviceID:(id)d isExternalRoute:(BOOL)route;
- (ATXAVRouteInfo)initWithProto:(id)proto;
- (ATXAVRouteInfo)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAVRouteInfo

- (ATXAVRouteInfo)initWithDeviceName:(id)name deviceID:(id)d isExternalRoute:(BOOL)route
{
  nameCopy = name;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ATXAVRouteInfo;
  v11 = [(ATXAVRouteInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deviceName, name);
    objc_storeStrong(&v12->_deviceID, d);
    v12->_isExternalRoute = route;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_deviceID forKey:@"deviceID"];
  [coderCopy encodeBool:self->_isExternalRoute forKey:@"isExternalRoute"];
}

- (ATXAVRouteInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
  v7 = [coderCopy decodeBoolForKey:@"isExternalRoute"];

  v8 = [(ATXAVRouteInfo *)self initWithDeviceName:v5 deviceID:v6 isExternalRoute:v7];
  return v8;
}

- (ATXAVRouteInfo)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBAVRouteInfo alloc] initWithData:dataCopy];

    self = [(ATXAVRouteInfo *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXAVRouteInfo *)self proto];
  data = [proto data];

  return data;
}

- (ATXAVRouteInfo)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXAVRouteInfo *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  deviceName = [v5 deviceName];
  deviceID = [v5 deviceID];
  isExternalRoute = [v5 isExternalRoute];

  self = [(ATXAVRouteInfo *)self initWithDeviceName:deviceName deviceID:deviceID isExternalRoute:isExternalRoute];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_alloc_init(ATXPBAVRouteInfo);
  [(ATXPBAVRouteInfo *)v3 setDeviceName:self->_deviceName];
  [(ATXPBAVRouteInfo *)v3 setDeviceID:self->_deviceID];
  [(ATXPBAVRouteInfo *)v3 setIsExternalRoute:self->_isExternalRoute];

  return v3;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBAVRouteInfo proto", &v5, 0xCu);
}

@end