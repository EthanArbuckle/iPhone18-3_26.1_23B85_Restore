@interface ATIDSSocket
- (ATIDSSocket)initWithDevice:(id)device service:(id)service priority:(int64_t)priority;
- (BOOL)open;
- (void)addTransportUpgradeException;
- (void)closeDescriptor;
- (void)connectWithCompletion:(id)completion;
- (void)dealloc;
- (void)removeTransportUpgradeException;
@end

@implementation ATIDSSocket

- (void)removeTransportUpgradeException
{
  v3.receiver = self;
  v3.super_class = ATIDSSocket;
  [(ATSocket *)&v3 removeTransportUpgradeException];
  if (![(ATSocket *)self transportUpdgradeExceptionCount])
  {
    [(ATIDSService *)self->_service setPreferWifi:0];
    [(ATSocket *)self setWriteBufferSize:self->_btWriteBufferSize];
  }
}

- (void)addTransportUpgradeException
{
  v3.receiver = self;
  v3.super_class = ATIDSSocket;
  [(ATSocket *)&v3 addTransportUpgradeException];
  if ([(ATSocket *)self transportUpdgradeExceptionCount]== 1)
  {
    [(ATIDSService *)self->_service setPreferWifi:1];
    [(ATSocket *)self setWriteBufferSize:self->_wifiWriteBufferSize];
  }
}

- (void)closeDescriptor
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_deviceConnection)
  {
    v3 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ closing IDS connection", &v5, 0xCu);
    }

    [(IDSDeviceConnection *)self->_deviceConnection close];
    [(ATSocket *)self setDescriptor:0];
    deviceConnection = self->_deviceConnection;
    self->_deviceConnection = 0;
  }
}

- (BOOL)open
{
  v3.receiver = self;
  v3.super_class = ATIDSSocket;
  return [(ATSocket *)&v3 open];
}

- (void)dealloc
{
  if ([(ATSocket *)self isOpen])
  {
    [(ATSocket *)self close];
  }

  v3.receiver = self;
  v3.super_class = ATIDSSocket;
  [(ATSocket *)&v3 dealloc];
}

- (void)connectWithCompletion:(id)completion
{
  v26[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277D18840];
  v26[0] = &unk_2836F5068;
  v6 = *MEMORY[0x277D18830];
  v25[0] = v5;
  v25[1] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATIDSSocket priority](self, "priority")}];
  v26[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v9 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IDSDevice *)self->_device uniqueID];
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = uniqueID;
    v23 = 2114;
    v24 = v8;
    _os_log_impl(&dword_223819000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ creating connection to %{public}@ with options=%{public}@", buf, 0x20u);
  }

  v11 = objc_alloc(MEMORY[0x277D186E8]);
  device = self->_device;
  v17 = MEMORY[0x277D85DD0];
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = [(ATSocket *)self queue:v17];
  v15 = [v11 initSocketWithDevice:device options:v8 completionHandler:&v17 queue:v14];
  deviceConnection = self->_deviceConnection;
  self->_deviceConnection = v15;
}

void __37__ATIDSSocket_connectWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(v7 + 65672) uniqueID];
    v11 = 138544130;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 1024;
    v16 = a2;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_223819000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ connection to %{public}@ completed. fd=%d, error=%{public}@", &v11, 0x26u);
  }

  v9 = *(a1 + 32);
  if (v5)
  {
    [v9 closeDescriptor];
  }

  else
  {
    [v9 setDescriptor:a2];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

- (ATIDSSocket)initWithDevice:(id)device service:(id)service priority:(int64_t)priority
{
  v27 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  serviceCopy = service;
  v20.receiver = self;
  v20.super_class = ATIDSSocket;
  v11 = [(ATSocket *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, device);
    v12->_priority = priority;
    objc_storeStrong(&v12->_service, service);
    v12->_wifiWriteBufferSize = 0x8000;
    v12->_btWriteBufferSize = 0x8000;
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IDSSocketWiFiWriteBufferSize", @"com.apple.atc", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat && AppIntegerValue)
    {
      v12->_wifiWriteBufferSize = AppIntegerValue << 10;
    }

    v14 = CFPreferencesGetAppIntegerValue(@"IDSSocketBTWriteBufferSize", @"com.apple.atc", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat && v14)
    {
      v12->_btWriteBufferSize = v14 << 10;
    }

    v15 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      wifiWriteBufferSize = v12->_wifiWriteBufferSize;
      btWriteBufferSize = v12->_btWriteBufferSize;
      *buf = 138543874;
      v22 = v12;
      v23 = 1024;
      v24 = wifiWriteBufferSize;
      v25 = 1024;
      v26 = btWriteBufferSize;
      _os_log_impl(&dword_223819000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ creating new IDS socket. _wifiWriteBufferSize=%uk, _btWriteBufferSize=%uk", buf, 0x18u);
    }

    [(ATSocket *)v12 setWriteBufferSize:v12->_btWriteBufferSize];
  }

  return v12;
}

@end