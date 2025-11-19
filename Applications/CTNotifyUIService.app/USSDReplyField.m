@interface USSDReplyField
- (CGRect)editingRectForBounds:(CGRect)a3;
@end

@implementation USSDReplyField

- (CGRect)editingRectForBounds:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = USSDReplyField;
  [(USSDReplyField *)&v3 editingRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return CGRectInset(v4, 3.0, 1.0);
}

@end