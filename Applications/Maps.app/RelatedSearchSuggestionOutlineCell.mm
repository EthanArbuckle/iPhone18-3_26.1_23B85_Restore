@interface RelatedSearchSuggestionOutlineCell
- (RelatedSearchSuggestionOutlineCell)initWithFrame:(CGRect)a3;
- (id)_createMapsThemeButtonWithTitle:(id)a3;
- (id)_createMapsThemeLabelWithTitle:(id)a3;
- (void)_componentButtonTapped:(id)a3;
- (void)_updateFromModel;
- (void)setCellModel:(id)a3;
@end

@implementation RelatedSearchSuggestionOutlineCell

- (void)_componentButtonTapped:(id)a3
{
  v4 = [a3 tag];
  v5 = [(RelatedSearchSuggestionOutlineCellModel *)self->_cellModel suggestion];
  v11 = [v5 components];

  v6 = v4 >= [v11 count];
  v7 = v11;
  if (!v6)
  {
    v8 = [v11 objectAtIndexedSubscript:v4];
    if ([v8 isRelatedSearchSuggestion])
    {
      v9 = [(RelatedSearchSuggestionOutlineCellModel *)self->_cellModel delegate];
      v10 = [v8 suggestion];
      [v9 relatedSearchSuggestionOutlineCellDidTapActionButtonWithSuggestion:v10];
    }

    v7 = v11;
  }
}

- (id)_createMapsThemeLabelWithTitle:(id)a3
{
  v4 = a3;
  v5 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MapsThemeLabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor secondaryLabelColor];
  [(MapsThemeLabel *)v5 setTextColor:v6];

  v7 = [(RelatedSearchSuggestionOutlineCell *)self _labelFont];
  [(MapsThemeLabel *)v5 setFont:v7];

  LODWORD(v8) = 1148846080;
  [(MapsThemeLabel *)v5 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [(MapsThemeLabel *)v5 setContentCompressionResistancePriority:0 forAxis:v9];
  [(MapsThemeLabel *)v5 setText:v4];

  return v5;
}

- (id)_createMapsThemeButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = [MapsThemeButton buttonWithType:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 _setTouchInsets:{-7.0, -7.0, -7.0, -7.0}];
  [v5 setTitleColorProvider:&stru_1016309D0];
  v6 = [(RelatedSearchSuggestionOutlineCell *)self _labelFont];
  v7 = [v5 titleLabel];
  [v7 setFont:v6];

  [v5 addTarget:self action:"_componentButtonTapped:" forControlEvents:64];
  v8 = [v5 titleLabel];
  [v8 setLineBreakMode:4];

  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v5 setContentHorizontalAlignment:v9];
  [v5 setTitle:v4 forState:0];

  return v5;
}

- (void)_updateFromModel
{
  v3 = [(UIStackView *)self->_suggestionStackView subviews];
  [v3 makeObjectsPerformSelector:"removeFromSuperview"];

  v15 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(RelatedSearchSuggestionOutlineCellModel *)self->_cellModel suggestion];
  v5 = [v4 components];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 isRelatedSearchSuggestion];
        v13 = [v11 displayText];
        if (v12)
        {
          v14 = [(RelatedSearchSuggestionOutlineCell *)self _createMapsThemeButtonWithTitle:v13];

          [v14 setTag:v8];
        }

        else
        {
          v14 = [(RelatedSearchSuggestionOutlineCell *)self _createMapsThemeLabelWithTitle:v13];
        }

        [(UIStackView *)self->_suggestionStackView addArrangedSubview:v14];
        ++v8;
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [NSLayoutConstraint activateConstraints:v15];
}

- (void)setCellModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_cellModel != v5)
  {
    v8 = v5;
    v7 = [(RelatedSearchSuggestionOutlineCellModel *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, a3);
      [(RelatedSearchSuggestionOutlineCell *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (RelatedSearchSuggestionOutlineCell)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = RelatedSearchSuggestionOutlineCell;
  v3 = [(SidebarOutlineCell *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    suggestionStackView = v3->_suggestionStackView;
    v3->_suggestionStackView = v4;

    [(UIStackView *)v3->_suggestionStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_suggestionStackView setAxis:1];
    [(UIStackView *)v3->_suggestionStackView setDistribution:0];
    [(UIStackView *)v3->_suggestionStackView setAlignment:1];
    [(UIStackView *)v3->_suggestionStackView setSpacing:1.17549435e-38];
    [(UIStackView *)v3->_suggestionStackView setBaselineRelativeArrangement:1];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(RelatedSearchSuggestionOutlineCell *)v3 setAccessibilityIdentifier:v7];

    v8 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    [v8 addSubview:v3->_suggestionStackView];

    v27 = [(UIStackView *)v3->_suggestionStackView topAnchor];
    v28 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    v26 = [v28 topAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v30[0] = v25;
    v23 = [(UIStackView *)v3->_suggestionStackView leadingAnchor];
    v24 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    v22 = [v24 layoutMarginsGuide];
    v21 = [v22 leadingAnchor];
    v20 = [v23 constraintEqualToAnchor:v21];
    v30[1] = v20;
    v19 = [(UIStackView *)v3->_suggestionStackView trailingAnchor];
    v9 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    v10 = [v9 layoutMarginsGuide];
    v11 = [v10 trailingAnchor];
    v12 = [v19 constraintEqualToAnchor:v11];
    v30[2] = v12;
    v13 = [(UIStackView *)v3->_suggestionStackView bottomAnchor];
    v14 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v30[3] = v16;
    v17 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }

  return v3;
}

@end