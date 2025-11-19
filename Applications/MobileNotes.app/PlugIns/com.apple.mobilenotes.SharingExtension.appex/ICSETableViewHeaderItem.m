@interface ICSETableViewHeaderItem
+ (id)headerItemWithAccount:(id)a3;
- (UIColor)backgroundColor;
- (double)cellHeight;
@end

@implementation ICSETableViewHeaderItem

- (double)cellHeight
{
  v2 = [(ICSETableViewHeaderItem *)self headerType];
  if (v2 > 2)
  {
    return 32.0;
  }

  v3 = (&unk_1000CA248 + 8 * v2);
  v4 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v5 = &UITableViewAutomaticDimension;
  if (!v4)
  {
    v5 = v3;
  }

  return *v5;
}

- (UIColor)backgroundColor
{
  v3 = +[UIColor clearColor];
  v4 = [(ICSETableViewHeaderItem *)self headerType];
  if (v4 == 1)
  {
    v5 = +[UIColor systemGroupedBackgroundColor];
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v5 = +[UIColor tertiarySystemGroupedBackgroundColor];
  }

  v6 = v5;

  v3 = v6;
LABEL_6:

  return v3;
}

+ (id)headerItemWithAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ICSETableViewHeaderItem);
  [(ICSETableViewHeaderItem *)v4 setHeaderType:1];
  v5 = [v3 accountName];
  v6 = [v5 localizedUppercaseString];
  [(ICSETableViewItem *)v4 setTitle:v6];

  [(ICSETableViewItem *)v4 setAccount:v3];

  return v4;
}

@end