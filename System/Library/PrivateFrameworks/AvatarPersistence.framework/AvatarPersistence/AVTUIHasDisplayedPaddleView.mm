@interface AVTUIHasDisplayedPaddleView
@end

@implementation AVTUIHasDisplayedPaddleView

uint64_t __AVTUIHasDisplayedPaddleView_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarHasDisplayedPaddleView", 0);
  AVTUIHasDisplayedPaddleView_once_enabled = result;
  return result;
}

@end