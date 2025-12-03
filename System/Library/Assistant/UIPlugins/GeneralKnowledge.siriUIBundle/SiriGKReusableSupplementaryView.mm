@interface SiriGKReusableSupplementaryView
+ (id)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setSubview:(id)subview;
@end

@implementation SiriGKReusableSupplementaryView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 stringByAppendingString:@"ReuseIdentifier"];

  return v4;
}

- (void)setSubview:(id)subview
{
  subviewCopy = subview;
  [(UIView *)self->_customSubview removeFromSuperview];
  customSubview = self->_customSubview;
  self->_customSubview = subviewCopy;
  v6 = subviewCopy;

  [(SiriGKReusableSupplementaryView *)self addSubview:self->_customSubview];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_customSubview sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SiriGKReusableSupplementaryView;
  [(SiriGKReusableSupplementaryView *)&v9 layoutSubviews];
  y = CGPointZero.y;
  customSubview = self->_customSubview;
  [(SiriGKReusableSupplementaryView *)self bounds];
  [(UIView *)customSubview sizeThatFits:v5, v6];
  [(UIView *)self->_customSubview setFrame:CGPointZero.x, y, v7, v8];
}

@end