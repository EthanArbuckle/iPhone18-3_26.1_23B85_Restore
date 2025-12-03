@interface RCFoldersCollectionViewCell
- (BOOL)_needsDisclosureAccessory;
- (BOOL)_shouldUseAccessibilityTextLayout;
- (NSString)folderName;
- (RCFoldersCollectionViewCell)initWithFrame:(CGRect)frame;
- (RCFoldersCollectionViewCellActionHandler)actionHandler;
- (UIImage)iconImage;
- (id)_attributedStringForRecordingsCount:(id)count;
- (id)_defaultCellAccessories;
- (id)_labelAccessoryTintColor;
- (id)_moreOptionsButtonAccessory;
- (id)accessibilityLabel;
- (id)recordingsCountString;
- (void)_clearSecondaryAttributedText;
- (void)_setRecordingsCountText:(id)text;
- (void)_setSecondaryAttributedTextWithRecordingsCount:(id)count;
- (void)_showRecordingsCountLabel;
- (void)_switchToAccessibilityTextLayout:(BOOL)layout;
- (void)_transitionSpecialAccessoryToEditMode;
- (void)configureWithFolderName:(id)name recordingsCount:(int64_t)count iconImage:(id)image UUID:(id)d folderType:(int64_t)type;
- (void)contentSizeChanged;
- (void)setDisplayMode:(int64_t)mode;
- (void)setEnabled:(BOOL)enabled;
- (void)setFolderName:(id)name;
- (void)setIconImage:(id)image;
- (void)setRecordingsCount:(int64_t)count;
- (void)updateAccessories;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation RCFoldersCollectionViewCell

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  if (enabled)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.5;
  }

  contentView = [(RCFoldersCollectionViewCell *)self contentView];
  [contentView setAlpha:v3];
}

- (void)setDisplayMode:(int64_t)mode
{
  if (self->_displayMode != mode)
  {
    self->_displayMode = mode;
    if (mode == 2)
    {
      [(RCFoldersCollectionViewCell *)self _showEditingMoreOptionsButton];
    }

    else if (mode == 1)
    {
      [(RCFoldersCollectionViewCell *)self _showRecordingsCountLabel];
    }
  }
}

- (void)setFolderName:(id)name
{
  nameCopy = name;
  contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  [contentConfiguration setText:nameCopy];

  [(RCFoldersCollectionViewCell *)self setContentConfiguration:contentConfiguration];
}

- (NSString)folderName
{
  contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  text = [contentConfiguration text];

  return text;
}

- (void)setRecordingsCount:(int64_t)count
{
  self->_recordingsCount = count;
  if ([(RCFoldersCollectionViewCell *)self displayMode]!= 2)
  {
    recordingsCountString = [(RCFoldersCollectionViewCell *)self recordingsCountString];
    [(RCFoldersCollectionViewCell *)self _setRecordingsCountText:recordingsCountString];
  }
}

- (id)recordingsCountString
{
  v2 = [NSNumber numberWithInteger:self->_recordingsCount];
  v3 = [NSNumberFormatter localizedStringFromNumber:v2 numberStyle:0];

  return v3;
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v5 = [imageCopy imageWithRenderingMode:2];

  [contentConfiguration setImage:v5];
  [(RCFoldersCollectionViewCell *)self setContentConfiguration:contentConfiguration];
}

- (UIImage)iconImage
{
  contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  image = [contentConfiguration image];

  return image;
}

