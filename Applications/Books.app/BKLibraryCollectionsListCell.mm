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
- (void)p_updateCellFromMetrics:(id)a3;
- (void)p_updateTextEntryFromMetrics:(id)a3;
- (void)prepareForReuse;
- (void)removeTextEntryField;
- (void)setDimmed:(BOOL)a3;
- (void)setMetrics:(id)a3;
- (void)setupTextEntryField:(id)a3;
- (void)willTransitionToState:(unint64_t)a3;
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
    v3 = [(BKLibraryCollectionsListCell *)self contentView];
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

    v22 = [(BKLibraryCollectionsListCell *)self metrics];
    [(BKLibraryCollectionsListCell *)self p_updateCellFromMetrics:v22];

    [v3 addSubview:v15];
    v44 = v17;
    [v3 addSubview:v17];
    v46 = v19;
    [v3 addSubview:v19];
    [v3 addSubview:v21];
    v42 = _NSDictionaryOfVariableBindings(@"contentsVerticalInset", &off_100A43ED8, 0);
    v43 = v15;
    v45 = v21;
    v41 = _NSDictionaryOfVariableBindings(@"imageView, textLabel, detailTextLabel, chevron", v15, v17, v19, v21, 0);
    v23 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[imageView]-[textLabel]-[detailTextLabel]-[chevron]", 0, v42, v41);
    [v3 addConstraints:v23];

    v24 = [(UIImageView *)v15 leadingAnchor];
    v25 = [v3 layoutMarginsGuide];
    v26 = [v25 leadingAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    v47[0] = v27;
    v28 = [(UIImageView *)v21 trailingAnchor];
    v29 = [v3 layoutMarginsGuide];
    v30 = [v29 trailingAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    v47[1] = v31;
    v32 = [NSArray arrayWithObjects:v47 count:2];
    [NSLayoutConstraint activateConstraints:v32];

    v33 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=contentsVerticalInset)-[imageView]-(>=contentsVerticalInset)-|", 0, v42, v41);
    [v3 addConstraints:v33];

    v34 = [NSLayoutConstraint constraintWithItem:v43 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [v3 addConstraint:v34];

    v35 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=contentsVerticalInset)-[textLabel]-(>=contentsVerticalInset)-|", 0, v42, v41);
    [v3 addConstraints:v35];

    v36 = [NSLayoutConstraint constraintWithItem:v44 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [v3 addConstraint:v36];

    v37 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=contentsVerticalInset)-[detailTextLabel]-(>=contentsVerticalInset)-|", 0, v42, v41);
    [v3 addConstraints:v37];

    v38 = [NSLayoutConstraint constraintWithItem:v46 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [v3 addConstraint:v38];

    v39 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=contentsVerticalInset)-[chevron]-(>=contentsVerticalInset)-|", 0, v42, v41);
    [v3 addConstraints:v39];

    v40 = [NSLayoutConstraint constraintWithItem:v45 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];

    [v3 addConstraint:v40];
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
  v3 = [(BKLibraryCollectionsListCell *)self textEntryField];
  if (v3)
  {
    v6 = v3;
    v4 = [(BKLibraryCollectionsListCell *)self contentView];
    v5 = [(BKLibraryCollectionsListCell *)self textEntryFieldConstraints];
    [v4 removeConstraints:v5];

    [(BKLibraryCollectionsListCell *)self setTextEntryFieldConstraints:0];
    [v6 removeFromSuperview];
    [v6 setDelegate:0];
    [(BKLibraryCollectionsListCell *)self setTextEntryField:0];
    v3 = v6;
  }
}

- (void)setDimmed:(BOOL)a3
{
  if (self->_dimmed != a3)
  {
    self->_dimmed = a3;
    v5 = [(BKLibraryCollectionsListCell *)self metrics];
    [(BKLibraryCollectionsListCell *)self p_updateCellFromMetrics:v5];
  }
}

- (void)willTransitionToState:(unint64_t)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = BKLibraryCollectionsListCell;
  [(BKLibraryCollectionsListCell *)&v6 willTransitionToState:?];
  v5 = [(BKLibraryCollectionsListCell *)self chevron];
  [v5 setHidden:(v3 & 3) != 0];
}

