@interface _GCHapticLogicalDevice
- (_GCHapticLogicalDevice)initWithIdentifier:(id)a3 clientConnection:(id)a4;
- (void)stopAllHaptics;
@end

@implementation _GCHapticLogicalDevice

- (_GCHapticLogicalDevice)initWithIdentifier:(id)a3 clientConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = _GCHapticLogicalDevice;
  v9 = [(_GCHapticLogicalDevice *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = [MEMORY[0x1E695DF70] array];
    hapticClients = v10->_hapticClients;
    v10->_hapticClients = v11;

    v13 = [MEMORY[0x1E695DF70] array];
    hapticPlayers = v10->_hapticPlayers;
    v10->_hapticPlayers = v13;

    objc_storeStrong(&v10->_clientConnection, a4);
    if (([v8 isMockClient] & 1) == 0)
    {
      v15 = +[_GCControllerManagerServer sharedInstance];
      v16 = [v15 logicalDevices];
      v17 = [v16 objectForKey:v10->_identifier];
      if ([v17 conformsToProtocol:&unk_1F4E9B138])
      {
        v18 = v17;
        v19 = [v18 hapticDriver];
        driver = v10->_driver;
        v10->_driver = v19;
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
    v3 = *(a1 + 16);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Stop all haptics for %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end