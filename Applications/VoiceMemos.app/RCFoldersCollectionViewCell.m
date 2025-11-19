@interface RCFoldersCollectionViewCell
- (BOOL)_needsDisclosureAccessory;
- (BOOL)_shouldUseAccessibilityTextLayout;
- (NSString)folderName;
- (RCFoldersCollectionViewCell)initWithFrame:(CGRect)a3;
- (RCFoldersCollectionViewCellActionHandler)actionHandler;
- (UIImage)iconImage;
- (id)_attributedStringForRecordingsCount:(id)a3;
- (id)_defaultCellAccessories;
- (id)_labelAccessoryTintColor;
- (id)_moreOptionsButtonAccessory;
- (id)accessibilityLabel;
- (id)recordingsCountString;
- (void)_clearSecondaryAttributedText;
- (void)_setRecordingsCountText:(id)a3;
- (void)_setSecondaryAttributedTextWithRecordingsCount:(id)a3;
- (void)_showRecordingsCountLabel;
- (void)_switchToAccessibilityTextLayout:(BOOL)a3;
- (void)_transitionSpecialAccessoryToEditMode;
- (void)configureWithFolderName:(id)a3 recordingsCount:(int64_t)a4 iconImage:(id)a5 UUID:(id)a6 folderType:(int64_t)a7;
- (void)contentSizeChanged;
- (void)setDisplayMode:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFolderName:(id)a3;
- (void)setIconImage:(id)a3;
- (void)setRecordingsCount:(int64_t)a3;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation RCFoldersCollectionViewCell

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  if (a3)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.5;
  }

  v4 = [(RCFoldersCollectionViewCell *)self contentView];
  [v4 setAlpha:v3];
}

- (void)setDisplayMode:(int64_t)a3
{
  if (self->_displayMode != a3)
  {
    self->_displayMode = a3;
    if (a3 == 2)
    {
      [(RCFoldersCollectionViewCell *)self _showEditingMoreOptionsButton];
    }

    else if (a3 == 1)
    {
      [(RCFoldersCollectionViewCell *)self _showRecordingsCountLabel];
    }
  }
}

- (void)setFolderName:(id)a3
{
  v4 = a3;
  v5 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  [v5 setText:v4];

  [(RCFoldersCollectionViewCell *)self setContentConfiguration:v5];
}

- (NSString)folderName
{
  v2 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v3 = [v2 text];

  return v3;
}

- (void)setRecordingsCount:(int64_t)a3
{
  self->_recordingsCount = a3;
  if ([(RCFoldersCollectionViewCell *)self displayMode]!= 2)
  {
    v4 = [(RCFoldersCollectionViewCell *)self recordingsCountString];
    [(RCFoldersCollectionViewCell *)self _setRecordingsCountText:v4];
  }
}

- (id)recordingsCountString
{
  v2 = [NSNumber numberWithInteger:self->_recordingsCount];
  v3 = [NSNumberFormatter localizedStringFromNumber:v2 numberStyle:0];

  return v3;
}

- (void)setIconImage:(id)a3
{
  v4 = a3;
  v6 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v5 = [v4 imageWithRenderingMode:2];

  [v6 setImage:v5];
  [(RCFoldersCollectionViewCell *)self setContentConfiguration:v6];
}

- (UIImage)iconImage
{
  v2 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v3 = [v2 image];

  return v3;
}

- (RCFoldersCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = RCFoldersCollectionViewCell;
  v3 = [(RCFoldersCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_enabled = 1;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"_boldTextStatusChanged" name:UIAccessibilityBoldTextStatusDidChangeNotification object:0];
  }

  return v4;
}

- (void)configureWithFolderName:(id)a3 recordingsCount:(int64_t)a4 iconImage:(id)a5 UUID:(id)a6 folderType:(int64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [(RCFoldersCollectionViewCell *)self defaultContentConfiguration];
  [(RCFoldersCollectionViewCell *)self setContentConfiguration:v15];
  [(RCFoldersCollectionViewCell *)self setFolderName:v14];

  [(RCFoldersCollectionViewCell *)self setRecordingsCount:a4];
  [(RCFoldersCollectionViewCell *)self setIconImage:v13];

  [(RCFoldersCollectionViewCell *)self setUUID:v12];
  [(RCFoldersCollectionViewCell *)self setFolderType:a7];
  [(RCFoldersCollectionViewCell *)self updateAccessories];
}

