@interface MKPlaceCardHeaderViewController
+ (double)minimalModeHeight;
- (BOOL)_hasSecondaryName;
- (BOOL)_isLikelyToShowDistance;
- (BOOL)_mapItemShouldDisplayDistance:(id)distance;
- (MKPlaceCardHeaderViewController)initWithLineItem:(id)item layout:(unint64_t)layout;
- (MKPlaceCardHeaderViewController)initWithPlaceItem:(id)item layout:(unint64_t)layout;
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
- (void)ETAProviderUpdated:(id)updated;
- (void)_commonInit;
- (void)_contentSizeDidChange;
- (void)_createViews;
- (void)_loadLogo;
- (void)_setupDatas;
- (void)animateSecondLabelWithPercentage:(double)percentage;
- (void)infoCardThemeChanged;
- (void)setConstraints;
- (void)setContentAlpha:(double)alpha;
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
  _reviewLabelText = [(MKPlaceCardHeaderViewController *)self _reviewLabelText];
  [(_MKTokenAttributedString *)self->_ratingsToken setAttributedString:_reviewLabelText];

  [(MKPlaceCardHeaderViewController *)self updateViews];
}

- (void)updateContent
{
  v29[1] = *MEMORY[0x1E69E9840];
  view = [(MKPlaceCardHeaderViewController *)self view];

  if (view)
  {
    v4 = +[MKFontManager sharedManager];
    subtitleFont = [v4 subtitleFont];

    v28 = *MEMORY[0x1E69DB648];
    v6 = v28;
    titleFont = [(MKPlaceCardHeaderViewController *)self titleFont];
    v29[0] = titleFont;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    firstLine = [(_MKDataHeaderModel *)self->_dataModel firstLine];
    [firstLine setFontAttribute:v8];

    v26 = v6;
    v27 = subtitleFont;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    secondLine = [(_MKDataHeaderModel *)self->_dataModel secondLine];
    [secondLine setFontAttribute:v10];

    v24 = v6;
    v25 = subtitleFont;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    thirdLine = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
    [thirdLine setFontAttribute:v12];

    v22 = v6;
    v23 = subtitleFont;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    forthLine = [(_MKDataHeaderModel *)self->_dataModel forthLine];
    [forthLine setFontAttribute:v14];

    v20 = v6;
    v21 = subtitleFont;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    secondaryNameLine = [(_MKDataHeaderModel *)self->_dataModel secondaryNameLine];
    [secondaryNameLine setFontAttribute:v16];

    _reviewLabelText = [(MKPlaceCardHeaderViewController *)self _reviewLabelText];
    [(_MKTokenAttributedString *)self->_ratingsToken setAttributedString:_reviewLabelText];

    _verifiedText = [(MKPlaceCardHeaderViewController *)self _verifiedText];
    [(_MKTokenAttributedString *)self->_verifiedToken setAttributedString:_verifiedText];

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
    view = [(MKPlaceCardHeaderViewController *)self view];
    subviews = [view subviews];

    v5 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v9 setNeedsLayout];
          [v9 layoutIfNeeded];
        }

        v6 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
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
    subtitleFont = [v3 subtitleFont];

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
    v4 = [MEMORY[0x1E695E0F0] mutableCopy];
    v5 = 0.0;
    if (!self->_layout)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained placeCardHeaderViewControllerTrailingConstantForTitle:self];
      v5 = v7;
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    leadingAnchor = [(UILayoutGuide *)self->_leadingGuide leadingAnchor];
    layoutMarginsGuide = [(MKPlaceSectionRowView *)self->_labelsSectionView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v106[0] = v12;
    widthAnchor = [(UILayoutGuide *)self->_leadingGuide widthAnchor];
    [widthAnchor constraintEqualToConstant:0.0];
    v14 = v88 = self;
    v106[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:2];
    v95 = v4;
    [v4 addObjectsFromArray:v15];

    selfCopy = self;
    if (self->_layout == 1 && (-[UIImageView centerXAnchor](self->_logoImageView, "centerXAnchor"), v93 = objc_claimAutoreleasedReturnValue(), -[MKPlaceSectionRowView centerXAnchor](self->_labelsSectionView, "centerXAnchor"), v91 = objc_claimAutoreleasedReturnValue(), [v93 constraintEqualToAnchor:v91], v89 = objc_claimAutoreleasedReturnValue(), v105[0] = v89, -[UIImageView topAnchor](self->_logoImageView, "topAnchor"), v86 = objc_claimAutoreleasedReturnValue(), -[MKPlaceSectionRowView topAnchor](self->_labelsSectionView, "topAnchor"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v86, "constraintEqualToAnchor:constant:", v17, 15.0), v18 = objc_claimAutoreleasedReturnValue(), v105[1] = v18, -[UIImageView widthAnchor](self->_logoImageView, "widthAnchor"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "constraintEqualToConstant:", 86.0), v20 = objc_claimAutoreleasedReturnValue(), v105[2] = v20, -[UIImageView widthAnchor](self->_logoImageView, "widthAnchor"), v21 = objc_claimAutoreleasedReturnValue(), -[UIImageView heightAnchor](self->_logoImageView, "heightAnchor"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "constraintEqualToAnchor:", v22), v23 = objc_claimAutoreleasedReturnValue(), v105[3] = v23, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v105, 4), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "addObjectsFromArray:", v24), v24, v23, v22, v21, v20, v19, v18, v17, selfCopy = self, v86, v89, v91, v93, self->_layout == 1))
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
      v29 = selfCopy->_secondLabel;
      v102[0] = selfCopy->_firstLabel;
      v102[1] = v29;
      v102[2] = selfCopy->_thirdDisplayedLabel;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];
      v31 = [v30 mutableCopy];

      if ([(MKPlaceCardHeaderViewController *)selfCopy _hasSecondaryName]&& !selfCopy->_layout)
      {
        [v31 insertObject:selfCopy->_secondaryNameLabel atIndex:1];
        topAnchor = [(_MKUILabel *)selfCopy->_secondLabel topAnchor];
        bottomAnchor = [(_MKUILabel *)selfCopy->_firstLabel bottomAnchor];
        v34 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        secondLabelToFirstLabelConstraint = selfCopy->_secondLabelToFirstLabelConstraint;
        selfCopy->_secondLabelToFirstLabelConstraint = v34;

        LODWORD(v36) = 1148846080;
        [(NSLayoutConstraint *)selfCopy->_secondLabelToFirstLabelConstraint setPriority:v36];
      }

      v37 = [v31 copy];

      v25 = 0;
    }

    lastObject = [v37 lastObject];
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
          leadingAnchor3 = [(_MKUILabel *)v42 leadingAnchor];
          trailingAnchor = [(UILayoutGuide *)selfCopy->_leadingGuide trailingAnchor];
          v45 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:0.0];
          v100[0] = v45;
          v92 = v42;
          trailingAnchor2 = [(_MKUILabel *)v42 trailingAnchor];
          layoutMarginsGuide2 = [(MKPlaceSectionRowView *)selfCopy->_labelsSectionView layoutMarginsGuide];
          trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
          if (v25)
          {
            v49 = 0.0;
          }

          else
          {
            v49 = -v5;
          }

          [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v49];
          v51 = v50 = v25;
          v100[1] = v51;
          v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
          [v95 addObjectsFromArray:v52];

          if (v94)
          {
            if (userInterfaceIdiom == 5)
            {
              v53 = v92;
              if (lastObject == v92)
              {
                v54 = 6.0;
              }

              else
              {
                v54 = 1.0;
              }

              topAnchor2 = [(_MKUILabel *)v92 topAnchor];
              bottomAnchor2 = [(_MKUILabel *)v94 bottomAnchor];
              topAnchor3 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:v54];

              selfCopy = v88;
            }

            else
            {
              v53 = v92;
              firstBaselineAnchor = [(_MKUILabel *)v92 firstBaselineAnchor];
              lastBaselineAnchor = [(_MKUILabel *)v94 lastBaselineAnchor];
              selfCopy = v88;
              if (v88->_layout == 1)
              {
                v65 = 26.0;
              }

              else
              {
                v65 = 21.0;
              }

              [subtitleFont _mapkit_scaledValueForValue:v65];
              topAnchor3 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
            }

            if (v53 == selfCopy->_secondLabel)
            {
              LODWORD(v58) = 1148829696;
              [topAnchor3 setPriority:v58];
            }

            [v95 addObject:topAnchor3];
            v25 = v50;
          }

          else if (v50)
          {
            v53 = v92;
            firstBaselineAnchor2 = [(_MKUILabel *)v92 firstBaselineAnchor];
            bottomAnchor3 = [(UIImageView *)v50 bottomAnchor];
            [subtitleFont _mapkit_scaledValueForValue:34.0];
            v71 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:?];
            [v95 addObject:v71];

            topAnchor3 = v50;
            v25 = 0;
            selfCopy = v88;
          }

          else
          {
            selfCopy = v88;
            v53 = v92;
            if (userInterfaceIdiom == 5)
            {
              topAnchor3 = [(_MKUILabel *)v92 topAnchor];
              topAnchor4 = [(MKPlaceSectionRowView *)v88->_labelsSectionView topAnchor];
              v60 = 15.0;
              v61 = topAnchor3;
              v62 = topAnchor4;
            }

            else
            {
              [subtitleFont _mapkit_scaledValueForValue:0 scalingForMacIdiom:0 respectingTraitEnvironment:*&kMapKitPlaceCardHeaderTitleLabelBaselineToTop];
              v67 = v66;
              topAnchor3 = [(_MKUILabel *)v92 firstBaselineAnchor];
              topAnchor4 = [(MKPlaceSectionRowView *)v88->_labelsSectionView topAnchor];
              v61 = topAnchor3;
              v62 = topAnchor4;
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
        userInterfaceIdiom2 = [v73 userInterfaceIdiom];

        if (userInterfaceIdiom2 == 2)
        {
          [(_MKUILabel *)v40 bottomAnchor];
        }

        else
        {
          [(_MKUILabel *)v40 lastBaselineAnchor];
        }
        v76 = ;
        bottomAnchor4 = [(MKPlaceSectionRowView *)selfCopy->_labelsSectionView bottomAnchor];
        [(MKPlaceCardHeaderViewController *)selfCopy lastLabelToBottomConstant];
        v78 = [v76 constraintEqualToAnchor:bottomAnchor4 constant:?];
        lastLabelToBottomConstraint = selfCopy->_lastLabelToBottomConstraint;
        selfCopy->_lastLabelToBottomConstraint = v78;

        v75 = v95;
        [v95 addObject:selfCopy->_lastLabelToBottomConstraint];
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
    constraints = selfCopy->_constraints;
    selfCopy->_constraints = v80;

    [MEMORY[0x1E696ACD8] activateConstraints:selfCopy->_constraints];
  }
}

