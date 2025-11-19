@interface WFChooseFromMenuAction(UIKit)
- (id)attributedLocalizedName;
@end

@implementation WFChooseFromMenuAction(UIKit)

- (id)attributedLocalizedName
{
  if ([a1 mode] == 1)
  {
    v2 = [a1 itemTitle];
    v3 = [v2 attributedString];
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &off_2850E4810;
    v3 = objc_msgSendSuper2(&v5, sel_attributedLocalizedName);
  }

  return v3;
}

@end