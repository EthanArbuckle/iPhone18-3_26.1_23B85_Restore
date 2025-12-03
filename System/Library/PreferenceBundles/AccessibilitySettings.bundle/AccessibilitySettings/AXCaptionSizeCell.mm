@interface AXCaptionSizeCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXCaptionSizeCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v25.receiver = self;
  v25.super_class = AXCaptionSizeCell;
  [(AXCaptionSizeCell *)&v25 refreshCellContentsWithSpecifier:specifierCopy];
  defaultContentConfiguration = [(AXCaptionSizeCell *)self defaultContentConfiguration];
  v6 = [specifierCopy propertyForKey:@"isDefault"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    name2 = settingsLocString(@"default.choice", @"CaptioningStyle");
    name = [specifierCopy name];
    v10 = [NSString stringWithFormat:name2, name];
    [defaultContentConfiguration setText:v10];
  }

  else
  {
    name2 = [specifierCopy name];
    [defaultContentConfiguration setText:name2];
  }

  textProperties = [defaultContentConfiguration textProperties];
  font = [textProperties font];
  fontName = [font fontName];

  v14 = [fontName isEqual:MACaptionAppearanceSystemFontIdentifier];
  v15 = [fontName isEqual:MACaptionAppearanceMonoSystemFontIdentifier];
  v16 = [fontName isEqual:MACaptionAppearanceMediumSystemFontIdentifier];
  specifier = [(AXCaptionSizeCell *)self specifier];
  v18 = [specifier propertyForKey:@"fontSize"];
  [v18 floatValue];
  v20 = v19;

  v21 = v20;
  if (v15)
  {
    v22 = [UIFont monospacedSystemFontOfSize:v21 weight:UIFontWeightRegular];
  }

  else if (v16)
  {
    v22 = [UIFont systemFontOfSize:v21 weight:UIFontWeightMedium];
  }

  else
  {
    if (v14)
    {
      [UIFont systemFontOfSize:v21];
    }

    else
    {
      [UIFont fontWithName:fontName size:v21];
    }
    v22 = ;
  }

  v23 = v22;
  textProperties2 = [defaultContentConfiguration textProperties];
  [textProperties2 setFont:v23];

  [(AXCaptionSizeCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AXCaptionSizeCell;
  [(AXCaptionSizeCell *)&v3 prepareForReuse];
  [(AXCaptionSizeCell *)self setContentConfiguration:0];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = AXCaptionSizeCell;
  [(AXCaptionSizeCell *)&v11 layoutSubviews];
  textLabel = [(AXCaptionSizeCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(AXCaptionSizeCell *)self frame];
  v12.origin.y = (v10 - v9) * 0.5;
  v12.origin.x = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  v13 = CGRectIntegral(v12);
  [textLabel setFrame:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
}

@end