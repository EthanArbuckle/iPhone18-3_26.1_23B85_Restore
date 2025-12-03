@interface COSMigrationChoiceHeaderView
- (CGRect)_computedFrameForTextLabel;
- (CGSize)sizeThatFits:(CGSize)fits;
- (COSMigrationChoiceHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation COSMigrationChoiceHeaderView

- (COSMigrationChoiceHeaderView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = COSMigrationChoiceHeaderView;
  v3 = [(COSMigrationChoiceHeaderView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = BPSSetupBackgroundColor();
    [(COSMigrationChoiceHeaderView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(UILabel);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    v7 = v3->_titleLabel;
    v8 = [UIFont systemFontOfSize:24.0 weight:UIFontWeightMedium];
    [(UILabel *)v7 setFont:v8];

    v9 = v3->_titleLabel;
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"BIXBY_HEADER_TITLE" value:&stru_10026E598 table:@"Localizable"];
    [(UILabel *)v9 setText:v11];

    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v12 = v3->_titleLabel;
    v13 = BPSTextColor();
    [(UILabel *)v12 setTextColor:v13];

    [(COSMigrationChoiceHeaderView *)v3 addSubview:v3->_titleLabel];
  }

  return v3;
}

- (CGRect)_computedFrameForTextLabel
{
  [(COSMigrationChoiceHeaderView *)self bounds];
  v3 = CGRectGetWidth(v9) + -28.0;
  [(UILabel *)self->_titleLabel sizeThatFits:v3, 0.0];
  v5 = v4;
  v6 = 14.0;
  v7 = 14.0;
  v8 = v3;
  result.size.height = v5;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)layoutSubviews
{
  titleLabel = self->_titleLabel;
  [(COSMigrationChoiceHeaderView *)self _computedFrameForTextLabel];

  [(UILabel *)titleLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(COSMigrationChoiceHeaderView *)self bounds:fits.width];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(COSMigrationChoiceHeaderView *)self _computedFrameForTextLabel];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  Width = CGRectGetWidth(v24);
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  v21 = CGRectGetMaxY(v25) + 25.0;
  v22 = Width;
  result.height = v21;
  result.width = v22;
  return result;
}

@end