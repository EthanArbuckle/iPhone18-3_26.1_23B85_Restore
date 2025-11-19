@interface CNContactFormatter(UIAdditions)
+ (id)sharedFullNameFormatter;
+ (id)sharedFullNameFormatterWithFallBacks;
@end

@implementation CNContactFormatter(UIAdditions)

+ (id)sharedFullNameFormatter
{
  if (sharedFullNameFormatter_cn_once_token_2 != -1)
  {
    dispatch_once(&sharedFullNameFormatter_cn_once_token_2, &__block_literal_global_2);
  }

  v1 = sharedFullNameFormatter_cn_once_object_2;

  return v1;
}

+ (id)sharedFullNameFormatterWithFallBacks
{
  if (sharedFullNameFormatterWithFallBacks_cn_once_token_1 != -1)
  {
    dispatch_once(&sharedFullNameFormatterWithFallBacks_cn_once_token_1, &__block_literal_global_32506);
  }

  v1 = sharedFullNameFormatterWithFallBacks_cn_once_object_1;

  return v1;
}

@end