- (void)setupTextEntryField:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryCollectionsListCell *)self textEntryField];
  if (!v5)
  {
    v5 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(BKLibraryCollectionsListCell *)self setTextEntryField:v5];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1131413504;
    [v5 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1132068864;
    [v5 setContentCompressionResistancePriority:0 forAxis:v7];
    [v5 setKeyboardType:0];
    [v5 setReturnKeyType:9];
    [v5 setAutocapitalizationType:1];
    [v5 setAdjustsFontSizeToFitWidth:0];
    [v5 setTextAlignment:4];
    [v5 setContentVerticalAlignment:0];
    [v5 setOpaque:0];
    v8 = +[UIColor clearColor];
    [v5 setBackgroundColor:v8];

    v9 = [(BKLibraryCollectionsListCell *)self contentView];
    v10 = [(BKLibraryCollectionsListCell *)self textLabel];
    v11 = [(BKLibraryCollectionsListCell *)self metrics];
    [(BKLibraryCollectionsListCell *)self p_updateTextEntryFromMetrics:v11];

    [v9 addSubview:v5];
    v12 = [NSLayoutConstraint constraintWithItem:v5 attribute:3 relatedBy:0 toItem:v10 attribute:3 multiplier:1.0 constant:0.0];
    v17[0] = v12;
    v13 = [NSLayoutConstraint constraintWithItem:v5 attribute:4 relatedBy:0 toItem:v10 attribute:4 multiplier:1.0 constant:0.0];
    v17[1] = v13;
    v14 = [NSLayoutConstraint constraintWithItem:v5 attribute:5 relatedBy:0 toItem:v10 attribute:5 multiplier:1.0 constant:0.0];
    v17[2] = v14;
    v15 = [NSLayoutConstraint constraintWithItem:v5 attribute:6 relatedBy:0 toItem:v10 attribute:6 multiplier:1.0 constant:0.0];
    v17[3] = v15;
    v16 = [NSArray arrayWithObjects:v17 count:4];

    [v9 addConstraints:v16];
    [(BKLibraryCollectionsListCell *)self setTextEntryFieldConstraints:v16];
  }

  [v5 setDelegate:v4];
}

- (void)p_updateCellFromMetrics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v30 = v4;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v5 = [v30 tableBackgroundColor];
      [(BKLibraryCollectionsListCell *)self setBackgroundColor:v5];
    }

    v6 = [v30 tableCellSelectedBackgroundColor];

    if (v6)
    {
      v7 = objc_alloc_init(UIView);
      v8 = [v30 tableCellSelectedBackgroundColor];
      [v7 setBackgroundColor:v8];

      [(BKLibraryCollectionsListCell *)self setSelectedBackgroundView:v7];
    }

    if (self->_textLabel || self->_detailTextLabel)
    {
      if ([(BKLibraryCollectionsListCell *)self dimmed])
      {
        v9 = [v30 tableCellDimmedTextFontAttributes];
        v10 = [v9 font];

        v11 = [v30 tableCellDimmedTextFontAttributes];
        v12 = [v11 foregroundColor];

        v13 = [v30 tableCellDetailDimmedTextFontAttributes];
        v14 = [v13 font];

        v15 = [v30 tableCellDetailDimmedTextFontAttributes];
        v16 = [v15 foregroundColor];

        [v30 collectionIconDimmedAlpha];
      }

      else
      {
        v18 = [v30 tableCellNormalTextFontAttributes];
        v10 = [v18 font];

        v19 = [v30 tableCellNormalTextFontAttributes];
        v12 = [v19 foregroundColor];

        v20 = [v30 tableCellDetailNormalTextFontAttributes];
        v14 = [v20 font];

        v21 = [v30 tableCellDetailNormalTextFontAttributes];
        v16 = [v21 foregroundColor];

        v17 = 1.0;
      }

      [(UIImageView *)self->_imageView setAlpha:v17];
      [(UILabel *)self->_textLabel setFont:v10];
      [(UILabel *)self->_textLabel setTextColor:v12];
      [(UILabel *)self->_detailTextLabel setFont:v14];
      [(UILabel *)self->_detailTextLabel setTextColor:v16];
    }

    v22 = [v30 chevronFontAttributes];
    v23 = [v22 font];
    v24 = [UIImageSymbolConfiguration configurationWithFont:v23 scale:1];

    v25 = [v30 chevronName];
    v26 = [UIImage systemImageNamed:v25];
    v27 = [v26 imageWithConfiguration:v24];

    [(UIImageView *)self->_chevron setImage:v27];
    v28 = [v30 chevronFontAttributes];
    v29 = [v28 foregroundColor];
    [(UIImageView *)self->_chevron setTintColor:v29];

    v4 = v30;
  }
}

