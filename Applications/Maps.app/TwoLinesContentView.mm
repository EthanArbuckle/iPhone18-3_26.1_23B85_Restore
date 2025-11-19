@interface TwoLinesContentView
- (TwoLinesContentView)initWithFrame:(CGRect)a3;
- (TwoLinesContentView)initWithFrame:(CGRect)a3 contentViewType:(int)a4;
- (double)_imageDimension;
- (double)_imageToTextSpacing;
- (double)_labelVerticalSpacing;
- (double)_verticalMargin;
- (id)_labelColor;
- (id)_renderAttachmentImageWithImage:(id)a3 vibrant:(BOOL)a4;
- (id)_selectedLabelColor;
- (id)_subtitleFont;
- (id)_titleFont;
- (id)_titleRegularFont;
- (void)_updateConstraintConstants;
- (void)_updateConstraints;
- (void)_updateDebugLabel;
- (void)_updateFonts;
- (void)_updateImage:(id)a3;
- (void)_updateLabelColors;
- (void)_updateNumberOfLines;
- (void)_updateViewsWithViewModel:(id)a3;
- (void)setIsParentCellSelected:(BOOL)a3;
- (void)setVibrant:(BOOL)a3;
- (void)setViewModel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)twoLinesTableViewCellModelDidUpdate:(id)a3;
@end

@implementation TwoLinesContentView

- (double)_labelVerticalSpacing
{
  v2 = sub_10000FA08(self);
  result = 2.0;
  if (v2 == 5)
  {
    return 0.0;
  }

  return result;
}

- (double)_imageToTextSpacing
{
  v2 = sub_10000FA08(self);
  result = 12.0;
  if (v2 == 5)
  {
    return 8.0;
  }

  return result;
}

- (double)_imageDimension
{
  v2 = sub_10000FA08(self);
  result = 30.0;
  if (v2 == 5)
  {
    return 24.0;
  }

  return result;
}

- (double)_verticalMargin
{
  v3 = sub_10000FA08(self);
  result = 16.0;
  if (v3 == 5)
  {
    result = 3.0;
    if (self->_contentViewType == 1)
    {
      return 4.5;
    }
  }

  return result;
}

- (void)_updateFonts
{
  v3 = [(TwoLinesContentView *)self _titleFont];
  [(UILabel *)self->_mainTitleLabel setFont:v3];

  v4 = [(TwoLinesContentView *)self _subtitleFont];
  [(UILabel *)self->_secondTitleLabel setFont:v4];

  v5 = [(TwoLinesContentView *)self _subtitleFont];
  [(UILabel *)self->_thirdTitleLabel setFont:v5];
}

