@interface MKPlaceCardHeaderViewController
+ (double)minimalModeHeight;
- (BOOL)_hasSecondaryName;
- (BOOL)_isLikelyToShowDistance;
- (BOOL)_mapItemShouldDisplayDistance:(id)a3;
- (MKPlaceCardHeaderViewController)initWithLineItem:(id)a3 layout:(unint64_t)a4;
- (MKPlaceCardHeaderViewController)initWithPlaceItem:(id)a3 layout:(unint64_t)a4;
- (MKPlaceCardHeaderViewControllerDelegate)delegate;
- (_MKLocalizedHoursBuilder)localizedHoursBuilder;
- (double)contentAlpha;
- (double)lastLabelToBottomConstant;
- (id)_currentTitle;
- (id)_openStateString;
- (id)_reviewLabelText;
- (id)_secondaryNameTitle;
- (id)_verifiedText;
- (id)newLabel;
- (id)secondaryNameTimingFunction;
- (id)titleFont;
- (void)ETAProviderUpdated:(id)a3;
- (void)_commonInit;
- (void)_contentSizeDidChange;
- (void)_createViews;
- (void)_loadLogo;
- (void)_setupDatas;
- (void)animateSecondLabelWithPercentage:(double)a3;
- (void)infoCardThemeChanged;
- (void)setConstraints;
- (void)setContentAlpha:(double)a3;
- (void)updateContent;
- (void)updateContentAlpha;
- (void)updateHeaderTitle;
- (void)updateViews;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MKPlaceCardHeaderViewController

- (MKPlaceCardHeaderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)infoCardThemeChanged
{
  v4.receiver = self;
  v4.super_class = MKPlaceCardHeaderViewController;
  [(UIViewController *)&v4 infoCardThemeChanged];
  v3 = [(MKPlaceCardHeaderViewController *)self _reviewLabelText];
  [(_MKTokenAttributedString *)self->_ratingsToken setAttributedString:v3];

  [(MKPlaceCardHeaderViewController *)self updateViews];
}

- (void)updateContent
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = [(MKPlaceCardHeaderViewController *)self view];

  if (v3)
  {
    v4 = +[MKFontManager sharedManager];
    v5 = [v4 subtitleFont];

    v28 = *MEMORY[0x1E69DB648];
    v6 = v28;
    v7 = [(MKPlaceCardHeaderViewController *)self titleFont];
    v29[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v9 = [(_MKDataHeaderModel *)self->_dataModel firstLine];
    [v9 setFontAttribute:v8];

    v26 = v6;
    v27 = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v11 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
    [v11 setFontAttribute:v10];

    v24 = v6;
    v25 = v5;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v13 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
    [v13 setFontAttribute:v12];

    v22 = v6;
    v23 = v5;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = [(_MKDataHeaderModel *)self->_dataModel forthLine];
    [v15 setFontAttribute:v14];

    v20 = v6;
    v21 = v5;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [(_MKDataHeaderModel *)self->_dataModel secondaryNameLine];
    [v17 setFontAttribute:v16];

    v18 = [(MKPlaceCardHeaderViewController *)self _reviewLabelText];
    [(_MKTokenAttributedString *)self->_ratingsToken setAttributedString:v18];

    v19 = [(MKPlaceCardHeaderViewController *)self _verifiedText];
    [(_MKTokenAttributedString *)self->_verifiedToken setAttributedString:v19];

    [(MKPlaceCardHeaderViewController *)self updateViews];
  }
}

- (void)_contentSizeDidChange
{
  self->_secondLabelToFirstLabelConstraintConstantMax = 0.0;
  self->_secondLabelToFirstLabelConstraintConstantMin = 0.0;
  [(MKPlaceCardHeaderViewController *)self updateContent];
}

- (void)viewDidLayoutSubviews
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MKPlaceCardHeaderViewController;
  [(MKPlaceCardHeaderViewController *)&v15 viewDidLayoutSubviews];
  if ([(MKPlaceCardHeaderViewController *)self _hasSecondaryName]&& self->_constraintsCreated && (self->_secondLabelToFirstLabelConstraintConstantMax <= 0.0 || self->_secondLabelToFirstLabelConstraintConstantMin <= 0.0))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(MKPlaceCardHeaderViewController *)self view];
    v4 = [v3 subviews];

    v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v9 setNeedsLayout];
          [v9 layoutIfNeeded];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }

    [(_MKUILabel *)self->_firstLabel frame];
    MaxY = CGRectGetMaxY(v18);
    [(_MKUILabel *)self->_secondLabel frame];
    self->_secondLabelToFirstLabelConstraintConstantMax = CGRectGetMinY(v19) - MaxY;
    [(_MKUILabel *)self->_secondaryNameLabel frame];
    self->_secondLabelToFirstLabelConstraintConstantMin = CGRectGetMinY(v20) - MaxY;
  }
}

