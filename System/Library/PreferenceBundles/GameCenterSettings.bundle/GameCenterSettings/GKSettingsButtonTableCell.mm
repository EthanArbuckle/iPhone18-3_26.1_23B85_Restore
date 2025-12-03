@interface GKSettingsButtonTableCell
- (GKSettingsButtonTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setTitle:(id)title;
@end

@implementation GKSettingsButtonTableCell

- (GKSettingsButtonTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = GKSettingsButtonTableCell;
  v5 = [(GKSettingsButtonTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v10 = objc_alloc_init(GKTextStylePhone);
  v5 = +[GKTextStyle textStyle];
  settingsButton = [v5 settingsButton];

  v7 = [titleCopy _gkAttributedStringByApplyingStyle:settingsButton];

  v8 = [GKTextStyle attributedString:v7 byReplayingFromBaseStyle:v10 systemContentSizeDidChange:0];
  textLabel = [(GKSettingsButtonTableCell *)self textLabel];
  [textLabel setAttributedText:v8];
}

@end