@interface HangsDataTableViewCell
+ (id)_textColorForDurationLevel:(int64_t)level;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HangsDataTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v23.receiver = self;
  v23.super_class = HangsDataTableViewCell;
  [(HangsDataTableViewCell *)&v23 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:@"HangsDataControllerDuration"];
  [v5 floatValue];
  v7 = v6;

  if (v7 != 0.0)
  {
    valueLabel = [(HangsDataTableViewCell *)self valueLabel];
    font = [valueLabel font];
    fontDescriptor = [font fontDescriptor];

    if (fontDescriptor)
    {
      [fontDescriptor pointSize];
      v12 = v11;
      fontAttributes = [fontDescriptor fontAttributes];
      v14 = [fontAttributes objectForKeyedSubscript:UIFontDescriptorTraitsAttribute];
      v15 = [v14 objectForKeyedSubscript:UIFontWeightTrait];
      [v15 floatValue];
      v17 = [UIFont monospacedDigitSystemFontOfSize:v12 weight:v16];
      valueLabel2 = [(HangsDataTableViewCell *)self valueLabel];
      [valueLabel2 setFont:v17];
    }
  }

  v19 = [specifierCopy objectForKeyedSubscript:@"HangsDataControllerDurationLevel"];
  integerValue = [v19 integerValue];

  if (integerValue)
  {
    v21 = [HangsDataTableViewCell _textColorForDurationLevel:integerValue];
    valueLabel3 = [(HangsDataTableViewCell *)self valueLabel];
    [valueLabel3 setTextColor:v21];
  }
}

+ (id)_textColorForDurationLevel:(int64_t)level
{
  if (level == 2)
  {
    v3 = +[UIColor systemRedColor];
  }

  else
  {
    if (level == 1)
    {
      +[UIColor systemOrangeColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v3 = ;
  }

  return v3;
}

@end