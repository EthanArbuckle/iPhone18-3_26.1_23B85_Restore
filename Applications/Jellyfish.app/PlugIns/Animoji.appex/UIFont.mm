@interface UIFont
+ (id)appropriateContentSizeCategoryForCategory:(id)category maxCategory:(id)maxCategory;
@end

@implementation UIFont

+ (id)appropriateContentSizeCategoryForCategory:(id)category maxCategory:(id)maxCategory
{
  categoryCopy = category;
  maxCategoryCopy = maxCategory;
  v7 = categoryCopy;
  v8 = v7;
  if (UIContentSizeCategoryCompareToCategory(v7, maxCategoryCopy) == NSOrderedDescending)
  {
    v8 = maxCategoryCopy;
  }

  return v8;
}

@end