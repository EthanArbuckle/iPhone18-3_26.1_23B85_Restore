@interface BKLibraryCollectionsListCell
- (BKLibraryCollectionsListCellAccessibilityDelegate)accessibilityDelegate;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isButton;
- (BOOL)isHiddenDefaultCollection;
- (BOOL)isShownDefaultCollectionInEditMode;
- (UIImageView)chevron;
- (UIImageView)imageView;
- (UILabel)detailTextLabel;
- (UILabel)textLabel;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (id)editControl;
- (unint64_t)accessibilityTraits;
- (void)dealloc;
- (void)p_buildSubviews;
- (void)p_updateCellFromMetrics:(id)metrics;
- (void)p_updateTextEntryFromMetrics:(id)metrics;
- (void)prepareForReuse;
- (void)removeTextEntryField;
- (void)setDimmed:(BOOL)dimmed;
- (void)setMetrics:(id)metrics;
- (void)setupTextEntryField:(id)field;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation BKLibraryCollectionsListCell

- (void)dealloc
{
  [(UITextField *)self->_textEntryField setDelegate:0];
  v3.receiver = self;
  v3.super_class = BKLibraryCollectionsListCell;
  [(BKLibraryCollectionsListCell *)&v3 dealloc];
}

- (void)p_buildSubviews
{
  if (!self->_imageView)
  {
    contentView = [(BKLibraryCollectionsListCell *)self contentView];
    v4 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UIImageView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v10) = 1131413504;
    [(UILabel *)v9 setContentHuggingPriority:0 forAxis:v10];
    LODWORD(v11) = 1132068864;
    [(UILabel *)v9 setContentCompressionResistancePriority:0 forAxis:v11];
    [(UILabel *)v9 setNumberOfLines:3];
    [(UILabel *)v9 setLineBreakMode:5];
    [(UILabel *)v9 setTextAlignment:4];
    [(UILabel *)v9 setAdjustsFontSizeToFitWidth:0];
    v12 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v12 setTextAlignment:2];
    v13 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UIImageView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    imageView = self->_imageView;
    self->_imageView = v8;
    v15 = v8;

    textLabel = self->_textLabel;
    self->_textLabel = v9;
    v17 = v9;

    detailTextLabel = self->_detailTextLabel;
    self->_detailTextLabel = v12;
    v19 = v12;

    chevron = self->_chevron;
    self->_chevron = v13;
    v21 = v13;

    metrics = [(BKLibraryCollectionsListCell *)self metrics];
    [(BKLibraryCollectionsListCell *)self p_updateCellFromMetrics:metrics];

    [contentView addSubview:v15];
    v44 = v17;
    [contentView addSubview:v17];
    v46 = v19;
    [contentView addSubview:v19];
    [contentView addSubview:v21];
    v42 = _NSDictionaryOfVariableBindings(@"contentsVerticalInset", &off_100A43ED8, 0);
    v43 = v15;
    v45 = v21;
    v41 = _NSDictionaryOfVariableBindings(@"imageView, textLabel, detailTextLabel, chevron", v15, v17, v19, v21, 0);
    v23 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[imageView]-[textLabel]-[detailTextLabel]-[chevron]", 0, v42, v41);
    [contentView addConstraints:v23];

    leadingAnchor = [(UIImageView *)v15 leadingAnchor];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v27;
    trailingAnchor = [(UIImageView *)v21 trailingAnchor];
    layoutMarginsGuide2 = [contentView layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v31;
    v32 = [NSArray arrayWithObjects:v47 count:2];
    [NSLayoutConstraint activateConstraints:v32];

    v33 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=contentsVerticalInset)-[imageView]-(>=contentsVerticalInset)-|", 0, v42, v41);
    [contentView addConstraints:v33];

    v34 = [NSLayoutConstraint constraintWithItem:v43 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v34];

    v35 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=contentsVerticalInset)-[textLabel]-(>=contentsVerticalInset)-|", 0, v42, v41);
    [contentView addConstraints:v35];

    v36 = [NSLayoutConstraint constraintWithItem:v44 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v36];

    v37 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=contentsVerticalInset)-[detailTextLabel]-(>=contentsVerticalInset)-|", 0, v42, v41);
    [contentView addConstraints:v37];

    v38 = [NSLayoutConstraint constraintWithItem:v46 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
    [contentView addConstraint:v38];

    v39 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=contentsVerticalInset)-[chevron]-(>=contentsVerticalInset)-|", 0, v42, v41);
    [contentView addConstraints:v39];

    v40 = [NSLayoutConstraint constraintWithItem:v45 attribute:10 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];

    [contentView addConstraint:v40];
  }
}

