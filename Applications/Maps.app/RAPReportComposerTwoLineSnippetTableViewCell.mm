@interface RAPReportComposerTwoLineSnippetTableViewCell
+ (id)measuringCell;
- (RAPReportComposerTwoLineSnippetTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)preferredHeightInTableView:(id)view;
- (void)_recreateConstraints;
- (void)_updateLeftRightConstraints;
- (void)didMoveToSuperview;
- (void)layoutMarginsDidChange;
- (void)setThirdLineAccessoryView:(id)view;
- (void)updateTextWithReplacements:(id)replacements;
@end

@implementation RAPReportComposerTwoLineSnippetTableViewCell

- (double)preferredHeightInTableView:(id)view
{
  [view bounds];
  v5 = v4;
  contentView = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
  [contentView systemLayoutSizeFittingSize:{v5, 0.0}];
  v8 = v7;

  return v8;
}

- (void)updateTextWithReplacements:(id)replacements
{
  replacementsCopy = replacements;
  attributedStringFormat = [(RAPReportComposerTwoLineSnippetTableViewCell *)self attributedStringFormat];
  string = [attributedStringFormat string];
  v6 = [string rangeOfString:@"\n"];
  v8 = v7;

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = attributedStringFormat;
    v10 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    [(UILabel *)self->_firstLineLabel setAttributedText:0];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = [attributedStringFormat attributedSubstringFromRange:{0, v6}];
  v10 = [attributedStringFormat attributedSubstringFromRange:{&v6[v8], objc_msgSend(attributedStringFormat, "length") - &v6[v8]}];
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  defaultReplacementAttributes = [(RAPReportComposerTwoLineSnippetTableViewCell *)self defaultReplacementAttributes];
  v12 = [v9 _mapkit_attributedStringByApplyingBindingFormatReplacements:replacementsCopy defaultReplacementAttributes:defaultReplacementAttributes];
  [(UILabel *)self->_firstLineLabel setAttributedText:v12];

  if (v10)
  {
LABEL_4:
    defaultReplacementAttributes2 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self defaultReplacementAttributes];
    v14 = [v10 _mapkit_attributedStringByApplyingBindingFormatReplacements:replacementsCopy defaultReplacementAttributes:defaultReplacementAttributes2];
    [(UILabel *)self->_secondLineLabel setAttributedText:v14];

    goto LABEL_8;
  }

LABEL_7:
  [(UILabel *)self->_secondLineLabel setAttributedText:0];
LABEL_8:
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = RAPReportComposerTwoLineSnippetTableViewCell;
  [(RAPReportComposerTwoLineSnippetTableViewCell *)&v3 layoutMarginsDidChange];
  [(RAPReportComposerTwoLineSnippetTableViewCell *)self _updateLeftRightConstraints];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = RAPReportComposerTwoLineSnippetTableViewCell;
  [(RAPReportComposerTwoLineSnippetTableViewCell *)&v3 didMoveToSuperview];
  [(RAPReportComposerTwoLineSnippetTableViewCell *)self _updateLeftRightConstraints];
}

- (void)_updateLeftRightConstraints
{
  contentView = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
  [contentView layoutMargins];
  v5 = v4;
  v7 = v6;

  v49 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_leftMarginConstraints count]];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = self->_leftMarginConstraints;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v55;
    do
    {
      v11 = 0;
      do
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * v11);
        imageView = [(RAPReportComposerTwoLineSnippetTableViewCell *)self imageView];
        image = [imageView image];
        if (image)
        {
          v15 = image;
          secondItem = [v12 secondItem];
          imageView2 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self imageView];

          if (secondItem == imageView2)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        imageView3 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self imageView];
        image2 = [imageView3 image];

        if (image2)
        {
          contentView2 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
          constraints = [contentView2 constraints];
          v22 = [constraints containsObject:v12];

          if (v22)
          {
            contentView3 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
            [contentView3 removeConstraint:v12];
          }

          firstItem = [v12 firstItem];
          leadingAnchor = [firstItem leadingAnchor];
          imageView4 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self imageView];
          trailingAnchor = [imageView4 trailingAnchor];
          v28 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:15.0];
        }

        else
        {
          secondItem2 = [v12 secondItem];
          imageView5 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self imageView];

          if (secondItem2 != imageView5)
          {
            [v12 setConstant:v5];
LABEL_19:
            [v49 addObject:v12];
            goto LABEL_20;
          }

          contentView4 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
          constraints2 = [contentView4 constraints];
          v22 = [constraints2 containsObject:v12];

          if (v22)
          {
            contentView5 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
            [contentView5 removeConstraint:v12];
          }

          firstItem2 = [v12 firstItem];
          leadingAnchor2 = [firstItem2 leadingAnchor];
          contentView6 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
          leadingAnchor3 = [contentView6 leadingAnchor];
          v28 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:v5];
        }

        [v28 setIdentifier:@"Left margin"];
        if (v22)
        {
          contentView7 = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
          [contentView7 addConstraint:v28];
        }

        [v49 addObject:v28];

