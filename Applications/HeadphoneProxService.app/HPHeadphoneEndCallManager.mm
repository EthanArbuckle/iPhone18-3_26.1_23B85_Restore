@interface HPHeadphoneEndCallManager
- (BOOL)isStatusUnknown;
- (HPHeadphoneEndCallManager)initWithBluetoothAddress:(id)address;
@end

@implementation HPHeadphoneEndCallManager

- (HPHeadphoneEndCallManager)initWithBluetoothAddress:(id)address
{
  v10.receiver = self;
  v10.super_class = HPHeadphoneEndCallManager;
  addressCopy = address;
  v4 = [(HPHeadphoneEndCallManager *)&v10 init];
  v5 = [addressCopy copy];

  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  if (dword_10011C420 <= 30 && (dword_10011C420 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF84C(v4 + 1);
  }

  v7 = +[BluetoothManager sharedInstance];
  v8 = *(v4 + 3);
  *(v4 + 3) = v7;

  return v4;
}

- (BOOL)isStatusUnknown
{
  [(BluetoothManager *)self->_btManager pairedDevices];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        address = [v8 address];
        v10 = [address isEqualToString:self->_bluetoothAddressString];

        if (v10)
        {
          objc_storeStrong(&self->_bluetoothDevice, v8);
          if (dword_10011C420 <= 30 && (dword_10011C420 != -1 || _LogCategory_Initialize()))
          {
            sub_1000CF890(&self->_bluetoothDevice);
          }

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  bluetoothDevice = self->_bluetoothDevice;
  p_bluetoothDevice = &self->_bluetoothDevice;
  getCallManagementConfig = [(BluetoothDevice *)bluetoothDevice getCallManagementConfig];
  if ([(BluetoothDevice *)*p_bluetoothDevice getAACPCapabilityBit:80])
  {
    v14 = getCallManagementConfig == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = (getCallManagementConfig & 0xFE00) == 0;
  }

  else
  {
    if (dword_10011C420 <= 30 && (dword_10011C420 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF8D4(p_bluetoothDevice);
    }

    v15 = 0;
  }

  return v15;
}

@end