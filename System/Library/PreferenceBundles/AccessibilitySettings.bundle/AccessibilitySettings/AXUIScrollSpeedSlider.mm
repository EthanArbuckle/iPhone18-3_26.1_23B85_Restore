@interface AXUIScrollSpeedSlider
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXUIScrollSpeedSlider

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v16.receiver = self;
  v16.super_class = AXUIScrollSpeedSlider;
  specifierCopy = specifier;
  [(AXUIScrollSpeedSlider *)&v16 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(AXUIScrollSpeedSlider *)self control:v16.receiver];
  [v5 minimumValue];
  v7 = 0.3125 - v6;
  [v5 maximumValue];
  v9 = v8;
  [v5 minimumValue];
  v11 = v7 / (v9 - v10);
  *&v11 = v11;
  v12 = [UISliderTick tickWithPosition:0 title:0 image:v11];
  v17 = v12;
  v13 = [NSArray arrayWithObjects:&v17 count:1];
  v14 = [UISliderTrackConfiguration configurationWithTicks:v13];

  [v14 setAllowsTickValuesOnly:0];
  v15 = [specifierCopy propertyForKey:PSSliderLocksToSegment];

  if (v15)
  {
    [v14 setAllowsTickValuesOnly:{objc_msgSend(v15, "BOOLValue")}];
  }

  [v5 setTrackConfiguration:v14];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = AXUIScrollSpeedSlider;
  [(AXUIScrollSpeedSlider *)&v4 prepareForReuse];
  control = [(AXUIScrollSpeedSlider *)self control];
  [control setTrackConfiguration:0];
}

@end