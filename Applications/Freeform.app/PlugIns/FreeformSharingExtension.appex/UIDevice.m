@interface UIDevice
+ (BOOL)crl_iPadDevice;
+ (BOOL)crl_iPodTouchDevice;
+ (BOOL)crl_landscapePhoneUI;
+ (BOOL)crl_padUI;
+ (BOOL)crl_phoneDevice;
+ (BOOL)crl_phoneUI;
+ (BOOL)crl_visionUI;
+ (id)crl_platformString;
@end

@implementation UIDevice

+ (id)crl_platformString
{
  if (qword_1000B4B88 != -1)
  {
    sub_10007CD60();
  }

  v3 = qword_1000B4B80;

  return v3;
}

+ (BOOL)crl_phoneUI
{
  if ((byte_1000B4B90 & 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    qword_1000B4B98 = [v2 userInterfaceIdiom];

    byte_1000B4B90 = 1;
  }

  return qword_1000B4B98 == 0;
}

+ (BOOL)crl_padUI
{
  if ((byte_1000B4B90 & 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    qword_1000B4B98 = [v2 userInterfaceIdiom];

    byte_1000B4B90 = 1;
  }

  return qword_1000B4B98 == 1;
}

+ (BOOL)crl_visionUI
{
  if ((byte_1000B4B90 & 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    qword_1000B4B98 = [v2 userInterfaceIdiom];

    byte_1000B4B90 = 1;
  }

  return qword_1000B4B98 == 6;
}

+ (BOOL)crl_phoneDevice
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 model];
  v4 = [v3 hasPrefix:@"iPhone"];

  return v4;
}

+ (BOOL)crl_iPodTouchDevice
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 model];
  v4 = [v3 hasPrefix:@"iPod touch"];

  return v4;
}

+ (BOOL)crl_iPadDevice
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 model];
  v4 = [v3 hasPrefix:@"iPad"];

  return v4;
}

+ (BOOL)crl_landscapePhoneUI
{
  v2 = +[UIDevice crl_phoneUI];
  if (v2)
  {

    LOBYTE(v2) = +[UIScreen crl_deviceIsLandscape];
  }

  return v2;
}

@end