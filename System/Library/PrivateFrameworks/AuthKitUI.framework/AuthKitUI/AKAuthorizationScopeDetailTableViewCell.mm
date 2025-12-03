@interface AKAuthorizationScopeDetailTableViewCell
- (AKAuthorizationScopeDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)minimumHeight;
- (id)_checkmarkCircleImage;
- (id)_checkmarkCircleImageViewChecked:(BOOL)checked;
- (id)_checkmarkImage;
- (id)_checkmarkImageView;
- (id)_circleImage;
- (id)_clearImage;
- (id)_newLabel;
- (id)_selectedCheckmarkCircleImageView;
- (id)_unselectedCheckmarkCircleImageView;
- (void)_setCheckMarkStyleLeadingChecked:(BOOL)checked;
- (void)_setCheckmarkStyleTrailingChecked:(BOOL)checked;
- (void)_setSeparatorIndentToMainLabel;
- (void)_setupLayout;
- (void)_setupScopeImageView;
- (void)_setupViews;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)checked;
- (void)setCheckmarkStyle:(unint64_t)style;
- (void)setMinimumHeight:(double)height;
- (void)setScopeImage:(id)image;
@end

@implementation AKAuthorizationScopeDetailTableViewCell

- (AKAuthorizationScopeDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = AKAuthorizationScopeDetailTableViewCell;
  selfCopy = [(AKAuthorizationScopeDetailTableViewCell *)&v7 initWithStyle:2 reuseIdentifier:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKAuthorizationScopeDetailTableViewCell *)selfCopy _setupViews];
    [(AKAuthorizationScopeDetailTableViewCell *)selfCopy _setupLayout];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_setupViews
{
  _newLabel = [(AKAuthorizationScopeDetailTableViewCell *)self _newLabel];
  scopeLabel = self->_scopeLabel;
  self->_scopeLabel = _newLabel;
  _newLabel2 = [(AKAuthorizationScopeDetailTableViewCell *)self _newLabel];
  mainLabel = self->_mainLabel;
  self->_mainLabel = _newLabel2;
  _newLabel3 = [(AKAuthorizationScopeDetailTableViewCell *)self _newLabel];
  mainDetailLabel = self->_mainDetailLabel;
  self->_mainDetailLabel = _newLabel3;
  v9 = +[AKAuthorizationAppearance scopeTitleFont];
  mainLabel = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabel];
  [(UILabel *)mainLabel setFont:v9];
  MEMORY[0x277D82BD8](mainLabel);
  v11 = +[AKAuthorizationAppearance scopeTitleTextColor];
  mainLabel2 = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabel];
  [(UILabel *)mainLabel2 setTextColor:v11];
  MEMORY[0x277D82BD8](mainLabel2);
  v13 = +[AKAuthorizationAppearance scopeSubtitleFont];
  mainDetailLabel = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
  [(UILabel *)mainDetailLabel setFont:v13];
  MEMORY[0x277D82BD8](mainDetailLabel);
  v15 = +[AKAuthorizationAppearance scopeSubtitleTextColor];
  mainDetailLabel2 = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
  [(UILabel *)mainDetailLabel2 setTextColor:v15];
  MEMORY[0x277D82BD8](mainDetailLabel2);
  v17 = +[AKAuthorizationAppearance scopeInfoLabelFont];
  scopeLabel = [(AKAuthorizationScopeDetailTableViewCell *)self scopeLabel];
  [(UILabel *)scopeLabel setFont:v17];
  MEMORY[0x277D82BD8](scopeLabel);
  v19 = +[AKAuthorizationAppearance scopeInfoLabelTextColor];
  scopeLabel2 = [(AKAuthorizationScopeDetailTableViewCell *)self scopeLabel];
  [(UILabel *)scopeLabel2 setTextColor:v19];
  MEMORY[0x277D82BD8](scopeLabel2);
  v20 = +[AKAuthorizationAppearance scopeRowBackgroundColor];
  [(AKAuthorizationScopeDetailTableViewCell *)self setBackgroundColor:?];
  [(AKAuthorizationScopeDetailTableViewCell *)self _setupScopeImageView];
  [(AKAuthorizationScopeDetailTableViewCell *)self setSelectionStyle:2];
}

