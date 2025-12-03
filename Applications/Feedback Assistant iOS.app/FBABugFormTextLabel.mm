@interface FBABugFormTextLabel
- (void)drawRect:(CGRect)rect;
@end

@implementation FBABugFormTextLabel

- (void)drawRect:(CGRect)rect
{
  v3.receiver = self;
  v3.super_class = FBABugFormTextLabel;
  [(FBABugFormTextLabel *)&v3 drawTextInRect:rect.origin.x + 15.0, rect.origin.y + 0.0, rect.size.width + -15.0, rect.size.height];
}

@end