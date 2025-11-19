@interface AVTUIThumbnailCaching
@end

@implementation AVTUIThumbnailCaching

uint64_t __AVTUIThumbnailCaching_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarUIThumbnailCaching", 1);
  AVTUIThumbnailCaching_once_enabled = result;
  return result;
}

@end