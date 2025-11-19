@interface ImportCaptionStackView
- (ImportCaptionStackView)initWithButtonAction:(id)a3;
- (void)setLabelText:(id)a3;
@end

@implementation ImportCaptionStackView

- (ImportCaptionStackView)initWithButtonAction:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ImportCaptionStackView;
  v5 = [(ImportCaptionStackView *)&v25 init];
  v6 = v5;
  if (v5)
  {
    [(ImportCaptionStackView *)v5 setAxis:1];
    [(ImportCaptionStackView *)v6 setAlignment:0];
    [(ImportCaptionStackView *)v6 setDistribution:0];
    [(ImportCaptionStackView *)v6 setLayoutMarginsRelativeArrangement:1];
    [(ImportCaptionStackView *)v6 setLayoutMargins:0.0, 0.0, 30.0, 0.0];
    v7 = objc_alloc_init(UILabel);
    label = v6->_label;
    v6->_label = v7;

    [(UILabel *)v6->_label setAccessibilityIdentifier:@"ImportCaption"];
    v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v6->_label setFont:v9];

    [(UILabel *)v6->_label setNumberOfLines:0];
    [(UILabel *)v6->_label setTextAlignment:1];
    [(UILabel *)v6->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ImportCaptionStackView *)v6 addArrangedSubview:v6->_label];
    v10 = [(UILabel *)v6->_label widthAnchor];
    v11 = [(ImportCaptionStackView *)v6 layoutMarginsGuide];
    v12 = [v11 widthAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    [(UILabel *)v6->_label setHidden:1];
    v14 = +[UIButtonConfiguration plainButtonConfiguration];
    v15 = [NSAttributedString alloc];
    v16 = _WBSLocalizedString();
    v26[0] = NSFontAttributeName;
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v27[0] = v17;
    v26[1] = NSForegroundColorAttributeName;
    v18 = +[UIColor systemBlueColor];
    v27[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    v20 = [v15 initWithString:v16 attributes:v19];
    [v14 setAttributedTitle:v20];

    v21 = [UIButton buttonWithConfiguration:v14 primaryAction:v4];
    chooseOtherButton = v6->_chooseOtherButton;
    v6->_chooseOtherButton = v21;

    [(ImportCaptionStackView *)v6 addArrangedSubview:v6->_chooseOtherButton];
    [(UIButton *)v6->_chooseOtherButton setHidden:1];
    [(UIButton *)v6->_chooseOtherButton setAccessibilityIdentifier:@"ChooseOtherButton"];
    v23 = v6;
  }

  return v6;
}

- (void)setLabelText:(id)a3
{
  objc_storeStrong(&self->_labelText, a3);
  v5 = a3;
  [(UILabel *)self->_label setText:v5];
  [(UILabel *)self->_label setHidden:v5 == 0];
}

@end