@interface NTKUltraCubeContentView
+ (id)timeLabelFontForDevice:(id)device size:(double)size typeface:(unint64_t)typeface role:(unint64_t)role;
+ (id)timeLabelStyleForDevice:(id)device font:(id)font baseline:(double)baseline faceBounds:(CGRect)bounds;
- (NTKUltraCubeContentView)initWithFrame:(CGRect)frame role:(unint64_t)role typeface:(unint64_t)typeface device:(id)device;
- (id)_digitalTimeLabelStyle;
- (void)_applyColorRampTo:(id)to colorMatrix:(id)matrix fromPalette:(id)palette toPalette:(id)toPalette fraction:(double)fraction;
- (void)_applyContentEffect;
- (void)_hideShadowsAndGradients;
- (void)_reorderViewsForPhoto;
- (void)_showShadowsAndGradients;
- (void)applyColorTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)applyCornerRadiusMask;
- (void)copyFiltersFromContentView:(id)view;
- (void)invalidateDigitalTimeLabelStyle;
- (void)layoutSubviews;
- (void)setContentAlpha:(double)alpha;
- (void)setContentEffect:(id)effect;
- (void)setContentsMultiplyByWhite:(double)white;
- (void)setMidgroundView:(id)view;
- (void)setTypeface:(unint64_t)typeface;
- (void)updateForegroundImage:(id)image backgroundImage:(id)backgroundImage timeElementShadowColor:(id)color topGradientView:(id)view bottomGradientView:(id)gradientView isTimeElementFront:(BOOL)front;
@end

@implementation NTKUltraCubeContentView

- (NTKUltraCubeContentView)initWithFrame:(CGRect)frame role:(unint64_t)role typeface:(unint64_t)typeface device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v36.receiver = self;
  v36.super_class = NTKUltraCubeContentView;
  height = [(NTKUltraCubeContentView *)&v36 initWithFrame:x, y, width, height];
  v16 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v16->_role = role;
    v16->_typeface = typeface;
    v16->_isTimeElementFront = 1;
    v16->_timeElementUnitBaseline = 0.328125;
    v16->_timeElementUnitHeight = 0.241116751;
    v17 = [NTKDigitalTimeLabel labelWithOptions:1 forDevice:v16->_device];
    timeLabel = v16->_timeLabel;
    v16->_timeLabel = v17;

    [(NTKDigitalTimeLabel *)v16->_timeLabel setUsesLegibility:role == 0];
    v19 = v16->_timeLabel;
    v20 = +[UIColor whiteColor];
    [(NTKDigitalTimeLabel *)v19 setTextColor:v20];

    v21 = v16->_timeLabel;
    v22 = +[NTKTimeOffsetManager sharedManager];
    [v22 timeOffset];
    [(NTKDigitalTimeLabel *)v21 setTimeOffset:?];

    [(NTKUltraCubeContentView *)v16 invalidateDigitalTimeLabelStyle];
    height2 = [[NTKUltraCubeImageContainerView alloc] initWithFrame:x, y, width, height];
    foregroundContainerView = v16->_foregroundContainerView;
    v16->_foregroundContainerView = height2;

    [(NTKUltraCubeImageContainerView *)v16->_foregroundContainerView setOpaque:0];
    height3 = [[NTKUltraCubeImageContainerView alloc] initWithFrame:x, y, width, height];
    backgroundContainerView = v16->_backgroundContainerView;
    v16->_backgroundContainerView = height3;

    [(NTKUltraCubeImageContainerView *)v16->_backgroundContainerView setOpaque:1];
    v27 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    containerView = v16->_containerView;
    v16->_containerView = v27;

    [(NTKUltraCubeContentView *)v16 addSubview:v16->_containerView];
    v29 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:deviceCopy forDeviceCornerRadius:{x, y, width, height}];
    cornerView = v16->_cornerView;
    v16->_cornerView = v29;

    [(NTKUltraCubeContentView *)v16 _reorderViewsForPhoto];
    v31 = NTKDefaultMonochromeColorMatrix();
    foregroundMonochromeColorMatrix = v16->_foregroundMonochromeColorMatrix;
    v16->_foregroundMonochromeColorMatrix = v31;

    v33 = NTKDefaultMonochromeColorMatrix();
    backgroundMonochromeColorMatrix = v16->_backgroundMonochromeColorMatrix;
    v16->_backgroundMonochromeColorMatrix = v33;
  }

  return v16;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKUltraCubeContentView;
  [(NTKUltraCubeContentView *)&v3 layoutSubviews];
  [(NTKDigitalTimeLabel *)self->_timeLabel setFrameUsingCurrentStyle];
}