- (void)updateViews
{
  v36[1] = *MEMORY[0x1E69E9840];
  layout = self->_layout;
  v4 = layout == 1;
  if (layout == 1)
  {
    superview = [(UIImageView *)self->_logoImageView superview];

    if (!superview)
    {
      [(MKPlaceSectionRowView *)self->_labelsSectionView addSubview:self->_logoImageView];
      [(MKPlaceCardHeaderViewController *)self _loadLogo];
    }
  }

  firstLine = [(_MKDataHeaderModel *)self->_dataModel firstLine];
  [firstLine setColorProvider:&__block_literal_global_81];

  LOBYTE(v34) = v4;
  v7 = [(_MKDataHeaderModel *)self->_dataModel secondLine:MEMORY[0x1E69E9820]];
  [v7 setColorProvider:&v33];

  thirdLine = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
  [thirdLine setColorProvider:&__block_literal_global_83];

  forthLine = [(_MKDataHeaderModel *)self->_dataModel forthLine];
  [forthLine setColorProvider:&__block_literal_global_85];

  secondaryNameLine = [(_MKDataHeaderModel *)self->_dataModel secondaryNameLine];
  [secondaryNameLine setColorProvider:&__block_literal_global_87];

  if ([(MKPlaceCardHeaderViewController *)self _hasSecondaryName])
  {
    if (self->_layout == 1)
    {
LABEL_10:
      firstLine2 = [(_MKDataHeaderModel *)self->_dataModel firstLine];
      contentAttributedString = [firstLine2 contentAttributedString];
      [(_MKUILabel *)self->_firstLabel setAttributedText:contentAttributedString];

      secondLine = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      contentAttributedString2 = [secondLine contentAttributedString];
      [(_MKUILabel *)self->_secondLabel setAttributedText:contentAttributedString2];

      thirdLine2 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
      contentAttributedString3 = [thirdLine2 contentAttributedString];
      [(_MKUILabel *)self->_thirdLabel setAttributedText:contentAttributedString3];

      sectionView = [(MKPlaceSectionViewController *)self sectionView];
      labelsSectionView = self->_labelsSectionView;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&labelsSectionView count:1];
      [sectionView setRowViews:v29];

      [(_MKUILabel *)self->_secondLabel setHidden:self->_notVerified];
      goto LABEL_11;
    }

    secondaryNameLine2 = [(_MKDataHeaderModel *)self->_dataModel secondaryNameLine];
    contentAttributedString4 = [secondaryNameLine2 contentAttributedString];
    [(_MKUILabel *)self->_secondaryNameLabel setAttributedText:contentAttributedString4];
  }

  v13 = self->_layout;
  if (v13 == 1)
  {
    goto LABEL_10;
  }

  if (!v13)
  {
    firstLine3 = [(_MKDataHeaderModel *)self->_dataModel firstLine];
    contentAttributedString5 = [firstLine3 contentAttributedString];
    [(_MKUILabel *)self->_firstLabel setAttributedText:contentAttributedString5];

    secondLine2 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
    contentAttributedString6 = [secondLine2 contentAttributedString];
    [(_MKUILabel *)self->_secondLabel setAttributedText:contentAttributedString6];

    thirdLine3 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
    contentAttributedString7 = [thirdLine3 contentAttributedString];
    [(_MKUILabel *)self->_thirdLabel setAttributedText:contentAttributedString7];

    sectionView2 = [(MKPlaceSectionViewController *)self sectionView];
    v36[0] = self->_labelsSectionView;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    [sectionView2 setRowViews:v21];

    [(MKPlaceCardHeaderViewController *)self lastLabelToBottomConstant];
    [(NSLayoutConstraint *)self->_lastLabelToBottomConstraint setConstant:?];
  }

