@interface AVCustomDeviceRoute
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setDevice:(id)a3;
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

- (void)setDevice:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];

  self->_device = a3;
  networkEndpoint = self->_networkEndpoint;
  if (networkEndpoint)
  {
    nw_release(networkEndpoint);
  }

  if ([a3 networkEndpoint])
  {
    self->_networkEndpoint = nw_retain([a3 networkEndpoint]);
  }

  self->_bluetoothIdentifier = [a3 bluetoothIdentifier];
  v6 = _AVRoutingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_networkEndpoint;
    bluetoothIdentifier = self->_bluetoothIdentifier;
    v10 = 136315906;
    v11 = "[AVCustomDeviceRoute setDevice:]";
    v12 = 2112;
    v13 = a3;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = bluetoothIdentifier;
    _os_log_impl(&dword_1AB586000, v6, OS_LOG_TYPE_DEFAULT, "%s AVVSR.device = %@, networkEndpoint = %@, bluetoothIdentifier = %@", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(DADevice *)self->_device identifier];
  v6 = [objc_msgSend(a3 "device")];

  return [v5 isEqualToString:v6];
}

- (unint64_t)hash
{
  v2 = [(DADevice *)self->_device identifier];

  return [v2 hash];
}

@end