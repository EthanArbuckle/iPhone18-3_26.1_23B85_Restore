@interface ARLogSession
@end

@implementation ARLogSession

void ___ARLogSession_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "Session");
  v1 = _ARLogSession_logObj;
  _ARLogSession_logObj = v0;
}

void ___ARLogSession_block_invoke_0()
{
  v0 = os_log_create("com.apple.ARKit", "Session");
  v1 = _ARLogSession_logObj_0;
  _ARLogSession_logObj_0 = v0;
}

void ___ARLogSession_block_invoke_1()
{
  v0 = os_log_create("com.apple.ARKit", "Session");
  v1 = _ARLogSession_logObj_1;
  _ARLogSession_logObj_1 = v0;
}

void ___ARLogSession_block_invoke_2()
{
  v0 = os_log_create("com.apple.ARKit", "Session");
  v1 = _ARLogSession_logObj_2;
  _ARLogSession_logObj_2 = v0;
}

@end