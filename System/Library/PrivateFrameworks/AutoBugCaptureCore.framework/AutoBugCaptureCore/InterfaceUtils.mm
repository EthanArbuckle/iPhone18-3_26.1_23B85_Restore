@interface InterfaceUtils
+ (id)stringForExtendedInterfaceType:(int64_t)type;
+ (id)stringForInterfaceType:(int64_t)type;
+ (int64_t)interfaceTypeForString:(id)string;
+ (int64_t)nwInterfaceTypeForExtendedNWInterfaceType:(int64_t)type;
@end

@implementation InterfaceUtils

+ (id)stringForInterfaceType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"Other";
  }

  else
  {
    return off_278CEFE38[type - 1];
  }
}

+ (id)stringForExtendedInterfaceType:(int64_t)type
{
  if ((type - 257) > 4)
  {
    return @"Other";
  }

  else
  {
    return off_278CEFE58[type - 257];
  }
}

+ (int64_t)interfaceTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"WiFi"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Cellular"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"WiredEthernet"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Loopback"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)nwInterfaceTypeForExtendedNWInterfaceType:(int64_t)type
{
  if (type == 257)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 258);
  }
}

@end