- (void)updateForegroundImage:(id)image backgroundImage:(id)backgroundImage timeElementShadowColor:(id)color topGradientView:(id)view bottomGradientView:(id)gradientView isTimeElementFront:(BOOL)front
{
  colorCopy = color;
  viewCopy = view;
  gradientViewCopy = gradientView;
  topGradientView = self->_topGradientView;
  backgroundImageCopy = backgroundImage;
  imageCopy = image;
  [(UIView *)topGradientView removeFromSuperview];
  [(UIView *)self->_bottomGradientView removeFromSuperview];
  v20 = self->_topGradientView;
  self->_topGradientView = viewCopy;
  v21 = viewCopy;

  bottomGradientView = self->_bottomGradientView;
  self->_bottomGradientView = gradientViewCopy;
  v23 = gradientViewCopy;

  self->_isTimeElementFront = front;
  timeElementShadowColor = self->_timeElementShadowColor;
  self->_timeElementShadowColor = colorCopy;
  v25 = colorCopy;

  [(NTKUltraCubeImageContainerView *)self->_foregroundContainerView setHidden:imageCopy == 0];
  [(NTKUltraCubeImageContainerView *)self->_foregroundContainerView setImage:imageCopy];
  v26 = NTKGenerateMonochromeColorMatrixFromImage();

  foregroundMonochromeColorMatrix = self->_foregroundMonochromeColorMatrix;
  self->_foregroundMonochromeColorMatrix = v26;

  [(NTKUltraCubeImageContainerView *)self->_backgroundContainerView setHidden:backgroundImageCopy == 0];
  [(NTKUltraCubeImageContainerView *)self->_backgroundContainerView setImage:backgroundImageCopy];
  v28 = NTKGenerateMonochromeColorMatrixFromImage();

  backgroundMonochromeColorMatrix = self->_backgroundMonochromeColorMatrix;
  self->_backgroundMonochromeColorMatrix = v28;

  [(NTKUltraCubeContentView *)self _applyContentEffect];

  [(NTKUltraCubeContentView *)self _reorderViewsForPhoto];
}

- (void)copyFiltersFromContentView:(id)view
{
  foregroundContainerView = self->_foregroundContainerView;
  viewCopy = view;
  foregroundContainerView = [viewCopy foregroundContainerView];
  imageFilters = [foregroundContainerView imageFilters];
  [(NTKUltraCubeImageContainerView *)foregroundContainerView setImageFilters:imageFilters];

  backgroundContainerView = self->_backgroundContainerView;
  backgroundContainerView = [viewCopy backgroundContainerView];

  imageFilters2 = [backgroundContainerView imageFilters];
  [(NTKUltraCubeImageContainerView *)backgroundContainerView setImageFilters:imageFilters2];
}

- (void)setContentsMultiplyByWhite:(double)white
{
  [(NTKUltraCubeContentView *)self setForegroundContentsMultiplyByWhite:white alpha:1.0];

  [(NTKUltraCubeContentView *)self setBackgroundContentsMultiplyByWhite:white];
}

- (void)_reorderViewsForPhoto
{
  v3 = objc_opt_new();
  [v3 addObject:self->_cornerView];
  if (self->_isTimeElementFront)
  {
    [v3 addObject:self->_timeLabel];
    if (self->_topGradientView)
    {
      [v3 addObject:?];
    }

    if (self->_bottomGradientView)
    {
      [v3 addObject:?];
    }

    foregroundContainerView = self->_foregroundContainerView;
LABEL_10:
    [v3 addObject:foregroundContainerView];
    goto LABEL_11;
  }

  if (self->_bottomGradientView)
  {
    [v3 addObject:?];
  }

  [v3 addObject:self->_foregroundContainerView];
  [v3 addObject:self->_timeLabel];
  foregroundContainerView = self->_topGradientView;
  if (foregroundContainerView)
  {
    goto LABEL_10;
  }

LABEL_11:
  [v3 addObject:self->_backgroundContainerView];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v14 + 1) + 8 * v10);
        containerView = self->_containerView;
        if (v11)
        {
          [(UIView *)containerView insertSubview:v12 belowSubview:v11];
        }

        else
        {
          [(UIView *)containerView addSubview:v12, v14];
          [(UIView *)self->_containerView bringSubviewToFront:v12];
        }

        v8 = v12;

        v10 = v10 + 1;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)setContentAlpha:(double)alpha
{
  [(NTKUltraCubeImageContainerView *)self->_backgroundContainerView setContentAlpha:?];
  foregroundContainerView = self->_foregroundContainerView;

  [(NTKUltraCubeImageContainerView *)foregroundContainerView setContentAlpha:alpha];
}

