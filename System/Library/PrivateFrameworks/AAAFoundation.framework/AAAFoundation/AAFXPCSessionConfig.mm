@interface AAFXPCSessionConfig
- (AAFXPCSessionConfig)initWithServiceName:(id)name remoteProtocol:(id)protocol exportedProtocol:(id)exportedProtocol options:(unint64_t)options;
- (AAFXPCSessionConfig)initWithServiceName:(id)name remoteProtocol:(id)protocol options:(unint64_t)options;
@end

@implementation AAFXPCSessionConfig

- (AAFXPCSessionConfig)initWithServiceName:(id)name remoteProtocol:(id)protocol options:(unint64_t)options
{
  nameCopy = name;
  protocolCopy = protocol;
  v14.receiver = self;
  v14.super_class = AAFXPCSessionConfig;
  v11 = [(AAFXPCSessionConfig *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceName, name);
    v12->_options = options;
    objc_storeStrong(&v12->_remoteProtocol, protocol);
  }

  return v12;
}

- (AAFXPCSessionConfig)initWithServiceName:(id)name remoteProtocol:(id)protocol exportedProtocol:(id)exportedProtocol options:(unint64_t)options
{
  exportedProtocolCopy = exportedProtocol;
  v12 = [(AAFXPCSessionConfig *)self initWithServiceName:name remoteProtocol:protocol options:options];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_exportedProtocol, exportedProtocol);
  }

  return v13;
}

@end