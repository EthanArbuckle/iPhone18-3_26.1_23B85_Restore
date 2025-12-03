@interface AADeviceModelHelper
+ (BOOL)isDeviceEqualTo:(id)to;
@end

@implementation AADeviceModelHelper

+ (BOOL)isDeviceEqualTo:(id)to
{
  toCopy = to;
  if (qword_2A1A10D00 != -1)
  {
    sub_29C85D294();
  }

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_29C85D2A8(v4);
  }

  isEqualToString = objc_msgSend_isEqualToString_(qword_2A1A10CF8, v5, toCopy);
  return isEqualToString;
}

@end