LABEL_20:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v39 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      v9 = v39;
    }

    while (v39);
  }

  v40 = [v49 copy];
  leftMarginConstraints = self->_leftMarginConstraints;
  self->_leftMarginConstraints = v40;

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = self->_rightMarginConstraints;
  v43 = [(NSArray *)v42 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v51;
    v46 = -v7;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(&v50 + 1) + 8 * i) setConstant:v46];
      }

      v44 = [(NSArray *)v42 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v44);
  }
}

- (void)_recreateConstraints
{
  if (self->_allConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  thirdLineAccessoryView = [(RAPReportComposerTwoLineSnippetTableViewCell *)self thirdLineAccessoryView];
  v4 = thirdLineAccessoryView;
  firstLineLabel = self->_firstLineLabel;
  if (thirdLineAccessoryView)
  {
    _NSDictionaryOfVariableBindings(@"_firstLineLabel, _secondLineLabel, accessoryView", firstLineLabel, self->_secondLineLabel, thirdLineAccessoryView, 0);
  }

  else
  {
    _NSDictionaryOfVariableBindings(@"_firstLineLabel, _secondLineLabel", firstLineLabel, self->_secondLineLabel, 0);
  }
  v6 = ;
  +[TransitArtworkListView transitArtworkListHeight];
  v86 = sub_1005FF458(@"topBottomMargin, lineMargin, artworkListHeight", 10.0, v7, v8, v9, v10, v11, v12, v13, 0x4014000000000000);
  [(UILabel *)self->_firstLineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  selfCopy = self;
  [(UILabel *)self->_secondLineLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = v4;
  [(UILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v85 = objc_alloc_init(NSMutableArray);
  v91 = objc_alloc_init(NSMutableArray);
  v90 = objc_alloc_init(NSMutableArray);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v87 = v6;
  obj = [v6 objectEnumerator];
  v14 = [obj countByEnumeratingWithState:&v93 objects:v101 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v94;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v94 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v93 + 1) + 8 * i);
        leadingAnchor = [v18 leadingAnchor];
        contentView = [(RAPReportComposerTwoLineSnippetTableViewCell *)selfCopy contentView];
        leadingAnchor2 = [contentView leadingAnchor];
        v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

        [v22 setIdentifier:@"Left margin"];
        trailingAnchor = [v18 trailingAnchor];
        contentView2 = [(RAPReportComposerTwoLineSnippetTableViewCell *)selfCopy contentView];
        trailingAnchor2 = [contentView2 trailingAnchor];
        v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

        [v26 setIdentifier:@"Right margin"];
        [v91 addObject:v22];
        [v90 addObject:v26];
      }

      v15 = [obj countByEnumeratingWithState:&v93 objects:v101 count:16];
    }

    while (v15);
  }

  v27 = [v91 copy];
  leftMarginConstraints = selfCopy->_leftMarginConstraints;
  selfCopy->_leftMarginConstraints = v27;

  v29 = [v90 copy];
  rightMarginConstraints = selfCopy->_rightMarginConstraints;
  selfCopy->_rightMarginConstraints = v29;

  [(RAPReportComposerTwoLineSnippetTableViewCell *)selfCopy _updateLeftRightConstraints];
  [v85 addObjectsFromArray:selfCopy->_leftMarginConstraints];
  [v85 addObjectsFromArray:selfCopy->_rightMarginConstraints];
  v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-topBottomMargin-[_firstLineLabel]", 0, v86, v87);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v97 objects:v102 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v98;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v98 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v97 + 1) + 8 * j);
        v38 = [NSString stringWithFormat:@"%@ (%lu)", @"Top stacking", v34];
        [v37 setIdentifier:v38];

        ++v34;
      }

      v33 = [v31 countByEnumeratingWithState:&v97 objects:v102 count:16];
    }

    while (v33);
  }

  [v85 addObjectsFromArray:v31];

  text = [(UILabel *)selfCopy->_secondLineLabel text];
  if ([text length])
  {

    v40 = 1;
    v41 = v84;
LABEL_22:
    secondLineLabel = selfCopy->_secondLineLabel;
    goto LABEL_23;
  }

  attributedText = [(UILabel *)selfCopy->_secondLineLabel attributedText];
  v56 = [attributedText length];
  v40 = v56 != 0;

  v41 = v84;
  if (!v84 || v56)
  {
    goto LABEL_22;
  }

  v40 = 0;
  secondLineLabel = v84;
