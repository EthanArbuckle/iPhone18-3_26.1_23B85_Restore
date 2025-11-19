@interface ANEServicesLog
+ (id)handle;
+ (id)services;
+ (id)test;
+ (id)verbose;
@end

@implementation ANEServicesLog

+ (id)handle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__ANEServicesLog_handle__block_invoke;
  block[3] = &unk_1E81172E0;
  block[4] = a1;
  if (+[ANEServicesLog handle]::onceToken != -1)
  {
    dispatch_once(&+[ANEServicesLog handle]::onceToken, block);
  }

  return +[ANEServicesLog handle]::_handle;
}

uint64_t __24__ANEServicesLog_handle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) services];
  +[ANEServicesLog handle]::_handle = result;
  return result;
}

+ (id)services
{
  if (+[ANEServicesLog services]::onceToken != -1)
  {
    +[ANEServicesLog services];
  }

  return +[ANEServicesLog services]::_services;
}

os_log_t __26__ANEServicesLog_services__block_invoke()
{
  result = os_log_create("com.apple.ane", "aneservices");
  +[ANEServicesLog services]::_services = result;
  return result;
}

+ (id)verbose
{
  if (+[ANEServicesLog verbose]::onceToken != -1)
  {
    +[ANEServicesLog verbose];
  }

  return +[ANEServicesLog verbose]::_verbose;
}

os_log_t __25__ANEServicesLog_verbose__block_invoke()
{
  result = os_log_create("com.apple.ane", "aneverbose");
  +[ANEServicesLog verbose]::_verbose = result;
  return result;
}

+ (id)test
{
  if (+[ANEServicesLog test]::onceToken != -1)
  {
    +[ANEServicesLog test];
  }

  return +[ANEServicesLog test]::_test;
}

os_log_t __22__ANEServicesLog_test__block_invoke()
{
  result = os_log_create("com.apple.ane", "anetest");
  +[ANEServicesLog test]::_test = result;
  return result;
}

@end