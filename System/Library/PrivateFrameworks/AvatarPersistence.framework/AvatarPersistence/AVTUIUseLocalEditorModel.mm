@interface AVTUIUseLocalEditorModel
@end

@implementation AVTUIUseLocalEditorModel

uint64_t __AVTUIUseLocalEditorModel_once_block_invoke()
{
  result = _AVTUIBoolForInternalSettingKey(@"AVTAvatarUseLocalEditorModel", 0);
  AVTUIUseLocalEditorModel_once_enabled = result;
  return result;
}

@end