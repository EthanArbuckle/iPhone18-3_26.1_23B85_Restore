@interface CNLabeledCell
- (CNLabeledCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
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
- (void)setLabelTextAttributes:(id)a3;
- (void)setLabelViewNeedsHuggingContent:(BOOL)a3;
- (void)setValueTextAttributes:(id)a3;
- (void)setValueViewNeedsHuggingContent:(BOOL)a3;
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
  v4 = [v3 textColor];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [self cn_updateDictionaryForKey:@"labelTextAttributes" withChanges:v5];
}

- (void)setValueTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_valueTextAttributes != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_valueTextAttributes, a3);
    v6 = [(CNLabeledCell *)self valueView];
    [v6 setAb_textAttributes:v7];

    v5 = v7;
  }
}

- (void)setLabelTextAttributes:(id)a3
{
  v5 = a3;
  if (self->_labelTextAttributes != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_labelTextAttributes, a3);
    v6 = [(CNLabeledCell *)self labelView];
    [v6 setAb_textAttributes:v7];

    v5 = v7;
  }
}

- (void)setValueViewNeedsHuggingContent:(BOOL)a3
{
  v3 = a3;
  self->_valueViewNeedsHuggingContent = a3;
  objc_opt_class();
  v7 = [(CNLabeledCell *)self valueView];
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  CNSetLabelNeedsHuggingContent(v6, v3);
}

- (void)setLabelViewNeedsHuggingContent:(BOOL)a3
{
  v3 = a3;
  self->_labelViewNeedsHuggingContent = a3;
  objc_opt_class();
  v7 = [(CNLabeledCell *)self labelView];
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  CNSetLabelNeedsHuggingContent(v6, v3);
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
  v3 = [(CNLabeledCell *)self chevron];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(CNLabeledCell *)self chevron];
  }

  else
  {
    v6 = [(CNLabeledCell *)self valueView];

    if (v6)
    {
      [(CNLabeledCell *)self valueView];
    }

    else
    {
      [(CNLabeledCell *)self labelView];
    }
    v5 = ;
  }

  return v5;
}

- (id)variableConstraintsForHorizontalLayout
{
  v3 = MEMORY[0x1E695DF70];
  v13.receiver = self;
  v13.super_class = CNLabeledCell;
  v4 = [(CNContactCell *)&v13 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(CNLabeledCell *)self chevron];
  v7 = [v6 superview];

  if (!v7)
  {
    v8 = MEMORY[0x1E696ACD8];
    v9 = [(CNLabeledCell *)self rightMostView];
    v10 = [(CNLabeledCell *)self contentView];
    v11 = [v8 constraintWithItem:v9 attribute:6 relatedBy:0 toItem:v10 attribute:18 multiplier:1.0 constant:0.0];
    [v5 addObject:v11];
  }

  return v5;
}

