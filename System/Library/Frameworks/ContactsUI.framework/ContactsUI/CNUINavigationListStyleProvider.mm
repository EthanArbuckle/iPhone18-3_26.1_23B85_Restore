@interface CNUINavigationListStyleProvider
+ (CNUINavigationListStyle)carPlayStyle;
+ (CNUINavigationListStyle)phoneStyle;
@end

@implementation CNUINavigationListStyleProvider

+ (CNUINavigationListStyle)carPlayStyle
{
  v2 = objc_alloc_init(CNUICarPlayNavigationListStyleProvider);

  return v2;
}

+ (CNUINavigationListStyle)phoneStyle
{
  v2 = objc_alloc_init(CNUIPhoneNavigationListStyleProvider);

  return v2;
}

@end