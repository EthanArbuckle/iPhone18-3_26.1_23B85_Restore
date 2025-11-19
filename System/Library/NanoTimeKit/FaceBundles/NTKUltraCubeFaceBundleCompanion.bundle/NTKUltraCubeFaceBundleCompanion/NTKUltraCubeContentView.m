@interface NTKUltraCubeContentView
+ (id)timeLabelFontForDevice:(id)a3 size:(double)a4 typeface:(unint64_t)a5 role:(unint64_t)a6;
+ (id)timeLabelStyleForDevice:(id)a3 font:(id)a4 baseline:(double)a5 faceBounds:(CGRect)a6;
- (NTKUltraCubeContentView)initWithFrame:(CGRect)a3 role:(unint64_t)a4 typeface:(unint64_t)a5 device:(id)a6;
- (id)_digitalTimeLabelStyle;
- (void)_applyColorRampTo:(id)a3 colorMatrix:(id)a4 fromPalette:(id)a5 toPalette:(id)a6 fraction:(double)a7;
- (void)_applyContentEffect;
- (void)_hideShadowsAndGradients;
- (void)_reorderViewsForPhoto;
- (void)_showShadowsAndGradients;
- (void)applyColorTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)applyCornerRadiusMask;
- (void)copyFiltersFromContentView:(id)a3;
- (void)invalidateDigitalTimeLabelStyle;
- (void)layoutSubviews;
- (void)setContentAlpha:(double)a3;
- (void)setContentEffect:(id)a3;
- (void)setContentsMultiplyByWhite:(double)a3;
- (void)setMidgroundView:(id)a3;
- (void)setTypeface:(unint64_t)a3;
- (void)updateForegroundImage:(id)a3 backgroundImage:(id)a4 timeElementShadowColor:(id)a5 topGradientView:(id)a6 bottomGradientView:(id)a7 isTimeElementFront:(BOOL)a8;
@end

@implementation NTKUltraCubeContentView

- (NTKUltraCubeContentView)initWithFrame:(CGRect)a3 role:(unint64_t)a4 typeface:(unint64_t)a5 device:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a6;
  v36.receiver = self;
  v36.super_class = NTKUltraCubeContentView;
  v15 = [(NTKUltraCubeContentView *)&v36 initWithFrame:x, y, width, height];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_device, a6);
    v16->_role = a4;
    v16->_typeface = a5;
    v16->_isTimeElementFront = 1;
    v16->_timeElementUnitBaseline = 0.328125;
    v16->_timeElementUnitHeight = 0.241116751;
    v17 = [NTKDigitalTimeLabel labelWithOptions:1 forDevice:v16->_device];
    timeLabel = v16->_timeLabel;
    v16->_timeLabel = v17;

    [(NTKDigitalTimeLabel *)v16->_timeLabel setUsesLegibility:a4 == 0];
    v19 = v16->_timeLabel;
    v20 = +[UIColor whiteColor];
    [(NTKDigitalTimeLabel *)v19 setTextColor:v20];

    v21 = v16->_timeLabel;
    v22 = +[NTKTimeOffsetManager sharedManager];
    [v22 timeOffset];
    [(NTKDigitalTimeLabel *)v21 setTimeOffset:?];

    [(NTKUltraCubeContentView *)v16 invalidateDigitalTimeLabelStyle];
    v23 = [[NTKUltraCubeImageContainerView alloc] initWithFrame:x, y, width, height];
    foregroundContainerView = v16->_foregroundContainerView;
    v16->_foregroundContainerView = v23;

    [(NTKUltraCubeImageContainerView *)v16->_foregroundContainerView setOpaque:0];
    v25 = [[NTKUltraCubeImageContainerView alloc] initWithFrame:x, y, width, height];
    backgroundContainerView = v16->_backgroundContainerView;
    v16->_backgroundContainerView = v25;

    [(NTKUltraCubeImageContainerView *)v16->_backgroundContainerView setOpaque:1];
    v27 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    containerView = v16->_containerView;
    v16->_containerView = v27;

    [(NTKUltraCubeContentView *)v16 addSubview:v16->_containerView];
    v29 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:v14 forDeviceCornerRadius:{x, y, width, height}];
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