- (UIImageView)imageView
{
  [(BKLibraryCollectionsListCell *)self p_buildSubviews];
  imageView = self->_imageView;

  return imageView;
}

- (UILabel)textLabel
{
  [(BKLibraryCollectionsListCell *)self p_buildSubviews];
  textLabel = self->_textLabel;

  return textLabel;
}

- (UILabel)detailTextLabel
{
  [(BKLibraryCollectionsListCell *)self p_buildSubviews];
  detailTextLabel = self->_detailTextLabel;

  return detailTextLabel;
}

- (UIImageView)chevron
{
  [(BKLibraryCollectionsListCell *)self p_buildSubviews];
  chevron = self->_chevron;

  return chevron;
}

- (void)prepareForReuse
{
  v3 = objc_autoreleasePoolPush();
  [(BKLibraryCollectionsListCell *)self removeTextEntryField];
  [(BKLibraryCollectionsListCell *)self setMetrics:0];
  [(BKLibraryCollectionsListCell *)self setEditing:0];
  [(BKLibraryCollectionsListCell *)self setSelectedBackgroundView:0];
  v4.receiver = self;
  v4.super_class = BKLibraryCollectionsListCell;
  [(BKLibraryCollectionsListCell *)&v4 prepareForReuse];
  objc_autoreleasePoolPop(v3);
}

- (void)removeTextEntryField
{
  textEntryField = [(BKLibraryCollectionsListCell *)self textEntryField];
  if (textEntryField)
  {
    v6 = textEntryField;
    contentView = [(BKLibraryCollectionsListCell *)self contentView];
    textEntryFieldConstraints = [(BKLibraryCollectionsListCell *)self textEntryFieldConstraints];
    [contentView removeConstraints:textEntryFieldConstraints];

    [(BKLibraryCollectionsListCell *)self setTextEntryFieldConstraints:0];
    [v6 removeFromSuperview];
    [v6 setDelegate:0];
    [(BKLibraryCollectionsListCell *)self setTextEntryField:0];
    textEntryField = v6;
  }
}

- (void)setDimmed:(BOOL)dimmed
{
  if (self->_dimmed != dimmed)
  {
    self->_dimmed = dimmed;
    metrics = [(BKLibraryCollectionsListCell *)self metrics];
    [(BKLibraryCollectionsListCell *)self p_updateCellFromMetrics:metrics];
  }
}

- (void)willTransitionToState:(unint64_t)state
{
  stateCopy = state;
  v6.receiver = self;
  v6.super_class = BKLibraryCollectionsListCell;
  [(BKLibraryCollectionsListCell *)&v6 willTransitionToState:?];
  chevron = [(BKLibraryCollectionsListCell *)self chevron];
  [chevron setHidden:(stateCopy & 3) != 0];
}

