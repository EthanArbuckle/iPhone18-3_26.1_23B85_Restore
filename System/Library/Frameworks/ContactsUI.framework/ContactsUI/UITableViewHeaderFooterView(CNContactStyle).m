@interface UITableViewHeaderFooterView(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UITableViewHeaderFooterView(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  v12 = [a1 _cnui_contactStyle];
  v2 = [v12 sectionHeaderTextColor];

  if (v2)
  {
    v3 = [v12 sectionHeaderTextColor];
    v4 = [a1 textLabel];
    [v4 setTextColor:v3];
  }

  v5 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1;
  v6 = [a1 textLabel];
  [v6 setNumberOfLines:v5];

  v7 = [v12 sectionBackgroundColor];

  if (v7)
  {
    v8 = [v12 sectionBackgroundColor];
  }

  else
  {
    v9 = [v12 backgroundColor];

    if (!v9)
    {
      goto LABEL_9;
    }

    v8 = [v12 backgroundColor];
  }

  v10 = v8;
  if (v8)
  {
    v11 = [a1 backgroundView];
    [v11 setBackgroundColor:v10];
  }

LABEL_9:
}

@end