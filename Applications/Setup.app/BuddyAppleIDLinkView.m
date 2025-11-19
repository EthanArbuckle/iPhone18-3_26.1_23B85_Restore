@interface BuddyAppleIDLinkView
- (BuddyAppleIDLinkView)initWithFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation BuddyAppleIDLinkView

- (BuddyAppleIDLinkView)initWithFrame:(CGRect)a3
{
  v14 = a3;
  v12 = a2;
  location = 0;
  v11.receiver = self;
  v11.super_class = BuddyAppleIDLinkView;
  location = [(BuddyAppleIDLinkView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v3 = [UIButton buttonWithType:1];
    v4 = *(location + 1);
    *(location + 1) = v3;

    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v6 = [*(location + 1) titleLabel];
    [v6 setFont:v5];

    v7 = [*(location + 1) titleLabel];
    [v7 setNumberOfLines:0];

    v8 = [*(location + 1) titleLabel];
    [v8 setTextAlignment:1];

    [location addSubview:*(location + 1)];
  }

  v9 = location;
  objc_storeStrong(&location, 0);
  return v9;
}

- (void)layoutSubviews
{
  [(BuddyAppleIDLinkView *)self bounds];
  v2 = [(UIButton *)self->_linkButton titleLabel];
  sub_1001B50D8();
  [(UILabel *)v2 sizeThatFits:v3, v4];
  v8 = v5;
  v9 = v6;

  [(UIButton *)self->_linkButton frame];
  UIRoundToViewScale();
  [(UIButton *)self->_linkButton setFrame:v7, self->_buttonTopPadding, v8, v9, *&v7, *&self->_buttonTopPadding, *&v8, *&v9, *&v7, *&self->_buttonTopPadding, *&v8, *&v9, *&v7, *&self->_buttonTopPadding];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(UIButton *)self->_linkButton titleLabel];
  sub_1001B50D8();
  [(UILabel *)v3 sizeThatFits:v4, v5, *&v4, *&v5];
  v11 = v6;
  v12 = v7;

  v8 = v11;
  v9 = v12 + self->_buttonTopPadding;
  result.height = v9;
  result.width = v8;
  return result;
}

@end