LABEL_23:
  obja = secondLineLabel;
  topAnchor = [(UILabel *)obja topAnchor];
  bottomAnchor = [(UILabel *)selfCopy->_firstLineLabel bottomAnchor];
  v45 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  collapsibleFirstSecondLineMargin = selfCopy->_collapsibleFirstSecondLineMargin;
  selfCopy->_collapsibleFirstSecondLineMargin = v45;

  [(NSLayoutConstraint *)selfCopy->_collapsibleFirstSecondLineMargin setIdentifier:@"Collapsible first-second line margin"];
  [v85 addObject:selfCopy->_collapsibleFirstSecondLineMargin];
  if (!v41)
  {
    v57 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_secondLineLabel]-topBottomMargin-|" options:0 metrics:v86 views:v87];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v58 = [v57 countByEnumeratingWithState:&v97 objects:v102 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = 0;
      v61 = *v98;
      do
      {
        for (k = 0; k != v59; k = k + 1)
        {
          if (*v98 != v61)
          {
            objc_enumerationMutation(v57);
          }

          v63 = *(*(&v97 + 1) + 8 * k);
          v64 = [NSString stringWithFormat:@"%@ (%lu)", @"Bottom stacking (with _secondLineLabel, without accessory)", v60];
          [v63 setIdentifier:v64];

          ++v60;
        }

        v59 = [v57 countByEnumeratingWithState:&v97 objects:v102 count:16];
      }

      while (v59);
    }

    goto LABEL_59;
  }

  if (v40)
  {
    v47 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:[_secondLineLabel]-lineMargin-[accessoryView]-topBottomMargin-|", 0, v86, v87);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v48 = [v47 countByEnumeratingWithState:&v97 objects:v102 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v98;
      do
      {
        for (m = 0; m != v49; m = m + 1)
        {
          if (*v98 != v51)
          {
            objc_enumerationMutation(v47);
          }

          v53 = *(*(&v97 + 1) + 8 * m);
          v54 = [NSString stringWithFormat:@"%@ (%lu)", @"Bottom stacking (with _secondLineLabel and accessory)", v50];
          [v53 setIdentifier:v54];

          ++v50;
        }

        v49 = [v47 countByEnumeratingWithState:&v97 objects:v102 count:16];
      }

      while (v49);
    }
  }

  else
  {
    v47 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[accessoryView]-topBottomMargin-|" options:0 metrics:v86 views:v87];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v65 = [v47 countByEnumeratingWithState:&v97 objects:v102 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = 0;
      v68 = *v98;
      do
      {
        for (n = 0; n != v66; n = n + 1)
        {
          if (*v98 != v68)
          {
            objc_enumerationMutation(v47);
          }

          v70 = *(*(&v97 + 1) + 8 * n);
          v71 = [NSString stringWithFormat:@"%@ (%lu)", @"Bottom stacking (without _secondLineLabel, with accessory)", v67];
          [v70 setIdentifier:v71];

          ++v67;
        }

        v66 = [v47 countByEnumeratingWithState:&v97 objects:v102 count:16];
      }

      while (v66);
    }
  }

  v72 = v85;
  [v85 addObjectsFromArray:v47];

  objc_opt_class();
  v73 = v84;
  if (objc_opt_isKindOfClass())
  {
    v57 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[accessoryView(artworkListHeight@999)]" options:0 metrics:v86 views:v87];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v74 = [v57 countByEnumeratingWithState:&v97 objects:v102 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = 0;
      v77 = *v98;
      do
      {
        for (ii = 0; ii != v75; ii = ii + 1)
        {
          if (*v98 != v77)
          {
            objc_enumerationMutation(v57);
          }

          v79 = *(*(&v97 + 1) + 8 * ii);
          v80 = [NSString stringWithFormat:@"%@ (%lu)", @"Accessory view height", v76];
          [v79 setIdentifier:v80];

          ++v76;
        }

        v75 = [v57 countByEnumeratingWithState:&v97 objects:v102 count:16];
      }

      while (v75);
    }

