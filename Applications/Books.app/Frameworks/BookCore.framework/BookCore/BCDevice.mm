@interface BCDevice
+ (BOOL)isInternalInstall;
+ (int64_t)deviceClass;
@end

@implementation BCDevice

+ (BOOL)isInternalInstall
{
  if (qword_342820 != -1)
  {
    sub_1E90BC();
  }

  return byte_342818;
}

+ (int64_t)deviceClass
{
  if (qword_342830 != -1)
  {
    sub_1E90D0();
  }

  return qword_342828;
}

@end