@interface ICSENoteTitleView
+ (id)newNoteTitleView;
- (NSDictionary)itemTitleAttributes;
- (NSLayoutConstraint)dashLabelZeroWidthConstraint;
- (NSLayoutConstraint)folderIconSpacingZeroWidthConstraint;
- (NSLayoutConstraint)folderIconZeroHeightConstraint;
- (NSLayoutConstraint)folderIconZeroWidthConstraint;
- (NSLayoutConstraint)folderLabelZeroHeightConstraint;
- (NSLayoutConstraint)folderLabelZeroWidthConstraint;
- (UIImageView)arrowImageView;
- (UIImageView)folderIcon;
- (UILabel)accountLabel;
- (UILabel)dashLabel;
- (UILabel)folderLabel;
- (UILabel)noteLabel;
- (id)accessibilityLabel;
- (void)awakeFromNib;
- (void)contentSizeCategoryChanged:(id)changed;
- (void)dealloc;
- (void)setFolderLabelVisible:(BOOL)visible;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNote:(id)note folder:(id)folder hasMultipleAccounts:(BOOL)accounts;
- (void)setupLabelsAndIcons;
- (void)updateConstraints;
- (void)updateFonts;
@end

@implementation ICSENoteTitleView

- (void)awakeFromNib
{
  v17.receiver = self;
  v17.super_class = ICSENoteTitleView;
  [(ICSENoteTitleView *)&v17 awakeFromNib];
  note = [(ICSENoteTitleView *)self note];
  folder = [(ICSENoteTitleView *)self folder];
  [(ICSENoteTitleView *)self setNote:note folder:folder hasMultipleAccounts:0];

  [(ICSENoteTitleView *)self updateFonts];
  v5 = +[UIColor secondaryLabelColor];
  accountLabel = [(ICSENoteTitleView *)self accountLabel];
  [accountLabel setTextColor:v5];

  v7 = +[UIColor labelColor];
  noteLabel = [(ICSENoteTitleView *)self noteLabel];
  [noteLabel setTextColor:v7];

  v9 = +[UIColor labelColor];
  folderLabel = [(ICSENoteTitleView *)self folderLabel];
  [folderLabel setTextColor:v9];

  v11 = +[UIColor tertiaryLabelColor];
  arrowImageView = [(ICSENoteTitleView *)self arrowImageView];
  [arrowImageView setTintColor:v11];

  if (+[UIDevice ic_isVision])
  {
    v13 = +[UIColor labelColor];
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
    v13 = ;
  }

  v14 = v13;
  folderIcon = [(ICSENoteTitleView *)self folderIcon];
  [folderIcon setTintColor:v14];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSENoteTitleView;
  [(ICSENoteTitleView *)&v4 dealloc];
}

- (void)setNote:(id)note folder:(id)folder hasMultipleAccounts:(BOOL)accounts
{
  noteCopy = note;
  folderCopy = folder;
  note = self->_note;
  self->_note = noteCopy;
  v11 = noteCopy;

  folder = self->_folder;
  self->_folder = folderCopy;

  self->_hasMultipleAccounts = accounts;

  [(ICSENoteTitleView *)self setupLabelsAndIcons];
}

