@interface ClarityUIIconSettingsButton
- (ClarityUIIconSettingsButton)initWithTitle:(id)a3 preferenceValue:(id)a4;
- (void)setSelected:(BOOL)a3;
@end

@implementation ClarityUIIconSettingsButton

- (ClarityUIIconSettingsButton)initWithTitle:(id)a3 preferenceValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v42.receiver = self;
  v42.super_class = ClarityUIIconSettingsButton;
  v9 = [(ClarityUIIconSettingsButton *)&v42 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferenceValue, a4);
    v39 = [[ClarityOnboardingPreviewView alloc] initWithListLayout:v8];
    [(ClarityOnboardingPreviewView *)v39 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = v8;
    v11 = [UIStackView alloc];
    v45 = v39;
    v12 = [NSArray arrayWithObjects:&v45 count:1];
    v13 = [v11 initWithArrangedSubviews:v12];

    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setUserInteractionEnabled:0];
    [v13 setAxis:0];
    [v13 setSpacing:8.0];
    [v13 setAlignment:0];
    v14 = v13;
    v38 = v13;
    [v13 setDistribution:1];
    v15 = objc_alloc_init(UILabel);
    [v15 setNumberOfLines:0];
    [v15 setTextAlignment:1];
    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v15 setFont:v16];

    [v15 setAdjustsFontForContentSizeCategory:1];
    [v15 setText:v7];
    LODWORD(v17) = 1148846080;
    [v15 setContentCompressionResistancePriority:0 forAxis:v17];
    v18 = objc_alloc_init(UIImageView);
    checkImageView = v10->_checkImageView;
    v10->_checkImageView = v18;

    v20 = [UIImageSymbolConfiguration configurationWithScale:3];
    [(UIImageView *)v10->_checkImageView setPreferredSymbolConfiguration:v20];

    LODWORD(v21) = 1148846080;
    [(UIImageView *)v10->_checkImageView setContentHuggingPriority:0 forAxis:v21];
    v22 = [UIStackView alloc];
    v44[0] = v14;
    v44[1] = v15;
    v44[2] = v10->_checkImageView;
    v23 = [NSArray arrayWithObjects:v44 count:3];
    v24 = [v22 initWithArrangedSubviews:v23];

    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setUserInteractionEnabled:0];
    [v24 setAxis:1];
    [v24 setSpacing:8.0];
    [v24 setAlignment:3];
    [(ClarityUIIconSettingsButton *)v10 addSubview:v24];
    v37 = [v24 widthAnchor];
    v36 = [(ClarityUIIconSettingsButton *)v10 widthAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v43[0] = v35;
    v25 = [v24 heightAnchor];
    [(ClarityUIIconSettingsButton *)v10 heightAnchor];
    v26 = v41 = v7;
    v27 = [v25 constraintEqualToAnchor:v26];
    v43[1] = v27;
    v28 = [v24 centerXAnchor];
    [(ClarityUIIconSettingsButton *)v10 centerXAnchor];
    v29 = obj = a3;
    v30 = [v28 constraintEqualToAnchor:v29];
    v43[2] = v30;
    v31 = [NSArray arrayWithObjects:v43 count:3];
    [NSLayoutConstraint activateConstraints:v31];

    v8 = v40;
    v7 = v41;

    objc_storeStrong(&v10->_title, obj);
    v32 = v10;
  }

  return v10;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = ClarityUIIconSettingsButton;
  [(ClarityUIIconSettingsButton *)&v9 setSelected:?];
  if (v3)
  {
    [(ClarityUIIconSettingsButton *)self setTintColor:0];
    v5 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    [(UIImageView *)self->_checkImageView setImage:v5];

    [(UIImageView *)self->_checkImageView setTintColor:0];
  }

  else
  {
    v6 = +[UIColor systemGrayColor];
    [(ClarityUIIconSettingsButton *)self setTintColor:v6];

    v7 = [UIImage systemImageNamed:@"circle"];
    [(UIImageView *)self->_checkImageView setImage:v7];

    v8 = +[UIColor systemFillColor];
    [(UIImageView *)self->_checkImageView setTintColor:v8];
  }
}

@end