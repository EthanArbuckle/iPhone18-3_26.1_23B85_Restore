@interface EKUIViewWithCornerRadius
- (void)layoutSubviews;
@end

@implementation EKUIViewWithCornerRadius

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = EKUIViewWithCornerRadius;
  [(EKUIViewWithCornerRadius *)&v6 layoutSubviews];
  cornerRadius = self->_cornerRadius;
  if (cornerRadius == 0.0)
  {
    [(EKUIViewWithCornerRadius *)self bounds];
    cornerRadius = v4 * 0.5;
  }

  v5 = [(EKUIViewWithCornerRadius *)self layer];
  [v5 setCornerRadius:cornerRadius];
}

@end