- (void)_setupLayout
{
  v115[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v112[1] = a2;
  v2 = objc_alloc_init(MEMORY[0x277D756D0]);
  mainGuide = selfCopy->_mainGuide;
  selfCopy->_mainGuide = v2;
  MEMORY[0x277D82BD8](mainGuide);
  v4 = objc_alloc_init(MEMORY[0x277D756D0]);
  mainLabelFirstLineGuide = selfCopy->_mainLabelFirstLineGuide;
  selfCopy->_mainLabelFirstLineGuide = v4;
  MEMORY[0x277D82BD8](mainLabelFirstLineGuide);
  v6 = objc_alloc_init(MEMORY[0x277D756D0]);
  scopeLabelFirstLineGuide = selfCopy->_scopeLabelFirstLineGuide;
  selfCopy->_scopeLabelFirstLineGuide = v6;
  contentView = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  mainGuide = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainGuide];
  [contentView addLayoutGuide:?];
  MEMORY[0x277D82BD8](mainGuide);
  contentView2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  mainLabelFirstLineGuide = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabelFirstLineGuide];
  [contentView2 addLayoutGuide:?];
  MEMORY[0x277D82BD8](mainLabelFirstLineGuide);
  contentView3 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  scopeLabelFirstLineGuide = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeLabelFirstLineGuide];
  [contentView3 addLayoutGuide:?];
  MEMORY[0x277D82BD8](scopeLabelFirstLineGuide);
  v112[0] = [MEMORY[0x277CBEB18] array];
  contentView4 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  heightAnchor = [contentView4 heightAnchor];
  v8 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
  minimumHeightConstraint = selfCopy->_minimumHeightConstraint;
  selfCopy->_minimumHeightConstraint = v8;
  MEMORY[0x277D82BD8](minimumHeightConstraint);
  MEMORY[0x277D82BD8](heightAnchor);
  *&v10 = MEMORY[0x277D82BD8](contentView4).n128_u64[0];
  v27 = v112[0];
  scopeImageView = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  leadingAnchor = [(UIImageView *)scopeImageView leadingAnchor];
  contentView5 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  +[AKAuthorizationSubPaneMetrics scopeImageViewLeadingSpacing];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v115[0] = v40;
  scopeImageView2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  widthAnchor = [(UIImageView *)scopeImageView2 widthAnchor];
  +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
  v37 = [widthAnchor constraintEqualToConstant:?];
  v115[1] = v37;
  scopeImageView3 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  heightAnchor2 = [(UIImageView *)scopeImageView3 heightAnchor];
  +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
  v34 = [heightAnchor2 constraintEqualToConstant:?];
  v115[2] = v34;
  scopeImageView4 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  topAnchor = [(UIImageView *)scopeImageView4 topAnchor];
  contentView6 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  topAnchor2 = [contentView6 topAnchor];
  +[AKAuthorizationSubPaneMetrics scopeImageViewTopSpacing];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v115[3] = v29;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:4];
  [v27 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](contentView6);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](scopeImageView4);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](scopeImageView3);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](scopeImageView2);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](contentView5);
  MEMORY[0x277D82BD8](leadingAnchor);
  *&v11 = MEMORY[0x277D82BD8](scopeImageView).n128_u64[0];
  mainLabel = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  leadingAnchor3 = [(UILabel *)mainLabel leadingAnchor];
  scopeImageView5 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  trailingAnchor = [(UIImageView *)scopeImageView5 trailingAnchor];
  +[AKAuthorizationSubPaneMetrics scopeTitleLabelLeadingSpacing];
  v12 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];
  mainLabelLeadingConstraint = selfCopy->_mainLabelLeadingConstraint;
  selfCopy->_mainLabelLeadingConstraint = v12;
  MEMORY[0x277D82BD8](mainLabelLeadingConstraint);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](scopeImageView5);
  MEMORY[0x277D82BD8](leadingAnchor3);
  *&v14 = MEMORY[0x277D82BD8](mainLabel).n128_u64[0];
  mainLabel2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  leadingAnchor4 = [(UILabel *)mainLabel2 leadingAnchor];
  scopeImageView6 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeImageView];
  leadingAnchor5 = [(UIImageView *)scopeImageView6 leadingAnchor];
  v15 = [leadingAnchor4 constraintEqualToAnchor:?];
  mainLabelWithoutImageLeadingConstraint = selfCopy->_mainLabelWithoutImageLeadingConstraint;
  selfCopy->_mainLabelWithoutImageLeadingConstraint = v15;
  MEMORY[0x277D82BD8](mainLabelWithoutImageLeadingConstraint);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](scopeImageView6);
  MEMORY[0x277D82BD8](leadingAnchor4);
  *&v17 = MEMORY[0x277D82BD8](mainLabel2).n128_u64[0];
  v53 = v112[0];
  minimumHeightConstraint = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy minimumHeightConstraint];
  v114[0] = minimumHeightConstraint;
  mainLabel3 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  topAnchor3 = [(UILabel *)mainLabel3 topAnchor];
  mainGuide2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainGuide];
  topAnchor4 = [(UILayoutGuide *)mainGuide2 topAnchor];
  v106 = [topAnchor3 constraintEqualToAnchor:?];
  v114[1] = v106;
  mainLabel4 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  bottomAnchor = [(UILabel *)mainLabel4 bottomAnchor];
  mainDetailLabel = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainDetailLabel];
  topAnchor5 = [(UILabel *)mainDetailLabel topAnchor];
  v101 = [bottomAnchor constraintEqualToAnchor:?];
  v114[2] = v101;
  mainDetailLabel2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainDetailLabel];
  bottomAnchor2 = [(UILabel *)mainDetailLabel2 bottomAnchor];
  mainGuide3 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainGuide];
  bottomAnchor3 = [(UILayoutGuide *)mainGuide3 bottomAnchor];
  v96 = [bottomAnchor2 constraintEqualToAnchor:?];
  v114[3] = v96;
  mainDetailLabel3 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainDetailLabel];
  leadingAnchor6 = [(UILabel *)mainDetailLabel3 leadingAnchor];
  mainLabel5 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  leadingAnchor7 = [(UILabel *)mainLabel5 leadingAnchor];
  v91 = [leadingAnchor6 constraintEqualToAnchor:?];
  v114[4] = v91;
  mainDetailLabel4 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainDetailLabel];
  trailingAnchor2 = [(UILabel *)mainDetailLabel4 trailingAnchor];
  mainLabel6 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  trailingAnchor3 = [(UILabel *)mainLabel6 trailingAnchor];
  v86 = [trailingAnchor2 constraintEqualToAnchor:?];
  v114[5] = v86;
  mainGuide4 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainGuide];
  centerYAnchor = [(UILayoutGuide *)mainGuide4 centerYAnchor];
  contentView7 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  centerYAnchor2 = [contentView7 centerYAnchor];
  v81 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
  v114[6] = v81;
  mainLabel7 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  firstBaselineAnchor = [(UILabel *)mainLabel7 firstBaselineAnchor];
  contentView8 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  topAnchor6 = [contentView8 topAnchor];
  v76 = [firstBaselineAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:? multiplier:?];
  v114[7] = v76;
  contentView9 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  bottomAnchor4 = [contentView9 bottomAnchor];
  mainDetailLabel5 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainDetailLabel];
  lastBaselineAnchor = [(UILabel *)mainDetailLabel5 lastBaselineAnchor];
  v71 = [bottomAnchor4 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  v114[8] = v71;
  mainLabelLeadingConstraint = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabelLeadingConstraint];
  v114[9] = mainLabelLeadingConstraint;
  mainLabel8 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  trailingAnchor4 = [(UILabel *)mainLabel8 trailingAnchor];
  contentView10 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  trailingAnchor5 = [contentView10 trailingAnchor];
  v65 = [trailingAnchor4 constraintEqualToAnchor:-16.0 constant:?];
  v114[10] = v65;
  mainLabelFirstLineGuide2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabelFirstLineGuide];
  bottomAnchor5 = [(UILayoutGuide *)mainLabelFirstLineGuide2 bottomAnchor];
  mainLabel9 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  firstBaselineAnchor2 = [(UILabel *)mainLabel9 firstBaselineAnchor];
  v60 = [(NSLayoutYAxisAnchor *)bottomAnchor5 constraintEqualToAnchor:?];
  v114[11] = v60;
  mainLabelFirstLineGuide3 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabelFirstLineGuide];
  heightAnchor3 = [(UILayoutGuide *)mainLabelFirstLineGuide3 heightAnchor];
  mainLabel10 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
  font = [(UILabel *)mainLabel10 font];
  [(UIFont *)font capHeight];
  v55 = [(NSLayoutDimension *)heightAnchor3 constraintEqualToConstant:?];
  v114[12] = v55;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:13];
  [v53 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](font);
  MEMORY[0x277D82BD8](mainLabel10);
  MEMORY[0x277D82BD8](heightAnchor3);
  MEMORY[0x277D82BD8](mainLabelFirstLineGuide3);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](firstBaselineAnchor2);
  MEMORY[0x277D82BD8](mainLabel9);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](mainLabelFirstLineGuide2);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](contentView10);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](mainLabel8);
  MEMORY[0x277D82BD8](mainLabelLeadingConstraint);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](lastBaselineAnchor);
  MEMORY[0x277D82BD8](mainDetailLabel5);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](contentView9);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](topAnchor6);
  MEMORY[0x277D82BD8](contentView8);
  MEMORY[0x277D82BD8](firstBaselineAnchor);
  MEMORY[0x277D82BD8](mainLabel7);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](contentView7);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](mainGuide4);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](mainLabel6);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](mainDetailLabel4);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](mainLabel5);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](mainDetailLabel3);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](mainGuide3);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](mainDetailLabel2);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](topAnchor5);
  MEMORY[0x277D82BD8](mainDetailLabel);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](mainLabel4);
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](mainGuide2);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](mainLabel3);
  *&v18 = MEMORY[0x277D82BD8](minimumHeightConstraint).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v112[0], v18}];
  objc_storeStrong(v112, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_newLabel
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = objc_alloc_init(MEMORY[0x277D756B8]);
  [v5[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5[0] setNumberOfLines:0];
  contentView = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
  [contentView addSubview:v5[0]];
  MEMORY[0x277D82BD8](contentView);
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)_setupScopeImageView
{
  v2 = objc_alloc_init(MEMORY[0x277D755E8]);
  scopeImageView = self->_scopeImageView;
  self->_scopeImageView = v2;
  v5 = +[AKAuthorizationAppearance scopeImageViewBackgroundColor];
  [(UIImageView *)self->_scopeImageView setBackgroundColor:?];
  [(UIImageView *)self->_scopeImageView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](v5).n128_f64[0]];
  +[AKAuthorizationSubPaneMetrics scopeImageViewCornerRadius];
  v6 = v4;
  layer = [(UIImageView *)self->_scopeImageView layer];
  [layer setCornerRadius:v6];
  v8 = +[AKAuthorizationAppearance scopeImageViewTintColor];
  [(UIImageView *)self->_scopeImageView setTintColor:?];
  [(UIImageView *)self->_scopeImageView setContentMode:4, MEMORY[0x277D82BD8](v8).n128_f64[0]];
  [(UIImageView *)self->_scopeImageView setHidden:1];
  contentView = [(AKAuthorizationScopeDetailTableViewCell *)self contentView];
  [contentView addSubview:self->_scopeImageView];
  MEMORY[0x277D82BD8](contentView);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v26 = a2;
  v25.receiver = self;
  v25.super_class = AKAuthorizationScopeDetailTableViewCell;
  [(AKAuthorizationScopeDetailTableViewCell *)&v25 layoutSubviews];
  _isLTR = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy _isLTR];
  v3 = 2;
  if (!_isLTR)
  {
    v3 = 0;
  }

  v18 = v3;
  scopeLabel = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy scopeLabel];
  [(UILabel *)scopeLabel setTextAlignment:v18];
  *&v4 = MEMORY[0x277D82BD8](scopeLabel).n128_u64[0];
  leadingCheckmarkView = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy leadingCheckmarkView];
  MEMORY[0x277D82BD8](leadingCheckmarkView);
  if (leadingCheckmarkView)
  {
    leadingCheckmarkView2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy leadingCheckmarkView];
    [(UIImageView *)leadingCheckmarkView2 frame];
    v23 = v5;
    v24 = v6;
    *&v7 = MEMORY[0x277D82BD8](leadingCheckmarkView2).n128_u64[0];
    contentView = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy contentView];
    [contentView frame];
    v22 = CGRectGetMidY(v28) - v23 / 2.0;
    *&v8 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
    if ([(AKAuthorizationScopeDetailTableViewCell *)selfCopy _isLTR])
    {
      mainLabel = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
      [(UILabel *)mainLabel frame];
      MinX = CGRectGetMinX(v29);
      +[AKAuthorizationSubPaneMetrics checkmarkToLabelSpacing];
      v21 = MinX - v9 - v23;
      MEMORY[0x277D82BD8](mainLabel);
    }

    else
    {
      mainLabel2 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy mainLabel];
      [(UILabel *)mainLabel2 frame];
      MaxX = CGRectGetMaxX(v30);
      +[AKAuthorizationSubPaneMetrics checkmarkToLabelSpacing];
      v21 = MaxX + v10;
      MEMORY[0x277D82BD8](mainLabel2);
    }

    leadingCheckmarkView3 = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy leadingCheckmarkView];
    [(UIImageView *)leadingCheckmarkView3 setFrame:v21, v22, v23, v24];
    MEMORY[0x277D82BD8](leadingCheckmarkView3);
  }
}

