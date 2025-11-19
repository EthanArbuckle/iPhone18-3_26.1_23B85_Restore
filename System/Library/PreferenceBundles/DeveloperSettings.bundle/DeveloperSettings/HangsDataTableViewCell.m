@interface HangsDataTableViewCell
+ (id)_textColorForDurationLevel:(int64_t)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation HangsDataTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HangsDataTableViewCell;
  [(HangsDataTableViewCell *)&v23 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:@"HangsDataControllerDuration"];
  [v5 floatValue];
  v7 = v6;

  if (v7 != 0.0)
  {
    v8 = [(HangsDataTableViewCell *)self valueLabel];
    v9 = [v8 font];
    v10 = [v9 fontDescriptor];

    if (v10)
    {
      [v10 pointSize];
      v12 = v11;
      v13 = [v10 fontAttributes];
      v14 = [v13 objectForKeyedSubscript:UIFontDescriptorTraitsAttribute];
      v15 = [v14 objectForKeyedSubscript:UIFontWeightTrait];
      [v15 floatValue];
      v17 = [UIFont monospacedDigitSystemFontOfSize:v12 weight:v16];
      v18 = [(HangsDataTableViewCell *)self valueLabel];
      [v18 setFont:v17];
    }
  }

  v19 = [v4 objectForKeyedSubscript:@"HangsDataControllerDurationLevel"];
  v20 = [v19 integerValue];

  if (v20)
  {
    v21 = [HangsDataTableViewCell _textColorForDurationLevel:v20];
    v22 = [(HangsDataTableViewCell *)self valueLabel];
    [v22 setTextColor:v21];
  }
}

+ (id)_textColorForDurationLevel:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = +[UIColor systemRedColor];
  }

  else
  {
    if (a3 == 1)
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