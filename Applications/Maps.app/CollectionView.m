@interface CollectionView
- (BOOL)_shouldTextContainerHeightMatchNewCollectionLabel;
- (BOOL)_shouldWrapText;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CollectionView)initWithCollectionViewSize:(unint64_t)a3;
- (CollectionView)initWithFrame:(CGRect)a3;
- (CollectionViewDelegate)delegate;
- (double)_imageWidth;
- (double)_verticalMargin;
- (id)_effectiveContentSizeCategory;
- (id)_effectiveTraitCollection;
- (id)_subtitleFont;
- (id)_textAttachmentSpacer;
- (id)_titleFont;
- (int64_t)_titleNumberOfLines;
- (void)_effectiveContentSizeCategoryDidChange:(id)a3;
- (void)_updateConstraintConstants;
- (void)_updateConstraints;
- (void)_updateContent;
- (void)_updateFonts;
- (void)_updateNumberOfLines;
- (void)collectionImageViewButtonSelected:(id)a3;
- (void)commonInit;
- (void)dealloc;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)setAllowAccessibilityTextWrapping:(BOOL)a3;
- (void)setCollectionInfo:(id)a3;
- (void)setCollectionViewSize:(unint64_t)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setEditing:(BOOL)a3;
- (void)setMaxContentSizeCategory:(id)a3;
- (void)setShowCheckmark:(BOOL)a3;
- (void)setShrinkFactor:(double)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CollectionView

- (CollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [v5 length];

  if (v6)
  {
    collectionInfo = self->_collectionInfo;
    v8 = [v4 text];
    [(CollectionHandlerInfo *)collectionInfo updateTitle:v8];

    [(CollectionView *)self endEditing:1];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionViewTextFieldDidResign:self];
  }

  return v6 != 0;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = a5;
  v10 = [v8 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  UInteger = GEOConfigGetUInteger();
  v13 = [v11 length];
  if (v13 > UInteger)
  {
    v14 = [v11 substringWithRange:{0, UInteger}];

    [v8 setText:v14];
    v11 = v14;
  }

  return v13 <= UInteger;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionViewTextFieldDidBecomeSelected:self];
}

- (id)_effectiveTraitCollection
{
  v3 = [(CollectionView *)self traitCollection];
  v9[0] = v3;
  v4 = [(CollectionView *)self _effectiveContentSizeCategory];
  v5 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v4];
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [UITraitCollection traitCollectionWithTraitsFromCollections:v6];

  return v7;
}

