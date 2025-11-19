@interface ExtensionsPrimaryDetailsView
- (NSLayoutConstraint)actionButtonStackViewBottomConstraint;
- (NSLayoutConstraint)actionButtonStackViewHeightConstraint;
- (id)_buttonFont;
- (void)_updateTertiaryLabelContent;
- (void)configureWithActionButtons:(id)a3;
- (void)contentViewDidLoad;
- (void)layoutSubviews;
- (void)setTertiaryText:(id)a3 badge:(id)a4;
- (void)updateLayout;
@end

@implementation ExtensionsPrimaryDetailsView

- (NSLayoutConstraint)actionButtonStackViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_actionButtonStackViewHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)actionButtonStackViewBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_actionButtonStackViewBottomConstraint);

  return WeakRetained;
}

- (void)_updateTertiaryLabelContent
{
  v3 = +[UIFont system15Bold];
  v4 = [NSAttributedString alloc];
  if (self->_tertiaryText)
  {
    tertiaryText = self->_tertiaryText;
  }

  else
  {
    tertiaryText = &stru_1016631F0;
  }

  v10 = NSFontAttributeName;
  v11 = v3;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v4 initWithString:tertiaryText attributes:v6];

  v8 = [v7 _maps_attributedStringByAppendingRidesharingSpecialPricingBadge:self->_badge representativeContentFont:v3];
  v9 = [(ExtensionsPrimaryDetailsView *)self tertiaryLabel];
  [v9 setAttributedText:v8];
}

- (void)setTertiaryText:(id)a3 badge:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  tertiaryText = self->_tertiaryText;
  self->_tertiaryText = v7;

  badge = self->_badge;
  self->_badge = v6;

  [(ExtensionsPrimaryDetailsView *)self _updateTertiaryLabelContent];
}

- (void)updateLayout
{
  v3 = [(ExtensionsPrimaryDetailsView *)self actionButtonStackView];
  v4 = [v3 arrangedSubviews];
  if ([v4 count] < 2 || (-[ExtensionsPrimaryDetailsView frame](self, "frame"), floor(v5) > 320.0))
  {
    v6 = [(ExtensionsPrimaryDetailsView *)self _buttonFont];
    if (v6)
    {
      v7 = v6;
      v8 = [(ExtensionsPrimaryDetailsView *)self _buttonFont];
      [v8 pointSize];
      v10 = v9;

      if (v10 > 21.0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v11 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v11 = 1;
LABEL_10:
  v12 = [(ExtensionsPrimaryDetailsView *)self actionButtonStackView];
  [v12 setAxis:v11];

  [(ExtensionsPrimaryDetailsView *)self _updateTertiaryLabelContent];
}

- (id)_buttonFont
{
  v3 = [(UIStackView *)self->_actionButtonStackView arrangedSubviews];
  v4 = [v3 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(UIStackView *)self->_actionButtonStackView arrangedSubviews];
    v7 = [v6 lastObject];
    v8 = [v7 titleLabel];
    v9 = [v8 font];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ExtensionsPrimaryDetailsView;
  [(ExtensionsPrimaryDetailsView *)&v3 layoutSubviews];
  [(ExtensionsPrimaryDetailsView *)self updateLayout];
}

- (void)configureWithActionButtons:(id)a3
{
  v4 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = self;
  v5 = [(ExtensionsPrimaryDetailsView *)self actionButtonStackView];
  v6 = [v5 arrangedSubviews];

  v7 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v38 + 1) + 8 * i) removeFromSuperview];
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * j);
        v16 = [v15 titleLabel];
        [DynamicTypeWizard autorefreshLabel:v16 withFontProvider:&stru_10165DAA8];

        v17 = [v15 heightAnchor];
        v18 = [v17 constraintGreaterThanOrEqualToConstant:50.0];

        v19 = [DynamicTypeWizard autoscaledConstraint:v18 constant:&stru_10165DAA8 withFontProvider:50.0];
        v42 = v19;
        v20 = [NSArray arrayWithObjects:&v42 count:1];
        [NSLayoutConstraint activateConstraints:v20];

        v21 = [(ExtensionsPrimaryDetailsView *)v33 actionButtonStackView];
        [v21 addArrangedSubview:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v12);
  }

  v22 = [(ExtensionsPrimaryDetailsView *)v33 actionButtonStackViewBottomConstraint];
  v23 = [v22 isActive];

  v24 = [(ExtensionsPrimaryDetailsView *)v33 actionButtonStackView];
  v25 = [v24 arrangedSubviews];
  v26 = [v25 count];

  if (v26)
  {
    if ((v23 & 1) == 0)
    {
      v27 = 147.0;
      v28 = 40.0;
LABEL_20:
      v29 = [(ExtensionsPrimaryDetailsView *)v33 actionButtonStackViewHeightConstraint];
      [v29 setConstant:v28];

      v30 = [(ExtensionsPrimaryDetailsView *)v33 actionButtonStackViewBottomConstraint];
      [v30 setActive:v26 != 0];

      v31 = [(ExtensionsPrimaryDetailsView *)v33 heightConstraint];
      [v31 setConstant:v27];

      [(ExtensionsPrimaryDetailsView *)v33 setNeedsUpdateConstraints];
    }
  }

  else if (v23)
  {
    v28 = 0.0;
    v27 = 100.0;
    goto LABEL_20;
  }

  [(ExtensionsPrimaryDetailsView *)v33 updateLayout];
}