- (void)_setSeparatorIndentToMainLabel
{
  [(AKAuthorizationScopeDetailTableViewCell *)self separatorInset];
  v6 = v2;
  v7 = v3;
  v8 = v4;
  +[AKAuthorizationSubPaneMetrics separatorInset];
  [(AKAuthorizationScopeDetailTableViewCell *)self setSeparatorInset:v6, v5, v7, v8];
}

- (double)minimumHeight
{
  minimumHeightConstraint = [(AKAuthorizationScopeDetailTableViewCell *)self minimumHeightConstraint];
  [(NSLayoutConstraint *)minimumHeightConstraint constant];
  v5 = v2;
  MEMORY[0x277D82BD8](minimumHeightConstraint);
  return v5;
}

- (void)setMinimumHeight:(double)height
{
  minimumHeightConstraint = [(AKAuthorizationScopeDetailTableViewCell *)self minimumHeightConstraint];
  [(NSLayoutConstraint *)minimumHeightConstraint setConstant:height];
  MEMORY[0x277D82BD8](minimumHeightConstraint);
}

- (void)setCheckmarkStyle:(unint64_t)style
{
  if ([(AKAuthorizationScopeDetailTableViewCell *)self internalCheckmarkStyle]!= style)
  {
    internalCheckmarkStyle = [(AKAuthorizationScopeDetailTableViewCell *)self internalCheckmarkStyle];
    if (internalCheckmarkStyle)
    {
      if (internalCheckmarkStyle == 1)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckMarkStyleLeadingChecked:0];
        +[AKAuthorizationSubPaneMetrics scopeTitleLabelLeadingSpacing];
        v5 = v3;
        mainLabelLeadingConstraint = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabelLeadingConstraint];
        [(NSLayoutConstraint *)mainLabelLeadingConstraint setConstant:v5];
        MEMORY[0x277D82BD8](mainLabelLeadingConstraint);
      }

      else if (internalCheckmarkStyle == 2)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self setAccessoryType:0];
      }
    }

    [(AKAuthorizationScopeDetailTableViewCell *)self setInternalCheckmarkStyle:style];
    if (style)
    {
      if (style == 1)
      {
        mainLabelLeadingConstraint2 = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabelLeadingConstraint];
        [(NSLayoutConstraint *)mainLabelLeadingConstraint2 setConstant:40.0];
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckMarkStyleLeadingChecked:[(AKAuthorizationScopeDetailTableViewCell *)self isChecked]];
      }

      else if (style == 2)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckmarkStyleTrailingChecked:[(AKAuthorizationScopeDetailTableViewCell *)self isChecked]];
      }
    }
  }
}

