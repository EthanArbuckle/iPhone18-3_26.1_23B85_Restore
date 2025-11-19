@interface COSMigrationChoiceFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (COSMigrationChoiceFooterDelegate)delegate;
- (COSMigrationChoiceFooterView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tappedContinue:(id)a3;
@end

@implementation COSMigrationChoiceFooterView

- (COSMigrationChoiceFooterView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = COSMigrationChoiceFooterView;
  v3 = [(COSMigrationChoiceFooterView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = BPSSetupBackgroundColor();
    [(COSMigrationChoiceFooterView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(UILabel);
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v5;

    v7 = v3->_descriptionLabel;
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"BIXBY_FOOTER_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];
    [(UILabel *)v7 setText:v9];

    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    v10 = v3->_descriptionLabel;
    v11 = BPSTextColor();
    [(UILabel *)v10 setTextColor:v11];

    [(UILabel *)v3->_descriptionLabel setTextAlignment:1];
    [(COSMigrationChoiceFooterView *)v3 addSubview:v3->_descriptionLabel];
    v12 = [UIButton buttonWithType:0];
    continueButton = v3->_continueButton;
    v3->_continueButton = v12;

    BPSScreenValueGetRelevantValue();
    v14 = v3->_continueButton;
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"BIXBY_CONTINUE_BUTTON" value:&stru_10026E598 table:@"Localizable"];
    v17 = BPSPillButtonImage();
    [(UIButton *)v14 setImage:v17 forState:0];

    v18 = v3->_continueButton;
    v19 = BPSTextColor();
    [(UIButton *)v18 setTintColor:v19];

    [(UIButton *)v3->_continueButton addTarget:v3 action:"tappedContinue:" forControlEvents:64];
    [(COSMigrationChoiceFooterView *)v3 addSubview:v3->_continueButton];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(COSMigrationChoiceFooterView *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v7 = CGRectGetWidth(v19) + -28.0;
  [(UILabel *)self->_descriptionLabel sizeThatFits:v7, 0.0];
  v9 = v8;
  [(UILabel *)self->_descriptionLabel setFrame:14.0, 14.0, v7, v8];
  [(UIButton *)self->_continueButton sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v11 = v10;
  v13 = v12;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v14 = (CGRectGetWidth(v20) - v11) * 0.5;
  v15 = floorf(v14);
  v21.origin.x = 14.0;
  v21.origin.y = 14.0;
  v21.size.width = v7;
  v21.size.height = v9;
  MaxY = CGRectGetMaxY(v21);
  continueButton = self->_continueButton;

  [(UIButton *)continueButton setFrame:v15, MaxY + 14.0, v11, v13];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(COSMigrationChoiceFooterView *)self layoutIfNeeded:a3.width];
  [(COSMigrationChoiceFooterView *)self bounds];
  Width = CGRectGetWidth(v8);
  [(UIButton *)self->_continueButton frame];
  MaxY = CGRectGetMaxY(v9);
  v6 = Width;
  result.height = MaxY;
  result.width = v6;
  return result;
}

- (void)tappedContinue:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userTappedContinue:self];
}

- (COSMigrationChoiceFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end