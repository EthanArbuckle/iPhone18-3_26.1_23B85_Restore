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

+ (BOOL)crl_phoneDevice
{
  v2 = +[UIDevice currentDevice];
  model = [v2 model];
  v4 = [model hasPrefix:@"iPhone"];

  return v4;
}

+ (id)crl_platformString
{
  if (qword_101A347C0 != -1)
  {
    sub_100011004();
  }

  v3 = qword_101A347B8;

  return v3;
}

+ (BOOL)crl_visionUI
{
  if ((byte_101A347C8 & 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    qword_101A347D0 = [v2 userInterfaceIdiom];

    byte_101A347C8 = 1;
  }

  return qword_101A347D0 == 6;
}

+ (BOOL)crl_phoneUI
{
  if ((byte_101A347C8 & 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    qword_101A347D0 = [v2 userInterfaceIdiom];

    byte_101A347C8 = 1;
  }

  return qword_101A347D0 == 0;
}

+ (BOOL)crl_padUI
{
  if ((byte_101A347C8 & 1) == 0)
  {
    v2 = +[UIDevice currentDevice];
    qword_101A347D0 = [v2 userInterfaceIdiom];

    byte_101A347C8 = 1;
  }

  return qword_101A347D0 == 1;
}

+ (BOOL)crl_iPodTouchDevice
{
  v2 = +[UIDevice currentDevice];
  model = [v2 model];
  v4 = [model hasPrefix:@"iPod touch"];

  return v4;
}

+ (BOOL)crl_iPadDevice
{
  v2 = +[UIDevice currentDevice];
  model = [v2 model];
  v4 = [model hasPrefix:@"iPad"];

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