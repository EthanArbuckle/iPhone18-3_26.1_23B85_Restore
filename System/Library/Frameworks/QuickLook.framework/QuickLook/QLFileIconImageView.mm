@interface QLFileIconImageView
- (QLFileIconImageView)initWithCoder:(id)a3;
- (void)setCornerRadius:(double)a3;
@end

@implementation QLFileIconImageView

- (QLFileIconImageView)initWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = QLFileIconImageView;
  v3 = [(QLFileIconImageView *)&v5 initWithCoder:a3];
  [(QLFileIconImageView *)v3 setCornerRadius:3.0];
  return v3;
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(QLFileIconImageView *)self layer];
  [v4 setCornerRadius:3.0];

  v5 = [(QLFileIconImageView *)self layer];
  [v5 setMasksToBounds:1];
}

@end