LABEL_59:
    v72 = v85;
    [v85 addObjectsFromArray:v57];

    v73 = v84;
  }

  contentView3 = [(RAPReportComposerTwoLineSnippetTableViewCell *)selfCopy contentView];
  [contentView3 addConstraints:v72];

  v82 = [v72 copy];
  allConstraints = selfCopy->_allConstraints;
  selfCopy->_allConstraints = v82;
}

- (void)setThirdLineAccessoryView:(id)view
{
  viewCopy = view;
  thirdLineAccessoryView = self->_thirdLineAccessoryView;
  if (thirdLineAccessoryView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)thirdLineAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_thirdLineAccessoryView, view);
    if (self->_thirdLineAccessoryView)
    {
      contentView = [(RAPReportComposerTwoLineSnippetTableViewCell *)self contentView];
      [contentView addSubview:self->_thirdLineAccessoryView];

      LODWORD(v8) = 1148829696;
      [(UIView *)self->_thirdLineAccessoryView setContentCompressionResistancePriority:1 forAxis:v8];
    }

    [(RAPReportComposerTwoLineSnippetTableViewCell *)self _recreateConstraints];
    viewCopy = v9;
  }
}

- (RAPReportComposerTwoLineSnippetTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = RAPReportComposerTwoLineSnippetTableViewCell;
  v4 = [(RAPReportComposerTwoLineSnippetTableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(RAPReportComposerTwoLineSnippetTableViewCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc_init(UILabel);
    firstLineLabel = v5->_firstLineLabel;
    v5->_firstLineLabel = v6;

    [(UILabel *)v5->_firstLineLabel setNumberOfLines:3];
    [(UILabel *)v5->_firstLineLabel setLineBreakMode:4];
    contentView = [(RAPReportComposerTwoLineSnippetTableViewCell *)v5 contentView];
    [contentView addSubview:v5->_firstLineLabel];

    LODWORD(v9) = 1148829696;
    [(UILabel *)v5->_firstLineLabel setContentCompressionResistancePriority:1 forAxis:v9];
    v10 = objc_alloc_init(UILabel);
    secondLineLabel = v5->_secondLineLabel;
    v5->_secondLineLabel = v10;

    [(UILabel *)v5->_secondLineLabel setNumberOfLines:3];
    [(UILabel *)v5->_secondLineLabel setLineBreakMode:4];
    contentView2 = [(RAPReportComposerTwoLineSnippetTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_secondLineLabel];

    LODWORD(v13) = 1148829696;
    [(UILabel *)v5->_secondLineLabel setContentCompressionResistancePriority:1 forAxis:v13];
    [(RAPReportComposerTwoLineSnippetTableViewCell *)v5 _recreateConstraints];
  }

  return v5;
}

+ (id)measuringCell
{
  if (qword_10195F0C8 != -1)
  {
    dispatch_once(&qword_10195F0C8, &stru_101652A60);
  }

  v3 = NSStringFromClass(self);
  v4 = [qword_10195F0C0 objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [[self alloc] initWithStyle:0 reuseIdentifier:0];
    [qword_10195F0C0 setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

@end