- (void)setConstraints
{
  v106[2] = *MEMORY[0x1E69E9840];
  if (!self->_constraintsCreated)
  {
    self->_constraintsCreated = 1;
    v3 = +[MKFontManager sharedManager];
    v84 = [v3 subtitleFont];

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = 0.0;
    if (!self->_layout)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained placeCardHeaderViewControllerTrailingConstantForTitle:self];
      v5 = v7;
    }

    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v85 = [v8 userInterfaceIdiom];

    v9 = [(UILayoutGuide *)self->_leadingGuide leadingAnchor];
    v10 = [(MKPlaceSectionRowView *)self->_labelsSectionView layoutMarginsGuide];
    v11 = [v10 leadingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v106[0] = v12;
    v13 = [(UILayoutGuide *)self->_leadingGuide widthAnchor];
    [v13 constraintEqualToConstant:0.0];
    v14 = v88 = self;
    v106[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
    v95 = v4;
    [v4 addObjectsFromArray:v15];

    v16 = self;
    if (self->_layout == 1 && (-[UIImageView centerXAnchor](self->_logoImageView, "centerXAnchor"), v93 = objc_claimAutoreleasedReturnValue(), -[MKPlaceSectionRowView centerXAnchor](self->_labelsSectionView, "centerXAnchor"), v91 = objc_claimAutoreleasedReturnValue(), [v93 constraintEqualToAnchor:v91], v89 = objc_claimAutoreleasedReturnValue(), v105[0] = v89, -[UIImageView topAnchor](self->_logoImageView, "topAnchor"), v86 = objc_claimAutoreleasedReturnValue(), -[MKPlaceSectionRowView topAnchor](self->_labelsSectionView, "topAnchor"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v86, "constraintEqualToAnchor:constant:", v17, 15.0), v18 = objc_claimAutoreleasedReturnValue(), v105[1] = v18, -[UIImageView widthAnchor](self->_logoImageView, "widthAnchor"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "constraintEqualToConstant:", 86.0), v20 = objc_claimAutoreleasedReturnValue(), v105[2] = v20, -[UIImageView widthAnchor](self->_logoImageView, "widthAnchor"), v21 = objc_claimAutoreleasedReturnValue(), -[UIImageView heightAnchor](self->_logoImageView, "heightAnchor"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "constraintEqualToAnchor:", v22), v23 = objc_claimAutoreleasedReturnValue(), v105[3] = v23, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v105, 4), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "addObjectsFromArray:", v24), v24, v23, v22, v21, v20, v19, v18, v17, v16 = self, v86, v89, v91, v93, self->_layout == 1))
    {
      v25 = self->_logoImageView;
      if (v88->_notVerified)
      {
        firstLabel = v88->_firstLabel;
        v26 = MEMORY[0x1E695DEC8];
        p_firstLabel = &firstLabel;
        v28 = 1;
      }

      else
      {
        secondLabel = v88->_secondLabel;
        v103[0] = v88->_firstLabel;
        v103[1] = secondLabel;
        v26 = MEMORY[0x1E695DEC8];
        p_firstLabel = v103;
        v28 = 2;
      }

      v37 = [v26 arrayWithObjects:p_firstLabel count:v28];
    }

    else
    {
      v29 = v16->_secondLabel;
      v102[0] = v16->_firstLabel;
      v102[1] = v29;
      v102[2] = v16->_thirdDisplayedLabel;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];
      v31 = [v30 mutableCopy];

      if ([(MKPlaceCardHeaderViewController *)v16 _hasSecondaryName]&& !v16->_layout)
      {
        [v31 insertObject:v16->_secondaryNameLabel atIndex:1];
        v32 = [(_MKUILabel *)v16->_secondLabel topAnchor];
        v33 = [(_MKUILabel *)v16->_firstLabel bottomAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
        secondLabelToFirstLabelConstraint = v16->_secondLabelToFirstLabelConstraint;
        v16->_secondLabelToFirstLabelConstraint = v34;

        LODWORD(v36) = 1148846080;
        [(NSLayoutConstraint *)v16->_secondLabelToFirstLabelConstraint setPriority:v36];
      }

      v37 = [v31 copy];

      v25 = 0;
    }

    v82 = [v37 lastObject];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v39 = v37;
    v90 = [v39 countByEnumeratingWithState:&v96 objects:v101 count:16];
    if (v90)
    {
      v40 = 0;
      v87 = *v97;
      obj = v39;
      do
      {
        for (i = 0; i != v90; ++i)
        {
          v94 = v40;
          if (*v97 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v96 + 1) + 8 * i);
          v43 = [(_MKUILabel *)v42 leadingAnchor];
          v44 = [(UILayoutGuide *)v16->_leadingGuide trailingAnchor];
          v45 = [v43 constraintEqualToAnchor:v44 constant:0.0];
          v100[0] = v45;
          v92 = v42;
          v46 = [(_MKUILabel *)v42 trailingAnchor];
          v47 = [(MKPlaceSectionRowView *)v16->_labelsSectionView layoutMarginsGuide];
          v48 = [v47 trailingAnchor];
          if (v25)
          {
            v49 = 0.0;
          }

          else
          {
            v49 = -v5;
          }

          [v46 constraintEqualToAnchor:v48 constant:v49];
          v51 = v50 = v25;
          v100[1] = v51;
          v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
          [v95 addObjectsFromArray:v52];

          if (v94)
          {
            if (v85 == 5)
            {
              v53 = v92;
              if (v82 == v92)
              {
                v54 = 6.0;
              }

              else
              {
                v54 = 1.0;
              }

              v55 = [(_MKUILabel *)v92 topAnchor];
              v56 = [(_MKUILabel *)v94 bottomAnchor];
              v57 = [v55 constraintEqualToAnchor:v56 constant:v54];

              v16 = v88;
            }

            else
            {
              v53 = v92;
              v63 = [(_MKUILabel *)v92 firstBaselineAnchor];
              v64 = [(_MKUILabel *)v94 lastBaselineAnchor];
              v16 = v88;
              if (v88->_layout == 1)
              {
                v65 = 26.0;
              }

              else
              {
                v65 = 21.0;
              }

              [v84 _mapkit_scaledValueForValue:v65];
              v57 = [v63 constraintEqualToAnchor:v64 constant:?];
            }

            if (v53 == v16->_secondLabel)
            {
              LODWORD(v58) = 1148829696;
              [v57 setPriority:v58];
            }

            [v95 addObject:v57];
            v25 = v50;
          }

          else if (v50)
          {
            v53 = v92;
            v69 = [(_MKUILabel *)v92 firstBaselineAnchor];
            v70 = [(UIImageView *)v50 bottomAnchor];
            [v84 _mapkit_scaledValueForValue:34.0];
            v71 = [v69 constraintEqualToAnchor:v70 constant:?];
            [v95 addObject:v71];

            v57 = v50;
            v25 = 0;
            v16 = v88;
          }

          else
          {
            v16 = v88;
            v53 = v92;
            if (v85 == 5)
            {
              v57 = [(_MKUILabel *)v92 topAnchor];
              v59 = [(MKPlaceSectionRowView *)v88->_labelsSectionView topAnchor];
              v60 = 15.0;
              v61 = v57;
              v62 = v59;
            }

            else
            {
              [v84 _mapkit_scaledValueForValue:0 scalingForMacIdiom:0 respectingTraitEnvironment:*&kMapKitPlaceCardHeaderTitleLabelBaselineToTop];
              v67 = v66;
              v57 = [(_MKUILabel *)v92 firstBaselineAnchor];
              v59 = [(MKPlaceSectionRowView *)v88->_labelsSectionView topAnchor];
              v61 = v57;
              v62 = v59;
              v60 = v67;
            }

            v68 = [v61 constraintEqualToAnchor:v62 constant:v60];
            [v95 addObject:v68];

            v25 = 0;
          }

          v40 = v53;
        }

        v39 = obj;
        v90 = [obj countByEnumeratingWithState:&v96 objects:v101 count:16];
      }

      while (v90);
      v72 = v25;

      if (v40)
      {
        v73 = +[MKSystemController sharedInstance];
        v74 = [v73 userInterfaceIdiom];

        if (v74 == 2)
        {
          [(_MKUILabel *)v40 bottomAnchor];
        }

        else
        {
          [(_MKUILabel *)v40 lastBaselineAnchor];
        }
        v76 = ;
        v77 = [(MKPlaceSectionRowView *)v16->_labelsSectionView bottomAnchor];
        [(MKPlaceCardHeaderViewController *)v16 lastLabelToBottomConstant];
        v78 = [v76 constraintEqualToAnchor:v77 constant:?];
        lastLabelToBottomConstraint = v16->_lastLabelToBottomConstraint;
        v16->_lastLabelToBottomConstraint = v78;

        v75 = v95;
        [v95 addObject:v16->_lastLabelToBottomConstraint];
        goto LABEL_50;
      }
    }

    else
    {
      v72 = v25;

      v40 = 0;
    }

    v75 = v95;
