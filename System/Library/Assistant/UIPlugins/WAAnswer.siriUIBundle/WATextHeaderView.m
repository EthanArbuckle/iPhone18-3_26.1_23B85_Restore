@interface WATextHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (WATextHeaderView)initWithFrame:(CGRect)a3;
- (double)_headerHeight;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation WATextHeaderView

- (double)_headerHeight
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];

  return 40.0;
}

- (WATextHeaderView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = WATextHeaderView;
  v3 = [(WATextHeaderView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v4;

    v6 = v3->_headerLabel;
    v7 = +[UIColor clearColor];
    [(UILabel *)v6 setBackgroundColor:v7];

    v8 = v3->_headerLabel;
    v9 = [UIFont siriui_lightWeightFontWithSize:14.0];
    [(UILabel *)v8 setFont:v9];

    v10 = v3->_headerLabel;
    v11 = +[UIColor siriui_textColor];
    [(UILabel *)v10 setTextColor:v11];

    [(WATextHeaderView *)v3 addSubview:v3->_headerLabel];
    [(WATextHeaderView *)v3 setKeylineType:1];
  }

  return v3;
}

- (void)setText:(id)a3
{
  [(UILabel *)self->_headerLabel setText:a3];

  [(WATextHeaderView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(WATextHeaderView *)self _headerHeight:a3.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = WATextHeaderView;
  [(WATextHeaderView *)&v4 layoutSubviews];
  [(WATextHeaderView *)self bounds];
  v6 = CGRectInset(v5, SiriUIPlatterStyle[32], 0.0);
  [(UILabel *)self->_headerLabel sizeThatFits:v6.size.width, v6.size.height];
  headerLabel = self->_headerLabel;
  SiriUIRectForLabelWithDistanceFromTopToBaseline();
  [(UILabel *)self->_headerLabel setFrame:?];
}

@end