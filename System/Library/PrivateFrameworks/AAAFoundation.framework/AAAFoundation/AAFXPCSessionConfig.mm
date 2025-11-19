@interface AAFXPCSessionConfig
- (AAFXPCSessionConfig)initWithServiceName:(id)a3 remoteProtocol:(id)a4 exportedProtocol:(id)a5 options:(unint64_t)a6;
- (AAFXPCSessionConfig)initWithServiceName:(id)a3 remoteProtocol:(id)a4 options:(unint64_t)a5;
@end

@implementation AAFXPCSessionConfig

- (AAFXPCSessionConfig)initWithServiceName:(id)a3 remoteProtocol:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AAFXPCSessionConfig;
  v11 = [(AAFXPCSessionConfig *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceName, a3);
    v12->_options = a5;
    objc_storeStrong(&v12->_remoteProtocol, a4);
  }

  return v12;
}

- (AAFXPCSessionConfig)initWithServiceName:(id)a3 remoteProtocol:(id)a4 exportedProtocol:(id)a5 options:(unint64_t)a6
{
  v11 = a5;
  v12 = [(AAFXPCSessionConfig *)self initWithServiceName:a3 remoteProtocol:a4 options:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_exportedProtocol, a5);
  }

  return v13;
}

@end