- (id)_subtitleFont
{
  v3 = [(TwoLinesContentView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = +[UIFont system15];
  }

  else
  {
    v6 = [(TwoLinesContentViewModel *)self->_viewModel subtitleUsesMonospacedNumbers];
    v7 = +[UIFont system15];
    v5 = v7;
    if (v6)
    {
      v8 = [v7 _maps_fontWithMonospacedNumbers];

      v5 = v8;
    }
  }

  return v5;
}

- (id)_titleRegularFont
{
  v2 = [(TwoLinesContentView *)self traitCollection];
  [v2 userInterfaceIdiom];

  v3 = +[UIFont system17];

  return v3;
}

- (id)_titleFont
{
  v2 = [(TwoLinesContentView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system17SemiBold];
  }
  v4 = ;

  return v4;
}

- (void)_updateDebugLabel
{
  v3 = [(TwoLinesContentViewModel *)self->_viewModel debugString];

  debugLabel = self->_debugLabel;
  if (v3)
  {
    if (!debugLabel)
    {
      v5 = objc_alloc_init(UILabel);
      v6 = self->_debugLabel;
      self->_debugLabel = v5;

      [(UILabel *)self->_debugLabel setAccessibilityIdentifier:@"SearchCellDebug"];
      [(UILabel *)self->_debugLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = +[UIFont system11];
      [(UILabel *)self->_debugLabel setFont:v7];

      v8 = +[UIColor redColor];
      [(UILabel *)self->_debugLabel setTextColor:v8];

      [(UILabel *)self->_debugLabel setAlpha:0.5];
      v9 = +[UIColor clearColor];
      [(UILabel *)self->_debugLabel setBackgroundColor:v9];

      [(TwoLinesContentView *)self addSubview:self->_debugLabel];
      v10 = [(UILabel *)self->_debugLabel leadingAnchor];
      v11 = [(TwoLinesContentView *)self leadingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:10.0];
      [v12 setActive:1];

      v13 = [(UILabel *)self->_debugLabel bottomAnchor];
      v14 = [(TwoLinesContentView *)self bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:-2.0];
      [v15 setActive:1];
    }

    v17 = [(TwoLinesContentViewModel *)self->_viewModel debugString];
    [(UILabel *)self->_debugLabel setText:v17];
    v16 = v17;
  }

  else
  {
    if (!debugLabel)
    {
      return;
    }

    [(UILabel *)debugLabel removeFromSuperview];
    v16 = self->_debugLabel;
    self->_debugLabel = 0;
  }
}

- (void)twoLinesTableViewCellModelDidUpdate:(id)a3
{
  if (self->_viewModel == a3)
  {
    [(TwoLinesContentView *)self _updateViewsWithViewModel:?];
  }
}

- (void)_updateViewsWithViewModel:(id)a3
{
  v4 = a3;
  [(TwoLinesContentView *)self _updateImage:0];
  v101 = [v4 titleText];
  v99 = [v4 subtitleText];
  v102 = [v4 attributedSubtitleText];
  if (![v101 length])
  {
    goto LABEL_7;
  }

  v5 = [v4 titleHighlightRanges];
  v6 = [v5 count];

  if (v6)
  {
    contentViewType = self->_contentViewType;
    if (contentViewType)
    {
      if (contentViewType == 1)
      {
        isParentCellSelected = self->_isParentCellSelected;
        v9 = [v4 titleHighlightRanges];
        v10 = [(TwoLinesContentView *)self _titleFont];
        v11 = [(TwoLinesContentView *)self _titleFont];
        if (isParentCellSelected)
        {
          +[UIColor whiteColor];
        }

        else
        {
          +[UIColor labelColor];
        }
        v12 = ;
        v13 = [NSAttributedString attributedStringWithText:v101 highlightRanges:v9 font:v10 highlightedFont:v11 highlightedTextColor:v12];

        goto LABEL_17;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_18;
    }

    if (![v4 shouldEnableGrayscaleHighlighting] || (-[TwoLinesContentView traitCollection](self, "traitCollection"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "userInterfaceIdiom"), v17, v18 == 5))
    {
      v9 = [v4 titleHighlightRanges];
      v10 = [(TwoLinesContentView *)self _titleRegularFont];
      v11 = [(TwoLinesContentView *)self _titleFont];
      v13 = [NSAttributedString attributedStringWithText:v101 boldInRange:v9 font:v10 bold:v11];
LABEL_17:

      goto LABEL_18;
    }

    v94 = [v4 titleHighlightRanges];
    v95 = [(TwoLinesContentView *)self _titleFont];
    v96 = [(TwoLinesContentView *)self _titleFont];
    v97 = +[UIColor labelColor];
    v98 = +[UIColor secondaryLabelColor];
    v13 = [NSAttributedString attributedStringWithText:v101 highlightRanges:v94 font:v95 highlightedFont:v96 highlightedTextColor:v97 unhighlightedTextColor:v98];
  }

  else
  {
    v14 = [v4 titleTextFont];

    if (v14)
    {
      v107 = NSFontAttributeName;
      v15 = [v4 titleTextFont];
      v108 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    }

    else
    {
      v16 = 0;
    }

    v13 = [[NSMutableAttributedString alloc] initWithString:v101 attributes:v16];
  }

LABEL_18:
  if ([v102 length])
  {
    v100 = v102;
  }

  else if ([v99 length])
  {
    v34 = [v4 subtitleHighlightRanges];
    v35 = [v34 count] == 0;

    if (v35)
    {
      v100 = [[NSAttributedString alloc] initWithString:v99];
    }

    else
    {
      v36 = [v4 subtitleHighlightRanges];
      v37 = +[UIFont system15];
      v38 = +[UIFont system15Bold];
      v100 = [NSAttributedString attributedStringWithText:v99 boldInRange:v36 font:v37 bold:v38];
    }
  }

  else
  {
    v100 = 0;
  }

  v19 = [(TwoLinesContentView *)self traitCollection];
  v20 = [v19 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v20);

  if (IsAccessibilityCategory)
  {
    v22 = [NSAttributedString attributedStringWithAttachment:self->_attachment];
    v23 = [[NSMutableAttributedString alloc] initWithAttributedString:v22];
    v24 = [v4 titleText];

    if (v24)
    {
      v25 = [[NSAttributedString alloc] initWithString:@" "];
      [v23 appendAttributedString:v25];

      v26 = [NSAttributedString alloc];
      v27 = [v4 titleText];
      v28 = [v26 initWithString:v27];
      [v23 appendAttributedString:v28];
    }

    [(UIImageView *)self->_leftImageView setHidden:1];
  }

  else
  {
    [(UIImageView *)self->_leftImageView setHidden:0];
    v23 = v13;
  }

  [(UILabel *)self->_mainTitleLabel setAttributedText:v23];
  [(UILabel *)self->_secondTitleLabel setAttributedText:v100];
  -[UIView setHidden:](self->_badgeView, "setHidden:", [v4 showBadgeView] ^ 1);
  v29 = [(TwoLinesContentView *)self window];
  v30 = [v29 screen];
  v31 = v30;
  if (v30)
  {
    [v30 scale];
    v33 = v32;
  }

  else
  {
    v39 = +[UIScreen mainScreen];
    [v39 scale];
    v33 = v40;
  }

  v41 = [v4 imageShadowStyle];
  if (v41 == 1)
  {
    leftImageShadowView = self->_leftImageShadowView;
    if (!leftImageShadowView)
    {
      v44 = objc_alloc_init(UIView);
      v45 = self->_leftImageShadowView;
      self->_leftImageShadowView = v44;

      [(UIView *)self->_leftImageShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
      v46 = [(UIView *)self->_leftImageShadowView layer];
      [v46 setShadowPathIsBounds:1];

      v47 = [(UIView *)self->_leftImageShadowView layer];
      [v47 setPunchoutShadow:1];

      [(TwoLinesContentView *)self addSubview:self->_leftImageShadowView];
      LODWORD(v48) = 1148846080;
      v49 = [(UIView *)self->_leftImageShadowView _maps_constraintsEqualToEdgesOfView:self->_leftImageView priority:v48];
      v50 = [v49 allConstraints];
      [NSLayoutConstraint activateConstraints:v50];

      leftImageShadowView = self->_leftImageShadowView;
    }

    v51 = [(UIView *)leftImageShadowView layer];
    [v51 setBorderWidth:1.0 / v33];

    v52 = [UIColor colorWithRed:0.454901963 green:0.454901963 blue:0.501960814 alpha:0.200000003];
    v53 = v52;
    v54 = [v52 CGColor];
    v55 = [(UIView *)self->_leftImageShadowView layer];
    [v55 setBorderColor:v54];

    v56 = [(UIView *)self->_leftImageShadowView layer];
    [v56 setShadowOffset:{0.0, 1.0}];

    v57 = [(UIView *)self->_leftImageShadowView layer];
    [v57 setShadowRadius:5.0];

    v58 = [(UIView *)self->_leftImageShadowView layer];
    LODWORD(v59) = 1036831949;
    [v58 setShadowOpacity:v59];

    v42 = +[UIColor blackColor];
    v60 = v42;
    v61 = [v42 CGColor];
    v62 = [(UIView *)self->_leftImageShadowView layer];
    [v62 setShadowColor:v61];
  }

  else
  {
    if (v41)
    {
      goto LABEL_38;
    }

    [(UIView *)self->_leftImageShadowView removeFromSuperview];
    v42 = self->_leftImageShadowView;
    self->_leftImageShadowView = 0;
  }

LABEL_38:
  [(UIView *)self->_leftImageShadowView setHidden:[(UIImageView *)self->_leftImageView isHidden]];
  v63 = [v4 imageStyle];
  if (v63 <= 1)
  {
    if (v63)
    {
      if (v63 == 1)
      {
        v66 = [(UIImageView *)self->_leftImageView layer];
        [v66 setCornerRadius:5.0];

        v67 = [(UIView *)self->_leftImageShadowView layer];
        [v67 setCornerRadius:5.0];
      }
    }

    else
    {
      [(TwoLinesContentView *)self _imageDimension];
      v69 = v68;
      v70 = [(UIImageView *)self->_leftImageView layer];
      [v70 setCornerRadius:v69 * 0.5];

      [(TwoLinesContentView *)self _imageDimension];
      v72 = v71;
      v73 = [(UIView *)self->_leftImageShadowView layer];
      [v73 setCornerRadius:v72 * 0.5];
    }
  }

  else
  {
    switch(v63)
    {
      case 2:
        [(UIImageView *)self->_leftImageView _setContinuousCornerRadius:4.0];
        [(UIView *)self->_leftImageShadowView _setContinuousCornerRadius:4.0];
        break;
      case 3:
        [(UIImageView *)self->_leftImageView _setContinuousCornerRadius:7.0];
        [(UIView *)self->_leftImageShadowView _setContinuousCornerRadius:7.0];
        break;
      case 4:
        v64 = [(UIImageView *)self->_leftImageView layer];
        [v64 setCornerRadius:0.0];

        v65 = [(UIView *)self->_leftImageShadowView layer];
        [v65 setCornerRadius:0.0];

        break;
    }
  }

  [v4 imageSize];
  if (CGSizeZero.width != v75 || CGSizeZero.height != v74)
  {
    [v4 imageSize];
    [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:?];
    [v4 imageSize];
    [(NSLayoutConstraint *)self->_imageHeightConstraint setConstant:v76];
  }

  v77 = [v4 leftImageTintColor];

  if (v77)
  {
    v78 = [v4 leftImageTintColor];
    [(UIImageView *)self->_leftImageView setTintColor:v78];
  }

  v79 = +[UIColor clearColor];
  [(UIImageView *)self->_leftImageView setBackgroundColor:v79];

  v80 = [v4 leadingImageBackgroundColor];

  if (v80)
  {
    v81 = [v4 leadingImageBackgroundColor];
    [(UIImageView *)self->_leftImageView setBackgroundColor:v81];
  }

  v82 = self->_imageState + 1;
  self->_imageState = v82;
  objc_initWeak(&location, self);
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_10071CF64;
  v103[3] = &unk_101637BD8;
  objc_copyWeak(&v104, &location);
  v105 = v82;
  [v4 fetchImageForScreenScale:v103 withCompletionHandler:v33];
  v83 = [v4 placeContextViewModel];

  thirdTitleLabel = self->_thirdTitleLabel;
  if (v83)
  {
    [(UILabel *)thirdTitleLabel setHidden:0];
    [(UILabel *)self->_thirdTitleLabel setUserInteractionEnabled:0];
    v85 = [v4 placeContextViewModel];
    v86 = [v85 attributedString];
    [(UILabel *)self->_thirdTitleLabel setAttributedText:v86];

    v87 = [v4 placeContextViewModel];
    v88 = [v87 image];
    [(UIImageView *)self->_thirdLabelImageView setHidden:v88 == 0];

    v89 = [v4 placeContextViewModel];
    v90 = [v89 image];
    [(UIImageView *)self->_thirdLabelImageView setImage:v90];

    v91 = [v4 placeContextViewModel];
    v92 = [v91 imageTintColor];
    [(UIImageView *)self->_thirdLabelImageView setTintColor:v92];

    v93 = [v4 placeContextViewModel];
    [v93 imageContinuousCornerRadius];
    [(UIImageView *)self->_thirdLabelImageView _setContinuousCornerRadius:?];
  }

  else
  {
    [(UILabel *)thirdTitleLabel setHidden:1];
    [(UILabel *)self->_thirdTitleLabel setUserInteractionEnabled:0];
    [(UILabel *)self->_thirdTitleLabel setAttributedText:0];
    [(UIImageView *)self->_thirdLabelImageView setHidden:1];
    [(UIImageView *)self->_thirdLabelImageView setImage:0];
  }

  [(TwoLinesContentView *)self _updateDebugLabel];
  objc_destroyWeak(&v104);
  objc_destroyWeak(&location);
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v10 = v5;
    v6 = [(TwoLinesContentViewModel *)v5 shouldCenterImage];
    v7 = [(TwoLinesContentViewModel *)self->_viewModel shouldCenterImage];
    v8 = [(TwoLinesContentViewModel *)self->_viewModel observers];
    [v8 unregisterObserver:self];

    objc_storeStrong(&self->_viewModel, a3);
    v9 = [(TwoLinesContentViewModel *)self->_viewModel observers];
    [v9 registerObserver:self];

    if (v6 != v7)
    {
      [(TwoLinesContentView *)self _updateConstraints];
    }

    [(TwoLinesContentView *)self _updateViewsWithViewModel:v10];
    [(TwoLinesContentView *)self _updateLabelColors];
    [(TwoLinesContentView *)self _updateFonts];
    [(TwoLinesContentView *)self _updateNumberOfLines];
    [(TwoLinesContentView *)self _updateConstraintConstants];
    v5 = v10;
  }
}

- (id)_renderAttachmentImageWithImage:(id)a3 vibrant:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(TwoLinesContentView *)self traitCollection];
    v8 = [v7 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

    if (IsAccessibilityCategory)
    {
      [(TwoLinesContentView *)self _imageDimension];
      v11 = v10;
      v12 = [UIGraphicsImageRenderer alloc];
      v13 = [(TwoLinesContentView *)self traitCollection];
      v14 = [UIGraphicsImageRendererFormat formatForTraitCollection:v13];
      v15 = [v12 initWithSize:v14 format:{v11, v11}];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10071D270;
      v18[3] = &unk_101650960;
      v19 = v6;
      v16 = v6;
      v6 = [v15 imageWithActions:v18];
    }
  }

  return v6;
}

- (void)setVibrant:(BOOL)a3
{
  if (self->_vibrant != a3)
  {
    self->_vibrant = a3;
    if (a3)
    {
      [(TwoLinesContentView *)self _imageDimension];
      v5 = v4;
      v6 = [[MKVibrantView alloc] initWithFrame:{0.0, 0.0, v5, v5}];
      [v6 _setCornerRadius:v5 * 0.5];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TwoLinesContentView *)self insertSubview:v6 belowSubview:self->_leftImageView];
      vibrantView = self->_vibrantView;
      self->_vibrantView = v6;
      v8 = v6;

      [(TwoLinesContentView *)self _updateVibrantColor];
      v22 = [v8 centerXAnchor];
      v21 = [(UIImageView *)self->_leftImageView centerXAnchor];
      v20 = [v22 constraintEqualToAnchor:v21];
      v23[0] = v20;
      v19 = [v8 centerYAnchor];
      v9 = [(UIImageView *)self->_leftImageView centerYAnchor];
      v10 = [v19 constraintEqualToAnchor:v9];
      v23[1] = v10;
      v11 = [v8 widthAnchor];
      v12 = [(UIImageView *)self->_leftImageView widthAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v23[2] = v13;
      v14 = [v8 heightAnchor];
      v15 = [(UIImageView *)self->_leftImageView heightAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v23[3] = v16;
      v17 = [NSArray arrayWithObjects:v23 count:4];
      [NSLayoutConstraint activateConstraints:v17];
    }

    else
    {
      [(MKVibrantView *)self->_vibrantView removeFromSuperview];
      v18 = self->_vibrantView;
      self->_vibrantView = 0;
    }
  }
}

- (void)_updateImage:(id)a3
{
  v4 = a3;
  v5 = [(TwoLinesContentView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (IsAccessibilityCategory)
  {
    if (!v4)
    {
      v4 = objc_opt_new();
    }

    v8 = [(TwoLinesContentView *)self _renderAttachmentImageWithImage:v4 vibrant:[(TwoLinesContentViewModel *)self->_viewModel hasVibrantBackground]];

    [(NSTextAttachment *)self->_attachment setImage:v8];
    v9 = [(UILabel *)self->_mainTitleLabel attributedText];
    v10 = [v9 mutableCopy];

    v11 = [(UILabel *)self->_mainTitleLabel attributedText];
    v12 = [(UILabel *)self->_mainTitleLabel attributedText];
    v13 = [v12 length];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10071D870;
    v23 = &unk_101627798;
    v24 = self;
    v25 = v10;
    v14 = v10;
    [v11 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v13 usingBlock:{0, &v20}];

    [(UILabel *)self->_mainTitleLabel setAttributedText:v14, v20, v21, v22, v23, v24];
    [(UILabel *)self->_mainTitleLabel setNeedsDisplay];

    v4 = v8;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ([v4 isSymbolImage])
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    [(UIImageView *)self->_leftImageView setContentMode:v15];
    [(UIImageView *)self->_leftImageView setImage:v4];
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v16 = [(TwoLinesContentView *)self traitCollection];
  v17 = [v16 preferredContentSizeCategory];
  v18 = UIContentSizeCategoryIsAccessibilityCategory(v17);

  if (!v18)
  {
    v19 = [(TwoLinesContentViewModel *)self->_viewModel hasVibrantBackground];
    goto LABEL_13;
  }

LABEL_11:
  v19 = 0;
LABEL_13:
  [(TwoLinesContentView *)self setVibrant:v19];
}

- (id)_labelColor
{
  contentViewType = self->_contentViewType;
  if (contentViewType != 1)
  {
    if (contentViewType)
    {
      goto LABEL_9;
    }

    if (([(TwoLinesContentViewModel *)self->_viewModel isDisabled]& 1) == 0)
    {
      v5 = [(TwoLinesContentViewModel *)self->_viewModel titleTextColor];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = +[UIColor labelColor];
      }

      v2 = v7;

      goto LABEL_9;
    }
  }

  v2 = +[UIColor secondaryLabelColor];
LABEL_9:

  return v2;
}

- (id)_selectedLabelColor
{
  contentViewType = self->_contentViewType;
  if (contentViewType == 1)
  {
    v4 = +[UIColor whiteColor];
    v2 = [v4 colorWithAlphaComponent:0.7];
  }

  else if (!contentViewType)
  {
    v2 = +[UIColor whiteColor];
  }

  return v2;
}

- (void)_updateLabelColors
{
  contentViewType = self->_contentViewType;
  if (contentViewType)
  {
    if (contentViewType != 1)
    {
      return;
    }

    if (sub_10000FA08(self) != 5 || !self->_isParentCellSelected)
    {
      v4 = [(TwoLinesContentView *)self _labelColor];
      [(UILabel *)self->_mainTitleLabel setTextColor:v4];

      v5 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_secondTitleLabel setTextColor:v5];

      v6 = +[UIColor secondaryLabelColor];
LABEL_9:
      v9 = v6;
      v19 = v6;
      thirdTitleLabel = self->_thirdTitleLabel;
      goto LABEL_10;
    }

LABEL_8:
    v7 = [(TwoLinesContentView *)self _selectedLabelColor];
    [(UILabel *)self->_mainTitleLabel setTextColor:v7];

    v8 = [(TwoLinesContentView *)self _selectedLabelColor];
    [(UILabel *)self->_secondTitleLabel setTextColor:v8];

    v6 = [(TwoLinesContentView *)self _selectedLabelColor];
    goto LABEL_9;
  }

  if (sub_10000FA08(self) == 5 && self->_isParentCellSelected)
  {
    goto LABEL_8;
  }

  v12 = [(TwoLinesContentView *)self _labelColor];
  [(UILabel *)self->_mainTitleLabel setTextColor:v12];

  v13 = [(TwoLinesContentViewModel *)self->_viewModel subtitleTextColor];
  if (v13)
  {
    [(UILabel *)self->_secondTitleLabel setTextColor:v13];
  }

  else
  {
    v14 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_secondTitleLabel setTextColor:v14];
  }

  v15 = [(TwoLinesContentViewModel *)self->_viewModel placeContextViewModel];

  if (!v15)
  {
    v16 = [(TwoLinesContentViewModel *)self->_viewModel subtitleTextColor];
    if (!v16)
    {
      v18 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_thirdTitleLabel setTextColor:v18];

      v11 = 0;
      goto LABEL_11;
    }

    v17 = v16;
    thirdTitleLabel = self->_thirdTitleLabel;
    v19 = v17;
    v9 = v17;
LABEL_10:
    [(UILabel *)thirdTitleLabel setTextColor:v9];
    v11 = v19;
LABEL_11:
  }
}

