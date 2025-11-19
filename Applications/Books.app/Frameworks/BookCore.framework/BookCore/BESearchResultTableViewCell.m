@interface BESearchResultTableViewCell
- (BESearchResultTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CGSize)intrinsicContentSize;
- (id)accessibilityLabel;
- (id)largerTextConstraints;
- (id)regularTextConstraints;
- (void)_updateFocusShapePath;
- (void)_updateResultLabelMaxWidth;
- (void)applyLabelFonts;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)updateConstraints;
@end

@implementation BESearchResultTableViewCell

- (BESearchResultTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v36.receiver = self;
  v36.super_class = BESearchResultTableViewCell;
  v4 = [(BESearchResultTableViewCell *)&v36 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIView alloc];
    v6 = [(BESearchResultTableViewCell *)v4 contentView];
    [v6 bounds];
    v7 = [v5 initWithFrame:?];
    [(BESearchResultTableViewCell *)v4 setSelectedBackgroundView:v7];

    [(BESearchResultTableViewCell *)v4 setFocusEffect:0];
    v8 = [(BESearchResultTableViewCell *)v4 contentView];
    [v8 setAutoresizingMask:18];
    v9 = objc_opt_new();
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = +[UIColor grayColor];
    [v9 setFillColor:v10];

    [v8 addSubview:v9];
    v35 = [v9 leftAnchor];
    v34 = [v8 leftAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 constant:5.0];
    v37[0] = v33;
    v32 = [v9 rightAnchor];
    v31 = [v8 rightAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:-5.0];
    v37[1] = v30;
    v11 = [v9 topAnchor];
    v12 = [v8 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:5.0];
    v37[2] = v13;
    v14 = [v9 bottomAnchor];
    v15 = [v8 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:-5.0];
    v37[3] = v16;
    v17 = [NSArray arrayWithObjects:v37 count:4];
    [NSLayoutConstraint activateConstraints:v17];

    [(BESearchResultTableViewCell *)v4 _updateFocusShapePath];
    [v9 setAlpha:0.0];
    [(BESearchResultTableViewCell *)v4 setFocusShapeView:v9];
    v18 = objc_alloc_init(UILabel);
    v19 = [UIFont boldSystemFontOfSize:17.0];
    [(UILabel *)v18 setFont:v19];

    [(UILabel *)v18 setLineBreakMode:5];
    [(UILabel *)v18 setHighlightedTextColor:0];
    [(UILabel *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addSubview:v18];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v18;
    v21 = v18;

    v22 = objc_alloc_init(BESearchResultLabel);
    [(BESearchResultLabel *)v22 setOpaque:0];
    v23 = [UIFont systemFontOfSize:15.0];
    [(BESearchResultLabel *)v22 setFont:v23];

    if (isPad())
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    [(BESearchResultLabel *)v22 setNumberOfLines:v24];
    [(BESearchResultLabel *)v22 setHighlightedTextColor:0];
    [(BESearchResultLabel *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addSubview:v22];
    resultLabel = v4->_resultLabel;
    v4->_resultLabel = v22;
    v26 = v22;

    v27 = objc_alloc_init(BETableViewCellPageNumberLabel);
    [(BETableViewCellPageNumberLabel *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 addSubview:v27];
    pageNumberLabel = v4->_pageNumberLabel;
    v4->_pageNumberLabel = v27;

    [(BESearchResultTableViewCell *)v4 applyLabelFonts];
  }

  return v4;
}

- (void)applyLabelFonts
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v3 _scaledValueForValue:17.0];
  v4 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [(UILabel *)self->_titleLabel setFont:v4];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];

  [(BESearchResultLabel *)self->_resultLabel setFont:v5];
  [(BETableViewCellPageNumberLabel *)self->_pageNumberLabel setFont:v5];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = BESearchResultTableViewCell;
  [(BESearchResultTableViewCell *)&v3 prepareForReuse];
  [(UILabel *)self->_titleLabel setText:0];
  [(BESearchResultLabel *)self->_resultLabel setText:0];
  [(BETableViewCellPageNumberLabel *)self->_pageNumberLabel setText:0];
  [(BESearchResultLabel *)self->_resultLabel setBoldRange:0, 0];
}

