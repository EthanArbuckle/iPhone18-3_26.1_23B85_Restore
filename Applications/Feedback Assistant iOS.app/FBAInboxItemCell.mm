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
- (void)traitCollectionDidChange:(id)change;
- (void)updateLabelLinesForContentSizeCategory:(id)category;
- (void)updateWithEnhancedLoggingSession:(id)session;
- (void)updateWithItem:(id)item showingTeamName:(BOOL)name;
@end

@implementation FBAInboxItemCell

- (void)awakeFromNib
{
  v10.receiver = self;
  v10.super_class = FBAInboxItemCell;
  [(FBAInboxItemCell *)&v10 awakeFromNib];
  v3 = +[UIColor secondaryLabelColor];
  fauxAccessoryView = [(FBAInboxItemCell *)self fauxAccessoryView];
  [fauxAccessoryView setTintColor:v3];

  titleLabel = [(FBAInboxItemCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  subtitleLabel = [(FBAInboxItemCell *)self subtitleLabel];
  [subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  teamInfoLabel = [(FBAInboxItemCell *)self teamInfoLabel];
  [teamInfoLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  unreadImageView = [(FBAInboxItemCell *)self unreadImageView];
  [unreadImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  orphanImageView = [(FBAInboxItemCell *)self orphanImageView];
  [orphanImageView setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)updateWithItem:(id)item showingTeamName:(BOOL)name
{
  nameCopy = name;
  itemCopy = item;
  displayTitle = [itemCopy displayTitle];
  titleLabel = [(FBAInboxItemCell *)self titleLabel];
  [titleLabel setText:displayTitle];

  displayTitle2 = [itemCopy displayTitle];
  [(FBAInboxItemCell *)self setAccessibilityIdentifier:displayTitle2];

  imageForNeedsAction = [itemCopy imageForNeedsAction];
  unreadImageView = [(FBAInboxItemCell *)self unreadImageView];
  [unreadImageView setImage:imageForNeedsAction];

  LODWORD(imageForNeedsAction) = [itemCopy needsAction];
  unreadImageView2 = [(FBAInboxItemCell *)self unreadImageView];
  [unreadImageView2 setHidden:imageForNeedsAction ^ 1];

  needsActionTintColor = [itemCopy needsActionTintColor];
  unreadImageView3 = [(FBAInboxItemCell *)self unreadImageView];
  [unreadImageView3 setTintColor:needsActionTintColor];

  LODWORD(needsActionTintColor) = [itemCopy isOrphaned];
  orphanImageView = [(FBAInboxItemCell *)self orphanImageView];
  [orphanImageView setHidden:needsActionTintColor ^ 1];

  orphanBadgeTintColor = [itemCopy orphanBadgeTintColor];
  orphanImageView2 = [(FBAInboxItemCell *)self orphanImageView];
  [orphanImageView2 setTintColor:orphanBadgeTintColor];

  traitCollection = [(FBAInboxItemCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [(FBAInboxItemCell *)self updateLabelLinesForContentSizeCategory:preferredContentSizeCategory];

  itemSubtitle = [itemCopy itemSubtitle];
  v20 = [(__CFString *)itemSubtitle length];
  subtitleLabel = [(FBAInboxItemCell *)self subtitleLabel];
  v22 = subtitleLabel;
  if (v20)
  {
    v23 = itemSubtitle;
  }

  else
  {
    v23 = @" ";
  }

  [subtitleLabel setText:v23];

  if ([itemCopy shouldShowAssigneeLabel])
  {
    assignee = [itemCopy assignee];
    fullName = [assignee fullName];
    v26 = fullName;
    if (fullName)
    {
      teamInfoLabel2 = fullName;
    }

    else
    {
      v28 = +[NSBundle mainBundle];
      teamInfoLabel2 = [v28 localizedStringForKey:@"UNASSIGNED" value:&stru_1000E2210 table:FBKCommonStrings];
    }

    if (nameCopy)
    {
      singleTeam = [itemCopy singleTeam];
      name = [singleTeam name];
      v31 = [teamInfoLabel2 stringByAppendingFormat:@", %@", name];

      teamInfoLabel2 = v31;
    }

    teamInfoLabel = [(FBAInboxItemCell *)self teamInfoLabel];
    [teamInfoLabel setText:teamInfoLabel2];
  }

  else
  {
    teamInfoLabel2 = [(FBAInboxItemCell *)self teamInfoLabel];
    [teamInfoLabel2 setText:0];
  }

  formattedMailboxSortDate = [itemCopy formattedMailboxSortDate];
  dateLabel = [(FBAInboxItemCell *)self dateLabel];
  [dateLabel setText:formattedMailboxSortDate];

  v35 = sub_1000143E4();
  mailboxSortDate = [itemCopy mailboxSortDate];
  v37 = [v35 stringFromDate:mailboxSortDate];
  dateLabel2 = [(FBAInboxItemCell *)self dateLabel];
  [dateLabel2 setAccessibilityLabel:v37];

  visibleFeedbackClosedStatus = [itemCopy visibleFeedbackClosedStatus];
  closedLabel = [(FBAInboxItemCell *)self closedLabel];
  [closedLabel setText:visibleFeedbackClosedStatus];

  itemTitleColor = [itemCopy itemTitleColor];
  titleLabel2 = [(FBAInboxItemCell *)self titleLabel];
  [titleLabel2 setTextColor:itemTitleColor];

  itemTitleColor2 = [itemCopy itemTitleColor];
  teamInfoLabel3 = [(FBAInboxItemCell *)self teamInfoLabel];
  [teamInfoLabel3 setTextColor:itemTitleColor2];

  v45 = +[UIColor secondaryLabelColor];
  subtitleLabel2 = [(FBAInboxItemCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:v45];

  v47 = +[UIColor secondaryLabelColor];
  dateLabel3 = [(FBAInboxItemCell *)self dateLabel];
  [dateLabel3 setTextColor:v47];

  v49 = +[UIColor secondaryLabelColor];
  closedLabel2 = [(FBAInboxItemCell *)self closedLabel];
  [closedLabel2 setTextColor:v49];

  accessibilityTraits = [(FBAInboxItemCell *)self accessibilityTraits];
  [(FBAInboxItemCell *)self setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];
}

- (void)updateWithEnhancedLoggingSession:(id)session
{
  sessionCopy = session;
  title = [sessionCopy title];
  titleLabel = [(FBAInboxItemCell *)self titleLabel];
  [titleLabel setText:title];

  subtitle = [sessionCopy subtitle];
  subtitleLabel = [(FBAInboxItemCell *)self subtitleLabel];
  [subtitleLabel setText:subtitle];

  dateLabel = [(FBAInboxItemCell *)self dateLabel];
  [dateLabel setText:&stru_1000E2210];

  v10 = sub_1000143E4();
  updatedAt = [sessionCopy updatedAt];

  v12 = [v10 stringFromDate:updatedAt];
  dateLabel2 = [(FBAInboxItemCell *)self dateLabel];
  [dateLabel2 setAccessibilityLabel:v12];

  [(FBAInboxItemCell *)self setTeamInfoLabel:0];
  traitCollection = [(FBAInboxItemCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [(FBAInboxItemCell *)self updateLabelLinesForContentSizeCategory:preferredContentSizeCategory];

  closedLabel = [(FBAInboxItemCell *)self closedLabel];
  [closedLabel setText:0];

  v17 = +[UIColor labelColor];
  titleLabel2 = [(FBAInboxItemCell *)self titleLabel];
  [titleLabel2 setTextColor:v17];

  v19 = +[UIColor secondaryLabelColor];
  subtitleLabel2 = [(FBAInboxItemCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:v19];

  v21 = +[UIColor secondaryLabelColor];
  dateLabel3 = [(FBAInboxItemCell *)self dateLabel];
  [dateLabel3 setTextColor:v21];

  v23 = +[UIColor secondaryLabelColor];
  closedLabel2 = [(FBAInboxItemCell *)self closedLabel];
  [closedLabel2 setTextColor:v23];

  accessibilityTraits = [(FBAInboxItemCell *)self accessibilityTraits];
  v26 = UIAccessibilityTraitButton | accessibilityTraits;

  [(FBAInboxItemCell *)self setAccessibilityTraits:v26];
}

- (void)updateLabelLinesForContentSizeCategory:(id)category
{
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(category);
  titleLabel = [(FBAInboxItemCell *)self titleLabel];
  v6 = titleLabel;
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

  [titleLabel setNumberOfLines:v8];

  subtitleLabel = [(FBAInboxItemCell *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:v9];

  teamInfoLabel = [(FBAInboxItemCell *)self teamInfoLabel];
  [teamInfoLabel setNumberOfLines:v9];

  unreadImageViewHeightConstraint = [(FBAInboxItemCell *)self unreadImageViewHeightConstraint];
  [unreadImageViewHeightConstraint setConstant:v10];
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(FBAInboxItemCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [(FBAInboxItemCell *)self updateLabelLinesForContentSizeCategory:preferredContentSizeCategory];
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