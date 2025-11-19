@interface ARLogGeneral
@end

@implementation ARLogGeneral

uint64_t ___ARLogGeneral_block_invoke()
{
  _ARLogGeneral_logObj = os_log_create("com.apple.ARKit", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogGeneral_block_invoke_0()
{
  _ARLogGeneral_logObj_0 = os_log_create("com.apple.ARKit", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogGeneral_block_invoke_1()
{
  _ARLogGeneral_logObj_1 = os_log_create("com.apple.ARKit", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogGeneral_block_invoke_2()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral_logObj_2;
  _ARLogGeneral_logObj_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___ARLogGeneral_block_invoke_3()
{
  v0 = os_log_create("com.apple.ARKit", "General");
  v1 = _ARLogGeneral_logObj_3;
  _ARLogGeneral_logObj_3 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end