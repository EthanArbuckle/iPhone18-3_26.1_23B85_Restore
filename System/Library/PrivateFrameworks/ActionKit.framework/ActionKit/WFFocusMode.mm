@interface WFFocusMode
- (WFFocusMode)initWithCoder:(id)coder;
- (WFFocusMode)initWithFCActivityDescribing:(id)describing;
- (WFFocusMode)initWithIdentifier:(id)identifier displayName:(id)name symbolName:(id)symbolName colorName:(id)colorName;
- (WFImage)symbolImage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFocusMode

- (WFFocusMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];

  v9 = [(WFFocusMode *)self initWithIdentifier:v5 displayName:v6 symbolName:v7 colorName:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFFocusMode *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(WFFocusMode *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  symbolName = [(WFFocusMode *)self symbolName];
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];

  colorName = [(WFFocusMode *)self colorName];
  [coderCopy encodeObject:colorName forKey:@"colorName"];
}

- (WFImage)symbolImage
{
  v3 = MEMORY[0x277D79FC8];
  symbolName = [(WFFocusMode *)self symbolName];
  v5 = [v3 systemImageNamed:symbolName configuration:0 renderingMode:2];

  v6 = MEMORY[0x277D79E20];
  colorName = [(WFFocusMode *)self colorName];
  v8 = [v6 colorWithFocusColorName:colorName];

  if (v8)
  {
    v9 = [v5 imageWithTintColor:v8];

    v5 = v9;
  }

  return v5;
}

- (WFFocusMode)initWithIdentifier:(id)identifier displayName:(id)name symbolName:(id)symbolName colorName:(id)colorName
{
  identifierCopy = identifier;
  nameCopy = name;
  symbolNameCopy = symbolName;
  colorNameCopy = colorName;
  v25.receiver = self;
  v25.super_class = WFFocusMode;
  v14 = [(WFFocusMode *)&v25 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [nameCopy copy];
    displayName = v14->_displayName;
    v14->_displayName = v17;

    v19 = [symbolNameCopy copy];
    symbolName = v14->_symbolName;
    v14->_symbolName = v19;

    v21 = [colorNameCopy copy];
    colorName = v14->_colorName;
    v14->_colorName = v21;

    v23 = v14;
  }

  return v14;
}

- (WFFocusMode)initWithFCActivityDescribing:(id)describing
{
  describingCopy = describing;
  activityIdentifier = [describingCopy activityIdentifier];
  activityDisplayName = [describingCopy activityDisplayName];
  activitySymbolImageName = [describingCopy activitySymbolImageName];
  activityColorName = [describingCopy activityColorName];

  v9 = [(WFFocusMode *)self initWithIdentifier:activityIdentifier displayName:activityDisplayName symbolName:activitySymbolImageName colorName:activityColorName];
  return v9;
}

@end