@interface CuratedCollectionHeaderView
- (CGSize)_publisherLogoSize;
- (CuratedCollectionHeaderView)initWithDelegate:(id)delegate;
- (CuratedCollectionHeaderViewDelegate)delegate;
- (double)_heroImageGradientAlphaForLayout:(int64_t)layout transitionFraction:(double)fraction;
- (double)_heroImageJoeAlphaForLayout:(int64_t)layout transitionFraction:(double)fraction;
- (double)_minScrolledHeight;
- (double)_scrollTransitionFraction;
- (double)unscrolledHeightForLayout:(int64_t)layout transitionFraction:(double)fraction;
- (id)_joeColor;
- (id)_setupPublisherLogoImageView;
- (id)_setupTitleLabel;
- (id)_titleFontForLayout:(int64_t)layout transitionFraction:(double)fraction;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_createSubviews;
- (void)_loadImageIfNeeded;
- (void)_setupConstraints;
- (void)_updateConstraintConstants;
- (void)_updateHeaderContent;
- (void)_updateHeaderStyling;
- (void)brickTapped;
- (void)publisherLogoImageViewTapped;
- (void)safeAreaInsetsDidChange;
- (void)setCuratedCollection:(id)collection;
- (void)setLayout:(int64_t)layout transitionFraction:(double)fraction;
- (void)setTableViewContentOffset:(double)offset;
- (void)setTableViewSubheaderContentHeight:(double)height;
@end

@implementation CuratedCollectionHeaderView

- (CuratedCollectionHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)publisherLogoImageViewTapped
{
  delegate = [(CuratedCollectionHeaderView *)self delegate];
  [delegate headerViewPublisherLogoTapped];
}

- (void)brickTapped
{
  delegate = [(CuratedCollectionHeaderView *)self delegate];
  [delegate headerViewBrickTapped];
}

- (double)unscrolledHeightForLayout:(int64_t)layout transitionFraction:(double)fraction
{
  if (layout <= 1)
  {
    if (layout == 1)
    {
      [(CuratedCollectionHeaderView *)self _valueForTransitionFraction:fraction startValue:112.0 endValue:198.0];
    }
  }

  else if (layout != 2)
  {
    if (layout == 3)
    {
      [(CuratedCollectionHeaderView *)self _valueForTransitionFraction:fraction startValue:16.0 endValue:0.0];
      [(CuratedCollectionHeaderView *)self _fullHeight];
      [(CuratedCollectionHeaderView *)self _valueForTransitionFraction:fraction startValue:198.0 endValue:v6];
    }

    else if (layout == 4)
    {
      [(CuratedCollectionHeaderView *)self _fullHeight];
    }
  }

  UIRoundToViewScale();
  return result;
}

