@interface CNContactFormatter
@end

@implementation CNContactFormatter

void __58__CNContactFormatter_UIAdditions__sharedFullNameFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v0 setStyle:0];
  v1 = sharedFullNameFormatter_cn_once_object_2;
  sharedFullNameFormatter_cn_once_object_2 = v0;
}

void __71__CNContactFormatter_UIAdditions__sharedFullNameFormatterWithFallBacks__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v0 setStyle:0];
  [v0 setFallbackStyle:-1];
  v1 = sharedFullNameFormatterWithFallBacks_cn_once_object_1;
  sharedFullNameFormatterWithFallBacks_cn_once_object_1 = v0;
}

@end