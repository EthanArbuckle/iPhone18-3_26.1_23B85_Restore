@interface RelatedSearchSuggestionOutlineCell
- (RelatedSearchSuggestionOutlineCell)initWithFrame:(CGRect)frame;
- (id)_createMapsThemeButtonWithTitle:(id)title;
- (id)_createMapsThemeLabelWithTitle:(id)title;
- (void)_componentButtonTapped:(id)tapped;
- (void)_updateFromModel;
- (void)setCellModel:(id)model;
@end

@implementation RelatedSearchSuggestionOutlineCell

- (void)_componentButtonTapped:(id)tapped
{
  v4 = [tapped tag];
  suggestion = [(RelatedSearchSuggestionOutlineCellModel *)self->_cellModel suggestion];
  components = [suggestion components];

  v6 = v4 >= [components count];
  v7 = components;
  if (!v6)
  {
    v8 = [components objectAtIndexedSubscript:v4];
    if ([v8 isRelatedSearchSuggestion])
    {
      delegate = [(RelatedSearchSuggestionOutlineCellModel *)self->_cellModel delegate];
      suggestion2 = [v8 suggestion];
      [delegate relatedSearchSuggestionOutlineCellDidTapActionButtonWithSuggestion:suggestion2];
    }

    v7 = components;
  }
}

- (id)_createMapsThemeLabelWithTitle:(id)title
{
  titleCopy = title;
  v5 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MapsThemeLabel *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor secondaryLabelColor];
  [(MapsThemeLabel *)v5 setTextColor:v6];

  _labelFont = [(RelatedSearchSuggestionOutlineCell *)self _labelFont];
  [(MapsThemeLabel *)v5 setFont:_labelFont];

  LODWORD(v8) = 1148846080;
  [(MapsThemeLabel *)v5 setContentHuggingPriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [(MapsThemeLabel *)v5 setContentCompressionResistancePriority:0 forAxis:v9];
  [(MapsThemeLabel *)v5 setText:titleCopy];

  return v5;
}

- (id)_createMapsThemeButtonWithTitle:(id)title
{
  titleCopy = title;
  v5 = [MapsThemeButton buttonWithType:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 _setTouchInsets:{-7.0, -7.0, -7.0, -7.0}];
  [v5 setTitleColorProvider:&stru_1016309D0];
  _labelFont = [(RelatedSearchSuggestionOutlineCell *)self _labelFont];
  titleLabel = [v5 titleLabel];
  [titleLabel setFont:_labelFont];

  [v5 addTarget:self action:"_componentButtonTapped:" forControlEvents:64];
  titleLabel2 = [v5 titleLabel];
  [titleLabel2 setLineBreakMode:4];

  if (MKApplicationLayoutDirectionIsRightToLeft())
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v5 setContentHorizontalAlignment:v9];
  [v5 setTitle:titleCopy forState:0];

  return v5;
}

- (void)_updateFromModel
{
  subviews = [(UIStackView *)self->_suggestionStackView subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];

  v15 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  suggestion = [(RelatedSearchSuggestionOutlineCellModel *)self->_cellModel suggestion];
  components = [suggestion components];

  v6 = [components countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(components);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        isRelatedSearchSuggestion = [v11 isRelatedSearchSuggestion];
        displayText = [v11 displayText];
        if (isRelatedSearchSuggestion)
        {
          v14 = [(RelatedSearchSuggestionOutlineCell *)self _createMapsThemeButtonWithTitle:displayText];

          [v14 setTag:v8];
        }

        else
        {
          v14 = [(RelatedSearchSuggestionOutlineCell *)self _createMapsThemeLabelWithTitle:displayText];
        }

        [(UIStackView *)self->_suggestionStackView addArrangedSubview:v14];
        ++v8;
      }

      v7 = [components countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [NSLayoutConstraint activateConstraints:v15];
}

- (void)setCellModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_cellModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(RelatedSearchSuggestionOutlineCellModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, model);
      [(RelatedSearchSuggestionOutlineCell *)self _updateFromModel];
      v6 = v8;
    }
  }
}

- (RelatedSearchSuggestionOutlineCell)initWithFrame:(CGRect)frame
{
  v29.receiver = self;
  v29.super_class = RelatedSearchSuggestionOutlineCell;
  v3 = [(SidebarOutlineCell *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    contentView = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    [contentView addSubview:v3->_suggestionStackView];

    topAnchor = [(UIStackView *)v3->_suggestionStackView topAnchor];
    contentView2 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v25;
    leadingAnchor = [(UIStackView *)v3->_suggestionStackView leadingAnchor];
    contentView3 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    layoutMarginsGuide = [contentView3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[1] = v20;
    trailingAnchor = [(UIStackView *)v3->_suggestionStackView trailingAnchor];
    contentView4 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[2] = v12;
    bottomAnchor = [(UIStackView *)v3->_suggestionStackView bottomAnchor];
    contentView5 = [(RelatedSearchSuggestionOutlineCell *)v3 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v30[3] = v16;
    v17 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }

  return v3;
}

@end