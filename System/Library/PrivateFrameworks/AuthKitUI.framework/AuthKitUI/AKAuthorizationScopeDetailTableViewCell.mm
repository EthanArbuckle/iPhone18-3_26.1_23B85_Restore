@interface AKAuthorizationScopeDetailTableViewCell
- (AKAuthorizationScopeDetailTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)minimumHeight;
- (id)_checkmarkCircleImage;
- (id)_checkmarkCircleImageViewChecked:(BOOL)a3;
- (id)_checkmarkImage;
- (id)_checkmarkImageView;
- (id)_circleImage;
- (id)_clearImage;
- (id)_newLabel;
- (id)_selectedCheckmarkCircleImageView;
- (id)_unselectedCheckmarkCircleImageView;
- (void)_setCheckMarkStyleLeadingChecked:(BOOL)a3;
- (void)_setCheckmarkStyleTrailingChecked:(BOOL)a3;
- (void)_setSeparatorIndentToMainLabel;
- (void)_setupLayout;
- (void)_setupScopeImageView;
- (void)_setupViews;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)a3;
- (void)setCheckmarkStyle:(unint64_t)a3;
- (void)setMinimumHeight:(double)a3;
- (void)setScopeImage:(id)a3;
@end

@implementation AKAuthorizationScopeDetailTableViewCell

- (AKAuthorizationScopeDetailTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v4 = v9;
  v9 = 0;
  v7.receiver = v4;
  v7.super_class = AKAuthorizationScopeDetailTableViewCell;
  v9 = [(AKAuthorizationScopeDetailTableViewCell *)&v7 initWithStyle:2 reuseIdentifier:location[0]];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    [(AKAuthorizationScopeDetailTableViewCell *)v9 _setupViews];
    [(AKAuthorizationScopeDetailTableViewCell *)v9 _setupLayout];
  }

  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v6;
}

- (void)_setupViews
{
  v2 = [(AKAuthorizationScopeDetailTableViewCell *)self _newLabel];
  scopeLabel = self->_scopeLabel;
  self->_scopeLabel = v2;
  v4 = [(AKAuthorizationScopeDetailTableViewCell *)self _newLabel];
  mainLabel = self->_mainLabel;
  self->_mainLabel = v4;
  v6 = [(AKAuthorizationScopeDetailTableViewCell *)self _newLabel];
  mainDetailLabel = self->_mainDetailLabel;
  self->_mainDetailLabel = v6;
  v9 = +[AKAuthorizationAppearance scopeTitleFont];
  v8 = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabel];
  [(UILabel *)v8 setFont:v9];
  MEMORY[0x277D82BD8](v8);
  v11 = +[AKAuthorizationAppearance scopeTitleTextColor];
  v10 = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabel];
  [(UILabel *)v10 setTextColor:v11];
  MEMORY[0x277D82BD8](v10);
  v13 = +[AKAuthorizationAppearance scopeSubtitleFont];
  v12 = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
  [(UILabel *)v12 setFont:v13];
  MEMORY[0x277D82BD8](v12);
  v15 = +[AKAuthorizationAppearance scopeSubtitleTextColor];
  v14 = [(AKAuthorizationScopeDetailTableViewCell *)self mainDetailLabel];
  [(UILabel *)v14 setTextColor:v15];
  MEMORY[0x277D82BD8](v14);
  v17 = +[AKAuthorizationAppearance scopeInfoLabelFont];
  v16 = [(AKAuthorizationScopeDetailTableViewCell *)self scopeLabel];
  [(UILabel *)v16 setFont:v17];
  MEMORY[0x277D82BD8](v16);
  v19 = +[AKAuthorizationAppearance scopeInfoLabelTextColor];
  v18 = [(AKAuthorizationScopeDetailTableViewCell *)self scopeLabel];
  [(UILabel *)v18 setTextColor:v19];
  MEMORY[0x277D82BD8](v18);
  v20 = +[AKAuthorizationAppearance scopeRowBackgroundColor];
  [(AKAuthorizationScopeDetailTableViewCell *)self setBackgroundColor:?];
  [(AKAuthorizationScopeDetailTableViewCell *)self _setupScopeImageView];
  [(AKAuthorizationScopeDetailTableViewCell *)self setSelectionStyle:2];
}

