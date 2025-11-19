@interface TSSIMUnlockCalloutLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (TSSIMUnlockCalloutLabel)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TSSIMUnlockCalloutLabel

- (TSSIMUnlockCalloutLabel)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = TSSIMUnlockCalloutLabel;
  v3 = [(TSSIMUnlockCalloutLabel *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    textlabel = v3->_textlabel;
    v3->_textlabel = v4;

    v6 = v3->_textlabel;
    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)v3->_textlabel setNumberOfLines:0];
    v8 = v3->_textlabel;
    v9 = +[UIColor blackColor];
    [(UILabel *)v8 setTextColor:v9];

    [(TSSIMUnlockCalloutLabel *)v3 addSubview:v3->_textlabel];
    v10 = [UIImage imageNamed:@"callout"];
    v11 = [[UIImageView alloc] initWithImage:v10];
    calloutImageView = v3->_calloutImageView;
    v3->_calloutImageView = v11;

    [(TSSIMUnlockCalloutLabel *)v3 addSubview:v3->_calloutImageView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_textlabel sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(UIImageView *)self->_calloutImageView image];
  [v8 size];
  v10 = v9;
  v12 = v11;

  v13 = v5 + v10 + 5.0;
  if (v7 >= v12)
  {
    v14 = v7;
  }

  else
  {
    v14 = v12;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = TSSIMUnlockCalloutLabel;
  [(TSSIMUnlockCalloutLabel *)&v11 layoutSubviews];
  v3 = [(UIImageView *)self->_calloutImageView image];
  [v3 size];

  [(TSSIMUnlockCalloutLabel *)self bounds];
  UIRectCenteredYInRect();
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v8 = CGRectGetMaxX(v12) + 5.0;
  [(TSSIMUnlockCalloutLabel *)self bounds];
  v9 = CGRectGetWidth(v13) - v8;
  [(TSSIMUnlockCalloutLabel *)self bounds];
  v10 = CGRectGetHeight(v14);
  [(UIImageView *)self->_calloutImageView setFrame:x, y, width, height];
  [(UILabel *)self->_textlabel setFrame:v8, 0.0, v9, v10];
}

@end