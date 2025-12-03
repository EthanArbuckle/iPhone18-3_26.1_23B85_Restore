@interface _SFAutoFillInputViewButton
- (void)layoutSubviews;
@end

@implementation _SFAutoFillInputViewButton

- (void)layoutSubviews
{
  [(_SFAutoFillInputViewButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_SFAutoFillInputViewButton *)self layoutMargins];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  Width = CGRectGetWidth(v23);
  titleLabel = [(_SFAutoFillInputViewButton *)self titleLabel];
  [titleLabel setPreferredMaxLayoutWidth:Width];

  v22.receiver = self;
  v22.super_class = _SFAutoFillInputViewButton;
  [(_SFAutoFillInputViewButton *)&v22 layoutSubviews];
  titleLabel2 = [(_SFAutoFillInputViewButton *)self titleLabel];
  [titleLabel2 setFrame:{v12, v14, v16, v18}];
}

@end