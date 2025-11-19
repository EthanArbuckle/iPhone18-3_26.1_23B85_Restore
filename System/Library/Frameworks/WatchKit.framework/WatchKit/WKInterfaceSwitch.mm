@interface WKInterfaceSwitch
- (void)setAttributedTitle:(id)a3;
- (void)setColor:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation WKInterfaceSwitch

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"title"];
}

- (void)setAttributedTitle:(id)a3
{
  v4 = _WKValidatedAttributedString(a3);
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"title"];
}

- (void)setColor:(id)a3
{
  v4 = [SPColorWrapper wrapperForColor:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end