- (void)updateAccessories
{
  v3 = [(RCFoldersCollectionViewCell *)self _defaultCellAccessories];
  [(RCFoldersCollectionViewCell *)self setAccessories:v3];
}

- (id)_defaultCellAccessories
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(UICellAccessoryReorder);
  [v4 setDisplayedState:1];
  [v3 addObject:v4];
  v5 = [(RCFoldersCollectionViewCell *)self _moreOptionsButtonAccessory];
  [v3 addObject:v5];
  v6 = objc_alloc_init(UICellAccessoryDelete);
  [v6 setDisplayedState:1];
  [v3 addObject:v6];
  if (![(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout])
  {
    v7 = [UICellAccessoryLabel alloc];
    v8 = [(RCFoldersCollectionViewCell *)self recordingsCountString];
    v9 = [v7 initWithText:v8];

    [v9 setDisplayedState:2];
    v10 = [(RCFoldersCollectionViewCell *)self _labelAccessoryTintColor];
    [(RCFoldersCollectionViewCell *)self setCurrentLabelAccessoryTintColor:v10];
    [v9 setTintColor:v10];
    [v3 addObject:v9];
  }

  if ([(RCFoldersCollectionViewCell *)self _needsDisclosureAccessory])
  {
    v11 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    [v11 setDisplayedState:2];
    [v3 addObject:v11];
  }

  v12 = [v3 copy];

  return v12;
}

- (id)_moreOptionsButtonAccessory
{
  v3 = [UIButton buttonWithType:0];
  v4 = [UIImage systemImageNamed:@"ellipsis.circle"];
  [v3 setImage:v4 forState:0];

  [v3 setShowsMenuAsPrimaryAction:1];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"AX_MORE_ACTIONS" value:&stru_100295BB8 table:0];
  [v3 setAccessibilityLabel:v6];

  v7 = +[UIColor systemBlueColor];
  [v3 setTintColor:v7];

  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100044B44;
  v14 = &unk_10028AAC8;
  objc_copyWeak(&v15, &location);
  [v3 _setMenuProvider:&v11];
  v8 = [UICellAccessoryCustomView alloc];
  v9 = [v8 initWithCustomView:v3 placement:{1, v11, v12, v13, v14}];
  [v9 setDisplayedState:1];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

