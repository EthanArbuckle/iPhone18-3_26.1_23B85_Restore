@interface ExtensionsSecondaryDetailsView
- (ExtensionsSecondaryDetailsView)initWithCoder:(id)coder;
- (ExtensionsSecondaryDetailsView)initWithFrame:(CGRect)frame;
- (id)_newLabelWithNumberOfLines:(int64_t)lines;
- (void)_commonInit;
- (void)_updateConstraints;
- (void)setDetailEntries:(id)entries;
- (void)setDisclaimerLabel:(id)label;
- (void)setInformationLabel:(id)label;
@end

@implementation ExtensionsSecondaryDetailsView

- (void)_updateConstraints
{
  constraints = self->_constraints;
  if (constraints && [(NSArray *)constraints count])
  {
    [NSLayoutConstraint deactivateConstraints:self->_constraints];
  }

  [(ExtensionsSecondaryDetailsView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_informationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_detailsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_disclaimerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  text = [(UILabel *)self->_informationLabel text];
  v5 = [text length];

  text2 = [(UILabel *)self->_disclaimerLabel text];
  v7 = [text2 length];

  v8 = [(NSArray *)self->_latestEntries count];
  topAnchor = [(UILabel *)self->_disclaimerLabel topAnchor];
  v49 = topAnchor;
  topAnchor2 = [(ExtensionsSecondaryDetailsView *)self topAnchor];
  v48 = topAnchor2;
  v11 = 41.0;
  if (v5)
  {
    v12 = 20.0;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  v13 = 5.0;
  if (v8)
  {
    v14 = 20.0;
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  if (v8)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v7)
  {
    v16 = 20.0;
  }

  else
  {
    v16 = 0.0;
  }

  if (v7)
  {
    v17 = v13;
  }

  else
  {
    v17 = v14;
  }

  v47 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v16];
  v50[0] = v47;
  leadingAnchor = [(UILabel *)self->_disclaimerLabel leadingAnchor];
  leadingAnchor2 = [(ExtensionsSecondaryDetailsView *)self leadingAnchor];
  v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v50[1] = v44;
  trailingAnchor = [(ExtensionsSecondaryDetailsView *)self trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_disclaimerLabel trailingAnchor];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  v50[2] = v41;
  topAnchor3 = [(UIStackView *)self->_detailsStackView topAnchor];
  bottomAnchor = [(UILabel *)self->_disclaimerLabel bottomAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:v17];
  v50[3] = v38;
  leadingAnchor3 = [(UIStackView *)self->_detailsStackView leadingAnchor];
  leadingAnchor4 = [(ExtensionsSecondaryDetailsView *)self leadingAnchor];
  v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v50[4] = v35;
  trailingAnchor3 = [(ExtensionsSecondaryDetailsView *)self trailingAnchor];
  trailingAnchor4 = [(UIStackView *)self->_detailsStackView trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
  v50[5] = v32;
  topAnchor4 = [(UILabel *)self->_informationLabel topAnchor];
  bottomAnchor2 = [(UIStackView *)self->_detailsStackView bottomAnchor];
  v29 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:v15];
  v50[6] = v29;
  leadingAnchor5 = [(UILabel *)self->_informationLabel leadingAnchor];
  leadingAnchor6 = [(ExtensionsSecondaryDetailsView *)self leadingAnchor];
  v19 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  v50[7] = v19;
  trailingAnchor5 = [(ExtensionsSecondaryDetailsView *)self trailingAnchor];
  trailingAnchor6 = [(UILabel *)self->_informationLabel trailingAnchor];
  v22 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:16.0];
  v50[8] = v22;
  bottomAnchor3 = [(ExtensionsSecondaryDetailsView *)self bottomAnchor];
  bottomAnchor4 = [(UILabel *)self->_informationLabel bottomAnchor];
  v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:20.0];
  v50[9] = v25;
  v26 = [NSArray arrayWithObjects:v50 count:10];
  v27 = self->_constraints;
  self->_constraints = v26;

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)setInformationLabel:(id)label
{
  objc_storeStrong(&self->_informationLabel, label);

  [(ExtensionsSecondaryDetailsView *)self _updateConstraints];
}

- (void)setDisclaimerLabel:(id)label
{
  objc_storeStrong(&self->_disclaimerLabel, label);

  [(ExtensionsSecondaryDetailsView *)self _updateConstraints];
}

