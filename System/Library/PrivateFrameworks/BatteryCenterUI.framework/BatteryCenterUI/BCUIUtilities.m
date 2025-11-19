@interface BCUIUtilities
+ (BOOL)isAX1PlusLayoutRequiredForContentSizeCategory:(id)a3;
@end

@implementation BCUIUtilities

+ (BOOL)isAX1PlusLayoutRequiredForContentSizeCategory:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E69DDC40];
  if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC40]))
  {
    v5 = UIContentSizeCategoryCompareToCategory(v3, v4) == NSOrderedDescending;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end