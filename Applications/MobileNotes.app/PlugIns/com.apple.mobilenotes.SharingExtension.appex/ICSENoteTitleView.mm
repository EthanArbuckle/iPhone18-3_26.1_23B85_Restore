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
- (void)contentSizeCategoryChanged:(id)a3;
- (void)dealloc;
- (void)setFolderLabelVisible:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setNote:(id)a3 folder:(id)a4 hasMultipleAccounts:(BOOL)a5;
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
  v3 = [(ICSENoteTitleView *)self note];
  v4 = [(ICSENoteTitleView *)self folder];
  [(ICSENoteTitleView *)self setNote:v3 folder:v4 hasMultipleAccounts:0];

  [(ICSENoteTitleView *)self updateFonts];
  v5 = +[UIColor secondaryLabelColor];
  v6 = [(ICSENoteTitleView *)self accountLabel];
  [v6 setTextColor:v5];

  v7 = +[UIColor labelColor];
  v8 = [(ICSENoteTitleView *)self noteLabel];
  [v8 setTextColor:v7];

  v9 = +[UIColor labelColor];
  v10 = [(ICSENoteTitleView *)self folderLabel];
  [v10 setTextColor:v9];

  v11 = +[UIColor tertiaryLabelColor];
  v12 = [(ICSENoteTitleView *)self arrowImageView];
  [v12 setTintColor:v11];

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
  v15 = [(ICSENoteTitleView *)self folderIcon];
  [v15 setTintColor:v14];

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

- (void)setNote:(id)a3 folder:(id)a4 hasMultipleAccounts:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  note = self->_note;
  self->_note = v8;
  v11 = v8;

  folder = self->_folder;
  self->_folder = v9;

  self->_hasMultipleAccounts = a5;

  [(ICSENoteTitleView *)self setupLabelsAndIcons];
}

