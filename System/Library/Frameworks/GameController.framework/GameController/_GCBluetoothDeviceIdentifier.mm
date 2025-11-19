@interface _GCBluetoothDeviceIdentifier
+ (id)identifierWithHardwareAddress:(id)a3;
+ (id)identifierWithHardwareAddressString:(id)a3;
- (_GCBluetoothDeviceIdentifier)init;
- (char)btAddress;
@end

@implementation _GCBluetoothDeviceIdentifier

- (_GCBluetoothDeviceIdentifier)init
{
  [(_GCBluetoothDeviceIdentifier *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)identifierWithHardwareAddress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length] == 6)
  {
    v6 = [a1 alloc];
    [v5 getBytes:v6 + 8 length:6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)identifierWithHardwareAddressString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@":-"];
    v6 = [v4 componentsSeparatedByCharactersInSet:v5];

    if ([v6 count] == 6)
    {
      v7 = 0;
      while (1)
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        v9 = [v8 length];

        if (v9 != 2)
        {
          break;
        }

        v10 = [v6 objectAtIndexedSubscript:v7];
        v11 = [v10 cStringUsingEncoding:1];

        v15[v7++] = strtol(v11, 0, 16);
        if (v7 == 6)
        {
          v12 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:6];
          v13 = [a1 identifierWithHardwareAddress:v12];

          goto LABEL_8;
        }
      }
    }

    v13 = 0;
LABEL_8:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (char)btAddress
{
  if (a1)
  {
    a1 = [MEMORY[0x1E695DEF0] dataWithBytes:a1 + 8 length:6];
    v1 = vars8;
  }

  return a1;
}

@end