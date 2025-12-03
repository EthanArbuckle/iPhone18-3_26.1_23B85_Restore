@interface NSString
- (BOOL)isValidIPv4AddressWithSubnetMask:(id)mask;
- (BOOL)isValidIPv6Address;
@end

@implementation NSString

- (BOOL)isValidIPv4AddressWithSubnetMask:(id)mask
{
  maskCopy = mask;
  if (-[NSString isValidIPv4Address](self, "isValidIPv4Address") && [maskCopy isValidSubnetMask])
  {
    if ([(NSString *)self hasPrefix:@"169.254."])
    {
      v5 = [maskCopy isEqualToString:@"255.255.0.0"] == 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isValidIPv6Address
{
  v3[0] = 0;
  v4 = 0;
  v3[1] = 0;
  if (inet_pton(30, [(NSString *)self cStringUsingEncoding:1, 0], v3) != 1 || LOBYTE(v3[0]) == 254 && (BYTE1(v3[0]) & 0xC0) == 0x80)
  {
    return 0;
  }

  result = 1;
  if ((BYTE1(v3[0]) & 0xF) == 2 && LOBYTE(v3[0]) == 255)
  {
    return (BYTE1(v3[0]) & 0xF0) == 48;
  }

  return result;
}

@end