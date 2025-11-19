@interface SKIKeyboardLog
@end

@implementation SKIKeyboardLog

uint64_t ___SKIKeyboardLog_block_invoke()
{
  _SKIKeyboardLog_log = os_log_create("com.apple.stickerkit", "Keyboard");

  return MEMORY[0x1EEE66BB8]();
}

@end