- (void)_effectiveContentSizeCategoryDidChange:(id)a3
{
  category = a3;
  v4 = [(CollectionView *)self _effectiveContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);
  v6 = UIContentSizeCategoryIsAccessibilityCategory(category);

  if (IsAccessibilityCategory != v6)
  {
    [(CollectionView *)self _updateNumberOfLines];
    [(CollectionView *)self _updateConstraints];
  }

  [(CollectionView *)self _updateFonts];
  [(CollectionView *)self _updateConstraintConstants];
  v7 = [(CollectionView *)self _effectiveContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v7))
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
  v3 = [(CollectionView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = [(CollectionView *)self maxContentSizeCategory];
  v6 = sub_1000903BC(v4, 0, v5);

  return v6;
}

- (BOOL)_shouldTextContainerHeightMatchNewCollectionLabel
{
  v3 = [(CollectionView *)self _shouldWrapText];
  if (v3)
  {
    LOBYTE(v3) = [(CollectionHandlerInfo *)self->_collectionInfo handlerType]== 1;
  }

  return v3;
}

- (BOOL)_shouldWrapText
{
  if (!self->_allowAccessibilityTextWrapping)
  {
    return 0;
  }

  v2 = [(CollectionView *)self _effectiveContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);

  return IsAccessibilityCategory;
}

- (void)_updateNumberOfLines
{
  [(UILabel *)self->_titleLabel setNumberOfLines:[(CollectionView *)self _titleNumberOfLines]];
  [(UILabel *)self->_subtitleLabel setNumberOfLines:[(CollectionView *)self _subtitleNumberOfLines]];
  v3 = [(CollectionView *)self _titleNumberOfLines];
  newCollectionLabel = self->_newCollectionLabel;

  [(MapsThemeLabel *)newCollectionLabel setNumberOfLines:v3];
}

- (void)_updateFonts
{
  v4 = [(CollectionView *)self _titleFont];
  [(UITextField *)self->_titleTextField setFont:v4];
  [(UILabel *)self->_titleLabel setFont:v4];
  v3 = [(CollectionView *)self _subtitleFont];
  [(UILabel *)self->_subtitleLabel setFont:v3];

  [(MapsThemeLabel *)self->_newCollectionLabel setFont:v4];
}

- (id)_subtitleFont
{
  v2 = [(CollectionView *)self _effectiveTraitCollection];
  v3 = [UIFont system15CompatibleWithTraitCollection:v2];

  return v3;
}

- (id)_titleFont
{
  collectionViewSize = self->_collectionViewSize;
  if (!collectionViewSize)
  {
    v3 = [(CollectionView *)self _effectiveTraitCollection];
    v4 = [UIFont system17SemiboldCompatibleWithTraitCollection:v3];
    goto LABEL_5;
  }

  if (collectionViewSize == 1)
  {
    v3 = [(CollectionView *)self _effectiveTraitCollection];
    v4 = [UIFont system22SemiboldCompatibleWithTraitCollection:v3];
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
        v11 = [(CollectionHandlerInfo *)self->_collectionInfo subtitle];
        [(UILabel *)self->_subtitleLabel setText:v11];
      }

      else
      {
        v23 = [(UITextField *)self->_titleTextField text];
        v24 = [v23 length];

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

      v27 = [(CollectionEditSession *)self->_editSession selectedObjectSet];
      v28 = [v27 allObjects];
      v29 = [v28 count];

      if (v29)
      {
        v30 = +[NSBundle mainBundle];
        v31 = [v30 localizedStringForKey:@"[Collections] subtitle" value:@"localized string not found" table:0];
        v32 = [NSString localizedStringWithFormat:v31, v29];

        [(UILabel *)self->_subtitleLabel setText:v32];
      }

      [(UITextField *)self->_titleTextField setHidden:0];
      [(UILabel *)self->_titleLabel setHidden:1];
      v33 = [(UITextField *)self->_titleTextField placeholder];
      [(UILabel *)self->_titleLabel setText:v33];
    }

    else
    {
      if ([(CollectionView *)self _shouldWrapText])
      {
        v12 = objc_alloc_init(NSMutableAttributedString);
        v13 = [(CollectionView *)self _textAttachmentSpacer];
        v14 = [NSAttributedString attributedStringWithAttachment:v13];
        [v12 appendAttributedString:v14];

        v15 = [[NSAttributedString alloc] initWithString:@" "];
        [v12 appendAttributedString:v15];

        v16 = [NSAttributedString alloc];
        v17 = [(CollectionHandlerInfo *)self->_collectionInfo title];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = &stru_1016631F0;
        }

        v20 = [v16 initWithString:v19];
        [v12 appendAttributedString:v20];

        [(UILabel *)self->_titleLabel setAttributedText:v12];
      }

      else
      {
        v12 = [(CollectionHandlerInfo *)self->_collectionInfo title];
        [(UILabel *)self->_titleLabel setText:v12];
      }

      v21 = [(CollectionHandlerInfo *)self->_collectionInfo title];
      [(UITextField *)self->_titleTextField setText:v21];

      v22 = [(CollectionHandlerInfo *)self->_collectionInfo subtitle];
      [(UILabel *)self->_subtitleLabel setText:v22];

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
      v7 = [(CollectionView *)self _textAttachmentSpacer];
      v8 = [NSAttributedString attributedStringWithAttachment:v7];
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

  v34 = [(CollectionHandlerInfo *)self->_collectionInfo badgeImage];
  [(UIImageView *)self->_badgeImageView setImage:v34];

  v35 = [(CollectionHandlerInfo *)self->_collectionInfo badgeImage];
  [(UIImageView *)self->_badgeImageView setHidden:v35 == 0];

  [(CollectionView *)self _updateConstraintConstants];
}

- (id)_textAttachmentSpacer
{
  v3 = objc_alloc_init(NSTextAttachment);
  [(CollectionView *)self _imageWidth];
  [v3 setBounds:{0.0, 0.0, v4, 0.0}];

  return v3;
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [v8 objectForKeyedSubscript:UIImagePickerControllerEditedImage];
  if (!v7)
  {
    v7 = [v8 objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
  }

  [(CollectionHandlerInfo *)self->_collectionInfo updateImage:v7];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)collectionImageViewButtonSelected:(id)a3
{
  if (self->_editing)
  {
    v7 = objc_alloc_init(UIImagePickerController);
    [v7 setDelegate:self];
    [v7 setAllowsEditing:1];
    [v7 setSourceType:0];
    v5 = [(CollectionView *)self window];
    v6 = [v5 rootViewController];
    [v6 _maps_topMostPresentViewController:v7 animated:1 completion:0];

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
  v9 = [(CollectionView *)self _shouldWrapText];
  v10 = 30.0;
  if (v9)
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
  v4 = [(CollectionImageView *)self->_imageView heightAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];
  imageHeight = self->_imageHeight;
  self->_imageHeight = v5;

  v7 = [(UIImageView *)self->_badgeImageView heightAnchor];
  v8 = [v7 constraintEqualToConstant:0.0];
  badgeHeightConstraint = self->_badgeHeightConstraint;
  self->_badgeHeightConstraint = v8;

  v10 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v11 = [(CollectionView *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
  textContainerTrailingConstraint = self->_textContainerTrailingConstraint;
  self->_textContainerTrailingConstraint = v12;

  v14 = [(CollectionView *)self _subtitleFont];
  v15 = [(CollectionView *)self _subtitleFont];
  [v15 lineHeight];
  [v14 _scaledValueForValue:1 useLanguageAwareScaling:?];
  v17 = v16;

  v137[0] = self->_imageHeight;
  v127 = [(UITextField *)self->_titleTextField topAnchor];
  v124 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
  v122 = [v127 constraintEqualToAnchor:v124];
  v137[1] = v122;
  v120 = [(UILabel *)self->_titleLabel topAnchor];
  v118 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
  v117 = [v120 constraintEqualToAnchor:v118];
  v137[2] = v117;
  v116 = [(UILabel *)self->_subtitleLabel firstBaselineAnchor];
  v115 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v114 = [v116 constraintEqualToAnchor:v115 constant:v17];
  v137[3] = v114;
  v113 = [(UIImageView *)self->_imageCheckmarkView centerYAnchor];
  v112 = [(CollectionView *)self centerYAnchor];
  v111 = [v113 constraintEqualToAnchor:v112];
  v137[4] = v111;
  v110 = [(UIImageView *)self->_imageCheckmarkView heightAnchor];
  v109 = [v110 constraintEqualToConstant:20.0];
  v18 = self->_badgeHeightConstraint;
  v137[5] = v109;
  v137[6] = v18;
  v108 = [(UIImageView *)self->_badgeImageView bottomAnchor];
  v107 = [(CollectionImageView *)self->_imageView bottomAnchor];
  v106 = [v108 constraintEqualToAnchor:v107 constant:4.0];
  v19 = self->_textContainerTrailingConstraint;
  v137[7] = v106;
  v137[8] = v19;
  v105 = [(CollectionImageView *)self->_imageView leadingAnchor];
  v104 = [(CollectionView *)self leadingAnchor];
  v103 = [v105 constraintEqualToAnchor:v104 constant:16.0];
  v137[9] = v103;
  v102 = [(CollectionImageView *)self->_imageView widthAnchor];
  v101 = [(CollectionImageView *)self->_imageView heightAnchor];
  v100 = [v102 constraintEqualToAnchor:v101];
  v137[10] = v100;
  v99 = [(UITextField *)self->_titleTextField leadingAnchor];
  v98 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
  v97 = [v99 constraintEqualToAnchor:v98];
  v137[11] = v97;
  v96 = [(UITextField *)self->_titleTextField trailingAnchor];
  v95 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v94 = [v96 constraintEqualToAnchor:v95];
  v137[12] = v94;
  v93 = [(UILabel *)self->_titleLabel leadingAnchor];
  v92 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
  v91 = [v93 constraintEqualToAnchor:v92];
  v137[13] = v91;
  v90 = [(UILabel *)self->_titleLabel trailingAnchor];
  v89 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v88 = [v90 constraintEqualToAnchor:v89];
  v137[14] = v88;
  v87 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v86 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v137[15] = v85;
  v84 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v83 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v137[16] = v82;
  v81 = [(MapsThemeLabel *)self->_newCollectionLabel leadingAnchor];
  v80 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v137[17] = v79;
  v78 = [(MapsThemeLabel *)self->_newCollectionLabel trailingAnchor];
  v77 = [(UILayoutGuide *)self->_textContainerLayoutGuide trailingAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v137[18] = v76;
  v75 = [(UIImageView *)self->_imageCheckmarkView trailingAnchor];
  v74 = [(CollectionView *)self trailingAnchor];
  v73 = [v75 constraintEqualToAnchor:v74 constant:-16.0];
  v137[19] = v73;
  v20 = [(UIImageView *)self->_imageCheckmarkView widthAnchor];
  v21 = [v20 constraintEqualToConstant:20.0];
  v137[20] = v21;
  v22 = [(UIImageView *)self->_badgeImageView widthAnchor];
  v23 = [(UIImageView *)self->_badgeImageView heightAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v137[21] = v24;
  v25 = [(UIImageView *)self->_badgeImageView trailingAnchor];
  v26 = [(CollectionImageView *)self->_imageView trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:4.0];
  v137[22] = v27;
  v28 = [NSArray arrayWithObjects:v137 count:23];
  [v132 addObjectsFromArray:v28];

  if ([(CollectionView *)self _shouldWrapText])
  {
    v29 = [(CollectionHandlerInfo *)self->_collectionInfo handlerType];
    v30 = [(CollectionImageView *)self->_imageView bottomAnchor];
    v131 = v30;
    if (v29 == 1)
    {
      v128 = [(MapsThemeLabel *)self->_newCollectionLabel firstBaselineAnchor];
      v125 = [v30 constraintEqualToAnchor:?];
      v136[0] = v125;
      v31 = [(MapsThemeLabel *)self->_newCollectionLabel topAnchor];
      v32 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      v136[1] = v33;
      v34 = [(MapsThemeLabel *)self->_newCollectionLabel bottomAnchor];
      v35 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v136[2] = v36;
      v37 = v136;
    }

    else
    {
      v128 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
      v125 = [v30 constraintEqualToAnchor:?];
      v135[0] = v125;
      v31 = [(UILabel *)self->_subtitleLabel bottomAnchor];
      v32 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      v135[1] = v33;
      v34 = [(MapsThemeLabel *)self->_newCollectionLabel centerYAnchor];
      v35 = [(UILayoutGuide *)self->_textContainerLayoutGuide centerYAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];
      v135[2] = v36;
      v37 = v135;
    }

    v59 = [NSArray arrayWithObjects:v37 count:3];
    [v132 addObjectsFromArray:v59];

    v60 = [(UILayoutGuide *)self->_textContainerLayoutGuide topAnchor];
    v61 = [(CollectionView *)self topAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    topConstraint = self->_topConstraint;
    self->_topConstraint = v62;

    v64 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
    v65 = [(CollectionView *)self bottomAnchor];
    v55 = &qword_101212000;
    LODWORD(v66) = 1144733696;
    v67 = [v64 constraintEqualToAnchor:v65 constant:0.0 priority:v66];
    bottomConstraint = self->_bottomConstraint;
    self->_bottomConstraint = v67;

    v57 = v132;
    v54 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
    v58 = [(CollectionView *)self leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v58 constant:16.0];
    v69 = self->_topConstraint;
    v134[0] = v56;
    v134[1] = v69;
    v134[2] = self->_bottomConstraint;
    v47 = [NSArray arrayWithObjects:v134 count:3];
    [v132 addObjectsFromArray:v47];
  }

  else
  {
    v38 = [(CollectionImageView *)self->_imageView topAnchor];
    v39 = [(CollectionView *)self topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v41 = self->_topConstraint;
    self->_topConstraint = v40;

    v42 = [(CollectionImageView *)self->_imageView bottomAnchor];
    v43 = [(CollectionView *)self bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v45 = self->_bottomConstraint;
    self->_bottomConstraint = v44;

    v46 = self->_bottomConstraint;
    v133[0] = self->_topConstraint;
    v133[1] = v46;
    v123 = [(UILayoutGuide *)self->_textContainerLayoutGuide centerYAnchor];
    v129 = [(CollectionImageView *)self->_imageView centerYAnchor];
    v126 = [v123 constraintEqualToAnchor:v129];
    v133[2] = v126;
    v47 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    v130 = [(UILayoutGuide *)self->_textContainerLayoutGuide bottomAnchor];
    v121 = [v47 constraintEqualToAnchor:v130];
    v133[3] = v121;
    v119 = [(MapsThemeLabel *)self->_newCollectionLabel centerYAnchor];
    v48 = [(UILayoutGuide *)self->_textContainerLayoutGuide centerYAnchor];
    v49 = [v119 constraintEqualToAnchor:v48];
    v133[4] = v49;
    v50 = [(UILayoutGuide *)self->_textContainerLayoutGuide leadingAnchor];
    v51 = [(CollectionImageView *)self->_imageView trailingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:12.0];
    v133[5] = v52;
    v53 = [NSArray arrayWithObjects:v133 count:6];
    [v132 addObjectsFromArray:v53];

    v54 = v123;
    v55 = &qword_101212000;

    v56 = v126;
    v57 = v132;
    v58 = v129;
  }

  LODWORD(v70) = *(v55 + 825);
  [(NSLayoutConstraint *)self->_bottomConstraint setPriority:v70];
  v71 = [v57 copy];
  v72 = self->_constraints;
  self->_constraints = v71;

  [(CollectionView *)self _updateConstraintConstants];
  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)setAllowAccessibilityTextWrapping:(BOOL)a3
{
  if (self->_allowAccessibilityTextWrapping != a3)
  {
    self->_allowAccessibilityTextWrapping = a3;
    v4 = [(CollectionView *)self _effectiveContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

    if (IsAccessibilityCategory)
    {
      [(CollectionView *)self _updateNumberOfLines];
      [(CollectionView *)self _updateConstraints];

      [(CollectionView *)self _updateContent];
    }
  }
}

- (void)setMaxContentSizeCategory:(id)a3
{
  v5 = a3;
  if (self->_maxContentSizeCategory != v5)
  {
    v9 = v5;
    v6 = [(CollectionView *)self _effectiveContentSizeCategory];
    objc_storeStrong(&self->_maxContentSizeCategory, a3);
    v7 = [(CollectionView *)self _effectiveContentSizeCategory];
    v8 = sub_10008FB5C(v7, v6);

    if (v8)
    {
      [(CollectionView *)self _effectiveContentSizeCategoryDidChange:v6];
    }

    v5 = v9;
  }
}

- (void)setCollectionViewSize:(unint64_t)a3
{
  if (self->_collectionViewSize != a3)
  {
    self->_collectionViewSize = a3;
    [(CollectionView *)self _updateFonts];
    [(CollectionView *)self _updateNumberOfLines];

    [(CollectionView *)self _updateConstraintConstants];
  }
}

- (void)setShrinkFactor:(double)a3
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
  if (self->_shrinkFactor != v4)
  {
    self->_shrinkFactor = v4;
    [(CollectionView *)self _updateConstraintConstants];

    [(CollectionView *)self _updateNumberOfLines];
  }
}

- (void)setShowCheckmark:(BOOL)a3
{
  if (self->_showCheckmark != a3)
  {
    self->_showCheckmark = a3;
    [(UIImageView *)self->_imageCheckmarkView setHidden:!a3];

    [(CollectionView *)self _updateConstraintConstants];
  }
}

- (void)setCollectionInfo:(id)a3
{
  v5 = a3;
  collectionInfo = self->_collectionInfo;
  if (collectionInfo != v5)
  {
    v7 = v5;
    [(CollectionHandlerInfo *)collectionInfo removeObserver:self];
    objc_storeStrong(&self->_collectionInfo, a3);
    [(CollectionHandlerInfo *)self->_collectionInfo addObserver:self];
    [(CollectionImageView *)self->_imageView setCollectionInfo:v7];
    [(CollectionView *)self _updateContent];
    v5 = v7;
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    v3 = a3;
    if (([(CollectionHandlerInfo *)self->_collectionInfo canEditImage]& 1) != 0 || [(CollectionHandlerInfo *)self->_collectionInfo canEditTitle])
    {
      self->_editing = v3;
      if ([(CollectionHandlerInfo *)self->_collectionInfo canEditTitle])
      {
        [(UITextField *)self->_titleTextField setUserInteractionEnabled:v3];
        [(UITextField *)self->_titleTextField setEnabled:v3];
      }

      [(CollectionImageView *)self->_imageView setUserInteractionEnabled:v3];
      [(CollectionImageView *)self->_imageView setEditing:v3];
      if (self->_editing)
      {
        v5 = [(CollectionView *)self collectionInfo];
        v6 = [v5 isEmpty];

        if (v6)
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

        v15 = [(UITextField *)self->_titleTextField text];
        if ([v15 length])
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

- (void)setDisabled:(BOOL)a3
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    v3 = 1.0;
    if (a3)
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
  v3 = [(CollectionView *)self _shouldWrapText];
  result = 30.0;
  if ((v3 & 1) == 0)
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

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = CollectionView;
  v4 = a3;
  [(MapsThemeView *)&v10 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(CollectionView *)self maxContentSizeCategory];
  v7 = sub_1000903BC(v5, 0, v6);

  v8 = [(CollectionView *)self _effectiveContentSizeCategory];
  v9 = sub_10008FB5C(v8, v7);

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
  v7 = [(CollectionImageView *)v3 initWithFrame:1 makeCornersRounded:CGRectZero.origin.x, y, width, height];
  [(CollectionImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CollectionImageView *)v7 setDelegate:self];
  [(CollectionImageView *)v7 setUserInteractionEnabled:0];
  [(CollectionView *)self addSubview:v7];
  imageView = self->_imageView;
  self->_imageView = v7;
  v9 = v7;

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

  v20 = [(CollectionView *)self theme];
  v21 = [v20 keyColor];
  [(UIImageView *)v17 setTintColor:v21];

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

  v43 = [[MapsThemeLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(MapsThemeLabel *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = +[UIColor clearColor];
  [(MapsThemeLabel *)v43 setBackgroundColor:v44];

  [(MapsThemeLabel *)v43 setTextColorProvider:&stru_1016309D0];
  [(MapsThemeLabel *)v43 setAccessibilityIdentifier:@"CollectionNewCollectionLabel"];
  [(CollectionView *)self addSubview:v43];
  newCollectionLabel = self->_newCollectionLabel;
  self->_newCollectionLabel = v43;

  [(CollectionView *)self _updateFonts];
  [(CollectionView *)self _updateNumberOfLines];
  [(CollectionView *)self _updateConstraints];

  [(CollectionView *)self _updateContent];
}

- (CollectionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CollectionView;
  v3 = [(CollectionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_collectionViewSize = 0;
    [(CollectionView *)v3 commonInit];
  }

  return v4;
}

- (CollectionView)initWithCollectionViewSize:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CollectionView;
  v4 = [(CollectionView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_collectionViewSize = a3;
    if (a3 == 1 && _MKPlaceCardUseSmallerFont())
    {
      v5->_collectionViewSize = 0;
    }

    v5->_allowAccessibilityTextWrapping = 1;
    [(CollectionView *)v5 commonInit];
  }

  return v5;
}

@end