- (void)setDetailEntries:(id)entries
{
  entriesCopy = entries;
  latestEntries = self->_latestEntries;
  if (!latestEntries || ([(NSArray *)latestEntries isEqual:entriesCopy]& 1) == 0)
  {
    v6 = [entriesCopy copy];
    v7 = self->_latestEntries;
    self->_latestEntries = v6;

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    arrangedSubviews = [(UIStackView *)self->_detailsStackView arrangedSubviews];
    v9 = [arrangedSubviews countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v61;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v61 != v11)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          v13 = *(*(&v60 + 1) + 8 * i);
          [(UIStackView *)self->_detailsStackView removeArrangedSubview:v13];
          [v13 removeFromSuperview];
        }

        v10 = [arrangedSubviews countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v10);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v35 = entriesCopy;
    obj = entriesCopy;
    v39 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v39)
    {
      v37 = *v57;
      selfCopy = self;
      do
      {
        v14 = 0;
        do
        {
          if (*v57 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v55 = v14;
          v15 = *(*(&v56 + 1) + 8 * v14);
          v16 = objc_alloc_init(UIView);
          v17 = +[UIApplication sharedApplication];
          userInterfaceLayoutDirection = [v17 userInterfaceLayoutDirection];
          v19 = userInterfaceLayoutDirection != 0;
          v20 = userInterfaceLayoutDirection == 0;

          v21 = [(ExtensionsSecondaryDetailsView *)self _newLabelWithNumberOfLines:1];
          [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
          title = [v15 title];
          [v21 setText:title];

          [v21 setTextAlignment:2 * v19];
          [v16 addSubview:v21];
          v23 = [(ExtensionsSecondaryDetailsView *)self _newLabelWithNumberOfLines:1];
          [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
          details = [v15 details];
          [v23 setText:details];

          [v23 setTextAlignment:2 * v20];
          [v16 addSubview:v23];
          LODWORD(v25) = 1144733696;
          [v21 setContentCompressionResistancePriority:0 forAxis:v25];
          LODWORD(v26) = 1144750080;
          [v23 setContentCompressionResistancePriority:0 forAxis:v26];
          topAnchor = [v21 topAnchor];
          topAnchor2 = [v16 topAnchor];
          v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v64[0] = v52;
          leadingAnchor = [v21 leadingAnchor];
          leadingAnchor2 = [v16 leadingAnchor];
          v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          v64[1] = v49;
          bottomAnchor = [v21 bottomAnchor];
          bottomAnchor2 = [v16 bottomAnchor];
          v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          v64[2] = v45;
          trailingAnchor = [v23 trailingAnchor];
          v47 = v16;
          trailingAnchor2 = [v16 trailingAnchor];
          v42 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
          v64[3] = v42;
          bottomAnchor3 = [v23 bottomAnchor];
          bottomAnchor4 = [v16 bottomAnchor];
          v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
          v64[4] = v27;
          firstBaselineAnchor = [v21 firstBaselineAnchor];
          firstBaselineAnchor2 = [v23 firstBaselineAnchor];
          v30 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
          v64[5] = v30;
          trailingAnchor3 = [v21 trailingAnchor];
          leadingAnchor3 = [v23 leadingAnchor];
          v33 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3];
          v64[6] = v33;
          v34 = [NSArray arrayWithObjects:v64 count:7];
          [NSLayoutConstraint activateConstraints:v34];

          self = selfCopy;
          [(UIStackView *)selfCopy->_detailsStackView addArrangedSubview:v47];

          v14 = v55 + 1;
        }

        while (v39 != (v55 + 1));
        v39 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v39);
    }

    [(ExtensionsSecondaryDetailsView *)self _updateConstraints];
    entriesCopy = v35;
  }
}

- (void)_commonInit
{
  [(ExtensionsSecondaryDetailsView *)self setLeftHairlineInset:16.0];
  [(ExtensionsSecondaryDetailsView *)self setRightHairlineInset:0.0];
  theme = [(ExtensionsSecondaryDetailsView *)self theme];
  hairlineColor = [theme hairlineColor];
  [(ExtensionsSecondaryDetailsView *)self setHairlineColor:hairlineColor];

  [(ExtensionsSecondaryDetailsView *)self setTopHairlineHidden:0];
  [(ExtensionsSecondaryDetailsView *)self setBottomHairlineHidden:1];
  v5 = objc_alloc_init(UIStackView);
  detailsStackView = self->_detailsStackView;
  self->_detailsStackView = v5;

  [(UIStackView *)self->_detailsStackView setAxis:1];
  [(UIStackView *)self->_detailsStackView setSpacing:5.0];
  [(ExtensionsSecondaryDetailsView *)self addSubview:self->_detailsStackView];
  v7 = [(ExtensionsSecondaryDetailsView *)self _newLabelWithNumberOfLines:0];
  informationLabel = self->_informationLabel;
  self->_informationLabel = v7;

  [(ExtensionsSecondaryDetailsView *)self addSubview:self->_informationLabel];
  v9 = [(ExtensionsSecondaryDetailsView *)self _newLabelWithNumberOfLines:0];
  disclaimerLabel = self->_disclaimerLabel;
  self->_disclaimerLabel = v9;

  [(ExtensionsSecondaryDetailsView *)self addSubview:self->_disclaimerLabel];

  [(ExtensionsSecondaryDetailsView *)self _updateConstraints];
}

- (id)_newLabelWithNumberOfLines:(int64_t)lines
{
  v4 = objc_alloc_init(UILabel);
  [v4 setNumberOfLines:lines];
  v5 = +[UIColor secondaryLabelColor];
  [v4 setTextColor:v5];

  [DynamicTypeWizard autorefreshLabel:v4 withFontProvider:&stru_10165D908];
  return v4;
}

- (ExtensionsSecondaryDetailsView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ExtensionsSecondaryDetailsView;
  v3 = [(ExtensionsSecondaryDetailsView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsSecondaryDetailsView *)v3 _commonInit];
  }

  return v4;
}

- (ExtensionsSecondaryDetailsView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ExtensionsSecondaryDetailsView;
  v3 = [(ExtensionsSecondaryDetailsView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ExtensionsSecondaryDetailsView *)v3 _commonInit];
  }

  return v4;
}

@end