LABEL_50:
    v80 = [v75 copy];
    constraints = v16->_constraints;
    v16->_constraints = v80;

    [MEMORY[0x1E696ACD8] activateConstraints:v16->_constraints];
  }
}

- (void)updateViews
{
  v36[1] = *MEMORY[0x1E69E9840];
  layout = self->_layout;
  v4 = layout == 1;
  if (layout == 1)
  {
    v5 = [(UIImageView *)self->_logoImageView superview];

    if (!v5)
    {
      [(MKPlaceSectionRowView *)self->_labelsSectionView addSubview:self->_logoImageView];
      [(MKPlaceCardHeaderViewController *)self _loadLogo];
    }
  }

  v6 = [(_MKDataHeaderModel *)self->_dataModel firstLine];
  [v6 setColorProvider:&__block_literal_global_81];

  LOBYTE(v34) = v4;
  v7 = [(_MKDataHeaderModel *)self->_dataModel secondLine:MEMORY[0x1E69E9820]];
  [v7 setColorProvider:&v33];

  v8 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
  [v8 setColorProvider:&__block_literal_global_83];

  v9 = [(_MKDataHeaderModel *)self->_dataModel forthLine];
  [v9 setColorProvider:&__block_literal_global_85];

  v10 = [(_MKDataHeaderModel *)self->_dataModel secondaryNameLine];
  [v10 setColorProvider:&__block_literal_global_87];

  if ([(MKPlaceCardHeaderViewController *)self _hasSecondaryName])
  {
    if (self->_layout == 1)
    {
LABEL_10:
      v22 = [(_MKDataHeaderModel *)self->_dataModel firstLine];
      v23 = [v22 contentAttributedString];
      [(_MKUILabel *)self->_firstLabel setAttributedText:v23];

      v24 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      v25 = [v24 contentAttributedString];
      [(_MKUILabel *)self->_secondLabel setAttributedText:v25];

      v26 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
      v27 = [v26 contentAttributedString];
      [(_MKUILabel *)self->_thirdLabel setAttributedText:v27];

      v28 = [(MKPlaceSectionViewController *)self sectionView];
      labelsSectionView = self->_labelsSectionView;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&labelsSectionView count:1];
      [v28 setRowViews:v29];

      [(_MKUILabel *)self->_secondLabel setHidden:self->_notVerified];
      goto LABEL_11;
    }

    v11 = [(_MKDataHeaderModel *)self->_dataModel secondaryNameLine];
    v12 = [v11 contentAttributedString];
    [(_MKUILabel *)self->_secondaryNameLabel setAttributedText:v12];
  }

  v13 = self->_layout;
  if (v13 == 1)
  {
    goto LABEL_10;
  }

  if (!v13)
  {
    v14 = [(_MKDataHeaderModel *)self->_dataModel firstLine];
    v15 = [v14 contentAttributedString];
    [(_MKUILabel *)self->_firstLabel setAttributedText:v15];

    v16 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
    v17 = [v16 contentAttributedString];
    [(_MKUILabel *)self->_secondLabel setAttributedText:v17];

    v18 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
    v19 = [v18 contentAttributedString];
    [(_MKUILabel *)self->_thirdLabel setAttributedText:v19];

    v20 = [(MKPlaceSectionViewController *)self sectionView];
    v36[0] = self->_labelsSectionView;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [v20 setRowViews:v21];

    [(MKPlaceCardHeaderViewController *)self lastLabelToBottomConstant];
    [(NSLayoutConstraint *)self->_lastLabelToBottomConstraint setConstant:?];
  }

