@interface UIFont
+ (id)appropriateContentSizeCategoryForCategory:(id)a3 maxCategory:(id)a4;
@end

@implementation UIFont

+ (id)appropriateContentSizeCategoryForCategory:(id)a3 maxCategory:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if (UIContentSizeCategoryCompareToCategory(v7, v6) == NSOrderedDescending)
  {
    v8 = v6;
  }

  return v8;
}

@end