@interface WKInterfaceSwitch
- (void)setAttributedTitle:(id)title;
- (void)setColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation WKInterfaceSwitch

- (void)setTitle:(id)title
{
  v4 = [title copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"title"];
}

- (void)setAttributedTitle:(id)title
{
  v4 = _WKValidatedAttributedString(title);
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"title"];
}

- (void)setColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end