@interface _FitnessMonthTitleLabel
- (_FitnessMonthTitleLabel)init;
- (void)setDate:(id)a3;
@end

@implementation _FitnessMonthTitleLabel

- (_FitnessMonthTitleLabel)init
{
  v6.receiver = self;
  v6.super_class = _FitnessMonthTitleLabel;
  v2 = [(_FitnessMonthTitleLabel *)&v6 init];
  if (v2)
  {
    v3 = [UIFont boldSystemFontOfSize:22.0];
    [(_FitnessMonthTitleLabel *)v2 setFont:v3];

    v4 = +[UIColor labelColor];
    [(_FitnessMonthTitleLabel *)v2 setTextColor:v4];

    [(_FitnessMonthTitleLabel *)v2 setTextAlignment:1];
    [(_FitnessMonthTitleLabel *)v2 setHidden:1];
  }

  return v2;
}

- (void)setDate:(id)a3
{
  v4 = HKLocalizedStringForDateAndTemplate();
  v5 = [v4 localizedCapitalizedString];

  [(_FitnessMonthTitleLabel *)self setText:v5];
  [(_FitnessMonthTitleLabel *)self sizeToFit];
}

@end