- (void)setupLabelsAndIcons
{
  note = [(ICSENoteTitleView *)self note];

  if (note)
  {
    note2 = [(ICSENoteTitleView *)self note];
    title = [note2 title];

    note3 = [(ICSENoteTitleView *)self note];
    v6 = 0;
    folder = 0;
    v8 = 1144766464;
    goto LABEL_11;
  }

  title = +[ICNote defaultTitleForEmptyNote];
  folder = [(ICSENoteTitleView *)self folder];
  if (!folder)
  {
    goto LABEL_8;
  }

  folder2 = [(ICSENoteTitleView *)self folder];
  isDefaultFolderForAccount = [folder2 isDefaultFolderForAccount];

  if ((isDefaultFolderForAccount & 1) == 0)
  {
    folder3 = [(ICSENoteTitleView *)self folder];
    folder = [folder3 localizedTitle];

    if (folder)
    {
      v6 = [folder length] != 0;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  folder = 0;
LABEL_9:
  folder4 = [(ICSENoteTitleView *)self folder];

  if (!folder4)
  {
    v8 = 1148043264;
LABEL_14:
    v15 = +[ICNoteContext sharedContext];
    managedObjectContext = [v15 managedObjectContext];
    v17 = [ICAccount defaultAccountInContext:managedObjectContext];

    localizedName = [v17 localizedName];

    goto LABEL_15;
  }

  note3 = [(ICSENoteTitleView *)self folder];
  v8 = 1148043264;
LABEL_11:
  account = [note3 account];
  localizedName = [account localizedName];

  if (!localizedName)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (![(ICSENoteTitleView *)self hasMultipleAccounts]|| !localizedName)
  {

    localizedName = &stru_1000F6F48;
  }

  folder5 = [(ICSENoteTitleView *)self folder];
  systemImageName = [folder5 systemImageName];
  v20 = [UIImage ic_systemImageNamed:systemImageName];
  folderIcon = [(ICSENoteTitleView *)self folderIcon];
  [folderIcon setImage:v20];

  [(ICSENoteTitleView *)self setFolderLabelVisible:v6];
  noteLabel = [(ICSENoteTitleView *)self noteLabel];
  [noteLabel setText:title];

  noteLabel2 = [(ICSENoteTitleView *)self noteLabel];
  LODWORD(v24) = v8;
  [noteLabel2 setContentCompressionResistancePriority:0 forAxis:v24];

  accountLabel = [(ICSENoteTitleView *)self accountLabel];
  [accountLabel setText:localizedName];

  folderLabel = [(ICSENoteTitleView *)self folderLabel];
  [folderLabel setText:folder];

  arrowImageView = [(ICSENoteTitleView *)self arrowImageView];
  image = [arrowImageView image];
  imageFlippedForRightToLeftLayoutDirection = [image imageFlippedForRightToLeftLayoutDirection];
  arrowImageView2 = [(ICSENoteTitleView *)self arrowImageView];
  [arrowImageView2 setImage:imageFlippedForRightToLeftLayoutDirection];
}

- (void)setFolderLabelVisible:(BOOL)visible
{
  visibleCopy = visible;
  v5 = 1.0;
  if (visible)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 999.0;
  }

  folderLabelZeroWidthConstraint = [(ICSENoteTitleView *)self folderLabelZeroWidthConstraint];
  *&v8 = v6;
  [folderLabelZeroWidthConstraint setPriority:v8];

  dashLabelZeroWidthConstraint = [(ICSENoteTitleView *)self dashLabelZeroWidthConstraint];
  *&v10 = v6;
  [dashLabelZeroWidthConstraint setPriority:v10];

  folderIconZeroWidthConstraint = [(ICSENoteTitleView *)self folderIconZeroWidthConstraint];
  *&v12 = v6;
  [folderIconZeroWidthConstraint setPriority:v12];

  folderIconSpacingZeroWidthConstraint = [(ICSENoteTitleView *)self folderIconSpacingZeroWidthConstraint];
  *&v14 = v6;
  [folderIconSpacingZeroWidthConstraint setPriority:v14];

  if (!visibleCopy)
  {
    if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
    {
      v5 = 999.0;
    }

    else
    {
      v5 = 1.0;
    }
  }

  folderIconZeroHeightConstraint = [(ICSENoteTitleView *)self folderIconZeroHeightConstraint];
  *&v16 = v5;
  [folderIconZeroHeightConstraint setPriority:v16];

  folderLabelZeroHeightConstraint = [(ICSENoteTitleView *)self folderLabelZeroHeightConstraint];
  *&v18 = v5;
  [folderLabelZeroHeightConstraint setPriority:v18];

  folderIcon = [(ICSENoteTitleView *)self folderIcon];
  [folderIcon setHidden:!visibleCopy];
}

- (NSDictionary)itemTitleAttributes
{
  itemTitleAttributes = self->_itemTitleAttributes;
  if (!itemTitleAttributes)
  {
    v8 = NSForegroundColorAttributeName;
    v4 = +[UIColor darkGrayColor];
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = self->_itemTitleAttributes;
    self->_itemTitleAttributes = v5;

    itemTitleAttributes = self->_itemTitleAttributes;
  }

  return itemTitleAttributes;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = ICSENoteTitleView;
  [(ICSENoteTitleView *)&v7 setHighlighted:?];
  v5 = 0.3;
  v6[1] = 3221225472;
  v6[0] = _NSConcreteStackBlock;
  v6[2] = sub_100012090;
  v6[3] = &unk_1000F27E0;
  if (!highlightedCopy)
  {
    v5 = 1.0;
  }

  v6[4] = self;
  *&v6[5] = v5;
  [UIView animateWithDuration:v6 animations:0.15];
}

+ (id)newNoteTitleView
{
  v3 = +[NSBundle mainBundle];
  v4 = NSStringFromClass(self);
  v5 = [v3 loadNibNamed:v4 owner:self options:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v11;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "result != ((void*)0)", "+[ICSENoteTitleView newNoteTitleView]", 1, 0, @"Unable to load title view", v14);
  v12 = 0;
LABEL_12:
  [v12 setTranslatesAutoresizingMaskIntoConstraints:{1, v14}];

  return v12;
}

- (void)contentSizeCategoryChanged:(id)changed
{
  [(ICSENoteTitleView *)self updateFonts];
  [(ICSENoteTitleView *)self setNeedsUpdateConstraints];

  [(ICSENoteTitleView *)self setNeedsLayout];
}

- (void)updateFonts
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 _scaledValueForValue:17.0];
  v5 = floor(v4);

  v6 = [UIFont systemFontOfSize:v5 weight:UIFontWeightRegular];
  ic_fontWithSingleLineA = [v6 ic_fontWithSingleLineA];
  noteLabel = [(ICSENoteTitleView *)self noteLabel];
  [noteLabel setFont:ic_fontWithSingleLineA];

  v9 = [UIFont systemFontOfSize:v5 weight:UIFontWeightRegular];
  ic_fontWithSingleLineA2 = [v9 ic_fontWithSingleLineA];
  folderLabel = [(ICSENoteTitleView *)self folderLabel];
  [folderLabel setFont:ic_fontWithSingleLineA2];

  v12 = [UIFont systemFontOfSize:v5 weight:UIFontWeightRegular];
  ic_fontWithSingleLineA3 = [v12 ic_fontWithSingleLineA];
  dashLabel = [(ICSENoteTitleView *)self dashLabel];
  [dashLabel setFont:ic_fontWithSingleLineA3];

  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  ic_fontWithSingleLineA4 = [v15 ic_fontWithSingleLineA];
  accountLabel = [(ICSENoteTitleView *)self accountLabel];
  [accountLabel setFont:ic_fontWithSingleLineA4];

  v19 = +[UIColor secondaryLabelColor];
  accountLabel2 = [(ICSENoteTitleView *)self accountLabel];
  [accountLabel2 setTextColor:v19];
}