LABEL_11:
  v30 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];

  if (v30)
  {
    v31 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
    thirdDisplayedLabel = self->_thirdDisplayedLabel;
    self->_thirdDisplayedLabel = v31;

    [(MKPlaceSectionRowView *)self->_labelsSectionView addSubview:self->_thirdDisplayedLabel];
    [(_MKUILabel *)self->_thirdLabel setHidden:1];
  }

  else
  {
    objc_storeStrong(&self->_thirdDisplayedLabel, self->_thirdLabel);
  }

  [(_MKUILabel *)self->_thirdLabel invalidateIntrinsicContentSize];
  [(MKPlaceCardHeaderViewController *)self setConstraints];
}

id __46__MKPlaceCardHeaderViewController_updateViews__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    [a2 lightTextColor];
  }

  else
  {
    [a2 textColor];
  }
  v2 = ;

  return v2;
}

- (void)_createViews
{
  if (self->_layout == 1)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    logoImageView = self->_logoImageView;
    self->_logoImageView = v4;

    [(UIImageView *)self->_logoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(UIImageView *)self->_logoImageView layer];
    [v6 setBounds:{0.0, 0.0, 86.0, 86.0}];

    v7 = [(UIImageView *)self->_logoImageView layer];
    [v7 setCornerRadius:11.0];

    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)self->_logoImageView setBackgroundColor:v8];

    [(UIImageView *)self->_logoImageView setClipsToBounds:1];
    [(UIImageView *)self->_logoImageView _mapkit_setImageContentMode:2];
  }

  v9 = [(MKPlaceCardHeaderViewController *)self newLabel];
  titleOnlyLabel = self->_titleOnlyLabel;
  self->_titleOnlyLabel = v9;

  [(_MKUILabel *)self->_titleOnlyLabel setTextAlignment:1];
  v11 = [(MKPlaceCardHeaderViewController *)self newLabel];
  firstLabel = self->_firstLabel;
  self->_firstLabel = v11;

  v13 = [(MKPlaceCardHeaderViewController *)self newLabel];
  secondLabel = self->_secondLabel;
  self->_secondLabel = v13;

  if (self->_layout == 1)
  {
    [(_MKUILabel *)self->_firstLabel setTextAlignment:1];
    [(_MKUILabel *)self->_secondLabel setTextAlignment:1];
  }

  v15 = [(MKPlaceCardHeaderViewController *)self newLabel];
  thirdLabel = self->_thirdLabel;
  self->_thirdLabel = v15;

  if (self->_layout == 1)
  {
    [(_MKUILabel *)self->_thirdLabel setTextAlignment:1];
  }

  v17 = objc_alloc_init(MKPlaceSectionRowView);
  titleSectionView = self->_titleSectionView;
  self->_titleSectionView = v17;

  [(MKPlaceSectionRowView *)self->_titleSectionView setPreservesSuperviewLayoutMargins:1];
  [(MKPlaceSectionRowView *)self->_titleSectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKViewWithHairline *)self->_titleSectionView setTopHairlineHidden:1];
  [(MKViewWithHairline *)self->_titleSectionView setBottomHairlineHidden:1];
  [(MKPlaceSectionRowView *)self->_titleSectionView addSubview:self->_titleOnlyLabel];
  v19 = objc_alloc_init(MKPlaceSectionRowView);
  labelsSectionView = self->_labelsSectionView;
  self->_labelsSectionView = v19;

  [(MKPlaceSectionRowView *)self->_labelsSectionView setPreservesSuperviewLayoutMargins:1];
  [(MKPlaceSectionRowView *)self->_labelsSectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v21) = 1148846080;
  [(UIView *)self->_labelsSectionView _mapkit_setContentCompressionResistancePriority:1 forAxis:v21];
  [(MKViewWithHairline *)self->_labelsSectionView setTopHairlineHidden:1];
  [(MKViewWithHairline *)self->_labelsSectionView setBottomHairlineHidden:1];
  [(MKPlaceSectionRowView *)self->_labelsSectionView addSubview:self->_firstLabel];
  layout = self->_layout;
  if ([(MKPlaceCardHeaderViewController *)self _hasSecondaryName])
  {
    if (!layout)
    {
      v23 = [(MKPlaceCardHeaderViewController *)self newLabel];
      secondaryNameLabel = self->_secondaryNameLabel;
      self->_secondaryNameLabel = v23;

      LODWORD(v25) = 1148846080;
      [(UIView *)self->_secondaryNameLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v25];
      if (!self->_layout)
      {
        [(MKPlaceSectionRowView *)self->_labelsSectionView addSubview:self->_secondaryNameLabel];
      }
    }
  }

  [(MKPlaceSectionRowView *)self->_labelsSectionView addSubview:self->_secondLabel];
  [(MKPlaceSectionRowView *)self->_labelsSectionView addSubview:self->_thirdLabel];
  v26 = [(MKPlaceSectionViewController *)self sectionView];
  [v26 setStackDelegate:self];

  v27 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  leadingGuide = self->_leadingGuide;
  self->_leadingGuide = v27;

  v29 = self->_labelsSectionView;
  v30 = self->_leadingGuide;

  [(MKPlaceSectionRowView *)v29 addLayoutGuide:v30];
}

