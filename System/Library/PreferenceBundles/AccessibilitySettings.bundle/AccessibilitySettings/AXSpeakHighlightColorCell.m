@interface AXSpeakHighlightColorCell
- (AXSpeakHighlightColorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation AXSpeakHighlightColorCell

- (AXSpeakHighlightColorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v11.receiver = self;
  v11.super_class = AXSpeakHighlightColorCell;
  v7 = a5;
  v8 = [(AXSpeakHighlightColorCell *)&v11 initWithStyle:a3 reuseIdentifier:a4 specifier:v7];
  v9 = [v7 propertyForKey:{@"type", v11.receiver, v11.super_class}];

  -[AXColorChooserCell setFillCircle:](v8, "setFillCircle:", [v9 intValue] != 0);
  return v8;
}

@end