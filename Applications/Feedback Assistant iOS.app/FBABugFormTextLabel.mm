@interface FBABugFormTextLabel
- (void)drawRect:(CGRect)a3;
@end

@implementation FBABugFormTextLabel

- (void)drawRect:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = FBABugFormTextLabel;
  [(FBABugFormTextLabel *)&v3 drawTextInRect:a3.origin.x + 15.0, a3.origin.y + 0.0, a3.size.width + -15.0, a3.size.height];
}

@end