LABEL_11:
  transitLabel = [(_MKDataHeaderModel *)self->_dataModel transitLabel];

  if (transitLabel)
  {
    transitLabel2 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
    thirdDisplayedLabel = self->_thirdDisplayedLabel;
    self->_thirdDisplayedLabel = transitLabel2;

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
    layer = [(UIImageView *)self->_logoImageView layer];
    [layer setBounds:{0.0, 0.0, 86.0, 86.0}];

    layer2 = [(UIImageView *)self->_logoImageView layer];
    [layer2 setCornerRadius:11.0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)self->_logoImageView setBackgroundColor:clearColor];

    [(UIImageView *)self->_logoImageView setClipsToBounds:1];
    [(UIImageView *)self->_logoImageView _mapkit_setImageContentMode:2];
  }

  newLabel = [(MKPlaceCardHeaderViewController *)self newLabel];
  titleOnlyLabel = self->_titleOnlyLabel;
  self->_titleOnlyLabel = newLabel;

  [(_MKUILabel *)self->_titleOnlyLabel setTextAlignment:1];
  newLabel2 = [(MKPlaceCardHeaderViewController *)self newLabel];
  firstLabel = self->_firstLabel;
  self->_firstLabel = newLabel2;

  newLabel3 = [(MKPlaceCardHeaderViewController *)self newLabel];
  secondLabel = self->_secondLabel;
  self->_secondLabel = newLabel3;

  if (self->_layout == 1)
  {
    [(_MKUILabel *)self->_firstLabel setTextAlignment:1];
    [(_MKUILabel *)self->_secondLabel setTextAlignment:1];
  }

  newLabel4 = [(MKPlaceCardHeaderViewController *)self newLabel];
  thirdLabel = self->_thirdLabel;
  self->_thirdLabel = newLabel4;

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
      newLabel5 = [(MKPlaceCardHeaderViewController *)self newLabel];
      secondaryNameLabel = self->_secondaryNameLabel;
      self->_secondaryNameLabel = newLabel5;

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
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView setStackDelegate:self];

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