- (void)setChecked:(BOOL)checked
{
  if ([(AKAuthorizationScopeDetailTableViewCell *)self internalIsChecked]!= checked)
  {
    [(AKAuthorizationScopeDetailTableViewCell *)self setInternalChecked:checked];
    checkmarkStyle = [(AKAuthorizationScopeDetailTableViewCell *)self checkmarkStyle];
    if (checkmarkStyle)
    {
      if (checkmarkStyle == 1)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckMarkStyleLeadingChecked:checked];
      }

      else if (checkmarkStyle == 2)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckmarkStyleTrailingChecked:checked];
      }
    }
  }
}

- (void)_setCheckMarkStyleLeadingChecked:(BOOL)checked
{
  v9 = 0;
  v8 = 0;
  if (checked)
  {
    leadingCheckmarkView = [(AKAuthorizationScopeDetailTableViewCell *)self leadingCheckmarkView];
    v9 = 1;
    v8 = leadingCheckmarkView == 0;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](leadingCheckmarkView);
  }

  if (v8)
  {
    _checkmarkImageView = [(AKAuthorizationScopeDetailTableViewCell *)self _checkmarkImageView];
    leadingCheckmarkView = self->_leadingCheckmarkView;
    self->_leadingCheckmarkView = _checkmarkImageView;
    contentView = [(AKAuthorizationScopeDetailTableViewCell *)self contentView];
    leadingCheckmarkView2 = [(AKAuthorizationScopeDetailTableViewCell *)self leadingCheckmarkView];
    [contentView addSubview:?];
    MEMORY[0x277D82BD8](leadingCheckmarkView2);
    MEMORY[0x277D82BD8](contentView);
  }

  else
  {
    leadingCheckmarkView3 = [(AKAuthorizationScopeDetailTableViewCell *)self leadingCheckmarkView];
    [(UIImageView *)leadingCheckmarkView3 removeFromSuperview];
    MEMORY[0x277D82BD8](leadingCheckmarkView3);
    objc_storeStrong(&self->_leadingCheckmarkView, 0);
  }
}