- (id)newLabel
{
  v2 = [_MKUILabel alloc];
  v3 = [(_MKUILabel *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_MKUILabel *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)v3 setNumberOfLines:0];
  return v3;
}

- (BOOL)_mapItemShouldDisplayDistance:(id)a3
{
  v3 = a3;
  if ([v3 _hasVenueFeatureType])
  {
    v4 = [v3 _venueFeatureType] != 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)ETAProviderUpdated:(id)a3
{
  v20 = a3;
  v5 = [(_MKTokenAttributedString *)self->_distanceToken string];
  v6 = [v20 distanceString];
  if (v5 == v6)
  {
    v3 = [v20 distanceString];
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  v7 = [(_MKTokenAttributedString *)self->_distanceToken string];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v20 distanceString];
  if (!v9)
  {

LABEL_10:
    if (v5 == v6)
    {
    }

    goto LABEL_13;
  }

  v10 = v9;
  v11 = [(_MKTokenAttributedString *)self->_distanceToken string];
  v12 = [v20 distanceString];
  v13 = [v11 isEqualToString:v12];

  if (v5 == v6)
  {
  }

  if ((v13 & 1) == 0)
  {
LABEL_13:
    v14 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v15 = [(MKPlaceCardHeaderViewController *)self _mapItemShouldDisplayDistance:v14];

    if (!v15)
    {
      goto LABEL_17;
    }

    v16 = [(MKPlaceCardHeaderViewController *)self view];

    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = [v20 distanceString];
    [(_MKTokenAttributedString *)self->_distanceToken setString:v17];

    [(MKPlaceCardHeaderViewController *)self updateViews];
    v18 = [(MKPlaceCardHeaderViewController *)self view];
    v19 = [v18 superview];
    [v19 _mapkit_setNeedsLayout];

    v5 = [(MKPlaceCardHeaderViewController *)self view];
    v6 = [v5 superview];
    [v6 _mapkit_layoutIfNeeded];
LABEL_16:
  }

LABEL_17:
}

- (void)_loadLogo
{
  if (self->_logoURL)
  {
    v3 = +[MKAppImageManager sharedImageManager];
    logoURL = self->_logoURL;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__MKPlaceCardHeaderViewController__loadLogo__block_invoke;
    v5[3] = &unk_1E76CC830;
    v5[4] = self;
    [v3 loadAppImageAtURL:logoURL completionHandler:v5];
  }
}

void __44__MKPlaceCardHeaderViewController__loadLogo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DD250];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1024);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__MKPlaceCardHeaderViewController__loadLogo__block_invoke_2;
  v8[3] = &unk_1E76CD810;
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v4 transitionWithView:v6 duration:5242880 options:v8 animations:0 completion:0.200000003];
}

- (BOOL)_isLikelyToShowDistance
{
  v2 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if ([_MKQuickRouteManager isLikelyToReturnETAForLocation:v2])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[MKLocationManager sharedLocationManager];
    v5 = [v4 lastLocation];
    v3 = v5 != 0;
  }

  return v3;
}

