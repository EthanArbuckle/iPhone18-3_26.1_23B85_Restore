@interface THChapterViewTableControllerCell
- (id)largerTextConstraints;
- (id)regularTextConstraints;
- (void)updateConstraints;
- (void)updateLabels;
@end

@implementation THChapterViewTableControllerCell

- (void)updateConstraints
{
  v3 = +[UIFont bc_accessibilityFontSizesEnabled];
  v4 = [(THChapterViewTableControllerCell *)self usingLargerTextConstraints];
  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      [(THChapterViewTableControllerCell *)self updateLabels];
      v5 = [(THChapterViewTableControllerCell *)self regularTextConstraints];
      [NSLayoutConstraint deactivateConstraints:v5];

      v6 = [(THChapterViewTableControllerCell *)self largerTextConstraints];
LABEL_6:
      v8 = v6;
      [NSLayoutConstraint activateConstraints:v6];
    }
  }

  else if (v4)
  {
    [(THChapterViewTableControllerCell *)self updateLabels];
    v7 = [(THChapterViewTableControllerCell *)self largerTextConstraints];
    [NSLayoutConstraint deactivateConstraints:v7];

    v6 = [(THChapterViewTableControllerCell *)self regularTextConstraints];
    goto LABEL_6;
  }

  [(THChapterViewTableControllerCell *)self setUsingLargerTextConstraints:v3];
  v9.receiver = self;
  v9.super_class = THChapterViewTableControllerCell;
  [(THChapterViewTableControllerCell *)&v9 updateConstraints];
}

- (void)updateLabels
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(THChapterViewTableControllerCell *)self sectionLabel];
  v23[0] = v3;
  v4 = [(THChapterViewTableControllerCell *)self titleLabel];
  v23[1] = v4;
  v5 = [(THChapterViewTableControllerCell *)self pageLabel];
  v23[2] = v5;
  v6 = [NSArray arrayWithObjects:v23 count:3];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = +[UIColor bc_booksLabelColor];
        [v11 setTextColor:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v13 = +[UIColor bc_booksBackground];
  v14 = [(THChapterViewTableControllerCell *)self contentView];
  [v14 setBackgroundColor:v13];

  v15 = +[UIFont bc_accessibilityFontSizesEnabled];
  titleLabel = self->_titleLabel;
  if (v15)
  {
    [(UILabel *)titleLabel setNumberOfLines:0];
    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    [(UILabel *)self->_titleLabel frame];
    [(UILabel *)self->_titleLabel setPreferredMaxLayoutWidth:CGRectGetWidth(v25)];
    v17 = 4;
  }

  else
  {
    [(UILabel *)titleLabel setNumberOfLines:1];
    [(UILabel *)self->_titleLabel setLineBreakMode:5];
    v17 = 2;
  }

  v18 = [(THChapterViewTableControllerCell *)self pageLabel];
  [v18 setTextAlignment:v17];

  [(THChapterViewTableControllerCell *)self layoutIfNeeded];
}

- (id)regularTextConstraints
{
  v3 = [(THChapterViewTableControllerCell *)self sectionLabelBaselineConstraint];
  v4 = [(THChapterViewTableControllerCell *)self pageLabelBaselineToTitleLabelConstraint];
  v12[1] = v4;
  v5 = [(THChapterViewTableControllerCell *)self titleLabelBaselineToSectionLabelConstraint];
  v12[2] = v5;
  v6 = [(THChapterViewTableControllerCell *)self titleLabelBaselineToPageLabelConstraint];
  v12[3] = v6;
  v7 = [(THChapterViewTableControllerCell *)self titleLabelLeadingConstraint];
  v12[4] = v7;
  v8 = [(THChapterViewTableControllerCell *)self titleLabelTrailingConstraint];
  v12[5] = v8;
  v9 = [(THChapterViewTableControllerCell *)self pageLabelTrailingConstraint];
  v12[6] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:7];

  return v10;
}

- (id)largerTextConstraints
{
  v3 = [(THChapterViewTableControllerCell *)self cachedLargerTextConstraints];

  if (!v3)
  {
    v4 = [(THChapterViewTableControllerCell *)self sectionLabel];
    v5 = [(THChapterViewTableControllerCell *)self titleLabel];
    v6 = [(THChapterViewTableControllerCell *)self pageLabel];
    v7 = _NSDictionaryOfVariableBindings(@"sectionLabel, titleLabel, pageLabel", v4, v5, v6, 0);
    v8 = +[NSMutableArray array];
    v9 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[sectionLabel]-(2)-[titleLabel(>=20)]-(2)-[pageLabel]-|", 0, 0, v7);
    [v8 addObjectsFromArray:v9];

    v10 = [NSLayoutConstraint constraintWithItem:v5 attribute:4 relatedBy:0 toItem:v6 attribute:3 multiplier:1.0 constant:0.0];
    [v8 addObject:v10];

    v11 = [NSLayoutConstraint constraintWithItem:v5 attribute:3 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];
    [v8 addObject:v11];

    v12 = [NSLayoutConstraint constraintWithItem:v5 attribute:5 relatedBy:0 toItem:v4 attribute:5 multiplier:1.0 constant:0.0];
    [v8 addObject:v12];

    v13 = [NSLayoutConstraint constraintWithItem:v6 attribute:5 relatedBy:0 toItem:v4 attribute:5 multiplier:1.0 constant:0.0];
    [v8 addObject:v13];

    v14 = [NSLayoutConstraint constraintWithItem:v4 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-10.0];
    [v8 addObject:v14];

    v15 = [NSLayoutConstraint constraintWithItem:v5 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-10.0];
    [v8 addObject:v15];

    v16 = [NSLayoutConstraint constraintWithItem:v6 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-10.0];
    [v8 addObject:v16];

    v17 = [NSLayoutConstraint constraintWithItem:v6 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-12.0];
    [v8 addObject:v17];

    v18 = [v8 copy];
    [(THChapterViewTableControllerCell *)self setCachedLargerTextConstraints:v18];
  }

  return [(THChapterViewTableControllerCell *)self cachedLargerTextConstraints];
}

@end