- (id)regularTextConstraints
{
  v49 = [(BESearchResultTableViewCell *)self contentView];
  titleLabel = self->_titleLabel;
  resultLabel = self->_resultLabel;
  v5 = self->_pageNumberLabel;
  v52 = resultLabel;
  v6 = titleLabel;
  v7 = [v49 layoutMarginsGuide];
  v8 = [(UILabel *)v6 topAnchor];
  v51 = v7;
  v9 = [v7 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v55[0] = v10;
  v11 = v6;
  v50 = v6;
  v12 = [(UILabel *)v6 leadingAnchor];
  v13 = [v7 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v55[1] = v14;
  v15 = [(UILabel *)v11 trailingAnchor];
  v45 = v5;
  v16 = [(BETableViewCellPageNumberLabel *)v5 leadingAnchor];
  v17 = [v15 constraintLessThanOrEqualToAnchor:v16 constant:-15.0];
  v55[2] = v17;
  v48 = [NSArray arrayWithObjects:v55 count:3];

  v47 = [(BETableViewCellPageNumberLabel *)v5 leadingAnchor];
  v43 = [(BESearchResultLabel *)v52 leadingAnchor];
  v41 = [(UILabel *)v50 leadingAnchor];
  v18 = [v43 constraintEqualToAnchor:v41];
  v54[0] = v18;
  v19 = [(BESearchResultLabel *)v52 trailingAnchor];
  v20 = [v19 constraintEqualToAnchor:v47 constant:-4.0];
  v54[1] = v20;
  v21 = [(BESearchResultLabel *)v52 topAnchor];
  v22 = [(UILabel *)v50 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v54[2] = v23;
  v24 = [(BESearchResultLabel *)v52 bottomAnchor];
  v25 = [v51 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v54[3] = v26;
  v46 = [NSArray arrayWithObjects:v54 count:4];

  v44 = [(BETableViewCellPageNumberLabel *)v45 trailingAnchor];
  v42 = [v51 trailingAnchor];
  v27 = [v44 constraintEqualToAnchor:v42];
  v53[0] = v27;
  v28 = [(BETableViewCellPageNumberLabel *)v45 centerYAnchor];
  v29 = [(UILabel *)v50 centerYAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29];
  v53[1] = v30;
  v31 = [(BETableViewCellPageNumberLabel *)v45 topAnchor];
  v32 = [v51 topAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:4.0];
  v53[2] = v33;
  v34 = [NSArray arrayWithObjects:v53 count:3];

  LODWORD(v35) = 1132068864;
  [(UILabel *)v50 setContentCompressionResistancePriority:0 forAxis:v35];
  LODWORD(v36) = 1132068864;
  [(BESearchResultLabel *)v52 setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1144750080;
  [(BETableViewCellPageNumberLabel *)v45 setContentCompressionResistancePriority:0 forAxis:v37];

  v38 = objc_alloc_init(NSMutableArray);
  [v38 addObjectsFromArray:v48];
  [v38 addObjectsFromArray:v46];
  [v38 addObjectsFromArray:v34];
  v39 = [v38 copy];

  return v39;
}

- (id)largerTextConstraints
{
  v45 = [(BESearchResultTableViewCell *)self contentView];
  titleLabel = self->_titleLabel;
  resultLabel = self->_resultLabel;
  v43 = self->_pageNumberLabel;
  v47 = resultLabel;
  v5 = titleLabel;
  v6 = [v45 layoutMarginsGuide];
  v7 = [(UILabel *)v5 topAnchor];
  v8 = [v6 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v50[0] = v9;
  v46 = v5;
  v10 = [(UILabel *)v5 leadingAnchor];
  v11 = [v6 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v50[1] = v12;
  v13 = [(UILabel *)v5 trailingAnchor];
  v14 = [v6 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v50[2] = v15;
  v44 = [NSArray arrayWithObjects:v50 count:3];

  v16 = [(BESearchResultLabel *)v47 leadingAnchor];
  v17 = [(UILabel *)v46 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v49[0] = v18;
  v19 = [(BESearchResultLabel *)v47 trailingAnchor];
  v20 = [v6 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v49[1] = v21;
  v22 = [(BESearchResultLabel *)v47 topAnchor];
  v23 = [(UILabel *)v46 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v49[2] = v24;
  v42 = [NSArray arrayWithObjects:v49 count:3];

  v40 = [(BETableViewCellPageNumberLabel *)v43 leadingAnchor];
  v39 = [v6 leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v48[0] = v38;
  v37 = [(BETableViewCellPageNumberLabel *)v43 trailingAnchor];
  v41 = v6;
  v25 = [v6 trailingAnchor];
  v26 = [v37 constraintEqualToAnchor:v25];
  v48[1] = v26;
  v27 = [(BETableViewCellPageNumberLabel *)v43 topAnchor];
  v28 = [(BESearchResultLabel *)v47 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v48[2] = v29;
  v30 = [(BETableViewCellPageNumberLabel *)v43 bottomAnchor];
  v31 = [v6 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v48[3] = v32;
  v33 = [NSArray arrayWithObjects:v48 count:4];

  v34 = objc_alloc_init(NSMutableArray);
  [v34 addObjectsFromArray:v44];
  [v34 addObjectsFromArray:v42];
  [v34 addObjectsFromArray:v33];
  v35 = [v34 copy];

  return v35;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BESearchResultTableViewCell;
  [(BESearchResultTableViewCell *)&v3 layoutSubviews];
  [(BESearchResultTableViewCell *)self _updateResultLabelMaxWidth];
  [(BESearchResultTableViewCell *)self _updateFocusShapePath];
}

- (void)updateConstraints
{
  if ([(BESearchResultTableViewCell *)self _pageNumberLabelOnOwnLine])
  {
    v3 = [(BESearchResultTableViewCell *)self regularTextConstraints];
    [NSLayoutConstraint deactivateConstraints:v3];

    [(BESearchResultTableViewCell *)self largerTextConstraints];
  }

  else
  {
    v4 = [(BESearchResultTableViewCell *)self largerTextConstraints];
    [NSLayoutConstraint deactivateConstraints:v4];

    [(BESearchResultTableViewCell *)self regularTextConstraints];
  }
  v5 = ;
  [NSLayoutConstraint activateConstraints:v5];

  [(BESearchResultTableViewCell *)self _updateResultLabelMaxWidth];
  v6.receiver = self;
  v6.super_class = BESearchResultTableViewCell;
  [(BESearchResultTableViewCell *)&v6 updateConstraints];
}

- (void)_updateResultLabelMaxWidth
{
  v3 = [(BESearchResultTableViewCell *)self readableContentGuide];
  [v3 layoutFrame];
  v4 = CGRectGetWidth(v15) + -30.0;

  [(BESearchResultTableViewCell *)self maxWidth];
  v6 = v5 + -60.0;
  [(BESearchResultTableViewCell *)self safeAreaInsets];
  v8 = v7;
  [(BESearchResultTableViewCell *)self safeAreaInsets];
  if (v4 >= v6 - (v8 + v9))
  {
    v4 = v6 - (v8 + v9);
  }

  v10 = [(BESearchResultTableViewCell *)self pageNumberLabel];
  [v10 intrinsicContentSize];
  v12 = v11;

  resultLabel = self->_resultLabel;

  [(BESearchResultLabel *)resultLabel setPreferredMaxLayoutWidth:v4 - (v12 + 4.0)];
}

- (void)_updateFocusShapePath
{
  v5 = [(BESearchResultTableViewCell *)self focusShapeView];
  [v5 bounds];
  v3 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  v4 = [(BESearchResultTableViewCell *)self focusShapeView];
  [v4 setPath:v3];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(BESearchResultTableViewCell *)self contentView];
  [v2 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 type] != &dword_4)
  {
    goto LABEL_12;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {

LABEL_12:
    v19.receiver = self;
    v19.super_class = BESearchResultTableViewCell;
    [(BESearchResultTableViewCell *)&v19 pressesBegan:v6 withEvent:v7];
    goto LABEL_13;
  }

  v10 = v9;
  v17 = self;
  v18 = v6;
  v11 = 0;
  v12 = *v21;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = [*(*(&v20 + 1) + 8 * i) key];
      v15 = [v14 characters];
      v16 = [v15 isEqual:@"\r"];

      v11 |= v16;
    }

    v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v10);

  self = v17;
  v6 = v18;
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = BESearchResultTableViewCell;
  [(BESearchResultTableViewCell *)&v4 pressesChanged:a3 withEvent:a4];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = BESearchResultTableViewCell;
  [(BESearchResultTableViewCell *)&v4 pressesCancelled:a3 withEvent:a4];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 type] != &dword_4)
  {
    goto LABEL_16;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {

LABEL_16:
    v25.receiver = self;
    v25.super_class = BESearchResultTableViewCell;
    [(BESearchResultTableViewCell *)&v25 pressesEnded:v6 withEvent:v7];
    goto LABEL_17;
  }

  v10 = v9;
  v23 = self;
  v24 = v6;
  v11 = 0;
  v12 = *v27;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = [*(*(&v26 + 1) + 8 * i) key];
      v15 = [v14 characters];
      v16 = [v15 isEqual:@"\r"];

      v11 |= v16;
    }

    v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v10);

  self = v23;
  v6 = v24;
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = [(BESearchResultTableViewCell *)v23 _tableView];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 indexPathForCell:v23];
    if (v19)
    {
      v20 = [v18 delegate];
      v21 = [v20 tableView:v18 willSelectRowAtIndexPath:v19];

      [v18 selectRowAtIndexPath:v19 animated:1 scrollPosition:0];
      v22 = [v18 delegate];
      [v22 tableView:v18 didSelectRowAtIndexPath:v19];
    }
  }

LABEL_17:
}

- (id)accessibilityLabel
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(UILabel *)self->_titleLabel text];
    [v3 addObject:v6];
  }

  v7 = [(BESearchResultLabel *)self->_resultLabel text];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(BESearchResultLabel *)self->_resultLabel text];
    [v3 addObject:v9];
  }

  v10 = [(BETableViewCellPageNumberLabel *)self->_pageNumberLabel text];
  v11 = [v10 length];

  if (v11)
  {
    v12 = IMCommonCoreBundle();
    v13 = [v12 localizedStringForKey:@"Page %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v14 = [(BETableViewCellPageNumberLabel *)self->_pageNumberLabel text];
    v15 = [NSString stringWithFormat:v13, v14];
    [v3 addObject:v15];
  }

  v16 = IMCommonCoreBundle();
  v17 = [v16 localizedStringForKey:@" value:" table:{&stru_2D2930, @"BCCommonCoreLocalizable"}];
  v18 = [v3 componentsJoinedByString:v17];

  return v18;
}

@end