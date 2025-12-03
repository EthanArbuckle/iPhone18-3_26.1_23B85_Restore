@interface ICSETableViewHeaderItem
+ (id)headerItemWithAccount:(id)account;
- (UIColor)backgroundColor;
- (double)cellHeight;
@end

@implementation ICSETableViewHeaderItem

- (double)cellHeight
{
  headerType = [(ICSETableViewHeaderItem *)self headerType];
  if (headerType > 2)
  {
    return 32.0;
  }

  v3 = (&unk_1000CA248 + 8 * headerType);
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
  headerType = [(ICSETableViewHeaderItem *)self headerType];
  if (headerType == 1)
  {
    v5 = +[UIColor systemGroupedBackgroundColor];
  }

  else
  {
    if (headerType != 2)
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

+ (id)headerItemWithAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(ICSETableViewHeaderItem);
  [(ICSETableViewHeaderItem *)v4 setHeaderType:1];
  accountName = [accountCopy accountName];
  localizedUppercaseString = [accountName localizedUppercaseString];
  [(ICSETableViewItem *)v4 setTitle:localizedUppercaseString];

  [(ICSETableViewItem *)v4 setAccount:accountCopy];

  return v4;
}

@end