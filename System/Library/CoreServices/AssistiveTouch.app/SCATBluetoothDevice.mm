@interface SCATBluetoothDevice
+ (id)scatBluetoothDeviceWithDevice:(BTDeviceImpl *)device accessoryManager:(BTAccessoryManagerImpl *)manager;
- (BOOL)_setPropertiesFromDevice:(BTDeviceImpl *)device error:(id *)error;
- (SCATBluetoothDevice)initWithDevice:(BTDeviceImpl *)device;
- (id)description;
@end

@implementation SCATBluetoothDevice

+ (id)scatBluetoothDeviceWithDevice:(BTDeviceImpl *)device accessoryManager:(BTAccessoryManagerImpl *)manager
{
  memset(v27, 0, sizeof(v27));
  AddressString = BTDeviceGetAddressString();
  if (AddressString)
  {
    v6 = AddressString;
    v7 = SWCHLogHW();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012A0BC(v6, v7);
    }

LABEL_7:

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (BTDeviceGetDeviceId())
  {
    v7 = SWCHLogHW();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012A134();
    }

    goto LABEL_7;
  }

  ConnectedServices = BTDeviceGetConnectedServices();
  v11 = SWCHLogHW();
  v12 = v11;
  if (ConnectedServices)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10012A19C();
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316674;
    v14 = v27;
    v15 = 1024;
    v16 = 0;
    v17 = 1024;
    v18 = 0;
    v19 = 1024;
    v20 = 0;
    v21 = 1024;
    v22 = 0;
    v23 = 1024;
    v24 = 0;
    v25 = 1024;
    v26 = 0;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Creating SCATBluetooth device for device with address %s source %x vendor %x pid %x version %x services %x switchsupport %d", buf, 0x30u);
  }

  v8 = [objc_alloc(objc_opt_class()) initWithDevice:device];
LABEL_9:

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  if (self->_connected)
  {
    v4 = @"connected";
  }

  else
  {
    v4 = @"not connected";
  }

  return [NSString stringWithFormat:@"<%@@%p: %@ (%@, %@)>", v3, self, self->_name, self->_addressString, v4];
}

- (BOOL)_setPropertiesFromDevice:(BTDeviceImpl *)device error:(id *)error
{
  memset(v15, 0, sizeof(v15));
  AddressString = BTDeviceGetAddressString();
  if (AddressString)
  {
    if (error)
    {
LABEL_3:
      v7 = [NSError errorWithDomain:off_100216830 code:AddressString userInfo:0];
      v8 = 0;
LABEL_4:
      *error = v7;
      return v8;
    }

    return 0;
  }

  v9 = [NSString stringWithUTF8String:v15];
  v10 = self->_addressString;
  self->_addressString = v9;

  AddressString = BTDeviceGetName();
  if (AddressString)
  {
    if (error)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v12 = [NSString stringWithUTF8String:v15];
  name = self->_name;
  self->_name = v12;

  ConnectedServices = BTDeviceGetConnectedServices();
  v8 = ConnectedServices == 0;
  if (!ConnectedServices)
  {
    self->_connected = 0;
    return v8;
  }

  if (error)
  {
    v7 = [NSError errorWithDomain:off_100216830 code:ConnectedServices userInfo:0];
    goto LABEL_4;
  }

  return v8;
}

- (SCATBluetoothDevice)initWithDevice:(BTDeviceImpl *)device
{
  v9.receiver = self;
  v9.super_class = SCATBluetoothDevice;
  v4 = [(SCATBluetoothDevice *)&v9 init];
  v5 = v4;
  if (!v4 || (v6 = [(SCATBluetoothDevice *)v4 _setPropertiesFromDevice:device error:0], v7 = 0, v6))
  {
    v7 = v5;
  }

  return v7;
}

@end