@interface ICSEFolderSearchResultTableViewCell
- (UIImageView)folderIconView;
- (UILabel)accountTitleLabel;
- (UILabel)folderTitleLabel;
- (void)awakeFromNib;
- (void)contentSizeCategoryChanged:(id)changed;
- (void)dealloc;
- (void)setItem:(id)item;
- (void)updateConstraints;
- (void)updateFonts;
@end

@implementation ICSEFolderSearchResultTableViewCell

- (void)awakeFromNib
{
  v7.receiver = self;
  v7.super_class = ICSEFolderSearchResultTableViewCell;
  [(ICSEFolderSearchResultTableViewCell *)&v7 awakeFromNib];
  if (+[UIDevice ic_isVision])
  {
    v3 = +[UIColor labelColor];
  }

  else
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      +[UIColor ICDarkenedTintColor];
    }

    else
    {
      +[UIColor ICTintColor];
    }
    v3 = ;
  }

  v4 = v3;
  folderIconView = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [folderIconView setTintColor:v4];

  [(ICSEFolderSearchResultTableViewCell *)self updateFonts];
  [(ICSEFolderSearchResultTableViewCell *)self setAccessoryType:1];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSEFolderSearchResultTableViewCell;
  [(ICSEFolderSearchResultTableViewCell *)&v4 dealloc];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_item, item);
  if ([itemCopy isSelectable])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.5;
  }

  accountTitleLabel = [(ICSEFolderSearchResultTableViewCell *)self accountTitleLabel];
  [accountTitleLabel setAlpha:v5];

  folderTitleLabel = [(ICSEFolderSearchResultTableViewCell *)self folderTitleLabel];
  [folderTitleLabel setAlpha:v5];

  folderIconView = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [folderIconView setAlpha:v5];

  folder = [itemCopy folder];
  if (!folder)
  {
    [ICAssert handleFailedAssertWithCondition:"((folder) != nil)" functionName:"[ICSEFolderSearchResultTableViewCell setItem:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "folder"];
  }

  systemImageName = [folder systemImageName];
  v11 = [UIImage ic_largeSystemImageNamed:systemImageName];
  folderIconView2 = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [folderIconView2 setImage:v11];

  folderIconView3 = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [folderIconView3 setContentMode:1];

  title = [itemCopy title];
  folderTitleLabel2 = [(ICSEFolderSearchResultTableViewCell *)self folderTitleLabel];
  [folderTitleLabel2 setText:title];

  showAccountName = [(ICSEFolderSearchResultTableViewCell *)self showAccountName];
  if (showAccountName)
  {
    folderTitleLabel2 = [folder account];
    accountName = [folderTitleLabel2 accountName];
  }

  else
  {
    accountName = &stru_1000F6F48;
  }

  accountTitleLabel2 = [(ICSEFolderSearchResultTableViewCell *)self accountTitleLabel];
  [accountTitleLabel2 setText:accountName];

  if (showAccountName)
  {
  }

  [itemCopy seperatorInsets];
  [(ICSEFolderSearchResultTableViewCell *)self setSeparatorInset:?];
  [(ICSEFolderSearchResultTableViewCell *)self setSeparatorStyle:1];
}

- (void)contentSizeCategoryChanged:(id)changed
{
  [(ICSEFolderSearchResultTableViewCell *)self updateFonts];
  [(ICSEFolderSearchResultTableViewCell *)self setNeedsUpdateConstraints];

  [(ICSEFolderSearchResultTableViewCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    defaultConstraints = [(ICSEFolderSearchResultTableViewCell *)self defaultConstraints];
    [NSLayoutConstraint deactivateConstraints:defaultConstraints];

    [(ICSEFolderSearchResultTableViewCell *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    alternateConstraintsForAXLargerTextSizes = [(ICSEFolderSearchResultTableViewCell *)self alternateConstraintsForAXLargerTextSizes];
    [NSLayoutConstraint deactivateConstraints:alternateConstraintsForAXLargerTextSizes];

    [(ICSEFolderSearchResultTableViewCell *)self defaultConstraints];
  }
  v5 = ;
  [NSLayoutConstraint activateConstraints:v5];

  folderIconView = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [folderIconView setHidden:ICAccessibilityAccessibilityLargerTextSizesEnabled()];

  v7.receiver = self;
  v7.super_class = ICSEFolderSearchResultTableViewCell;
  [(ICSEFolderSearchResultTableViewCell *)&v7 updateConstraints];
}

- (void)updateFonts
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 _scaledValueForValue:17.0];
  v5 = floor(v4);

  v6 = [UIFont systemFontOfSize:v5 weight:UIFontWeightMedium];
  ic_fontWithSingleLineA = [v6 ic_fontWithSingleLineA];
  folderTitleLabel = [(ICSEFolderSearchResultTableViewCell *)self folderTitleLabel];
  [folderTitleLabel setFont:ic_fontWithSingleLineA];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  ic_fontWithSingleLineA2 = [v9 ic_fontWithSingleLineA];
  accountTitleLabel = [(ICSEFolderSearchResultTableViewCell *)self accountTitleLabel];
  [accountTitleLabel setFont:ic_fontWithSingleLineA2];

  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v13 = ;
  accountTitleLabel2 = [(ICSEFolderSearchResultTableViewCell *)self accountTitleLabel];
  [accountTitleLabel2 setTextColor:v13];
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

- (UILabel)accountTitleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_accountTitleLabel);

  return WeakRetained;
}

@end