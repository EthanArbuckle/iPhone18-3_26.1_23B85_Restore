@interface AVTUIGroupDialUsesMasking
@end

@implementation AVTUIGroupDialUsesMasking

uint64_t __AVTUIGroupDialUsesMasking_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTUIGlobalPreferencesGroupDialUsesMasking", 1);
  AVTUIGroupDialUsesMasking_once_enabled = result;
  return result;
}

@end