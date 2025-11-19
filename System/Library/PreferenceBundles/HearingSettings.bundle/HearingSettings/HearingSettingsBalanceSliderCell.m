@interface HearingSettingsBalanceSliderCell
+ (id)valueLabels;
- (HearingSettingsBalanceSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HearingSettingsBalanceSliderCellDelegate)delegate;
- (id)_labelForSliderValue:(float)a3;
- (id)accessibilityValue;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)sliderDidEndEditing:(id)a3;
- (void)sliderValueDidChange:(id)a3;
@end

@implementation HearingSettingsBalanceSliderCell

- (HearingSettingsBalanceSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = HearingSettingsBalanceSliderCell;
  v4 = [(HearingSettingsValueSliderCell *)&v15 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v14.receiver = v4;
    v14.super_class = HearingSettingsBalanceSliderCell;
    v6 = [(HearingSettingsValueSliderCell *)&v14 slider];
    [(HearingSettingsBalanceSliderCell *)v5 minValue];
    *&v7 = v7;
    [v6 setMinimumValue:v7];
    [(HearingSettingsBalanceSliderCell *)v5 maxValue];
    *&v8 = v8;
    [v6 setMaximumValue:v8];
    [v6 addTarget:v5 action:"sliderValueDidChange:" forControlEvents:4096];
    [v6 addTarget:v5 action:"sliderDidEndEditing:" forControlEvents:192];
    if ([v6 isSegmented])
    {
      v9 = [v6 segmentCount] + 1;
    }

    else
    {
      v9 = 0;
    }

    if ([v6 locksToSegment])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    v11 = [[_UISliderFluidTickConfiguration alloc] initWithNumberOfTicks:v9 behavior:v10];
    LODWORD(v12) = 994352038;
    [v11 setSnappingDistance:v12];
    [v11 setNeutralPosition:0.5];
    [v6 _setSliderConfiguration:v11];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = HearingSettingsBalanceSliderCell;
  [(HearingSettingsValueSliderCell *)&v6 refreshCellContentsWithSpecifier:a3];
  [(HearingSettingsValueSliderCell *)self sliderValue];
  *&v4 = v4;
  v5 = [(HearingSettingsBalanceSliderCell *)self _labelForSliderValue:v4];
  [(HearingSettingsValueSliderCell *)self updateCenterLabel:v5];
}

- (void)sliderValueDidChange:(id)a3
{
  v4 = OBJC_IVAR___PSTableCell__specifier;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super.PSTableCell_opaque[v4]);
  [v5 value];
  v7 = [NSNumber numberWithFloat:?];
  [WeakRetained performSetterWithValue:v7];

  [v5 value];
  v9 = v8;

  LODWORD(v10) = v9;
  v11 = [(HearingSettingsBalanceSliderCell *)self _labelForSliderValue:v10];
  [(HearingSettingsValueSliderCell *)self updateCenterLabel:v11];
}

- (void)sliderDidEndEditing:(id)a3
{
  v8 = a3;
  v4 = [(HearingSettingsBalanceSliderCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HearingSettingsBalanceSliderCell *)self delegate];
    [v8 value];
    [v6 balanceSliderDidChangeToValue:v7];
  }
}

+ (id)valueLabels
{
  v2 = hearingLocString();
  v6[0] = v2;
  v3 = hearingLocString();
  v6[1] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:2];

  return v4;
}

- (id)accessibilityValue
{
  [(HearingSettingsValueSliderCell *)self sliderValue];
  v3 = v2;
  v4 = paLocString();
  if (v3 > 0.0)
  {
    v5 = paLocString();

    v4 = v5;
  }

  v6 = AXFormatFloatWithPercentage();
  v7 = [NSString stringWithFormat:v4, v6];

  return v7;
}

- (id)_labelForSliderValue:(float)a3
{
  v3 = [NSNumber numberWithFloat:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

- (HearingSettingsBalanceSliderCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end