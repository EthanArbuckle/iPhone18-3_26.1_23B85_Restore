@interface BLEMIDIAccessor
+ (BOOL)deviceIsLocalPeripheral:(unsigned int)a3;
+ (BOOL)deviceIsNullDevice:(unsigned int)a3;
+ (BOOL)deviceIsOnline:(unsigned int)a3;
+ (BOOL)deviceIsRemotePeripheral:(unsigned int)a3;
+ (BOOL)uuidIsForgettable:(id)a3;
+ (id)localPeripheralName;
+ (id)nameForMIDIDevice:(unsigned int)a3;
+ (id)uuidForMIDIDevice:(unsigned int)a3;
+ (unsigned)localPeripheral;
+ (unsigned)midiDeviceForUUID:(id)a3;
+ (unsigned)midiDeviceForUUID:(id)a3 isLocalPeripheral:(BOOL)a4 isRemotePeripheral:(BOOL)a5;
+ (unsigned)nullDevice;
+ (void)logEvent:(char *)a3 length:(unsigned __int16)a4 timeStamp:(unint64_t)a5 intoBuffer:(char *)a6;
@end

@implementation BLEMIDIAccessor

+ (void)logEvent:(char *)a3 length:(unsigned __int16)a4 timeStamp:(unint64_t)a5 intoBuffer:(char *)a6
{
  v7 = a4;
  v9 = __udivti3();
  v10 = snprintf(a6, 0x7D0uLL, "Timestamp: %10.10llu ms MIDI:", v9 / 0xF4240);
  v11 = v10;
  if (v10)
  {
    if (v7)
    {
      v12 = v10;
      v13 = 2000 - v10;
      v14 = v7;
      do
      {
        v15 = v13;
        if (v13 < 4u)
        {
          break;
        }

        v16 = snprintf(&a6[v12], 2000 - v12, " %02.2X", *a3);
        if (!v16)
        {
          break;
        }

        v12 += v16;
        v13 = v15 - v16;
        ++a3;
        --v14;
      }

      while (v14);
      v11 = v12;
    }

    a6[v11] = 0;
  }
}

+ (BOOL)uuidIsForgettable:(id)a3
{
  v3 = [BLEMIDIAccessor midiDeviceForUUID:a3 isLocalPeripheral:0 isRemotePeripheral:1];
  if (v3)
  {
    LOBYTE(v3) = ![BLEMIDIAccessor deviceIsOnline:v3];
  }

  return v3;
}

+ (BOOL)deviceIsOnline:(unsigned int)a3
{
  result = a3;
  outValue = 0;
  if (a3)
  {
    MIDIObjectGetIntegerProperty(a3, kMIDIPropertyOffline, &outValue);
    return outValue == 0;
  }

  return result;
}

+ (BOOL)deviceIsNullDevice:(unsigned int)a3
{
  result = a3;
  outValue = 0;
  if (a3)
  {
    MIDIObjectGetIntegerProperty(a3, @"is BLE MIDI null device", &outValue);
    return outValue != 0;
  }

  return result;
}

+ (BOOL)deviceIsLocalPeripheral:(unsigned int)a3
{
  result = a3;
  outValue = 0;
  if (a3)
  {
    MIDIObjectGetIntegerProperty(a3, @"MIDI Local Peripheral", &outValue);
    return outValue != 0;
  }

  return result;
}

+ (BOOL)deviceIsRemotePeripheral:(unsigned int)a3
{
  result = a3;
  outValue = 0;
  if (a3)
  {
    MIDIObjectGetIntegerProperty(a3, @"MIDI Remote Peripheral", &outValue);
    return outValue != 0;
  }

  return result;
}

+ (id)nameForMIDIDevice:(unsigned int)a3
{
  if (!a3)
  {
    return 0;
  }

  str = 0;
  MIDIObjectGetStringProperty(a3, kMIDIPropertyName, &str);
  if (!str)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithString:?];
  CFRelease(str);
  return v3;
}

+ (id)uuidForMIDIDevice:(unsigned int)a3
{
  if (!a3)
  {
    return 0;
  }

  str = 0;
  MIDIObjectGetStringProperty(a3, @"BLE MIDI Device UUID", &str);
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

+ (unsigned)midiDeviceForUUID:(id)a3 isLocalPeripheral:(BOOL)a4 isRemotePeripheral:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = [BLEMIDIAccessor midiDeviceForUUID:a3];
  if (!v7 || (v8 = v7, [BLEMIDIAccessor deviceIsLocalPeripheral:v7]!= v6) || [BLEMIDIAccessor deviceIsRemotePeripheral:v8]!= v5)
  {
    LODWORD(v8) = 0;
  }

  return v8;
}

+ (unsigned)midiDeviceForUUID:(id)a3
{
  v4 = MIDIGetNumberOfDevices();
  LODWORD(v5) = 0;
  if (a3)
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
              if ([v8 isEqualToString:a3])
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