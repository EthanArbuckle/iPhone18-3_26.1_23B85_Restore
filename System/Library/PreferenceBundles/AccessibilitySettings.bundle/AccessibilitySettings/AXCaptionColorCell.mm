@interface AXCaptionColorCell
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AXCaptionColorCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v27.receiver = self;
  v27.super_class = AXCaptionColorCell;
  [(AXCaptionColorCell *)&v27 refreshCellContentsWithSpecifier:specifierCopy];
  defaultContentConfiguration = [(AXCaptionColorCell *)self defaultContentConfiguration];
  v6 = [specifierCopy propertyForKey:@"rgb"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v8 = v6;
      v9 = [v8 objectAtIndexedSubscript:0];
      [v9 floatValue];
      v11 = v10;
      v12 = [v8 objectAtIndexedSubscript:1];
      [v12 floatValue];
      v14 = v13;
      v15 = [v8 objectAtIndexedSubscript:2];
      [v15 floatValue];
      v17 = v16;
      v18 = [v8 objectAtIndexedSubscript:3];

      [v18 floatValue];
      v7 = [UIColor colorWithRed:v11 green:v14 blue:v17 alpha:v19];
    }

    v20 = [UIImage systemImageNamed:@"circle.fill"];
    [defaultContentConfiguration setImage:v20];

    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setTintColor:v7];
  }

  v22 = [specifierCopy propertyForKey:@"isDefault"];
  bOOLValue = [v22 BOOLValue];

  if (bOOLValue)
  {
    name2 = settingsLocString(@"default.choice", @"CaptioningStyle");
    name = [specifierCopy name];
    v26 = [NSString stringWithFormat:name2, name];
    [defaultContentConfiguration setText:v26];
  }

  else
  {
    name2 = [specifierCopy name];
    [defaultContentConfiguration setText:name2];
  }

  [(AXCaptionColorCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AXCaptionColorCell;
  [(AXCaptionColorCell *)&v3 prepareForReuse];
  [(AXCaptionColorCell *)self setContentConfiguration:0];
}

@end