- (void)_setupLayout
{
  v115[4] = *MEMORY[0x277D85DE8];
  v113 = self;
  v112[1] = a2;
  v2 = objc_alloc_init(MEMORY[0x277D756D0]);
  mainGuide = v113->_mainGuide;
  v113->_mainGuide = v2;
  MEMORY[0x277D82BD8](mainGuide);
  v4 = objc_alloc_init(MEMORY[0x277D756D0]);
  mainLabelFirstLineGuide = v113->_mainLabelFirstLineGuide;
  v113->_mainLabelFirstLineGuide = v4;
  MEMORY[0x277D82BD8](mainLabelFirstLineGuide);
  v6 = objc_alloc_init(MEMORY[0x277D756D0]);
  scopeLabelFirstLineGuide = v113->_scopeLabelFirstLineGuide;
  v113->_scopeLabelFirstLineGuide = v6;
  v20 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v19 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainGuide];
  [v20 addLayoutGuide:?];
  MEMORY[0x277D82BD8](v19);
  v22 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v21 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabelFirstLineGuide];
  [v22 addLayoutGuide:?];
  MEMORY[0x277D82BD8](v21);
  v24 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v23 = [(AKAuthorizationScopeDetailTableViewCell *)v113 scopeLabelFirstLineGuide];
  [v24 addLayoutGuide:?];
  MEMORY[0x277D82BD8](v23);
  v112[0] = [MEMORY[0x277CBEB18] array];
  v26 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v25 = [v26 heightAnchor];
  v8 = [v25 constraintGreaterThanOrEqualToConstant:0.0];
  minimumHeightConstraint = v113->_minimumHeightConstraint;
  v113->_minimumHeightConstraint = v8;
  MEMORY[0x277D82BD8](minimumHeightConstraint);
  MEMORY[0x277D82BD8](v25);
  *&v10 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  v27 = v112[0];
  v44 = [(AKAuthorizationScopeDetailTableViewCell *)v113 scopeImageView];
  v43 = [(UIImageView *)v44 leadingAnchor];
  v42 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v41 = [v42 leadingAnchor];
  +[AKAuthorizationSubPaneMetrics scopeImageViewLeadingSpacing];
  v40 = [v43 constraintEqualToAnchor:v41 constant:?];
  v115[0] = v40;
  v39 = [(AKAuthorizationScopeDetailTableViewCell *)v113 scopeImageView];
  v38 = [(UIImageView *)v39 widthAnchor];
  +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
  v37 = [v38 constraintEqualToConstant:?];
  v115[1] = v37;
  v36 = [(AKAuthorizationScopeDetailTableViewCell *)v113 scopeImageView];
  v35 = [(UIImageView *)v36 heightAnchor];
  +[AKAuthorizationSubPaneMetrics scopeImageViewSize];
  v34 = [v35 constraintEqualToConstant:?];
  v115[2] = v34;
  v33 = [(AKAuthorizationScopeDetailTableViewCell *)v113 scopeImageView];
  v32 = [(UIImageView *)v33 topAnchor];
  v31 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v30 = [v31 topAnchor];
  +[AKAuthorizationSubPaneMetrics scopeImageViewTopSpacing];
  v29 = [v32 constraintEqualToAnchor:v30 constant:?];
  v115[3] = v29;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:4];
  [v27 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  *&v11 = MEMORY[0x277D82BD8](v44).n128_u64[0];
  v48 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v47 = [(UILabel *)v48 leadingAnchor];
  v46 = [(AKAuthorizationScopeDetailTableViewCell *)v113 scopeImageView];
  v45 = [(UIImageView *)v46 trailingAnchor];
  +[AKAuthorizationSubPaneMetrics scopeTitleLabelLeadingSpacing];
  v12 = [v47 constraintEqualToAnchor:v45 constant:?];
  mainLabelLeadingConstraint = v113->_mainLabelLeadingConstraint;
  v113->_mainLabelLeadingConstraint = v12;
  MEMORY[0x277D82BD8](mainLabelLeadingConstraint);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  *&v14 = MEMORY[0x277D82BD8](v48).n128_u64[0];
  v52 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v51 = [(UILabel *)v52 leadingAnchor];
  v50 = [(AKAuthorizationScopeDetailTableViewCell *)v113 scopeImageView];
  v49 = [(UIImageView *)v50 leadingAnchor];
  v15 = [v51 constraintEqualToAnchor:?];
  mainLabelWithoutImageLeadingConstraint = v113->_mainLabelWithoutImageLeadingConstraint;
  v113->_mainLabelWithoutImageLeadingConstraint = v15;
  MEMORY[0x277D82BD8](mainLabelWithoutImageLeadingConstraint);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  *&v17 = MEMORY[0x277D82BD8](v52).n128_u64[0];
  v53 = v112[0];
  v111 = [(AKAuthorizationScopeDetailTableViewCell *)v113 minimumHeightConstraint];
  v114[0] = v111;
  v110 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v109 = [(UILabel *)v110 topAnchor];
  v108 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainGuide];
  v107 = [(UILayoutGuide *)v108 topAnchor];
  v106 = [v109 constraintEqualToAnchor:?];
  v114[1] = v106;
  v105 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v104 = [(UILabel *)v105 bottomAnchor];
  v103 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainDetailLabel];
  v102 = [(UILabel *)v103 topAnchor];
  v101 = [v104 constraintEqualToAnchor:?];
  v114[2] = v101;
  v100 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainDetailLabel];
  v99 = [(UILabel *)v100 bottomAnchor];
  v98 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainGuide];
  v97 = [(UILayoutGuide *)v98 bottomAnchor];
  v96 = [v99 constraintEqualToAnchor:?];
  v114[3] = v96;
  v95 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainDetailLabel];
  v94 = [(UILabel *)v95 leadingAnchor];
  v93 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v92 = [(UILabel *)v93 leadingAnchor];
  v91 = [v94 constraintEqualToAnchor:?];
  v114[4] = v91;
  v90 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainDetailLabel];
  v89 = [(UILabel *)v90 trailingAnchor];
  v88 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v87 = [(UILabel *)v88 trailingAnchor];
  v86 = [v89 constraintEqualToAnchor:?];
  v114[5] = v86;
  v85 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainGuide];
  v84 = [(UILayoutGuide *)v85 centerYAnchor];
  v83 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v82 = [v83 centerYAnchor];
  v81 = [(NSLayoutYAxisAnchor *)v84 constraintEqualToAnchor:?];
  v114[6] = v81;
  v80 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v79 = [(UILabel *)v80 firstBaselineAnchor];
  v78 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v77 = [v78 topAnchor];
  v76 = [v79 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:? multiplier:?];
  v114[7] = v76;
  v75 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v74 = [v75 bottomAnchor];
  v73 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainDetailLabel];
  v72 = [(UILabel *)v73 lastBaselineAnchor];
  v71 = [v74 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  v114[8] = v71;
  v70 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabelLeadingConstraint];
  v114[9] = v70;
  v69 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v68 = [(UILabel *)v69 trailingAnchor];
  v67 = [(AKAuthorizationScopeDetailTableViewCell *)v113 contentView];
  v66 = [v67 trailingAnchor];
  v65 = [v68 constraintEqualToAnchor:-16.0 constant:?];
  v114[10] = v65;
  v64 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabelFirstLineGuide];
  v63 = [(UILayoutGuide *)v64 bottomAnchor];
  v62 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v61 = [(UILabel *)v62 firstBaselineAnchor];
  v60 = [(NSLayoutYAxisAnchor *)v63 constraintEqualToAnchor:?];
  v114[11] = v60;
  v59 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabelFirstLineGuide];
  v58 = [(UILayoutGuide *)v59 heightAnchor];
  v57 = [(AKAuthorizationScopeDetailTableViewCell *)v113 mainLabel];
  v56 = [(UILabel *)v57 font];
  [(UIFont *)v56 capHeight];
  v55 = [(NSLayoutDimension *)v58 constraintEqualToConstant:?];
  v114[12] = v55;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:13];
  [v53 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](v92);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  MEMORY[0x277D82BD8](v104);
  MEMORY[0x277D82BD8](v105);
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](v107);
  MEMORY[0x277D82BD8](v108);
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](v110);
  *&v18 = MEMORY[0x277D82BD8](v111).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v112[0], v18}];
  objc_storeStrong(v112, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_newLabel
{
  v6 = self;
  v5[1] = a2;
  v5[0] = objc_alloc_init(MEMORY[0x277D756B8]);
  [v5[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5[0] setNumberOfLines:0];
  v3 = [(AKAuthorizationScopeDetailTableViewCell *)v6 contentView];
  [v3 addSubview:v5[0]];
  MEMORY[0x277D82BD8](v3);
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
  v7 = [(UIImageView *)self->_scopeImageView layer];
  [v7 setCornerRadius:v6];
  v8 = +[AKAuthorizationAppearance scopeImageViewTintColor];
  [(UIImageView *)self->_scopeImageView setTintColor:?];
  [(UIImageView *)self->_scopeImageView setContentMode:4, MEMORY[0x277D82BD8](v8).n128_f64[0]];
  [(UIImageView *)self->_scopeImageView setHidden:1];
  v9 = [(AKAuthorizationScopeDetailTableViewCell *)self contentView];
  [v9 addSubview:self->_scopeImageView];
  MEMORY[0x277D82BD8](v9);
}

- (void)layoutSubviews
{
  v27 = self;
  v26 = a2;
  v25.receiver = self;
  v25.super_class = AKAuthorizationScopeDetailTableViewCell;
  [(AKAuthorizationScopeDetailTableViewCell *)&v25 layoutSubviews];
  v2 = [(AKAuthorizationScopeDetailTableViewCell *)v27 _isLTR];
  v3 = 2;
  if (!v2)
  {
    v3 = 0;
  }

  v18 = v3;
  v19 = [(AKAuthorizationScopeDetailTableViewCell *)v27 scopeLabel];
  [(UILabel *)v19 setTextAlignment:v18];
  *&v4 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = [(AKAuthorizationScopeDetailTableViewCell *)v27 leadingCheckmarkView];
  MEMORY[0x277D82BD8](v20);
  if (v20)
  {
    v16 = [(AKAuthorizationScopeDetailTableViewCell *)v27 leadingCheckmarkView];
    [(UIImageView *)v16 frame];
    v23 = v5;
    v24 = v6;
    *&v7 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v17 = [(AKAuthorizationScopeDetailTableViewCell *)v27 contentView];
    [v17 frame];
    v22 = CGRectGetMidY(v28) - v23 / 2.0;
    *&v8 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    if ([(AKAuthorizationScopeDetailTableViewCell *)v27 _isLTR])
    {
      v14 = [(AKAuthorizationScopeDetailTableViewCell *)v27 mainLabel];
      [(UILabel *)v14 frame];
      MinX = CGRectGetMinX(v29);
      +[AKAuthorizationSubPaneMetrics checkmarkToLabelSpacing];
      v21 = MinX - v9 - v23;
      MEMORY[0x277D82BD8](v14);
    }

    else
    {
      v12 = [(AKAuthorizationScopeDetailTableViewCell *)v27 mainLabel];
      [(UILabel *)v12 frame];
      MaxX = CGRectGetMaxX(v30);
      +[AKAuthorizationSubPaneMetrics checkmarkToLabelSpacing];
      v21 = MaxX + v10;
      MEMORY[0x277D82BD8](v12);
    }

    v11 = [(AKAuthorizationScopeDetailTableViewCell *)v27 leadingCheckmarkView];
    [(UIImageView *)v11 setFrame:v21, v22, v23, v24];
    MEMORY[0x277D82BD8](v11);
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
  v4 = [(AKAuthorizationScopeDetailTableViewCell *)self minimumHeightConstraint];
  [(NSLayoutConstraint *)v4 constant];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (void)setMinimumHeight:(double)a3
{
  v4 = [(AKAuthorizationScopeDetailTableViewCell *)self minimumHeightConstraint];
  [(NSLayoutConstraint *)v4 setConstant:a3];
  MEMORY[0x277D82BD8](v4);
}

- (void)setCheckmarkStyle:(unint64_t)a3
{
  if ([(AKAuthorizationScopeDetailTableViewCell *)self internalCheckmarkStyle]!= a3)
  {
    v7 = [(AKAuthorizationScopeDetailTableViewCell *)self internalCheckmarkStyle];
    if (v7)
    {
      if (v7 == 1)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckMarkStyleLeadingChecked:0];
        +[AKAuthorizationSubPaneMetrics scopeTitleLabelLeadingSpacing];
        v5 = v3;
        v6 = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabelLeadingConstraint];
        [(NSLayoutConstraint *)v6 setConstant:v5];
        MEMORY[0x277D82BD8](v6);
      }

      else if (v7 == 2)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self setAccessoryType:0];
      }
    }

    [(AKAuthorizationScopeDetailTableViewCell *)self setInternalCheckmarkStyle:a3];
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = [(AKAuthorizationScopeDetailTableViewCell *)self mainLabelLeadingConstraint];
        [(NSLayoutConstraint *)v4 setConstant:40.0];
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckMarkStyleLeadingChecked:[(AKAuthorizationScopeDetailTableViewCell *)self isChecked]];
      }

      else if (a3 == 2)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckmarkStyleTrailingChecked:[(AKAuthorizationScopeDetailTableViewCell *)self isChecked]];
      }
    }
  }
}