- (BOOL)_mapItemShouldDisplayDistance:(id)distance
{
  distanceCopy = distance;
  if ([distanceCopy _hasVenueFeatureType])
  {
    v4 = [distanceCopy _venueFeatureType] != 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)ETAProviderUpdated:(id)updated
{
  updatedCopy = updated;
  string = [(_MKTokenAttributedString *)self->_distanceToken string];
  distanceString = [updatedCopy distanceString];
  if (string == distanceString)
  {
    distanceString2 = [updatedCopy distanceString];
    if (!distanceString2)
    {
      goto LABEL_16;
    }
  }

  string2 = [(_MKTokenAttributedString *)self->_distanceToken string];
  if (!string2)
  {
    goto LABEL_10;
  }

  v8 = string2;
  distanceString3 = [updatedCopy distanceString];
  if (!distanceString3)
  {

LABEL_10:
    if (string == distanceString)
    {
    }

    goto LABEL_13;
  }

  v10 = distanceString3;
  string3 = [(_MKTokenAttributedString *)self->_distanceToken string];
  distanceString4 = [updatedCopy distanceString];
  v13 = [string3 isEqualToString:distanceString4];

  if (string == distanceString)
  {
  }

  if ((v13 & 1) == 0)
  {
LABEL_13:
    mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
    v15 = [(MKPlaceCardHeaderViewController *)self _mapItemShouldDisplayDistance:mapItem];

    if (!v15)
    {
      goto LABEL_17;
    }

    view = [(MKPlaceCardHeaderViewController *)self view];

    if (!view)
    {
      goto LABEL_17;
    }

    distanceString5 = [updatedCopy distanceString];
    [(_MKTokenAttributedString *)self->_distanceToken setString:distanceString5];

    [(MKPlaceCardHeaderViewController *)self updateViews];
    view2 = [(MKPlaceCardHeaderViewController *)self view];
    superview = [view2 superview];
    [superview _mapkit_setNeedsLayout];

    string = [(MKPlaceCardHeaderViewController *)self view];
    distanceString = [string superview];
    [distanceString _mapkit_layoutIfNeeded];
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
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  if ([_MKQuickRouteManager isLikelyToReturnETAForLocation:mapItem])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[MKLocationManager sharedLocationManager];
    lastLocation = [v4 lastLocation];
    v3 = lastLocation != 0;
  }

  return v3;
}

- (void)_setupDatas
{
  _currentTitle = [(MKPlaceCardHeaderViewController *)self _currentTitle];
  [(_MKTokenAttributedString *)self->_titleToken setString:_currentTitle];

  _secondaryNameTitle = [(MKPlaceCardHeaderViewController *)self _secondaryNameTitle];
  [(_MKTokenAttributedString *)self->_secondaryNameToken setString:_secondaryNameTitle];

  _reviewLabelText = [(MKPlaceCardHeaderViewController *)self _reviewLabelText];
  [(_MKTokenAttributedString *)self->_ratingsToken setAttributedString:_reviewLabelText];

  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _hasPriceDescription = [mapItem _hasPriceDescription];
  mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v9 = mapItem2;
  if (_hasPriceDescription)
  {
    [mapItem2 _priceDescription];
  }

  else
  {
    [mapItem2 _priceRangeString];
  }
  v10 = ;
  [(_MKTokenAttributedString *)self->_priceToken setString:v10];

  _openStateString = [(MKPlaceCardHeaderViewController *)self _openStateString];
  [(_MKTokenAttributedString *)self->_openStateToken setAttributedString:_openStateString];

  _verifiedText = [(MKPlaceCardHeaderViewController *)self _verifiedText];
  [(_MKTokenAttributedString *)self->_verifiedToken setAttributedString:_verifiedText];

  mapItem3 = [(_MKPlaceItem *)self->_placeItem mapItem];
  _firstLocalizedCategoryName = [mapItem3 _firstLocalizedCategoryName];
  v15 = [_firstLocalizedCategoryName length];

  v16 = &OBJC_IVAR___MKLookAroundView__storefrontFullyDrawn;
  if (v15)
  {
    mapItem4 = [(_MKPlaceItem *)self->_placeItem mapItem];
    _firstLocalizedCategoryName2 = [mapItem4 _firstLocalizedCategoryName];
    [(_MKTokenAttributedString *)self->_categoryToken setString:_firstLocalizedCategoryName2];
  }

  else
  {
    if (!self->_lineItem)
    {
      goto LABEL_9;
    }

    mapItem4 = _MKLocalizedStringFromThisBundle(@"Line_Card_Category");
    [(_MKTokenAttributedString *)self->_categoryToken setString:mapItem4];
  }

LABEL_9:
  if (!self->_isUserLocation)
  {
    goto LABEL_20;
  }

  v19 = _MKLocalizedStringFromThisBundle(@"NEAR_BY_PLACE_HEADER_STRING");
  v20 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v20 isAuthorizedForPreciseLocation];

  mapItem5 = [(_MKPlaceItem *)self->_placeItem mapItem];
  _geoAddress = [mapItem5 _geoAddress];
  structuredAddress = [_geoAddress structuredAddress];
  v25 = structuredAddress;
  if (!isAuthorizedForPreciseLocation)
  {
    locality = [structuredAddress locality];

    if ([locality length])
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:v19, locality];
      mapItem6 = [(_MKPlaceItem *)self->_placeItem mapItem];
      _geoAddress2 = [mapItem6 _geoAddress];
      structuredAddress2 = [_geoAddress2 structuredAddress];
      administrativeAreaCode = [structuredAddress2 administrativeAreaCode];

      if ([administrativeAreaCode length])
      {
        v32 = [v27 stringByAppendingFormat:@", %@", administrativeAreaCode];

        v27 = v32;
      }

      v16 = &OBJC_IVAR___MKLookAroundView__storefrontFullyDrawn;

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  locality = [structuredAddress fullThoroughfare];

  if (![locality length])
  {
LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:v19, locality];
LABEL_18:
  v16 = &OBJC_IVAR___MKLookAroundView__storefrontFullyDrawn;
LABEL_19:

  [(_MKTokenAttributedString *)self->_userLocationToken setString:v27];
LABEL_20:
  mapItem7 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if ([mapItem7 _venueFeatureType] == 4)
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

  mapItem8 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v36 = [mapItem8 venueLabelWithContext:2];
  [(_MKTokenAttributedString *)self->_venueToken setString:v36];

LABEL_24:
  transitLabel = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
  [transitLabel removeFromSuperview];

  [(_MKDataHeaderModel *)self->_dataModel setTransitLabel:0];
  mapItem9 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if ([mapItem9 _hasTransitLabels])
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
  mapItem10 = [(_MKPlaceItem *)self->_placeItem mapItem];
  v42 = [(MKTransitInfoLabelView *)v40 initWithMapItem:mapItem10];
  [(_MKDataHeaderModel *)self->_dataModel setTransitLabel:v42];

  transitLabel2 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
  [transitLabel2 set_mapkit_themeColorProvider:&__block_literal_global_70];

  v44 = v16[867];
  v45 = *(&self->super.super.super.super.isa + v44);
  if (v45)
  {
    labelItems = [v45 labelItems];
    v47 = [labelItems count];

    if (v47)
    {
      labelItems2 = [*(&self->super.super.super.super.isa + v44) labelItems];
      transitLabel3 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
      [transitLabel3 setLabelItems:labelItems2];
    }

    else
    {
      [(_MKDataHeaderModel *)self->_dataModel setTransitLabel:0];
    }
  }

  transitLabel4 = [(_MKDataHeaderModel *)self->_dataModel transitLabel];
  [transitLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

LABEL_32:
  _isLikelyToShowDistance = [(MKPlaceCardHeaderViewController *)self _isLikelyToShowDistance];
  secondLine = [(_MKDataHeaderModel *)self->_dataModel secondLine];
  [secondLine setShouldUseEmptyPlaceholder:_isLikelyToShowDistance];

  firstLine = [(_MKDataHeaderModel *)self->_dataModel firstLine];
  [firstLine addToken:self->_titleToken];

  if (self->_layout == 1)
  {
    p_verifiedToken = &self->_verifiedToken;
    isEmpty = [(_MKTokenAttributedString *)self->_verifiedToken isEmpty];
    self->_notVerified = isEmpty;
    if (isEmpty)
    {
      return;
    }

    secondLine2 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
  }

  else
  {
    if ([(_MKTokenAttributedString *)self->_userLocationToken isEmpty])
    {
      secondLine3 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      [secondLine3 addToken:self->_categoryToken];

      secondLine4 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      [secondLine4 addToken:self->_venueToken];

      secondLine5 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      [secondLine5 addToken:self->_distanceToken];

      secondLine6 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      p_openStateToken = &self->_openStateToken;
    }

    else
    {
      isEmpty2 = [(_MKTokenAttributedString *)self->_venueToken isEmpty];
      secondLine6 = [(_MKDataHeaderModel *)self->_dataModel secondLine];
      if (isEmpty2)
      {
        p_openStateToken = &self->_userLocationToken;
      }

      else
      {
        p_openStateToken = &self->_venueToken;
      }
    }

    [secondLine6 addToken:*p_openStateToken];

    if ([(MKPlaceCardHeaderViewController *)self _hasSecondaryName]&& ![(_MKTokenAttributedString *)self->_secondaryNameToken isEmpty])
    {
      secondaryNameLine = [(_MKDataHeaderModel *)self->_dataModel secondaryNameLine];
      [secondaryNameLine addToken:self->_secondaryNameToken];
    }

    thirdLine = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
    [thirdLine addToken:self->_ratingsToken];

    secondLine2 = [(_MKDataHeaderModel *)self->_dataModel thirdLine];
    p_verifiedToken = &self->_priceToken;
  }

  v65 = secondLine2;
  [secondLine2 addToken:*p_verifiedToken];
}

- (id)_openStateString
{
  v16[1] = *MEMORY[0x1E69E9840];
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _hasBusinessHours = [mapItem _hasBusinessHours];

  if (_hasBusinessHours)
  {
    if (self->_optionSmallScreen)
    {
      v5 = 13;
    }

    else
    {
      v5 = 9;
    }

    localizedHoursBuilder = [(MKPlaceCardHeaderViewController *)self localizedHoursBuilder];
    [localizedHoursBuilder setLocalizedHoursStringOptions:v5];

    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    localizedHoursBuilder2 = [(MKPlaceCardHeaderViewController *)self localizedHoursBuilder];
    localizedOperatingHours = [localizedHoursBuilder2 localizedOperatingHours];
    v15 = *MEMORY[0x1E69DB650];
    localizedHoursBuilder3 = [(MKPlaceCardHeaderViewController *)self localizedHoursBuilder];
    hoursStateLabelColor = [localizedHoursBuilder3 hoursStateLabelColor];
    v16[0] = hoursStateLabelColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = [v7 initWithString:localizedOperatingHours attributes:v12];
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
    mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
    v6 = [(_MKLocalizedHoursBuilder *)v4 initWithMapItem:mapItem localizedHoursStringOptions:0];
    v7 = self->_localizedHoursBuilder;
    self->_localizedHoursBuilder = v6;

    localizedHoursBuilder = self->_localizedHoursBuilder;
  }

  return localizedHoursBuilder;
}

- (id)_reviewLabelText
{
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _hasUserRatingScore = [mapItem _hasUserRatingScore];

  if (_hasUserRatingScore)
  {
    mk_theme = [(UIViewController *)self mk_theme];
    lightTextColor = [mk_theme lightTextColor];

    mapItem2 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v8 = +[MKFontManager sharedManager];
    subtitleFont = [v8 subtitleFont];
    mk_theme2 = [(UIViewController *)self mk_theme];
    v11 = [MKRatingStringBuilder ratingAndReviewSummaryAttributedStringForMapItem:mapItem2 textColor:lightTextColor font:subtitleFont theme:mk_theme2];
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
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _isMessageIDVerified = [mapItem _isMessageIDVerified];

  if (_isMessageIDVerified)
  {
    mk_theme = [(UIViewController *)self mk_theme];
    lightTextColor = [mk_theme lightTextColor];

    v7 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.seal.fill"];
    v9 = [v8 imageWithRenderingMode:2];

    [v7 setImage:v9];
    v10 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v7];
    v11 = [v10 mutableCopy];

    v24 = *MEMORY[0x1E69DB650];
    v12 = v24;
    v25[0] = lightTextColor;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v11 addAttributes:v13 range:{0, 1}];

    v14 = [v11 copy];
    v15 = objc_alloc(MEMORY[0x1E696AD40]);
    v16 = _MKLocalizedStringFromThisBundle(@"Brand_Card_Verified");
    v22[0] = *MEMORY[0x1E69DB648];
    v17 = +[MKFontManager sharedManager];
    subtitleFont = [v17 subtitleFont];
    v22[1] = v12;
    v23[0] = subtitleFont;
    v23[1] = lightTextColor;
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
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  _secondaryName = [mapItem _secondaryName];

  return _secondaryName;
}

- (BOOL)_hasSecondaryName
{
  _secondaryNameTitle = [(MKPlaceCardHeaderViewController *)self _secondaryNameTitle];
  v3 = [_secondaryNameTitle length] != 0;

  return v3;
}

- (id)_currentTitle
{
  name = [(_MKPlaceItem *)self->_placeItem name];
  v4 = [name length];

  if (v4)
  {
    placeItem = self->_placeItem;
LABEL_4:
    name2 = [(_MKPlaceItem *)placeItem name];
LABEL_5:
    name5 = name2;
    goto LABEL_6;
  }

  name3 = [(GEOTransitLineItem *)self->_lineItem name];
  v7 = [name3 length];

  placeItem = self->_lineItem;
  if (v7)
  {
    goto LABEL_4;
  }

  system = [(_MKPlaceItem *)placeItem system];
  name4 = [system name];
  v13 = [name4 length];

  lineItem = self->_lineItem;
  if (v13)
  {
    system2 = [(GEOTransitLineItem *)lineItem system];
    name5 = [system2 name];
  }

  else
  {
    if (lineItem)
    {
      name2 = _MKLocalizedStringFromThisBundle(@"Line_Card_Default_Title");
      goto LABEL_5;
    }

    name5 = 0;
  }

LABEL_6:

  return name5;
}

- (void)animateSecondLabelWithPercentage:(double)percentage
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = fmin(percentage, 1.0);
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
    isActive = [(NSLayoutConstraint *)secondLabelToFirstLabelConstraint isActive];
    if (v5 == 1.0)
    {
      if (isActive)
      {
        v8 = MEMORY[0x1E696ACD8];
        v14[0] = self->_secondLabelToFirstLabelConstraint;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [v8 deactivateConstraints:v9];
      }
    }

    else
    {
      if (!isActive)
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
    secondaryNameTimingFunction = [(MKPlaceCardHeaderViewController *)self secondaryNameTimingFunction];
    contentAlpha = self->_contentAlpha;
    *&contentAlpha = contentAlpha;
    [secondaryNameTimingFunction _solveForInput:contentAlpha];
    [(_MKUILabel *)self->_secondaryNameLabel setAlpha:v5];
  }
}

