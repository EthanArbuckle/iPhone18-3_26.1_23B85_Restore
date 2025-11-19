@interface InterfaceUtils
+ (id)stringForExtendedInterfaceType:(int64_t)a3;
+ (id)stringForInterfaceType:(int64_t)a3;
+ (int64_t)interfaceTypeForString:(id)a3;
+ (int64_t)nwInterfaceTypeForExtendedNWInterfaceType:(int64_t)a3;
@end

@implementation InterfaceUtils

+ (id)stringForInterfaceType:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"Other";
  }

  else
  {
    return off_278CEFE38[a3 - 1];
  }
}

+ (id)stringForExtendedInterfaceType:(int64_t)a3
{
  if ((a3 - 257) > 4)
  {
    return @"Other";
  }

  else
  {
    return off_278CEFE58[a3 - 257];
  }
}

+ (int64_t)interfaceTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"WiFi"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Cellular"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WiredEthernet"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Loopback"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)nwInterfaceTypeForExtendedNWInterfaceType:(int64_t)a3
{
  if (a3 == 257)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 258);
  }
}

@end