- (void)_updateNumberOfLines
{
  v3 = [(TwoLinesContentView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    [(UILabel *)self->_mainTitleLabel setNumberOfLines:0];
    [(UILabel *)self->_secondTitleLabel setNumberOfLines:0];
  }

  else
  {
    v6 = [(TwoLinesContentViewModel *)self->_viewModel allowsSubtitleWrapping];
    [(UILabel *)self->_mainTitleLabel setNumberOfLines:1];
    [(UILabel *)self->_secondTitleLabel setNumberOfLines:v6 == 0];
  }

  v7 = [(TwoLinesContentViewModel *)self->_viewModel placeContextViewModel];
  if (v7 && (v8 = v7, -[TwoLinesContentViewModel placeContextViewModel](self->_viewModel, "placeContextViewModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 type], v9, v8, v10 == 1))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  thirdTitleLabel = self->_thirdTitleLabel;

  [(UILabel *)thirdTitleLabel setNumberOfLines:v11];
}

- (void)_updateConstraintConstants
{
  v3 = [(TwoLinesContentView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (!IsAccessibilityCategory)
  {
    v6 = [(UILabel *)self->_mainTitleLabel font];
    v7 = [(TwoLinesContentView *)self traitCollection];
    [v7 displayScale];
    [UILabel _maps_maximumHeightWithFont:v6 numberOfLines:1 displayScale:?];
    v9 = v8;

    v10 = [(UILabel *)self->_secondTitleLabel font];
    v11 = [(TwoLinesContentView *)self traitCollection];
    [v11 displayScale];
    [UILabel _maps_maximumHeightWithFont:v10 numberOfLines:1 displayScale:?];
    v13 = v12;

    [(TwoLinesContentView *)self _verticalMargin];
    v15 = v14;
    [(TwoLinesContentView *)self _labelVerticalSpacing];
    v17 = v13 + v9 + v15 * 2.0 + v16;
    v18 = [(TwoLinesContentView *)self viewModel];
    v19 = [v18 placeContextViewModel];
    v20 = [v19 type];

    v21 = [(TwoLinesContentView *)self viewModel];
    v22 = [v21 placeContextViewModel];
    v23 = [v22 attributedString];
    v24 = [v23 length];

    thirdLabelToLayoutGuideLeadingConstraint = self->_thirdLabelToLayoutGuideLeadingConstraint;
    v35[0] = self->_thirdLabelImageViewBottomConstraint;
    v35[1] = thirdLabelToLayoutGuideLeadingConstraint;
    v35[2] = self->_thirdLabelToThirdImageViewLeadingConstraint;
    v26 = [NSArray arrayWithObjects:v35 count:3];
    [NSLayoutConstraint deactivateConstraints:v26];

    if (v20 == 1 && v24)
    {
      v34 = self->_thirdLabelToLayoutGuideLeadingConstraint;
      v27 = [NSArray arrayWithObjects:&v34 count:1];
      [NSLayoutConstraint activateConstraints:v27];
    }

    else
    {
      thirdLabelToThirdImageViewLeadingConstraint = self->_thirdLabelToThirdImageViewLeadingConstraint;
      v33[0] = self->_thirdLabelImageViewBottomConstraint;
      v33[1] = thirdLabelToThirdImageViewLeadingConstraint;
      v29 = [NSArray arrayWithObjects:v33 count:2];
      [NSLayoutConstraint activateConstraints:v29];

      thirdLabelImageViewHeightConstraint = self->_thirdLabelImageViewHeightConstraint;
      if (!v24)
      {
        v31 = 0.0;
        [(NSLayoutConstraint *)thirdLabelImageViewHeightConstraint setConstant:0.0];
LABEL_8:
        [(NSLayoutConstraint *)self->_thirdLabelTopConstraint setConstant:v31];
        [(NSLayoutConstraint *)self->_minimumHeightConstraint setConstant:v17];
        if (([(TwoLinesContentViewModel *)self->_viewModel shouldCenterImage]& 1) == 0)
        {
          [(NSLayoutConstraint *)self->_minimumHeightConstraint constant];
          [(NSLayoutConstraint *)self->_imageVerticalConstraint setConstant:v32 * 0.5];
        }

        return;
      }

      [(NSLayoutConstraint *)thirdLabelImageViewHeightConstraint setConstant:20.0];
    }

    v31 = 8.0;
    goto LABEL_8;
  }
}

- (void)_updateConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  constraints = self->_constraints;
  self->_constraints = 0;

  minimumHeightConstraint = self->_minimumHeightConstraint;
  self->_minimumHeightConstraint = 0;

  v5 = [(UIImageView *)self->_thirdLabelImageView heightAnchor];
  v6 = [v5 constraintEqualToConstant:0.0];
  thirdLabelImageViewHeightConstraint = self->_thirdLabelImageViewHeightConstraint;
  self->_thirdLabelImageViewHeightConstraint = v6;

  v8 = [(UILabel *)self->_thirdTitleLabel topAnchor];
  v9 = [(UILabel *)self->_secondTitleLabel bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  thirdLabelTopConstraint = self->_thirdLabelTopConstraint;
  self->_thirdLabelTopConstraint = v10;

  LODWORD(v9) = [(TwoLinesContentViewModel *)self->_viewModel shouldCenterImage];
  v12 = [(UIImageView *)self->_leftImageView centerYAnchor];
  if (v9)
  {
    [(TwoLinesContentView *)self centerYAnchor];
  }

  else
  {
    [(TwoLinesContentView *)self topAnchor];
  }
  v13 = ;
  v14 = [v12 constraintEqualToAnchor:{v13, 104}];
  imageVerticalConstraint = self->_imageVerticalConstraint;
  self->_imageVerticalConstraint = v14;

  v16 = [(UIImageView *)self->_leftImageView heightAnchor];
  [(TwoLinesContentView *)self _imageDimension];
  v17 = [v16 constraintEqualToConstant:?];
  imageHeightConstraint = self->_imageHeightConstraint;
  self->_imageHeightConstraint = v17;

  v19 = [(UIImageView *)self->_leftImageView widthAnchor];
  [(TwoLinesContentView *)self _imageDimension];
  v20 = [v19 constraintEqualToConstant:?];
  imageWidthConstraint = self->_imageWidthConstraint;
  self->_imageWidthConstraint = v20;

  v22 = [(UIImageView *)self->_thirdLabelImageView bottomAnchor];
  v23 = [(UILabel *)self->_thirdTitleLabel bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  thirdLabelImageViewBottomConstraint = self->_thirdLabelImageViewBottomConstraint;
  self->_thirdLabelImageViewBottomConstraint = v24;

  v26 = [(UIImageView *)self->_thirdLabelImageView trailingAnchor];
  v27 = [(UILabel *)self->_thirdTitleLabel leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-4.0];
  thirdLabelToThirdImageViewLeadingConstraint = self->_thirdLabelToThirdImageViewLeadingConstraint;
  self->_thirdLabelToThirdImageViewLeadingConstraint = v28;

  v30 = [(UILabel *)self->_thirdTitleLabel leadingAnchor];
  v31 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  thirdLabelToLayoutGuideLeadingConstraint = self->_thirdLabelToLayoutGuideLeadingConstraint;
  self->_thirdLabelToLayoutGuideLeadingConstraint = v32;

  v118 = +[NSMutableArray array];
  v115 = [(UILabel *)self->_mainTitleLabel topAnchor];
  v113 = [(UILayoutGuide *)self->_titleLayoutGuide topAnchor];
  v112 = [v115 constraintEqualToAnchor:v113];
  v121[0] = v112;
  v111 = [(UILabel *)self->_secondTitleLabel topAnchor];
  v110 = [(UILabel *)self->_mainTitleLabel bottomAnchor];
  [(TwoLinesContentView *)self _labelVerticalSpacing];
  v109 = [v111 constraintEqualToAnchor:v110 constant:?];
  v34 = self->_thirdLabelTopConstraint;
  v121[1] = v109;
  v121[2] = v34;
  v108 = [(UILabel *)self->_thirdTitleLabel bottomAnchor];
  v107 = [(UILayoutGuide *)self->_titleLayoutGuide bottomAnchor];
  v106 = [v108 constraintEqualToAnchor:v107];
  v121[3] = v106;
  v105 = [(UIImageView *)self->_thirdLabelImageView topAnchor];
  v104 = [(UILabel *)self->_thirdTitleLabel topAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v35 = self->_thirdLabelImageViewBottomConstraint;
  v121[4] = v103;
  v121[5] = v35;
  v36 = self->_imageHeightConstraint;
  v121[6] = self->_imageVerticalConstraint;
  v121[7] = v36;
  v102 = [(UIView *)self->_badgeView centerYAnchor];
  v101 = [(TwoLinesContentView *)self centerYAnchor];
  v100 = [v102 constraintEqualToAnchor:v101];
  v121[8] = v100;
  v99 = [(UIView *)self->_badgeView heightAnchor];
  v98 = [v99 constraintEqualToConstant:10.0];
  v37 = self->_thirdLabelImageViewHeightConstraint;
  v121[9] = v98;
  v121[10] = v37;
  v97 = [(UILabel *)self->_mainTitleLabel leadingAnchor];
  v96 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v121[11] = v95;
  v94 = [(UILabel *)self->_mainTitleLabel trailingAnchor];
  v93 = [(UILayoutGuide *)self->_titleLayoutGuide trailingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v121[12] = v92;
  v91 = [(UILabel *)self->_secondTitleLabel leadingAnchor];
  v90 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
  v89 = [v91 constraintEqualToAnchor:v90];
  v121[13] = v89;
  v87 = [(UILabel *)self->_secondTitleLabel trailingAnchor];
  v86 = [(UILayoutGuide *)self->_titleLayoutGuide trailingAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v121[14] = v85;
  v84 = [(UIImageView *)self->_thirdLabelImageView leadingAnchor];
  v83 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v38 = self->_thirdLabelToThirdImageViewLeadingConstraint;
  v121[15] = v82;
  v121[16] = v38;
  v88 = [(UILabel *)self->_thirdTitleLabel trailingAnchor];
  v81 = [(UILayoutGuide *)self->_titleLayoutGuide trailingAnchor];
  v80 = [v88 constraintEqualToAnchor:v81];
  v121[17] = v80;
  v79 = [(UIImageView *)self->_leftImageView leadingAnchor];
  v78 = [(TwoLinesContentView *)self leadingAnchor];
  v77 = [v79 constraintEqualToAnchor:v78];
  v121[18] = v77;
  v76 = [(UILayoutGuide *)self->_titleLayoutGuide trailingAnchor];
  v75 = [(TwoLinesContentView *)self trailingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v121[19] = v74;
  v73 = [(UIImageView *)self->_leftImageView leadingAnchor];
  v72 = [(TwoLinesContentView *)self leadingAnchor];
  v39 = [v73 constraintEqualToAnchor:v72];
  v40 = self->_imageWidthConstraint;
  v121[20] = v39;
  v121[21] = v40;
  v41 = [(UIView *)self->_badgeView centerXAnchor];
  v42 = [(TwoLinesContentView *)self trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  v121[22] = v43;
  v44 = [(UIView *)self->_badgeView widthAnchor];
  v45 = [v44 constraintEqualToConstant:10.0];
  v121[23] = v45;
  v46 = [(UIImageView *)self->_thirdLabelImageView widthAnchor];
  v47 = [v46 constraintEqualToConstant:20.0];
  v121[24] = v47;
  v48 = [NSArray arrayWithObjects:v121 count:25];
  [v118 addObjectsFromArray:v48];

  v49 = [(TwoLinesContentView *)self traitCollection];
  v50 = [v49 preferredContentSizeCategory];
  LODWORD(v42) = UIContentSizeCategoryIsAccessibilityCategory(v50);

  if (v42)
  {
    v51 = [(UILayoutGuide *)self->_titleLayoutGuide topAnchor];
    v52 = [(TwoLinesContentView *)self topAnchor];
    [(TwoLinesContentView *)self _verticalMargin];
    v117 = [v51 constraintEqualToAnchor:v52 constant:?];
    v120[0] = v117;
    v53 = [(UILayoutGuide *)self->_titleLayoutGuide bottomAnchor];
    v54 = [(TwoLinesContentView *)self bottomAnchor];
    [(TwoLinesContentView *)self _verticalMargin];
    v56 = [v53 constraintEqualToAnchor:v54 constant:-v55];
    v120[1] = v56;
    v57 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
    v58 = [(TwoLinesContentView *)self leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v120[2] = v59;
    v60 = [NSArray arrayWithObjects:v120 count:3];
    [v118 addObjectsFromArray:v60];
  }

  else
  {
    v61 = [(TwoLinesContentView *)self heightAnchor];
    v62 = [v61 constraintGreaterThanOrEqualToConstant:0.0];
    v63 = *(&self->super.super.super.super.isa + v71);
    *(&self->super.super.super.super.isa + v71) = v62;

    v116 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
    v114 = [(UIImageView *)self->_leftImageView trailingAnchor];
    [(TwoLinesContentView *)self _imageToTextSpacing];
    v117 = [v116 constraintEqualToAnchor:v114 constant:?];
    v119[0] = v117;
    v53 = [(UILayoutGuide *)self->_titleLayoutGuide centerYAnchor];
    v54 = [(TwoLinesContentView *)self centerYAnchor];
    v56 = [v53 constraintEqualToAnchor:v54];
    v64 = *(&self->super.super.super.super.isa + v71);
    v119[1] = v56;
    v119[2] = v64;
    v57 = [(TwoLinesContentView *)self heightAnchor];
    LODWORD(v65) = 1140457472;
    v58 = [v57 constraintEqualToConstant:0.0 priority:v65];
    v119[3] = v58;
    v59 = [(TwoLinesContentView *)self heightAnchor];
    v60 = [(UILayoutGuide *)self->_titleLayoutGuide heightAnchor];
    [(TwoLinesContentView *)self _verticalMargin];
    v67 = [v59 constraintGreaterThanOrEqualToAnchor:v60 constant:v66 + v66];
    v119[4] = v67;
    v68 = [NSArray arrayWithObjects:v119 count:5];
    [v118 addObjectsFromArray:v68];

    v52 = v114;
    v51 = v116;
  }

  v69 = [v118 copy];
  v70 = self->_constraints;
  self->_constraints = v69;

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)setIsParentCellSelected:(BOOL)a3
{
  if (self->_isParentCellSelected != a3)
  {
    self->_isParentCellSelected = a3;
    [(TwoLinesContentView *)self _updateLabelColors];
    [(TwoLinesContentView *)self _updateVibrantColor];
    viewModel = self->_viewModel;

    [(TwoLinesContentView *)self _updateViewsWithViewModel:viewModel];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = TwoLinesContentView;
  [(MapsThemeView *)&v26 traitCollectionDidChange:v4];
  v5 = [(TwoLinesContentView *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  v8 = sub_10008FB5C(v6, v7);

  if (v8)
  {
    [(TwoLinesContentView *)self _updateFonts];
  }

  v9 = [(TwoLinesContentView *)self traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);
  v12 = [v4 preferredContentSizeCategory];
  if (IsAccessibilityCategory == UIContentSizeCategoryIsAccessibilityCategory(v12))
  {
    v13 = [(TwoLinesContentView *)self traitCollection];
    v14 = [v13 userInterfaceStyle];
    v15 = [v4 userInterfaceStyle];

    if (v14 == v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v16 = [(TwoLinesContentView *)self viewModel];
  [(TwoLinesContentView *)self _updateViewsWithViewModel:v16];

LABEL_7:
  v17 = [(TwoLinesContentView *)self traitCollection];
  v18 = [v17 preferredContentSizeCategory];
  v19 = UIContentSizeCategoryIsAccessibilityCategory(v18);
  v20 = [v4 preferredContentSizeCategory];
  v21 = UIContentSizeCategoryIsAccessibilityCategory(v20);

  if (v19 != v21)
  {
    [(TwoLinesContentView *)self _updateNumberOfLines];
    [(TwoLinesContentView *)self _updateConstraints];
  }

  v22 = [(TwoLinesContentView *)self traitCollection];
  v23 = [v22 preferredContentSizeCategory];
  v24 = [v4 preferredContentSizeCategory];
  v25 = sub_10008FB5C(v23, v24);

  if (v25)
  {
    [(TwoLinesContentView *)self _updateConstraintConstants];
  }
}

- (TwoLinesContentView)initWithFrame:(CGRect)a3
{
  v32.receiver = self;
  v32.super_class = TwoLinesContentView;
  v3 = [(TwoLinesContentView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    titleLayoutGuide = v3->_titleLayoutGuide;
    v3->_titleLayoutGuide = v4;

    [(TwoLinesContentView *)v3 addLayoutGuide:v3->_titleLayoutGuide];
    v6 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    leftImageView = v3->_leftImageView;
    v3->_leftImageView = v10;

    [(UIImageView *)v3->_leftImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_leftImageView setAccessibilityIdentifier:@"LeftImage"];
    [(TwoLinesContentView *)v3 addSubview:v3->_leftImageView];
    v12 = [[NSTextAttachment alloc] initWithData:0 ofType:0];
    attachment = v3->_attachment;
    v3->_attachment = v12;

    [(TwoLinesContentView *)v3 _imageDimension];
    v15 = v14;
    [(TwoLinesContentView *)v3 _imageDimension];
    [(NSTextAttachment *)v3->_attachment setBounds:0.0, 0.0, v15, v16];
    v17 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    badgeView = v3->_badgeView;
    v3->_badgeView = v17;

    [(UIView *)v3->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = +[UIColor redColor];
    [(UIView *)v3->_badgeView setBackgroundColor:v19];

    v20 = [(UIView *)v3->_badgeView layer];
    [v20 setCornerRadius:5.0];

    [(UIView *)v3->_badgeView setHidden:1];
    [(UIView *)v3->_badgeView setAccessibilityIdentifier:@"Badge"];
    [(TwoLinesContentView *)v3 addSubview:v3->_badgeView];
    v21 = objc_alloc_init(UILabel);
    mainTitleLabel = v3->_mainTitleLabel;
    v3->_mainTitleLabel = v21;

    [(UILabel *)v3->_mainTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_mainTitleLabel setAccessibilityIdentifier:@"MainTitle"];
    [(TwoLinesContentView *)v3 addSubview:v3->_mainTitleLabel];
    v23 = objc_alloc_init(UILabel);
    secondTitleLabel = v3->_secondTitleLabel;
    v3->_secondTitleLabel = v23;

    [(UILabel *)v3->_secondTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_secondTitleLabel setAccessibilityIdentifier:@"SecondTitle"];
    [(TwoLinesContentView *)v3 addSubview:v3->_secondTitleLabel];
    v25 = objc_alloc_init(UILabel);
    thirdTitleLabel = v3->_thirdTitleLabel;
    v3->_thirdTitleLabel = v25;

    [(UILabel *)v3->_thirdTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_thirdTitleLabel _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(UILabel *)v3->_thirdTitleLabel setAccessibilityIdentifier:@"ThirdTitle"];
    [(TwoLinesContentView *)v3 addSubview:v3->_thirdTitleLabel];
    v27 = objc_alloc_init(UIImageView);
    thirdLabelImageView = v3->_thirdLabelImageView;
    v3->_thirdLabelImageView = v27;

    [(UIImageView *)v3->_thirdLabelImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_thirdLabelImageView setContentMode:1];
    v29 = +[UIColor clearColor];
    [(UIImageView *)v3->_thirdLabelImageView setBackgroundColor:v29];

    LODWORD(v30) = 1148846080;
    [(UIImageView *)v3->_thirdLabelImageView setContentCompressionResistancePriority:0 forAxis:v30];
    [(UIImageView *)v3->_thirdLabelImageView setClipsToBounds:1];
    [(UIImageView *)v3->_thirdLabelImageView setAccessibilityIdentifier:@"ThirdLabelImage"];
    [(TwoLinesContentView *)v3 addSubview:v3->_thirdLabelImageView];
    [(TwoLinesContentView *)v3 _updateDebugLabel];
    [(TwoLinesContentView *)v3 _updateFonts];
    [(TwoLinesContentView *)v3 _updateNumberOfLines];
    [(TwoLinesContentView *)v3 _updateConstraints];
    [(TwoLinesContentView *)v3 _updateConstraintConstants];
    [(TwoLinesContentView *)v3 _updateLabelColors];
  }

  return v3;
}

- (TwoLinesContentView)initWithFrame:(CGRect)a3 contentViewType:(int)a4
{
  v5 = [(TwoLinesContentView *)self initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_contentViewType = a4;
    [(TwoLinesContentView *)v5 _updateLabelColors];
  }

  return v6;
}

@end