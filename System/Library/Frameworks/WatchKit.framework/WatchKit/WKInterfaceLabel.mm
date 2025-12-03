@interface WKInterfaceLabel
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
@end

@implementation WKInterfaceLabel

- (void)setText:(id)text
{
  v4 = [text copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4];
}

- (void)setTextColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

- (void)setAttributedText:(id)text
{
  v4 = _WKValidatedAttributedString(text);
  [(WKInterfaceObject *)self _sendValueChanged:v4];
}

@end