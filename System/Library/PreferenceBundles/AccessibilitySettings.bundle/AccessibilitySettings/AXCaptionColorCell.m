@interface AXCaptionColorCell
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AXCaptionColorCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AXCaptionColorCell;
  [(AXCaptionColorCell *)&v27 refreshCellContentsWithSpecifier:v4];
  v5 = [(AXCaptionColorCell *)self defaultContentConfiguration];
  v6 = [v4 propertyForKey:@"rgb"];
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
    [v5 setImage:v20];

    v21 = [v5 imageProperties];
    [v21 setTintColor:v7];
  }

  v22 = [v4 propertyForKey:@"isDefault"];
  v23 = [v22 BOOLValue];

  if (v23)
  {
    v24 = settingsLocString(@"default.choice", @"CaptioningStyle");
    v25 = [v4 name];
    v26 = [NSString stringWithFormat:v24, v25];
    [v5 setText:v26];
  }

  else
  {
    v24 = [v4 name];
    [v5 setText:v24];
  }

  [(AXCaptionColorCell *)self setContentConfiguration:v5];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AXCaptionColorCell;
  [(AXCaptionColorCell *)&v3 prepareForReuse];
  [(AXCaptionColorCell *)self setContentConfiguration:0];
}

@end