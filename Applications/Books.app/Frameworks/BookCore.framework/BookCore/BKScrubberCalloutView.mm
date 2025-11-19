@interface BKScrubberCalloutView
- (BKScrubberCalloutView)initWithFrame:(CGRect)a3 style:(unint64_t)a4;
- (CGSize)contentSize;
- (CGSize)contentSizeForThumbnailAspectRatio:(double)a3 spread:(BOOL)a4;
- (CGSize)thumbnailSizeForAspectRatio:(double)a3 showSpreads:(BOOL)a4;
- (UILabel)leftPageLabel;
- (UILabel)rightPageLabel;
- (UILabel)subtitle;
- (UILabel)title;
- (id)_pageLabelFont;
- (id)_subtitleFont;
- (id)createPageLabel;
- (id)stringForLeftPageLabel;
- (id)stringForRightPageLabel;
- (unint64_t)_effectiveStyle;
- (void)_stylize;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)addToViewController:(id)a3;
- (void)dealloc;
- (void)layoutContent;
- (void)layoutSubviews;
- (void)setIsShowing:(BOOL)a3 animated:(BOOL)a4;
- (void)setLeftPageText:(id)a3 shortenString:(id)a4;
- (void)setPageView:(id)a3;
- (void)setRightPageText:(id)a3 shortenString:(id)a4;
- (void)setUsesMonospacedDigitFontForSubtitle:(BOOL)a3;
@end

@implementation BKScrubberCalloutView

- (BKScrubberCalloutView)initWithFrame:(CGRect)a3 style:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = BKScrubberCalloutView;
  v5 = [(BKScrubberCalloutView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = a4;
    v5->_shouldDisplayPageInfo = 1;
    [(BKScrubberCalloutView *)v5 _stylize];
    [(BKScrubberCalloutView *)v6 setAlpha:0.0];
    v7 = +[UITraitCollection bc_allAPITraits];
    v8 = [(BKScrubberCalloutView *)v6 registerForTraitChanges:v7 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v6;
}

- (void)dealloc
{
  contentView = self->_contentView;
  self->_contentView = 0;

  title = self->_title;
  self->_title = 0;

  subtitle = self->_subtitle;
  self->_subtitle = 0;

  pageView = self->_pageView;
  self->_pageView = 0;

  v7.receiver = self;
  v7.super_class = BKScrubberCalloutView;
  [(BKScrubberCalloutView *)&v7 dealloc];
}

- (void)addToViewController:(id)a3
{
  v4 = [a3 view];
  [v4 addSubview:self];
}

- (void)setIsShowing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = a3;
  [(BKScrubberCalloutView *)self alpha];
  if (v8 != v7)
  {
    if (v5)
    {

      [(BKScrubberCalloutView *)self setAlpha:1.0];
    }

    else
    {
      [(BKScrubberCalloutView *)self alpha];
      if (v9 == 1.0)
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_DAF70;
        v12[3] = &unk_2C7D40;
        v12[4] = self;
        v10 = objc_retainBlock(v12);
        v11 = v10;
        if (v4)
        {
          [UIView animateWithDuration:4 delay:v10 options:0 animations:0.2 completion:0.3];
        }

        else
        {
          (v10[2])(v10);
        }
      }
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BKScrubberCalloutView;
  [(BKScrubberCalloutView *)&v3 layoutSubviews];
  [(BKScrubberCalloutView *)self layoutContent];
  [(BKScrubberCalloutView *)self bringSubviewToFront:self->_contentView];
}

- (UILabel)title
{
  title = self->_title;
  if (!title)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_title;
    self->_title = v4;

    v6 = +[UIColor clearColor];
    [(UILabel *)self->_title setBackgroundColor:v6];

    v7 = +[UIColor whiteColor];
    [(UILabel *)self->_title setTextColor:v7];

    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(UILabel *)self->_title setFont:v8];

    [(UILabel *)self->_title setTextAlignment:1];
    v9 = [(BKScrubberCalloutView *)self shouldDisplayPageInfo];
    title = self->_title;
    if (v9)
    {
      [(UIView *)self->_contentView addSubview:title];
      title = self->_title;
    }
  }

  return title;
}

- (id)createPageLabel
{
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = +[UIColor clearColor];
  [v2 setBackgroundColor:v3];

  v4 = +[UIColor bc_booksSecondaryLabelColor];
  [v2 setTextColor:v4];

  [v2 setTextAlignment:1];

  return v2;
}

