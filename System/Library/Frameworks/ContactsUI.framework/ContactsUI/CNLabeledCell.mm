@interface CNLabeledCell
- (CNLabeledCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)standardLabelView;
- (UILabel)standardValueView;
- (UIView)rightMostView;
- (double)minCellHeight;
- (id)constantConstraints;
- (id)constantConstraintsForHorizontalLayout;
- (id)constantConstraintsForStandardLayout;
- (id)constantConstraintsForVerticalLayout;
- (id)variableConstraints;
- (id)variableConstraintsForHorizontalLayout;
- (id)variableConstraintsForStandardLayout;
- (id)variableConstraintsForVerticalLayout;
- (void)addChevron;
- (void)removeChevron;
- (void)setLabelTextAttributes:(id)attributes;
- (void)setLabelViewNeedsHuggingContent:(BOOL)content;
- (void)setValueTextAttributes:(id)attributes;
- (void)setValueViewNeedsHuggingContent:(BOOL)content;
- (void)tintColorDidChange;
@end

@implementation CNLabeledCell

- (void)tintColorDidChange
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CNLabeledCell;
  [(CNLabeledCell *)&v6 tintColorDidChange];
  v7 = *MEMORY[0x1E69DB650];
  v3 = +[CNContactStyle currentStyle];
  textColor = [v3 textColor];
  v8[0] = textColor;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self cn_updateDictionaryForKey:@"labelTextAttributes" withChanges:v5];
}

- (void)setValueTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_valueTextAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    objc_storeStrong(&self->_valueTextAttributes, attributes);
    valueView = [(CNLabeledCell *)self valueView];
    [valueView setAb_textAttributes:v7];

    attributesCopy = v7;
  }
}

- (void)setLabelTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_labelTextAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    objc_storeStrong(&self->_labelTextAttributes, attributes);
    labelView = [(CNLabeledCell *)self labelView];
    [labelView setAb_textAttributes:v7];

    attributesCopy = v7;
  }
}

- (void)setValueViewNeedsHuggingContent:(BOOL)content
{
  contentCopy = content;
  self->_valueViewNeedsHuggingContent = content;
  objc_opt_class();
  valueView = [(CNLabeledCell *)self valueView];
  if (objc_opt_isKindOfClass())
  {
    v5 = valueView;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  CNSetLabelNeedsHuggingContent(v6, contentCopy);
}

- (void)setLabelViewNeedsHuggingContent:(BOOL)content
{
  contentCopy = content;
  self->_labelViewNeedsHuggingContent = content;
  objc_opt_class();
  labelView = [(CNLabeledCell *)self labelView];
  if (objc_opt_isKindOfClass())
  {
    v5 = labelView;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  CNSetLabelNeedsHuggingContent(v6, contentCopy);
}

- (UILabel)standardValueView
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setTextAlignment:4];
  LODWORD(v5) = 1148829696;
  [v4 setContentHuggingPriority:1 forAxis:v5];
  [v4 _setWantsUnderlineForAccessibilityButtonShapesEnabled:1];
  [v4 setNumberOfLines:{objc_msgSend(MEMORY[0x1E69DB878], "ab_preferredContentSizeCategoryIsAccessibilityCategory") ^ 1}];
  CNSetLabelNeedsHuggingContent(v4, [(CNLabeledCell *)self valueViewNeedsHuggingContent]);

  return v4;
}

- (UILabel)standardLabelView
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setTextAlignment:4];
  [v4 setNumberOfLines:{objc_msgSend(MEMORY[0x1E69DB878], "ab_preferredContentSizeCategoryIsAccessibilityCategory") ^ 1}];
  CNSetLabelNeedsHuggingContent(v4, [(CNLabeledCell *)self labelViewNeedsHuggingContent]);

  return v4;
}

- (UIView)rightMostView
{
  chevron = [(CNLabeledCell *)self chevron];
  superview = [chevron superview];

  if (superview)
  {
    chevron2 = [(CNLabeledCell *)self chevron];
  }

  else
  {
    valueView = [(CNLabeledCell *)self valueView];

    if (valueView)
    {
      [(CNLabeledCell *)self valueView];
    }

    else
    {
      [(CNLabeledCell *)self labelView];
    }
    chevron2 = ;
  }

  return chevron2;
}