- (void)updateConstraints
{
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    defaultConstraints = [(ICSENoteTitleView *)self defaultConstraints];
    [NSLayoutConstraint deactivateConstraints:defaultConstraints];

    [(ICSENoteTitleView *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    alternateConstraintsForAXLargerTextSizes = [(ICSENoteTitleView *)self alternateConstraintsForAXLargerTextSizes];
    [NSLayoutConstraint deactivateConstraints:alternateConstraintsForAXLargerTextSizes];

    [(ICSENoteTitleView *)self defaultConstraints];
  }
  v5 = ;
  [NSLayoutConstraint activateConstraints:v5];

  v6.receiver = self;
  v6.super_class = ICSENoteTitleView;
  [(ICSENoteTitleView *)&v6 updateConstraints];
}

- (id)accessibilityLabel
{
  noteLabel = [(ICSENoteTitleView *)self noteLabel];
  text = [noteLabel text];
  accountLabel = [(ICSENoteTitleView *)self accountLabel];
  text2 = [accountLabel text];
  v6 = __ICAccessibilityStringForVariables();

  return v6;
}

- (UILabel)accountLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_accountLabel);

  return WeakRetained;
}

- (UILabel)noteLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_noteLabel);

  return WeakRetained;
}

- (UILabel)dashLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_dashLabel);

  return WeakRetained;
}

- (UILabel)folderLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_folderLabel);

  return WeakRetained;
}

- (UIImageView)folderIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIcon);

  return WeakRetained;
}

- (NSLayoutConstraint)folderLabelZeroWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_folderLabelZeroWidthConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)dashLabelZeroWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_dashLabelZeroWidthConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)folderIconZeroWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconZeroWidthConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)folderIconSpacingZeroWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconSpacingZeroWidthConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)folderIconZeroHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_folderIconZeroHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)folderLabelZeroHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_folderLabelZeroHeightConstraint);

  return WeakRetained;
}

- (UIImageView)arrowImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_arrowImageView);

  return WeakRetained;
}

@end