- (UILabel)subtitle
{
  subtitle = self->_subtitle;
  if (!subtitle)
  {
    v4 = [(BKScrubberCalloutView *)self createPageLabel];
    v5 = self->_subtitle;
    self->_subtitle = v4;

    v6 = [(BKScrubberCalloutView *)self _subtitleFont];
    [(UILabel *)self->_subtitle setFont:v6];

    v7 = +[UIColor whiteColor];
    [(UILabel *)self->_subtitle setTextColor:v7];

    v8 = [(BKScrubberCalloutView *)self shouldDisplayPageInfo];
    subtitle = self->_subtitle;
    if (v8)
    {
      [(UIView *)self->_contentView addSubview:subtitle];
      subtitle = self->_subtitle;
    }
  }

  return subtitle;
}

- (UILabel)leftPageLabel
{
  leftPageLabel = self->_leftPageLabel;
  if (!leftPageLabel)
  {
    v4 = [(BKScrubberCalloutView *)self createPageLabel];
    v5 = self->_leftPageLabel;
    self->_leftPageLabel = v4;

    [(UILabel *)self->_leftPageLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_leftPageLabel setAdjustsFontForContentSizeCategory:1];
    v6 = [(BKScrubberCalloutView *)self _pageLabelFont];
    [(UILabel *)self->_leftPageLabel setFont:v6];

    v7 = [(BKScrubberCalloutView *)self shouldDisplayPageInfo];
    leftPageLabel = self->_leftPageLabel;
    if (v7)
    {
      [(UIView *)self->_contentView addSubview:leftPageLabel];
      leftPageLabel = self->_leftPageLabel;
    }
  }

  return leftPageLabel;
}

- (UILabel)rightPageLabel
{
  rightPageLabel = self->_rightPageLabel;
  if (!rightPageLabel)
  {
    v4 = [(BKScrubberCalloutView *)self createPageLabel];
    v5 = self->_rightPageLabel;
    self->_rightPageLabel = v4;

    v6 = [(BKScrubberCalloutView *)self _pageLabelFont];
    [(UILabel *)self->_rightPageLabel setFont:v6];

    [(UILabel *)self->_rightPageLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_rightPageLabel setAdjustsFontForContentSizeCategory:1];
    v7 = [(BKScrubberCalloutView *)self shouldDisplayPageInfo];
    rightPageLabel = self->_rightPageLabel;
    if (v7)
    {
      [(UIView *)self->_contentView addSubview:rightPageLabel];
      rightPageLabel = self->_rightPageLabel;
    }
  }

  return rightPageLabel;
}

- (void)setPageView:(id)a3
{
  v5 = a3;
  pageView = self->_pageView;
  if (pageView != v5)
  {
    [(UIView *)pageView removeFromSuperview];
    v7 = self->_pageView;
    self->_pageView = 0;

    objc_storeStrong(&self->_pageView, a3);
    if (self->_pageView)
    {
      [(UIView *)self->_contentView addSubview:?];
    }

    pageView = [(BKScrubberCalloutView *)self setNeedsLayout];
  }

  _objc_release_x1(pageView);
}

