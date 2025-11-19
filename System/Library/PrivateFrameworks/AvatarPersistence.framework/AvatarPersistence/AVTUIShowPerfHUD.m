@interface AVTUIShowPerfHUD
@end

@implementation AVTUIShowPerfHUD

uint64_t __AVTUIShowPerfHUD_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarUIShowPerfHUD", 0);
  AVTUIShowPerfHUD_once_enabled = result;
  return result;
}

@end