@interface BLEMIDIAccessor
+ (BOOL)deviceIsLocalPeripheral:(unsigned int)peripheral;
+ (BOOL)deviceIsNullDevice:(unsigned int)device;
+ (BOOL)deviceIsOnline:(unsigned int)online;
+ (BOOL)deviceIsRemotePeripheral:(unsigned int)peripheral;
+ (BOOL)uuidIsForgettable:(id)forgettable;
+ (id)localPeripheralName;
+ (id)nameForMIDIDevice:(unsigned int)device;
+ (id)uuidForMIDIDevice:(unsigned int)device;
+ (unsigned)localPeripheral;
+ (unsigned)midiDeviceForUUID:(id)d;
+ (unsigned)midiDeviceForUUID:(id)d isLocalPeripheral:(BOOL)peripheral isRemotePeripheral:(BOOL)remotePeripheral;
+ (unsigned)nullDevice;
+ (void)logEvent:(char *)event length:(unsigned __int16)length timeStamp:(unint64_t)stamp intoBuffer:(char *)buffer;
@end

@implementation BLEMIDIAccessor

+ (void)logEvent:(char *)event length:(unsigned __int16)length timeStamp:(unint64_t)stamp intoBuffer:(char *)buffer
{
  lengthCopy = length;
  v9 = __udivti3();
  v10 = snprintf(buffer, 0x7D0uLL, "Timestamp: %10.10llu ms MIDI:", v9 / 0xF4240);
  v11 = v10;
  if (v10)
  {
    if (lengthCopy)
    {
      v12 = v10;
      v13 = 2000 - v10;
      v14 = lengthCopy;
      do
      {
        v15 = v13;
        if (v13 < 4u)
        {
          break;
        }

        v16 = snprintf(&buffer[v12], 2000 - v12, " %02.2X", *event);
        if (!v16)
        {
          break;
        }

        v12 += v16;
        v13 = v15 - v16;
        ++event;
        --v14;
      }

      while (v14);
      v11 = v12;
    }

    buffer[v11] = 0;
  }
}

+ (BOOL)uuidIsForgettable:(id)forgettable
{
  v3 = [BLEMIDIAccessor midiDeviceForUUID:forgettable isLocalPeripheral:0 isRemotePeripheral:1];
  if (v3)
  {
    LOBYTE(v3) = ![BLEMIDIAccessor deviceIsOnline:v3];
  }

  return v3;
}

+ (BOOL)deviceIsOnline:(unsigned int)online
{
  result = online;
  outValue = 0;
  if (online)
  {
    MIDIObjectGetIntegerProperty(online, kMIDIPropertyOffline, &outValue);
    return outValue == 0;
  }

  return result;
}

+ (BOOL)deviceIsNullDevice:(unsigned int)device
{
  result = device;
  outValue = 0;
  if (device)
  {
    MIDIObjectGetIntegerProperty(device, @"is BLE MIDI null device", &outValue);
    return outValue != 0;
  }

  return result;
}

+ (BOOL)deviceIsLocalPeripheral:(unsigned int)peripheral
{
  result = peripheral;
  outValue = 0;
  if (peripheral)
  {
    MIDIObjectGetIntegerProperty(peripheral, @"MIDI Local Peripheral", &outValue);
    return outValue != 0;
  }

  return result;
}

+ (BOOL)deviceIsRemotePeripheral:(unsigned int)peripheral
{
  result = peripheral;
  outValue = 0;
  if (peripheral)
  {
    MIDIObjectGetIntegerProperty(peripheral, @"MIDI Remote Peripheral", &outValue);
    return outValue != 0;
  }

  return result;
}

+ (id)nameForMIDIDevice:(unsigned int)device
{
  if (!device)
  {
    return 0;
  }

  str = 0;
  MIDIObjectGetStringProperty(device, kMIDIPropertyName, &str);
  if (!str)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithString:?];
  CFRelease(str);
  return v3;
}

