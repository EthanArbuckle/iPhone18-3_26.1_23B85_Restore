@interface ICSENoteSearchResultTableViewCell
- (NSLayoutConstraint)dashContainerZeroWidthConstraint;
- (UIImageView)folderIconView;
- (UIImageView)iconView;
- (UILabel)accountTitleLabel;
- (UILabel)dashLabel;
- (UILabel)dateLabel;
- (UILabel)folderTitleLabel;
- (UILabel)noteTitleLabel;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)awakeFromNib;
- (void)contentSizeCategoryChanged:(id)changed;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setItem:(id)item;
- (void)updateConstraints;
- (void)updateFonts;
@end

@implementation ICSENoteSearchResultTableViewCell

- (void)awakeFromNib
{
  v6.receiver = self;
  v6.super_class = ICSENoteSearchResultTableViewCell;
  [(ICSENoteSearchResultTableViewCell *)&v6 awakeFromNib];
  v3 = +[UIColor secondaryLabelColor];
  folderIconView = [(ICSENoteSearchResultTableViewCell *)self folderIconView];
  [folderIconView setTintColor:v3];

  [(ICSENoteSearchResultTableViewCell *)self updateFonts];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSENoteSearchResultTableViewCell;
  [(ICSENoteSearchResultTableViewCell *)&v4 dealloc];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_item, item);
  note = [itemCopy note];
  if (!note)
  {
    [ICAssert handleFailedAssertWithCondition:"((note) != nil)" functionName:"[ICSENoteSearchResultTableViewCell setItem:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "note"];
  }

  folder = [note folder];
  if (!folder)
  {
    [ICAssert handleFailedAssertWithCondition:"((folder) != nil)" functionName:"[ICSENoteSearchResultTableViewCell setItem:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "folder"];
  }

  if ([itemCopy isSelectable])
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.5;
  }

  iconView = [(ICSENoteSearchResultTableViewCell *)self iconView];
  [iconView setAlpha:v7];

  v9 = +[UIColor labelColor];
  iconView2 = [(ICSENoteSearchResultTableViewCell *)self iconView];
  [iconView2 setTintColor:v9];

  image = [itemCopy image];
  iconView3 = [(ICSENoteSearchResultTableViewCell *)self iconView];
  [iconView3 setImage:image];

  noteTitleLabel = [(ICSENoteSearchResultTableViewCell *)self noteTitleLabel];
  [noteTitleLabel setAlpha:v7];

  title = [itemCopy title];
  noteTitleLabel2 = [(ICSENoteSearchResultTableViewCell *)self noteTitleLabel];
  [noteTitleLabel2 setText:title];

  folderIconView = [(ICSENoteSearchResultTableViewCell *)self folderIconView];
  [folderIconView setAlpha:v7];

  if ([folder isSharedViaICloud])
  {
    v17 = @"folder.badge.person.crop";
  }

  else
  {
    v17 = @"folder";
  }

  v18 = [UIImage ic_largeSystemImageNamed:v17];
  folderIconView2 = [(ICSENoteSearchResultTableViewCell *)self folderIconView];
  [folderIconView2 setImage:v18];

  folderIconView3 = [(ICSENoteSearchResultTableViewCell *)self folderIconView];
  [folderIconView3 setContentMode:1];

  folderTitleLabel = [(ICSENoteSearchResultTableViewCell *)self folderTitleLabel];
  [folderTitleLabel setAlpha:v7];

  localizedTitle = [folder localizedTitle];
  folderTitleLabel2 = [(ICSENoteSearchResultTableViewCell *)self folderTitleLabel];
  [folderTitleLabel2 setText:localizedTitle];

  LODWORD(folderTitleLabel2) = [(ICSENoteSearchResultTableViewCell *)self showAccountName];
  accountTitleLabel = [(ICSENoteSearchResultTableViewCell *)self accountTitleLabel];
  v25 = accountTitleLabel;
  if (folderTitleLabel2)
  {
    [accountTitleLabel setAlpha:v7];

    account = [folder account];
    accountName = [account accountName];
    accountTitleLabel2 = [(ICSENoteSearchResultTableViewCell *)self accountTitleLabel];
    [accountTitleLabel2 setText:accountName];

    dashContainerZeroWidthConstraint = [(ICSENoteSearchResultTableViewCell *)self dashContainerZeroWidthConstraint];
    LODWORD(v30) = 1.0;
    [dashContainerZeroWidthConstraint setPriority:v30];

    dashLabel = [(ICSENoteSearchResultTableViewCell *)self dashLabel];
    [dashLabel setAlpha:v7];
  }

  else
  {
    [accountTitleLabel setText:&stru_1000F6F48];

    dashLabel = [(ICSENoteSearchResultTableViewCell *)self dashContainerZeroWidthConstraint];
    LODWORD(v32) = 1148829696;
    [dashLabel setPriority:v32];
  }

  dateLabel = [(ICSENoteSearchResultTableViewCell *)self dateLabel];
  [dateLabel setAlpha:v7];

  secondaryTitle = [itemCopy secondaryTitle];
  dateLabel2 = [(ICSENoteSearchResultTableViewCell *)self dateLabel];
  [dateLabel2 setText:secondaryTitle];

  if ((+[UIDevice ic_isVision](UIDevice, "ic_isVision") & 1) == 0 && [itemCopy isChecked])
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      +[UIColor ICDarkenedTintColor];
    }

    else
    {
      +[UIColor ICTintColor];
    }
    v36 = ;
    iconView4 = [(ICSENoteSearchResultTableViewCell *)self iconView];
    [iconView4 setTintColor:v36];
  }

  [itemCopy seperatorInsets];
  [(ICSENoteSearchResultTableViewCell *)self setSeparatorInset:?];
  [(ICSENoteSearchResultTableViewCell *)self setSeparatorStyle:1];
}

