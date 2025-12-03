@interface WKSPInterfaceLabel
- (void)setTextColor:(id)color;
@end

@implementation WKSPInterfaceLabel

- (void)setTextColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end