- (void)contentSizeChanged
{
  if ([(RCFoldersCollectionViewCell *)self displayMode]== 1)
  {
    [(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout];

    [(RCFoldersCollectionViewCell *)self _switchToAccessibilityTextLayout:?];
  }

  else if ([(RCFoldersCollectionViewCell *)self displayMode]== 2)
  {

    [(RCFoldersCollectionViewCell *)self _showEditingMoreOptionsButton];
  }
}

- (void)_showRecordingsCountLabel
{
  if ([(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout])
  {
    v3 = [(RCFoldersCollectionViewCell *)self recordingsCountString];
    [(RCFoldersCollectionViewCell *)self _setSecondaryAttributedTextWithRecordingsCount:v3];
  }
}

- (void)_transitionSpecialAccessoryToEditMode
{
  if ([(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout])
  {
    v3 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
    [v3 setSecondaryAttributedText:0];
    [(RCFoldersCollectionViewCell *)self setContentConfiguration:v3];
  }
}

- (void)updateConfigurationUsingState:(id)a3
{
  v20.receiver = self;
  v20.super_class = RCFoldersCollectionViewCell;
  v4 = a3;
  [(RCFoldersCollectionViewCell *)&v20 updateConfigurationUsingState:v4];
  v5 = [v4 isEditing];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(RCFoldersCollectionViewCell *)self setDisplayMode:v6];
  v7 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v9 = [v7 secondaryTextProperties];
  [v9 setFont:v8];

  LODWORD(v8) = [(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout];
  v10 = [v7 textProperties];
  v11 = v10;
  v12 = v8 ^ 1;
  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = 4;
  }

  [v10 setNumberOfLines:v12];

  v14 = [v7 textProperties];
  [v14 setLineBreakMode:v13];

  [(RCFoldersCollectionViewCell *)self setContentConfiguration:v7];
  v15 = [(RCFoldersCollectionViewCell *)self _labelAccessoryTintColor];
  v16 = [(RCFoldersCollectionViewCell *)self currentLabelAccessoryTintColor];
  v17 = v16 | v15;

  v18 = [(RCFoldersCollectionViewCell *)self currentLabelAccessoryTintColor];
  v19 = [v18 isEqual:v15];

  if (v17 && (v19 & 1) == 0)
  {
    [(RCFoldersCollectionViewCell *)self updateAccessories];
  }
}

- (void)_setRecordingsCountText:(id)a3
{
  v4 = a3;
  if ([(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout])
  {
    [(RCFoldersCollectionViewCell *)self _setSecondaryAttributedTextWithRecordingsCount:v4];
  }

  else
  {
    [(RCFoldersCollectionViewCell *)self updateAccessories];
  }
}

- (void)_switchToAccessibilityTextLayout:(BOOL)a3
{
  v3 = a3;
  [(RCFoldersCollectionViewCell *)self updateAccessories];
  v5 = [(RCFoldersCollectionViewCell *)self recordingsCountString];
  v6 = v5;
  if (v3)
  {
    [(RCFoldersCollectionViewCell *)self _setSecondaryAttributedTextWithRecordingsCount:v5];
  }

  else
  {
    [(RCFoldersCollectionViewCell *)self _clearSecondaryAttributedText];
  }
}

- (void)_setSecondaryAttributedTextWithRecordingsCount:(id)a3
{
  v4 = a3;
  v6 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v5 = [(RCFoldersCollectionViewCell *)self _attributedStringForRecordingsCount:v4];

  [v6 setSecondaryAttributedText:v5];
  [(RCFoldersCollectionViewCell *)self setContentConfiguration:v6];
}

- (void)_clearSecondaryAttributedText
{
  v3 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  [v3 setSecondaryAttributedText:0];
  [(RCFoldersCollectionViewCell *)self setContentConfiguration:v3];
}

- (id)_attributedStringForRecordingsCount:(id)a3
{
  v4 = a3;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = 0.0;
  if ([(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout])
  {
    [v5 sidebarCollectionViewCellAXHyphenationFactor];
    v6 = v7;
  }

  v8 = [NSAttributedString alloc];
  v13 = NSHyphenationFactorDocumentAttribute;
  v9 = [NSNumber numberWithDouble:v6];
  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [v8 initWithString:v4 attributes:v10];

  return v11;
}

- (BOOL)_shouldUseAccessibilityTextLayout
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 isAccessibilityLargerTextSizeEnabled];

  return v3;
}

- (id)_labelAccessoryTintColor
{
  v2 = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v3 = [v2 textProperties];
  v4 = [v3 resolvedColor];

  v5 = +[UIColor labelColor];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (BOOL)_needsDisclosureAccessory
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 sidebarCollectionViewNeedsDisclosureAccessory];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(RCFoldersCollectionViewCell *)self configurationState];
  v4 = [v3 isEditing];

  if (v4)
  {
    v5 = [(RCFoldersCollectionViewCell *)self folderName];
    v6 = [NSString stringWithFormat:@"%@", v5];
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"AX_NUMBER_OF_RECORDINGS_IN_FOLDER" value:&stru_100295BB8 table:0];
    v5 = [NSString localizedStringWithFormat:v8, [(RCFoldersCollectionViewCell *)self recordingsCount]];

    v9 = [(RCFoldersCollectionViewCell *)self folderName];
    v6 = [NSString stringWithFormat:@"%@, %@", v9, v5];
  }

  return v6;
}

- (RCFoldersCollectionViewCellActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end