+ (id)uuidForMIDIDevice:(unsigned int)device
{
  if (!device)
  {
    return 0;
  }

  str = 0;
  MIDIObjectGetStringProperty(device, @"BLE MIDI Device UUID", &str);
  if (!str)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithString:?];
  CFRelease(str);
  return v3;
}

+ (id)localPeripheralName
{
  v2 = +[BLEMIDIAccessor localPeripheral];
  v3 = @"Unknown";
  if (v2)
  {
    v4 = [BLEMIDIAccessor nameForMIDIDevice:v2];
    if (v4)
    {
      return v4;
    }
  }

  return v3;
}

+ (unsigned)localPeripheral
{
  v2 = MIDIGetNumberOfDevices();
  if (v2)
  {
    v3 = v2;
    for (i = 0; v3 != i; ++i)
    {
      v5 = MIDIGetDevice(i);
      if (v5)
      {
        v6 = v5;
        str = 0;
        MIDIObjectGetStringProperty(v5, kMIDIPropertyDriverOwner, &str);
        if (str)
        {
          if (CFEqual(str, @"com.apple.AppleMIDIBluetoothDriver"))
          {
            CFRelease(str);
            *outValue = 0;
            MIDIObjectGetIntegerProperty(v6, @"MIDI Local Peripheral", &outValue[1]);
            MIDIObjectGetIntegerProperty(v6, kMIDIPropertyOffline, outValue);
            if (outValue[1] && !outValue[0])
            {
              return v6;
            }
          }

          else if (str)
          {
            CFRelease(str);
          }
        }
      }
    }
  }

  return 0;
}

+ (unsigned)nullDevice
{
  v2 = MIDIGetNumberOfDevices();
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      v5 = MIDIGetDevice(i);
      if (v5)
      {
        v6 = v5;
        str = 0;
        MIDIObjectGetStringProperty(v5, kMIDIPropertyDriverOwner, &str);
        if (str)
        {
          if (CFEqual(str, @"com.apple.AppleMIDIBluetoothDriver"))
          {
            CFRelease(str);
            outValue = 0;
            MIDIObjectGetIntegerProperty(v6, @"is BLE MIDI null device", &outValue);
            if (outValue)
            {
              return v6;
            }
          }

          else if (str)
          {
            CFRelease(str);
          }
        }
      }
    }
  }

  return 0;
}

+ (unsigned)midiDeviceForUUID:(id)d isLocalPeripheral:(BOOL)peripheral isRemotePeripheral:(BOOL)remotePeripheral
{
  remotePeripheralCopy = remotePeripheral;
  peripheralCopy = peripheral;
  v7 = [BLEMIDIAccessor midiDeviceForUUID:d];
  if (!v7 || (v8 = v7, [BLEMIDIAccessor deviceIsLocalPeripheral:v7]!= peripheralCopy) || [BLEMIDIAccessor deviceIsRemotePeripheral:v8]!= remotePeripheralCopy)
  {
    LODWORD(v8) = 0;
  }

  return v8;
}

+ (unsigned)midiDeviceForUUID:(id)d
{
  v4 = MIDIGetNumberOfDevices();
  LODWORD(v5) = 0;
  if (d)
  {
    v6 = v4;
    if (v4)
    {
      v7 = 0;
      do
      {
        str = 0;
        v5 = MIDIGetDevice(v7);
        if (!MIDIObjectGetStringProperty(v5, kMIDIPropertyDriverOwner, &str) && str)
        {
          if (CFEqual(str, @"com.apple.AppleMIDIBluetoothDriver"))
          {
            v8 = [BLEMIDIAccessor uuidForMIDIDevice:v5];
            if (v8)
            {
              if ([v8 isEqualToString:d])
              {
                goto LABEL_13;
              }
            }
          }

          if (str)
          {
            CFRelease(str);
            str = 0;
          }
        }

        ++v7;
      }

      while (v6 != v7);
      LODWORD(v5) = 0;
LABEL_13:
      if (str)
      {
        CFRelease(str);
      }
    }
  }

  return v5;
}

@end