- (void)setChecked:(BOOL)a3
{
  if ([(AKAuthorizationScopeDetailTableViewCell *)self internalIsChecked]!= a3)
  {
    [(AKAuthorizationScopeDetailTableViewCell *)self setInternalChecked:a3];
    v3 = [(AKAuthorizationScopeDetailTableViewCell *)self checkmarkStyle];
    if (v3)
    {
      if (v3 == 1)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckMarkStyleLeadingChecked:a3];
      }

      else if (v3 == 2)
      {
        [(AKAuthorizationScopeDetailTableViewCell *)self _setCheckmarkStyleTrailingChecked:a3];
      }
    }
  }
}

- (void)_setCheckMarkStyleLeadingChecked:(BOOL)a3
{
  v9 = 0;
  v8 = 0;
  if (a3)
  {
    v10 = [(AKAuthorizationScopeDetailTableViewCell *)self leadingCheckmarkView];
    v9 = 1;
    v8 = v10 == 0;
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v8)
  {
    v3 = [(AKAuthorizationScopeDetailTableViewCell *)self _checkmarkImageView];
    leadingCheckmarkView = self->_leadingCheckmarkView;
    self->_leadingCheckmarkView = v3;
    v7 = [(AKAuthorizationScopeDetailTableViewCell *)self contentView];
    v6 = [(AKAuthorizationScopeDetailTableViewCell *)self leadingCheckmarkView];
    [v7 addSubview:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    v5 = [(AKAuthorizationScopeDetailTableViewCell *)self leadingCheckmarkView];
    [(UIImageView *)v5 removeFromSuperview];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&self->_leadingCheckmarkView, 0);
  }
}

