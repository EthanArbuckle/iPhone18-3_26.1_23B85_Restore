@interface _GCHapticLogicalDevice
- (_GCHapticLogicalDevice)initWithIdentifier:(id)identifier clientConnection:(id)connection;
- (void)stopAllHaptics;
@end

@implementation _GCHapticLogicalDevice

- (_GCHapticLogicalDevice)initWithIdentifier:(id)identifier clientConnection:(id)connection
{
  identifierCopy = identifier;
  connectionCopy = connection;
  v23.receiver = self;
  v23.super_class = _GCHapticLogicalDevice;
  v9 = [(_GCHapticLogicalDevice *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    array = [MEMORY[0x1E695DF70] array];
    hapticClients = v10->_hapticClients;
    v10->_hapticClients = array;

    array2 = [MEMORY[0x1E695DF70] array];
    hapticPlayers = v10->_hapticPlayers;
    v10->_hapticPlayers = array2;

    objc_storeStrong(&v10->_clientConnection, connection);
    if (([connectionCopy isMockClient] & 1) == 0)
    {
      v15 = +[_GCControllerManagerServer sharedInstance];
      logicalDevices = [v15 logicalDevices];
      v17 = [logicalDevices objectForKey:v10->_identifier];
      if ([v17 conformsToProtocol:&unk_1F4E9B138])
      {
        v18 = v17;
        hapticDriver = [v18 hapticDriver];
        driver = v10->_driver;
        v10->_driver = hapticDriver;
      }

      logicalDevice = v10->_logicalDevice;
      v10->_logicalDevice = v17;
    }
  }

  return v10;
}

- (void)stopAllHaptics
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = getGCHapticsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(self + 16);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Stop all haptics for %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end