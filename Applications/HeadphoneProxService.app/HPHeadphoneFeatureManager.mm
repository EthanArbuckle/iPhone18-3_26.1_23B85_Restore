@interface HPHeadphoneFeatureManager
- (HPHeadphoneFeatureManager)initWithBluetoothAddress:(id)address productID:(unsigned int)d;
- (id)getFeatureName:(int)name;
- (unsigned)getColorCode;
- (void)setAdaptiveControlsAdaptiveMode:(BOOL)mode;
- (void)setAdaptiveControlsConfigDisabled;
- (void)setAdaptiveControlsConfigEnabled;
- (void)setAdaptiveControlsConversationAwareness:(BOOL)awareness;
- (void)setAdaptiveControlsPersonalizedVolume:(BOOL)volume;
- (void)setAdaptiveControlsStatus;
- (void)setMuteCallConfig;
- (void)setMuteCallStatus;
- (void)setUpBTDevice;
@end

@implementation HPHeadphoneFeatureManager

- (HPHeadphoneFeatureManager)initWithBluetoothAddress:(id)address productID:(unsigned int)d
{
  v12.receiver = self;
  v12.super_class = HPHeadphoneFeatureManager;
  addressCopy = address;
  v6 = [(HPHeadphoneFeatureManager *)&v12 init];
  v7 = [addressCopy copy];

  v8 = *(v6 + 2);
  *(v6 + 2) = v7;

  *(v6 + 2) = d;
  if (dword_10011C2C0 <= 30 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF4A0(v6 + 2);
  }

  v9 = +[BluetoothManager sharedInstance];
  v10 = *(v6 + 4);
  *(v6 + 4) = v9;

  return v6;
}

- (id)getFeatureName:(int)name
{
  v3 = @"Unknown";
  if (name == 1)
  {
    v3 = @"Adaptive Controls";
  }

  if (name)
  {
    return v3;
  }

  else
  {
    return @"Mute Call";
  }
}

- (void)setMuteCallConfig
{
  if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF524();
  }

  v3 = [(BluetoothDevice *)self->_bluetoothDevice getCallManagementConfig]& 0xFFFFFF | 0x2020302000000;
  bluetoothDevice = self->_bluetoothDevice;

  [(BluetoothDevice *)bluetoothDevice setCallConfig:v3];
}

- (void)setMuteCallStatus
{
  if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF540();
  }

  v3 = [(BluetoothDevice *)self->_bluetoothDevice getCallManagementConfig]& 0xFF00FF00FFFFFFLL | 0x20002000000;
  bluetoothDevice = self->_bluetoothDevice;

  [(BluetoothDevice *)bluetoothDevice setCallConfig:v3];
}

- (unsigned)getColorCode
{
  v3 = 1;
  [(BluetoothDevice *)self->_bluetoothDevice getDeviceColor:&v3];
  return v3;
}

- (void)setAdaptiveControlsConfigEnabled
{
  if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF55C();
  }

  [(BluetoothDevice *)self->_bluetoothDevice setListeningMode:4];
  [(BluetoothDevice *)self->_bluetoothDevice setListeningModeConfigs:10];
  [(BluetoothDevice *)self->_bluetoothDevice setAdaptiveVolumeMode:1];
  bluetoothDevice = self->_bluetoothDevice;

  [(BluetoothDevice *)bluetoothDevice setConversationDetectMode:1];
}

- (void)setAdaptiveControlsConfigDisabled
{
  if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF578();
  }

  [(BluetoothDevice *)self->_bluetoothDevice setAdaptiveVolumeMode:2];
  bluetoothDevice = self->_bluetoothDevice;

  [(BluetoothDevice *)bluetoothDevice setConversationDetectMode:2];
}

- (void)setAdaptiveControlsStatus
{
  if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF594();
  }

  bluetoothDevice = self->_bluetoothDevice;

  [(BluetoothDevice *)bluetoothDevice setProxCardShowedForFeature:2 showed:1];
}

- (void)setAdaptiveControlsAdaptiveMode:(BOOL)mode
{
  modeCopy = mode;
  if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF5B0();
    if (!modeCopy)
    {
      return;
    }
  }

  else if (!modeCopy)
  {
    return;
  }

  [(BluetoothDevice *)self->_bluetoothDevice setListeningMode:4];
  bluetoothDevice = self->_bluetoothDevice;

  [(BluetoothDevice *)bluetoothDevice setListeningModeConfigs:10];
}

- (void)setAdaptiveControlsPersonalizedVolume:(BOOL)volume
{
  volumeCopy = volume;
  if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF600();
  }

  bluetoothDevice = self->_bluetoothDevice;
  if (!bluetoothDevice)
  {
    [(HPHeadphoneFeatureManager *)self setUpBTDevice];
    bluetoothDevice = self->_bluetoothDevice;
  }

  if (volumeCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(BluetoothDevice *)bluetoothDevice setAdaptiveVolumeMode:v6];
}

- (void)setAdaptiveControlsConversationAwareness:(BOOL)awareness
{
  awarenessCopy = awareness;
  if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF650();
  }

  bluetoothDevice = self->_bluetoothDevice;
  if (!bluetoothDevice)
  {
    [(HPHeadphoneFeatureManager *)self setUpBTDevice];
    bluetoothDevice = self->_bluetoothDevice;
  }

  if (awarenessCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(BluetoothDevice *)bluetoothDevice setConversationDetectMode:v6];
}

- (void)setUpBTDevice
{
  [(BluetoothManager *)self->_btManager pairedDevices];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        address = [v8 address];
        v10 = [address isEqualToString:self->_bluetoothAddressString];

        if (v10)
        {
          objc_storeStrong(&self->_bluetoothDevice, v8);
          if (dword_10011C2C0 <= 50 && (dword_10011C2C0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000CF6A0(&self->_bluetoothDevice);
          }

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

@end