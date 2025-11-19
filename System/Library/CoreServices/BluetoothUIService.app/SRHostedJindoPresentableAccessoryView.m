@interface SRHostedJindoPresentableAccessoryView
- (CGSize)compactSize;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (void)setFrame:(CGRect)a3;
@end

@implementation SRHostedJindoPresentableAccessoryView

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = SRHostedJindoPresentableAccessoryView;
  [(SRHostedJindoPresentableAccessoryView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  [(SRHostedJindoPresentableAccessoryView *)self compactSize:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)compactSize
{
  width = self->_compactSize.width;
  height = self->_compactSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end