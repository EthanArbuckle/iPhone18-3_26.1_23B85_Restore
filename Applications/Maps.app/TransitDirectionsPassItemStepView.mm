@interface TransitDirectionsPassItemStepView
- ($29727DC6989B69F22950FCD998EA20D4)_metrics;
- (double)bottomSpacerHeight;
- (void)_updateFonts;
@end

@implementation TransitDirectionsPassItemStepView

- (double)bottomSpacerHeight
{
  traitCollection = [(TransitDirectionsPassItemStepView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
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
  primaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  [primaryLabel setFont:v3];

  traitCollection = [(TransitDirectionsPassItemStepView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v7 = UIFontTextStyleBody;
  if (userInterfaceIdiom != 5)
  {
    v7 = UIFontTextStyleSubheadline;
  }

  v8 = v7;

  v9 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v8];

  fontDescriptor = [v9 fontDescriptor];
  v11 = [fontDescriptor _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

  v12 = [UIFont fontWithDescriptor:v11 size:0.0];

  primaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [primaryAccessoryLabel setFont:v12];

  selfCopy = self;
  v21 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline];
  traitCollection2 = [(TransitDirectionsPassItemStepView *)selfCopy traitCollection];

  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];
  if (userInterfaceIdiom2 == 5)
  {
    fontDescriptor2 = [v21 fontDescriptor];
    _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay = [fontDescriptor2 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay];

    v19 = [UIFont fontWithDescriptor:_mapkit_fontDescriptorByAddingFeaturesForTimeDisplay size:0.0];

    v21 = v19;
  }

  secondaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)selfCopy secondaryAccessoryLabel];
  [secondaryAccessoryLabel setFont:v21];
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
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  type = [transitListItem type];

  if (type == 6)
  {
    retstr->var6 = 0.0;
    *&retstr->var2 = 0u;
    *&retstr->var4 = 0u;
    *&retstr->var0 = 0u;
    traitCollection = [(TransitDirectionsPassItemStepView *)self traitCollection];
    [traitCollection userInterfaceIdiom];

    retstr->var2 = 8.0;
  }

  else
  {
    traitCollection2 = [(TransitDirectionsPassItemStepView *)self traitCollection];
    if ([traitCollection2 userInterfaceIdiom] == 5)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    retstr->var0 = v10;
    primaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
    font = [primaryLabel font];
    traitCollection3 = [(TransitDirectionsPassItemStepView *)self traitCollection];
    if ([traitCollection3 userInterfaceIdiom] == 5)
    {
      v14 = 15.0;
    }

    else
    {
      v14 = 20.0;
    }

    [font _scaledValueForValue:v14];
    retstr->var2 = v15;
  }

  return result;
}

@end