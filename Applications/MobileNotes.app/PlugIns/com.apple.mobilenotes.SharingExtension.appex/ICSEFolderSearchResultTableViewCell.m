@interface ICSEFolderSearchResultTableViewCell
- (UIImageView)folderIconView;
- (UILabel)accountTitleLabel;
- (UILabel)folderTitleLabel;
- (void)awakeFromNib;
- (void)contentSizeCategoryChanged:(id)a3;
- (void)dealloc;
- (void)setItem:(id)a3;
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
  v5 = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [v5 setTintColor:v4];

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

- (void)setItem:(id)a3
{
  v19 = a3;
  objc_storeStrong(&self->_item, a3);
  if ([v19 isSelectable])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.5;
  }

  v6 = [(ICSEFolderSearchResultTableViewCell *)self accountTitleLabel];
  [v6 setAlpha:v5];

  v7 = [(ICSEFolderSearchResultTableViewCell *)self folderTitleLabel];
  [v7 setAlpha:v5];

  v8 = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [v8 setAlpha:v5];

  v9 = [v19 folder];
  if (!v9)
  {
    [ICAssert handleFailedAssertWithCondition:"((folder) != nil)" functionName:"[ICSEFolderSearchResultTableViewCell setItem:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "folder"];
  }

  v10 = [v9 systemImageName];
  v11 = [UIImage ic_largeSystemImageNamed:v10];
  v12 = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [v12 setImage:v11];

  v13 = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [v13 setContentMode:1];

  v14 = [v19 title];
  v15 = [(ICSEFolderSearchResultTableViewCell *)self folderTitleLabel];
  [v15 setText:v14];

  v16 = [(ICSEFolderSearchResultTableViewCell *)self showAccountName];
  if (v16)
  {
    v15 = [v9 account];
    v17 = [v15 accountName];
  }

  else
  {
    v17 = &stru_1000F6F48;
  }

  v18 = [(ICSEFolderSearchResultTableViewCell *)self accountTitleLabel];
  [v18 setText:v17];

  if (v16)
  {
  }

  [v19 seperatorInsets];
  [(ICSEFolderSearchResultTableViewCell *)self setSeparatorInset:?];
  [(ICSEFolderSearchResultTableViewCell *)self setSeparatorStyle:1];
}

- (void)contentSizeCategoryChanged:(id)a3
{
  [(ICSEFolderSearchResultTableViewCell *)self updateFonts];
  [(ICSEFolderSearchResultTableViewCell *)self setNeedsUpdateConstraints];

  [(ICSEFolderSearchResultTableViewCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    v3 = [(ICSEFolderSearchResultTableViewCell *)self defaultConstraints];
    [NSLayoutConstraint deactivateConstraints:v3];

    [(ICSEFolderSearchResultTableViewCell *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    v4 = [(ICSEFolderSearchResultTableViewCell *)self alternateConstraintsForAXLargerTextSizes];
    [NSLayoutConstraint deactivateConstraints:v4];

    [(ICSEFolderSearchResultTableViewCell *)self defaultConstraints];
  }
  v5 = ;
  [NSLayoutConstraint activateConstraints:v5];

  v6 = [(ICSEFolderSearchResultTableViewCell *)self folderIconView];
  [v6 setHidden:ICAccessibilityAccessibilityLargerTextSizesEnabled()];

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
  v7 = [v6 ic_fontWithSingleLineA];
  v8 = [(ICSEFolderSearchResultTableViewCell *)self folderTitleLabel];
  [v8 setFont:v7];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
  v10 = [v9 ic_fontWithSingleLineA];
  v11 = [(ICSEFolderSearchResultTableViewCell *)self accountTitleLabel];
  [v11 setFont:v10];

  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v13 = ;
  v12 = [(ICSEFolderSearchResultTableViewCell *)self accountTitleLabel];
  [v12 setTextColor:v13];
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