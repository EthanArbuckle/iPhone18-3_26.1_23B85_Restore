@interface WKInterfaceSeparator
- (void)setColor:(id)color;
@end

@implementation WKInterfaceSeparator

- (void)setColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end