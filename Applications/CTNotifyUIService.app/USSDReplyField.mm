@interface USSDReplyField
- (CGRect)editingRectForBounds:(CGRect)bounds;
@end

@implementation USSDReplyField

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  v3.receiver = self;
  v3.super_class = USSDReplyField;
  [(USSDReplyField *)&v3 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  return CGRectInset(v4, 3.0, 1.0);
}

@end