- (id)constantConstraintsForHorizontalLayout
{
  v3 = MEMORY[0x1E695DF70];
  v67.receiver = self;
  v67.super_class = CNLabeledCell;
  v4 = [(CNContactCell *)&v67 constantConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(CNLabeledCell *)self labelView];
  v8 = [(CNLabeledCell *)self contentView];
  v9 = [v6 constraintWithItem:v7 attribute:5 relatedBy:0 toItem:v8 attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(CNLabeledCell *)self labelView];
  v12 = [v10 constraintWithItem:v11 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:0.0 constant:44.0];
  [v5 addObject:v12];

  v13 = [(CNLabeledCell *)self valueView];

  if (v13)
  {
    v14 = MEMORY[0x1E696ACD8];
    v15 = [(CNLabeledCell *)self valueView];
    v16 = [(CNLabeledCell *)self labelView];
    v17 = [v14 constraintWithItem:v15 attribute:5 relatedBy:0 toItem:v16 attribute:6 multiplier:1.0 constant:16.0];
    [v5 addObject:v17];
  }

  v18 = [(CNLabeledCell *)self chevron];
  v19 = [v18 superview];

  if (v19)
  {
    v20 = MEMORY[0x1E696ACD8];
    v21 = [(CNLabeledCell *)self chevron];
    v22 = [(CNLabeledCell *)self contentView];
    v23 = [v20 constraintWithItem:v21 attribute:10 relatedBy:0 toItem:v22 attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v23];

    v24 = MEMORY[0x1E696ACD8];
    v25 = [(CNLabeledCell *)self chevron];
    v26 = [(CNLabeledCell *)self valueView];
    v27 = [v24 constraintWithItem:v25 attribute:5 relatedBy:1 toItem:v26 attribute:6 multiplier:1.0 constant:16.0];
    [v5 addObject:v27];

    v28 = MEMORY[0x1E696ACD8];
    v29 = [(CNLabeledCell *)self chevron];
    v30 = [(CNLabeledCell *)self contentView];
    v31 = [v28 constraintWithItem:v29 attribute:6 relatedBy:0 toItem:v30 attribute:18 multiplier:1.0 constant:0.0];
    [v5 addObject:v31];
  }

  v32 = [(CNLabeledCell *)self valueView];

  v33 = MEMORY[0x1E696ACD8];
  if (v32)
  {
    v34 = [(CNLabeledCell *)self valueView];
    v35 = [(CNLabeledCell *)self contentView];
    v36 = [v33 constraintWithItem:v34 attribute:3 relatedBy:0 toItem:v35 attribute:15 multiplier:1.0 constant:0.0];
    [v5 addObject:v36];

    v37 = [v5 lastObject];
    LODWORD(v38) = 1148813312;
    [v37 setPriority:v38];

    v39 = MEMORY[0x1E696ACD8];
    v40 = [(CNLabeledCell *)self contentView];
    v41 = [(CNLabeledCell *)self valueView];
    v42 = [v39 constraintWithItem:v40 attribute:16 relatedBy:0 toItem:v41 attribute:4 multiplier:1.0 constant:0.0];
    [v5 addObject:v42];

    v43 = [v5 lastObject];
    LODWORD(v44) = 1148813312;
    [v43 setPriority:v44];

    v45 = MEMORY[0x1E696ACD8];
    v46 = [(CNLabeledCell *)self labelView];
    v47 = [(CNLabeledCell *)self valueView];
    v48 = [v45 constraintWithItem:v46 attribute:11 relatedBy:0 toItem:v47 attribute:11 multiplier:1.0 constant:0.0];
    [v5 addObject:v48];

    v49 = MEMORY[0x1E696ACD8];
    [(CNLabeledCell *)self valueView];
  }

  else
  {
    v50 = [(CNLabeledCell *)self labelView];
    v51 = [(CNLabeledCell *)self contentView];
    v52 = [v33 constraintWithItem:v50 attribute:3 relatedBy:0 toItem:v51 attribute:15 multiplier:1.0 constant:0.0];
    [v5 addObject:v52];

    v53 = [v5 lastObject];
    LODWORD(v54) = 1148813312;
    [v53 setPriority:v54];

    v55 = MEMORY[0x1E696ACD8];
    v56 = [(CNLabeledCell *)self contentView];
    v57 = [(CNLabeledCell *)self labelView];
    v58 = [v55 constraintWithItem:v56 attribute:16 relatedBy:0 toItem:v57 attribute:4 multiplier:1.0 constant:0.0];
    [v5 addObject:v58];

    v59 = [v5 lastObject];
    LODWORD(v60) = 1148813312;
    [v59 setPriority:v60];

    v49 = MEMORY[0x1E696ACD8];
    [(CNLabeledCell *)self labelView];
  }
  v61 = ;
  v62 = [(CNLabeledCell *)self contentView];
  v63 = [v49 constraintWithItem:v61 attribute:10 relatedBy:0 toItem:v62 attribute:10 multiplier:1.0 constant:0.0];
  [v5 addObject:v63];

  v64 = [v5 lastObject];
  LODWORD(v65) = 1148796928;
  [v64 setPriority:v65];

  return v5;
}

