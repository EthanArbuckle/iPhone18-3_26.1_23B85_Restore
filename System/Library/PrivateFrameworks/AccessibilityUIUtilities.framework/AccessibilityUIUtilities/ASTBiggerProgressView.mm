@interface ASTBiggerProgressView
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation ASTBiggerProgressView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = ASTBiggerProgressView;
  [(ASTBiggerProgressView *)&v5 sizeThatFits:a3.width, a3.height];
  v4 = 7.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end