- (void)p_updateTextEntryFromMetrics:(id)a3
{
  if (a3)
  {
    if (self->_textEntryField)
    {
      v4 = a3;
      v5 = [v4 tableCellNormalTextFontAttributes];
      v6 = [v5 font];
      [(UITextField *)self->_textEntryField setFont:v6];

      v7 = [v4 tableCellNormalTextFontAttributes];
      v8 = [v7 foregroundColor];
      [(UITextField *)self->_textEntryField setTextColor:v8];

      v9 = [v4 darkAppearance];
      if ([(UITextField *)self->_textEntryField keyboardAppearance]!= v9)
      {
        [(UITextField *)self->_textEntryField setKeyboardAppearance:v9];
        textEntryField = self->_textEntryField;

        [(UITextField *)textEntryField reloadInputViews];
      }
    }
  }
}

- (void)setMetrics:(id)a3
{
  v5 = a3;
  if (self->_metrics != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_metrics, a3);
    [(BKLibraryCollectionsListCell *)self p_updateCellFromMetrics:v6];
    v5 = [(BKLibraryCollectionsListCell *)self p_updateTextEntryFromMetrics:v6];
  }

  _objc_release_x2(v5);
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
  v9 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
  v10 = [v9 bkaxIsCustomCollectionCell:self];

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
  v3 = [(BKLibraryCollectionsListCell *)&v6 accessibilityTraits];
  if ([(BKLibraryCollectionsListCell *)self dimmed]&& ([(BKLibraryCollectionsListCell *)self isEditing]& 1) == 0)
  {
    v4 = UIAccessibilityTraitNotEnabled | v3;
  }

  else
  {
    v4 = v3 & ~UIAccessibilityTraitNotEnabled;
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
    v3 = [(BKLibraryCollectionsListCell *)&v5 accessibilityDragSourceDescriptors];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
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
  v4 = [(BKLibraryCollectionsListCell *)&v12 accessibilityDropPointDescriptors];
  v5 = [v3 initWithArray:v4];

  if ([v5 count] == 3)
  {
    [v5 sortUsingComparator:&stru_100A09648];
    v6 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    v7 = [v6 bkaxIsLastCollection:self];

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
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(BKLibraryCollectionsListCell *)self isEditing];
    if (v3)
    {
      v4 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
      v5 = [v4 bkaxIsCustomCollectionCell:self];

      LOBYTE(v3) = v5;
    }
  }

  return v3;
}

- (BOOL)accessibilityActivate
{
  if ([(BKLibraryCollectionsListCell *)self isShownDefaultCollectionInEditMode])
  {
    v3 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    [v3 bkaxPerformHide:self];
  }

  else if ([(BKLibraryCollectionsListCell *)self isHiddenDefaultCollection])
  {
    v3 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    [v3 bkaxPerformShow:self];
  }

  else
  {
    if (![(BKLibraryCollectionsListCell *)self isEditing])
    {
      return 0;
    }

    v7 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    v8 = [v7 bkaxIsCustomCollectionCell:self];

    if (!v8)
    {
      return 0;
    }

    v3 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
    [v3 bkaxPerformRename:self];
  }

  v4 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
  v5 = v4 != 0;

  return v5;
}

- (id)editControl
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(BKLibraryCollectionsListCell *)self subviews];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        NSClassFromString(@"UITableViewCellEditControl");
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = self;
  v3 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
  LOBYTE(v2) = [v3 bkaxIsButton:v2];

  return v2;
}

- (BOOL)isHiddenDefaultCollection
{
  v3 = [(BKLibraryCollectionsListCell *)self dimmed];
  if (v3)
  {

    LOBYTE(v3) = [(BKLibraryCollectionsListCell *)self isEditing];
  }

  return v3;
}

- (BOOL)isShownDefaultCollectionInEditMode
{
  if ([(BKLibraryCollectionsListCell *)self dimmed])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(BKLibraryCollectionsListCell *)self isEditing];
    if (v3)
    {
      LOBYTE(v3) = [(BKLibraryCollectionsListCell *)self showsReorderControl]^ 1;
    }
  }

  return v3;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  v3 = [(BKLibraryCollectionsListCell *)self accessibilityDelegate];
  LOBYTE(v2) = [v3 bkaxDidPerformEscape:v2];

  return v2;
}

- (BKLibraryCollectionsListCellAccessibilityDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end