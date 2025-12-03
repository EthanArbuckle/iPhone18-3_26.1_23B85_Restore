@interface ExtensionsPrimaryDetailsView
- (NSLayoutConstraint)actionButtonStackViewBottomConstraint;
- (NSLayoutConstraint)actionButtonStackViewHeightConstraint;
- (id)_buttonFont;
- (void)_updateTertiaryLabelContent;
- (void)configureWithActionButtons:(id)buttons;
- (void)contentViewDidLoad;
- (void)layoutSubviews;
- (void)setTertiaryText:(id)text badge:(id)badge;
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
  tertiaryLabel = [(ExtensionsPrimaryDetailsView *)self tertiaryLabel];
  [tertiaryLabel setAttributedText:v8];
}

- (void)setTertiaryText:(id)text badge:(id)badge
{
  badgeCopy = badge;
  v7 = [text copy];
  tertiaryText = self->_tertiaryText;
  self->_tertiaryText = v7;

  badge = self->_badge;
  self->_badge = badgeCopy;

  [(ExtensionsPrimaryDetailsView *)self _updateTertiaryLabelContent];
}

- (void)updateLayout
{
  actionButtonStackView = [(ExtensionsPrimaryDetailsView *)self actionButtonStackView];
  arrangedSubviews = [actionButtonStackView arrangedSubviews];
  if ([arrangedSubviews count] < 2 || (-[ExtensionsPrimaryDetailsView frame](self, "frame"), floor(v5) > 320.0))
  {
    _buttonFont = [(ExtensionsPrimaryDetailsView *)self _buttonFont];
    if (_buttonFont)
    {
      v7 = _buttonFont;
      _buttonFont2 = [(ExtensionsPrimaryDetailsView *)self _buttonFont];
      [_buttonFont2 pointSize];
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
  actionButtonStackView2 = [(ExtensionsPrimaryDetailsView *)self actionButtonStackView];
  [actionButtonStackView2 setAxis:v11];

  [(ExtensionsPrimaryDetailsView *)self _updateTertiaryLabelContent];
}

- (id)_buttonFont
{
  arrangedSubviews = [(UIStackView *)self->_actionButtonStackView arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    arrangedSubviews2 = [(UIStackView *)self->_actionButtonStackView arrangedSubviews];
    lastObject = [arrangedSubviews2 lastObject];
    titleLabel = [lastObject titleLabel];
    font = [titleLabel font];
  }

  else
  {
    font = 0;
  }

  return font;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ExtensionsPrimaryDetailsView;
  [(ExtensionsPrimaryDetailsView *)&v3 layoutSubviews];
  [(ExtensionsPrimaryDetailsView *)self updateLayout];
}

- (void)configureWithActionButtons:(id)buttons
{
  buttonsCopy = buttons;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  actionButtonStackView = [(ExtensionsPrimaryDetailsView *)self actionButtonStackView];
  arrangedSubviews = [actionButtonStackView arrangedSubviews];

  v7 = [arrangedSubviews countByEnumeratingWithState:&v38 objects:v44 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v38 + 1) + 8 * i) removeFromSuperview];
      }

      v8 = [arrangedSubviews countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = buttonsCopy;
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
        titleLabel = [v15 titleLabel];
        [DynamicTypeWizard autorefreshLabel:titleLabel withFontProvider:&stru_10165DAA8];

        heightAnchor = [v15 heightAnchor];
        v18 = [heightAnchor constraintGreaterThanOrEqualToConstant:50.0];

        v19 = [DynamicTypeWizard autoscaledConstraint:v18 constant:&stru_10165DAA8 withFontProvider:50.0];
        v42 = v19;
        v20 = [NSArray arrayWithObjects:&v42 count:1];
        [NSLayoutConstraint activateConstraints:v20];

        actionButtonStackView2 = [(ExtensionsPrimaryDetailsView *)selfCopy actionButtonStackView];
        [actionButtonStackView2 addArrangedSubview:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v12);
  }

  actionButtonStackViewBottomConstraint = [(ExtensionsPrimaryDetailsView *)selfCopy actionButtonStackViewBottomConstraint];
  isActive = [actionButtonStackViewBottomConstraint isActive];

  actionButtonStackView3 = [(ExtensionsPrimaryDetailsView *)selfCopy actionButtonStackView];
  arrangedSubviews2 = [actionButtonStackView3 arrangedSubviews];
  v26 = [arrangedSubviews2 count];

  if (v26)
  {
    if ((isActive & 1) == 0)
    {
      v27 = 147.0;
      v28 = 40.0;
LABEL_20:
      actionButtonStackViewHeightConstraint = [(ExtensionsPrimaryDetailsView *)selfCopy actionButtonStackViewHeightConstraint];
      [actionButtonStackViewHeightConstraint setConstant:v28];

      actionButtonStackViewBottomConstraint2 = [(ExtensionsPrimaryDetailsView *)selfCopy actionButtonStackViewBottomConstraint];
      [actionButtonStackViewBottomConstraint2 setActive:v26 != 0];

      heightConstraint = [(ExtensionsPrimaryDetailsView *)selfCopy heightConstraint];
      [heightConstraint setConstant:v27];

      [(ExtensionsPrimaryDetailsView *)selfCopy setNeedsUpdateConstraints];
    }
  }

  else if (isActive)
  {
    v28 = 0.0;
    v27 = 100.0;
    goto LABEL_20;
  }

  [(ExtensionsPrimaryDetailsView *)selfCopy updateLayout];
}