- (void)setMidgroundView:(id)view
{
  viewCopy = view;
  midgroundView = self->_midgroundView;
  if (midgroundView != viewCopy)
  {
    if (!viewCopy || midgroundView)
    {
      [(UIView *)midgroundView removeFromSuperview];
    }

    objc_storeStrong(&self->_midgroundView, view);
    v7 = self->_midgroundView;
    if (v7)
    {
      [(UIView *)self->_containerView insertSubview:v7 belowSubview:self->_timeLabel];
    }
  }

  _objc_release_x1();
}

- (void)applyCornerRadiusMask
{
  [(CLKDevice *)self->_device screenCornerRadius];
  v3 = +[CAShapeLayer layer];
  maskingLayer = self->_maskingLayer;
  self->_maskingLayer = v3;

  v5 = +[UIColor blackColor];
  -[CAShapeLayer setFillColor:](self->_maskingLayer, "setFillColor:", [v5 CGColor]);

  [(NTKUltraCubeContentView *)self bounds];
  [(CAShapeLayer *)self->_maskingLayer setFrame:?];
  [(CAShapeLayer *)self->_maskingLayer bounds];
  v6 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  -[CAShapeLayer setPath:](self->_maskingLayer, "setPath:", [v6 CGPath]);

  layer = [(UIView *)self->_containerView layer];
  [layer setMask:self->_maskingLayer];
}

- (void)setContentEffect:(id)effect
{
  objc_storeStrong(&self->_contentEffect, effect);

  [(NTKUltraCubeContentView *)self _applyContentEffect];
}

- (void)_applyContentEffect
{
  palette = [(NTKUltraCubeContentEffect *)self->_contentEffect palette];
  isOriginalColor = [palette isOriginalColor];

  contentEffect = self->_contentEffect;
  if (!contentEffect || (isOriginalColor & 1) != 0)
  {
    goto LABEL_6;
  }

  colorEffect = [(NTKUltraCubeContentEffect *)contentEffect colorEffect];
  if (colorEffect != &dword_0 + 2)
  {
    if (colorEffect == &dword_0 + 1)
    {
      [(NTKUltraCubeContentView *)self _hideShadowsAndGradients];
      palette2 = [(NTKUltraCubeContentEffect *)self->_contentEffect palette];
      [(NTKUltraCubeContentView *)self _applyBackgroundColorRampFromPalette:0 toPalette:palette2 fraction:1.0];

      v7 = 144;
      goto LABEL_7;
    }

    if (colorEffect)
    {
      return;
    }

LABEL_6:
    [(NTKUltraCubeContentView *)self _showShadowsAndGradients];
    [(NTKUltraCubeImageContainerView *)self->_foregroundContainerView removeColorRamp];
    v7 = 152;
LABEL_7:
    v8 = *(&self->super.super.super.isa + v7);

    [v8 removeColorRamp];
    return;
  }

  [(NTKUltraCubeContentView *)self _hideShadowsAndGradients];
  palette3 = [(NTKUltraCubeContentEffect *)self->_contentEffect palette];
  [(NTKUltraCubeContentView *)self _applyBackgroundColorRampFromPalette:0 toPalette:palette3 fraction:1.0];

  palette4 = [(NTKUltraCubeContentEffect *)self->_contentEffect palette];
  [(NTKUltraCubeContentView *)self _applyForegroundColorRampFromPalette:0 toPalette:palette4 fraction:1.0];
}

- (void)_applyColorRampTo:(id)to colorMatrix:(id)matrix fromPalette:(id)palette toPalette:(id)toPalette fraction:(double)fraction
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_22814;
  v12[3] = &unk_49470;
  toCopy = to;
  v11 = toCopy;
  [NTKPhotosColorPalette colorRampForMonochromeColorMatrix:matrix fromPalette:palette toPalette:toPalette transitionFraction:v12 completion:fraction];
}