- (void)updateForegroundImage:(id)a3 backgroundImage:(id)a4 timeElementShadowColor:(id)a5 topGradientView:(id)a6 bottomGradientView:(id)a7 isTimeElementFront:(BOOL)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  topGradientView = self->_topGradientView;
  v18 = a4;
  v19 = a3;
  [(UIView *)topGradientView removeFromSuperview];
  [(UIView *)self->_bottomGradientView removeFromSuperview];
  v20 = self->_topGradientView;
  self->_topGradientView = v15;
  v21 = v15;

  bottomGradientView = self->_bottomGradientView;
  self->_bottomGradientView = v16;
  v23 = v16;

  self->_isTimeElementFront = a8;
  timeElementShadowColor = self->_timeElementShadowColor;
  self->_timeElementShadowColor = v14;
  v25 = v14;

  [(NTKUltraCubeImageContainerView *)self->_foregroundContainerView setHidden:v19 == 0];
  [(NTKUltraCubeImageContainerView *)self->_foregroundContainerView setImage:v19];
  v26 = NTKGenerateMonochromeColorMatrixFromImage();

  foregroundMonochromeColorMatrix = self->_foregroundMonochromeColorMatrix;
  self->_foregroundMonochromeColorMatrix = v26;

  [(NTKUltraCubeImageContainerView *)self->_backgroundContainerView setHidden:v18 == 0];
  [(NTKUltraCubeImageContainerView *)self->_backgroundContainerView setImage:v18];
  v28 = NTKGenerateMonochromeColorMatrixFromImage();

  backgroundMonochromeColorMatrix = self->_backgroundMonochromeColorMatrix;
  self->_backgroundMonochromeColorMatrix = v28;

  [(NTKUltraCubeContentView *)self _applyContentEffect];

  [(NTKUltraCubeContentView *)self _reorderViewsForPhoto];
}

- (void)copyFiltersFromContentView:(id)a3
{
  foregroundContainerView = self->_foregroundContainerView;
  v5 = a3;
  v6 = [v5 foregroundContainerView];
  v7 = [v6 imageFilters];
  [(NTKUltraCubeImageContainerView *)foregroundContainerView setImageFilters:v7];

  backgroundContainerView = self->_backgroundContainerView;
  v10 = [v5 backgroundContainerView];

  v9 = [v10 imageFilters];
  [(NTKUltraCubeImageContainerView *)backgroundContainerView setImageFilters:v9];
}

