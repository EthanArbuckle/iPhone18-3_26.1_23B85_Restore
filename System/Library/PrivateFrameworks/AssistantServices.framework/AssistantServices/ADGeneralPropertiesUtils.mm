@interface ADGeneralPropertiesUtils
+ (int)SISchemaUTCOffsetFromTimeZoneOffset:(id)a3;
@end

@implementation ADGeneralPropertiesUtils

+ (int)SISchemaUTCOffsetFromTimeZoneOffset:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"-12:00"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"-11:00"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"-10:00"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"-09:30"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"-09:00"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"-08:00"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"-07:00"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"-06:00"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"-05:00"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"-04:00"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"-03:30"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"-03:00"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"-02:00"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"-01:00"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"+00:00"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"+01:00"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"+02:00"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"+03:00"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"+03:30"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"+04:00"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"+04:30"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"+05:00"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"+05:30"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"+05:45"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"+06:00"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"+06:30"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"+07:00"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"+08:00"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"+08:45"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"+09:00"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"+09:30"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"+10:00"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"+10:30"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"+11:00"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"+12:00"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"+12:45"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"+13:00"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"+14:00"])
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