- (void)setContentAlpha:(double)alpha
{
  if (self->_contentAlpha != alpha)
  {
    self->_contentAlpha = alpha;
    [(MKPlaceCardHeaderViewController *)self updateContentAlpha];
  }
}

- (double)contentAlpha
{
  isHidden = [(MKPlaceSectionRowView *)self->_labelsSectionView isHidden];
  result = 0.0;
  if ((isHidden & 1) == 0)
  {
    return self->_contentAlpha;
  }

  return result;
}

- (void)updateHeaderTitle
{
  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  name = [mapItem name];

  view = [(MKPlaceCardHeaderViewController *)self view];

  if (view)
  {
    [(_MKTokenAttributedString *)self->_titleToken setString:name];
    [(MKPlaceCardHeaderViewController *)self updateViews];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MKPlaceCardHeaderViewController;
  [(MKPlaceCardHeaderViewController *)&v6 viewDidLoad];
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView setPreservesSuperviewLayoutMargins:1];

  sectionView2 = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView2 setShowsBottomHairline:0];

  [(MKPlaceCardHeaderViewController *)self _createViews];
  [(MKPlaceCardHeaderViewController *)self _setupDatas];
  [(MKPlaceCardHeaderViewController *)self updateContent];
  view = [(MKPlaceCardHeaderViewController *)self view];
  [(_MKDataHeaderModel *)self->_dataModel setOwnerView:view];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChangeNotificationHandler name:*MEMORY[0x1E69DDC48] object:0];

  mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
  v26 = [mapItem _bestBrandIconURLForSize:1 allowSmaller:{86.0, 86.0}];
  logoURL = self->_logoURL;
  self->_logoURL = v26;
}