- (RCFoldersCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = RCFoldersCollectionViewCell;
  v3 = [(RCFoldersCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)configureWithFolderName:(id)name recordingsCount:(int64_t)count iconImage:(id)image UUID:(id)d folderType:(int64_t)type
{
  dCopy = d;
  imageCopy = image;
  nameCopy = name;
  defaultContentConfiguration = [(RCFoldersCollectionViewCell *)self defaultContentConfiguration];
  [(RCFoldersCollectionViewCell *)self setContentConfiguration:defaultContentConfiguration];
  [(RCFoldersCollectionViewCell *)self setFolderName:nameCopy];

  [(RCFoldersCollectionViewCell *)self setRecordingsCount:count];
  [(RCFoldersCollectionViewCell *)self setIconImage:imageCopy];

  [(RCFoldersCollectionViewCell *)self setUUID:dCopy];
  [(RCFoldersCollectionViewCell *)self setFolderType:type];
  [(RCFoldersCollectionViewCell *)self updateAccessories];
}

- (void)updateAccessories
{
  _defaultCellAccessories = [(RCFoldersCollectionViewCell *)self _defaultCellAccessories];
  [(RCFoldersCollectionViewCell *)self setAccessories:_defaultCellAccessories];
}

- (id)_defaultCellAccessories
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(UICellAccessoryReorder);
  [v4 setDisplayedState:1];
  [v3 addObject:v4];
  _moreOptionsButtonAccessory = [(RCFoldersCollectionViewCell *)self _moreOptionsButtonAccessory];
  [v3 addObject:_moreOptionsButtonAccessory];
  v6 = objc_alloc_init(UICellAccessoryDelete);
  [v6 setDisplayedState:1];
  [v3 addObject:v6];
  if (![(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout])
  {
    v7 = [UICellAccessoryLabel alloc];
    recordingsCountString = [(RCFoldersCollectionViewCell *)self recordingsCountString];
    v9 = [v7 initWithText:recordingsCountString];

    [v9 setDisplayedState:2];
    _labelAccessoryTintColor = [(RCFoldersCollectionViewCell *)self _labelAccessoryTintColor];
    [(RCFoldersCollectionViewCell *)self setCurrentLabelAccessoryTintColor:_labelAccessoryTintColor];
    [v9 setTintColor:_labelAccessoryTintColor];
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
    recordingsCountString = [(RCFoldersCollectionViewCell *)self recordingsCountString];
    [(RCFoldersCollectionViewCell *)self _setSecondaryAttributedTextWithRecordingsCount:recordingsCountString];
  }
}

- (void)_transitionSpecialAccessoryToEditMode
{
  if ([(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout])
  {
    contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
    [contentConfiguration setSecondaryAttributedText:0];
    [(RCFoldersCollectionViewCell *)self setContentConfiguration:contentConfiguration];
  }
}

- (void)updateConfigurationUsingState:(id)state
{
  v20.receiver = self;
  v20.super_class = RCFoldersCollectionViewCell;
  stateCopy = state;
  [(RCFoldersCollectionViewCell *)&v20 updateConfigurationUsingState:stateCopy];
  isEditing = [stateCopy isEditing];

  if (isEditing)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(RCFoldersCollectionViewCell *)self setDisplayMode:v6];
  contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  secondaryTextProperties = [contentConfiguration secondaryTextProperties];
  [secondaryTextProperties setFont:v8];

  LODWORD(v8) = [(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout];
  textProperties = [contentConfiguration textProperties];
  v11 = textProperties;
  v12 = v8 ^ 1;
  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = 4;
  }

  [textProperties setNumberOfLines:v12];

  textProperties2 = [contentConfiguration textProperties];
  [textProperties2 setLineBreakMode:v13];

  [(RCFoldersCollectionViewCell *)self setContentConfiguration:contentConfiguration];
  _labelAccessoryTintColor = [(RCFoldersCollectionViewCell *)self _labelAccessoryTintColor];
  currentLabelAccessoryTintColor = [(RCFoldersCollectionViewCell *)self currentLabelAccessoryTintColor];
  v17 = currentLabelAccessoryTintColor | _labelAccessoryTintColor;

  currentLabelAccessoryTintColor2 = [(RCFoldersCollectionViewCell *)self currentLabelAccessoryTintColor];
  v19 = [currentLabelAccessoryTintColor2 isEqual:_labelAccessoryTintColor];

  if (v17 && (v19 & 1) == 0)
  {
    [(RCFoldersCollectionViewCell *)self updateAccessories];
  }
}

- (void)_setRecordingsCountText:(id)text
{
  textCopy = text;
  if ([(RCFoldersCollectionViewCell *)self _shouldUseAccessibilityTextLayout])
  {
    [(RCFoldersCollectionViewCell *)self _setSecondaryAttributedTextWithRecordingsCount:textCopy];
  }

  else
  {
    [(RCFoldersCollectionViewCell *)self updateAccessories];
  }
}

- (void)_switchToAccessibilityTextLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(RCFoldersCollectionViewCell *)self updateAccessories];
  recordingsCountString = [(RCFoldersCollectionViewCell *)self recordingsCountString];
  v6 = recordingsCountString;
  if (layoutCopy)
  {
    [(RCFoldersCollectionViewCell *)self _setSecondaryAttributedTextWithRecordingsCount:recordingsCountString];
  }

  else
  {
    [(RCFoldersCollectionViewCell *)self _clearSecondaryAttributedText];
  }
}

- (void)_setSecondaryAttributedTextWithRecordingsCount:(id)count
{
  countCopy = count;
  contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  v5 = [(RCFoldersCollectionViewCell *)self _attributedStringForRecordingsCount:countCopy];

  [contentConfiguration setSecondaryAttributedText:v5];
  [(RCFoldersCollectionViewCell *)self setContentConfiguration:contentConfiguration];
}

- (void)_clearSecondaryAttributedText
{
  contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  [contentConfiguration setSecondaryAttributedText:0];
  [(RCFoldersCollectionViewCell *)self setContentConfiguration:contentConfiguration];
}

- (id)_attributedStringForRecordingsCount:(id)count
{
  countCopy = count;
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
  v11 = [v8 initWithString:countCopy attributes:v10];

  return v11;
}

- (BOOL)_shouldUseAccessibilityTextLayout
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  isAccessibilityLargerTextSizeEnabled = [v2 isAccessibilityLargerTextSizeEnabled];

  return isAccessibilityLargerTextSizeEnabled;
}

- (id)_labelAccessoryTintColor
{
  contentConfiguration = [(RCFoldersCollectionViewCell *)self contentConfiguration];
  textProperties = [contentConfiguration textProperties];
  resolvedColor = [textProperties resolvedColor];

  v5 = +[UIColor labelColor];
  v6 = [resolvedColor isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = resolvedColor;
  }

  return v7;
}

- (BOOL)_needsDisclosureAccessory
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  sidebarCollectionViewNeedsDisclosureAccessory = [v2 sidebarCollectionViewNeedsDisclosureAccessory];

  return sidebarCollectionViewNeedsDisclosureAccessory;
}

- (id)accessibilityLabel
{
  configurationState = [(RCFoldersCollectionViewCell *)self configurationState];
  isEditing = [configurationState isEditing];

  if (isEditing)
  {
    folderName = [(RCFoldersCollectionViewCell *)self folderName];
    v6 = [NSString stringWithFormat:@"%@", folderName];
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"AX_NUMBER_OF_RECORDINGS_IN_FOLDER" value:&stru_100295BB8 table:0];
    folderName = [NSString localizedStringWithFormat:v8, [(RCFoldersCollectionViewCell *)self recordingsCount]];

    folderName2 = [(RCFoldersCollectionViewCell *)self folderName];
    v6 = [NSString stringWithFormat:@"%@, %@", folderName2, folderName];
  }

  return v6;
}

- (RCFoldersCollectionViewCellActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end