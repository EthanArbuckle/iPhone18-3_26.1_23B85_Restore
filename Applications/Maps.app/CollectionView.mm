@interface CollectionView
- (BOOL)_shouldTextContainerHeightMatchNewCollectionLabel;
- (BOOL)_shouldWrapText;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (CollectionView)initWithCollectionViewSize:(unint64_t)size;
- (CollectionView)initWithFrame:(CGRect)frame;
- (CollectionViewDelegate)delegate;
- (double)_imageWidth;
- (double)_verticalMargin;
- (id)_effectiveContentSizeCategory;
- (id)_effectiveTraitCollection;
- (id)_subtitleFont;
- (id)_textAttachmentSpacer;
- (id)_titleFont;
- (int64_t)_titleNumberOfLines;
- (void)_effectiveContentSizeCategoryDidChange:(id)change;
- (void)_updateConstraintConstants;
- (void)_updateConstraints;
- (void)_updateContent;
- (void)_updateFonts;
- (void)_updateNumberOfLines;
- (void)collectionImageViewButtonSelected:(id)selected;
- (void)commonInit;
- (void)dealloc;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)setAllowAccessibilityTextWrapping:(BOOL)wrapping;
- (void)setCollectionInfo:(id)info;
- (void)setCollectionViewSize:(unint64_t)size;
- (void)setDisabled:(BOOL)disabled;
- (void)setEditing:(BOOL)editing;
- (void)setMaxContentSizeCategory:(id)category;
- (void)setShowCheckmark:(BOOL)checkmark;
- (void)setShrinkFactor:(double)factor;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CollectionView

- (CollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  text = [returnCopy text];
  v6 = [text length];

  if (v6)
  {
    collectionInfo = self->_collectionInfo;
    text2 = [returnCopy text];
    [(CollectionHandlerInfo *)collectionInfo updateTitle:text2];

    [(CollectionView *)self endEditing:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionViewTextFieldDidResign:self];
  }

  return v6 != 0;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  UInteger = GEOConfigGetUInteger();
  v13 = [v11 length];
  if (v13 > UInteger)
  {
    v14 = [v11 substringWithRange:{0, UInteger}];

    [fieldCopy setText:v14];
    v11 = v14;
  }

  return v13 <= UInteger;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionViewTextFieldDidBecomeSelected:self];
}

- (id)_effectiveTraitCollection
{
  traitCollection = [(CollectionView *)self traitCollection];
  v9[0] = traitCollection;
  _effectiveContentSizeCategory = [(CollectionView *)self _effectiveContentSizeCategory];
  v5 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:_effectiveContentSizeCategory];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [UITraitCollection traitCollectionWithTraitsFromCollections:v6];

  return v7;
}