- (void)_setCheckmarkStyleTrailingChecked:(BOOL)checked
{
  v3 = [(AKAuthorizationScopeDetailTableViewCell *)self _checkmarkCircleImageViewChecked:checked];
  [(AKAuthorizationScopeDetailTableViewCell *)self setAccessoryView:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)setScopeImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  objc_storeStrong(&selfCopy->_scopeImage, location[0]);
  if (selfCopy->_scopeImage)
  {
    [(UIImageView *)selfCopy->_scopeImageView setImage:location[0]];
    [(UIImageView *)selfCopy->_scopeImageView setHidden:0];
  }

  else
  {
    [(UIImageView *)selfCopy->_scopeImageView setHidden:1];
  }

  [(AKAuthorizationScopeDetailTableViewCell *)selfCopy setNeedsLayout];
  [(AKAuthorizationScopeDetailTableViewCell *)selfCopy layoutIfNeeded];
  objc_storeStrong(location, 0);
}

- (id)_checkmarkImageView
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  _checkmarkImage = [(AKAuthorizationScopeDetailTableViewCell *)self _checkmarkImage];
  v5 = [v3 initWithImage:?];
  MEMORY[0x277D82BD8](_checkmarkImage);

  return v5;
}

- (id)_checkmarkCircleImageViewChecked:(BOOL)checked
{
  if (checked)
  {
    _selectedCheckmarkCircleImageView = [(AKAuthorizationScopeDetailTableViewCell *)self _selectedCheckmarkCircleImageView];
  }

  else
  {
    _selectedCheckmarkCircleImageView = [(AKAuthorizationScopeDetailTableViewCell *)self _unselectedCheckmarkCircleImageView];
  }

  return _selectedCheckmarkCircleImageView;
}

