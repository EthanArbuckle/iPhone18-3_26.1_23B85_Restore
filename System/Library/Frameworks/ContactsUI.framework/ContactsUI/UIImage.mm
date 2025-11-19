@interface UIImage
@end

@implementation UIImage

uint64_t __50__UIImage_CNUI__cnui_templateImageNamed_withTint___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = cnui_templateImageNamed_withTint__cn_once_object_1;
  cnui_templateImageNamed_withTint__cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end