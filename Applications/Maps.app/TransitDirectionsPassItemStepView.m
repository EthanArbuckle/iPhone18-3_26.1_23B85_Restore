@interface TransitDirectionsPassItemStepView
- ($29727DC6989B69F22950FCD998EA20D4)_metrics;
- (double)bottomSpacerHeight;
- (void)_updateFonts;
@end

@implementation TransitDirectionsPassItemStepView

- (double)bottomSpacerHeight
{
  v2 = [(TransitDirectionsPassItemStepView *)self traitCollection];
  if ([v2 userInterfaceIdiom] == 5)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

- (void)_updateFonts
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v3 = ;
  v4 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  [v4 setFont:v3];

  v5 = [(TransitDirectionsPassItemStepView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];
  v7 = UIFontTextStyleBody;
  if (v6 != 5)
  {
    v7 = UIFontTextStyleSubheadline;
  }

  v8 = v7;

  v9 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v8];

  v10 = [v9 fontDescriptor];
  v11 = [v10 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

  v12 = [UIFont fontWithDescriptor:v11 size:0.0];

  v13 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [v13 setFont:v12];

  v14 = self;
  v21 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline];
  v15 = [(TransitDirectionsPassItemStepView *)v14 traitCollection];

  v16 = [v15 userInterfaceIdiom];
  if (v16 == 5)
  {
    v17 = [v21 fontDescriptor];
    v18 = [v17 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay];

    v19 = [UIFont fontWithDescriptor:v18 size:0.0];

    v21 = v19;
  }

  v20 = [(TransitDirectionsInstructionsStepView *)v14 secondaryAccessoryLabel];
  [v20 setFont:v21];
}

- ($29727DC6989B69F22950FCD998EA20D4)_metrics
{
  retstr->var6 = 0.0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  v16.receiver = self;
  v16.super_class = TransitDirectionsPassItemStepView;
  [($29727DC6989B69F22950FCD998EA20D4 *)&v16 _metrics];
  v5 = [(TransitDirectionsStepView *)self transitListItem];
  v6 = [v5 type];

  if (v6 == 6)
  {
    retstr->var6 = 0.0;
    *&retstr->var2 = 0u;
    *&retstr->var4 = 0u;
    *&retstr->var0 = 0u;
    v7 = [(TransitDirectionsPassItemStepView *)self traitCollection];
    [v7 userInterfaceIdiom];

    retstr->var2 = 8.0;
  }

  else
  {
    v9 = [(TransitDirectionsPassItemStepView *)self traitCollection];
    if ([v9 userInterfaceIdiom] == 5)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    retstr->var0 = v10;
    v11 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
    v12 = [v11 font];
    v13 = [(TransitDirectionsPassItemStepView *)self traitCollection];
    if ([v13 userInterfaceIdiom] == 5)
    {
      v14 = 15.0;
    }

    else
    {
      v14 = 20.0;
    }

    [v12 _scaledValueForValue:v14];
    retstr->var2 = v15;
  }

  return result;
}

@end