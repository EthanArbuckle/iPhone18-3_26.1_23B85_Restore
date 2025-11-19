@interface LogCategory
@end

@implementation LogCategory

uint64_t __LogCategory_Daemon_block_invoke()
{
  qword_27DE8BA88 = os_log_create("com.apple.icloud.messages", "_");

  return MEMORY[0x2821F96F8]();
}

@end