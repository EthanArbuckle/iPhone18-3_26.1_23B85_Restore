@interface GCController(BluetoothSettings)
@end

@implementation GCController(BluetoothSettings)

+ (void)_settingsSupportedForBTClassicDevice:()BluetoothSettings settingsStore:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_ERROR, "[GCController doesBTDeviceSupportGamepadSettings:] received invalid BT address data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end