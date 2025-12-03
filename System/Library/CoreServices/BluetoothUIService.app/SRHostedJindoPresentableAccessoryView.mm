@interface SRHostedJindoPresentableAccessoryView
- (CGSize)compactSize;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (void)setFrame:(CGRect)frame;
@end

@implementation SRHostedJindoPresentableAccessoryView

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = SRHostedJindoPresentableAccessoryView;
  [(SRHostedJindoPresentableAccessoryView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  [(SRHostedJindoPresentableAccessoryView *)self compactSize:mode];
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