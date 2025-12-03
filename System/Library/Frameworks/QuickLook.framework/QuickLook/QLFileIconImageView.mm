@interface QLFileIconImageView
- (QLFileIconImageView)initWithCoder:(id)coder;
- (void)setCornerRadius:(double)radius;
@end

@implementation QLFileIconImageView

- (QLFileIconImageView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = QLFileIconImageView;
  v3 = [(QLFileIconImageView *)&v5 initWithCoder:coder];
  [(QLFileIconImageView *)v3 setCornerRadius:3.0];
  return v3;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(QLFileIconImageView *)self layer];
  [layer setCornerRadius:3.0];

  layer2 = [(QLFileIconImageView *)self layer];
  [layer2 setMasksToBounds:1];
}

@end