- (void)_setupDatas
{
  v3 = [(MKPlaceCardHeaderViewController *)self _currentTitle];
  [(_MKTokenAttributedString *)self->_titleToken setString:v3];

  v4 = [(MKPlaceCardHeaderViewController *)self _secondaryNameTitle];
  [(_MKTokenAttributedString *)self->_secondaryNameToken setString:v4];

  v5 = [(MKPlaceCardHeaderViewController *)self _reviewLabelText];
  [(_MKTokenAttributedString *)self->_ratingsToken setAttributedString:v5];

  v6 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v7 = [v6 _hasPriceDescription];
  v8 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v9 = v8;
  if (v7)
  {
    [v8 _priceDescription];
  }

  else
  {
    [v8 _priceRangeString];
  }
  v10 = ;
  [(_MKTokenAttributedString *)self->_priceToken setString:v10];

  v11 = [(MKPlaceCardHeaderViewController *)self _openStateString];
  [(_MKTokenAttributedString *)self->_openStateToken setAttributedString:v11];

  v12 = [(MKPlaceCardHeaderViewController *)self _verifiedText];
  [(_MKTokenAttributedString *)self->_verifiedToken setAttributedString:v12];

  v13 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v14 = [v13 _firstLocalizedCategoryName];
  v15 = [v14 length];

  v16 = &OBJC_IVAR___MKLookAroundView__storefrontFullyDrawn;
  if (v15)
  {
    v17 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v18 = [v17 _firstLocalizedCategoryName];
    [(_MKTokenAttributedString *)self->_categoryToken setString:v18];
  }

  else
  {
    if (!self->_lineItem)
    {
      goto LABEL_9;
    }

    v17 = _MKLocalizedStringFromThisBundle(@"Line_Card_Category");
    [(_MKTokenAttributedString *)self->_categoryToken setString:v17];
  }

LABEL_9:
  if (!self->_isUserLocation)
  {
    goto LABEL_20;
  }

  v19 = _MKLocalizedStringFromThisBundle(@"NEAR_BY_PLACE_HEADER_STRING");
  v20 = +[MKLocationManager sharedLocationManager];
  v21 = [v20 isAuthorizedForPreciseLocation];

  v22 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v23 = [v22 _geoAddress];
  v24 = [v23 structuredAddress];
  v25 = v24;
  if (!v21)
  {
    v26 = [v24 locality];

    if ([v26 length])
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:v19, v26];
      v28 = [(_MKPlaceItem *)self->_placeItem mapItem];
      v29 = [v28 _geoAddress];
      v30 = [v29 structuredAddress];
      v31 = [v30 administrativeAreaCode];

      if ([v31 length])
      {
        v32 = [v27 stringByAppendingFormat:@", %@", v31];

        v27 = v32;
      }

      v16 = &OBJC_IVAR___MKLookAroundView__storefrontFullyDrawn;

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v26 = [v24 fullThoroughfare];

  if (![v26 length])
  {
LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:v19, v26];
LABEL_18:
  v16 = &OBJC_IVAR___MKLookAroundView__storefrontFullyDrawn;
LABEL_19:

  [(_MKTokenAttributedString *)self->_userLocationToken setString:v27];
LABEL_20:
  v33 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if ([v33 _venueFeatureType] == 4)
  {
  }

  else
  {
    isUserLocation = self->_isUserLocation;

    if (!isUserLocation)
    {
      goto LABEL_24;
    }
  }

  v35 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v36 = [v35 venueLabelWithContext:2];
  [(_MKTokenAttributedString *)self->_venueToken setString:v36];

LABEL_24:
  v37 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
  [v37 removeFromSuperview];

  [(_MKDataHeaderModel *)self->_dataModel setTransitLabel:0];
  v38 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if ([v38 _hasTransitLabels])
  {
  }

  else
  {
    v39 = *(&self->super.super.super.super.isa + v16[867]);

    if (!v39)
    {
      goto LABEL_32;
    }
  }

  v40 = [MKTransitInfoLabelView alloc];
  v41 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v42 = [(MKTransitInfoLabelView *)v40 initWithMapItem:v41];
  [(_MKDataHeaderModel *)self->_dataModel setTransitLabel:v42];

  v43 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
  [v43 set_mapkit_themeColorProvider:&__block_literal_global_70];

  v44 = v16[867];
  v45 = *(&self->super.super.super.super.isa + v44);
  if (v45)
  {
    v46 = [v45 labelItems];
    v47 = [v46 count];

    if (v47)
    {
      v48 = [*(&self->super.super.super.super.isa + v44) labelItems];
      v49 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
      [v49 setLabelItems:v48];
    }

    else
    {
      [(_MKDataHeaderModel *)self->_dataModel setTransitLabel:0];
    }
  }

  v50 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

LABEL_32:
  v51 = [(MKPlaceCardHeaderViewController *)self _isLikelyToShowDistance];
  v52 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
  [v52 setShouldUseEmptyPlaceholder:v51];

  v53 = [(_MKDataHeaderModel *)self->_dataModel firstLine];
  [v53 addToken:self->_titleToken];

  if (self->_layout == 1)
  {
    p_verifiedToken = &self->_verifiedToken;
    v55 = [(_MKTokenAttributedString *)self->_verifiedToken isEmpty];
    self->_notVerified = v55;
    if (v55)
    {
      return;
    }

    v61 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
  }

  else
  {
    if ([(_MKTokenAttributedString *)self->_userLocationToken isEmpty])
    {
      v56 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      [v56 addToken:self->_categoryToken];

      v57 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      [v57 addToken:self->_venueToken];

      v58 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      [v58 addToken:self->_distanceToken];

      v59 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      p_openStateToken = &self->_openStateToken;
    }

    else
    {
      v62 = [(_MKTokenAttributedString *)self->_venueToken isEmpty];
      v59 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      if (v62)
      {
        p_openStateToken = &self->_userLocationToken;
      }

      else
      {
        p_openStateToken = &self->_venueToken;
      }
    }

    [v59 addToken:*p_openStateToken];

    if ([(MKPlaceCardHeaderViewController *)self _hasSecondaryName]&& ![(_MKTokenAttributedString *)self->_secondaryNameToken isEmpty])
    {
      v63 = [(_MKDataHeaderModel *)self->_dataModel secondaryNameLine];
      [v63 addToken:self->_secondaryNameToken];
    }

    v64 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
    [v64 addToken:self->_ratingsToken];

    v61 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
    p_verifiedToken = &self->_priceToken;
  }

  v65 = v61;
  [v61 addToken:*p_verifiedToken];
}

- (id)_openStateString
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v4 = [v3 _hasBusinessHours];

  if (v4)
  {
    if (self->_optionSmallScreen)
    {
      v5 = 13;
    }

    else
    {
      v5 = 9;
    }

    v6 = [(MKPlaceCardHeaderViewController *)self localizedHoursBuilder];
    [v6 setLocalizedHoursStringOptions:v5];

    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = [(MKPlaceCardHeaderViewController *)self localizedHoursBuilder];
    v9 = [v8 localizedOperatingHours];
    v15 = *MEMORY[0x1E69DB650];
    v10 = [(MKPlaceCardHeaderViewController *)self localizedHoursBuilder];
    v11 = [v10 hoursStateLabelColor];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v7 initWithString:v9 attributes:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_MKLocalizedHoursBuilder)localizedHoursBuilder
{
  localizedHoursBuilder = self->_localizedHoursBuilder;
  if (!localizedHoursBuilder)
  {
    v4 = [_MKLocalizedHoursBuilder alloc];
    v5 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v6 = [(_MKLocalizedHoursBuilder *)v4 initWithMapItem:v5 localizedHoursStringOptions:0];
    v7 = self->_localizedHoursBuilder;
    self->_localizedHoursBuilder = v6;

    localizedHoursBuilder = self->_localizedHoursBuilder;
  }

  return localizedHoursBuilder;
}

