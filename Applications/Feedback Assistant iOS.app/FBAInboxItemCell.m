@interface FBAInboxItemCell
- (NSLayoutConstraint)unreadImageViewHeightConstraint;
- (UIImageView)fauxAccessoryView;
- (UIImageView)orphanImageView;
- (UIImageView)unreadImageView;
- (UILabel)closedLabel;
- (UILabel)dateLabel;
- (UILabel)subtitleLabel;
- (UILabel)teamInfoLabel;
- (UILabel)titleLabel;
- (void)awakeFromNib;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLabelLinesForContentSizeCategory:(id)a3;
- (void)updateWithEnhancedLoggingSession:(id)a3;
- (void)updateWithItem:(id)a3 showingTeamName:(BOOL)a4;
@end

@implementation FBAInboxItemCell

- (void)awakeFromNib
{
  v10.receiver = self;
  v10.super_class = FBAInboxItemCell;
  [(FBAInboxItemCell *)&v10 awakeFromNib];
  v3 = +[UIColor secondaryLabelColor];
  v4 = [(FBAInboxItemCell *)self fauxAccessoryView];
  [v4 setTintColor:v3];

  v5 = [(FBAInboxItemCell *)self titleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(FBAInboxItemCell *)self subtitleLabel];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(FBAInboxItemCell *)self teamInfoLabel];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(FBAInboxItemCell *)self unreadImageView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(FBAInboxItemCell *)self orphanImageView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)updateWithItem:(id)a3 showingTeamName:(BOOL)a4
{
  v4 = a4;
  v52 = a3;
  v6 = [v52 displayTitle];
  v7 = [(FBAInboxItemCell *)self titleLabel];
  [v7 setText:v6];

  v8 = [v52 displayTitle];
  [(FBAInboxItemCell *)self setAccessibilityIdentifier:v8];

  v9 = [v52 imageForNeedsAction];
  v10 = [(FBAInboxItemCell *)self unreadImageView];
  [v10 setImage:v9];

  LODWORD(v9) = [v52 needsAction];
  v11 = [(FBAInboxItemCell *)self unreadImageView];
  [v11 setHidden:v9 ^ 1];

  v12 = [v52 needsActionTintColor];
  v13 = [(FBAInboxItemCell *)self unreadImageView];
  [v13 setTintColor:v12];

  LODWORD(v12) = [v52 isOrphaned];
  v14 = [(FBAInboxItemCell *)self orphanImageView];
  [v14 setHidden:v12 ^ 1];

  v15 = [v52 orphanBadgeTintColor];
  v16 = [(FBAInboxItemCell *)self orphanImageView];
  [v16 setTintColor:v15];

  v17 = [(FBAInboxItemCell *)self traitCollection];
  v18 = [v17 preferredContentSizeCategory];
  [(FBAInboxItemCell *)self updateLabelLinesForContentSizeCategory:v18];

  v19 = [v52 itemSubtitle];
  v20 = [(__CFString *)v19 length];
  v21 = [(FBAInboxItemCell *)self subtitleLabel];
  v22 = v21;
  if (v20)
  {
    v23 = v19;
  }

  else
  {
    v23 = @" ";
  }

  [v21 setText:v23];

  if ([v52 shouldShowAssigneeLabel])
  {
    v24 = [v52 assignee];
    v25 = [v24 fullName];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v28 = +[NSBundle mainBundle];
      v27 = [v28 localizedStringForKey:@"UNASSIGNED" value:&stru_1000E2210 table:FBKCommonStrings];
    }

    if (v4)
    {
      v29 = [v52 singleTeam];
      v30 = [v29 name];
      v31 = [v27 stringByAppendingFormat:@", %@", v30];

      v27 = v31;
    }

    v32 = [(FBAInboxItemCell *)self teamInfoLabel];
    [v32 setText:v27];
  }

  else
  {
    v27 = [(FBAInboxItemCell *)self teamInfoLabel];
    [v27 setText:0];
  }

  v33 = [v52 formattedMailboxSortDate];
  v34 = [(FBAInboxItemCell *)self dateLabel];
  [v34 setText:v33];

  v35 = sub_1000143E4();
  v36 = [v52 mailboxSortDate];
  v37 = [v35 stringFromDate:v36];
  v38 = [(FBAInboxItemCell *)self dateLabel];
  [v38 setAccessibilityLabel:v37];

  v39 = [v52 visibleFeedbackClosedStatus];
  v40 = [(FBAInboxItemCell *)self closedLabel];
  [v40 setText:v39];

  v41 = [v52 itemTitleColor];
  v42 = [(FBAInboxItemCell *)self titleLabel];
  [v42 setTextColor:v41];

  v43 = [v52 itemTitleColor];
  v44 = [(FBAInboxItemCell *)self teamInfoLabel];
  [v44 setTextColor:v43];

  v45 = +[UIColor secondaryLabelColor];
  v46 = [(FBAInboxItemCell *)self subtitleLabel];
  [v46 setTextColor:v45];

  v47 = +[UIColor secondaryLabelColor];
  v48 = [(FBAInboxItemCell *)self dateLabel];
  [v48 setTextColor:v47];

  v49 = +[UIColor secondaryLabelColor];
  v50 = [(FBAInboxItemCell *)self closedLabel];
  [v50 setTextColor:v49];

  v51 = [(FBAInboxItemCell *)self accessibilityTraits];
  [(FBAInboxItemCell *)self setAccessibilityTraits:UIAccessibilityTraitButton | v51];
}