- (void)contentSizeCategoryChanged:(id)changed
{
  [(ICSENoteSearchResultTableViewCell *)self updateFonts];
  [(ICSENoteSearchResultTableViewCell *)self setNeedsUpdateConstraints];

  [(ICSENoteSearchResultTableViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICSENoteSearchResultTableViewCell;
  [(ICSENoteSearchResultTableViewCell *)&v3 layoutSubviews];
  [(ICSENoteSearchResultTableViewCell *)self updateConstraints];
}

- (void)updateConstraints
{
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    defaultConstraints = [(ICSENoteSearchResultTableViewCell *)self defaultConstraints];
    [NSLayoutConstraint deactivateConstraints:defaultConstraints];

    [(ICSENoteSearchResultTableViewCell *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    alternateConstraintsForAXLargerTextSizes = [(ICSENoteSearchResultTableViewCell *)self alternateConstraintsForAXLargerTextSizes];
    [NSLayoutConstraint deactivateConstraints:alternateConstraintsForAXLargerTextSizes];

    [(ICSENoteSearchResultTableViewCell *)self defaultConstraints];
  }
  v5 = ;
  [NSLayoutConstraint activateConstraints:v5];

  iconView = [(ICSENoteSearchResultTableViewCell *)self iconView];
  [iconView setHidden:ICAccessibilityAccessibilityLargerTextSizesEnabled()];

  folderIconView = [(ICSENoteSearchResultTableViewCell *)self folderIconView];
  [folderIconView setHidden:ICAccessibilityAccessibilityLargerTextSizesEnabled()];

  v8.receiver = self;
  v8.super_class = ICSENoteSearchResultTableViewCell;
  [(ICSENoteSearchResultTableViewCell *)&v8 updateConstraints];
}

- (void)updateFonts
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 _scaledValueForValue:17.0];
  v5 = floor(v4);

  v6 = [UIFont systemFontOfSize:v5 weight:UIFontWeightMedium];
  ic_fontWithSingleLineA = [v6 ic_fontWithSingleLineA];
  noteTitleLabel = [(ICSENoteSearchResultTableViewCell *)self noteTitleLabel];
  [noteTitleLabel setFont:ic_fontWithSingleLineA];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  ic_fontWithSingleLineA2 = [v9 ic_fontWithSingleLineA];
  folderTitleLabel = [(ICSENoteSearchResultTableViewCell *)self folderTitleLabel];
  [folderTitleLabel setFont:ic_fontWithSingleLineA2];

  v12 = +[UIColor secondaryLabelColor];
  folderTitleLabel2 = [(ICSENoteSearchResultTableViewCell *)self folderTitleLabel];
  [folderTitleLabel2 setTextColor:v12];

  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  ic_fontWithSingleLineA3 = [v14 ic_fontWithSingleLineA];
  dashLabel = [(ICSENoteSearchResultTableViewCell *)self dashLabel];
  [dashLabel setFont:ic_fontWithSingleLineA3];

  v17 = +[UIColor secondaryLabelColor];
  dashLabel2 = [(ICSENoteSearchResultTableViewCell *)self dashLabel];
  [dashLabel2 setTextColor:v17];

  v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  ic_fontWithSingleLineA4 = [v19 ic_fontWithSingleLineA];
  accountTitleLabel = [(ICSENoteSearchResultTableViewCell *)self accountTitleLabel];
  [accountTitleLabel setFont:ic_fontWithSingleLineA4];

  v22 = +[UIColor secondaryLabelColor];
  accountTitleLabel2 = [(ICSENoteSearchResultTableViewCell *)self accountTitleLabel];
  [accountTitleLabel2 setTextColor:v22];

  v25 = +[UIColor secondaryLabelColor];
  dateLabel = [(ICSENoteSearchResultTableViewCell *)self dateLabel];
  [dateLabel setTextColor:v25];
}

- (unint64_t)accessibilityTraits
{
  v12.receiver = self;
  v12.super_class = ICSENoteSearchResultTableViewCell;
  accessibilityTraits = [(ICSENoteSearchResultTableViewCell *)&v12 accessibilityTraits];
  item = [(ICSENoteSearchResultTableViewCell *)self item];
  isSelectable = [item isSelectable];

  v6 = UIAccessibilityTraitNotEnabled;
  if (isSelectable)
  {
    v6 = 0;
  }

  v7 = v6 | accessibilityTraits;
  item2 = [(ICSENoteSearchResultTableViewCell *)self item];
  isChecked = [item2 isChecked];

  v10 = UIAccessibilityTraitSelected;
  if (!isChecked)
  {
    v10 = 0;
  }

  return v7 | v10;
}

- (id)accessibilityLabel
{
  item = [(ICSENoteSearchResultTableViewCell *)self item];
  note = [item note];

  if (!note)
  {
    [ICAssert handleFailedAssertWithCondition:"((note) != nil)" functionName:"[ICSENoteSearchResultTableViewCell accessibilityLabel]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "note"];
  }

  title = [note title];
  modificationDate = [note modificationDate];
  ic_briefFormattedDateForAccessibility = [modificationDate ic_briefFormattedDateForAccessibility];

  v8 = [(ICSENoteSearchResultTableViewCell *)self accessibilitySharedViaICloudStringForNote:note];
  if ([note isSharedViaICloudFolder])
  {
    title2 = 0;
  }

  else
  {
    folder = [note folder];
    title2 = [folder title];
  }

  v11 = __ICAccessibilityStringForVariables();

  return v11;
}

- (UIImageView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (UILabel)noteTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_noteTitleLabel);

  return WeakRetained;
}

- (UIImageView)folderIconView
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconView);

  return WeakRetained;
}

- (UILabel)folderTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_folderTitleLabel);

  return WeakRetained;
}

- (UILabel)dashLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_dashLabel);

  return WeakRetained;
}

- (UILabel)accountTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_accountTitleLabel);

  return WeakRetained;
}

- (UILabel)dateLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_dateLabel);

  return WeakRetained;
}

- (NSLayoutConstraint)dashContainerZeroWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_dashContainerZeroWidthConstraint);

  return WeakRetained;
}

@end