- (void)contentViewDidLoad
{
  v21.receiver = self;
  v21.super_class = ExtensionsPrimaryDetailsView;
  [(NibView *)&v21 contentViewDidLoad];
  v3 = +[UIColor labelColor];
  v4 = [(ExtensionsPrimaryDetailsView *)self titleLabel];
  [v4 setTextColor:v3];

  v5 = +[UIColor secondaryLabelColor];
  v6 = [(ExtensionsPrimaryDetailsView *)self subtitleLabel];
  [v6 setTextColor:v5];

  v7 = +[UIColor labelColor];
  v8 = [(ExtensionsPrimaryDetailsView *)self tertiaryLabel];
  [v8 setTextColor:v7];

  v9 = [(ExtensionsPrimaryDetailsView *)self titleLabel];
  [DynamicTypeWizard autorefreshLabel:v9 withFontProvider:&stru_10165DA48];

  v10 = [(ExtensionsPrimaryDetailsView *)self subtitleLabel];
  [DynamicTypeWizard autorefreshLabel:v10 withFontProvider:&stru_10165D908];

  v11 = [(ExtensionsPrimaryDetailsView *)self titleLabel];
  [v11 setLineBreakMode:0];

  v12 = [(ExtensionsPrimaryDetailsView *)self titleLabel];
  [v12 setNumberOfLines:0];

  v13 = [(ExtensionsPrimaryDetailsView *)self subtitleLabel];
  [v13 setLineBreakMode:0];

  v14 = [(ExtensionsPrimaryDetailsView *)self subtitleLabel];
  [v14 setNumberOfLines:0];

  v15 = [(ExtensionsPrimaryDetailsView *)self tertiaryLabel];
  [v15 setLineBreakMode:0];

  v16 = [(ExtensionsPrimaryDetailsView *)self tertiaryLabel];
  [v16 setNumberOfLines:0];

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"updateLayout" name:UIContentSizeCategoryDidChangeNotification object:0];

  v18 = [(ExtensionsPrimaryDetailsView *)self heightAnchor];
  v19 = [v18 constraintGreaterThanOrEqualToConstant:147.0];
  [(ExtensionsPrimaryDetailsView *)self setHeightConstraint:v19];

  [(ExtensionsPrimaryDetailsView *)self _updateTertiaryLabelContent];
  heightConstraint = self->_heightConstraint;
  v20 = [NSArray arrayWithObjects:&heightConstraint count:1];
  [NSLayoutConstraint activateConstraints:v20];
}

@end