- (void)setupTextEntryField:(id)field
{
  fieldCopy = field;
  textEntryField = [(BKLibraryCollectionsListCell *)self textEntryField];
  if (!textEntryField)
  {
    textEntryField = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(BKLibraryCollectionsListCell *)self setTextEntryField:textEntryField];
    [textEntryField setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1131413504;
    [textEntryField setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1132068864;
    [textEntryField setContentCompressionResistancePriority:0 forAxis:v7];
    [textEntryField setKeyboardType:0];
    [textEntryField setReturnKeyType:9];
    [textEntryField setAutocapitalizationType:1];
    [textEntryField setAdjustsFontSizeToFitWidth:0];
    [textEntryField setTextAlignment:4];
    [textEntryField setContentVerticalAlignment:0];
    [textEntryField setOpaque:0];
    v8 = +[UIColor clearColor];
    [textEntryField setBackgroundColor:v8];

    contentView = [(BKLibraryCollectionsListCell *)self contentView];
    textLabel = [(BKLibraryCollectionsListCell *)self textLabel];
    metrics = [(BKLibraryCollectionsListCell *)self metrics];
    [(BKLibraryCollectionsListCell *)self p_updateTextEntryFromMetrics:metrics];

    [contentView addSubview:textEntryField];
    v12 = [NSLayoutConstraint constraintWithItem:textEntryField attribute:3 relatedBy:0 toItem:textLabel attribute:3 multiplier:1.0 constant:0.0];
    v17[0] = v12;
    v13 = [NSLayoutConstraint constraintWithItem:textEntryField attribute:4 relatedBy:0 toItem:textLabel attribute:4 multiplier:1.0 constant:0.0];
    v17[1] = v13;
    v14 = [NSLayoutConstraint constraintWithItem:textEntryField attribute:5 relatedBy:0 toItem:textLabel attribute:5 multiplier:1.0 constant:0.0];
    v17[2] = v14;
    v15 = [NSLayoutConstraint constraintWithItem:textEntryField attribute:6 relatedBy:0 toItem:textLabel attribute:6 multiplier:1.0 constant:0.0];
    v17[3] = v15;
    v16 = [NSArray arrayWithObjects:v17 count:4];

    [contentView addConstraints:v16];
    [(BKLibraryCollectionsListCell *)self setTextEntryFieldConstraints:v16];
  }

  [textEntryField setDelegate:fieldCopy];
}

- (void)p_updateCellFromMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (metricsCopy)
  {
    v30 = metricsCopy;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      tableBackgroundColor = [v30 tableBackgroundColor];
      [(BKLibraryCollectionsListCell *)self setBackgroundColor:tableBackgroundColor];
    }

    tableCellSelectedBackgroundColor = [v30 tableCellSelectedBackgroundColor];

    if (tableCellSelectedBackgroundColor)
    {
      v7 = objc_alloc_init(UIView);
      tableCellSelectedBackgroundColor2 = [v30 tableCellSelectedBackgroundColor];
      [v7 setBackgroundColor:tableCellSelectedBackgroundColor2];

      [(BKLibraryCollectionsListCell *)self setSelectedBackgroundView:v7];
    }

    if (self->_textLabel || self->_detailTextLabel)
    {
      if ([(BKLibraryCollectionsListCell *)self dimmed])
      {
        tableCellDimmedTextFontAttributes = [v30 tableCellDimmedTextFontAttributes];
        font = [tableCellDimmedTextFontAttributes font];

        tableCellDimmedTextFontAttributes2 = [v30 tableCellDimmedTextFontAttributes];
        foregroundColor = [tableCellDimmedTextFontAttributes2 foregroundColor];

        tableCellDetailDimmedTextFontAttributes = [v30 tableCellDetailDimmedTextFontAttributes];
        font2 = [tableCellDetailDimmedTextFontAttributes font];

        tableCellDetailDimmedTextFontAttributes2 = [v30 tableCellDetailDimmedTextFontAttributes];
        foregroundColor2 = [tableCellDetailDimmedTextFontAttributes2 foregroundColor];

        [v30 collectionIconDimmedAlpha];
      }

      else
      {
        tableCellNormalTextFontAttributes = [v30 tableCellNormalTextFontAttributes];
        font = [tableCellNormalTextFontAttributes font];

        tableCellNormalTextFontAttributes2 = [v30 tableCellNormalTextFontAttributes];
        foregroundColor = [tableCellNormalTextFontAttributes2 foregroundColor];

        tableCellDetailNormalTextFontAttributes = [v30 tableCellDetailNormalTextFontAttributes];
        font2 = [tableCellDetailNormalTextFontAttributes font];

        tableCellDetailNormalTextFontAttributes2 = [v30 tableCellDetailNormalTextFontAttributes];
        foregroundColor2 = [tableCellDetailNormalTextFontAttributes2 foregroundColor];

        v17 = 1.0;
      }

      [(UIImageView *)self->_imageView setAlpha:v17];
      [(UILabel *)self->_textLabel setFont:font];
      [(UILabel *)self->_textLabel setTextColor:foregroundColor];
      [(UILabel *)self->_detailTextLabel setFont:font2];
      [(UILabel *)self->_detailTextLabel setTextColor:foregroundColor2];
    }

    chevronFontAttributes = [v30 chevronFontAttributes];
    font3 = [chevronFontAttributes font];
    v24 = [UIImageSymbolConfiguration configurationWithFont:font3 scale:1];

    chevronName = [v30 chevronName];
    v26 = [UIImage systemImageNamed:chevronName];
    v27 = [v26 imageWithConfiguration:v24];

    [(UIImageView *)self->_chevron setImage:v27];
    chevronFontAttributes2 = [v30 chevronFontAttributes];
    foregroundColor3 = [chevronFontAttributes2 foregroundColor];
    [(UIImageView *)self->_chevron setTintColor:foregroundColor3];

    metricsCopy = v30;
  }
}