- (void)_effectiveContentSizeCategoryDidChange:(id)change
{
  category = change;
  _effectiveContentSizeCategory = [(CollectionView *)self _effectiveContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(_effectiveContentSizeCategory);
  v6 = UIContentSizeCategoryIsAccessibilityCategory(category);

  if (IsAccessibilityCategory != v6)
  {
    [(CollectionView *)self _updateNumberOfLines];
    [(CollectionView *)self _updateConstraints];
  }

  [(CollectionView *)self _updateFonts];
  [(CollectionView *)self _updateConstraintConstants];
  _effectiveContentSizeCategory2 = [(CollectionView *)self _effectiveContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(_effectiveContentSizeCategory2))
  {
  }

  else
  {
    v8 = UIContentSizeCategoryIsAccessibilityCategory(category);

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  [(CollectionView *)self _updateContent];
LABEL_7:
}

- (id)_effectiveContentSizeCategory
{
  traitCollection = [(CollectionView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  maxContentSizeCategory = [(CollectionView *)self maxContentSizeCategory];
  v6 = sub_1000903BC(preferredContentSizeCategory, 0, maxContentSizeCategory);

  return v6;
}

- (BOOL)_shouldTextContainerHeightMatchNewCollectionLabel
{
  _shouldWrapText = [(CollectionView *)self _shouldWrapText];
  if (_shouldWrapText)
  {
    LOBYTE(_shouldWrapText) = [(CollectionHandlerInfo *)self->_collectionInfo handlerType]== 1;
  }

  return _shouldWrapText;
}

- (BOOL)_shouldWrapText
{
  if (!self->_allowAccessibilityTextWrapping)
  {
    return 0;
  }

  _effectiveContentSizeCategory = [(CollectionView *)self _effectiveContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(_effectiveContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)_updateNumberOfLines
{
  [(UILabel *)self->_titleLabel setNumberOfLines:[(CollectionView *)self _titleNumberOfLines]];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:[(CollectionView *)self _subtitleNumberOfLines]];
  _titleNumberOfLines = [(CollectionView *)self _titleNumberOfLines];
  newCollectionLabel = self->_newCollectionLabel;

  [(MapsThemeLabel *)newCollectionLabel setNumberOfLines:_titleNumberOfLines];
}

- (void)_updateFonts
{
  _titleFont = [(CollectionView *)self _titleFont];
  [(UITextField *)self->_titleTextField setFont:_titleFont];
  [(UILabel *)self->_titleLabel setFont:_titleFont];
  _subtitleFont = [(CollectionView *)self _subtitleFont];
  [(UILabel *)self->_subtitleLabel setFont:_subtitleFont];

  [(MapsThemeLabel *)self->_newCollectionLabel setFont:_titleFont];
}

- (id)_subtitleFont
{
  _effectiveTraitCollection = [(CollectionView *)self _effectiveTraitCollection];
  v3 = [UIFont system15CompatibleWithTraitCollection:_effectiveTraitCollection];

  return v3;
}

- (id)_titleFont
{
  collectionViewSize = self->_collectionViewSize;
  if (!collectionViewSize)
  {
    _effectiveTraitCollection = [(CollectionView *)self _effectiveTraitCollection];
    v4 = [UIFont system17SemiboldCompatibleWithTraitCollection:_effectiveTraitCollection];
    goto LABEL_5;
  }

  if (collectionViewSize == 1)
  {
    _effectiveTraitCollection = [(CollectionView *)self _effectiveTraitCollection];
    v4 = [UIFont system22SemiboldCompatibleWithTraitCollection:_effectiveTraitCollection];
LABEL_5:
    v5 = v4;

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (int64_t)_titleNumberOfLines
{
  if ([(CollectionView *)self _shouldWrapText])
  {
    return 0;
  }

  [(CollectionView *)self shrinkFactor];
  if (v4 == 0.0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_updateContent
{
  if (self->_textContainerHeightMatchesNewCollectionLabel != [(CollectionView *)self _shouldTextContainerHeightMatchNewCollectionLabel])
  {
    [(CollectionView *)self _updateConstraints];
  }

  collectionInfo = self->_collectionInfo;
  if (collectionInfo && [(CollectionHandlerInfo *)collectionInfo handlerType]!= 1)
  {
    if (self->_editing && [(CollectionHandlerInfo *)self->_collectionInfo canEditTitle])
    {
      if ([(UITextField *)self->_titleTextField isEditing])
      {
        subtitle = [(CollectionHandlerInfo *)self->_collectionInfo subtitle];
        [(UILabel *)self->_subtitleLabel setText:subtitle];
      }

      else
      {
        text = [(UITextField *)self->_titleTextField text];
        v24 = [text length];

        if (v24)
        {
          v25 = +[NSBundle mainBundle];
          v26 = [v25 localizedStringForKey:@"[Collection] Tap to edit title" value:@"localized string not found" table:0];
          [(UILabel *)self->_subtitleLabel setText:v26];
        }

        else
        {
          [(UILabel *)self->_subtitleLabel setText:&stru_1016631F0];
        }
      }

      selectedObjectSet = [(CollectionEditSession *)self->_editSession selectedObjectSet];
      allObjects = [selectedObjectSet allObjects];
      v29 = [allObjects count];

      if (v29)
      {
        v30 = +[NSBundle mainBundle];
        v31 = [v30 localizedStringForKey:@"[Collections] subtitle" value:@"localized string not found" table:0];
        v32 = [NSString localizedStringWithFormat:v31, v29];

        [(UILabel *)self->_subtitleLabel setText:v32];
      }

      [(UITextField *)self->_titleTextField setHidden:0];
      [(UILabel *)self->_titleLabel setHidden:1];
      placeholder = [(UITextField *)self->_titleTextField placeholder];
      [(UILabel *)self->_titleLabel setText:placeholder];
    }

    else
    {
      if ([(CollectionView *)self _shouldWrapText])
      {
        title2 = objc_alloc_init(NSMutableAttributedString);
        _textAttachmentSpacer = [(CollectionView *)self _textAttachmentSpacer];
        v14 = [NSAttributedString attributedStringWithAttachment:_textAttachmentSpacer];
        [title2 appendAttributedString:v14];

        v15 = [[NSAttributedString alloc] initWithString:@" "];
        [title2 appendAttributedString:v15];

        v16 = [NSAttributedString alloc];
        title = [(CollectionHandlerInfo *)self->_collectionInfo title];
        v18 = title;
        if (title)
        {
          v19 = title;
        }

        else
        {
          v19 = &stru_1016631F0;
        }

        v20 = [v16 initWithString:v19];
        [title2 appendAttributedString:v20];

        [(UILabel *)self->_titleLabel setAttributedText:title2];
      }

      else
      {
        title2 = [(CollectionHandlerInfo *)self->_collectionInfo title];
        [(UILabel *)self->_titleLabel setText:title2];
      }

      title3 = [(CollectionHandlerInfo *)self->_collectionInfo title];
      [(UITextField *)self->_titleTextField setText:title3];

      subtitle2 = [(CollectionHandlerInfo *)self->_collectionInfo subtitle];
      [(UILabel *)self->_subtitleLabel setText:subtitle2];

      [(UITextField *)self->_titleTextField setHidden:1];
      [(UILabel *)self->_titleLabel setHidden:0];
    }

    [(MapsThemeLabel *)self->_newCollectionLabel setText:0];
    [(UILabel *)self->_subtitleLabel setHidden:0];
    [(MapsThemeLabel *)self->_newCollectionLabel setHidden:1];
  }

  else
  {
    [(UITextField *)self->_titleTextField setText:0];
    [(UILabel *)self->_titleLabel setText:0];
    [(UILabel *)self->_subtitleLabel setText:0];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"[Guide] New guide cell" value:@"localized string not found" table:0];

    if ([(CollectionView *)self _shouldWrapText])
    {
      v6 = objc_alloc_init(NSMutableAttributedString);
      _textAttachmentSpacer2 = [(CollectionView *)self _textAttachmentSpacer];
      v8 = [NSAttributedString attributedStringWithAttachment:_textAttachmentSpacer2];
      [v6 appendAttributedString:v8];

      v9 = [[NSAttributedString alloc] initWithString:@" "];
      [v6 appendAttributedString:v9];

      v10 = [[NSAttributedString alloc] initWithString:v5];
      [v6 appendAttributedString:v10];

      [(MapsThemeLabel *)self->_newCollectionLabel setAttributedText:v6];
    }

    else
    {
      [(MapsThemeLabel *)self->_newCollectionLabel setText:v5];
    }

    [(UITextField *)self->_titleTextField setHidden:1];
    [(UILabel *)self->_titleLabel setHidden:1];
    [(UILabel *)self->_subtitleLabel setHidden:1];
    [(MapsThemeLabel *)self->_newCollectionLabel setHidden:0];
  }

  badgeImage = [(CollectionHandlerInfo *)self->_collectionInfo badgeImage];
  [(UIImageView *)self->_badgeImageView setImage:badgeImage];

  badgeImage2 = [(CollectionHandlerInfo *)self->_collectionInfo badgeImage];
  [(UIImageView *)self->_badgeImageView setHidden:badgeImage2 == 0];

  [(CollectionView *)self _updateConstraintConstants];
}

- (id)_textAttachmentSpacer
{
  v3 = objc_alloc_init(NSTextAttachment);
  [(CollectionView *)self _imageWidth];
  [v3 setBounds:{0.0, 0.0, v4, 0.0}];

  return v3;
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  controllerCopy = controller;
  v7 = [infoCopy objectForKeyedSubscript:UIImagePickerControllerEditedImage];
  if (!v7)
  {
    v7 = [infoCopy objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
  }

  [(CollectionHandlerInfo *)self->_collectionInfo updateImage:v7];
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)collectionImageViewButtonSelected:(id)selected
{
  if (self->_editing)
  {
    v7 = objc_alloc_init(UIImagePickerController);
    [v7 setDelegate:self];
    [v7 setAllowsEditing:1];
    [v7 setSourceType:0];
    window = [(CollectionView *)self window];
    rootViewController = [window rootViewController];
    [rootViewController _maps_topMostPresentViewController:v7 animated:1 completion:0];

    [GEOAPPortal captureUserAction:2074 target:252 value:0];
  }
}

- (void)_updateConstraintConstants
{
  [(CollectionView *)self _imageWidth];
  v4 = v3;
  [(CollectionView *)self _verticalMargin];
  v5 = 1.0 - self->_shrinkFactor;
  v7 = v6 + -11.0;
  [(NSLayoutConstraint *)self->_topConstraint setConstant:v5 * (v6 + -11.0) + 11.0];
  [(NSLayoutConstraint *)self->_bottomConstraint setConstant:-(v5 * v7 + 11.0)];
  [(NSLayoutConstraint *)self->_imageHeight setConstant:(1.0 - self->_shrinkFactor) * (v4 + -48.0) + 48.0];
  v8 = -50.0;
  if (!self->_showCheckmark)
  {
    v8 = -12.0;
  }

  [(NSLayoutConstraint *)self->_textContainerTrailingConstraint setConstant:v8];
  _shouldWrapText = [(CollectionView *)self _shouldWrapText];
  v10 = 30.0;
  if (_shouldWrapText)
  {
    v10 = 20.0;
  }

  badgeHeightConstraint = self->_badgeHeightConstraint;

  [(NSLayoutConstraint *)badgeHeightConstraint setConstant:v10];
}

- (void)_updateConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  constraints = self->_constraints;
  self->_constraints = 0;

  self->_textContainerHeightMatchesNewCollectionLabel = [(CollectionView *)self _shouldTextContainerHeightMatchNewCollectionLabel];
  v132 = +[NSMutableArray array];
  heightAnchor = [(CollectionImageView *)self->_imageView heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:0.0];
  imageHeight = self->_imageHeight;
  self->_imageHeight = v5;

  heightAnchor2 = [(UIImageView *)self->_badgeImageView heightAnchor];
  v8 = [heightAnchor2 constraintEqualToConstant:0.0];
  badgeHeightConstraint = self->_badgeHeightConstraint;
  self->_badgeHeightConstraint = v8;

  trailingAnchor = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  trailingAnchor2 = [(CollectionView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  textContainerTrailingConstraint = self->_textContainerTrailingConstraint;
  self->_textContainerTrailingConstraint = v12;

  _subtitleFont = [(CollectionView *)self _subtitleFont];
  _subtitleFont2 = [(CollectionView *)self _subtitleFont];
  [_subtitleFont2 lineHeight];
  [_subtitleFont _scaledValueForValue:1 useLanguageAwareScaling:?];
  v17 = v16;

  v137[0] = self->_imageHeight;
  topAnchor = [(UITextField *)self->_titleTextField topAnchor];
  topAnchor2 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
  v122 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v137[1] = v122;
  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor4 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
  v117 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v137[2] = v117;
  firstBaselineAnchor = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v114 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:v17];
  v137[3] = v114;
  centerYAnchor = [(UIImageView *)self->_imageCheckmarkView centerYAnchor];
  centerYAnchor2 = [(CollectionView *)self centerYAnchor];
  v111 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v137[4] = v111;
  heightAnchor3 = [(UIImageView *)self->_imageCheckmarkView heightAnchor];
  v109 = [heightAnchor3 constraintEqualToConstant:20.0];
  v18 = self->_badgeHeightConstraint;
  v137[5] = v109;
  v137[6] = v18;
  bottomAnchor = [(UIImageView *)self->_badgeImageView bottomAnchor];
  bottomAnchor2 = [(CollectionImageView *)self->_imageView bottomAnchor];
  v106 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
  v19 = self->_textContainerTrailingConstraint;
  v137[7] = v106;
  v137[8] = v19;
  leadingAnchor = [(CollectionImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(CollectionView *)self leadingAnchor];
  v103 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v137[9] = v103;
  widthAnchor = [(CollectionImageView *)self->_imageView widthAnchor];
  heightAnchor4 = [(CollectionImageView *)self->_imageView heightAnchor];
  v100 = [widthAnchor constraintEqualToAnchor:heightAnchor4];
  v137[10] = v100;
  leadingAnchor3 = [(UITextField *)self->_titleTextField leadingAnchor];
  leadingAnchor4 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
  v97 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v137[11] = v97;
  trailingAnchor3 = [(UITextField *)self->_titleTextField trailingAnchor];
  trailingAnchor4 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v94 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v137[12] = v94;
  leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor6 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
  v91 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v137[13] = v91;
  trailingAnchor5 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor6 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v88 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v137[14] = v88;
  leadingAnchor7 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor8 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
  v85 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v137[15] = v85;
  trailingAnchor7 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  trailingAnchor8 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v82 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v137[16] = v82;
  leadingAnchor9 = [(MapsThemeLabel *)self->_newCollectionLabel leadingAnchor];
  leadingAnchor10 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
  v79 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v137[17] = v79;
  trailingAnchor9 = [(MapsThemeLabel *)self->_newCollectionLabel trailingAnchor];
  trailingAnchor10 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v76 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v137[18] = v76;
  trailingAnchor11 = [(UIImageView *)self->_imageCheckmarkView trailingAnchor];
  trailingAnchor12 = [(CollectionView *)self trailingAnchor];
  v73 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-16.0];
  v137[19] = v73;
  widthAnchor2 = [(UIImageView *)self->_imageCheckmarkView widthAnchor];
  v21 = [widthAnchor2 constraintEqualToConstant:20.0];
  v137[20] = v21;
  widthAnchor3 = [(UIImageView *)self->_badgeImageView widthAnchor];
  heightAnchor5 = [(UIImageView *)self->_badgeImageView heightAnchor];
  v24 = [widthAnchor3 constraintEqualToAnchor:heightAnchor5];
  v137[21] = v24;
  trailingAnchor13 = [(UIImageView *)self->_badgeImageView trailingAnchor];
  trailingAnchor14 = [(CollectionImageView *)self->_imageView trailingAnchor];
  v27 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14 constant:4.0];
  v137[22] = v27;
  v28 = [NSArray arrayWithObjects:v137 count:23];
  [v132 addObjectsFromArray:v28];

  if ([(CollectionView *)self _shouldWrapText])
  {
    handlerType = [(CollectionHandlerInfo *)self->_collectionInfo handlerType];
    bottomAnchor3 = [(CollectionImageView *)self->_imageView bottomAnchor];
    v131 = bottomAnchor3;
    if (handlerType == 1)
    {
      firstBaselineAnchor2 = [(MapsThemeLabel *)self->_newCollectionLabel firstBaselineAnchor];
      v125 = [bottomAnchor3 constraintEqualToAnchor:?];
      v136[0] = v125;
      topAnchor5 = [(MapsThemeLabel *)self->_newCollectionLabel topAnchor];
      topAnchor6 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
      v33 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v136[1] = v33;
      bottomAnchor4 = [(MapsThemeLabel *)self->_newCollectionLabel bottomAnchor];
      bottomAnchor5 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
      v36 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v136[2] = v36;
      v37 = v136;
    }

    else
    {
      firstBaselineAnchor2 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
      v125 = [bottomAnchor3 constraintEqualToAnchor:?];
      v135[0] = v125;
      topAnchor5 = [(UILabel *)self->_subtitleLabel bottomAnchor];
      topAnchor6 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
      v33 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v135[1] = v33;
      bottomAnchor4 = [(MapsThemeLabel *)self->_newCollectionLabel centerYAnchor];
      bottomAnchor5 = [(UILayoutGuide *)self->_textContainerLayoutGuide centerYAnchor];
      v36 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v135[2] = v36;
      v37 = v135;
    }

    v59 = [NSArray arrayWithObjects:v37 count:3];
    [v132 addObjectsFromArray:v59];

    topAnchor7 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
    topAnchor8 = [(CollectionView *)self topAnchor];
    v62 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    topConstraint = self->_topConstraint;
    self->_topConstraint = v62;

    bottomAnchor6 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
    bottomAnchor7 = [(CollectionView *)self bottomAnchor];
    v55 = &qword_101212000;
    LODWORD(v66) = 1144733696;
    v67 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:0.0 priority:v66];
    bottomConstraint = self->_bottomConstraint;
    self->_bottomConstraint = v67;

    v57 = v132;
    leadingAnchor11 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
    leadingAnchor12 = [(CollectionView *)self leadingAnchor];
    v56 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:16.0];
    v69 = self->_topConstraint;
    v134[0] = v56;
    v134[1] = v69;
    v134[2] = self->_bottomConstraint;
    bottomAnchor10 = [NSArray arrayWithObjects:v134 count:3];
    [v132 addObjectsFromArray:bottomAnchor10];
  }

  else
  {
    topAnchor9 = [(CollectionImageView *)self->_imageView topAnchor];
    topAnchor10 = [(CollectionView *)self topAnchor];
    v40 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v41 = self->_topConstraint;
    self->_topConstraint = v40;

    bottomAnchor8 = [(CollectionImageView *)self->_imageView bottomAnchor];
    bottomAnchor9 = [(CollectionView *)self bottomAnchor];
    v44 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v45 = self->_bottomConstraint;
    self->_bottomConstraint = v44;

    v46 = self->_bottomConstraint;
    v133[0] = self->_topConstraint;
    v133[1] = v46;
    centerYAnchor3 = [(UILayoutGuide *)self->_textContainerLayoutGuide centerYAnchor];
    centerYAnchor4 = [(CollectionImageView *)self->_imageView centerYAnchor];
    v126 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v133[2] = v126;
    bottomAnchor10 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    bottomAnchor11 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
    v121 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    v133[3] = v121;
    centerYAnchor5 = [(MapsThemeLabel *)self->_newCollectionLabel centerYAnchor];
    centerYAnchor6 = [(UILayoutGuide *)self->_textContainerLayoutGuide centerYAnchor];
    v49 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v133[4] = v49;
    leadingAnchor13 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
    trailingAnchor15 = [(CollectionImageView *)self->_imageView trailingAnchor];
    v52 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor15 constant:12.0];
    v133[5] = v52;
    v53 = [NSArray arrayWithObjects:v133 count:6];
    [v132 addObjectsFromArray:v53];

    leadingAnchor11 = centerYAnchor3;
    v55 = &qword_101212000;

    v56 = v126;
    v57 = v132;
    leadingAnchor12 = centerYAnchor4;
  }

  LODWORD(v70) = *(v55 + 825);
  [(NSLayoutConstraint *)self->_bottomConstraint setPriority:v70];
  v71 = [v57 copy];
  v72 = self->_constraints;
  self->_constraints = v71;

  [(CollectionView *)self _updateConstraintConstants];
  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)setAllowAccessibilityTextWrapping:(BOOL)wrapping
{
  if (self->_allowAccessibilityTextWrapping != wrapping)
  {
    self->_allowAccessibilityTextWrapping = wrapping;
    _effectiveContentSizeCategory = [(CollectionView *)self _effectiveContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(_effectiveContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [(CollectionView *)self _updateNumberOfLines];
      [(CollectionView *)self _updateConstraints];

      [(CollectionView *)self _updateContent];
    }
  }
}

- (void)setMaxContentSizeCategory:(id)category
{
  categoryCopy = category;
  if (self->_maxContentSizeCategory != categoryCopy)
  {
    v9 = categoryCopy;
    _effectiveContentSizeCategory = [(CollectionView *)self _effectiveContentSizeCategory];
    objc_storeStrong(&self->_maxContentSizeCategory, category);
    _effectiveContentSizeCategory2 = [(CollectionView *)self _effectiveContentSizeCategory];
    v8 = sub_10008FB5C(_effectiveContentSizeCategory2, _effectiveContentSizeCategory);

    if (v8)
    {
      [(CollectionView *)self _effectiveContentSizeCategoryDidChange:_effectiveContentSizeCategory];
    }

    categoryCopy = v9;
  }
}

- (void)setCollectionViewSize:(unint64_t)size
{
  if (self->_collectionViewSize != size)
  {
    self->_collectionViewSize = size;
    [(CollectionView *)self _updateFonts];
    [(CollectionView *)self _updateNumberOfLines];

    [(CollectionView *)self _updateConstraintConstants];
  }
}

- (void)setShrinkFactor:(double)factor
{
  v4 = fmin(fmax(factor, 0.0), 1.0);
  if (self->_shrinkFactor != v4)
  {
    self->_shrinkFactor = v4;
    [(CollectionView *)self _updateConstraintConstants];

    [(CollectionView *)self _updateNumberOfLines];
  }
}

- (void)setShowCheckmark:(BOOL)checkmark
{
  if (self->_showCheckmark != checkmark)
  {
    self->_showCheckmark = checkmark;
    [(UIImageView *)self->_imageCheckmarkView setHidden:!checkmark];

    [(CollectionView *)self _updateConstraintConstants];
  }
}

- (void)setCollectionInfo:(id)info
{
  infoCopy = info;
  collectionInfo = self->_collectionInfo;
  if (collectionInfo != infoCopy)
  {
    v7 = infoCopy;
    [(CollectionHandlerInfo *)collectionInfo removeObserver:self];
    objc_storeStrong(&self->_collectionInfo, info);
    [(CollectionHandlerInfo *)self->_collectionInfo addObserver:self];
    [(CollectionImageView *)self->_imageView setCollectionInfo:v7];
    [(CollectionView *)self _updateContent];
    infoCopy = v7;
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    editingCopy = editing;
    if (([(CollectionHandlerInfo *)self->_collectionInfo canEditImage]& 1) != 0 || [(CollectionHandlerInfo *)self->_collectionInfo canEditTitle])
    {
      self->_editing = editingCopy;
      if ([(CollectionHandlerInfo *)self->_collectionInfo canEditTitle])
      {
        [(UITextField *)self->_titleTextField setUserInteractionEnabled:editingCopy];
        [(UITextField *)self->_titleTextField setEnabled:editingCopy];
      }

      [(CollectionImageView *)self->_imageView setUserInteractionEnabled:editingCopy];
      [(CollectionImageView *)self->_imageView setEditing:editingCopy];
      if (self->_editing)
      {
        collectionInfo = [(CollectionView *)self collectionInfo];
        isEmpty = [collectionInfo isEmpty];

        if (isEmpty)
        {
          objc_initWeak(&location, self);
          v7 = +[NSNotificationCenter defaultCenter];
          titleTextField = self->_titleTextField;
          v18 = _NSConcreteStackBlock;
          v19 = 3221225472;
          v20 = sub_100EBA7EC;
          v21 = &unk_10165FBE8;
          objc_copyWeak(&v22, &location);
          v9 = [v7 addObserverForName:UITextFieldTextDidChangeNotification object:titleTextField queue:0 usingBlock:&v18];
          titleObserver = self->_titleObserver;
          self->_titleObserver = v9;

          objc_destroyWeak(&v22);
          objc_destroyWeak(&location);
        }

        v11 = [(CollectionHandlerInfo *)self->_collectionInfo title:v18];
        v12 = [v11 copy];
        originalTitle = self->_originalTitle;
        self->_originalTitle = v12;
      }

      else
      {
        if (self->_titleObserver)
        {
          v14 = +[NSNotificationCenter defaultCenter];
          [v14 removeObserver:self->_titleObserver];
        }

        text = [(UITextField *)self->_titleTextField text];
        if ([text length])
        {
        }

        else
        {
          v16 = self->_originalTitle;

          if (v16)
          {
            [(CollectionHandlerInfo *)self->_collectionInfo updateTitle:self->_originalTitle];
          }
        }

        v17 = self->_originalTitle;
        self->_originalTitle = 0;
      }
    }

    [(CollectionView *)self _updateContent];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    v3 = 1.0;
    if (disabled)
    {
      v3 = 0.5;
    }

    [(CollectionView *)self setAlpha:v3];
  }
}

- (double)_verticalMargin
{
  collectionViewSize = self->_collectionViewSize;
  result = 0.0;
  if (collectionViewSize == 1)
  {
    result = 12.0;
  }

  if (!collectionViewSize)
  {
    return 16.0;
  }

  return result;
}

- (double)_imageWidth
{
  _shouldWrapText = [(CollectionView *)self _shouldWrapText];
  result = 30.0;
  if ((_shouldWrapText & 1) == 0)
  {
    collectionViewSize = self->_collectionViewSize;
    result = 72.0;
    if (collectionViewSize != 1)
    {
      result = 0.0;
    }

    if (!collectionViewSize)
    {
      return 50.0;
    }
  }

  return result;
}

- (void)dealloc
{
  if (self->_titleObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_titleObserver];
  }

  v4.receiver = self;
  v4.super_class = CollectionView;
  [(CollectionView *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = CollectionView;
  changeCopy = change;
  [(MapsThemeView *)&v10 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  maxContentSizeCategory = [(CollectionView *)self maxContentSizeCategory];
  v7 = sub_1000903BC(preferredContentSizeCategory, 0, maxContentSizeCategory);

  _effectiveContentSizeCategory = [(CollectionView *)self _effectiveContentSizeCategory];
  v9 = sub_10008FB5C(_effectiveContentSizeCategory, v7);

  if (v9)
  {
    [(CollectionView *)self _effectiveContentSizeCategoryDidChange:v7];
  }
}

- (void)commonInit
{
  [(CollectionView *)self setAccessibilityIdentifier:@"CollectionView"];
  v3 = [CollectionImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(CollectionImageView *)v3 initWithFrame:1 makeCornersRounded:CGRectZero.origin.x, y, width, height];
  [(CollectionImageView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CollectionImageView *)height setDelegate:self];
  [(CollectionImageView *)height setUserInteractionEnabled:0];
  [(CollectionView *)self addSubview:height];
  imageView = self->_imageView;
  self->_imageView = height;
  v9 = height;

  v10 = [UIImageView alloc];
  [(CollectionView *)self bounds];
  v11 = [v10 initWithFrame:?];
  [(UIImageView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v11 setClipsToBounds:1];
  [(UIImageView *)v11 _setContinuousCornerRadius:5.0];
  [(UIImageView *)v11 setHidden:1];
  [(UIImageView *)v11 setAccessibilityIdentifier:@"CollectionBadgeImage"];
  [(CollectionView *)self addSubview:v11];
  badgeImageView = self->_badgeImageView;
  self->_badgeImageView = v11;
  v13 = v11;

  v14 = objc_alloc_init(UILayoutGuide);
  [(CollectionView *)self addLayoutGuide:v14];
  textContainerLayoutGuide = self->_textContainerLayoutGuide;
  self->_textContainerLayoutGuide = v14;
  v16 = v14;

  v17 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UIImageView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v17 setContentMode:4];
  v18 = [UIImage systemImageNamed:@"checkmark"];
  [(UIImageView *)v17 setImage:v18];

  v19 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:17.0];
  [(UIImageView *)v17 setPreferredSymbolConfiguration:v19];

  theme = [(CollectionView *)self theme];
  keyColor = [theme keyColor];
  [(UIImageView *)v17 setTintColor:keyColor];

  [(UIImageView *)v17 setHidden:1];
  [(UIImageView *)v17 setAccessibilityIdentifier:@"CollectionImage"];
  [(CollectionView *)self addSubview:v17];
  imageCheckmarkView = self->_imageCheckmarkView;
  self->_imageCheckmarkView = v17;
  v23 = v17;

  v24 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UITextField *)v24 setDelegate:self];
  [(UITextField *)v24 setReturnKeyType:9];
  [(UITextField *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = +[UIColor clearColor];
  [(UITextField *)v24 setBackgroundColor:v25];

  [(UITextField *)v24 setUserInteractionEnabled:0];
  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"[Collection] Collection Name placeholder" value:@"localized string not found" table:0];
  [(UITextField *)v24 setPlaceholder:v27];

  v28 = +[UIColor labelColor];
  [(UITextField *)v24 setTextColor:v28];

  [(UITextField *)v24 setEnabled:0];
  [(UITextField *)v24 setAccessibilityIdentifier:@"CollectionTitleTextField"];
  [(UITextField *)v24 setTextAlignment:2 * ([(CollectionView *)self effectiveUserInterfaceLayoutDirection]== 1)];
  [(CollectionView *)self addSubview:v24];
  titleTextField = self->_titleTextField;
  self->_titleTextField = v24;
  v30 = v24;

  v31 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UILabel *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = +[UIColor clearColor];
  [(UILabel *)v31 setBackgroundColor:v32];

  v33 = +[UIColor labelColor];
  [(UILabel *)v31 setTextColor:v33];

  LODWORD(v34) = 1144750080;
  [(UILabel *)v31 setContentHuggingPriority:1 forAxis:v34];
  [(UILabel *)v31 setAccessibilityIdentifier:@"CollectionTitleLabel"];
  [(CollectionView *)self addSubview:v31];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v31;
  v36 = v31;

  v37 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UILabel *)v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = +[UIColor clearColor];
  [(UILabel *)v37 setBackgroundColor:v38];

  v39 = +[UIColor secondaryLabelColor];
  [(UILabel *)v37 setTextColor:v39];

  LODWORD(v40) = 1144750080;
  [(UILabel *)v37 setContentHuggingPriority:1 forAxis:v40];
  [(UILabel *)v37 setAccessibilityIdentifier:@"CollectionSubtitleLabel"];
  [(CollectionView *)self addSubview:v37];
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v37;
  v42 = v37;

  height2 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MapsThemeLabel *)height2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = +[UIColor clearColor];
  [(MapsThemeLabel *)height2 setBackgroundColor:v44];

  [(MapsThemeLabel *)height2 setTextColorProvider:&stru_1016309D0];
  [(MapsThemeLabel *)height2 setAccessibilityIdentifier:@"CollectionNewCollectionLabel"];
  [(CollectionView *)self addSubview:height2];
  newCollectionLabel = self->_newCollectionLabel;
  self->_newCollectionLabel = height2;

  [(CollectionView *)self _updateFonts];
  [(CollectionView *)self _updateNumberOfLines];
  [(CollectionView *)self _updateConstraints];

  [(CollectionView *)self _updateContent];
}

- (CollectionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CollectionView;
  v3 = [(CollectionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_collectionViewSize = 0;
    [(CollectionView *)v3 commonInit];
  }

  return v4;
}

- (CollectionView)initWithCollectionViewSize:(unint64_t)size
{
  v7.receiver = self;
  v7.super_class = CollectionView;
  v4 = [(CollectionView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_collectionViewSize = size;
    if (size == 1 && _MKPlaceCardUseSmallerFont())
    {
      v5->_collectionViewSize = 0;
    }

    v5->_allowAccessibilityTextWrapping = 1;
    [(CollectionView *)v5 commonInit];
  }

  return v5;
}

@end