- (void)setContentsMultiplyByWhite:(double)a3
{
  [(NTKUltraCubeContentView *)self setForegroundContentsMultiplyByWhite:a3 alpha:1.0];

  [(NTKUltraCubeContentView *)self setBackgroundContentsMultiplyByWhite:a3];
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

- (void)setContentAlpha:(double)a3
{
  [(NTKUltraCubeImageContainerView *)self->_backgroundContainerView setContentAlpha:?];
  foregroundContainerView = self->_foregroundContainerView;

  [(NTKUltraCubeImageContainerView *)foregroundContainerView setContentAlpha:a3];
}

- (void)setMidgroundView:(id)a3
{
  v5 = a3;
  midgroundView = self->_midgroundView;
  if (midgroundView != v5)
  {
    if (!v5 || midgroundView)
    {
      [(UIView *)midgroundView removeFromSuperview];
    }

    objc_storeStrong(&self->_midgroundView, a3);
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

  v7 = [(UIView *)self->_containerView layer];
  [v7 setMask:self->_maskingLayer];
}

- (void)setContentEffect:(id)a3
{
  objc_storeStrong(&self->_contentEffect, a3);

  [(NTKUltraCubeContentView *)self _applyContentEffect];
}

- (void)_applyContentEffect
{
  v3 = [(NTKUltraCubeContentEffect *)self->_contentEffect palette];
  v4 = [v3 isOriginalColor];

  contentEffect = self->_contentEffect;
  if (!contentEffect || (v4 & 1) != 0)
  {
    goto LABEL_6;
  }

  v6 = [(NTKUltraCubeContentEffect *)contentEffect colorEffect];
  if (v6 != &dword_0 + 2)
  {
    if (v6 == &dword_0 + 1)
    {
      [(NTKUltraCubeContentView *)self _hideShadowsAndGradients];
      v9 = [(NTKUltraCubeContentEffect *)self->_contentEffect palette];
      [(NTKUltraCubeContentView *)self _applyBackgroundColorRampFromPalette:0 toPalette:v9 fraction:1.0];

      v7 = 144;
      goto LABEL_7;
    }

    if (v6)
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
  v10 = [(NTKUltraCubeContentEffect *)self->_contentEffect palette];
  [(NTKUltraCubeContentView *)self _applyBackgroundColorRampFromPalette:0 toPalette:v10 fraction:1.0];

  v11 = [(NTKUltraCubeContentEffect *)self->_contentEffect palette];
  [(NTKUltraCubeContentView *)self _applyForegroundColorRampFromPalette:0 toPalette:v11 fraction:1.0];
}

- (void)_applyColorRampTo:(id)a3 colorMatrix:(id)a4 fromPalette:(id)a5 toPalette:(id)a6 fraction:(double)a7
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_22814;
  v12[3] = &unk_49470;
  v13 = a3;
  v11 = v13;
  [NTKPhotosColorPalette colorRampForMonochromeColorMatrix:a4 fromPalette:a5 toPalette:a6 transitionFraction:v12 completion:a7];
}

- (void)applyColorTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v10 = a4;
  v8 = a5;
  contentEffect = self->_contentEffect;
  if (contentEffect)
  {
    if ([(NTKUltraCubeContentEffect *)contentEffect colorEffect])
    {
      [(NTKUltraCubeContentView *)self _applyBackgroundColorRampFromPalette:v10 toPalette:v8 fraction:a3];
      if ([(NTKUltraCubeContentEffect *)self->_contentEffect colorEffect]== &dword_0 + 2)
      {
        [(NTKUltraCubeContentView *)self _applyForegroundColorRampFromPalette:v10 toPalette:v8 fraction:a3];
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

- (void)setTypeface:(unint64_t)a3
{
  if (self->_typeface != a3)
  {
    self->_typeface = a3;
    [(NTKUltraCubeContentView *)self invalidateDigitalTimeLabelStyle];
  }
}

- (void)invalidateDigitalTimeLabelStyle
{
  timeLabel = self->_timeLabel;
  v4 = [(NTKUltraCubeContentView *)self _digitalTimeLabelStyle];
  [(NTKDigitalTimeLabel *)timeLabel setStyle:v4];

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

+ (id)timeLabelStyleForDevice:(id)a3 font:(id)a4 baseline:(double)a5 faceBounds:(CGRect)a6
{
  width = a6.size.width;
  v7 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:a4 applyAdvanceFudge:a3 withBaselineY:a6.origin.x withFont:a6.origin.y forDevice:a6.size.width, a6.size.height, 0.0, round(a6.size.height * a5)];
  v8 = [v7 layoutRule];
  [v8 referenceFrame];
  v10 = v9;
  v12 = v11;

  v13 = [v7 layoutRule];
  [v13 setReferenceFrame:{0.0, v10, width, v12}];

  v14 = [v7 layoutRule];
  [v14 setHorizontalLayout:1];

  return v7;
}

+ (id)timeLabelFontForDevice:(id)a3 size:(double)a4 typeface:(unint64_t)a5 role:(unint64_t)a6
{
  v9 = NTKEnableAODVibrancy() ^ 1;
  if (a6 == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a5)
  {
    if (a5 == 2)
    {
      v11 = round(a4 * 0.9);
      [NTKUltraCubeFontLoader tokyoFontDescriptorOutlined:v10];
    }

    else
    {
      v11 = round(a4 * 0.95);
      [NTKUltraCubeFontLoader sfNumeralsFontDescriptorOutlined:v10];
    }
    v12 = ;
  }

  else
  {
    v11 = round(a4 * 0.9);
    v12 = [NTKUltraCubeFontLoader nyNumeralsFontDescriptorOutlined:v10];
  }

  v13 = v12;
  v14 = [CLKFont fontWithDescriptor:v12 size:v11];

  return v14;
}

@end