- (MKPlaceCardHeaderViewController)initWithLineItem:(id)item layout:(unint64_t)layout
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MKPlaceCardHeaderViewController;
  v8 = [(MKPlaceCardHeaderViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lineItem, item);
    v9->_layout = layout;
    [(MKPlaceCardHeaderViewController *)v9 _commonInit];
  }

  return v9;
}

- (MKPlaceCardHeaderViewController)initWithPlaceItem:(id)item layout:(unint64_t)layout
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MKPlaceCardHeaderViewController;
  v8 = [(MKPlaceCardHeaderViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_placeItem, item);
    v9->_layout = layout;
    [(MKPlaceCardHeaderViewController *)v9 _commonInit];
  }

  return v9;
}

- (double)lastLabelToBottomConstant
{
  v2 = +[MKFontManager sharedManager];
  subtitleFont = [v2 subtitleFont];

  v4 = +[MKSystemController sharedInstance];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  v6 = 0.0;
  if (userInterfaceIdiom != 2)
  {
    [subtitleFont _mapkit_scaledValueForValue:21.0];
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
  largeTitleFont = [v2 largeTitleFont];

  [largeTitleFont _mapkit_scaledValueForValue:32.0];
  v5 = v4 + 4.0;
  [largeTitleFont _mapkit_scaledValueForValue:21.0];
  v7 = v5 + v6 + 21.0;

  return v7;
}

@end