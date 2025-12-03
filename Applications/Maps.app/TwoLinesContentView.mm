@interface TwoLinesContentView
- (TwoLinesContentView)initWithFrame:(CGRect)frame;
- (TwoLinesContentView)initWithFrame:(CGRect)frame contentViewType:(int)type;
- (double)_imageDimension;
- (double)_imageToTextSpacing;
- (double)_labelVerticalSpacing;
- (double)_verticalMargin;
- (id)_labelColor;
- (id)_renderAttachmentImageWithImage:(id)image vibrant:(BOOL)vibrant;
- (id)_selectedLabelColor;
- (id)_subtitleFont;
- (id)_titleFont;
- (id)_titleRegularFont;
- (void)_updateConstraintConstants;
- (void)_updateConstraints;
- (void)_updateDebugLabel;
- (void)_updateFonts;
- (void)_updateImage:(id)image;
- (void)_updateLabelColors;
- (void)_updateNumberOfLines;
- (void)_updateViewsWithViewModel:(id)model;
- (void)setIsParentCellSelected:(BOOL)selected;
- (void)setVibrant:(BOOL)vibrant;
- (void)setViewModel:(id)model;
- (void)traitCollectionDidChange:(id)change;
- (void)twoLinesTableViewCellModelDidUpdate:(id)update;
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
  _titleFont = [(TwoLinesContentView *)self _titleFont];
  [(UILabel *)self->_mainTitleLabel setFont:_titleFont];

  _subtitleFont = [(TwoLinesContentView *)self _subtitleFont];
  [(UILabel *)self->_secondTitleLabel setFont:_subtitleFont];

  _subtitleFont2 = [(TwoLinesContentView *)self _subtitleFont];
  [(UILabel *)self->_thirdTitleLabel setFont:_subtitleFont2];
}

