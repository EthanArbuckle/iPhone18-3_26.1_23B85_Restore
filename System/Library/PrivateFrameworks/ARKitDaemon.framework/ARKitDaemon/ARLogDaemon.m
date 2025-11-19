@interface ARLogDaemon
@end

@implementation ARLogDaemon

uint64_t ___ARLogDaemon_block_invoke()
{
  _ARLogDaemon_logObj = os_log_create("com.apple.ARKit", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogDaemon_block_invoke_0()
{
  _ARLogDaemon_logObj_0 = os_log_create("com.apple.ARKit", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogDaemon_block_invoke_1()
{
  _ARLogDaemon_logObj_1 = os_log_create("com.apple.ARKit", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogDaemon_block_invoke_2()
{
  _ARLogDaemon_logObj_2 = os_log_create("com.apple.ARKit", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogDaemon_block_invoke_3()
{
  _ARLogDaemon_logObj_3 = os_log_create("com.apple.ARKit", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogDaemon_block_invoke_4()
{
  _ARLogDaemon_logObj_4 = os_log_create("com.apple.ARKit", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogDaemon_block_invoke_5()
{
  _ARLogDaemon_logObj_5 = os_log_create("com.apple.ARKit", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogDaemon_block_invoke_6()
{
  _ARLogDaemon_logObj_6 = os_log_create("com.apple.ARKit", "Daemon");

  return MEMORY[0x2821F96F8]();
}

uint64_t ___ARLogDaemon_block_invoke_7()
{
  v0 = os_log_create("com.apple.ARKit", "Daemon");
  v1 = _ARLogDaemon_logObj_7;
  _ARLogDaemon_logObj_7 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___ARLogDaemon_block_invoke_8()
{
  v0 = os_log_create("com.apple.ARKit", "Daemon");
  v1 = _ARLogDaemon_logObj_8;
  _ARLogDaemon_logObj_8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end