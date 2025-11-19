@interface LTOSLogSpeech
@end

@implementation LTOSLogSpeech

uint64_t ___LTOSLogSpeech_block_invoke()
{
  _LTOSLogSpeech_log = os_log_create("com.apple.Translation", "Speech");

  return MEMORY[0x2821F96F8]();
}

@end