- (CGSize)contentSizeForThumbnailAspectRatio:(double)a3 spread:(BOOL)a4
{
  if (!a4)
  {
    if (a3 >= 1.0)
    {
      if (a3 == 1.0)
      {
        v7 = 146.0;
        v6 = 146.0;
        goto LABEL_16;
      }

      if (a3 > 1.56)
      {
        v6 = 194.0;
        goto LABEL_13;
      }

      v7 = 124.0;
    }

    else
    {
      if (a3 > 0.64)
      {
        v6 = 124.0;
        goto LABEL_13;
      }

      v7 = 194.0;
    }

    v6 = a3 * v7;
    goto LABEL_16;
  }

  v5 = a3 + a3;
  if (v5 > 1.56451613)
  {
    a3 = v5 * 0.5;
    v6 = 97.0;
LABEL_13:
    v7 = v6 / a3;
    goto LABEL_16;
  }

  v7 = 124.0;
  v6 = v5 * 124.0 * 0.5;
LABEL_16:
  if (([(BKScrubberCalloutView *)self im_isCompactWidth]& 1) == 0 && ([(BKScrubberCalloutView *)self im_isCompactHeight]& 1) == 0)
  {
    v7 = v7 * 1.25;
    v6 = v6 * 1.25;
  }

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)thumbnailSizeForAspectRatio:(double)a3 showSpreads:(BOOL)a4
{
  [(BKScrubberCalloutView *)self contentSizeForThumbnailAspectRatio:a4 spread:a3];
  v6 = ceil(v4 + -10.0);
  v7 = ceil(v5 + -10.0);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)contentSize
{
  height = CGSizeZero.height;
  [(UILabel *)self->_title sizeThatFits:CGSizeZero.width, height];
  v5 = v4;
  v7 = v6;
  [(UILabel *)self->_subtitle sizeThatFits:CGSizeZero.width, height];
  v9 = v8;
  v11 = v10;
  [(UILabel *)self->_leftPageLabel sizeThatFits:CGSizeZero.width, height];
  v13 = v12;
  v15 = v14;
  [(UILabel *)self->_rightPageLabel sizeThatFits:CGSizeZero.width, height];
  v17 = fmax(fmax(v9, v13), v16);
  v18 = fmax(fmax(v11, v15), v16);
  pageView = self->_pageView;
  if (pageView)
  {
    [(UIView *)self->_pageView frame];
    [(UIView *)pageView sizeThatFits:v20, v21];
    v23 = v22;
    v25 = v24;
    v26 = [(BKScrubberCalloutView *)self shouldDisplayPageInfo];
    v27 = fmax(v17, v23);
    if (!v26)
    {
      v27 = v23;
    }

    v28 = v25 + 10.0;
    v29 = v27 + 10.0;
    v30 = [(BKScrubberCalloutView *)self shouldDisplayPageInfo];
    v31 = fmax(v18, 27.0) + v28;
    if (v30)
    {
      v32 = v31;
    }

    else
    {
      v32 = v28;
    }
  }

  else
  {
    v29 = ceil(fmax(v5, v17) + 40.0);
    v32 = ceil(v7 + v18 + 13.0);
  }

  v33 = v29;
  result.height = v32;
  result.width = v33;
  return result;
}

