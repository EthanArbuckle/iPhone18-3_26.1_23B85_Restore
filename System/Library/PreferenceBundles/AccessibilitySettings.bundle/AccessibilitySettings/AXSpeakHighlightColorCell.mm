@interface AXSpeakHighlightColorCell
- (AXSpeakHighlightColorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation AXSpeakHighlightColorCell

- (AXSpeakHighlightColorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = AXSpeakHighlightColorCell;
  specifierCopy = specifier;
  v8 = [(AXSpeakHighlightColorCell *)&v11 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v9 = [specifierCopy propertyForKey:{@"type", v11.receiver, v11.super_class}];

  -[AXColorChooserCell setFillCircle:](v8, "setFillCircle:", [v9 intValue] != 0);
  return v8;
}

@end