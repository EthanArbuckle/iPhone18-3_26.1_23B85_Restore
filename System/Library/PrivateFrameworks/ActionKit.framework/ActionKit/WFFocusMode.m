@interface WFFocusMode
- (WFFocusMode)initWithCoder:(id)a3;
- (WFFocusMode)initWithFCActivityDescribing:(id)a3;
- (WFFocusMode)initWithIdentifier:(id)a3 displayName:(id)a4 symbolName:(id)a5 colorName:(id)a6;
- (WFImage)symbolImage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFocusMode

- (WFFocusMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];

  v9 = [(WFFocusMode *)self initWithIdentifier:v5 displayName:v6 symbolName:v7 colorName:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFFocusMode *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(WFFocusMode *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(WFFocusMode *)self symbolName];
  [v4 encodeObject:v7 forKey:@"symbolName"];

  v8 = [(WFFocusMode *)self colorName];
  [v4 encodeObject:v8 forKey:@"colorName"];
}

- (WFImage)symbolImage
{
  v3 = MEMORY[0x277D79FC8];
  v4 = [(WFFocusMode *)self symbolName];
  v5 = [v3 systemImageNamed:v4 configuration:0 renderingMode:2];

  v6 = MEMORY[0x277D79E20];
  v7 = [(WFFocusMode *)self colorName];
  v8 = [v6 colorWithFocusColorName:v7];

  if (v8)
  {
    v9 = [v5 imageWithTintColor:v8];

    v5 = v9;
  }

  return v5;
}

- (WFFocusMode)initWithIdentifier:(id)a3 displayName:(id)a4 symbolName:(id)a5 colorName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = WFFocusMode;
  v14 = [(WFFocusMode *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    displayName = v14->_displayName;
    v14->_displayName = v17;

    v19 = [v12 copy];
    symbolName = v14->_symbolName;
    v14->_symbolName = v19;

    v21 = [v13 copy];
    colorName = v14->_colorName;
    v14->_colorName = v21;

    v23 = v14;
  }

  return v14;
}

- (WFFocusMode)initWithFCActivityDescribing:(id)a3
{
  v4 = a3;
  v5 = [v4 activityIdentifier];
  v6 = [v4 activityDisplayName];
  v7 = [v4 activitySymbolImageName];
  v8 = [v4 activityColorName];

  v9 = [(WFFocusMode *)self initWithIdentifier:v5 displayName:v6 symbolName:v7 colorName:v8];
  return v9;
}

@end