- (void)p_updateTextEntryFromMetrics:(id)metrics
{
  if (metrics)
  {
    if (self->_textEntryField)
    {
      metricsCopy = metrics;
      tableCellNormalTextFontAttributes = [metricsCopy tableCellNormalTextFontAttributes];
      font = [tableCellNormalTextFontAttributes font];
      [(UITextField *)self->_textEntryField setFont:font];

      tableCellNormalTextFontAttributes2 = [metricsCopy tableCellNormalTextFontAttributes];
      foregroundColor = [tableCellNormalTextFontAttributes2 foregroundColor];
      [(UITextField *)self->_textEntryField setTextColor:foregroundColor];

      darkAppearance = [metricsCopy darkAppearance];
      if ([(UITextField *)self->_textEntryField keyboardAppearance]!= darkAppearance)
      {
        [(UITextField *)self->_textEntryField setKeyboardAppearance:darkAppearance];
        textEntryField = self->_textEntryField;

        [(UITextField *)textEntryField reloadInputViews];
      }
    }
  }
}

- (void)setMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_metrics != metricsCopy)
  {
    v6 = metricsCopy;
    objc_storeStrong(&self->_metrics, metrics);
    [(BKLibraryCollectionsListCell *)self p_updateCellFromMetrics:v6];
    metricsCopy = [(BKLibraryCollectionsListCell *)self p_updateTextEntryFromMetrics:v6];
  }

  _objc_release_x2(metricsCopy);
}

