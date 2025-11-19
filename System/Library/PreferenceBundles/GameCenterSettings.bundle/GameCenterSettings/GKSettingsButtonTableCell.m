@interface GKSettingsButtonTableCell
- (GKSettingsButtonTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)setTitle:(id)a3;
@end

@implementation GKSettingsButtonTableCell

- (GKSettingsButtonTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = GKSettingsButtonTableCell;
  v5 = [(GKSettingsButtonTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v10 = objc_alloc_init(GKTextStylePhone);
  v5 = +[GKTextStyle textStyle];
  v6 = [v5 settingsButton];

  v7 = [v4 _gkAttributedStringByApplyingStyle:v6];

  v8 = [GKTextStyle attributedString:v7 byReplayingFromBaseStyle:v10 systemContentSizeDidChange:0];
  v9 = [(GKSettingsButtonTableCell *)self textLabel];
  [v9 setAttributedText:v8];
}

@end