@interface WKSPInterfaceGroup
- (void)setBackgroundColor:(id)color;
@end

@implementation WKSPInterfaceGroup

- (void)setBackgroundColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKSPInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

@end