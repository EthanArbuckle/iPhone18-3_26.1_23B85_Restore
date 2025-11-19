@interface TSSIMUnlockListFooterView
- (TSSIMUnlockListFooterView)initWithDelegate:(id)a3;
- (TSSIMUnlockListFooterViewDelegate)delegate;
- (void)_continueButtonPressed:(id)a3;
- (void)layoutSubviews;
- (void)setMode:(int64_t)a3;
@end

@implementation TSSIMUnlockListFooterView

- (TSSIMUnlockListFooterView)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TSSIMUnlockListFooterView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = TSSIMUnlockListFooterView;
  [(TSSIMUnlockListFooterView *)&v24 layoutSubviews];
  [(TSSIMUnlockListFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_continueButton frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  mode = self->_mode;
  if (mode == 2)
  {
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    CGRectGetMaxY(v26);
    v27.origin.x = v12;
    v27.origin.y = v14;
    v27.size.width = v16;
    v27.size.height = v18;
    CGRectGetHeight(v27);
    UIRectCenteredXInRect();
    v12 = v20;
    v14 = v21;
    v16 = v22;
    v18 = v23;
  }

  else if (mode == 1)
  {
    [(TSSIMUnlockListFooterView *)self bounds];
    v16 = CGRectGetWidth(v25) + -48.0;
    v12 = 24.0;
    v14 = 0.0;
    v18 = 50.0;
  }

  [(UIButton *)self->_continueButton setFrame:v12, v14, v16, v18];
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(UIButton *)self->_continueButton removeFromSuperview];
    if (a3)
    {
      if (a3 == 2)
      {
        v22 = [UIButton buttonWithType:1];
        continueButton = self->_continueButton;
        self->_continueButton = v22;

        v24 = self->_continueButton;
        v25 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        [(UIButton *)v24 _setFont:v25];

        v26 = self->_continueButton;
        v27 = +[UIColor systemBlueColor];
        [(UIButton *)v26 setTitleColor:v27 forState:0];

        v28 = self->_continueButton;
        v29 = +[NSBundle mainBundle];
        v30 = [v29 localizedStringForKey:@"SKIP" value:&stru_10001CA70 table:@"Localizable"];
        [(UIButton *)v28 setTitle:v30 forState:0];

        [(UIButton *)self->_continueButton sizeToFit];
      }

      else if (a3 == 1)
      {
        v6 = [UIButton buttonWithType:0];
        v7 = self->_continueButton;
        self->_continueButton = v6;

        v8 = self->_continueButton;
        v9 = +[UIColor systemBlueColor];
        [(UIButton *)v8 setBackgroundColor:v9];

        v10 = self->_continueButton;
        v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
        [(UIButton *)v10 _setFont:v11];

        v12 = self->_continueButton;
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"CONTINUE" value:&stru_10001CA70 table:@"Localizable"];
        [(UIButton *)v12 setTitle:v14 forState:0];

        v15 = self->_continueButton;
        v16 = +[UIColor whiteColor];
        [(UIButton *)v15 setTitleColor:v16 forState:0];

        v17 = self->_continueButton;
        v18 = +[UIColor whiteColor];
        v19 = [v18 colorWithAlphaComponent:0.25];
        [(UIButton *)v17 setTitleColor:v19 forState:1];

        v20 = [(UIButton *)self->_continueButton titleLabel];
        [v20 setAdjustsFontSizeToFitWidth:1];

        v21 = [(UIButton *)self->_continueButton layer];
        [v21 setCornerRadius:8.0];
      }
    }

    else
    {
      v31 = self->_continueButton;
      self->_continueButton = 0;
    }

    [(UIButton *)self->_continueButton addTarget:self action:"_continueButtonPressed:" forControlEvents:0x2000];
    [(TSSIMUnlockListFooterView *)self addSubview:self->_continueButton];

    [(TSSIMUnlockListFooterView *)self setNeedsLayout];
  }
}

- (void)_continueButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained unlockListFooterViewContinueButtonWasPressed:self];
}

- (TSSIMUnlockListFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end