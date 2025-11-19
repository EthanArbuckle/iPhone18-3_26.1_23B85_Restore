@interface AVTUIDisableEditAfterDuplicate
@end

@implementation AVTUIDisableEditAfterDuplicate

uint64_t __AVTUIDisableEditAfterDuplicate_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTUIGlobalPreferencesDisablEditAfterDuplicate", 0);
  AVTUIDisableEditAfterDuplicate_once_enabled = result;
  return result;
}

@end