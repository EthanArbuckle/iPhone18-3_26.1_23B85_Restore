@interface AXCaptionSizeCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXCaptionSizeCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AXCaptionSizeCell;
  [(AXCaptionSizeCell *)&v25 refreshCellContentsWithSpecifier:v4];
  v5 = [(AXCaptionSizeCell *)self defaultContentConfiguration];
  v6 = [v4 propertyForKey:@"isDefault"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = settingsLocString(@"default.choice", @"CaptioningStyle");
    v9 = [v4 name];
    v10 = [NSString stringWithFormat:v8, v9];
    [v5 setText:v10];
  }

  else
  {
    v8 = [v4 name];
    [v5 setText:v8];
  }

  v11 = [v5 textProperties];
  v12 = [v11 font];
  v13 = [v12 fontName];

  v14 = [v13 isEqual:MACaptionAppearanceSystemFontIdentifier];
  v15 = [v13 isEqual:MACaptionAppearanceMonoSystemFontIdentifier];
  v16 = [v13 isEqual:MACaptionAppearanceMediumSystemFontIdentifier];
  v17 = [(AXCaptionSizeCell *)self specifier];
  v18 = [v17 propertyForKey:@"fontSize"];
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
      [UIFont fontWithName:v13 size:v21];
    }
    v22 = ;
  }

  v23 = v22;
  v24 = [v5 textProperties];
  [v24 setFont:v23];

  [(AXCaptionSizeCell *)self setContentConfiguration:v5];
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
  v3 = [(AXCaptionSizeCell *)self textLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(AXCaptionSizeCell *)self frame];
  v12.origin.y = (v10 - v9) * 0.5;
  v12.origin.x = v5;
  v12.size.width = v7;
  v12.size.height = v9;
  v13 = CGRectIntegral(v12);
  [v3 setFrame:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
}

@end