- (void)applyColorTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  paletteCopy = palette;
  toPaletteCopy = toPalette;
  contentEffect = self->_contentEffect;
  if (contentEffect)
  {
    if ([(NTKUltraCubeContentEffect *)contentEffect colorEffect])
    {
      [(NTKUltraCubeContentView *)self _applyBackgroundColorRampFromPalette:paletteCopy toPalette:toPaletteCopy fraction:fraction];
      if ([(NTKUltraCubeContentEffect *)self->_contentEffect colorEffect]== &dword_0 + 2)
      {
        [(NTKUltraCubeContentView *)self _applyForegroundColorRampFromPalette:paletteCopy toPalette:toPaletteCopy fraction:fraction];
      }
    }
  }
}

- (void)_hideShadowsAndGradients
{
  timeLabel = self->_timeLabel;
  v4 = [UIColor colorWithWhite:0.0 alpha:0.3];
  [(NTKDigitalTimeLabel *)timeLabel setShadowColor:v4];

  [(UIView *)self->_topGradientView setHidden:1];
  bottomGradientView = self->_bottomGradientView;

  [(UIView *)bottomGradientView setHidden:1];
}

- (void)_showShadowsAndGradients
{
  [(NTKDigitalTimeLabel *)self->_timeLabel setShadowColor:self->_timeElementShadowColor];
  [(UIView *)self->_topGradientView setHidden:0];
  bottomGradientView = self->_bottomGradientView;

  [(UIView *)bottomGradientView setHidden:0];
}

- (void)setTypeface:(unint64_t)typeface
{
  if (self->_typeface != typeface)
  {
    self->_typeface = typeface;
    [(NTKUltraCubeContentView *)self invalidateDigitalTimeLabelStyle];
  }
}

- (void)invalidateDigitalTimeLabelStyle
{
  timeLabel = self->_timeLabel;
  _digitalTimeLabelStyle = [(NTKUltraCubeContentView *)self _digitalTimeLabelStyle];
  [(NTKDigitalTimeLabel *)timeLabel setStyle:_digitalTimeLabelStyle];

  [(NTKUltraCubeContentView *)self setNeedsLayout];
}

- (id)_digitalTimeLabelStyle
{
  [(NTKUltraCubeContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [NTKUltraCubeContentView timeLabelFontForDevice:self->_device size:self->_typeface typeface:self->_role role:round(self->_timeElementUnitHeight * v9)];
  v12 = [NTKUltraCubeContentView timeLabelStyleForDevice:self->_device font:v11 baseline:self->_timeElementUnitBaseline faceBounds:v4, v6, v8, v10];

  return v12;
}

+ (id)timeLabelStyleForDevice:(id)device font:(id)font baseline:(double)baseline faceBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v7 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:font applyAdvanceFudge:device withBaselineY:bounds.origin.x withFont:bounds.origin.y forDevice:bounds.size.width, bounds.size.height, 0.0, round(bounds.size.height * baseline)];
  layoutRule = [v7 layoutRule];
  [layoutRule referenceFrame];
  v10 = v9;
  v12 = v11;

  layoutRule2 = [v7 layoutRule];
  [layoutRule2 setReferenceFrame:{0.0, v10, width, v12}];

  layoutRule3 = [v7 layoutRule];
  [layoutRule3 setHorizontalLayout:1];

  return v7;
}

+ (id)timeLabelFontForDevice:(id)device size:(double)size typeface:(unint64_t)typeface role:(unint64_t)role
{
  v9 = NTKEnableAODVibrancy() ^ 1;
  if (role == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (typeface)
  {
    if (typeface == 2)
    {
      v11 = round(size * 0.9);
      [NTKUltraCubeFontLoader tokyoFontDescriptorOutlined:v10];
    }

    else
    {
      v11 = round(size * 0.95);
      [NTKUltraCubeFontLoader sfNumeralsFontDescriptorOutlined:v10];
    }
    v12 = ;
  }

  else
  {
    v11 = round(size * 0.9);
    v12 = [NTKUltraCubeFontLoader nyNumeralsFontDescriptorOutlined:v10];
  }

  v13 = v12;
  v14 = [CLKFont fontWithDescriptor:v12 size:v11];

  return v14;
}

@end