- (id)variableConstraintsForVerticalLayout
{
  v3 = MEMORY[0x1E695DF70];
  v20.receiver = self;
  v20.super_class = CNLabeledCell;
  v4 = [(CNContactCell *)&v20 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v7 = [(CNLabeledCell *)self chevron];
  v8 = [v7 superview];

  if (v8)
  {
    v9 = MEMORY[0x1E696ACD8];
    v10 = [(CNLabeledCell *)self chevron];
    if (v6)
    {
      v11 = [(CNLabeledCell *)self labelView];
      v12 = [v9 constraintWithItem:v10 attribute:10 relatedBy:0 toItem:v11 attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v12];

      v13 = MEMORY[0x1E696ACD8];
      v14 = [(CNLabeledCell *)self chevron];
      [(CNLabeledCell *)self labelView];
    }

    else
    {
      v15 = [(CNLabeledCell *)self contentView];
      v16 = [v9 constraintWithItem:v10 attribute:10 relatedBy:0 toItem:v15 attribute:10 multiplier:1.0 constant:0.0];
      [v5 addObject:v16];

      v13 = MEMORY[0x1E696ACD8];
      v14 = [(CNLabeledCell *)self chevron];
      [(CNLabeledCell *)self valueView];
    }
    v17 = ;
    v18 = [v13 constraintWithItem:v14 attribute:5 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:16.0];
    [v5 addObject:v18];
  }

  return v5;
}

- (id)constantConstraintsForVerticalLayout
{
  v3 = MEMORY[0x1E695DF70];
  v58.receiver = self;
  v58.super_class = CNLabeledCell;
  v4 = [(CNContactCell *)&v58 constantConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = MEMORY[0x1E696ACD8];
  v7 = [(CNLabeledCell *)self labelView];
  v8 = [(CNLabeledCell *)self contentView];
  v9 = [v6 constraintWithItem:v7 attribute:5 relatedBy:0 toItem:v8 attribute:17 multiplier:1.0 constant:0.0];
  [v5 addObject:v9];

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(CNLabeledCell *)self labelView];
  v12 = [(CNLabeledCell *)self contentView];
  v13 = [v10 constraintWithItem:v11 attribute:6 relatedBy:-1 toItem:v12 attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v13];

  v14 = MEMORY[0x1E696ACD8];
  v15 = [(CNLabeledCell *)self labelView];
  v16 = [(CNLabeledCell *)self valueView];
  v17 = [v14 constraintWithItem:v15 attribute:6 relatedBy:0 toItem:v16 attribute:6 multiplier:1.0 constant:0.0];
  [v5 addObject:v17];

  v18 = [v5 lastObject];
  LODWORD(v19) = 1144750080;
  [v18 setPriority:v19];

  v20 = MEMORY[0x1E696ACD8];
  v21 = [(CNLabeledCell *)self valueView];
  v22 = [(CNLabeledCell *)self labelView];
  v23 = [v20 constraintWithItem:v21 attribute:5 relatedBy:0 toItem:v22 attribute:5 multiplier:1.0 constant:0.0];
  [v5 addObject:v23];

  v24 = [(CNLabeledCell *)self rightMostView];
  v25 = [(CNLabeledCell *)self valueView];

  if (v24 == v25)
  {
    v26 = MEMORY[0x1E696ACD8];
    v27 = [(CNLabeledCell *)self valueView];
    v28 = [(CNLabeledCell *)self contentView];
    v29 = [v26 constraintWithItem:v27 attribute:6 relatedBy:0 toItem:v28 attribute:18 multiplier:1.0 constant:0.0];
    [v5 addObject:v29];

    v30 = [v5 lastObject];
    LODWORD(v31) = 1144750080;
    [v30 setPriority:v31];
  }

  v32 = MEMORY[0x1E696ACD8];
  v33 = [(CNLabeledCell *)self rightMostView];
  v34 = [(CNLabeledCell *)self contentView];
  v35 = [v32 constraintWithItem:v33 attribute:6 relatedBy:0 toItem:v34 attribute:18 multiplier:1.0 constant:0.0];
  [v5 addObject:v35];

  v36 = [v5 lastObject];
  LODWORD(v37) = 1144750080;
  [v36 setPriority:v37];

  v38 = MEMORY[0x1E696ACD8];
  v39 = [(CNLabeledCell *)self labelView];
  v40 = [(CNLabeledCell *)self contentView];
  v41 = [v38 constraintWithItem:v39 attribute:3 relatedBy:0 toItem:v40 attribute:15 multiplier:1.0 constant:0.0];
  [v5 addObject:v41];

  v42 = [v5 lastObject];
  LODWORD(v43) = 1148829696;
  [v42 setPriority:v43];

  v44 = MEMORY[0x1E696ACD8];
  v45 = [(CNLabeledCell *)self valueView];
  v46 = [(CNLabeledCell *)self labelView];
  v47 = [v44 constraintWithItem:v45 attribute:3 relatedBy:0 toItem:v46 attribute:4 multiplier:1.0 constant:4.0];
  [v5 addObject:v47];

  v48 = [v5 lastObject];
  LODWORD(v49) = 1148846080;
  [v48 setPriority:v49];

  v50 = MEMORY[0x1E696ACD8];
  v51 = [(CNLabeledCell *)self contentView];
  v52 = [(CNLabeledCell *)self valueView];
  [(CNLabeledCell *)self valueViewBottomMargin];
  v54 = [v50 constraintWithItem:v51 attribute:16 relatedBy:0 toItem:v52 attribute:4 multiplier:1.0 constant:v53];
  [v5 addObject:v54];

  v55 = [v5 lastObject];
  LODWORD(v56) = 1132003328;
  [v55 setPriority:v56];

  return v5;
}

- (id)variableConstraintsForStandardLayout
{
  if (([objc_opt_class() wantsHorizontalLayout] & 1) != 0 || (-[CNLabeledCell valueView](self, "valueView"), v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(CNLabeledCell *)self variableConstraintsForHorizontalLayout];
  }

  else
  {
    v4 = [(CNLabeledCell *)self variableConstraintsForVerticalLayout];
  }

  return v4;
}

- (id)constantConstraintsForStandardLayout
{
  if (([objc_opt_class() wantsHorizontalLayout] & 1) != 0 || (-[CNLabeledCell valueView](self, "valueView"), v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(CNLabeledCell *)self constantConstraintsForHorizontalLayout];
  }

  else
  {
    v4 = [(CNLabeledCell *)self constantConstraintsForVerticalLayout];
  }

  return v4;
}

- (id)variableConstraints
{
  if ([objc_opt_class() wantsStandardConstraints])
  {
    v8.receiver = self;
    v8.super_class = CNLabeledCell;
    v3 = [(CNContactCell *)&v8 variableConstraints];
    v4 = [(CNLabeledCell *)self variableConstraintsForStandardLayout];
    v5 = [v3 arrayByAddingObjectsFromArray:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNLabeledCell;
    v5 = [(CNContactCell *)&v7 variableConstraints];
  }

  return v5;
}

- (id)constantConstraints
{
  if ([objc_opt_class() wantsStandardConstraints])
  {
    v8.receiver = self;
    v8.super_class = CNLabeledCell;
    v3 = [(CNContactCell *)&v8 constantConstraints];
    v4 = [(CNLabeledCell *)self constantConstraintsForStandardLayout];
    v5 = [v3 arrayByAddingObjectsFromArray:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNLabeledCell;
    v5 = [(CNContactCell *)&v7 constantConstraints];
  }

  return v5;
}

- (double)minCellHeight
{
  v2 = [objc_opt_class() wantsHorizontalLayout];
  result = 60.0;
  if (v2)
  {
    return 44.0;
  }

  return result;
}

- (void)removeChevron
{
  v3 = [(CNLabeledCell *)self chevron];

  if (v3)
  {
    v4 = [(CNLabeledCell *)self chevron];
    v5 = [v4 superview];

    if (v5)
    {
      v6 = [(CNLabeledCell *)self chevron];
      [v6 removeFromSuperview];

      [(CNLabeledCell *)self needsUpdateConstraints];
    }
  }
}

- (void)addChevron
{
  v3 = [(CNLabeledCell *)self chevron];

  if (v3)
  {
    v4 = [(CNLabeledCell *)self chevron];
    v5 = [v4 superview];

    if (!v5)
    {
      v6 = [(CNLabeledCell *)self contentView];
      v7 = [(CNLabeledCell *)self chevron];
      [v6 addSubview:v7];

      [(CNLabeledCell *)self needsUpdateConstraints];
    }
  }
}

- (CNLabeledCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = CNLabeledCell;
  v4 = [(CNContactCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v4->_labelViewNeedsHuggingContent = [objc_opt_class() wantsHorizontalLayout];
    v4->_valueViewNeedsHuggingContent = [objc_opt_class() wantsHorizontalLayout];
    v5 = [(CNLabeledCell *)v4 contentView];
    v6 = [(CNLabeledCell *)v4 labelView];
    [v5 addSubview:v6];

    v7 = [(CNLabeledCell *)v4 valueView];
    if (v7)
    {
      v8 = [(CNLabeledCell *)v4 contentView];
      v9 = [(CNLabeledCell *)v4 valueView];
      [v8 addSubview:v9];
    }

    if ([objc_opt_class() wantsChevron])
    {
      v10 = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardChevron];
      v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
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