- (void)_loadImageIfNeeded
{
  curatedCollection = [(CuratedCollectionHeaderView *)self curatedCollection];
  if (curatedCollection)
  {
    needsImageReload = self->_needsImageReload;

    if (needsImageReload)
    {
      self->_needsImageReload = 0;
      [(NSLayoutConstraint *)self->_heroImageViewWidthConstraint constant];
      if (v5 != 462.0)
      {
        [(NSLayoutConstraint *)self->_heroImageViewWidthConstraint setConstant:?];
      }

      [(CuratedCollectionHeaderView *)self _fullHeight];
      v7 = v6;
      [(CuratedCollectionHeaderView *)self _fullHeight];
      v9 = v8;
      objc_initWeak(&location, self);
      v10 = +[MKPlaceCollectionImageProvider sharedInstance];
      curatedCollection2 = [(CuratedCollectionHeaderView *)self curatedCollection];
      traitCollection = [(CuratedCollectionHeaderView *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100A0D9C0;
      v14[3] = &unk_101631DD8;
      objc_copyWeak(&v16, &location);
      v15 = &stru_101631DB0;
      [v10 loadGradientCoverImageWithCuratedCollection:curatedCollection2 size:preferredContentSizeCategory contentSizeCategory:7 usingImageSource:v14 completion:{v7, v9}];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_joeColor
{
  if (!self->_curatedCollection || (+[MKPlaceCollectionImageProvider sharedInstance](MKPlaceCollectionImageProvider, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), [v3 joeColorForCuratedCollection:self->_curatedCollection], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v4 = +[UIColor clearColor];
  }

  return v4;
}

- (void)_updateHeaderContent
{
  curatedCollection = [(CuratedCollectionHeaderView *)self curatedCollection];
  collectionLongTitle = [curatedCollection collectionLongTitle];
  v5 = collectionLongTitle;
  if (collectionLongTitle)
  {
    collectionTitle = collectionLongTitle;
  }

  else
  {
    curatedCollection2 = [(CuratedCollectionHeaderView *)self curatedCollection];
    collectionTitle = [curatedCollection2 collectionTitle];
  }

  [(UILabel *)self->_titleSingleLineLabel setText:collectionTitle];
  [(UILabel *)self->_titleMultiLineLabel setText:collectionTitle];
  v8 = +[MKSystemController sharedInstance];
  [v8 screenScale];
  v10 = v9;

  publisherAttribution = [(GEOPlaceCollection *)self->_curatedCollection publisherAttribution];
  if ([publisherAttribution logoWithoutPaddingIdentifier])
  {
    logoWithoutPaddingIdentifier = [publisherAttribution logoWithoutPaddingIdentifier];
  }

  else
  {
    logoWithoutPaddingIdentifier = [publisherAttribution logoIdentifier];
  }

  v13 = [MKIconManager imageForIconID:logoWithoutPaddingIdentifier contentScale:1 sizeGroup:0 nightMode:v10];
  if (v13)
  {
    image = [(UIImageView *)self->_publisherLogoImageView image];

    if (!image)
    {
      [(UIImageView *)self->_publisherLogoImageView setImage:v13];
      widthAnchor = [(UIImageView *)self->_publisherLogoImageView widthAnchor];
      heightAnchor = [(UIImageView *)self->_publisherLogoImageView heightAnchor];
      image2 = [(UIImageView *)self->_publisherLogoImageView image];
      [image2 size];
      v19 = v18;
      image3 = [(UIImageView *)self->_publisherLogoImageView image];
      [image3 size];
      v22 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:v19 / v21];
      logoWidthConstraint = self->_logoWidthConstraint;
      self->_logoWidthConstraint = v22;

      [(NSLayoutConstraint *)self->_logoWidthConstraint setActive:1];
    }

    image4 = [(UIImageView *)self->_titlePublisherLogoImageView image];

    if (!image4)
    {
      [(UIImageView *)self->_titlePublisherLogoImageView setImage:v13];
      widthAnchor2 = [(UIImageView *)self->_titlePublisherLogoImageView widthAnchor];
      heightAnchor2 = [(UIImageView *)self->_titlePublisherLogoImageView heightAnchor];
      image5 = [(UIImageView *)self->_titlePublisherLogoImageView image];
      [image5 size];
      v29 = v28;
      image6 = [(UIImageView *)self->_titlePublisherLogoImageView image];
      [image6 size];
      v32 = [widthAnchor2 constraintEqualToAnchor:heightAnchor2 multiplier:v29 / v31];
      titleLogoWidthConstraint = self->_titleLogoWidthConstraint;
      self->_titleLogoWidthConstraint = v32;

      [(NSLayoutConstraint *)self->_titleLogoWidthConstraint setActive:1];
    }
  }

  else
  {
    v34 = sub_1007982D8();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      if ([publisherAttribution logoWithoutPaddingIdentifier])
      {
        logoWithoutPaddingIdentifier2 = [publisherAttribution logoWithoutPaddingIdentifier];
      }

      else
      {
        logoWithoutPaddingIdentifier2 = [publisherAttribution logoIdentifier];
      }

      *buf = 67109120;
      v62 = logoWithoutPaddingIdentifier2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "PAM and Icon-Pack are not in sync. Icon Pack is missing icon for ID: %d", buf, 8u);
    }
  }

  v36 = +[MKPlaceCollectionImageProvider sharedInstance];
  v37 = [v36 isJoeColorManuallyCuratedForCuratedCollection:self->_curatedCollection];

  if (v37)
  {
    v38 = +[UIColor blackColor];
    v39 = [v38 colorWithAlphaComponent:0.0];
    [(UIView *)self->_blockBlackView setBackgroundColor:v39];

    v58 = +[UIColor blackColor];
    v40 = [v58 colorWithAlphaComponent:0.0];
    v60[0] = [v40 CGColor];
    v41 = +[UIColor blackColor];
    v42 = [v41 colorWithAlphaComponent:0.0];
    v60[1] = [v42 CGColor];
    v43 = [NSArray arrayWithObjects:v60 count:2];
    [self->_heroBlackGradientView gradientLayer];
    v44 = publisherAttribution;
    v45 = v13;
    v47 = v46 = collectionTitle;
    [v47 setColors:v43];

    collectionTitle = v46;
    v13 = v45;
    publisherAttribution = v44;

    v48 = +[UIColor blackColor];
    v49 = [v48 colorWithAlphaComponent:0.0];
    [(UIView *)self->_heroImageBlackView setBackgroundColor:v49];

    v50 = +[UIColor blackColor];
    v51 = [v50 colorWithAlphaComponent:0.0];
    [(UIView *)self->_titleBlackView setBackgroundColor:v51];

    v52 = +[UIColor blackColor];
    v53 = [v52 colorWithAlphaComponent:0.0];
    [(UIView *)self->_tableViewBlockBlackView setBackgroundColor:v53];
  }

  _joeColor = [(CuratedCollectionHeaderView *)self _joeColor];
  [(UIView *)self->_blockView setBackgroundColor:_joeColor];
  v55 = [_joeColor colorWithAlphaComponent:0.0];
  v59[0] = [v55 CGColor];
  v59[1] = [_joeColor CGColor];
  v56 = [NSArray arrayWithObjects:v59 count:2];
  gradientLayer = [self->_heroJoeGradientView gradientLayer];
  [gradientLayer setColors:v56];

  [(UIView *)self->_heroImageJoeView setBackgroundColor:_joeColor];
  [(UIView *)self->_titleJoeView setBackgroundColor:_joeColor];
  [(UIView *)self->_tableViewBlockView setBackgroundColor:_joeColor];
  self->_needsImageReload = 1;
  [(CuratedCollectionHeaderView *)self _loadImageIfNeeded];
}

- (void)setCuratedCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_curatedCollection != collectionCopy)
  {
    v6 = collectionCopy;
    objc_storeStrong(&self->_curatedCollection, collection);
    [(CuratedCollectionHeaderView *)self _updateHeaderContent];
    collectionCopy = v6;
  }
}

- (double)_minScrolledHeight
{
  [(ContainerHeaderView *)self->_titleHeaderView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v4 = v3;
  [(CuratedCollectionHeaderView *)self safeAreaInsets];
  return v5 + v4;
}

- (double)_scrollTransitionFraction
{
  v2 = 0.0;
  if (self->_layout == 4)
  {
    [(CuratedCollectionHeaderView *)self _minScrolledHeight];
    tableViewContentOffset = self->_tableViewContentOffset;
    if (tableViewContentOffset >= -104.0 - v4)
    {
      v2 = 1.0;
      if (tableViewContentOffset < -v4)
      {
        return fmin(fmax((tableViewContentOffset + v4) * 0.00961538462 + 1.0, 0.0), 1.0);
      }
    }
  }

  return v2;
}

- (CGSize)_publisherLogoSize
{
  v2 = sub_10000FA08(self);
  v3 = 180.0;
  if (v2 == 5)
  {
    v3 = 144.0;
  }

  v4 = 40.0;
  if (v2 == 5)
  {
    v4 = 32.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_titleFontForLayout:(int64_t)layout transitionFraction:(double)fraction
{
  if (layout < 3)
  {
    v5 = +[UIFont system22Bold];
LABEL_3:
    v4 = v5;
    goto LABEL_4;
  }

  if (layout == 3)
  {
    v9 = +[UIFont system22Bold];
    v10 = +[UIFont system28AdaptiveBoldShort];
    [v9 pointSize];
    v12 = v11;
    [v10 pointSize];
    [(CuratedCollectionHeaderView *)self _valueForTransitionFraction:fraction startValue:v12 endValue:v13];
    v15 = v14;
    fontDescriptor = [v9 fontDescriptor];
    v4 = [UIFont fontWithDescriptor:fontDescriptor size:v15];
  }

  else if (layout == 4)
  {
    if (sub_10000FA08(self) == 5)
    {
      +[UIFont system22AdaptiveCondensedBold];
    }

    else
    {
      +[UIFont system28AdaptiveBoldShort];
    }
    v5 = ;
    goto LABEL_3;
  }

LABEL_4:

  return v4;
}

- (double)_heroImageJoeAlphaForLayout:(int64_t)layout transitionFraction:(double)fraction
{
  layout = self->_layout;
  if ((layout - 2) < 3)
  {
    return 0.0;
  }

  v5 = 0.5;
  if (layout == 1)
  {
    return fmin(fmax(1.0 - fraction, 0.0), 1.0) * 0.5;
  }

  return v5;
}

- (double)_heroImageGradientAlphaForLayout:(int64_t)layout transitionFraction:(double)fraction
{
  layout = self->_layout;
  if ((layout - 2) < 3)
  {
    return 1.0;
  }

  v5 = 0.0;
  if (layout == 1)
  {
    return fraction;
  }

  return v5;
}

- (void)_updateHeaderStyling
{
  [(CuratedCollectionHeaderView *)self _heroImageGradientAlphaForLayout:self->_layout transitionFraction:self->_transitionFraction];
  [self->_heroJoeGradientView setAlpha:?];
  [(CuratedCollectionHeaderView *)self _heroImageJoeAlphaForLayout:self->_layout transitionFraction:self->_transitionFraction];
  [(UIView *)self->_heroImageJoeView setAlpha:?];
  v3 = +[UIFont system22Bold];
  [(UILabel *)self->_titleSingleLineLabel setFont:v3];

  v4 = +[UIFont system28Bold];
  [(UILabel *)self->_titleMultiLineLabel setFont:v4];

  [(CuratedCollectionHeaderView *)self _scrollTransitionFraction];
  v6 = v5;
  v7 = 1.0 - v5;
  [(UIImageView *)self->_publisherLogoImageView setAlpha:1.0 - v5];
  [(UILabel *)self->_titleMultiLineLabel setAlpha:v7];
  [(UIButton *)self->_titleMoreButton setAlpha:v7];
  [(UIView *)self->_titleJoeView setAlpha:v6];
  [(UIImageView *)self->_titlePublisherLogoImageView alpha];
  if ((v6 == 1.0) == (v8 != 1.0))
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100A0E7E4;
    v15 = &unk_101661AE0;
    selfCopy = self;
    v17 = v6 == 1.0;
    [UIView animateWithDuration:&v12 animations:0.2];
  }

  layout = self->_layout;
  v10 = 1;
  if ((layout - 1) < 3)
  {
    v11 = 0;
LABEL_8:
    [(UITapGestureRecognizer *)self->_publisherLogoTapGesture setEnabled:v11, v12, v13, v14, v15];
    [(UITapGestureRecognizer *)self->_titlePublisherLogoTapGesture setEnabled:v11];
    [(UITapGestureRecognizer *)self->_blockContentViewTapGestureRecognizer setEnabled:v10];
    v10 = 3;
    goto LABEL_9;
  }

  if (!layout)
  {
LABEL_9:
    [(UILabel *)self->_titleMultiLineLabel setNumberOfLines:v10, v12, v13, v14, v15];
    goto LABEL_10;
  }

  if (layout == 4)
  {
    v10 = 0;
    v11 = 1;
    goto LABEL_8;
  }

LABEL_10:
  [(CuratedCollectionHeaderView *)self _updateConstraintConstants:v12];
}

- (void)_updateConstraintConstants
{
  if (self->_layout)
  {
    [(CuratedCollectionHeaderView *)self _minScrolledHeight];
    v4 = v3;
    [(CuratedCollectionHeaderView *)self _fullHeight];
    tableViewContentOffset = self->_tableViewContentOffset;
    v6 = fmax(self->_tableViewSubheaderContentHeight - tableViewContentOffset, v4);
    v8 = fmin(v7, -tableViewContentOffset);
    v9 = 0.0;
    if (v8 > v4)
    {
      v4 = v8;
    }
  }

  else
  {
    v9 = 30.0;
    v6 = 112.0;
    v4 = 112.0;
  }

  [(NSLayoutConstraint *)self->_blockViewTopConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_blockViewLeadingConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_blockViewTrailingConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_blockViewHeightConstraint setConstant:v6];
  [(NSLayoutConstraint *)self->_blockContentViewHeightConstraint setConstant:v4];
  [(NSLayoutConstraint *)self->_titleMultiLineLabelBottomConstraint setConstant:-v9];
  [(NSLayoutConstraint *)self->_tableViewBlockViewTopConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_tableViewBlockViewLeadingConstraint setConstant:0.0];
  [(NSLayoutConstraint *)self->_tableViewBlockViewTrailingConstraint setConstant:-0.0];
  tableViewBlockViewHeightConstraint = self->_tableViewBlockViewHeightConstraint;

  [(NSLayoutConstraint *)tableViewBlockViewHeightConstraint setConstant:v6];
}

- (void)_setupConstraints
{
  v238 = +[NSMutableArray array];
  topAnchor = [(UIView *)self->_blockView topAnchor];
  topAnchor2 = [(CuratedCollectionHeaderView *)self topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2];
  blockViewTopConstraint = self->_blockViewTopConstraint;
  self->_blockViewTopConstraint = v5;

  leadingAnchor = [(UIView *)self->_blockView leadingAnchor];
  leadingAnchor2 = [(CuratedCollectionHeaderView *)self leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  blockViewLeadingConstraint = self->_blockViewLeadingConstraint;
  self->_blockViewLeadingConstraint = v9;

  trailingAnchor = [(UIView *)self->_blockView trailingAnchor];
  trailingAnchor2 = [(CuratedCollectionHeaderView *)self trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  blockViewTrailingConstraint = self->_blockViewTrailingConstraint;
  self->_blockViewTrailingConstraint = v13;

  heightAnchor = [(UIView *)self->_blockView heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:0.0];
  blockViewHeightConstraint = self->_blockViewHeightConstraint;
  self->_blockViewHeightConstraint = v16;

  heightAnchor2 = [(UIView *)self->_blockContentView heightAnchor];
  v19 = [heightAnchor2 constraintEqualToConstant:0.0];
  blockContentViewHeightConstraint = self->_blockContentViewHeightConstraint;
  self->_blockContentViewHeightConstraint = v19;

  widthAnchor = [(UIImageView *)self->_heroImageView widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:0.0];
  heroImageViewWidthConstraint = self->_heroImageViewWidthConstraint;
  self->_heroImageViewWidthConstraint = v22;

  bottomAnchor = [(UILabel *)self->_titleMultiLineLabel bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_blockContentView bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  titleMultiLineLabelBottomConstraint = self->_titleMultiLineLabelBottomConstraint;
  self->_titleMultiLineLabelBottomConstraint = v26;

  topAnchor3 = [(UIView *)self->_tableViewBlockView topAnchor];
  topAnchor4 = [(UIView *)self->_tableViewBackgroundView topAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  tableViewBlockViewTopConstraint = self->_tableViewBlockViewTopConstraint;
  self->_tableViewBlockViewTopConstraint = v30;

  leadingAnchor3 = [(UIView *)self->_tableViewBlockView leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_tableViewBackgroundView leadingAnchor];
  v34 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  tableViewBlockViewLeadingConstraint = self->_tableViewBlockViewLeadingConstraint;
  self->_tableViewBlockViewLeadingConstraint = v34;

  trailingAnchor3 = [(UIView *)self->_tableViewBlockView trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_tableViewBackgroundView trailingAnchor];
  v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  tableViewBlockViewTrailingConstraint = self->_tableViewBlockViewTrailingConstraint;
  self->_tableViewBlockViewTrailingConstraint = v38;

  heightAnchor3 = [(UIView *)self->_tableViewBlockView heightAnchor];
  v41 = [heightAnchor3 constraintEqualToConstant:0.0];
  tableViewBlockViewHeightConstraint = self->_tableViewBlockViewHeightConstraint;
  self->_tableViewBlockViewHeightConstraint = v41;

  LODWORD(v43) = 1144750080;
  [(NSLayoutConstraint *)self->_tableViewBlockViewTopConstraint setPriority:v43];
  LODWORD(v44) = 1144750080;
  [(NSLayoutConstraint *)self->_tableViewBlockViewLeadingConstraint setPriority:v44];
  LODWORD(v45) = 1144750080;
  [(NSLayoutConstraint *)self->_tableViewBlockViewTrailingConstraint setPriority:v45];
  v46 = self->_blockViewLeadingConstraint;
  v47 = self->_blockViewTrailingConstraint;
  v240[0] = self->_blockViewTopConstraint;
  v240[1] = v46;
  v48 = self->_blockViewHeightConstraint;
  v49 = self->_blockContentViewHeightConstraint;
  v240[2] = v47;
  v240[3] = v48;
  v240[4] = v49;
  topAnchor5 = [(UIView *)self->_blockBlackView topAnchor];
  topAnchor6 = [(UIView *)self->_blockView topAnchor];
  v235 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v240[5] = v235;
  leadingAnchor5 = [(UIView *)self->_blockBlackView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_blockView leadingAnchor];
  v232 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v240[6] = v232;
  trailingAnchor5 = [(UIView *)self->_blockBlackView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_blockView trailingAnchor];
  v229 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v240[7] = v229;
  bottomAnchor3 = [(UIView *)self->_blockBlackView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_blockView bottomAnchor];
  v226 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v240[8] = v226;
  topAnchor7 = [(UIView *)self->_blockContentView topAnchor];
  topAnchor8 = [(UIView *)self->_blockView topAnchor];
  v223 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v240[9] = v223;
  leadingAnchor7 = [(UIView *)self->_blockContentView leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_blockView leadingAnchor];
  v220 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v240[10] = v220;
  trailingAnchor7 = [(UIView *)self->_blockContentView trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_blockView trailingAnchor];
  v217 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v240[11] = v217;
  bottomAnchor5 = [(UIView *)self->_blockContentView bottomAnchor];
  bottomAnchor6 = [(CuratedCollectionHeaderView *)self bottomAnchor];
  v214 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v240[12] = v214;
  widthAnchor2 = [(UIImageView *)self->_heroImageView widthAnchor];
  heightAnchor4 = [(UIImageView *)self->_heroImageView heightAnchor];
  v211 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4 multiplier:1.0];
  v240[13] = v211;
  centerXAnchor = [(UIImageView *)self->_heroImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_blockContentView centerXAnchor];
  v208 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v240[14] = v208;
  centerYAnchor = [(UIImageView *)self->_heroImageView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_blockContentView centerYAnchor];
  v205 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v50 = self->_heroImageViewWidthConstraint;
  v240[15] = v205;
  v240[16] = v50;
  leadingAnchor9 = [self->_heroJoeGradientView leadingAnchor];
  leadingAnchor10 = [(UIView *)self->_blockContentView leadingAnchor];
  v202 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v240[17] = v202;
  trailingAnchor9 = [self->_heroJoeGradientView trailingAnchor];
  trailingAnchor10 = [(UIView *)self->_blockContentView trailingAnchor];
  v199 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v240[18] = v199;
  bottomAnchor7 = [self->_heroJoeGradientView bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_blockContentView bottomAnchor];
  v196 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:1.0];
  v240[19] = v196;
  heightAnchor5 = [self->_heroJoeGradientView heightAnchor];
  v194 = [heightAnchor5 constraintEqualToConstant:104.0];
  v240[20] = v194;
  topAnchor9 = [self->_heroBlackGradientView topAnchor];
  topAnchor10 = [self->_heroJoeGradientView topAnchor];
  v191 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v240[21] = v191;
  leadingAnchor11 = [self->_heroBlackGradientView leadingAnchor];
  leadingAnchor12 = [self->_heroJoeGradientView leadingAnchor];
  v188 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v240[22] = v188;
  trailingAnchor11 = [self->_heroBlackGradientView trailingAnchor];
  trailingAnchor12 = [self->_heroJoeGradientView trailingAnchor];
  v185 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v240[23] = v185;
  bottomAnchor9 = [self->_heroBlackGradientView bottomAnchor];
  bottomAnchor10 = [self->_heroJoeGradientView bottomAnchor];
  v182 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v240[24] = v182;
  topAnchor11 = [(UIView *)self->_heroImageJoeView topAnchor];
  topAnchor12 = [(UIView *)self->_blockContentView topAnchor];
  v179 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
  v240[25] = v179;
  leadingAnchor13 = [(UIView *)self->_heroImageJoeView leadingAnchor];
  leadingAnchor14 = [(UIView *)self->_blockContentView leadingAnchor];
  v176 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  v240[26] = v176;
  trailingAnchor13 = [(UIView *)self->_heroImageJoeView trailingAnchor];
  trailingAnchor14 = [(UIView *)self->_blockContentView trailingAnchor];
  v173 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
  v240[27] = v173;
  bottomAnchor11 = [(UIView *)self->_heroImageJoeView bottomAnchor];
  bottomAnchor12 = [(UIView *)self->_blockContentView bottomAnchor];
  v170 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
  v240[28] = v170;
  topAnchor13 = [(UIView *)self->_heroImageBlackView topAnchor];
  topAnchor14 = [(UIView *)self->_heroImageJoeView topAnchor];
  v167 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
  v240[29] = v167;
  leadingAnchor15 = [(UIView *)self->_heroImageBlackView leadingAnchor];
  leadingAnchor16 = [(UIView *)self->_heroImageJoeView leadingAnchor];
  v164 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
  v240[30] = v164;
  trailingAnchor15 = [(UIView *)self->_heroImageBlackView trailingAnchor];
  trailingAnchor16 = [(UIView *)self->_heroImageJoeView trailingAnchor];
  v161 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
  v240[31] = v161;
  bottomAnchor13 = [(UIView *)self->_heroImageBlackView bottomAnchor];
  bottomAnchor14 = [(UIView *)self->_heroImageJoeView bottomAnchor];
  v158 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14];
  v240[32] = v158;
  leadingAnchor17 = [(UIImageView *)self->_publisherLogoImageView leadingAnchor];
  leadingAnchor18 = [(UIView *)self->_blockContentView leadingAnchor];
  v155 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18 constant:16.0];
  v240[33] = v155;
  heightAnchor6 = [(UIImageView *)self->_publisherLogoImageView heightAnchor];
  [(CuratedCollectionHeaderView *)self _publisherLogoSize];
  v153 = [heightAnchor6 constraintEqualToConstant:v51];
  v240[34] = v153;
  topAnchor15 = [(UILabel *)self->_titleMultiLineLabel topAnchor];
  bottomAnchor15 = [(UIImageView *)self->_publisherLogoImageView bottomAnchor];
  v150 = [topAnchor15 constraintEqualToAnchor:bottomAnchor15 constant:4.0];
  v240[35] = v150;
  leadingAnchor19 = [(UILabel *)self->_titleMultiLineLabel leadingAnchor];
  leadingAnchor20 = [(UIView *)self->_blockContentView leadingAnchor];
  v147 = [leadingAnchor19 constraintEqualToAnchor:leadingAnchor20 constant:16.0];
  v240[36] = v147;
  trailingAnchor17 = [(UILabel *)self->_titleMultiLineLabel trailingAnchor];
  trailingAnchor18 = [(UIView *)self->_blockContentView trailingAnchor];
  v144 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18 constant:-16.0];
  v52 = self->_titleMultiLineLabelBottomConstraint;
  v240[37] = v144;
  v240[38] = v52;
  topAnchor16 = [(UIView *)self->_titleContainerView topAnchor];
  topAnchor17 = [(UIView *)self->_blockContentView topAnchor];
  v141 = [topAnchor16 constraintEqualToAnchor:topAnchor17];
  v240[39] = v141;
  leadingAnchor21 = [(UIView *)self->_titleContainerView leadingAnchor];
  leadingAnchor22 = [(UIView *)self->_blockContentView leadingAnchor];
  v138 = [leadingAnchor21 constraintEqualToAnchor:leadingAnchor22];
  v240[40] = v138;
  trailingAnchor19 = [(UIView *)self->_titleContainerView trailingAnchor];
  trailingAnchor20 = [(UIView *)self->_blockContentView trailingAnchor];
  v135 = [trailingAnchor19 constraintEqualToAnchor:trailingAnchor20];
  v240[41] = v135;
  topAnchor18 = [(UIView *)self->_titleJoeView topAnchor];
  topAnchor19 = [(UIView *)self->_titleContainerView topAnchor];
  v132 = [topAnchor18 constraintEqualToAnchor:topAnchor19];
  v240[42] = v132;
  leadingAnchor23 = [(UIView *)self->_titleJoeView leadingAnchor];
  leadingAnchor24 = [(UIView *)self->_titleContainerView leadingAnchor];
  v129 = [leadingAnchor23 constraintEqualToAnchor:leadingAnchor24];
  v240[43] = v129;
  trailingAnchor21 = [(UIView *)self->_titleJoeView trailingAnchor];
  trailingAnchor22 = [(UIView *)self->_titleContainerView trailingAnchor];
  v126 = [trailingAnchor21 constraintEqualToAnchor:trailingAnchor22];
  v240[44] = v126;
  bottomAnchor16 = [(UIView *)self->_titleJoeView bottomAnchor];
  bottomAnchor17 = [(UIView *)self->_titleContainerView bottomAnchor];
  v123 = [bottomAnchor16 constraintEqualToAnchor:bottomAnchor17];
  v240[45] = v123;
  topAnchor20 = [(UIView *)self->_titleBlackView topAnchor];
  topAnchor21 = [(UIView *)self->_titleJoeView topAnchor];
  v120 = [topAnchor20 constraintEqualToAnchor:topAnchor21];
  v240[46] = v120;
  leadingAnchor25 = [(UIView *)self->_titleBlackView leadingAnchor];
  leadingAnchor26 = [(UIView *)self->_titleJoeView leadingAnchor];
  v117 = [leadingAnchor25 constraintEqualToAnchor:leadingAnchor26];
  v240[47] = v117;
  trailingAnchor23 = [(UIView *)self->_titleBlackView trailingAnchor];
  trailingAnchor24 = [(UIView *)self->_titleJoeView trailingAnchor];
  v114 = [trailingAnchor23 constraintEqualToAnchor:trailingAnchor24];
  v240[48] = v114;
  bottomAnchor18 = [(UIView *)self->_titleBlackView bottomAnchor];
  bottomAnchor19 = [(UIView *)self->_titleJoeView bottomAnchor];
  v111 = [bottomAnchor18 constraintEqualToAnchor:bottomAnchor19];
  v240[49] = v111;
  topAnchor22 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  safeAreaLayoutGuide = [(UIView *)self->_titleContainerView safeAreaLayoutGuide];
  topAnchor23 = [safeAreaLayoutGuide topAnchor];
  v107 = [topAnchor22 constraintEqualToAnchor:topAnchor23];
  v240[50] = v107;
  leadingAnchor27 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  leadingAnchor28 = [(UIView *)self->_titleContainerView leadingAnchor];
  v104 = [leadingAnchor27 constraintEqualToAnchor:leadingAnchor28];
  v240[51] = v104;
  trailingAnchor25 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  trailingAnchor26 = [(UIView *)self->_titleContainerView trailingAnchor];
  v101 = [trailingAnchor25 constraintEqualToAnchor:trailingAnchor26];
  v240[52] = v101;
  bottomAnchor20 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  bottomAnchor21 = [(UIView *)self->_titleContainerView bottomAnchor];
  v98 = [bottomAnchor20 constraintEqualToAnchor:bottomAnchor21];
  v240[53] = v98;
  topAnchor24 = [(UIImageView *)self->_titlePublisherLogoImageView topAnchor];
  topAnchor25 = [(UIView *)self->_titleContentView topAnchor];
  sub_10000FA08(self);
  v95 = [topAnchor24 constraintEqualToAnchor:topAnchor25 constant:10.0];
  v240[54] = v95;
  leadingAnchor29 = [(UIImageView *)self->_titlePublisherLogoImageView leadingAnchor];
  leadingAnchor30 = [(UIView *)self->_titleContentView leadingAnchor];
  v92 = [leadingAnchor29 constraintEqualToAnchor:leadingAnchor30 constant:16.0];
  v240[55] = v92;
  heightAnchor7 = [(UIImageView *)self->_titlePublisherLogoImageView heightAnchor];
  [(CuratedCollectionHeaderView *)self _publisherLogoSize];
  v90 = [heightAnchor7 constraintEqualToConstant:v53];
  v240[56] = v90;
  topAnchor26 = [(UILabel *)self->_titleSingleLineLabel topAnchor];
  bottomAnchor22 = [(UIImageView *)self->_titlePublisherLogoImageView bottomAnchor];
  v87 = [topAnchor26 constraintEqualToAnchor:bottomAnchor22 constant:4.0];
  v240[57] = v87;
  leadingAnchor31 = [(UILabel *)self->_titleSingleLineLabel leadingAnchor];
  leadingAnchor32 = [(UIView *)self->_titleContentView leadingAnchor];
  v84 = [leadingAnchor31 constraintEqualToAnchor:leadingAnchor32 constant:16.0];
  v240[58] = v84;
  trailingAnchor27 = [(UILabel *)self->_titleSingleLineLabel trailingAnchor];
  trailingAnchor28 = [(UIView *)self->_titleContentView trailingAnchor];
  v81 = [trailingAnchor27 constraintEqualToAnchor:trailingAnchor28];
  v240[59] = v81;
  bottomAnchor23 = [(UILabel *)self->_titleSingleLineLabel bottomAnchor];
  bottomAnchor24 = [(UIView *)self->_titleContentView bottomAnchor];
  v78 = [bottomAnchor23 constraintEqualToAnchor:bottomAnchor24 constant:-12.0];
  v54 = self->_tableViewBlockViewTopConstraint;
  v55 = self->_tableViewBlockViewLeadingConstraint;
  v240[60] = v78;
  v240[61] = v54;
  v56 = self->_tableViewBlockViewTrailingConstraint;
  v57 = self->_tableViewBlockViewHeightConstraint;
  v240[62] = v55;
  v240[63] = v56;
  v240[64] = v57;
  topAnchor27 = [(UIView *)self->_tableViewBlockBlackView topAnchor];
  topAnchor28 = [(UIView *)self->_tableViewBlockView topAnchor];
  v75 = [topAnchor27 constraintEqualToAnchor:topAnchor28];
  v240[65] = v75;
  leadingAnchor33 = [(UIView *)self->_tableViewBlockBlackView leadingAnchor];
  leadingAnchor34 = [(UIView *)self->_tableViewBlockView leadingAnchor];
  v59 = [leadingAnchor33 constraintEqualToAnchor:leadingAnchor34];
  v240[66] = v59;
  trailingAnchor29 = [(UIView *)self->_tableViewBlockBlackView trailingAnchor];
  trailingAnchor30 = [(UIView *)self->_tableViewBlockView trailingAnchor];
  v62 = [trailingAnchor29 constraintEqualToAnchor:trailingAnchor30];
  v240[67] = v62;
  bottomAnchor25 = [(UIView *)self->_tableViewBlockBlackView bottomAnchor];
  bottomAnchor26 = [(UIView *)self->_tableViewBlockView bottomAnchor];
  v65 = [bottomAnchor25 constraintEqualToAnchor:bottomAnchor26];
  v240[68] = v65;
  v66 = [NSArray arrayWithObjects:v240 count:69];
  [v238 addObjectsFromArray:v66];

  if (sub_10000FA08(self) == 5)
  {
    leadingAnchor35 = [(UIButton *)self->_titleMoreButton leadingAnchor];
    leadingAnchor36 = [(UIView *)self->_titleContentView leadingAnchor];
    v69 = [leadingAnchor35 constraintEqualToAnchor:leadingAnchor36 constant:12.0];
    v239[0] = v69;
    topAnchor29 = [(UIButton *)self->_titleMoreButton topAnchor];
    topAnchor30 = [(UIView *)self->_titleContentView topAnchor];
    v72 = [topAnchor29 constraintEqualToAnchor:topAnchor30 constant:28.0];
    v239[1] = v72;
    v73 = [NSArray arrayWithObjects:v239 count:2];
    [NSLayoutConstraint activateConstraints:v73];
  }

  [(CuratedCollectionHeaderView *)self _updateConstraintConstants];
  [NSLayoutConstraint activateConstraints:v238];
}

- (id)_setupTitleLabel
{
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[UIColor whiteColor];
  [v2 setTextColor:v3];

  [v2 setAccessibilityIdentifier:@"TitleLabel"];

  return v2;
}

- (id)_setupPublisherLogoImageView
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setUserInteractionEnabled:1];
  curatedCollection = [(CuratedCollectionHeaderView *)self curatedCollection];
  publisherAttribution = [curatedCollection publisherAttribution];
  displayName = [publisherAttribution displayName];
  [v3 setAccessibilityLabel:displayName];

  [v3 setAccessibilityIgnoresInvertColors:1];
  [v3 setContentMode:1];

  return v3;
}

