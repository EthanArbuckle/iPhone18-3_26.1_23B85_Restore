@interface UITableViewHeaderFooterView(CNContactStyle)
- (void)_cnui_applyContactStyle;
@end

@implementation UITableViewHeaderFooterView(CNContactStyle)

- (void)_cnui_applyContactStyle
{
  _cnui_contactStyle = [self _cnui_contactStyle];
  sectionHeaderTextColor = [_cnui_contactStyle sectionHeaderTextColor];

  if (sectionHeaderTextColor)
  {
    sectionHeaderTextColor2 = [_cnui_contactStyle sectionHeaderTextColor];
    textLabel = [self textLabel];
    [textLabel setTextColor:sectionHeaderTextColor2];
  }

  v5 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] ^ 1;
  textLabel2 = [self textLabel];
  [textLabel2 setNumberOfLines:v5];

  sectionBackgroundColor = [_cnui_contactStyle sectionBackgroundColor];

  if (sectionBackgroundColor)
  {
    sectionBackgroundColor2 = [_cnui_contactStyle sectionBackgroundColor];
  }

  else
  {
    backgroundColor = [_cnui_contactStyle backgroundColor];

    if (!backgroundColor)
    {
      goto LABEL_9;
    }

    sectionBackgroundColor2 = [_cnui_contactStyle backgroundColor];
  }

  v10 = sectionBackgroundColor2;
  if (sectionBackgroundColor2)
  {
    backgroundView = [self backgroundView];
    [backgroundView setBackgroundColor:v10];
  }

LABEL_9:
}

@end