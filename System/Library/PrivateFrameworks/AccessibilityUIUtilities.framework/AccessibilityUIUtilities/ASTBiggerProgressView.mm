@interface ASTBiggerProgressView
- (CGSize)sizeThatFits:(CGSize)fits;
@end

@implementation ASTBiggerProgressView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = ASTBiggerProgressView;
  [(ASTBiggerProgressView *)&v5 sizeThatFits:fits.width, fits.height];
  v4 = 7.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end