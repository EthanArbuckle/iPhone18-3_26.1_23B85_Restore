@interface BCUIUtilities
+ (BOOL)isAX1PlusLayoutRequiredForContentSizeCategory:(id)category;
@end

@implementation BCUIUtilities

+ (BOOL)isAX1PlusLayoutRequiredForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v4 = *MEMORY[0x1E69DDC40];
  if (UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC40]))
  {
    v5 = UIContentSizeCategoryCompareToCategory(categoryCopy, v4) == NSOrderedDescending;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end