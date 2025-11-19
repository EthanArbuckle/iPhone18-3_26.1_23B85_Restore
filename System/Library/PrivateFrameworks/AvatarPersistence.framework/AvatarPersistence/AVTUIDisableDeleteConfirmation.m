@interface AVTUIDisableDeleteConfirmation
@end

@implementation AVTUIDisableDeleteConfirmation

uint64_t __AVTUIDisableDeleteConfirmation_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTUIGlobalPreferencesDisableDeleteConfirmation", 0);
  AVTUIDisableDeleteConfirmation_once_enabled = result;
  return result;
}

@end