- (void)contentViewDidLoad
{
  v21.receiver = self;
  v21.super_class = ExtensionsPrimaryDetailsView;
  [(NibView *)&v21 contentViewDidLoad];
  v3 = +[UIColor labelColor];
  titleLabel = [(ExtensionsPrimaryDetailsView *)self titleLabel];
  [titleLabel setTextColor:v3];

  v5 = +[UIColor secondaryLabelColor];
  subtitleLabel = [(ExtensionsPrimaryDetailsView *)self subtitleLabel];
  [subtitleLabel setTextColor:v5];

  v7 = +[UIColor labelColor];
  tertiaryLabel = [(ExtensionsPrimaryDetailsView *)self tertiaryLabel];
  [tertiaryLabel setTextColor:v7];

  titleLabel2 = [(ExtensionsPrimaryDetailsView *)self titleLabel];
  [DynamicTypeWizard autorefreshLabel:titleLabel2 withFontProvider:&stru_10165DA48];

  subtitleLabel2 = [(ExtensionsPrimaryDetailsView *)self subtitleLabel];
  [DynamicTypeWizard autorefreshLabel:subtitleLabel2 withFontProvider:&stru_10165D908];

  titleLabel3 = [(ExtensionsPrimaryDetailsView *)self titleLabel];
  [titleLabel3 setLineBreakMode:0];

  titleLabel4 = [(ExtensionsPrimaryDetailsView *)self titleLabel];
  [titleLabel4 setNumberOfLines:0];

  subtitleLabel3 = [(ExtensionsPrimaryDetailsView *)self subtitleLabel];
  [subtitleLabel3 setLineBreakMode:0];

  subtitleLabel4 = [(ExtensionsPrimaryDetailsView *)self subtitleLabel];
  [subtitleLabel4 setNumberOfLines:0];

  tertiaryLabel2 = [(ExtensionsPrimaryDetailsView *)self tertiaryLabel];
  [tertiaryLabel2 setLineBreakMode:0];

  tertiaryLabel3 = [(ExtensionsPrimaryDetailsView *)self tertiaryLabel];
  [tertiaryLabel3 setNumberOfLines:0];

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"updateLayout" name:UIContentSizeCategoryDidChangeNotification object:0];

  heightAnchor = [(ExtensionsPrimaryDetailsView *)self heightAnchor];
  v19 = [heightAnchor constraintGreaterThanOrEqualToConstant:147.0];
  [(ExtensionsPrimaryDetailsView *)self setHeightConstraint:v19];

  [(ExtensionsPrimaryDetailsView *)self _updateTertiaryLabelContent];
  heightConstraint = self->_heightConstraint;
  v20 = [NSArray arrayWithObjects:&heightConstraint count:1];
  [NSLayoutConstraint activateConstraints:v20];
}

@end