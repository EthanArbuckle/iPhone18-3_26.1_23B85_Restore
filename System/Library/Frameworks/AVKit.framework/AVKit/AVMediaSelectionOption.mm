@interface AVMediaSelectionOption
@end

@implementation AVMediaSelectionOption

uint64_t __55__AVMediaSelectionOption_AVAdditions__avkit_autoOption__block_invoke()
{
  v0 = objc_alloc_init(AVCustomMediaSelectionOption);
  v1 = avkit_autoOption_mediaSelectionAutoOption;
  avkit_autoOption_mediaSelectionAutoOption = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __54__AVMediaSelectionOption_AVAdditions__avkit_offOption__block_invoke()
{
  v0 = objc_alloc_init(AVCustomMediaSelectionOption);
  v1 = avkit_offOption_mediaSelectionOffOption;
  avkit_offOption_mediaSelectionOffOption = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end