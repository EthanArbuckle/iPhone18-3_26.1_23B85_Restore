@interface ADGeneralPropertiesUtils
+ (int)SISchemaUTCOffsetFromTimeZoneOffset:(id)offset;
@end

@implementation ADGeneralPropertiesUtils

+ (int)SISchemaUTCOffsetFromTimeZoneOffset:(id)offset
{
  offsetCopy = offset;
  if ([offsetCopy isEqualToString:@"-12:00"])
  {
    v4 = 1;
  }

  else if ([offsetCopy isEqualToString:@"-11:00"])
  {
    v4 = 2;
  }

  else if ([offsetCopy isEqualToString:@"-10:00"])
  {
    v4 = 3;
  }

  else if ([offsetCopy isEqualToString:@"-09:30"])
  {
    v4 = 4;
  }

  else if ([offsetCopy isEqualToString:@"-09:00"])
  {
    v4 = 5;
  }

  else if ([offsetCopy isEqualToString:@"-08:00"])
  {
    v4 = 6;
  }

  else if ([offsetCopy isEqualToString:@"-07:00"])
  {
    v4 = 7;
  }

  else if ([offsetCopy isEqualToString:@"-06:00"])
  {
    v4 = 8;
  }

  else if ([offsetCopy isEqualToString:@"-05:00"])
  {
    v4 = 9;
  }

  else if ([offsetCopy isEqualToString:@"-04:00"])
  {
    v4 = 10;
  }

  else if ([offsetCopy isEqualToString:@"-03:30"])
  {
    v4 = 11;
  }

  else if ([offsetCopy isEqualToString:@"-03:00"])
  {
    v4 = 12;
  }

  else if ([offsetCopy isEqualToString:@"-02:00"])
  {
    v4 = 13;
  }

  else if ([offsetCopy isEqualToString:@"-01:00"])
  {
    v4 = 14;
  }

  else if ([offsetCopy isEqualToString:@"+00:00"])
  {
    v4 = 15;
  }

  else if ([offsetCopy isEqualToString:@"+01:00"])
  {
    v4 = 16;
  }

  else if ([offsetCopy isEqualToString:@"+02:00"])
  {
    v4 = 17;
  }

  else if ([offsetCopy isEqualToString:@"+03:00"])
  {
    v4 = 18;
  }

  else if ([offsetCopy isEqualToString:@"+03:30"])
  {
    v4 = 19;
  }

  else if ([offsetCopy isEqualToString:@"+04:00"])
  {
    v4 = 20;
  }

  else if ([offsetCopy isEqualToString:@"+04:30"])
  {
    v4 = 21;
  }

  else if ([offsetCopy isEqualToString:@"+05:00"])
  {
    v4 = 22;
  }

  else if ([offsetCopy isEqualToString:@"+05:30"])
  {
    v4 = 23;
  }

  else if ([offsetCopy isEqualToString:@"+05:45"])
  {
    v4 = 24;
  }

  else if ([offsetCopy isEqualToString:@"+06:00"])
  {
    v4 = 25;
  }

  else if ([offsetCopy isEqualToString:@"+06:30"])
  {
    v4 = 26;
  }

  else if ([offsetCopy isEqualToString:@"+07:00"])
  {
    v4 = 27;
  }

  else if ([offsetCopy isEqualToString:@"+08:00"])
  {
    v4 = 28;
  }

  else if ([offsetCopy isEqualToString:@"+08:45"])
  {
    v4 = 29;
  }

  else if ([offsetCopy isEqualToString:@"+09:00"])
  {
    v4 = 30;
  }

  else if ([offsetCopy isEqualToString:@"+09:30"])
  {
    v4 = 31;
  }

  else if ([offsetCopy isEqualToString:@"+10:00"])
  {
    v4 = 32;
  }

  else if ([offsetCopy isEqualToString:@"+10:30"])
  {
    v4 = 33;
  }

  else if ([offsetCopy isEqualToString:@"+11:00"])
  {
    v4 = 34;
  }

  else if ([offsetCopy isEqualToString:@"+12:00"])
  {
    v4 = 35;
  }

  else if ([offsetCopy isEqualToString:@"+12:45"])
  {
    v4 = 36;
  }

  else if ([offsetCopy isEqualToString:@"+13:00"])
  {
    v4 = 37;
  }

  else if ([offsetCopy isEqualToString:@"+14:00"])
  {
    v4 = 38;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end