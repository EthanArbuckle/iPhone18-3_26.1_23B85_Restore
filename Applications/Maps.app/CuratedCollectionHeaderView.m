@interface CuratedCollectionHeaderView
- (CGSize)_publisherLogoSize;
- (CuratedCollectionHeaderView)initWithDelegate:(id)a3;
- (CuratedCollectionHeaderViewDelegate)delegate;
- (double)_heroImageGradientAlphaForLayout:(int64_t)a3 transitionFraction:(double)a4;
- (double)_heroImageJoeAlphaForLayout:(int64_t)a3 transitionFraction:(double)a4;
- (double)_minScrolledHeight;
- (double)_scrollTransitionFraction;
- (double)unscrolledHeightForLayout:(int64_t)a3 transitionFraction:(double)a4;
- (id)_joeColor;
- (id)_setupPublisherLogoImageView;
- (id)_setupTitleLabel;
- (id)_titleFontForLayout:(int64_t)a3 transitionFraction:(double)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_createSubviews;
- (void)_loadImageIfNeeded;
- (void)_setupConstraints;
- (void)_updateConstraintConstants;
- (void)_updateHeaderContent;
- (void)_updateHeaderStyling;
- (void)brickTapped;
- (void)publisherLogoImageViewTapped;
- (void)safeAreaInsetsDidChange;
- (void)setCuratedCollection:(id)a3;
- (void)setLayout:(int64_t)a3 transitionFraction:(double)a4;
- (void)setTableViewContentOffset:(double)a3;
- (void)setTableViewSubheaderContentHeight:(double)a3;
@end

@implementation CuratedCollectionHeaderView

- (CuratedCollectionHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)publisherLogoImageViewTapped
{
  v2 = [(CuratedCollectionHeaderView *)self delegate];
  [v2 headerViewPublisherLogoTapped];
}

- (void)brickTapped
{
  v2 = [(CuratedCollectionHeaderView *)self delegate];
  [v2 headerViewBrickTapped];
}

- (double)unscrolledHeightForLayout:(int64_t)a3 transitionFraction:(double)a4
{
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      [(CuratedCollectionHeaderView *)self _valueForTransitionFraction:a4 startValue:112.0 endValue:198.0];
    }
  }

  else if (a3 != 2)
  {
    if (a3 == 3)
    {
      [(CuratedCollectionHeaderView *)self _valueForTransitionFraction:a4 startValue:16.0 endValue:0.0];
      [(CuratedCollectionHeaderView *)self _fullHeight];
      [(CuratedCollectionHeaderView *)self _valueForTransitionFraction:a4 startValue:198.0 endValue:v6];
    }

    else if (a3 == 4)
    {
      [(CuratedCollectionHeaderView *)self _fullHeight];
    }
  }

  UIRoundToViewScale();
  return result;
}

