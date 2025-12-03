@interface ASSettingsCurrentTimeCell
- (ASSettingsCurrentTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation ASSettingsCurrentTimeCell

- (ASSettingsCurrentTimeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = ASSettingsCurrentTimeCell;
  v9 = [(ASSettingsCurrentTimeCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:@"kPSOofScheduleEndDateTextColor"];
    -[ASSettingsCurrentTimeCell setCellFocusColor:](v9, "setCellFocusColor:", [v10 BOOLValue]);
  }

  return v9;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = ASSettingsCurrentTimeCell;
  [(ASSettingsCurrentTimeCell *)&v22 layoutSubviews];
  textLabel = [(ASSettingsCurrentTimeCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  textLabel2 = [(ASSettingsCurrentTimeCell *)self textLabel];
  [textLabel2 setFrame:{v5, v7, v9, v11}];

  oldTextColor = [(ASSettingsCurrentTimeCell *)self oldTextColor];

  if (!oldTextColor)
  {
    valueLabel = [(ASSettingsCurrentTimeCell *)self valueLabel];
    color = [valueLabel color];
    [(ASSettingsCurrentTimeCell *)self setOldTextColor:color];
  }

  if ([(ASSettingsCurrentTimeCell *)self cellFocusColor])
  {
    valueLabel2 = [(ASSettingsCurrentTimeCell *)self valueLabel];
    color2 = [valueLabel2 color];
    [(ASSettingsCurrentTimeCell *)self setOldTextColor:color2];

    oldTextColor2 = +[UIApplication sharedApplication];
    keyWindow = [oldTextColor2 keyWindow];
    tintColor = [keyWindow tintColor];
    valueLabel3 = [(ASSettingsCurrentTimeCell *)self valueLabel];
    [valueLabel3 setColor:tintColor];
  }

  else
  {
    oldTextColor2 = [(ASSettingsCurrentTimeCell *)self oldTextColor];
    keyWindow = [(ASSettingsCurrentTimeCell *)self valueLabel];
    [keyWindow setColor:oldTextColor2];
  }

  [(ASSettingsCurrentTimeCell *)self setSelectionStyle:3];
}

@end