- (id)_subtitleFont
{
  traitCollection = [(TwoLinesContentView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v5 = +[UIFont system15];
  }

  else
  {
    subtitleUsesMonospacedNumbers = [(TwoLinesContentViewModel *)self->_viewModel subtitleUsesMonospacedNumbers];
    v7 = +[UIFont system15];
    v5 = v7;
    if (subtitleUsesMonospacedNumbers)
    {
      _maps_fontWithMonospacedNumbers = [v7 _maps_fontWithMonospacedNumbers];

      v5 = _maps_fontWithMonospacedNumbers;
    }
  }

  return v5;
}

- (id)_titleRegularFont
{
  traitCollection = [(TwoLinesContentView *)self traitCollection];
  [traitCollection userInterfaceIdiom];

  v3 = +[UIFont system17];

  return v3;
}

- (id)_titleFont
{
  traitCollection = [(TwoLinesContentView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
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
  debugString = [(TwoLinesContentViewModel *)self->_viewModel debugString];

  debugLabel = self->_debugLabel;
  if (debugString)
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
      leadingAnchor = [(UILabel *)self->_debugLabel leadingAnchor];
      leadingAnchor2 = [(TwoLinesContentView *)self leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
      [v12 setActive:1];

      bottomAnchor = [(UILabel *)self->_debugLabel bottomAnchor];
      bottomAnchor2 = [(TwoLinesContentView *)self bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
      [v15 setActive:1];
    }

    debugString2 = [(TwoLinesContentViewModel *)self->_viewModel debugString];
    [(UILabel *)self->_debugLabel setText:debugString2];
    v16 = debugString2;
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

- (void)twoLinesTableViewCellModelDidUpdate:(id)update
{
  if (self->_viewModel == update)
  {
    [(TwoLinesContentView *)self _updateViewsWithViewModel:?];
  }
}

- (void)_updateViewsWithViewModel:(id)model
{
  modelCopy = model;
  [(TwoLinesContentView *)self _updateImage:0];
  titleText = [modelCopy titleText];
  subtitleText = [modelCopy subtitleText];
  attributedSubtitleText = [modelCopy attributedSubtitleText];
  if (![titleText length])
  {
    goto LABEL_7;
  }

  titleHighlightRanges = [modelCopy titleHighlightRanges];
  v6 = [titleHighlightRanges count];

  if (v6)
  {
    contentViewType = self->_contentViewType;
    if (contentViewType)
    {
      if (contentViewType == 1)
      {
        isParentCellSelected = self->_isParentCellSelected;
        titleHighlightRanges2 = [modelCopy titleHighlightRanges];
        _titleFont = [(TwoLinesContentView *)self _titleFont];
        _titleFont2 = [(TwoLinesContentView *)self _titleFont];
        if (isParentCellSelected)
        {
          +[UIColor whiteColor];
        }

        else
        {
          +[UIColor labelColor];
        }
        v12 = ;
        v13 = [NSAttributedString attributedStringWithText:titleText highlightRanges:titleHighlightRanges2 font:_titleFont highlightedFont:_titleFont2 highlightedTextColor:v12];

        goto LABEL_17;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_18;
    }

    if (![modelCopy shouldEnableGrayscaleHighlighting] || (-[TwoLinesContentView traitCollection](self, "traitCollection"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "userInterfaceIdiom"), v17, v18 == 5))
    {
      titleHighlightRanges2 = [modelCopy titleHighlightRanges];
      _titleFont = [(TwoLinesContentView *)self _titleRegularFont];
      _titleFont2 = [(TwoLinesContentView *)self _titleFont];
      v13 = [NSAttributedString attributedStringWithText:titleText boldInRange:titleHighlightRanges2 font:_titleFont bold:_titleFont2];
LABEL_17:

      goto LABEL_18;
    }

    titleHighlightRanges3 = [modelCopy titleHighlightRanges];
    _titleFont3 = [(TwoLinesContentView *)self _titleFont];
    _titleFont4 = [(TwoLinesContentView *)self _titleFont];
    v97 = +[UIColor labelColor];
    v98 = +[UIColor secondaryLabelColor];
    v13 = [NSAttributedString attributedStringWithText:titleText highlightRanges:titleHighlightRanges3 font:_titleFont3 highlightedFont:_titleFont4 highlightedTextColor:v97 unhighlightedTextColor:v98];
  }

  else
  {
    titleTextFont = [modelCopy titleTextFont];

    if (titleTextFont)
    {
      v107 = NSFontAttributeName;
      titleTextFont2 = [modelCopy titleTextFont];
      v108 = titleTextFont2;
      v16 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    }

    else
    {
      v16 = 0;
    }

    v13 = [[NSMutableAttributedString alloc] initWithString:titleText attributes:v16];
  }

LABEL_18:
  if ([attributedSubtitleText length])
  {
    v100 = attributedSubtitleText;
  }

  else if ([subtitleText length])
  {
    subtitleHighlightRanges = [modelCopy subtitleHighlightRanges];
    v35 = [subtitleHighlightRanges count] == 0;

    if (v35)
    {
      v100 = [[NSAttributedString alloc] initWithString:subtitleText];
    }

    else
    {
      subtitleHighlightRanges2 = [modelCopy subtitleHighlightRanges];
      v37 = +[UIFont system15];
      v38 = +[UIFont system15Bold];
      v100 = [NSAttributedString attributedStringWithText:subtitleText boldInRange:subtitleHighlightRanges2 font:v37 bold:v38];
    }
  }

  else
  {
    v100 = 0;
  }

  traitCollection = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v22 = [NSAttributedString attributedStringWithAttachment:self->_attachment];
    v23 = [[NSMutableAttributedString alloc] initWithAttributedString:v22];
    titleText2 = [modelCopy titleText];

    if (titleText2)
    {
      v25 = [[NSAttributedString alloc] initWithString:@" "];
      [v23 appendAttributedString:v25];

      v26 = [NSAttributedString alloc];
      titleText3 = [modelCopy titleText];
      v28 = [v26 initWithString:titleText3];
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
  -[UIView setHidden:](self->_badgeView, "setHidden:", [modelCopy showBadgeView] ^ 1);
  window = [(TwoLinesContentView *)self window];
  screen = [window screen];
  v31 = screen;
  if (screen)
  {
    [screen scale];
    v33 = v32;
  }

  else
  {
    v39 = +[UIScreen mainScreen];
    [v39 scale];
    v33 = v40;
  }

  imageShadowStyle = [modelCopy imageShadowStyle];
  if (imageShadowStyle == 1)
  {
    leftImageShadowView = self->_leftImageShadowView;
    if (!leftImageShadowView)
    {
      v44 = objc_alloc_init(UIView);
      v45 = self->_leftImageShadowView;
      self->_leftImageShadowView = v44;

      [(UIView *)self->_leftImageShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
      layer = [(UIView *)self->_leftImageShadowView layer];
      [layer setShadowPathIsBounds:1];

      layer2 = [(UIView *)self->_leftImageShadowView layer];
      [layer2 setPunchoutShadow:1];

      [(TwoLinesContentView *)self addSubview:self->_leftImageShadowView];
      LODWORD(v48) = 1148846080;
      v49 = [(UIView *)self->_leftImageShadowView _maps_constraintsEqualToEdgesOfView:self->_leftImageView priority:v48];
      allConstraints = [v49 allConstraints];
      [NSLayoutConstraint activateConstraints:allConstraints];

      leftImageShadowView = self->_leftImageShadowView;
    }

    layer3 = [(UIView *)leftImageShadowView layer];
    [layer3 setBorderWidth:1.0 / v33];

    v52 = [UIColor colorWithRed:0.454901963 green:0.454901963 blue:0.501960814 alpha:0.200000003];
    v53 = v52;
    cGColor = [v52 CGColor];
    layer4 = [(UIView *)self->_leftImageShadowView layer];
    [layer4 setBorderColor:cGColor];

    layer5 = [(UIView *)self->_leftImageShadowView layer];
    [layer5 setShadowOffset:{0.0, 1.0}];

    layer6 = [(UIView *)self->_leftImageShadowView layer];
    [layer6 setShadowRadius:5.0];

    layer7 = [(UIView *)self->_leftImageShadowView layer];
    LODWORD(v59) = 1036831949;
    [layer7 setShadowOpacity:v59];

    v42 = +[UIColor blackColor];
    v60 = v42;
    cGColor2 = [v42 CGColor];
    layer8 = [(UIView *)self->_leftImageShadowView layer];
    [layer8 setShadowColor:cGColor2];
  }

  else
  {
    if (imageShadowStyle)
    {
      goto LABEL_38;
    }

    [(UIView *)self->_leftImageShadowView removeFromSuperview];
    v42 = self->_leftImageShadowView;
    self->_leftImageShadowView = 0;
  }

LABEL_38:
  [(UIView *)self->_leftImageShadowView setHidden:[(UIImageView *)self->_leftImageView isHidden]];
  imageStyle = [modelCopy imageStyle];
  if (imageStyle <= 1)
  {
    if (imageStyle)
    {
      if (imageStyle == 1)
      {
        layer9 = [(UIImageView *)self->_leftImageView layer];
        [layer9 setCornerRadius:5.0];

        layer10 = [(UIView *)self->_leftImageShadowView layer];
        [layer10 setCornerRadius:5.0];
      }
    }

    else
    {
      [(TwoLinesContentView *)self _imageDimension];
      v69 = v68;
      layer11 = [(UIImageView *)self->_leftImageView layer];
      [layer11 setCornerRadius:v69 * 0.5];

      [(TwoLinesContentView *)self _imageDimension];
      v72 = v71;
      layer12 = [(UIView *)self->_leftImageShadowView layer];
      [layer12 setCornerRadius:v72 * 0.5];
    }
  }

  else
  {
    switch(imageStyle)
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
        layer13 = [(UIImageView *)self->_leftImageView layer];
        [layer13 setCornerRadius:0.0];

        layer14 = [(UIView *)self->_leftImageShadowView layer];
        [layer14 setCornerRadius:0.0];

        break;
    }
  }

  [modelCopy imageSize];
  if (CGSizeZero.width != v75 || CGSizeZero.height != v74)
  {
    [modelCopy imageSize];
    [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:?];
    [modelCopy imageSize];
    [(NSLayoutConstraint *)self->_imageHeightConstraint setConstant:v76];
  }

  leftImageTintColor = [modelCopy leftImageTintColor];

  if (leftImageTintColor)
  {
    leftImageTintColor2 = [modelCopy leftImageTintColor];
    [(UIImageView *)self->_leftImageView setTintColor:leftImageTintColor2];
  }

  v79 = +[UIColor clearColor];
  [(UIImageView *)self->_leftImageView setBackgroundColor:v79];

  leadingImageBackgroundColor = [modelCopy leadingImageBackgroundColor];

  if (leadingImageBackgroundColor)
  {
    leadingImageBackgroundColor2 = [modelCopy leadingImageBackgroundColor];
    [(UIImageView *)self->_leftImageView setBackgroundColor:leadingImageBackgroundColor2];
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
  [modelCopy fetchImageForScreenScale:v103 withCompletionHandler:v33];
  placeContextViewModel = [modelCopy placeContextViewModel];

  thirdTitleLabel = self->_thirdTitleLabel;
  if (placeContextViewModel)
  {
    [(UILabel *)thirdTitleLabel setHidden:0];
    [(UILabel *)self->_thirdTitleLabel setUserInteractionEnabled:0];
    placeContextViewModel2 = [modelCopy placeContextViewModel];
    attributedString = [placeContextViewModel2 attributedString];
    [(UILabel *)self->_thirdTitleLabel setAttributedText:attributedString];

    placeContextViewModel3 = [modelCopy placeContextViewModel];
    image = [placeContextViewModel3 image];
    [(UIImageView *)self->_thirdLabelImageView setHidden:image == 0];

    placeContextViewModel4 = [modelCopy placeContextViewModel];
    image2 = [placeContextViewModel4 image];
    [(UIImageView *)self->_thirdLabelImageView setImage:image2];

    placeContextViewModel5 = [modelCopy placeContextViewModel];
    imageTintColor = [placeContextViewModel5 imageTintColor];
    [(UIImageView *)self->_thirdLabelImageView setTintColor:imageTintColor];

    placeContextViewModel6 = [modelCopy placeContextViewModel];
    [placeContextViewModel6 imageContinuousCornerRadius];
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

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v10 = modelCopy;
    shouldCenterImage = [(TwoLinesContentViewModel *)modelCopy shouldCenterImage];
    shouldCenterImage2 = [(TwoLinesContentViewModel *)self->_viewModel shouldCenterImage];
    observers = [(TwoLinesContentViewModel *)self->_viewModel observers];
    [observers unregisterObserver:self];

    objc_storeStrong(&self->_viewModel, model);
    observers2 = [(TwoLinesContentViewModel *)self->_viewModel observers];
    [observers2 registerObserver:self];

    if (shouldCenterImage != shouldCenterImage2)
    {
      [(TwoLinesContentView *)self _updateConstraints];
    }

    [(TwoLinesContentView *)self _updateViewsWithViewModel:v10];
    [(TwoLinesContentView *)self _updateLabelColors];
    [(TwoLinesContentView *)self _updateFonts];
    [(TwoLinesContentView *)self _updateNumberOfLines];
    [(TwoLinesContentView *)self _updateConstraintConstants];
    modelCopy = v10;
  }
}

- (id)_renderAttachmentImageWithImage:(id)image vibrant:(BOOL)vibrant
{
  vibrantCopy = vibrant;
  imageCopy = image;
  if (vibrantCopy)
  {
    traitCollection = [(TwoLinesContentView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [(TwoLinesContentView *)self _imageDimension];
      v11 = v10;
      v12 = [UIGraphicsImageRenderer alloc];
      traitCollection2 = [(TwoLinesContentView *)self traitCollection];
      v14 = [UIGraphicsImageRendererFormat formatForTraitCollection:traitCollection2];
      v15 = [v12 initWithSize:v14 format:{v11, v11}];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10071D270;
      v18[3] = &unk_101650960;
      v19 = imageCopy;
      v16 = imageCopy;
      imageCopy = [v15 imageWithActions:v18];
    }
  }

  return imageCopy;
}

- (void)setVibrant:(BOOL)vibrant
{
  if (self->_vibrant != vibrant)
  {
    self->_vibrant = vibrant;
    if (vibrant)
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
      centerXAnchor = [v8 centerXAnchor];
      centerXAnchor2 = [(UIImageView *)self->_leftImageView centerXAnchor];
      v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v23[0] = v20;
      centerYAnchor = [v8 centerYAnchor];
      centerYAnchor2 = [(UIImageView *)self->_leftImageView centerYAnchor];
      v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v23[1] = v10;
      widthAnchor = [v8 widthAnchor];
      widthAnchor2 = [(UIImageView *)self->_leftImageView widthAnchor];
      v13 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v23[2] = v13;
      heightAnchor = [v8 heightAnchor];
      heightAnchor2 = [(UIImageView *)self->_leftImageView heightAnchor];
      v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
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

- (void)_updateImage:(id)image
{
  imageCopy = image;
  traitCollection = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    if (!imageCopy)
    {
      imageCopy = objc_opt_new();
    }

    v8 = [(TwoLinesContentView *)self _renderAttachmentImageWithImage:imageCopy vibrant:[(TwoLinesContentViewModel *)self->_viewModel hasVibrantBackground]];

    [(NSTextAttachment *)self->_attachment setImage:v8];
    attributedText = [(UILabel *)self->_mainTitleLabel attributedText];
    v10 = [attributedText mutableCopy];

    attributedText2 = [(UILabel *)self->_mainTitleLabel attributedText];
    attributedText3 = [(UILabel *)self->_mainTitleLabel attributedText];
    v13 = [attributedText3 length];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10071D870;
    v23 = &unk_101627798;
    selfCopy = self;
    v25 = v10;
    v14 = v10;
    [attributedText2 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v13 usingBlock:{0, &v20}];

    [(UILabel *)self->_mainTitleLabel setAttributedText:v14, v20, v21, v22, v23, selfCopy];
    [(UILabel *)self->_mainTitleLabel setNeedsDisplay];

    imageCopy = v8;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ([imageCopy isSymbolImage])
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    [(UIImageView *)self->_leftImageView setContentMode:v15];
    [(UIImageView *)self->_leftImageView setImage:imageCopy];
    if (!imageCopy)
    {
      goto LABEL_11;
    }
  }

  traitCollection2 = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  v18 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (!v18)
  {
    hasVibrantBackground = [(TwoLinesContentViewModel *)self->_viewModel hasVibrantBackground];
    goto LABEL_13;
  }

LABEL_11:
  hasVibrantBackground = 0;
LABEL_13:
  [(TwoLinesContentView *)self setVibrant:hasVibrantBackground];
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
      titleTextColor = [(TwoLinesContentViewModel *)self->_viewModel titleTextColor];
      v6 = titleTextColor;
      if (titleTextColor)
      {
        v7 = titleTextColor;
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
      _labelColor = [(TwoLinesContentView *)self _labelColor];
      [(UILabel *)self->_mainTitleLabel setTextColor:_labelColor];

      v5 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_secondTitleLabel setTextColor:v5];

      _selectedLabelColor3 = +[UIColor secondaryLabelColor];
LABEL_9:
      v9 = _selectedLabelColor3;
      v19 = _selectedLabelColor3;
      thirdTitleLabel = self->_thirdTitleLabel;
      goto LABEL_10;
    }

LABEL_8:
    _selectedLabelColor = [(TwoLinesContentView *)self _selectedLabelColor];
    [(UILabel *)self->_mainTitleLabel setTextColor:_selectedLabelColor];

    _selectedLabelColor2 = [(TwoLinesContentView *)self _selectedLabelColor];
    [(UILabel *)self->_secondTitleLabel setTextColor:_selectedLabelColor2];

    _selectedLabelColor3 = [(TwoLinesContentView *)self _selectedLabelColor];
    goto LABEL_9;
  }

  if (sub_10000FA08(self) == 5 && self->_isParentCellSelected)
  {
    goto LABEL_8;
  }

  _labelColor2 = [(TwoLinesContentView *)self _labelColor];
  [(UILabel *)self->_mainTitleLabel setTextColor:_labelColor2];

  subtitleTextColor = [(TwoLinesContentViewModel *)self->_viewModel subtitleTextColor];
  if (subtitleTextColor)
  {
    [(UILabel *)self->_secondTitleLabel setTextColor:subtitleTextColor];
  }

  else
  {
    v14 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_secondTitleLabel setTextColor:v14];
  }

  placeContextViewModel = [(TwoLinesContentViewModel *)self->_viewModel placeContextViewModel];

  if (!placeContextViewModel)
  {
    subtitleTextColor2 = [(TwoLinesContentViewModel *)self->_viewModel subtitleTextColor];
    if (!subtitleTextColor2)
    {
      v18 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_thirdTitleLabel setTextColor:v18];

      v11 = 0;
      goto LABEL_11;
    }

    v17 = subtitleTextColor2;
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
  traitCollection = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    [(UILabel *)self->_mainTitleLabel setNumberOfLines:0];
    [(UILabel *)self->_secondTitleLabel setNumberOfLines:0];
  }

  else
  {
    allowsSubtitleWrapping = [(TwoLinesContentViewModel *)self->_viewModel allowsSubtitleWrapping];
    [(UILabel *)self->_mainTitleLabel setNumberOfLines:1];
    [(UILabel *)self->_secondTitleLabel setNumberOfLines:allowsSubtitleWrapping == 0];
  }

  placeContextViewModel = [(TwoLinesContentViewModel *)self->_viewModel placeContextViewModel];
  if (placeContextViewModel && (v8 = placeContextViewModel, -[TwoLinesContentViewModel placeContextViewModel](self->_viewModel, "placeContextViewModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 type], v9, v8, v10 == 1))
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
  traitCollection = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    font = [(UILabel *)self->_mainTitleLabel font];
    traitCollection2 = [(TwoLinesContentView *)self traitCollection];
    [traitCollection2 displayScale];
    [UILabel _maps_maximumHeightWithFont:font numberOfLines:1 displayScale:?];
    v9 = v8;

    font2 = [(UILabel *)self->_secondTitleLabel font];
    traitCollection3 = [(TwoLinesContentView *)self traitCollection];
    [traitCollection3 displayScale];
    [UILabel _maps_maximumHeightWithFont:font2 numberOfLines:1 displayScale:?];
    v13 = v12;

    [(TwoLinesContentView *)self _verticalMargin];
    v15 = v14;
    [(TwoLinesContentView *)self _labelVerticalSpacing];
    v17 = v13 + v9 + v15 * 2.0 + v16;
    viewModel = [(TwoLinesContentView *)self viewModel];
    placeContextViewModel = [viewModel placeContextViewModel];
    type = [placeContextViewModel type];

    viewModel2 = [(TwoLinesContentView *)self viewModel];
    placeContextViewModel2 = [viewModel2 placeContextViewModel];
    attributedString = [placeContextViewModel2 attributedString];
    v24 = [attributedString length];

    thirdLabelToLayoutGuideLeadingConstraint = self->_thirdLabelToLayoutGuideLeadingConstraint;
    v35[0] = self->_thirdLabelImageViewBottomConstraint;
    v35[1] = thirdLabelToLayoutGuideLeadingConstraint;
    v35[2] = self->_thirdLabelToThirdImageViewLeadingConstraint;
    v26 = [NSArray arrayWithObjects:v35 count:3];
    [NSLayoutConstraint deactivateConstraints:v26];

    if (type == 1 && v24)
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

  heightAnchor = [(UIImageView *)self->_thirdLabelImageView heightAnchor];
  v6 = [heightAnchor constraintEqualToConstant:0.0];
  thirdLabelImageViewHeightConstraint = self->_thirdLabelImageViewHeightConstraint;
  self->_thirdLabelImageViewHeightConstraint = v6;

  topAnchor = [(UILabel *)self->_thirdTitleLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_secondTitleLabel bottomAnchor];
  v10 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  thirdLabelTopConstraint = self->_thirdLabelTopConstraint;
  self->_thirdLabelTopConstraint = v10;

  LODWORD(bottomAnchor) = [(TwoLinesContentViewModel *)self->_viewModel shouldCenterImage];
  centerYAnchor = [(UIImageView *)self->_leftImageView centerYAnchor];
  if (bottomAnchor)
  {
    [(TwoLinesContentView *)self centerYAnchor];
  }

  else
  {
    [(TwoLinesContentView *)self topAnchor];
  }
  v13 = ;
  v14 = [centerYAnchor constraintEqualToAnchor:{v13, 104}];
  imageVerticalConstraint = self->_imageVerticalConstraint;
  self->_imageVerticalConstraint = v14;

  heightAnchor2 = [(UIImageView *)self->_leftImageView heightAnchor];
  [(TwoLinesContentView *)self _imageDimension];
  v17 = [heightAnchor2 constraintEqualToConstant:?];
  imageHeightConstraint = self->_imageHeightConstraint;
  self->_imageHeightConstraint = v17;

  widthAnchor = [(UIImageView *)self->_leftImageView widthAnchor];
  [(TwoLinesContentView *)self _imageDimension];
  v20 = [widthAnchor constraintEqualToConstant:?];
  imageWidthConstraint = self->_imageWidthConstraint;
  self->_imageWidthConstraint = v20;

  bottomAnchor2 = [(UIImageView *)self->_thirdLabelImageView bottomAnchor];
  bottomAnchor3 = [(UILabel *)self->_thirdTitleLabel bottomAnchor];
  v24 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  thirdLabelImageViewBottomConstraint = self->_thirdLabelImageViewBottomConstraint;
  self->_thirdLabelImageViewBottomConstraint = v24;

  trailingAnchor = [(UIImageView *)self->_thirdLabelImageView trailingAnchor];
  leadingAnchor = [(UILabel *)self->_thirdTitleLabel leadingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-4.0];
  thirdLabelToThirdImageViewLeadingConstraint = self->_thirdLabelToThirdImageViewLeadingConstraint;
  self->_thirdLabelToThirdImageViewLeadingConstraint = v28;

  leadingAnchor2 = [(UILabel *)self->_thirdTitleLabel leadingAnchor];
  leadingAnchor3 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
  v32 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  thirdLabelToLayoutGuideLeadingConstraint = self->_thirdLabelToLayoutGuideLeadingConstraint;
  self->_thirdLabelToLayoutGuideLeadingConstraint = v32;

  v118 = +[NSMutableArray array];
  topAnchor2 = [(UILabel *)self->_mainTitleLabel topAnchor];
  topAnchor3 = [(UILayoutGuide *)self->_titleLayoutGuide topAnchor];
  v112 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v121[0] = v112;
  topAnchor4 = [(UILabel *)self->_secondTitleLabel topAnchor];
  bottomAnchor4 = [(UILabel *)self->_mainTitleLabel bottomAnchor];
  [(TwoLinesContentView *)self _labelVerticalSpacing];
  v109 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:?];
  v34 = self->_thirdLabelTopConstraint;
  v121[1] = v109;
  v121[2] = v34;
  bottomAnchor5 = [(UILabel *)self->_thirdTitleLabel bottomAnchor];
  bottomAnchor6 = [(UILayoutGuide *)self->_titleLayoutGuide bottomAnchor];
  v106 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v121[3] = v106;
  topAnchor5 = [(UIImageView *)self->_thirdLabelImageView topAnchor];
  topAnchor6 = [(UILabel *)self->_thirdTitleLabel topAnchor];
  v103 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v35 = self->_thirdLabelImageViewBottomConstraint;
  v121[4] = v103;
  v121[5] = v35;
  v36 = self->_imageHeightConstraint;
  v121[6] = self->_imageVerticalConstraint;
  v121[7] = v36;
  centerYAnchor2 = [(UIView *)self->_badgeView centerYAnchor];
  centerYAnchor3 = [(TwoLinesContentView *)self centerYAnchor];
  v100 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3];
  v121[8] = v100;
  heightAnchor3 = [(UIView *)self->_badgeView heightAnchor];
  v98 = [heightAnchor3 constraintEqualToConstant:10.0];
  v37 = self->_thirdLabelImageViewHeightConstraint;
  v121[9] = v98;
  v121[10] = v37;
  leadingAnchor4 = [(UILabel *)self->_mainTitleLabel leadingAnchor];
  leadingAnchor5 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
  v95 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v121[11] = v95;
  trailingAnchor2 = [(UILabel *)self->_mainTitleLabel trailingAnchor];
  trailingAnchor3 = [(UILayoutGuide *)self->_titleLayoutGuide trailingAnchor];
  v92 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v121[12] = v92;
  leadingAnchor6 = [(UILabel *)self->_secondTitleLabel leadingAnchor];
  leadingAnchor7 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
  v89 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v121[13] = v89;
  trailingAnchor4 = [(UILabel *)self->_secondTitleLabel trailingAnchor];
  trailingAnchor5 = [(UILayoutGuide *)self->_titleLayoutGuide trailingAnchor];
  v85 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v121[14] = v85;
  leadingAnchor8 = [(UIImageView *)self->_thirdLabelImageView leadingAnchor];
  leadingAnchor9 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
  v82 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
  v38 = self->_thirdLabelToThirdImageViewLeadingConstraint;
  v121[15] = v82;
  v121[16] = v38;
  trailingAnchor6 = [(UILabel *)self->_thirdTitleLabel trailingAnchor];
  trailingAnchor7 = [(UILayoutGuide *)self->_titleLayoutGuide trailingAnchor];
  v80 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v121[17] = v80;
  leadingAnchor10 = [(UIImageView *)self->_leftImageView leadingAnchor];
  leadingAnchor11 = [(TwoLinesContentView *)self leadingAnchor];
  v77 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
  v121[18] = v77;
  trailingAnchor8 = [(UILayoutGuide *)self->_titleLayoutGuide trailingAnchor];
  trailingAnchor9 = [(TwoLinesContentView *)self trailingAnchor];
  v74 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
  v121[19] = v74;
  leadingAnchor12 = [(UIImageView *)self->_leftImageView leadingAnchor];
  leadingAnchor13 = [(TwoLinesContentView *)self leadingAnchor];
  v39 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
  v40 = self->_imageWidthConstraint;
  v121[20] = v39;
  v121[21] = v40;
  centerXAnchor = [(UIView *)self->_badgeView centerXAnchor];
  trailingAnchor10 = [(TwoLinesContentView *)self trailingAnchor];
  v43 = [centerXAnchor constraintEqualToAnchor:trailingAnchor10];
  v121[22] = v43;
  widthAnchor2 = [(UIView *)self->_badgeView widthAnchor];
  v45 = [widthAnchor2 constraintEqualToConstant:10.0];
  v121[23] = v45;
  widthAnchor3 = [(UIImageView *)self->_thirdLabelImageView widthAnchor];
  v47 = [widthAnchor3 constraintEqualToConstant:20.0];
  v121[24] = v47;
  v48 = [NSArray arrayWithObjects:v121 count:25];
  [v118 addObjectsFromArray:v48];

  traitCollection = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  LODWORD(trailingAnchor10) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (trailingAnchor10)
  {
    topAnchor7 = [(UILayoutGuide *)self->_titleLayoutGuide topAnchor];
    topAnchor8 = [(TwoLinesContentView *)self topAnchor];
    [(TwoLinesContentView *)self _verticalMargin];
    v117 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:?];
    v120[0] = v117;
    bottomAnchor7 = [(UILayoutGuide *)self->_titleLayoutGuide bottomAnchor];
    bottomAnchor8 = [(TwoLinesContentView *)self bottomAnchor];
    [(TwoLinesContentView *)self _verticalMargin];
    v56 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:-v55];
    v120[1] = v56;
    leadingAnchor14 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
    leadingAnchor15 = [(TwoLinesContentView *)self leadingAnchor];
    heightAnchor5 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
    v120[2] = heightAnchor5;
    heightAnchor6 = [NSArray arrayWithObjects:v120 count:3];
    [v118 addObjectsFromArray:heightAnchor6];
  }

  else
  {
    heightAnchor4 = [(TwoLinesContentView *)self heightAnchor];
    v62 = [heightAnchor4 constraintGreaterThanOrEqualToConstant:0.0];
    v63 = *(&self->super.super.super.super.isa + v71);
    *(&self->super.super.super.super.isa + v71) = v62;

    leadingAnchor16 = [(UILayoutGuide *)self->_titleLayoutGuide leadingAnchor];
    trailingAnchor11 = [(UIImageView *)self->_leftImageView trailingAnchor];
    [(TwoLinesContentView *)self _imageToTextSpacing];
    v117 = [leadingAnchor16 constraintEqualToAnchor:trailingAnchor11 constant:?];
    v119[0] = v117;
    bottomAnchor7 = [(UILayoutGuide *)self->_titleLayoutGuide centerYAnchor];
    bottomAnchor8 = [(TwoLinesContentView *)self centerYAnchor];
    v56 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v64 = *(&self->super.super.super.super.isa + v71);
    v119[1] = v56;
    v119[2] = v64;
    leadingAnchor14 = [(TwoLinesContentView *)self heightAnchor];
    LODWORD(v65) = 1140457472;
    leadingAnchor15 = [leadingAnchor14 constraintEqualToConstant:0.0 priority:v65];
    v119[3] = leadingAnchor15;
    heightAnchor5 = [(TwoLinesContentView *)self heightAnchor];
    heightAnchor6 = [(UILayoutGuide *)self->_titleLayoutGuide heightAnchor];
    [(TwoLinesContentView *)self _verticalMargin];
    v67 = [heightAnchor5 constraintGreaterThanOrEqualToAnchor:heightAnchor6 constant:v66 + v66];
    v119[4] = v67;
    v68 = [NSArray arrayWithObjects:v119 count:5];
    [v118 addObjectsFromArray:v68];

    topAnchor8 = trailingAnchor11;
    topAnchor7 = leadingAnchor16;
  }

  v69 = [v118 copy];
  v70 = self->_constraints;
  self->_constraints = v69;

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)setIsParentCellSelected:(BOOL)selected
{
  if (self->_isParentCellSelected != selected)
  {
    self->_isParentCellSelected = selected;
    [(TwoLinesContentView *)self _updateLabelColors];
    [(TwoLinesContentView *)self _updateVibrantColor];
    viewModel = self->_viewModel;

    [(TwoLinesContentView *)self _updateViewsWithViewModel:viewModel];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v26.receiver = self;
  v26.super_class = TwoLinesContentView;
  [(MapsThemeView *)&v26 traitCollectionDidChange:changeCopy];
  traitCollection = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);

  if (v8)
  {
    [(TwoLinesContentView *)self _updateFonts];
  }

  traitCollection2 = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory3 = [traitCollection2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);
  preferredContentSizeCategory4 = [changeCopy preferredContentSizeCategory];
  if (IsAccessibilityCategory == UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory4))
  {
    traitCollection3 = [(TwoLinesContentView *)self traitCollection];
    userInterfaceStyle = [traitCollection3 userInterfaceStyle];
    userInterfaceStyle2 = [changeCopy userInterfaceStyle];

    if (userInterfaceStyle == userInterfaceStyle2)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  viewModel = [(TwoLinesContentView *)self viewModel];
  [(TwoLinesContentView *)self _updateViewsWithViewModel:viewModel];

LABEL_7:
  traitCollection4 = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory5 = [traitCollection4 preferredContentSizeCategory];
  v19 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory5);
  preferredContentSizeCategory6 = [changeCopy preferredContentSizeCategory];
  v21 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory6);

  if (v19 != v21)
  {
    [(TwoLinesContentView *)self _updateNumberOfLines];
    [(TwoLinesContentView *)self _updateConstraints];
  }

  traitCollection5 = [(TwoLinesContentView *)self traitCollection];
  preferredContentSizeCategory7 = [traitCollection5 preferredContentSizeCategory];
  preferredContentSizeCategory8 = [changeCopy preferredContentSizeCategory];
  v25 = sub_10008FB5C(preferredContentSizeCategory7, preferredContentSizeCategory8);

  if (v25)
  {
    [(TwoLinesContentView *)self _updateConstraintConstants];
  }
}

- (TwoLinesContentView)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = TwoLinesContentView;
  v3 = [(TwoLinesContentView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    layer = [(UIView *)v3->_badgeView layer];
    [layer setCornerRadius:5.0];

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

- (TwoLinesContentView)initWithFrame:(CGRect)frame contentViewType:(int)type
{
  v5 = [(TwoLinesContentView *)self initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_contentViewType = type;
    [(TwoLinesContentView *)v5 _updateLabelColors];
  }

  return v6;
}

@end