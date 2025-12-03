@interface WFChooseFromMenuAction(UIKit)
- (id)attributedLocalizedName;
@end

@implementation WFChooseFromMenuAction(UIKit)

- (id)attributedLocalizedName
{
  if ([self mode] == 1)
  {
    itemTitle = [self itemTitle];
    attributedString = [itemTitle attributedString];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &off_2850E4810;
    attributedString = objc_msgSendSuper2(&v5, sel_attributedLocalizedName);
  }

  return attributedString;
}

@end