- (id)variableConstraintsForHorizontalLayout
{
  v3 = MEMORY[0x1E695DF70];
  v13.receiver = self;
  v13.super_class = CNLabeledCell;
  variableConstraints = [(CNContactCell *)&v13 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  chevron = [(CNLabeledCell *)self chevron];
  superview = [chevron superview];

  if (!superview)
  {
    v8 = MEMORY[0x1E696ACD8];
    rightMostView = [(CNLabeledCell *)self rightMostView];
    contentView = [(CNLabeledCell *)self contentView];
    v11 = [v8 constraintWithItem:rightMostView attribute:6 relatedBy:0 toItem:contentView attribute:18 multiplier:1.0 constant:0.0];
    [v5 addObject:v11];
  }

  return v5;
}

- (id)constantConstraintsForHorizontalLayout
{
  v3 = MEMORY[0x1E695DF70];
  v67.receiver = self;
  v67.super_class = CNLabeledCell;
  constantConstraints = [(CNContactCell *)&v67 constantConstraints];
  v5 = [v3 arrayWithArray:constantConstraints];

  v6 = MEMORY[0x1E696ACD8];
  labelView = [(CNLabeledCell *)self labelView];
  contentView = [(CNLabeledCell *)self contentView];
  v9 = [v6 constraintWithItem:labelView attribute:5 relatedBy:0 toItem:contentView attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  labelView2 = [(CNLabeledCell *)self labelView];
  v12 = [v10 constraintWithItem:labelView2 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:0.0 constant:44.0];
  [v5 addObject:v12];

  valueView = [(CNLabeledCell *)self valueView];

  if (valueView)
  {
    v14 = MEMORY[0x1E696ACD8];
    valueView2 = [(CNLabeledCell *)self valueView];
    labelView3 = [(CNLabeledCell *)self labelView];
    v17 = [v14 constraintWithItem:valueView2 attribute:5 relatedBy:0 toItem:labelView3 attribute:6 multiplier:1.0 constant:16.0];
    [v5 addObject:v17];
  }

  chevron = [(CNLabeledCell *)self chevron];
  superview = [chevron superview];

  if (superview)
  {
    v20 = MEMORY[0x1E696ACD8];
    chevron2 = [(CNLabeledCell *)self chevron];
    contentView2 = [(CNLabeledCell *)self contentView];
    v23 = [v20 constraintWithItem:chevron2 attribute:10 relatedBy:0 toItem:contentView2 attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v23];

    v24 = MEMORY[0x1E696ACD8];
    chevron3 = [(CNLabeledCell *)self chevron];
    valueView3 = [(CNLabeledCell *)self valueView];
    v27 = [v24 constraintWithItem:chevron3 attribute:5 relatedBy:1 toItem:valueView3 attribute:6 multiplier:1.0 constant:16.0];
    [v5 addObject:v27];

    v28 = MEMORY[0x1E696ACD8];
    chevron4 = [(CNLabeledCell *)self chevron];
    contentView3 = [(CNLabeledCell *)self contentView];
    v31 = [v28 constraintWithItem:chevron4 attribute:6 relatedBy:0 toItem:contentView3 attribute:18 multiplier:1.0 constant:0.0];
    [v5 addObject:v31];
  }

  valueView4 = [(CNLabeledCell *)self valueView];

  v33 = MEMORY[0x1E696ACD8];
  if (valueView4)
  {
    valueView5 = [(CNLabeledCell *)self valueView];
    contentView4 = [(CNLabeledCell *)self contentView];
    v36 = [v33 constraintWithItem:valueView5 attribute:3 relatedBy:0 toItem:contentView4 attribute:15 multiplier:1.0 constant:0.0];
    [v5 addObject:v36];

    lastObject = [v5 lastObject];
    LODWORD(v38) = 1148813312;
    [lastObject setPriority:v38];

    v39 = MEMORY[0x1E696ACD8];
    contentView5 = [(CNLabeledCell *)self contentView];
    valueView6 = [(CNLabeledCell *)self valueView];
    v42 = [v39 constraintWithItem:contentView5 attribute:16 relatedBy:0 toItem:valueView6 attribute:4 multiplier:1.0 constant:0.0];
    [v5 addObject:v42];

    lastObject2 = [v5 lastObject];
    LODWORD(v44) = 1148813312;
    [lastObject2 setPriority:v44];

    v45 = MEMORY[0x1E696ACD8];
    labelView4 = [(CNLabeledCell *)self labelView];
    valueView7 = [(CNLabeledCell *)self valueView];
    v48 = [v45 constraintWithItem:labelView4 attribute:11 relatedBy:0 toItem:valueView7 attribute:11 multiplier:1.0 constant:0.0];
    [v5 addObject:v48];

    v49 = MEMORY[0x1E696ACD8];
    [(CNLabeledCell *)self valueView];
  }

  else
  {
    labelView5 = [(CNLabeledCell *)self labelView];
    contentView6 = [(CNLabeledCell *)self contentView];
    v52 = [v33 constraintWithItem:labelView5 attribute:3 relatedBy:0 toItem:contentView6 attribute:15 multiplier:1.0 constant:0.0];
    [v5 addObject:v52];

    lastObject3 = [v5 lastObject];
    LODWORD(v54) = 1148813312;
    [lastObject3 setPriority:v54];

    v55 = MEMORY[0x1E696ACD8];
    contentView7 = [(CNLabeledCell *)self contentView];
    labelView6 = [(CNLabeledCell *)self labelView];
    v58 = [v55 constraintWithItem:contentView7 attribute:16 relatedBy:0 toItem:labelView6 attribute:4 multiplier:1.0 constant:0.0];
    [v5 addObject:v58];

    lastObject4 = [v5 lastObject];
    LODWORD(v60) = 1148813312;
    [lastObject4 setPriority:v60];

    v49 = MEMORY[0x1E696ACD8];
    [(CNLabeledCell *)self labelView];
  }
  v61 = ;
  contentView8 = [(CNLabeledCell *)self contentView];
  v63 = [v49 constraintWithItem:v61 attribute:10 relatedBy:0 toItem:contentView8 attribute:10 multiplier:1.0 constant:0.0];
  [v5 addObject:v63];

  lastObject5 = [v5 lastObject];
  LODWORD(v65) = 1148796928;
  [lastObject5 setPriority:v65];

  return v5;
}

- (id)variableConstraintsForVerticalLayout
{
  v3 = MEMORY[0x1E695DF70];
  v20.receiver = self;
  v20.super_class = CNLabeledCell;
  variableConstraints = [(CNContactCell *)&v20 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  chevron = [(CNLabeledCell *)self chevron];
  superview = [chevron superview];

  if (superview)
  {
    v9 = MEMORY[0x1E696ACD8];
    chevron2 = [(CNLabeledCell *)self chevron];
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      labelView = [(CNLabeledCell *)self labelView];
      v12 = [v9 constraintWithItem:chevron2 attribute:10 relatedBy:0 toItem:labelView attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v12];

      v13 = MEMORY[0x1E696ACD8];
      chevron3 = [(CNLabeledCell *)self chevron];
      [(CNLabeledCell *)self labelView];
    }

    else
    {
      contentView = [(CNLabeledCell *)self contentView];
      v16 = [v9 constraintWithItem:chevron2 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v16];

      v13 = MEMORY[0x1E696ACD8];
      chevron3 = [(CNLabeledCell *)self chevron];
      [(CNLabeledCell *)self valueView];
    }
    v17 = ;
    v18 = [v13 constraintWithItem:chevron3 attribute:5 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:16.0];
    [v5 addObject:v18];
  }

  return v5;
}

- (id)constantConstraintsForVerticalLayout
{
  v3 = MEMORY[0x1E695DF70];
  v58.receiver = self;
  v58.super_class = CNLabeledCell;
  constantConstraints = [(CNContactCell *)&v58 constantConstraints];
  v5 = [v3 arrayWithArray:constantConstraints];

  v6 = MEMORY[0x1E696ACD8];
  labelView = [(CNLabeledCell *)self labelView];
  contentView = [(CNLabeledCell *)self contentView];
  v9 = [v6 constraintWithItem:labelView attribute:5 relatedBy:0 toItem:contentView attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  labelView2 = [(CNLabeledCell *)self labelView];
  contentView2 = [(CNLabeledCell *)self contentView];
  v13 = [v10 constraintWithItem:labelView2 attribute:6 relatedBy:-1 toItem:contentView2 attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v13];

  v14 = MEMORY[0x1E696ACD8];
  labelView3 = [(CNLabeledCell *)self labelView];
  valueView = [(CNLabeledCell *)self valueView];
  v17 = [v14 constraintWithItem:labelView3 attribute:6 relatedBy:0 toItem:valueView attribute:6 multiplier:1.0 constant:0.0];
  [v5 addObject:v17];

  lastObject = [v5 lastObject];
  LODWORD(v19) = 1144750080;
  [lastObject setPriority:v19];

  v20 = MEMORY[0x1E696ACD8];
  valueView2 = [(CNLabeledCell *)self valueView];
  labelView4 = [(CNLabeledCell *)self labelView];
  v23 = [v20 constraintWithItem:valueView2 attribute:5 relatedBy:0 toItem:labelView4 attribute:5 multiplier:1.0 constant:0.0];
  [v5 addObject:v23];

  rightMostView = [(CNLabeledCell *)self rightMostView];
  valueView3 = [(CNLabeledCell *)self valueView];

  if (rightMostView == valueView3)
  {
    v26 = MEMORY[0x1E696ACD8];
    valueView4 = [(CNLabeledCell *)self valueView];
    contentView3 = [(CNLabeledCell *)self contentView];
    v29 = [v26 constraintWithItem:valueView4 attribute:6 relatedBy:0 toItem:contentView3 attribute:18 multiplier:1.0 constant:0.0];
    [v5 addObject:v29];

    lastObject2 = [v5 lastObject];
    LODWORD(v31) = 1144750080;
    [lastObject2 setPriority:v31];
  }

  v32 = MEMORY[0x1E696ACD8];
  rightMostView2 = [(CNLabeledCell *)self rightMostView];
  contentView4 = [(CNLabeledCell *)self contentView];
  v35 = [v32 constraintWithItem:rightMostView2 attribute:6 relatedBy:0 toItem:contentView4 attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v35];

  lastObject3 = [v5 lastObject];
  LODWORD(v37) = 1144750080;
  [lastObject3 setPriority:v37];

  v38 = MEMORY[0x1E696ACD8];
  labelView5 = [(CNLabeledCell *)self labelView];
  contentView5 = [(CNLabeledCell *)self contentView];
  v41 = [v38 constraintWithItem:labelView5 attribute:3 relatedBy:0 toItem:contentView5 attribute:15 multiplier:1.0 constant:0.0];
  [v5 addObject:v41];

  lastObject4 = [v5 lastObject];
  LODWORD(v43) = 1148829696;
  [lastObject4 setPriority:v43];

  v44 = MEMORY[0x1E696ACD8];
  valueView5 = [(CNLabeledCell *)self valueView];
  labelView6 = [(CNLabeledCell *)self labelView];
  v47 = [v44 constraintWithItem:valueView5 attribute:3 relatedBy:0 toItem:labelView6 attribute:4 multiplier:1.0 constant:4.0];
  [v5 addObject:v47];

  lastObject5 = [v5 lastObject];
  LODWORD(v49) = 1148846080;
  [lastObject5 setPriority:v49];

  v50 = MEMORY[0x1E696ACD8];
  contentView6 = [(CNLabeledCell *)self contentView];
  valueView6 = [(CNLabeledCell *)self valueView];
  [(CNLabeledCell *)self valueViewBottomMargin];
  v54 = [v50 constraintWithItem:contentView6 attribute:16 relatedBy:0 toItem:valueView6 attribute:4 multiplier:1.0 constant:v53];
  [v5 addObject:v54];

  lastObject6 = [v5 lastObject];
  LODWORD(v56) = 1132003328;
  [lastObject6 setPriority:v56];

  return v5;
}

- (id)variableConstraintsForStandardLayout
{
  if (([objc_opt_class() wantsHorizontalLayout] & 1) != 0 || (-[CNLabeledCell valueView](self, "valueView"), v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    variableConstraintsForHorizontalLayout = [(CNLabeledCell *)self variableConstraintsForHorizontalLayout];
  }

  else
  {
    variableConstraintsForHorizontalLayout = [(CNLabeledCell *)self variableConstraintsForVerticalLayout];
  }

  return variableConstraintsForHorizontalLayout;
}

- (id)constantConstraintsForStandardLayout
{
  if (([objc_opt_class() wantsHorizontalLayout] & 1) != 0 || (-[CNLabeledCell valueView](self, "valueView"), v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    constantConstraintsForHorizontalLayout = [(CNLabeledCell *)self constantConstraintsForHorizontalLayout];
  }

  else
  {
    constantConstraintsForHorizontalLayout = [(CNLabeledCell *)self constantConstraintsForVerticalLayout];
  }

  return constantConstraintsForHorizontalLayout;
}

- (id)variableConstraints
{
  if ([objc_opt_class() wantsStandardConstraints])
  {
    v8.receiver = self;
    v8.super_class = CNLabeledCell;
    variableConstraints = [(CNContactCell *)&v8 variableConstraints];
    variableConstraintsForStandardLayout = [(CNLabeledCell *)self variableConstraintsForStandardLayout];
    variableConstraints2 = [variableConstraints arrayByAddingObjectsFromArray:variableConstraintsForStandardLayout];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNLabeledCell;
    variableConstraints2 = [(CNContactCell *)&v7 variableConstraints];
  }

  return variableConstraints2;
}

- (id)constantConstraints
{
  if ([objc_opt_class() wantsStandardConstraints])
  {
    v8.receiver = self;
    v8.super_class = CNLabeledCell;
    constantConstraints = [(CNContactCell *)&v8 constantConstraints];
    constantConstraintsForStandardLayout = [(CNLabeledCell *)self constantConstraintsForStandardLayout];
    constantConstraints2 = [constantConstraints arrayByAddingObjectsFromArray:constantConstraintsForStandardLayout];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNLabeledCell;
    constantConstraints2 = [(CNContactCell *)&v7 constantConstraints];
  }

  return constantConstraints2;
}

- (double)minCellHeight
{
  wantsHorizontalLayout = [objc_opt_class() wantsHorizontalLayout];
  result = 60.0;
  if (wantsHorizontalLayout)
  {
    return 44.0;
  }

  return result;
}

- (void)removeChevron
{
  chevron = [(CNLabeledCell *)self chevron];

  if (chevron)
  {
    chevron2 = [(CNLabeledCell *)self chevron];
    superview = [chevron2 superview];

    if (superview)
    {
      chevron3 = [(CNLabeledCell *)self chevron];
      [chevron3 removeFromSuperview];

      [(CNLabeledCell *)self needsUpdateConstraints];
    }
  }
}

- (void)addChevron
{
  chevron = [(CNLabeledCell *)self chevron];

  if (chevron)
  {
    chevron2 = [(CNLabeledCell *)self chevron];
    superview = [chevron2 superview];

    if (!superview)
    {
      contentView = [(CNLabeledCell *)self contentView];
      chevron3 = [(CNLabeledCell *)self chevron];
      [contentView addSubview:chevron3];

      [(CNLabeledCell *)self needsUpdateConstraints];
    }
  }
}

- (CNLabeledCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = CNLabeledCell;
  v4 = [(CNContactCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v4->_labelViewNeedsHuggingContent = [objc_opt_class() wantsHorizontalLayout];
    v4->_valueViewNeedsHuggingContent = [objc_opt_class() wantsHorizontalLayout];
    contentView = [(CNLabeledCell *)v4 contentView];
    labelView = [(CNLabeledCell *)v4 labelView];
    [contentView addSubview:labelView];

    valueView = [(CNLabeledCell *)v4 valueView];
    if (valueView)
    {
      contentView2 = [(CNLabeledCell *)v4 contentView];
      valueView2 = [(CNLabeledCell *)v4 valueView];
      [contentView2 addSubview:valueView2];
    }

    if ([objc_opt_class() wantsChevron])
    {
      cnui_symbolImageForContactCardChevron = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardChevron];
      v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:cnui_symbolImageForContactCardChevron];
      chevron = v4->_chevron;
      v4->_chevron = v11;

      [(UIImageView *)v4->_chevron setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v13) = 1148846080;
      [(UIImageView *)v4->_chevron setContentHuggingPriority:0 forAxis:v13];
      LODWORD(v14) = 1148846080;
      [(UIImageView *)v4->_chevron setContentCompressionResistancePriority:0 forAxis:v14];
      [(CNLabeledCell *)v4 addChevron];
    }
  }

  return v4;
}

@end