- (id)_selectedCheckmarkCircleImageView
{
  selfCopy = self;
  v10[1] = a2;
  v7 = objc_alloc(MEMORY[0x277D755E8]);
  _checkmarkCircleImage = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy _checkmarkCircleImage];
  v10[0] = [v7 initWithImage:?];
  +[AKAuthorizationSubPaneMetrics accessoryViewSize];
  +[AKAuthorizationSubPaneMetrics accessoryViewSize];
  CGRectMake_8();
  [v10[0] setFrame:{v2, v3, v4, v5}];
  v9 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v9;
}

- (id)_unselectedCheckmarkCircleImageView
{
  selfCopy = self;
  v11[1] = a2;
  v7 = objc_alloc(MEMORY[0x277D755E8]);
  _circleImage = [(AKAuthorizationScopeDetailTableViewCell *)selfCopy _circleImage];
  v11[0] = [v7 initWithImage:?];
  v9 = +[AKAuthorizationAppearance checkmarkDeselectedTintColor];
  [v11[0] setTintColor:?];
  +[AKAuthorizationSubPaneMetrics accessoryViewSize];
  +[AKAuthorizationSubPaneMetrics accessoryViewSize];
  CGRectMake_8();
  [v11[0] setFrame:{v2, v3, v4, v5}];
  v10 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(v11, 0);

  return v10;
}

- (id)_clearImage
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_circleImage
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x277D755B8] systemImageNamed:@"circle"];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_checkmarkCircleImage
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_checkmarkImage
{
  v6[2] = self;
  v6[1] = a2;
  v3 = MEMORY[0x277D755B8];
  v4 = +[AKAuthorizationAppearance emailSelectionSymbolConfiguration];
  v6[0] = [v3 systemImageNamed:@"checkmark" withConfiguration:?];
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

@end