- (void)_loadImageIfNeeded
{
  v3 = [(CuratedCollectionHeaderView *)self curatedCollection];
  if (v3)
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
      v11 = [(CuratedCollectionHeaderView *)self curatedCollection];
      v12 = [(CuratedCollectionHeaderView *)self traitCollection];
      v13 = [v12 preferredContentSizeCategory];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100A0D9C0;
      v14[3] = &unk_101631DD8;
      objc_copyWeak(&v16, &location);
      v15 = &stru_101631DB0;
      [v10 loadGradientCoverImageWithCuratedCollection:v11 size:v13 contentSizeCategory:7 usingImageSource:v14 completion:{v7, v9}];

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
  v3 = [(CuratedCollectionHeaderView *)self curatedCollection];
  v4 = [v3 collectionLongTitle];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(CuratedCollectionHeaderView *)self curatedCollection];
    v6 = [v7 collectionTitle];
  }

  [(UILabel *)self->_titleSingleLineLabel setText:v6];
  [(UILabel *)self->_titleMultiLineLabel setText:v6];
  v8 = +[MKSystemController sharedInstance];
  [v8 screenScale];
  v10 = v9;

  v11 = [(GEOPlaceCollection *)self->_curatedCollection publisherAttribution];
  if ([v11 logoWithoutPaddingIdentifier])
  {
    v12 = [v11 logoWithoutPaddingIdentifier];
  }

  else
  {
    v12 = [v11 logoIdentifier];
  }

  v13 = [MKIconManager imageForIconID:v12 contentScale:1 sizeGroup:0 nightMode:v10];
  if (v13)
  {
    v14 = [(UIImageView *)self->_publisherLogoImageView image];

    if (!v14)
    {
      [(UIImageView *)self->_publisherLogoImageView setImage:v13];
      v15 = [(UIImageView *)self->_publisherLogoImageView widthAnchor];
      v16 = [(UIImageView *)self->_publisherLogoImageView heightAnchor];
      v17 = [(UIImageView *)self->_publisherLogoImageView image];
      [v17 size];
      v19 = v18;
      v20 = [(UIImageView *)self->_publisherLogoImageView image];
      [v20 size];
      v22 = [v15 constraintEqualToAnchor:v16 multiplier:v19 / v21];
      logoWidthConstraint = self->_logoWidthConstraint;
      self->_logoWidthConstraint = v22;

      [(NSLayoutConstraint *)self->_logoWidthConstraint setActive:1];
    }

    v24 = [(UIImageView *)self->_titlePublisherLogoImageView image];

    if (!v24)
    {
      [(UIImageView *)self->_titlePublisherLogoImageView setImage:v13];
      v25 = [(UIImageView *)self->_titlePublisherLogoImageView widthAnchor];
      v26 = [(UIImageView *)self->_titlePublisherLogoImageView heightAnchor];
      v27 = [(UIImageView *)self->_titlePublisherLogoImageView image];
      [v27 size];
      v29 = v28;
      v30 = [(UIImageView *)self->_titlePublisherLogoImageView image];
      [v30 size];
      v32 = [v25 constraintEqualToAnchor:v26 multiplier:v29 / v31];
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
      if ([v11 logoWithoutPaddingIdentifier])
      {
        v35 = [v11 logoWithoutPaddingIdentifier];
      }

      else
      {
        v35 = [v11 logoIdentifier];
      }

      *buf = 67109120;
      v62 = v35;
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
    v44 = v11;
    v45 = v13;
    v47 = v46 = v6;
    [v47 setColors:v43];

    v6 = v46;
    v13 = v45;
    v11 = v44;

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

  v54 = [(CuratedCollectionHeaderView *)self _joeColor];
  [(UIView *)self->_blockView setBackgroundColor:v54];
  v55 = [v54 colorWithAlphaComponent:0.0];
  v59[0] = [v55 CGColor];
  v59[1] = [v54 CGColor];
  v56 = [NSArray arrayWithObjects:v59 count:2];
  v57 = [self->_heroJoeGradientView gradientLayer];
  [v57 setColors:v56];

  [(UIView *)self->_heroImageJoeView setBackgroundColor:v54];
  [(UIView *)self->_titleJoeView setBackgroundColor:v54];
  [(UIView *)self->_tableViewBlockView setBackgroundColor:v54];
  self->_needsImageReload = 1;
  [(CuratedCollectionHeaderView *)self _loadImageIfNeeded];
}

- (void)setCuratedCollection:(id)a3
{
  v5 = a3;
  if (self->_curatedCollection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_curatedCollection, a3);
    [(CuratedCollectionHeaderView *)self _updateHeaderContent];
    v5 = v6;
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

- (id)_titleFontForLayout:(int64_t)a3 transitionFraction:(double)a4
{
  if (a3 < 3)
  {
    v5 = +[UIFont system22Bold];
LABEL_3:
    v4 = v5;
    goto LABEL_4;
  }

  if (a3 == 3)
  {
    v9 = +[UIFont system22Bold];
    v10 = +[UIFont system28AdaptiveBoldShort];
    [v9 pointSize];
    v12 = v11;
    [v10 pointSize];
    [(CuratedCollectionHeaderView *)self _valueForTransitionFraction:a4 startValue:v12 endValue:v13];
    v15 = v14;
    v16 = [v9 fontDescriptor];
    v4 = [UIFont fontWithDescriptor:v16 size:v15];
  }

  else if (a3 == 4)
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

- (double)_heroImageJoeAlphaForLayout:(int64_t)a3 transitionFraction:(double)a4
{
  layout = self->_layout;
  if ((layout - 2) < 3)
  {
    return 0.0;
  }

  v5 = 0.5;
  if (layout == 1)
  {
    return fmin(fmax(1.0 - a4, 0.0), 1.0) * 0.5;
  }

  return v5;
}

- (double)_heroImageGradientAlphaForLayout:(int64_t)a3 transitionFraction:(double)a4
{
  layout = self->_layout;
  if ((layout - 2) < 3)
  {
    return 1.0;
  }

  v5 = 0.0;
  if (layout == 1)
  {
    return a4;
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
    v16 = self;
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
  v3 = [(UIView *)self->_blockView topAnchor];
  v4 = [(CuratedCollectionHeaderView *)self topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  blockViewTopConstraint = self->_blockViewTopConstraint;
  self->_blockViewTopConstraint = v5;

  v7 = [(UIView *)self->_blockView leadingAnchor];
  v8 = [(CuratedCollectionHeaderView *)self leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  blockViewLeadingConstraint = self->_blockViewLeadingConstraint;
  self->_blockViewLeadingConstraint = v9;

  v11 = [(UIView *)self->_blockView trailingAnchor];
  v12 = [(CuratedCollectionHeaderView *)self trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  blockViewTrailingConstraint = self->_blockViewTrailingConstraint;
  self->_blockViewTrailingConstraint = v13;

  v15 = [(UIView *)self->_blockView heightAnchor];
  v16 = [v15 constraintEqualToConstant:0.0];
  blockViewHeightConstraint = self->_blockViewHeightConstraint;
  self->_blockViewHeightConstraint = v16;

  v18 = [(UIView *)self->_blockContentView heightAnchor];
  v19 = [v18 constraintEqualToConstant:0.0];
  blockContentViewHeightConstraint = self->_blockContentViewHeightConstraint;
  self->_blockContentViewHeightConstraint = v19;

  v21 = [(UIImageView *)self->_heroImageView widthAnchor];
  v22 = [v21 constraintEqualToConstant:0.0];
  heroImageViewWidthConstraint = self->_heroImageViewWidthConstraint;
  self->_heroImageViewWidthConstraint = v22;

  v24 = [(UILabel *)self->_titleMultiLineLabel bottomAnchor];
  v25 = [(UIView *)self->_blockContentView bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  titleMultiLineLabelBottomConstraint = self->_titleMultiLineLabelBottomConstraint;
  self->_titleMultiLineLabelBottomConstraint = v26;

  v28 = [(UIView *)self->_tableViewBlockView topAnchor];
  v29 = [(UIView *)self->_tableViewBackgroundView topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  tableViewBlockViewTopConstraint = self->_tableViewBlockViewTopConstraint;
  self->_tableViewBlockViewTopConstraint = v30;

  v32 = [(UIView *)self->_tableViewBlockView leadingAnchor];
  v33 = [(UIView *)self->_tableViewBackgroundView leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  tableViewBlockViewLeadingConstraint = self->_tableViewBlockViewLeadingConstraint;
  self->_tableViewBlockViewLeadingConstraint = v34;

  v36 = [(UIView *)self->_tableViewBlockView trailingAnchor];
  v37 = [(UIView *)self->_tableViewBackgroundView trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  tableViewBlockViewTrailingConstraint = self->_tableViewBlockViewTrailingConstraint;
  self->_tableViewBlockViewTrailingConstraint = v38;

  v40 = [(UIView *)self->_tableViewBlockView heightAnchor];
  v41 = [v40 constraintEqualToConstant:0.0];
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
  v237 = [(UIView *)self->_blockBlackView topAnchor];
  v236 = [(UIView *)self->_blockView topAnchor];
  v235 = [v237 constraintEqualToAnchor:v236];
  v240[5] = v235;
  v234 = [(UIView *)self->_blockBlackView leadingAnchor];
  v233 = [(UIView *)self->_blockView leadingAnchor];
  v232 = [v234 constraintEqualToAnchor:v233];
  v240[6] = v232;
  v231 = [(UIView *)self->_blockBlackView trailingAnchor];
  v230 = [(UIView *)self->_blockView trailingAnchor];
  v229 = [v231 constraintEqualToAnchor:v230];
  v240[7] = v229;
  v228 = [(UIView *)self->_blockBlackView bottomAnchor];
  v227 = [(UIView *)self->_blockView bottomAnchor];
  v226 = [v228 constraintEqualToAnchor:v227];
  v240[8] = v226;
  v225 = [(UIView *)self->_blockContentView topAnchor];
  v224 = [(UIView *)self->_blockView topAnchor];
  v223 = [v225 constraintEqualToAnchor:v224];
  v240[9] = v223;
  v222 = [(UIView *)self->_blockContentView leadingAnchor];
  v221 = [(UIView *)self->_blockView leadingAnchor];
  v220 = [v222 constraintEqualToAnchor:v221];
  v240[10] = v220;
  v219 = [(UIView *)self->_blockContentView trailingAnchor];
  v218 = [(UIView *)self->_blockView trailingAnchor];
  v217 = [v219 constraintEqualToAnchor:v218];
  v240[11] = v217;
  v216 = [(UIView *)self->_blockContentView bottomAnchor];
  v215 = [(CuratedCollectionHeaderView *)self bottomAnchor];
  v214 = [v216 constraintEqualToAnchor:v215];
  v240[12] = v214;
  v213 = [(UIImageView *)self->_heroImageView widthAnchor];
  v212 = [(UIImageView *)self->_heroImageView heightAnchor];
  v211 = [v213 constraintEqualToAnchor:v212 multiplier:1.0];
  v240[13] = v211;
  v210 = [(UIImageView *)self->_heroImageView centerXAnchor];
  v209 = [(UIView *)self->_blockContentView centerXAnchor];
  v208 = [v210 constraintEqualToAnchor:v209];
  v240[14] = v208;
  v207 = [(UIImageView *)self->_heroImageView centerYAnchor];
  v206 = [(UIView *)self->_blockContentView centerYAnchor];
  v205 = [v207 constraintEqualToAnchor:v206];
  v50 = self->_heroImageViewWidthConstraint;
  v240[15] = v205;
  v240[16] = v50;
  v204 = [self->_heroJoeGradientView leadingAnchor];
  v203 = [(UIView *)self->_blockContentView leadingAnchor];
  v202 = [v204 constraintEqualToAnchor:v203];
  v240[17] = v202;
  v201 = [self->_heroJoeGradientView trailingAnchor];
  v200 = [(UIView *)self->_blockContentView trailingAnchor];
  v199 = [v201 constraintEqualToAnchor:v200];
  v240[18] = v199;
  v198 = [self->_heroJoeGradientView bottomAnchor];
  v197 = [(UIView *)self->_blockContentView bottomAnchor];
  v196 = [v198 constraintEqualToAnchor:v197 constant:1.0];
  v240[19] = v196;
  v195 = [self->_heroJoeGradientView heightAnchor];
  v194 = [v195 constraintEqualToConstant:104.0];
  v240[20] = v194;
  v193 = [self->_heroBlackGradientView topAnchor];
  v192 = [self->_heroJoeGradientView topAnchor];
  v191 = [v193 constraintEqualToAnchor:v192];
  v240[21] = v191;
  v190 = [self->_heroBlackGradientView leadingAnchor];
  v189 = [self->_heroJoeGradientView leadingAnchor];
  v188 = [v190 constraintEqualToAnchor:v189];
  v240[22] = v188;
  v187 = [self->_heroBlackGradientView trailingAnchor];
  v186 = [self->_heroJoeGradientView trailingAnchor];
  v185 = [v187 constraintEqualToAnchor:v186];
  v240[23] = v185;
  v184 = [self->_heroBlackGradientView bottomAnchor];
  v183 = [self->_heroJoeGradientView bottomAnchor];
  v182 = [v184 constraintEqualToAnchor:v183];
  v240[24] = v182;
  v181 = [(UIView *)self->_heroImageJoeView topAnchor];
  v180 = [(UIView *)self->_blockContentView topAnchor];
  v179 = [v181 constraintEqualToAnchor:v180];
  v240[25] = v179;
  v178 = [(UIView *)self->_heroImageJoeView leadingAnchor];
  v177 = [(UIView *)self->_blockContentView leadingAnchor];
  v176 = [v178 constraintEqualToAnchor:v177];
  v240[26] = v176;
  v175 = [(UIView *)self->_heroImageJoeView trailingAnchor];
  v174 = [(UIView *)self->_blockContentView trailingAnchor];
  v173 = [v175 constraintEqualToAnchor:v174];
  v240[27] = v173;
  v172 = [(UIView *)self->_heroImageJoeView bottomAnchor];
  v171 = [(UIView *)self->_blockContentView bottomAnchor];
  v170 = [v172 constraintEqualToAnchor:v171];
  v240[28] = v170;
  v169 = [(UIView *)self->_heroImageBlackView topAnchor];
  v168 = [(UIView *)self->_heroImageJoeView topAnchor];
  v167 = [v169 constraintEqualToAnchor:v168];
  v240[29] = v167;
  v166 = [(UIView *)self->_heroImageBlackView leadingAnchor];
  v165 = [(UIView *)self->_heroImageJoeView leadingAnchor];
  v164 = [v166 constraintEqualToAnchor:v165];
  v240[30] = v164;
  v163 = [(UIView *)self->_heroImageBlackView trailingAnchor];
  v162 = [(UIView *)self->_heroImageJoeView trailingAnchor];
  v161 = [v163 constraintEqualToAnchor:v162];
  v240[31] = v161;
  v160 = [(UIView *)self->_heroImageBlackView bottomAnchor];
  v159 = [(UIView *)self->_heroImageJoeView bottomAnchor];
  v158 = [v160 constraintEqualToAnchor:v159];
  v240[32] = v158;
  v157 = [(UIImageView *)self->_publisherLogoImageView leadingAnchor];
  v156 = [(UIView *)self->_blockContentView leadingAnchor];
  v155 = [v157 constraintEqualToAnchor:v156 constant:16.0];
  v240[33] = v155;
  v154 = [(UIImageView *)self->_publisherLogoImageView heightAnchor];
  [(CuratedCollectionHeaderView *)self _publisherLogoSize];
  v153 = [v154 constraintEqualToConstant:v51];
  v240[34] = v153;
  v152 = [(UILabel *)self->_titleMultiLineLabel topAnchor];
  v151 = [(UIImageView *)self->_publisherLogoImageView bottomAnchor];
  v150 = [v152 constraintEqualToAnchor:v151 constant:4.0];
  v240[35] = v150;
  v149 = [(UILabel *)self->_titleMultiLineLabel leadingAnchor];
  v148 = [(UIView *)self->_blockContentView leadingAnchor];
  v147 = [v149 constraintEqualToAnchor:v148 constant:16.0];
  v240[36] = v147;
  v146 = [(UILabel *)self->_titleMultiLineLabel trailingAnchor];
  v145 = [(UIView *)self->_blockContentView trailingAnchor];
  v144 = [v146 constraintEqualToAnchor:v145 constant:-16.0];
  v52 = self->_titleMultiLineLabelBottomConstraint;
  v240[37] = v144;
  v240[38] = v52;
  v143 = [(UIView *)self->_titleContainerView topAnchor];
  v142 = [(UIView *)self->_blockContentView topAnchor];
  v141 = [v143 constraintEqualToAnchor:v142];
  v240[39] = v141;
  v140 = [(UIView *)self->_titleContainerView leadingAnchor];
  v139 = [(UIView *)self->_blockContentView leadingAnchor];
  v138 = [v140 constraintEqualToAnchor:v139];
  v240[40] = v138;
  v137 = [(UIView *)self->_titleContainerView trailingAnchor];
  v136 = [(UIView *)self->_blockContentView trailingAnchor];
  v135 = [v137 constraintEqualToAnchor:v136];
  v240[41] = v135;
  v134 = [(UIView *)self->_titleJoeView topAnchor];
  v133 = [(UIView *)self->_titleContainerView topAnchor];
  v132 = [v134 constraintEqualToAnchor:v133];
  v240[42] = v132;
  v131 = [(UIView *)self->_titleJoeView leadingAnchor];
  v130 = [(UIView *)self->_titleContainerView leadingAnchor];
  v129 = [v131 constraintEqualToAnchor:v130];
  v240[43] = v129;
  v128 = [(UIView *)self->_titleJoeView trailingAnchor];
  v127 = [(UIView *)self->_titleContainerView trailingAnchor];
  v126 = [v128 constraintEqualToAnchor:v127];
  v240[44] = v126;
  v125 = [(UIView *)self->_titleJoeView bottomAnchor];
  v124 = [(UIView *)self->_titleContainerView bottomAnchor];
  v123 = [v125 constraintEqualToAnchor:v124];
  v240[45] = v123;
  v122 = [(UIView *)self->_titleBlackView topAnchor];
  v121 = [(UIView *)self->_titleJoeView topAnchor];
  v120 = [v122 constraintEqualToAnchor:v121];
  v240[46] = v120;
  v119 = [(UIView *)self->_titleBlackView leadingAnchor];
  v118 = [(UIView *)self->_titleJoeView leadingAnchor];
  v117 = [v119 constraintEqualToAnchor:v118];
  v240[47] = v117;
  v116 = [(UIView *)self->_titleBlackView trailingAnchor];
  v115 = [(UIView *)self->_titleJoeView trailingAnchor];
  v114 = [v116 constraintEqualToAnchor:v115];
  v240[48] = v114;
  v113 = [(UIView *)self->_titleBlackView bottomAnchor];
  v112 = [(UIView *)self->_titleJoeView bottomAnchor];
  v111 = [v113 constraintEqualToAnchor:v112];
  v240[49] = v111;
  v109 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  v110 = [(UIView *)self->_titleContainerView safeAreaLayoutGuide];
  v108 = [v110 topAnchor];
  v107 = [v109 constraintEqualToAnchor:v108];
  v240[50] = v107;
  v106 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  v105 = [(UIView *)self->_titleContainerView leadingAnchor];
  v104 = [v106 constraintEqualToAnchor:v105];
  v240[51] = v104;
  v103 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  v102 = [(UIView *)self->_titleContainerView trailingAnchor];
  v101 = [v103 constraintEqualToAnchor:v102];
  v240[52] = v101;
  v100 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  v99 = [(UIView *)self->_titleContainerView bottomAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v240[53] = v98;
  v97 = [(UIImageView *)self->_titlePublisherLogoImageView topAnchor];
  v96 = [(UIView *)self->_titleContentView topAnchor];
  sub_10000FA08(self);
  v95 = [v97 constraintEqualToAnchor:v96 constant:10.0];
  v240[54] = v95;
  v94 = [(UIImageView *)self->_titlePublisherLogoImageView leadingAnchor];
  v93 = [(UIView *)self->_titleContentView leadingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93 constant:16.0];
  v240[55] = v92;
  v91 = [(UIImageView *)self->_titlePublisherLogoImageView heightAnchor];
  [(CuratedCollectionHeaderView *)self _publisherLogoSize];
  v90 = [v91 constraintEqualToConstant:v53];
  v240[56] = v90;
  v89 = [(UILabel *)self->_titleSingleLineLabel topAnchor];
  v88 = [(UIImageView *)self->_titlePublisherLogoImageView bottomAnchor];
  v87 = [v89 constraintEqualToAnchor:v88 constant:4.0];
  v240[57] = v87;
  v86 = [(UILabel *)self->_titleSingleLineLabel leadingAnchor];
  v85 = [(UIView *)self->_titleContentView leadingAnchor];
  v84 = [v86 constraintEqualToAnchor:v85 constant:16.0];
  v240[58] = v84;
  v83 = [(UILabel *)self->_titleSingleLineLabel trailingAnchor];
  v82 = [(UIView *)self->_titleContentView trailingAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v240[59] = v81;
  v80 = [(UILabel *)self->_titleSingleLineLabel bottomAnchor];
  v79 = [(UIView *)self->_titleContentView bottomAnchor];
  v78 = [v80 constraintEqualToAnchor:v79 constant:-12.0];
  v54 = self->_tableViewBlockViewTopConstraint;
  v55 = self->_tableViewBlockViewLeadingConstraint;
  v240[60] = v78;
  v240[61] = v54;
  v56 = self->_tableViewBlockViewTrailingConstraint;
  v57 = self->_tableViewBlockViewHeightConstraint;
  v240[62] = v55;
  v240[63] = v56;
  v240[64] = v57;
  v77 = [(UIView *)self->_tableViewBlockBlackView topAnchor];
  v76 = [(UIView *)self->_tableViewBlockView topAnchor];
  v75 = [v77 constraintEqualToAnchor:v76];
  v240[65] = v75;
  v74 = [(UIView *)self->_tableViewBlockBlackView leadingAnchor];
  v58 = [(UIView *)self->_tableViewBlockView leadingAnchor];
  v59 = [v74 constraintEqualToAnchor:v58];
  v240[66] = v59;
  v60 = [(UIView *)self->_tableViewBlockBlackView trailingAnchor];
  v61 = [(UIView *)self->_tableViewBlockView trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  v240[67] = v62;
  v63 = [(UIView *)self->_tableViewBlockBlackView bottomAnchor];
  v64 = [(UIView *)self->_tableViewBlockView bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  v240[68] = v65;
  v66 = [NSArray arrayWithObjects:v240 count:69];
  [v238 addObjectsFromArray:v66];

  if (sub_10000FA08(self) == 5)
  {
    v67 = [(UIButton *)self->_titleMoreButton leadingAnchor];
    v68 = [(UIView *)self->_titleContentView leadingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68 constant:12.0];
    v239[0] = v69;
    v70 = [(UIButton *)self->_titleMoreButton topAnchor];
    v71 = [(UIView *)self->_titleContentView topAnchor];
    v72 = [v70 constraintEqualToAnchor:v71 constant:28.0];
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
  v4 = [(CuratedCollectionHeaderView *)self curatedCollection];
  v5 = [v4 publisherAttribution];
  v6 = [v5 displayName];
  [v3 setAccessibilityLabel:v6];

  [v3 setAccessibilityIgnoresInvertColors:1];
  [v3 setContentMode:1];

  return v3;
}

- (void)_createSubviews
{
  [(CuratedCollectionHeaderView *)self setClipsToBounds:1];
  v3 = [(CuratedCollectionHeaderView *)self layer];
  [v3 setMaskedCorners:3];

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
  v20 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  heroJoeGradientView = self->_heroJoeGradientView;
  self->_heroJoeGradientView = v20;

  [self->_heroJoeGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [self->_heroJoeGradientView gradientLayer];
  [v22 setStartPoint:{0.5, 0.0}];

  v23 = [self->_heroJoeGradientView gradientLayer];
  [v23 setEndPoint:{0.5, 1.0}];

  [(UIView *)self->_blockContentView addSubview:self->_heroJoeGradientView];
  v24 = [[GradientView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  heroBlackGradientView = self->_heroBlackGradientView;
  self->_heroBlackGradientView = v24;

  [self->_heroBlackGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [self->_heroBlackGradientView gradientLayer];
  [v26 setStartPoint:{0.5, 0.0}];

  v27 = [self->_heroBlackGradientView gradientLayer];
  [v27 setEndPoint:{0.5, 1.0}];

  v28 = +[UIColor blackColor];
  v29 = [v28 colorWithAlphaComponent:0.0];
  v79[0] = [v29 CGColor];
  v30 = +[UIColor blackColor];
  v31 = [v30 colorWithAlphaComponent:0.3];
  v79[1] = [v31 CGColor];
  v32 = [NSArray arrayWithObjects:v79 count:2];
  v33 = [self->_heroBlackGradientView gradientLayer];
  [v33 setColors:v32];

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
  v40 = [(CuratedCollectionHeaderView *)self _setupPublisherLogoImageView];
  publisherLogoImageView = self->_publisherLogoImageView;
  self->_publisherLogoImageView = v40;

  [(UIImageView *)self->_publisherLogoImageView setAccessibilityIdentifier:@"PublisherLogoImageView"];
  [(UIView *)self->_blockContentView addSubview:self->_publisherLogoImageView];
  v42 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"publisherLogoImageViewTapped"];
  publisherLogoTapGesture = self->_publisherLogoTapGesture;
  self->_publisherLogoTapGesture = v42;

  [(UITapGestureRecognizer *)self->_publisherLogoTapGesture setNumberOfTapsRequired:1];
  [(UIImageView *)self->_publisherLogoImageView addGestureRecognizer:self->_publisherLogoTapGesture];
  v44 = [(CuratedCollectionHeaderView *)self _setupTitleLabel];
  titleMultiLineLabel = self->_titleMultiLineLabel;
  self->_titleMultiLineLabel = v44;

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

  v56 = [(ContainerHeaderView *)self->_titleHeaderView _headerTapGesture];
  [v56 setCancelsTouchesInView:0];

  [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  v57 = [(CuratedCollectionHeaderView *)self delegate];
  [(ContainerHeaderView *)self->_titleHeaderView setDelegate:v57];

  [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:0.0];
  [(UIView *)self->_blockContentView addSubview:self->_titleHeaderView];
  v58 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleContentView = self->_titleContentView;
  self->_titleContentView = v58;

  [(UIView *)self->_titleContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_titleContentView setAccessibilityIdentifier:@"TitleContentView"];
  [(ContainerHeaderView *)self->_titleHeaderView setTitleView:self->_titleContentView];
  v60 = [(CuratedCollectionHeaderView *)self _setupPublisherLogoImageView];
  titlePublisherLogoImageView = self->_titlePublisherLogoImageView;
  self->_titlePublisherLogoImageView = v60;

  [(UIImageView *)self->_titlePublisherLogoImageView setAccessibilityIdentifier:@"TitlePublisherLogoImageView"];
  [(UIView *)self->_titleContentView addSubview:self->_titlePublisherLogoImageView];
  v62 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"publisherLogoImageViewTapped"];
  titlePublisherLogoTapGesture = self->_titlePublisherLogoTapGesture;
  self->_titlePublisherLogoTapGesture = v62;

  [(UITapGestureRecognizer *)self->_titlePublisherLogoTapGesture setNumberOfTapsRequired:1];
  [(UIImageView *)self->_titlePublisherLogoImageView addGestureRecognizer:self->_titlePublisherLogoTapGesture];
  v64 = [(CuratedCollectionHeaderView *)self _setupTitleLabel];
  titleSingleLineLabel = self->_titleSingleLineLabel;
  self->_titleSingleLineLabel = v64;

  [(UILabel *)self->_titleSingleLineLabel setNumberOfLines:1];
  [(UIView *)self->_titleContentView addSubview:self->_titleSingleLineLabel];
  if (sub_10000FA08(self) == 5)
  {
    v66 = [UIButton _maps_cardButtonMacCustomButtonWithSystemImageNamed:@"ellipsis.circle.fill"];
    titleMoreButton = self->_titleMoreButton;
    self->_titleMoreButton = v66;

    [(UIButton *)self->_titleMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_titleMoreButton setShowsMenuAsPrimaryAction:1];
    v68 = [(CuratedCollectionHeaderView *)self delegate];
    v69 = [v68 menuForQuickActionButton];
    [(UIButton *)self->_titleMoreButton setMenu:v69];

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

- (void)setTableViewSubheaderContentHeight:(double)a3
{
  if (self->_tableViewSubheaderContentHeight != a3)
  {
    self->_tableViewSubheaderContentHeight = a3;
    [(CuratedCollectionHeaderView *)self _updateConstraintConstants];
  }
}

- (void)setTableViewContentOffset:(double)a3
{
  if (self->_tableViewContentOffset != a3)
  {
    self->_tableViewContentOffset = a3;
    [(CuratedCollectionHeaderView *)self _updateHeaderStyling];
  }
}

- (void)setLayout:(int64_t)a3 transitionFraction:(double)a4
{
  if (self->_layout != a3 || self->_transitionFraction != a4)
  {
    self->_layout = a3;
    self->_transitionFraction = a4;
    if (a3 == 4)
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CuratedCollectionHeaderView;
  v6 = [(CuratedCollectionHeaderView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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

- (CuratedCollectionHeaderView)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CuratedCollectionHeaderView;
  v5 = [(CuratedCollectionHeaderView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_layout = 2;
    objc_storeWeak(&v5->_delegate, v4);
    [(CuratedCollectionHeaderView *)v6 setAccessibilityIdentifier:@"CuratedCollectionHeader"];
    [(CuratedCollectionHeaderView *)v6 _createSubviews];
    [(CuratedCollectionHeaderView *)v6 _setupConstraints];
    [(CuratedCollectionHeaderView *)v6 _updateHeaderStyling];
    v6->_needsImageReload = 1;
  }

  return v6;
}

@end