- (id)accessibilityValue
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(BKLibraryCollectionsListCell *)self isHiddenDefaultCollection])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Hidden" value:&stru_100A30A68 table:0];
    [v3 addObject:v5];
  }

  if ([v3 count])
  {
    v6 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityHint
{
  v3 = objc_alloc_init(NSMutableArray);
  if (-[BKLibraryCollectionsListCell isEditing](self, "isEditing") && (-[BKLibraryCollectionsListCell accessibilityDelegate](self, "accessibilityDelegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 bkaxIsCustomCollectionCell:self], v4, (v5 & 1) != 0))
  {
    v6 = @"Double tap to rename";
  }

  else if ([(BKLibraryCollectionsListCell *)self isHiddenDefaultCollection])
  {
    v6 = @"Double tap to show";
  }

  else
  {
    if (![(BKLibraryCollectionsListCell *)self isShownDefaultCollectionInEditMode])
    {
      goto LABEL_9;
    }

    v6 = @"Double tap to hide";
  }

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:&stru_100A30A68 table:0];
  [v3 addObject:v8];

LABEL_9:
  accessibilityDelegate = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
  v10 = [accessibilityDelegate bkaxIsCustomCollectionCell:self];

  if (v10)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Double tap and hold value:then drag to rearrange" table:{&stru_100A30A68, 0}];
    [v3 addObject:v12];
  }

  if ([v3 count])
  {
    v13 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = BKLibraryCollectionsListCell;
  accessibilityTraits = [(BKLibraryCollectionsListCell *)&v6 accessibilityTraits];
  if ([(BKLibraryCollectionsListCell *)self dimmed]&& ([(BKLibraryCollectionsListCell *)self isEditing]& 1) == 0)
  {
    v4 = UIAccessibilityTraitNotEnabled | accessibilityTraits;
  }

  else
  {
    v4 = accessibilityTraits & ~UIAccessibilityTraitNotEnabled;
  }

  if ([(BKLibraryCollectionsListCell *)self isButton])
  {
    return UIAccessibilityTraitButton | v4;
  }

  else
  {
    return v4 & ~UIAccessibilityTraitButton;
  }
}

- (id)accessibilityDragSourceDescriptors
{
  if ([(BKLibraryCollectionsListCell *)self showsReorderControl])
  {
    v5.receiver = self;
    v5.super_class = BKLibraryCollectionsListCell;
    accessibilityDragSourceDescriptors = [(BKLibraryCollectionsListCell *)&v5 accessibilityDragSourceDescriptors];
  }

  else
  {
    accessibilityDragSourceDescriptors = &__NSArray0__struct;
  }

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityDropPointDescriptors
{
  if (![(BKLibraryCollectionsListCell *)self showsReorderControl])
  {
    v10 = &__NSArray0__struct;
    goto LABEL_11;
  }

  v3 = [NSMutableArray alloc];
  v12.receiver = self;
  v12.super_class = BKLibraryCollectionsListCell;
  accessibilityDropPointDescriptors = [(BKLibraryCollectionsListCell *)&v12 accessibilityDropPointDescriptors];
  v5 = [v3 initWithArray:accessibilityDropPointDescriptors];

  if ([v5 count] == 3)
  {
    [v5 sortUsingComparator:&stru_100A09648];
    accessibilityDelegate = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    v7 = [accessibilityDelegate bkaxIsLastCollection:self];

    v8 = [v5 count];
    if (v7)
    {
      if (v8)
      {
        v9 = [v5 objectAtIndexedSubscript:0];
        v13 = v9;
        v10 = [NSArray arrayWithObjects:&v13 count:1];
      }

      else
      {
        v10 = &__NSArray0__struct;
      }

      goto LABEL_10;
    }

    if (v8 >= 2)
    {
      [v5 removeObjectAtIndex:1];
    }
  }

  v10 = v5;
LABEL_10:

LABEL_11:

  return v10;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  if ([(BKLibraryCollectionsListCell *)self isShownDefaultCollectionInEditMode]|| [(BKLibraryCollectionsListCell *)self isHiddenDefaultCollection])
  {
    LOBYTE(isEditing) = 1;
  }

  else
  {
    isEditing = [(BKLibraryCollectionsListCell *)self isEditing];
    if (isEditing)
    {
      accessibilityDelegate = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
      v5 = [accessibilityDelegate bkaxIsCustomCollectionCell:self];

      LOBYTE(isEditing) = v5;
    }
  }

  return isEditing;
}

- (BOOL)accessibilityActivate
{
  if ([(BKLibraryCollectionsListCell *)self isShownDefaultCollectionInEditMode])
  {
    accessibilityDelegate = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    [accessibilityDelegate bkaxPerformHide:self];
  }

  else if ([(BKLibraryCollectionsListCell *)self isHiddenDefaultCollection])
  {
    accessibilityDelegate = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    [accessibilityDelegate bkaxPerformShow:self];
  }

  else
  {
    if (![(BKLibraryCollectionsListCell *)self isEditing])
    {
      return 0;
    }

    accessibilityDelegate2 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    v8 = [accessibilityDelegate2 bkaxIsCustomCollectionCell:self];

    if (!v8)
    {
      return 0;
    }

    accessibilityDelegate = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    [accessibilityDelegate bkaxPerformRename:self];
  }

  accessibilityDelegate3 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
  v5 = accessibilityDelegate3 != 0;

  return v5;
}

- (id)editControl
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [(BKLibraryCollectionsListCell *)self subviews];
  v3 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(subviews);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        NSClassFromString(@"UITableViewCellEditControl");
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)isButton
{
  selfCopy = self;
  accessibilityDelegate = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
  LOBYTE(selfCopy) = [accessibilityDelegate bkaxIsButton:selfCopy];

  return selfCopy;
}

- (BOOL)isHiddenDefaultCollection
{
  dimmed = [(BKLibraryCollectionsListCell *)self dimmed];
  if (dimmed)
  {

    LOBYTE(dimmed) = [(BKLibraryCollectionsListCell *)self isEditing];
  }

  return dimmed;
}

- (BOOL)isShownDefaultCollectionInEditMode
{
  if ([(BKLibraryCollectionsListCell *)self dimmed])
  {
    LOBYTE(isEditing) = 0;
  }

  else
  {
    isEditing = [(BKLibraryCollectionsListCell *)self isEditing];
    if (isEditing)
    {
      LOBYTE(isEditing) = [(BKLibraryCollectionsListCell *)self showsReorderControl]^ 1;
    }
  }

  return isEditing;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  accessibilityDelegate = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
  LOBYTE(selfCopy) = [accessibilityDelegate bkaxDidPerformEscape:selfCopy];

  return selfCopy;
}

- (BKLibraryCollectionsListCellAccessibilityDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end