- (void)layoutContent
{
  [(BKScrubberCalloutView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  height = CGSizeZero.height;
  [(UILabel *)self->_title sizeThatFits:CGSizeZero.width, height];
  v13 = v12;
  [(UILabel *)self->_subtitle sizeThatFits:CGSizeZero.width, height];
  v15 = v14;
  blurView = self->_blurView;
  if (!blurView)
  {
    blurView = self->_contentView;
  }

  [(UIVisualEffectView *)blurView setFrame:v4, v6, v8, v10];
  +[CATransaction begin];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  v17 = [(BKScrubberCalloutView *)self layer];
  [v17 bounds];
  [(CALayer *)self->_shadowLayer setFrame:?];

  [(CALayer *)self->_shadowLayer bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(UIView *)self->_contentView _continuousCornerRadius];
  v27 = [UIBezierPath bezierPathWithRoundedRect:v19 cornerRadius:v21, v23, v25, v26];
  -[CALayer setShadowPath:](self->_shadowLayer, "setShadowPath:", [v27 CGPath]);

  v28 = [(BKScrubberCalloutView *)self layer];
  [v28 bounds];
  [(CALayer *)self->_outerBorderLayer setFrame:?];

  v29 = [(BKScrubberCalloutView *)self layer];
  [v29 bounds];
  v62 = CGRectInset(v61, 0.5, 0.5);
  [(CALayer *)self->_innerBorderLayer setFrame:v62.origin.x, v62.origin.y, v62.size.width, v62.size.height];

  if ([(BKScrubberCalloutView *)self _effectiveStyle]== &dword_0 + 2)
  {
    if ([(BKScrubberCalloutView *)self _useWideRadiusRoundedCorners])
    {
      v30 = 16.0;
    }

    else
    {
      v30 = 6.0;
    }

    v31 = [(BKScrubberCalloutView *)self blurView];
    [v31 _setContinuousCornerRadius:v30];

    v32 = [(BKScrubberCalloutView *)self shadowLayer];
    [v32 setCornerRadius:v30];

    v33 = [(BKScrubberCalloutView *)self outerBorderLayer];
    [v33 setCornerRadius:v30];

    v34 = [(BKScrubberCalloutView *)self innerBorderLayer];
    [v34 setCornerRadius:v30 + -1.0];
  }

  +[CATransaction commit];
  pageView = self->_pageView;
  if (pageView)
  {
    if (self->_leftPageLabel)
    {
      if (self->_rightPageLabel)
      {
        v36 = 2.0;
      }

      else
      {
        v36 = 1.0;
      }
    }

    else
    {
      v36 = 1.0;
    }

    [(UIView *)self->_pageView bounds];
    [(UIView *)pageView sizeThatFits:v43, v44];
    v64.size.width = v45;
    v64.size.height = v46;
    v47 = 5.0;
    v64.origin.x = fmax((v8 - v45) * 0.5, 5.0);
    v64.origin.y = 5.0;
    v65 = CGRectIntegral(v64);
    [(UIView *)self->_pageView setFrame:v65.origin.x, v65.origin.y, v65.size.width, v65.size.height];
    [(UIView *)self->_pageView frame];
    MaxY = CGRectGetMaxY(v66);
    [(UILabel *)self->_subtitle setFrame:5.0, MaxY, v8 + -10.0, v15 + 5.0];
    v49 = v8 / v36 + -10.0;
    [(UILabel *)self->_leftPageLabel setFrame:5.0, MaxY, v49, v10 - MaxY];
    leftPageLabel = self->_leftPageLabel;
    if (leftPageLabel)
    {
      [(UILabel *)leftPageLabel frame];
      v47 = CGRectGetMaxX(v67) + 5.0;
    }

    [(UILabel *)self->_rightPageLabel setFrame:v47, MaxY, v49, v10 - MaxY];
    v51 = [(BKScrubberCalloutView *)self stringForRightPageLabel];
    [(UILabel *)self->_rightPageLabel setText:v51];

    v52 = [(BKScrubberCalloutView *)self stringForLeftPageLabel];
    [(UILabel *)self->_leftPageLabel setText:v52];

    [(UIView *)self->_pageView setClipsToBounds:1];
    v53 = [(BKScrubberCalloutView *)self _useWideRadiusRoundedCorners];
    v54 = self->_pageView;
    if (v53)
    {
      [(UIView *)v54 _setContinuousCornerRadius:10.0];
      v55 = [(UIView *)self->_pageView layer];
      [v55 setBorderWidth:1.0];

      v56 = +[UIColor bc_booksQuaternaryLabelColor];
      v57 = [v56 CGColor];
      v58 = [(UIView *)self->_pageView layer];
      [v58 setBorderColor:v57];
    }

    else
    {
      [(UIView *)v54 _setContinuousCornerRadius:0.0];
      v56 = [(UIView *)self->_pageView layer];
      [v56 setBorderWidth:0.0];
    }

    v59 = self->_pageView;

    [(UIView *)v59 setNeedsLayout];
  }

  else
  {
    [(BKScrubberCalloutView *)self frame];
    if (v8 >= v37 + -40.0)
    {
      v38 = v37 + -40.0;
    }

    else
    {
      v38 = v8;
    }

    [(UILabel *)self->_title setFrame:20.0, 5.0, v38, v13];
    [(UILabel *)self->_title frame];
    v39 = CGRectGetMaxY(v63) + 1.0;
    [(BKScrubberCalloutView *)self frame];
    subtitle = self->_subtitle;
    if (v8 >= v40 + -40.0)
    {
      v42 = v40 + -40.0;
    }

    else
    {
      v42 = v8;
    }

    [(UILabel *)subtitle setFrame:20.0, v39, v42, v15];
  }
}

- (void)setLeftPageText:(id)a3 shortenString:(id)a4
{
  v6 = a4;
  [(BKScrubberCalloutView *)self setLeftPageString:a3];
  [(BKScrubberCalloutView *)self setLeftPageShortenString:v6];

  v7 = [(BKScrubberCalloutView *)self leftPageString];
  if ([v7 length])
  {

LABEL_4:
    v12 = [(BKScrubberCalloutView *)self stringForLeftPageLabel];
    v10 = [(BKScrubberCalloutView *)self leftPageLabel];
    [v10 setText:v12];

    leftPageLabel = v12;
    goto LABEL_5;
  }

  v8 = [(BKScrubberCalloutView *)self leftPageShortenString];
  v9 = [v8 length];

  if (v9)
  {
    goto LABEL_4;
  }

  [(UILabel *)self->_leftPageLabel removeFromSuperview];
  leftPageLabel = self->_leftPageLabel;
  self->_leftPageLabel = 0;
LABEL_5:
}

- (void)setRightPageText:(id)a3 shortenString:(id)a4
{
  v6 = a4;
  [(BKScrubberCalloutView *)self setRightPageString:a3];
  [(BKScrubberCalloutView *)self setRightPageShortenString:v6];

  v7 = [(BKScrubberCalloutView *)self rightPageString];
  if ([v7 length])
  {

LABEL_4:
    v12 = [(BKScrubberCalloutView *)self stringForRightPageLabel];
    v10 = [(BKScrubberCalloutView *)self rightPageLabel];
    [v10 setText:v12];

    rightPageLabel = v12;
    goto LABEL_5;
  }

  v8 = [(BKScrubberCalloutView *)self rightPageShortenString];
  v9 = [v8 length];

  if (v9)
  {
    goto LABEL_4;
  }

  [(UILabel *)self->_rightPageLabel removeFromSuperview];
  rightPageLabel = self->_rightPageLabel;
  self->_rightPageLabel = 0;
LABEL_5:
}

- (id)stringForLeftPageLabel
{
  if (self->_leftPageLabel)
  {
    v3 = [(BKScrubberCalloutView *)self leftPageString];
    v15 = NSFontAttributeName;
    v4 = [(UILabel *)self->_leftPageLabel font];
    v16 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v3 sizeWithAttributes:v5];
    v7 = v6;

    [(UILabel *)self->_leftPageLabel bounds];
    if (v7 >= v8 && ([(BKScrubberCalloutView *)self leftPageShortenString], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [(BKScrubberCalloutView *)self leftPageShortenString];
    }

    else
    {
      v10 = [(BKScrubberCalloutView *)self leftPageString];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_2D2930;
  }

  v13 = v12;

  return v12;
}

- (id)stringForRightPageLabel
{
  if (self->_rightPageLabel)
  {
    v3 = [(BKScrubberCalloutView *)self rightPageString];
    v15 = NSFontAttributeName;
    v4 = [(UILabel *)self->_rightPageLabel font];
    v16 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v3 sizeWithAttributes:v5];
    v7 = v6;

    [(UILabel *)self->_rightPageLabel bounds];
    if (v7 >= v8 && ([(BKScrubberCalloutView *)self rightPageShortenString], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [(BKScrubberCalloutView *)self rightPageShortenString];
    }

    else
    {
      v10 = [(BKScrubberCalloutView *)self rightPageString];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_2D2930;
  }

  v13 = v12;

  return v12;
}

- (id)_subtitleFont
{
  if (self->_usesMonospacedDigitFontForSubtitle)
  {
    [UIFont monospacedDigitSystemFontOfSize:10.0 weight:UIFontWeightRegular];
  }

  else
  {
    [UIFont systemFontOfSize:10.0];
  }
  v2 = ;

  return v2;
}

- (id)_pageLabelFont
{
  if (self->_usesMonospacedDigitFontForSubtitle)
  {
    [UIFont monospacedDigitSystemFontOfSize:15.0 weight:UIFontWeightSemibold];
  }

  else
  {
    [UIFont systemFontOfSize:15.0 weight:UIFontWeightSemibold];
  }
  v2 = ;
  v3 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleHeadline];
  v4 = [v3 scaledFontForFont:v2];

  return v4;
}

- (void)setUsesMonospacedDigitFontForSubtitle:(BOOL)a3
{
  if (self->_usesMonospacedDigitFontForSubtitle != a3)
  {
    self->_usesMonospacedDigitFontForSubtitle = a3;
    if (self->_subtitle)
    {
      v4 = [(BKScrubberCalloutView *)self _subtitleFont];
      [(UILabel *)self->_subtitle setFont:v4];
    }

    if (self->_leftPageLabel)
    {
      v5 = [(BKScrubberCalloutView *)self _pageLabelFont];
      [(UILabel *)self->_leftPageLabel setFont:v5];
    }

    if (self->_rightPageLabel)
    {
      v6 = [(BKScrubberCalloutView *)self _pageLabelFont];
      [(UILabel *)self->_rightPageLabel setFont:v6];
    }
  }
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(BKScrubberCalloutView *)self outerBorderColor:a3];
  v6 = [v5 CGColor];
  v7 = [(BKScrubberCalloutView *)self outerBorderLayer];
  [v7 setBorderColor:v6];

  v8 = [(BKScrubberCalloutView *)self innerBorderColor];
  v9 = [v8 CGColor];
  v10 = [(BKScrubberCalloutView *)self innerBorderLayer];
  [v10 setBorderColor:v9];

  v14 = [(BKScrubberCalloutView *)self shadowColor];
  v11 = v14;
  v12 = [v14 CGColor];
  v13 = [(BKScrubberCalloutView *)self shadowLayer];
  [v13 setShadowColor:v12];
}

- (unint64_t)_effectiveStyle
{
  result = [(BKScrubberCalloutView *)self style];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (void)_stylize
{
  if ([(BKScrubberCalloutView *)self _effectiveStyle]== &dword_0 + 2)
  {
    v3 = +[UIColor clearColor];
    [(BKScrubberCalloutView *)self setBackgroundColor:v3];

    v31 = [UIBlurEffect effectWithStyle:8];
    v4 = [[UIVisualEffectView alloc] initWithEffect:v31];
    blurView = self->_blurView;
    self->_blurView = v4;

    [(UIVisualEffectView *)self->_blurView setContentMode:0];
    [(UIVisualEffectView *)self->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_contentView bounds];
    [(UIVisualEffectView *)self->_blurView setFrame:?];
    [(UIVisualEffectView *)self->_blurView setAlpha:1.0];
    v6 = [(UIVisualEffectView *)self->_blurView layer];
    [v6 setMasksToBounds:1];

    [(UIVisualEffectView *)self->_blurView setClipsToBounds:1];
    v7 = [(UIVisualEffectView *)self->_blurView contentView];
    contentView = self->_contentView;
    self->_contentView = v7;

    [(BKScrubberCalloutView *)self addSubview:self->_blurView];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [UIColor colorNamed:@"BKScrubberCalloutPopFloatOuterBorderColor" inBundle:v9 compatibleWithTraitCollection:0];
    [(BKScrubberCalloutView *)self setOuterBorderColor:v10];

    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [UIColor colorNamed:@"BKScrubberCalloutPopFloatInnerBorderColor" inBundle:v11 compatibleWithTraitCollection:0];
    [(BKScrubberCalloutView *)self setInnerBorderColor:v12];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [UIColor colorNamed:@"BKScrubberCalloutPopFloatShadowColor" inBundle:v13 compatibleWithTraitCollection:0];
    [(BKScrubberCalloutView *)self setShadowColor:v14];

    v15 = objc_opt_new();
    [v15 setMasksToBounds:0];
    LODWORD(v16) = 1.0;
    [v15 setShadowOpacity:v16];
    v17 = [(BKScrubberCalloutView *)self shadowColor];
    [v15 setShadowColor:{objc_msgSend(v17, "CGColor")}];

    [v15 setShadowOffset:{0.0, 4.0}];
    [v15 setShadowRadius:16.0];
    [v15 setCornerCurve:kCACornerCurveContinuous];
    v18 = [(BKScrubberCalloutView *)self layer];
    v19 = [(UIVisualEffectView *)self->_blurView layer];
    [v18 insertSublayer:v15 below:v19];

    [(BKScrubberCalloutView *)self setShadowLayer:v15];
    v20 = +[CALayer layer];
    [v20 setBorderWidth:0.5];
    v21 = [(BKScrubberCalloutView *)self outerBorderColor];
    [v20 setBorderColor:{objc_msgSend(v21, "CGColor")}];

    [v20 setCornerCurve:kCACornerCurveContinuous];
    v22 = [(BKScrubberCalloutView *)self layer];
    v23 = [(UIVisualEffectView *)self->_blurView layer];
    [v22 insertSublayer:v20 above:v23];

    [(BKScrubberCalloutView *)self setOuterBorderLayer:v20];
    v24 = +[CALayer layer];
    [v24 setBorderWidth:1.0];
    v25 = [(BKScrubberCalloutView *)self innerBorderColor];
    [v24 setBorderColor:{objc_msgSend(v25, "CGColor")}];

    [v24 setCornerCurve:kCACornerCurveContinuous];
    v26 = [(BKScrubberCalloutView *)self layer];
    [v26 insertSublayer:v24 below:v20];

    [(BKScrubberCalloutView *)self setInnerBorderLayer:v24];
  }

  else
  {
    v27 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v28 = self->_contentView;
    self->_contentView = v27;

    [(UIView *)self->_contentView setOpaque:0];
    v29 = [UIColor colorWithRed:0.15 green:0.15 blue:0.13 alpha:1.0];
    [(BKScrubberCalloutView *)self setBackgroundColor:v29];

    [(UIView *)self->_contentView _setContinuousCornerRadius:16.0];
    v30 = self->_contentView;

    [(BKScrubberCalloutView *)self addSubview:v30];
  }
}

@end