- (void)setupLabelsAndIcons
{
  v3 = [(ICSENoteTitleView *)self note];

  if (v3)
  {
    v4 = [(ICSENoteTitleView *)self note];
    v31 = [v4 title];

    v5 = [(ICSENoteTitleView *)self note];
    v6 = 0;
    v7 = 0;
    v8 = 1144766464;
    goto LABEL_11;
  }

  v31 = +[ICNote defaultTitleForEmptyNote];
  v7 = [(ICSENoteTitleView *)self folder];
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = [(ICSENoteTitleView *)self folder];
  v10 = [v9 isDefaultFolderForAccount];

  if ((v10 & 1) == 0)
  {
    v11 = [(ICSENoteTitleView *)self folder];
    v7 = [v11 localizedTitle];

    if (v7)
    {
      v6 = [v7 length] != 0;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 0;
LABEL_9:
  v12 = [(ICSENoteTitleView *)self folder];

  if (!v12)
  {
    v8 = 1148043264;
LABEL_14:
    v15 = +[ICNoteContext sharedContext];
    v16 = [v15 managedObjectContext];
    v17 = [ICAccount defaultAccountInContext:v16];

    v14 = [v17 localizedName];

    goto LABEL_15;
  }

  v5 = [(ICSENoteTitleView *)self folder];
  v8 = 1148043264;
LABEL_11:
  v13 = [v5 account];
  v14 = [v13 localizedName];

  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (![(ICSENoteTitleView *)self hasMultipleAccounts]|| !v14)
  {

    v14 = &stru_1000F6F48;
  }

  v18 = [(ICSENoteTitleView *)self folder];
  v19 = [v18 systemImageName];
  v20 = [UIImage ic_systemImageNamed:v19];
  v21 = [(ICSENoteTitleView *)self folderIcon];
  [v21 setImage:v20];

  [(ICSENoteTitleView *)self setFolderLabelVisible:v6];
  v22 = [(ICSENoteTitleView *)self noteLabel];
  [v22 setText:v31];

  v23 = [(ICSENoteTitleView *)self noteLabel];
  LODWORD(v24) = v8;
  [v23 setContentCompressionResistancePriority:0 forAxis:v24];

  v25 = [(ICSENoteTitleView *)self accountLabel];
  [v25 setText:v14];

  v26 = [(ICSENoteTitleView *)self folderLabel];
  [v26 setText:v7];

  v27 = [(ICSENoteTitleView *)self arrowImageView];
  v28 = [v27 image];
  v29 = [v28 imageFlippedForRightToLeftLayoutDirection];
  v30 = [(ICSENoteTitleView *)self arrowImageView];
  [v30 setImage:v29];
}

- (void)setFolderLabelVisible:(BOOL)a3
{
  v3 = a3;
  v5 = 1.0;
  if (a3)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 999.0;
  }

  v7 = [(ICSENoteTitleView *)self folderLabelZeroWidthConstraint];
  *&v8 = v6;
  [v7 setPriority:v8];

  v9 = [(ICSENoteTitleView *)self dashLabelZeroWidthConstraint];
  *&v10 = v6;
  [v9 setPriority:v10];

  v11 = [(ICSENoteTitleView *)self folderIconZeroWidthConstraint];
  *&v12 = v6;
  [v11 setPriority:v12];

  v13 = [(ICSENoteTitleView *)self folderIconSpacingZeroWidthConstraint];
  *&v14 = v6;
  [v13 setPriority:v14];

  if (!v3)
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

  v15 = [(ICSENoteTitleView *)self folderIconZeroHeightConstraint];
  *&v16 = v5;
  [v15 setPriority:v16];

  v17 = [(ICSENoteTitleView *)self folderLabelZeroHeightConstraint];
  *&v18 = v5;
  [v17 setPriority:v18];

  v19 = [(ICSENoteTitleView *)self folderIcon];
  [v19 setHidden:!v3];
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = ICSENoteTitleView;
  [(ICSENoteTitleView *)&v7 setHighlighted:?];
  v5 = 0.3;
  v6[1] = 3221225472;
  v6[0] = _NSConcreteStackBlock;
  v6[2] = sub_100012090;
  v6[3] = &unk_1000F27E0;
  if (!v3)
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
  v4 = NSStringFromClass(a1);
  v5 = [v3 loadNibNamed:v4 owner:a1 options:0];

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

- (void)contentSizeCategoryChanged:(id)a3
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
  v7 = [v6 ic_fontWithSingleLineA];
  v8 = [(ICSENoteTitleView *)self noteLabel];
  [v8 setFont:v7];

  v9 = [UIFont systemFontOfSize:v5 weight:UIFontWeightRegular];
  v10 = [v9 ic_fontWithSingleLineA];
  v11 = [(ICSENoteTitleView *)self folderLabel];
  [v11 setFont:v10];

  v12 = [UIFont systemFontOfSize:v5 weight:UIFontWeightRegular];
  v13 = [v12 ic_fontWithSingleLineA];
  v14 = [(ICSENoteTitleView *)self dashLabel];
  [v14 setFont:v13];

  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v16 = [v15 ic_fontWithSingleLineA];
  v17 = [(ICSENoteTitleView *)self accountLabel];
  [v17 setFont:v16];

  v19 = +[UIColor secondaryLabelColor];
  v18 = [(ICSENoteTitleView *)self accountLabel];
  [v18 setTextColor:v19];
}

- (void)updateConstraints
{
  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    v3 = [(ICSENoteTitleView *)self defaultConstraints];
    [NSLayoutConstraint deactivateConstraints:v3];

    [(ICSENoteTitleView *)self alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    v4 = [(ICSENoteTitleView *)self alternateConstraintsForAXLargerTextSizes];
    [NSLayoutConstraint deactivateConstraints:v4];

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
  v3 = [(ICSENoteTitleView *)self noteLabel];
  v4 = [v3 text];
  v5 = [(ICSENoteTitleView *)self accountLabel];
  v8 = [v5 text];
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