- (id)_reviewLabelText
{
  v3 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v4 = [v3 _hasUserRatingScore];

  if (v4)
  {
    v5 = [(UIViewController *)self mk_theme];
    v6 = [v5 lightTextColor];

    v7 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v8 = +[MKFontManager sharedManager];
    v9 = [v8 subtitleFont];
    v10 = [(UIViewController *)self mk_theme];
    v11 = [MKRatingStringBuilder ratingAndReviewSummaryAttributedStringForMapItem:v7 textColor:v6 font:v9 theme:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_verifiedText
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v4 = [v3 _isMessageIDVerified];

  if (v4)
  {
    v5 = [(UIViewController *)self mk_theme];
    v6 = [v5 lightTextColor];

    v7 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.seal.fill"];
    v9 = [v8 imageWithRenderingMode:2];

    [v7 setImage:v9];
    v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
    v11 = [v10 mutableCopy];

    v24 = *MEMORY[0x1E69DB650];
    v12 = v24;
    v25[0] = v6;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v11 addAttributes:v13 range:{0, 1}];

    v14 = [v11 copy];
    v15 = objc_alloc(MEMORY[0x1E696AD40]);
    v16 = _MKLocalizedStringFromThisBundle(@"Brand_Card_Verified");
    v22[0] = *MEMORY[0x1E69DB648];
    v17 = +[MKFontManager sharedManager];
    v18 = [v17 subtitleFont];
    v22[1] = v12;
    v23[0] = v18;
    v23[1] = v6;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v20 = [v15 initWithString:v16 attributes:v19];

    if (v14)
    {
      [v20 appendAttributedString:v14];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_secondaryNameTitle
{
  v2 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v3 = [v2 _secondaryName];

  return v3;
}

- (BOOL)_hasSecondaryName
{
  v2 = [(MKPlaceCardHeaderViewController *)self _secondaryNameTitle];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_currentTitle
{
  v3 = [(_MKPlaceItem *)self->_placeItem name];
  v4 = [v3 length];

  if (v4)
  {
    placeItem = self->_placeItem;
LABEL_4:
    v8 = [(_MKPlaceItem *)placeItem name];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v6 = [(GEOTransitLineItem *)self->_lineItem name];
  v7 = [v6 length];

  placeItem = self->_lineItem;
  if (v7)
  {
    goto LABEL_4;
  }

  v11 = [(_MKPlaceItem *)placeItem system];
  v12 = [v11 name];
  v13 = [v12 length];

  lineItem = self->_lineItem;
  if (v13)
  {
    v15 = [(GEOTransitLineItem *)lineItem system];
    v9 = [v15 name];
  }

  else
  {
    if (lineItem)
    {
      v8 = _MKLocalizedStringFromThisBundle(@"Line_Card_Default_Title");
      goto LABEL_5;
    }

    v9 = 0;
  }

LABEL_6:

  return v9;
}

- (void)animateSecondLabelWithPercentage:(double)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = fmin(a3, 1.0);
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  secondLabelToFirstLabelConstraint = self->_secondLabelToFirstLabelConstraint;
  if (secondLabelToFirstLabelConstraint)
  {
    v7 = [(NSLayoutConstraint *)secondLabelToFirstLabelConstraint isActive];
    if (v5 == 1.0)
    {
      if (v7)
      {
        v8 = MEMORY[0x1E696ACD8];
        v14[0] = self->_secondLabelToFirstLabelConstraint;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [v8 deactivateConstraints:v9];
      }
    }

    else
    {
      if (!v7)
      {
        v10 = MEMORY[0x1E696ACD8];
        v13 = self->_secondLabelToFirstLabelConstraint;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
        [v10 activateConstraints:v11];
      }

      [(MKPlaceCardHeaderViewController *)self secondaryNameLabelPadding];
      [(NSLayoutConstraint *)self->_secondLabelToFirstLabelConstraint setConstant:self->_secondLabelToFirstLabelConstraintConstantMin + v12 * v5];
    }
  }
}

- (void)updateContentAlpha
{
  labelsSectionView = self->_labelsSectionView;
  if (labelsSectionView && ([(MKPlaceSectionRowView *)labelsSectionView isHidden]& 1) == 0)
  {
    [(MKPlaceCardHeaderViewController *)self animateSecondLabelWithPercentage:self->_contentAlpha];
    [(UIView *)self->_thirdDisplayedLabel setAlpha:self->_contentAlpha];
    v6 = [(MKPlaceCardHeaderViewController *)self secondaryNameTimingFunction];
    contentAlpha = self->_contentAlpha;
    *&contentAlpha = contentAlpha;
    [v6 _solveForInput:contentAlpha];
    [(_MKUILabel *)self->_secondaryNameLabel setAlpha:v5];
  }
}

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    [(MKPlaceCardHeaderViewController *)self updateContentAlpha];
  }
}

- (double)contentAlpha
{
  v3 = [(MKPlaceSectionRowView *)self->_labelsSectionView isHidden];
  result = 0.0;
  if ((v3 & 1) == 0)
  {
    return self->_contentAlpha;
  }

  return result;
}

- (void)updateHeaderTitle
{
  v3 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v5 = [v3 name];

  v4 = [(MKPlaceCardHeaderViewController *)self view];

  if (v4)
  {
    [(_MKTokenAttributedString *)self->_titleToken setString:v5];
    [(MKPlaceCardHeaderViewController *)self updateViews];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MKPlaceCardHeaderViewController;
  [(MKPlaceCardHeaderViewController *)&v6 viewDidLoad];
  v3 = [(MKPlaceSectionViewController *)self sectionView];
  [v3 setPreservesSuperviewLayoutMargins:1];

  v4 = [(MKPlaceSectionViewController *)self sectionView];
  [v4 setShowsBottomHairline:0];

  [(MKPlaceCardHeaderViewController *)self _createViews];
  [(MKPlaceCardHeaderViewController *)self _setupDatas];
  [(MKPlaceCardHeaderViewController *)self updateContent];
  v5 = [(MKPlaceCardHeaderViewController *)self view];
  [(_MKDataHeaderModel *)self->_dataModel setOwnerView:v5];
}

- (void)_commonInit
{
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
  }

  self->_optionSmallScreen = _MKPlaceCardUseSmallerFont_smallerFont;
  v3 = objc_alloc_init(_MKDataHeaderModel);
  dataModel = self->_dataModel;
  self->_dataModel = v3;

  v5 = objc_alloc_init(_MKTokenAttributedString);
  titleToken = self->_titleToken;
  self->_titleToken = v5;

  v7 = objc_alloc_init(_MKTokenAttributedString);
  secondaryNameToken = self->_secondaryNameToken;
  self->_secondaryNameToken = v7;

  v9 = objc_alloc_init(_MKTokenAttributedString);
  distanceToken = self->_distanceToken;
  self->_distanceToken = v9;

  v11 = objc_alloc_init(_MKTokenAttributedString);
  ratingsToken = self->_ratingsToken;
  self->_ratingsToken = v11;

  v13 = objc_alloc_init(_MKTokenAttributedString);
  openStateToken = self->_openStateToken;
  self->_openStateToken = v13;

  v15 = objc_alloc_init(_MKTokenAttributedString);
  priceToken = self->_priceToken;
  self->_priceToken = v15;

  v17 = objc_alloc_init(_MKTokenAttributedString);
  categoryToken = self->_categoryToken;
  self->_categoryToken = v17;

  v19 = objc_alloc_init(_MKTokenAttributedString);
  userLocationToken = self->_userLocationToken;
  self->_userLocationToken = v19;

  v21 = objc_alloc_init(_MKTokenAttributedString);
  venueToken = self->_venueToken;
  self->_venueToken = v21;

  v23 = objc_alloc_init(_MKTokenAttributedString);
  verifiedToken = self->_verifiedToken;
  self->_verifiedToken = v23;

  self->_isUserLocation = [(_MKPlaceItem *)self->_placeItem options]& 1;
  v25 = [MEMORY[0x1E696AD88] defaultCenter];
  [v25 addObserver:self selector:sel__contentSizeDidChangeNotificationHandler name:*MEMORY[0x1E69DDC48] object:0];

  v28 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v26 = [v28 _bestBrandIconURLForSize:1 allowSmaller:{86.0, 86.0}];
  logoURL = self->_logoURL;
  self->_logoURL = v26;
}

- (MKPlaceCardHeaderViewController)initWithLineItem:(id)a3 layout:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MKPlaceCardHeaderViewController;
  v8 = [(MKPlaceCardHeaderViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lineItem, a3);
    v9->_layout = a4;
    [(MKPlaceCardHeaderViewController *)v9 _commonInit];
  }

  return v9;
}

- (MKPlaceCardHeaderViewController)initWithPlaceItem:(id)a3 layout:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MKPlaceCardHeaderViewController;
  v8 = [(MKPlaceCardHeaderViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_placeItem, a3);
    v9->_layout = a4;
    [(MKPlaceCardHeaderViewController *)v9 _commonInit];
  }

  return v9;
}

- (double)lastLabelToBottomConstant
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 subtitleFont];

  v4 = +[MKSystemController sharedInstance];
  v5 = [v4 userInterfaceIdiom];

  v6 = 0.0;
  if (v5 != 2)
  {
    [v3 _mapkit_scaledValueForValue:21.0];
    v6 = -v7;
  }

  return v6;
}

- (id)secondaryNameTimingFunction
{
  if (secondaryNameTimingFunction_onceToken != -1)
  {
    dispatch_once(&secondaryNameTimingFunction_onceToken, &__block_literal_global_13303);
  }

  v3 = secondaryNameTimingFunction_timingFunction;

  return v3;
}

void __62__MKPlaceCardHeaderViewController_secondaryNameTimingFunction__block_invoke()
{
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  v1 = secondaryNameTimingFunction_timingFunction;
  secondaryNameTimingFunction_timingFunction = v0;
}

- (id)titleFont
{
  layout = self->_layout;
  v3 = +[MKFontManager sharedManager];
  v4 = v3;
  if (layout == 1)
  {
    [v3 brandTitleFont];
  }

  else
  {
    [v3 largeTitleFont];
  }
  v5 = ;

  return v5;
}

+ (double)minimalModeHeight
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 largeTitleFont];

  [v3 _mapkit_scaledValueForValue:32.0];
  v5 = v4 + 4.0;
  [v3 _mapkit_scaledValueForValue:21.0];
  v7 = v5 + v6 + 21.0;

  return v7;
}

@end