@interface IOHIDLogCategory
@end

@implementation IOHIDLogCategory

os_log_t ___IOHIDLogCategory_block_invoke()
{
  _IOHIDLogCategory_log[0] = os_log_create("com.apple.iohid", "default");
  qword_1ED446B58 = os_log_create("com.apple.iohid", "trace");
  qword_1ED446B60 = os_log_create("com.apple.iohid", "property");
  qword_1ED446B68 = os_log_create("com.apple.iohid", "activity");
  qword_1ED446B70 = os_log_create("com.apple.iohid", "fastpath");
  qword_1ED446B78 = os_log_create("com.apple.iohid", "userdevice");
  qword_1ED446B80 = os_log_create("com.apple.iohid", "service");
  qword_1ED446B88 = os_log_create("com.apple.iohid", "serviceplugin");
  qword_1ED446B90 = os_log_create("com.apple.iohid", "service.carplay");
  qword_1ED446B98 = os_log_create("com.apple.iohid", "connection");
  qword_1ED446BA0 = os_log_create("com.apple.iohid", "cursor");
  qword_1ED446BA8 = os_log_create("com.apple.iohid", "hidsignpost");
  qword_1ED446BB0 = os_log_create("com.apple.iohid", "ups");
  qword_1ED446BB8 = os_log_create("com.apple.iohid", "client");
  result = os_log_create("com.apple.iohid", "oversized");
  qword_1ED446BC0 = result;
  return result;
}

@end