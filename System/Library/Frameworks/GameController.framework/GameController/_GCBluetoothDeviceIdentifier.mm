@interface _GCBluetoothDeviceIdentifier
+ (id)identifierWithHardwareAddress:(id)address;
+ (id)identifierWithHardwareAddressString:(id)string;
- (_GCBluetoothDeviceIdentifier)init;
- (char)btAddress;
@end

@implementation _GCBluetoothDeviceIdentifier

- (_GCBluetoothDeviceIdentifier)init
{
  [(_GCBluetoothDeviceIdentifier *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)identifierWithHardwareAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy && [addressCopy length] == 6)
  {
    v6 = [self alloc];
    [v5 getBytes:v6 + 8 length:6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)identifierWithHardwareAddressString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@":-"];
    v6 = [stringCopy componentsSeparatedByCharactersInSet:v5];

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
          v13 = [self identifierWithHardwareAddress:v12];

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
  if (self)
  {
    self = [MEMORY[0x1E695DEF0] dataWithBytes:self + 8 length:6];
    v1 = vars8;
  }

  return self;
}

@end