- (void)_setCheckmarkStyleTrailingChecked:(BOOL)a3
{
  v3 = [(AKAuthorizationScopeDetailTableViewCell *)self _checkmarkCircleImageViewChecked:a3];
  [(AKAuthorizationScopeDetailTableViewCell *)self setAccessoryView:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)setScopeImage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_scopeImage, location[0]);
  if (v4->_scopeImage)
  {
    [(UIImageView *)v4->_scopeImageView setImage:location[0]];
    [(UIImageView *)v4->_scopeImageView setHidden:0];
  }

  else
  {
    [(UIImageView *)v4->_scopeImageView setHidden:1];
  }

  [(AKAuthorizationScopeDetailTableViewCell *)v4 setNeedsLayout];
  [(AKAuthorizationScopeDetailTableViewCell *)v4 layoutIfNeeded];
  objc_storeStrong(location, 0);
}

- (id)_checkmarkImageView
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = [(AKAuthorizationScopeDetailTableViewCell *)self _checkmarkImage];
  v5 = [v3 initWithImage:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)_checkmarkCircleImageViewChecked:(BOOL)a3
{
  if (a3)
  {
    v4 = [(AKAuthorizationScopeDetailTableViewCell *)self _selectedCheckmarkCircleImageView];
  }

  else
  {
    v4 = [(AKAuthorizationScopeDetailTableViewCell *)self _unselectedCheckmarkCircleImageView];
  }

  return v4;
}

- (id)_selectedCheckmarkCircleImageView
{
  v11 = self;
  v10[1] = a2;
  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = [(AKAuthorizationScopeDetailTableViewCell *)v11 _checkmarkCircleImage];
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
  v12 = self;
  v11[1] = a2;
  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = [(AKAuthorizationScopeDetailTableViewCell *)v12 _circleImage];
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