- (void)updateWithEnhancedLoggingSession:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [(FBAInboxItemCell *)self titleLabel];
  [v6 setText:v5];

  v7 = [v4 subtitle];
  v8 = [(FBAInboxItemCell *)self subtitleLabel];
  [v8 setText:v7];

  v9 = [(FBAInboxItemCell *)self dateLabel];
  [v9 setText:&stru_1000E2210];

  v10 = sub_1000143E4();
  v11 = [v4 updatedAt];

  v12 = [v10 stringFromDate:v11];
  v13 = [(FBAInboxItemCell *)self dateLabel];
  [v13 setAccessibilityLabel:v12];

  [(FBAInboxItemCell *)self setTeamInfoLabel:0];
  v14 = [(FBAInboxItemCell *)self traitCollection];
  v15 = [v14 preferredContentSizeCategory];
  [(FBAInboxItemCell *)self updateLabelLinesForContentSizeCategory:v15];

  v16 = [(FBAInboxItemCell *)self closedLabel];
  [v16 setText:0];

  v17 = +[UIColor labelColor];
  v18 = [(FBAInboxItemCell *)self titleLabel];
  [v18 setTextColor:v17];

  v19 = +[UIColor secondaryLabelColor];
  v20 = [(FBAInboxItemCell *)self subtitleLabel];
  [v20 setTextColor:v19];

  v21 = +[UIColor secondaryLabelColor];
  v22 = [(FBAInboxItemCell *)self dateLabel];
  [v22 setTextColor:v21];

  v23 = +[UIColor secondaryLabelColor];
  v24 = [(FBAInboxItemCell *)self closedLabel];
  [v24 setTextColor:v23];

  v25 = [(FBAInboxItemCell *)self accessibilityTraits];
  v26 = UIAccessibilityTraitButton | v25;

  [(FBAInboxItemCell *)self setAccessibilityTraits:v26];
}

- (void)updateLabelLinesForContentSizeCategory:(id)a3
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(a3);
  v5 = [(FBAInboxItemCell *)self titleLabel];
  v6 = v5;
  v7 = !IsAccessibilityCategory;
  if (IsAccessibilityCategory)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  v9 = !IsAccessibilityCategory;
  if (v7)
  {
    v10 = 13.0;
  }

  else
  {
    v10 = 20.0;
  }

  [v5 setNumberOfLines:v8];

  v11 = [(FBAInboxItemCell *)self subtitleLabel];
  [v11 setNumberOfLines:v9];

  v12 = [(FBAInboxItemCell *)self teamInfoLabel];
  [v12 setNumberOfLines:v9];

  v13 = [(FBAInboxItemCell *)self unreadImageViewHeightConstraint];
  [v13 setConstant:v10];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = [(FBAInboxItemCell *)self traitCollection];
  v4 = [v5 preferredContentSizeCategory];
  [(FBAInboxItemCell *)self updateLabelLinesForContentSizeCategory:v4];
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)subtitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleLabel);

  return WeakRetained;
}

- (UILabel)teamInfoLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_teamInfoLabel);

  return WeakRetained;
}

- (UILabel)dateLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_dateLabel);

  return WeakRetained;
}

- (UIImageView)unreadImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_unreadImageView);

  return WeakRetained;
}

- (UIImageView)fauxAccessoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_fauxAccessoryView);

  return WeakRetained;
}

- (UILabel)closedLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_closedLabel);

  return WeakRetained;
}

- (UIImageView)orphanImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_orphanImageView);

  return WeakRetained;
}

- (NSLayoutConstraint)unreadImageViewHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_unreadImageViewHeightConstraint);

  return WeakRetained;
}

@end