- (void)_createSubviews
{
  [(CuratedCollectionHeaderView *)self setClipsToBounds:1];
  layer = [(CuratedCollectionHeaderView *)self layer];
  [layer setMaskedCorners:3];

  v4 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  blockView = self->_blockView;
  self->_blockView = v8;

  [(UIView *)self->_blockView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_blockView setClipsToBounds:1];
  [(CuratedCollectionHeaderView *)self addSubview:self->_blockView];
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  blockBlackView = self->_blockBlackView;
  self->_blockBlackView = v10;

  [(UIView *)self->_blockBlackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = +[UIColor blackColor];
  v13 = [v12 colorWithAlphaComponent:0.3];
  [(UIView *)self->_blockBlackView setBackgroundColor:v13];

  [(UIView *)self->_blockView addSubview:self->_blockBlackView];
  v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  blockContentView = self->_blockContentView;
  self->_blockContentView = v14;

  [(UIView *)self->_blockContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_blockContentView setUserInteractionEnabled:1];
  [(UIView *)self->_blockContentView setAccessibilityIdentifier:@"BlockContentView"];
  [(UIView *)self->_blockView addSubview:self->_blockContentView];
  v16 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"brickTapped"];
  blockContentViewTapGestureRecognizer = self->_blockContentViewTapGestureRecognizer;
  self->_blockContentViewTapGestureRecognizer = v16;

  [(UIView *)self->_blockContentView addGestureRecognizer:self->_blockContentViewTapGestureRecognizer];
  v18 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  heroImageView = self->_heroImageView;
  self->_heroImageView = v18;

  [(UIImageView *)self->_heroImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_heroImageView setContentMode:2];
  [(UIImageView *)self->_heroImageView setClipsToBounds:1];
  [(UIImageView *)self->_heroImageView setAccessibilityIdentifier:@"HeroImageView"];
  [(UIView *)self->_blockContentView addSubview:self->_heroImageView];
  height = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  heroJoeGradientView = self->_heroJoeGradientView;
  self->_heroJoeGradientView = height;

  [self->_heroJoeGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  gradientLayer = [self->_heroJoeGradientView gradientLayer];
  [gradientLayer setStartPoint:{0.5, 0.0}];

  gradientLayer2 = [self->_heroJoeGradientView gradientLayer];
  [gradientLayer2 setEndPoint:{0.5, 1.0}];

  [(UIView *)self->_blockContentView addSubview:self->_heroJoeGradientView];
  height2 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  heroBlackGradientView = self->_heroBlackGradientView;
  self->_heroBlackGradientView = height2;

  [self->_heroBlackGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  gradientLayer3 = [self->_heroBlackGradientView gradientLayer];
  [gradientLayer3 setStartPoint:{0.5, 0.0}];

  gradientLayer4 = [self->_heroBlackGradientView gradientLayer];
  [gradientLayer4 setEndPoint:{0.5, 1.0}];

  v28 = +[UIColor blackColor];
  v29 = [v28 colorWithAlphaComponent:0.0];
  v79[0] = [v29 CGColor];
  v30 = +[UIColor blackColor];
  v31 = [v30 colorWithAlphaComponent:0.3];
  v79[1] = [v31 CGColor];
  v32 = [NSArray arrayWithObjects:v79 count:2];
  gradientLayer5 = [self->_heroBlackGradientView gradientLayer];
  [gradientLayer5 setColors:v32];

  [self->_heroJoeGradientView addSubview:self->_heroBlackGradientView];
  v34 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  heroImageJoeView = self->_heroImageJoeView;
  self->_heroImageJoeView = v34;

  [(UIView *)self->_heroImageJoeView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_blockContentView addSubview:self->_heroImageJoeView];
  v36 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  heroImageBlackView = self->_heroImageBlackView;
  self->_heroImageBlackView = v36;

  [(UIView *)self->_heroImageBlackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = +[UIColor blackColor];
  v39 = [v38 colorWithAlphaComponent:0.3];
  [(UIView *)self->_heroImageBlackView setBackgroundColor:v39];

  [(UIView *)self->_heroImageJoeView addSubview:self->_heroImageBlackView];
  _setupPublisherLogoImageView = [(CuratedCollectionHeaderView *)self _setupPublisherLogoImageView];
  publisherLogoImageView = self->_publisherLogoImageView;
  self->_publisherLogoImageView = _setupPublisherLogoImageView;

  [(UIImageView *)self->_publisherLogoImageView setAccessibilityIdentifier:@"PublisherLogoImageView"];
  [(UIView *)self->_blockContentView addSubview:self->_publisherLogoImageView];
  v42 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"publisherLogoImageViewTapped"];
  publisherLogoTapGesture = self->_publisherLogoTapGesture;
  self->_publisherLogoTapGesture = v42;

  [(UITapGestureRecognizer *)self->_publisherLogoTapGesture setNumberOfTapsRequired:1];
  [(UIImageView *)self->_publisherLogoImageView addGestureRecognizer:self->_publisherLogoTapGesture];
  _setupTitleLabel = [(CuratedCollectionHeaderView *)self _setupTitleLabel];
  titleMultiLineLabel = self->_titleMultiLineLabel;
  self->_titleMultiLineLabel = _setupTitleLabel;

  [(UILabel *)self->_titleMultiLineLabel setNumberOfLines:3];
  [(UIView *)self->_blockContentView addSubview:self->_titleMultiLineLabel];
  v46 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleContainerView = self->_titleContainerView;
  self->_titleContainerView = v46;

  [(UIView *)self->_titleContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_titleContainerView setAccessibilityIdentifier:@"TitleContainerView"];
  [(UIView *)self->_blockContentView addSubview:self->_titleContainerView];
  v48 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleJoeView = self->_titleJoeView;
  self->_titleJoeView = v48;

  [(UIView *)self->_titleJoeView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_titleJoeView setAlpha:0.0];
  [(UIView *)self->_titleContainerView addSubview:self->_titleJoeView];
  v50 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleBlackView = self->_titleBlackView;
  self->_titleBlackView = v50;

  [(UIView *)self->_titleBlackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = +[UIColor blackColor];
  v53 = [v52 colorWithAlphaComponent:0.3];
  [(UIView *)self->_titleBlackView setBackgroundColor:v53];

  [(UIView *)self->_titleJoeView addSubview:self->_titleBlackView];
  v54 = [[ContainerHeaderView alloc] initWithCardButtonType:1 cardButtonBlurred:1];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = v54;

  _headerTapGesture = [(ContainerHeaderView *)self->_titleHeaderView _headerTapGesture];
  [_headerTapGesture setCancelsTouchesInView:0];

  [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  delegate = [(CuratedCollectionHeaderView *)self delegate];
  [(ContainerHeaderView *)self->_titleHeaderView setDelegate:delegate];

  [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:0.0];
  [(UIView *)self->_blockContentView addSubview:self->_titleHeaderView];
  v58 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleContentView = self->_titleContentView;
  self->_titleContentView = v58;

  [(UIView *)self->_titleContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_titleContentView setAccessibilityIdentifier:@"TitleContentView"];
  [(ContainerHeaderView *)self->_titleHeaderView setTitleView:self->_titleContentView];
  _setupPublisherLogoImageView2 = [(CuratedCollectionHeaderView *)self _setupPublisherLogoImageView];
  titlePublisherLogoImageView = self->_titlePublisherLogoImageView;
  self->_titlePublisherLogoImageView = _setupPublisherLogoImageView2;

  [(UIImageView *)self->_titlePublisherLogoImageView setAccessibilityIdentifier:@"TitlePublisherLogoImageView"];
  [(UIView *)self->_titleContentView addSubview:self->_titlePublisherLogoImageView];
  v62 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"publisherLogoImageViewTapped"];
  titlePublisherLogoTapGesture = self->_titlePublisherLogoTapGesture;
  self->_titlePublisherLogoTapGesture = v62;

  [(UITapGestureRecognizer *)self->_titlePublisherLogoTapGesture setNumberOfTapsRequired:1];
  [(UIImageView *)self->_titlePublisherLogoImageView addGestureRecognizer:self->_titlePublisherLogoTapGesture];
  _setupTitleLabel2 = [(CuratedCollectionHeaderView *)self _setupTitleLabel];
  titleSingleLineLabel = self->_titleSingleLineLabel;
  self->_titleSingleLineLabel = _setupTitleLabel2;

  [(UILabel *)self->_titleSingleLineLabel setNumberOfLines:1];
  [(UIView *)self->_titleContentView addSubview:self->_titleSingleLineLabel];
  if (sub_10000FA08(self) == 5)
  {
    v66 = [UIButton _maps_cardButtonMacCustomButtonWithSystemImageNamed:@"ellipsis.circle.fill"];
    titleMoreButton = self->_titleMoreButton;
    self->_titleMoreButton = v66;

    [(UIButton *)self->_titleMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_titleMoreButton setShowsMenuAsPrimaryAction:1];
    delegate2 = [(CuratedCollectionHeaderView *)self delegate];
    menuForQuickActionButton = [delegate2 menuForQuickActionButton];
    [(UIButton *)self->_titleMoreButton setMenu:menuForQuickActionButton];

    v70 = +[UIColor whiteColor];
    [(UIButton *)self->_titleMoreButton setTintColor:v70];

    [(UIView *)self->_titleContentView addSubview:self->_titleMoreButton];
  }

  v71 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  tableViewBackgroundView = self->_tableViewBackgroundView;
  self->_tableViewBackgroundView = v71;

  v73 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  tableViewBlockView = self->_tableViewBlockView;
  self->_tableViewBlockView = v73;

  [(UIView *)self->_tableViewBlockView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_tableViewBlockView setClipsToBounds:1];
  [(UIView *)self->_tableViewBlockView setAccessibilityIdentifier:@"TableViewBlockView"];
  [(UIView *)self->_tableViewBackgroundView addSubview:self->_tableViewBlockView];
  v75 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  tableViewBlockBlackView = self->_tableViewBlockBlackView;
  self->_tableViewBlockBlackView = v75;

  [(UIView *)self->_tableViewBlockBlackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v77 = +[UIColor blackColor];
  v78 = [v77 colorWithAlphaComponent:0.3];
  [(UIView *)self->_tableViewBlockBlackView setBackgroundColor:v78];

  [(UIView *)self->_tableViewBlockView addSubview:self->_tableViewBlockBlackView];
}

- (void)setTableViewSubheaderContentHeight:(double)height
{
  if (self->_tableViewSubheaderContentHeight != height)
  {
    self->_tableViewSubheaderContentHeight = height;
    [(CuratedCollectionHeaderView *)self _updateConstraintConstants];
  }
}

- (void)setTableViewContentOffset:(double)offset
{
  if (self->_tableViewContentOffset != offset)
  {
    self->_tableViewContentOffset = offset;
    [(CuratedCollectionHeaderView *)self _updateHeaderStyling];
  }
}

- (void)setLayout:(int64_t)layout transitionFraction:(double)fraction
{
  if (self->_layout != layout || self->_transitionFraction != fraction)
  {
    self->_layout = layout;
    self->_transitionFraction = fraction;
    if (layout == 4)
    {
      [(CuratedCollectionHeaderView *)self unscrolledHeightForCurrentLayout];
      self->_tableViewContentOffset = -v5;
    }

    [(CuratedCollectionHeaderView *)self _updateHeaderStyling];
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionHeaderView;
  [(CuratedCollectionHeaderView *)&v3 safeAreaInsetsDidChange];
  [(CuratedCollectionHeaderView *)self _updateHeaderStyling];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CuratedCollectionHeaderView;
  v6 = [(CuratedCollectionHeaderView *)&v9 hitTest:event withEvent:test.x, test.y];
  layout = self->_layout;
  if (layout < 4)
  {
    goto LABEL_2;
  }

  if (layout == 4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || v6 == self->_publisherLogoImageView || [(UIImageView *)v6 isDescendantOfView:self->_titleHeaderView])
    {
LABEL_2:
      v4 = v6;
      goto LABEL_3;
    }

    v4 = 0;
  }

LABEL_3:

  return v4;
}

- (CuratedCollectionHeaderView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CuratedCollectionHeaderView;
  v5 = [(CuratedCollectionHeaderView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_layout = 2;
    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(CuratedCollectionHeaderView *)v6 setAccessibilityIdentifier:@"CuratedCollectionHeader"];
    [(CuratedCollectionHeaderView *)v6 _createSubviews];
    [(CuratedCollectionHeaderView *)v6 _setupConstraints];
    [(CuratedCollectionHeaderView *)v6 _updateHeaderStyling];
    v6->_needsImageReload = 1;
  }

  return v6;
}

@end