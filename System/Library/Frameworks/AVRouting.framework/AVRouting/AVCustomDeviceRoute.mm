@interface AVCustomDeviceRoute
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)dealloc;
- (void)setDevice:(id)device;
@end

@implementation AVCustomDeviceRoute

- (void)dealloc
{
  self->_device = 0;
  networkEndpoint = self->_networkEndpoint;
  if (networkEndpoint)
  {
    nw_release(networkEndpoint);
    self->_networkEndpoint = 0;
  }

  self->_bluetoothIdentifier = 0;
  v4.receiver = self;
  v4.super_class = AVCustomDeviceRoute;
  [(AVCustomDeviceRoute *)&v4 dealloc];
}

- (void)setDevice:(id)device
{
  v18 = *MEMORY[0x1E69E9840];

  self->_device = device;
  networkEndpoint = self->_networkEndpoint;
  if (networkEndpoint)
  {
    nw_release(networkEndpoint);
  }

  if ([device networkEndpoint])
  {
    self->_networkEndpoint = nw_retain([device networkEndpoint]);
  }

  self->_bluetoothIdentifier = [device bluetoothIdentifier];
  v6 = _AVRoutingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_networkEndpoint;
    bluetoothIdentifier = self->_bluetoothIdentifier;
    v10 = 136315906;
    v11 = "[AVCustomDeviceRoute setDevice:]";
    v12 = 2112;
    deviceCopy = device;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = bluetoothIdentifier;
    _os_log_impl(&dword_1AB586000, v6, OS_LOG_TYPE_DEFAULT, "%s AVVSR.device = %@, networkEndpoint = %@, bluetoothIdentifier = %@", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  identifier = [(DADevice *)self->_device identifier];
  v6 = [objc_msgSend(equal "device")];

  return [identifier isEqualToString:v6];
}

- (unint64_t)hash
{
  identifier = [(DADevice *)self->_device identifier];

  return [identifier hash];
}

@end