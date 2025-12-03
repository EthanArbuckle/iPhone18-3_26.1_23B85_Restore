@interface BESearchResultTableViewCell
- (BESearchResultTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CGSize)intrinsicContentSize;
- (id)accessibilityLabel;
- (id)largerTextConstraints;
- (id)regularTextConstraints;
- (void)_updateFocusShapePath;
- (void)_updateResultLabelMaxWidth;
- (void)applyLabelFonts;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)updateConstraints;
@end

@implementation BESearchResultTableViewCell

- (BESearchResultTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v36.receiver = self;
  v36.super_class = BESearchResultTableViewCell;
  v4 = [(BESearchResultTableViewCell *)&v36 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIView alloc];
    contentView = [(BESearchResultTableViewCell *)v4 contentView];
    [contentView bounds];
    v7 = [v5 initWithFrame:?];
    [(BESearchResultTableViewCell *)v4 setSelectedBackgroundView:v7];

    [(BESearchResultTableViewCell *)v4 setFocusEffect:0];
    contentView2 = [(BESearchResultTableViewCell *)v4 contentView];
    [contentView2 setAutoresizingMask:18];
    v9 = objc_opt_new();
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = +[UIColor grayColor];
    [v9 setFillColor:v10];

    [contentView2 addSubview:v9];
    leftAnchor = [v9 leftAnchor];
    leftAnchor2 = [contentView2 leftAnchor];
    v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:5.0];
    v37[0] = v33;
    rightAnchor = [v9 rightAnchor];
    rightAnchor2 = [contentView2 rightAnchor];
    v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-5.0];
    v37[1] = v30;
    topAnchor = [v9 topAnchor];
    topAnchor2 = [contentView2 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v37[2] = v13;
    bottomAnchor = [v9 bottomAnchor];
    bottomAnchor2 = [contentView2 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
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
    [contentView2 addSubview:v18];
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
    [contentView2 addSubview:v22];
    resultLabel = v4->_resultLabel;
    v4->_resultLabel = v22;
    v26 = v22;

    v27 = objc_alloc_init(BETableViewCellPageNumberLabel);
    [(BETableViewCellPageNumberLabel *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView2 addSubview:v27];
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
  contentView = [(BESearchResultTableViewCell *)self contentView];
  titleLabel = self->_titleLabel;
  resultLabel = self->_resultLabel;
  v5 = self->_pageNumberLabel;
  v52 = resultLabel;
  v6 = titleLabel;
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor = [(UILabel *)v6 topAnchor];
  v51 = layoutMarginsGuide;
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[0] = v10;
  v11 = v6;
  v50 = v6;
  leadingAnchor = [(UILabel *)v6 leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v55[1] = v14;
  trailingAnchor = [(UILabel *)v11 trailingAnchor];
  v45 = v5;
  leadingAnchor3 = [(BETableViewCellPageNumberLabel *)v5 leadingAnchor];
  v17 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-15.0];
  v55[2] = v17;
  v48 = [NSArray arrayWithObjects:v55 count:3];

  leadingAnchor4 = [(BETableViewCellPageNumberLabel *)v5 leadingAnchor];
  leadingAnchor5 = [(BESearchResultLabel *)v52 leadingAnchor];
  leadingAnchor6 = [(UILabel *)v50 leadingAnchor];
  v18 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v54[0] = v18;
  trailingAnchor2 = [(BESearchResultLabel *)v52 trailingAnchor];
  v20 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-4.0];
  v54[1] = v20;
  topAnchor3 = [(BESearchResultLabel *)v52 topAnchor];
  bottomAnchor = [(UILabel *)v50 bottomAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v54[2] = v23;
  bottomAnchor2 = [(BESearchResultLabel *)v52 bottomAnchor];
  bottomAnchor3 = [v51 bottomAnchor];
  v26 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v54[3] = v26;
  v46 = [NSArray arrayWithObjects:v54 count:4];

  trailingAnchor3 = [(BETableViewCellPageNumberLabel *)v45 trailingAnchor];
  trailingAnchor4 = [v51 trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v53[0] = v27;
  centerYAnchor = [(BETableViewCellPageNumberLabel *)v45 centerYAnchor];
  centerYAnchor2 = [(UILabel *)v50 centerYAnchor];
  v30 = [centerYAnchor constraintGreaterThanOrEqualToAnchor:centerYAnchor2];
  v53[1] = v30;
  topAnchor4 = [(BETableViewCellPageNumberLabel *)v45 topAnchor];
  topAnchor5 = [v51 topAnchor];
  v33 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:4.0];
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
  contentView = [(BESearchResultTableViewCell *)self contentView];
  titleLabel = self->_titleLabel;
  resultLabel = self->_resultLabel;
  v43 = self->_pageNumberLabel;
  v47 = resultLabel;
  v5 = titleLabel;
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor = [(UILabel *)v5 topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v50[0] = v9;
  v46 = v5;
  leadingAnchor = [(UILabel *)v5 leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[1] = v12;
  trailingAnchor = [(UILabel *)v5 trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v50[2] = v15;
  v44 = [NSArray arrayWithObjects:v50 count:3];

  leadingAnchor3 = [(BESearchResultLabel *)v47 leadingAnchor];
  leadingAnchor4 = [(UILabel *)v46 leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v49[0] = v18;
  trailingAnchor3 = [(BESearchResultLabel *)v47 trailingAnchor];
  trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
  v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v49[1] = v21;
  topAnchor3 = [(BESearchResultLabel *)v47 topAnchor];
  bottomAnchor = [(UILabel *)v46 bottomAnchor];
  v24 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v49[2] = v24;
  v42 = [NSArray arrayWithObjects:v49 count:3];

  leadingAnchor5 = [(BETableViewCellPageNumberLabel *)v43 leadingAnchor];
  leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
  v38 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v48[0] = v38;
  trailingAnchor5 = [(BETableViewCellPageNumberLabel *)v43 trailingAnchor];
  v41 = layoutMarginsGuide;
  trailingAnchor6 = [layoutMarginsGuide trailingAnchor];
  v26 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v48[1] = v26;
  topAnchor4 = [(BETableViewCellPageNumberLabel *)v43 topAnchor];
  bottomAnchor2 = [(BESearchResultLabel *)v47 bottomAnchor];
  v29 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v48[2] = v29;
  bottomAnchor3 = [(BETableViewCellPageNumberLabel *)v43 bottomAnchor];
  bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
    regularTextConstraints = [(BESearchResultTableViewCell *)self regularTextConstraints];
    [NSLayoutConstraint deactivateConstraints:regularTextConstraints];

    [(BESearchResultTableViewCell *)self largerTextConstraints];
  }

  else
  {
    largerTextConstraints = [(BESearchResultTableViewCell *)self largerTextConstraints];
    [NSLayoutConstraint deactivateConstraints:largerTextConstraints];

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
  readableContentGuide = [(BESearchResultTableViewCell *)self readableContentGuide];
  [readableContentGuide layoutFrame];
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

  pageNumberLabel = [(BESearchResultTableViewCell *)self pageNumberLabel];
  [pageNumberLabel intrinsicContentSize];
  v12 = v11;

  resultLabel = self->_resultLabel;

  [(BESearchResultLabel *)resultLabel setPreferredMaxLayoutWidth:v4 - (v12 + 4.0)];
}

- (void)_updateFocusShapePath
{
  focusShapeView = [(BESearchResultTableViewCell *)self focusShapeView];
  [focusShapeView bounds];
  v3 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  focusShapeView2 = [(BESearchResultTableViewCell *)self focusShapeView];
  [focusShapeView2 setPath:v3];
}

- (CGSize)intrinsicContentSize
{
  contentView = [(BESearchResultTableViewCell *)self contentView];
  [contentView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([eventCopy type] != &dword_4)
  {
    goto LABEL_12;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = beganCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {

LABEL_12:
    v19.receiver = self;
    v19.super_class = BESearchResultTableViewCell;
    [(BESearchResultTableViewCell *)&v19 pressesBegan:beganCopy withEvent:eventCopy];
    goto LABEL_13;
  }

  v10 = v9;
  selfCopy = self;
  v18 = beganCopy;
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
      characters = [v14 characters];
      v16 = [characters isEqual:@"\r"];

      v11 |= v16;
    }

    v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v10);

  self = selfCopy;
  beganCopy = v18;
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = BESearchResultTableViewCell;
  [(BESearchResultTableViewCell *)&v4 pressesChanged:changed withEvent:event];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = BESearchResultTableViewCell;
  [(BESearchResultTableViewCell *)&v4 pressesCancelled:cancelled withEvent:event];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if ([eventCopy type] != &dword_4)
  {
    goto LABEL_16;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = endedCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {

LABEL_16:
    v25.receiver = self;
    v25.super_class = BESearchResultTableViewCell;
    [(BESearchResultTableViewCell *)&v25 pressesEnded:endedCopy withEvent:eventCopy];
    goto LABEL_17;
  }

  v10 = v9;
  selfCopy = self;
  v24 = endedCopy;
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
      characters = [v14 characters];
      v16 = [characters isEqual:@"\r"];

      v11 |= v16;
    }

    v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v10);

  self = selfCopy;
  endedCopy = v24;
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  _tableView = [(BESearchResultTableViewCell *)selfCopy _tableView];
  v18 = _tableView;
  if (_tableView)
  {
    v19 = [_tableView indexPathForCell:selfCopy];
    if (v19)
    {
      delegate = [v18 delegate];
      v21 = [delegate tableView:v18 willSelectRowAtIndexPath:v19];

      [v18 selectRowAtIndexPath:v19 animated:1 scrollPosition:0];
      delegate2 = [v18 delegate];
      [delegate2 tableView:v18 didSelectRowAtIndexPath:v19];
    }
  }

LABEL_17:
}

- (id)accessibilityLabel
{
  v3 = objc_alloc_init(NSMutableArray);
  text = [(UILabel *)self->_titleLabel text];
  v5 = [text length];

  if (v5)
  {
    text2 = [(UILabel *)self->_titleLabel text];
    [v3 addObject:text2];
  }

  text3 = [(BESearchResultLabel *)self->_resultLabel text];
  v8 = [text3 length];

  if (v8)
  {
    text4 = [(BESearchResultLabel *)self->_resultLabel text];
    [v3 addObject:text4];
  }

  text5 = [(BETableViewCellPageNumberLabel *)self->_pageNumberLabel text];
  v11 = [text5 length];

  if (v11)
  {
    v12 = IMCommonCoreBundle();
    v13 = [v12 localizedStringForKey:@"Page %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    text6 = [(BETableViewCellPageNumberLabel *)self->_pageNumberLabel text];
    v15 = [NSString stringWithFormat:v13, text6];
    [v3 addObject:v15];
  }

  v16 = IMCommonCoreBundle();
  v17 = [v16 localizedStringForKey:@" value:" table:{&stru_2D2930, @"BCCommonCoreLocalizable"}];
  v18 = [v3 componentsJoinedByString:v17];

  return v18;
}

@end