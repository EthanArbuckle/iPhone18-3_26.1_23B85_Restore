@interface AVMobileGlassTimelineView
- (AVMobileGlassTimelineView)initWithStyleSheet:(id)sheet;
- (AVMobileGlassTimelineView)initWithUsingFluidSlider:(BOOL)slider;
- (AVMobileGlassTimelineViewDelegate)delegate;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_labelIntrinsicContentSize;
- (uint64_t)_intrinsicContentSizeWithLabelsInline;
- (uint64_t)_updateSliderEnabledStateIfNeeded;
- (void)_commonInit;
- (void)_setUpShadowAppearance;
- (void)_traitCollectionDidChange:(id)change;
- (void)_updateFonts;
- (void)_updateLabelsTextColorIfNeeded;
- (void)_updateShadowAppearanceState;
- (void)_updateShadowPathIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForDeemphasisIfNeeded;
- (void)setBackgroundMaterialStyle:(int64_t)style;
- (void)setDrawsShadow:(BOOL)shadow;
- (void)setEmphasized:(BOOL)emphasized;
- (void)setEnabled:(BOOL)enabled;
- (void)setLabelPosition:(unint64_t)position;
- (void)setLabelsCompositingFilter:(id)filter;
- (void)setLabelsExtendedDynamicRangeGain:(double)gain;
- (void)setLabelsFont:(id)font;
- (void)setLabelsTextColor:(id)color;
- (void)setLayoutType:(unint64_t)type;
- (void)setLeadingTimeText:(id)text;
- (void)setSliderExtendedDynamicRangeGain:(double)gain;
- (void)setStyleSheet:(id)sheet;
- (void)setTrailingTimeText:(id)text;
- (void)updateBackgroundMaterial;
@end

@implementation AVMobileGlassTimelineView

- (AVMobileGlassTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setBackgroundMaterialStyle:(int64_t)style
{
  if (self)
  {
    traitCollection = [(AVMobileGlassTimelineView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if ((style & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      styleCopy2 = 1;
    }

    else
    {
      styleCopy2 = style;
    }

    if (userInterfaceStyle != 2)
    {
      styleCopy2 = style;
    }

    if (userInterfaceStyle == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = styleCopy2;
    }
  }

  else
  {
    v8 = 0;
  }

  v9.receiver = self;
  v9.super_class = AVMobileGlassTimelineView;
  [(AVGlassBackedView *)&v9 setBackgroundMaterialStyle:v8];
}

- (void)_traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(AVMobileGlassTimelineView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(AVMobileGlassTimelineView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];
    if (self)
    {
      [(AVMobileGlassTimelineView *)self setBackgroundMaterialStyle:[(AVGlassBackedView *)self backgroundMaterialStyle]];
      [(AVMobileGlassTimelineView *)self _updateLabelsTextColorIfNeeded];
    }

    [(AVMobileChromelessSlider *)self->_slider setOverrideUserInterfaceStyle:userInterfaceStyle];
    [(AVLabel *)self->_leadingLabel setOverrideUserInterfaceStyle:userInterfaceStyle];
    trailingLabel = self->_trailingLabel;

    [(AVLabel *)trailingLabel setOverrideUserInterfaceStyle:userInterfaceStyle];
  }
}

- (void)_updateShadowAppearanceState
{
  if (!self)
  {
    return;
  }

  layer = [self[87] layer];
  layer2 = [self[68] layer];
  v3 = 0.0;
  if ([self drawsShadow])
  {
    traitCollection = [self[87] traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      blackColor = 0;
      v7 = 0.0;
    }

    else
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v7 = 0.5;
    }

    traitCollection2 = [self[66] traitCollection];
    if ([traitCollection2 userInterfaceStyle] == 1)
    {
      traitCollection3 = [self[67] traitCollection];
      userInterfaceStyle2 = [traitCollection3 userInterfaceStyle];

      if (userInterfaceStyle2 == 1)
      {
        blackColor2 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    v3 = 0.5;
    goto LABEL_12;
  }

  blackColor = 0;
  blackColor2 = 0;
  v7 = 0.0;
LABEL_12:
  [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];
  *&v12 = v7;
  [layer setShadowOpacity:v12];
  [layer2 setShadowColor:{objc_msgSend(blackColor2, "CGColor")}];
  *&v13 = v3;
  [layer2 setShadowOpacity:v13];
  [(AVMobileGlassTimelineView *)self _updateShadowPathIfNeeded];
}

- (void)_updateLabelsTextColorIfNeeded
{
  if (!self)
  {
    return;
  }

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v3 = secondaryLabelColor;
  v4 = *(self + 672);
  if (v4)
  {
    v7 = secondaryLabelColor;
    tertiaryLabelColor = v4;
LABEL_4:
    v6 = tertiaryLabelColor;

    v3 = v6;
    goto LABEL_7;
  }

  if (!*(self + 616) && (*(self + 603) & 1) == 0)
  {
    v7 = secondaryLabelColor;
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    goto LABEL_4;
  }

LABEL_7:
  v8 = v3;
  [*(self + 528) setTextColor:v3];
  [*(self + 536) setTextColor:v8];
}

- (void)_updateShadowPathIfNeeded
{
  if (self && [self drawsShadow])
  {
    layer = [*(self + 696) layer];
    [layer bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if (CGRectIsNull(*(self + 568)) || (v28.origin.x = v3, v28.origin.y = v5, v28.size.width = v7, v28.size.height = v9, !CGRectEqualToRect(*(self + 568), v28)))
    {
      *(self + 568) = v3;
      *(self + 576) = v5;
      *(self + 584) = v7;
      *(self + 592) = v9;
      v10 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v3, v5, v7, v9}];
      [layer setShadowPath:{objc_msgSend(v10, "CGPath")}];
    }

    layer2 = [*(self + 544) layer];
    v12 = [MEMORY[0x1E69DC728] bezierPathWithRect:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    if (([*(self + 528) isHidden] & 1) == 0)
    {
      traitCollection = [*(self + 528) traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle != 1)
      {
        layer3 = [*(self + 528) layer];
        v16 = MEMORY[0x1E69DC728];
        [layer3 frame];
        v17 = [v16 bezierPathWithRect:?];

        v12 = v17;
      }
    }

    if (([*(self + 536) isHidden] & 1) == 0)
    {
      traitCollection2 = [*(self + 536) traitCollection];
      userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

      if (userInterfaceStyle2 != 1)
      {
        layer4 = [*(self + 536) layer];
        isEmpty = [v12 isEmpty];
        v22 = MEMORY[0x1E69DC728];
        [layer4 frame];
        v23 = [v22 bezierPathWithRect:?];
        v24 = v23;
        if (isEmpty)
        {
          v25 = v12;
          v12 = v23;
        }

        else
        {
          [v12 appendPath:v23];
          v25 = v24;
        }
      }
    }

    [layer2 setShadowPath:{objc_msgSend(v12, "CGPath")}];
  }
}

- (void)_setUpShadowAppearance
{
  layer = [(AVMobileChromelessSlider *)self->_slider layer];
  layer2 = [(UIView *)self->_labelShadowView layer];
  [layer setShadowOffset:{0.0, 4.0}];
  [layer setPunchoutShadow:1];
  [layer setShadowRadius:12.0];
  [layer setShadowPathIsBounds:1];
  [layer2 setShadowOffset:{0.0, 4.0}];
  [layer2 setShadowRadius:12.0];
  [layer2 setShadowPathIsBounds:1];
  [(AVMobileGlassTimelineView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];
}

- (void)updateBackgroundMaterial
{
  backgroundMaterialStyle = [(AVGlassBackedView *)self backgroundMaterialStyle];
  backgroundMaterialized = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedView *)self->_contentsView setBackgroundMaterialStyle:backgroundMaterialStyle];
  contentsView = self->_contentsView;

  [(AVGlassBackedView *)contentsView setBackgroundMaterialized:backgroundMaterialized];
}

- (void)setDrawsShadow:(BOOL)shadow
{
  if (self->_drawsShadow != shadow)
  {
    self->_drawsShadow = shadow;
    [(AVMobileGlassTimelineView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  if (self->_slider == invalidated)
  {
    invalidatedCopy = invalidated;
    [(AVMobileGlassTimelineView *)self invalidateIntrinsicContentSize];
    superview = [(AVMobileGlassTimelineView *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:invalidatedCopy];

    [(AVMobileGlassTimelineView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(AVMobileGlassTimelineView *)self _intrinsicContentSizeWithLabelsInline];
  v5 = v4;
  v7 = v6;
  if (self->_layoutType == 2)
  {
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsPlatterFullscreenHeight];
    if (v7 < v8)
    {
      v7 = v8;
    }
  }

  v9 = v5;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (uint64_t)_intrinsicContentSizeWithLabelsInline
{
  if (result)
  {
    v1 = result;
    if (*(result + 624))
    {
      result = [*(result + 528) intrinsicContentSize];
    }

    if (*(v1 + 640))
    {
      return [*(v1 + 536) intrinsicContentSize];
    }
  }

  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  v11.receiver = self;
  v11.super_class = AVMobileGlassTimelineView;
  eventCopy = event;
  v8 = [(AVMobileGlassTimelineView *)&v11 pointInside:eventCopy withEvent:x, y];
  slider = selfCopy->_slider;
  [(AVMobileChromelessSlider *)slider convertPoint:selfCopy fromView:x, y, v11.receiver, v11.super_class];
  LOBYTE(selfCopy) = [(AVMobileChromelessSlider *)slider pointInside:eventCopy withEvent:?];

  return (v8 | selfCopy) & 1;
}

- (void)layoutSubviews
{
  v100.receiver = self;
  v100.super_class = AVMobileGlassTimelineView;
  [(AVView *)&v100 layoutSubviews];
  if (self->_labelPosition)
  {
    [(AVMobileGlassTimelineView *)self bounds];
    v96 = v4;
    v98 = v3;
    v6 = v5;
    v8 = v7;
    [(AVMobileChromelessSlider *)self->_slider intrinsicContentSize];
    v10 = v9;
    _labelIntrinsicContentSize = [(AVMobileGlassTimelineView *)self _labelIntrinsicContentSize];
    v13 = v12;
    _labelIntrinsicContentSize2 = [(AVMobileGlassTimelineView *)self _labelIntrinsicContentSize];
    v16 = v15;
    [(AVMobileChromelessTimelineView *)self _timelineScaleFactor];
    v93 = (10.0 - v10) * 0.5;
    v18 = 8.0;
    if (self->_labelsAutoadjustWithSliderEmphasis)
    {
      v18 = v10;
    }

    v19 = v93 + 12.0 + v18;
    if (self->_emphasized)
    {
      v20 = v6 * v17;
    }

    else
    {
      v20 = v6;
    }

    v21 = v10 * v17;
    if (!self->_emphasized)
    {
      v21 = v10;
    }

    v91 = v13;
    v92 = v21;
    v22 = v13 + v19;
    v23 = _labelIntrinsicContentSize;
    v24 = v19;
    v25 = -(v6 - v6 * v17) * 0.5;
    if (self->_emphasized)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = v20 < v22;
    if (v20 < v23)
    {
      v27 = 1;
    }

    if (self->_leadingTimeText)
    {
      v28 = v27;
    }

    else
    {
      v28 = 1;
    }

    v29 = v23 + 3.0;
    v30 = v20;
    v31 = v16 + v19;
    v32 = vabds_f32(v30, v31);
    if (v28)
    {
      v29 = 0.0;
    }

    v34 = v32 >= 0.00000011921 && v30 <= v31;
    v35 = _labelIntrinsicContentSize2 + v29;
    v37 = vabds_f32(v30, v35) >= 0.00000011921 && v30 <= v35;
    v38 = self->_trailingTimeText == 0 || v34 || v37;
    v39 = v8;
    v41 = fabsf(v39 + -10.0) >= 0.00000011921 && v39 <= 10.0;
    labelPosition = self->_labelPosition;
    [(AVMobileChromelessTimelineView *)self _timelineScaleFactor];
    memset(&v102, 0, sizeof(v102));
    if (self->_emphasized)
    {
      if (!labelPosition)
      {
        v43 = 1.0;
      }

      CGAffineTransformMakeScale(&v102, v43, v43);
    }

    else
    {
      v47 = *(MEMORY[0x1E695EFD0] + 16);
      *&v102.a = *MEMORY[0x1E695EFD0];
      *&v102.c = v47;
      *&v102.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    leadingLabel = self->_leadingLabel;
    v101 = v102;
    [(AVLabel *)leadingLabel setTransform:&v101];
    trailingLabel = self->_trailingLabel;
    v101 = v102;
    [(AVLabel *)trailingLabel setTransform:&v101];
    if (v28)
    {
      if (v38)
      {
        goto LABEL_46;
      }
    }

    else
    {
      [(AVLabel *)self->_leadingLabel setFrame:-v26, v24, v23, v91];
      if (v38)
      {
LABEL_46:
        if (v41)
        {
LABEL_48:
          [(UIView *)self->_labelShadowView setFrame:v98, v96, v6, v8];
          [(AVLabel *)self->_leadingLabel setHidden:v28];
          v51 = self->_trailingLabel;
          v52 = v38;
          goto LABEL_89;
        }

LABEL_47:
        [(AVMobileChromelessSlider *)self->_slider setFrame:0.0, v93, v20, v92];
        slider = self->_slider;
        [(AVMobileGlassTimelineView *)self bounds];
        [(AVMobileChromelessSlider *)slider setCenter:CGRectGetMidX(v103), v93];
        goto LABEL_48;
      }
    }

    [(AVLabel *)self->_trailingLabel setFrame:v6 - _labelIntrinsicContentSize2 + v26, v24, _labelIntrinsicContentSize2, v16];
    if (v41)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  styleSheet = self->_styleSheet;
  if (self->_layoutType)
  {
    [(AVMobileGlassControlsStyleSheet *)styleSheet timelineControlsPlatterFullscreenEdgeInsets];
  }

  else
  {
    [(AVMobileGlassControlsStyleSheet *)styleSheet timelineControlsPlatterInlineEdgeInsets];
  }

  v53 = v45;
  v54 = v46;
  [(AVMobileGlassTimelineView *)self bounds];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v99 = v53 + v55;
  v63 = v59 - (v53 + v54);
  [(AVMobileChromelessSlider *)self->_slider intrinsicContentSize];
  v65 = v64;
  [(AVLabel *)self->_leadingLabel intrinsicContentSize];
  v67 = v66;
  v94 = v68;
  [(AVLabel *)self->_trailingLabel intrinsicContentSize];
  v95 = v70;
  v97 = v69;
  if (self->_layoutType)
  {
    v71 = 12.0;
    if (![(AVMobileGlassTimelineView *)self isEmphasized])
    {
      if (self->_layoutType == 2)
      {
        v71 = 12.0;
      }

      else
      {
        v71 = 8.0;
      }
    }
  }

  else
  {
    v71 = 8.0;
  }

  [(AVMobileGlassBackgroundDimmingView *)self->_dimmingView setFrame:v56, v58, v60, v62];
  [(AVGlassBackedView *)self->_contentsView setFrame:v56, v58, v60, v62];
  v72 = v63 - v67 - v71;
  if (v72 >= 60.0 && ((v73 = v94, v74 = v62, v75 = vabds_f32(v73, v74), v73 >= v74) ? (v76 = v75 < 0.00000011921) : (v76 = 1), v76))
  {
    leadingTimeText = self->_leadingTimeText;
    v78 = leadingTimeText != 0;
    if (leadingTimeText)
    {
      v79 = v99 + v67 + v71;
    }

    else
    {
      v79 = v99;
    }

    if (leadingTimeText)
    {
      v80 = v63 - v67 - v71;
    }

    else
    {
      v80 = v63;
    }
  }

  else
  {
    v78 = 0;
    v79 = v99;
    v80 = v63;
  }

  v81 = v72 - v97 - v71;
  if (v81 >= 60.0 && ((v82 = v95, v83 = v62, v84 = vabds_f32(v82, v83), v82 >= v83) ? (v85 = v84 < 0.00000011921) : (v85 = 1), v85))
  {
    trailingTimeText = self->_trailingTimeText;
    v87 = trailingTimeText != 0;
    if (trailingTimeText)
    {
      v80 = v81;
    }
  }

  else
  {
    v87 = 0;
  }

  v41 = v65 > v62;
  if (v78)
  {
    [(AVLabel *)self->_leadingLabel setFrame:v99, (v62 - v94) * 0.5, v67];
  }

  if (v87)
  {
    [(AVLabel *)self->_trailingLabel setFrame:v71 + v79 + v80, (v62 - v95) * 0.5, v97];
  }

  if (v65 <= v62)
  {
    [(AVMobileChromelessSlider *)self->_slider setFrame:v79, (v62 - v65) * 0.5, v80, v65];
  }

  [(UIView *)self->_labelShadowView setFrame:v99, v58, v63, v62];
  [(AVLabel *)self->_leadingLabel setHidden:!v78];
  v51 = self->_trailingLabel;
  v52 = !v87;
LABEL_89:
  [(AVLabel *)v51 setHidden:v52];
  [(AVMobileChromelessSlider *)self->_slider setHidden:v41];
  [(AVMobileGlassTimelineView *)self _updateShadowPathIfNeeded];
  delegate = [(AVMobileGlassTimelineView *)self delegate];
  v89 = objc_opt_respondsToSelector();

  if (v89)
  {
    delegate2 = [(AVMobileGlassTimelineView *)self delegate];
    [delegate2 timelineViewDidLayoutSubviews:self];
  }
}

- (double)_labelIntrinsicContentSize
{
  [*(self + 528) intrinsicContentSize];
  v3 = v2;
  [*(self + 536) intrinsicContentSize];
  v5 = v4;
  [(AVMobileChromelessTimelineView *)self _timelineScaleFactor];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v6 * v7;
  if (!*(self + 603))
  {
    return v7;
  }

  return v8;
}

- (void)didMoveToWindow
{
  v30.receiver = self;
  v30.super_class = AVMobileGlassTimelineView;
  [(AVGlassBackedView *)&v30 didMoveToWindow];
  if (self)
  {
    if (!self->_glassShadowLayer)
    {
      v3 = objc_alloc_init(MEMORY[0x1E6979398]);
      glassShadowLayer = self->_glassShadowLayer;
      self->_glassShadowLayer = v3;

      v5 = self->_glassShadowLayer;
      [(AVMobileGlassTimelineView *)self bounds];
      [(CALayer *)v5 setBounds:?];
      v6 = self->_glassShadowLayer;
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      -[CALayer setShadowColor:](v6, "setShadowColor:", [blackColor CGColor]);

      LODWORD(v8) = 1041865114;
      [(CALayer *)self->_glassShadowLayer setOpacity:v8];
      [(CALayer *)self->_glassShadowLayer setShadowRadius:20.0];
      [(CALayer *)self->_glassShadowLayer setShadowPathIsBounds:1];
      [(CALayer *)self->_glassShadowLayer setPunchoutShadow:1];
      [(CALayer *)self->_glassShadowLayer setAllowsEdgeAntialiasing:1];
      [(CALayer *)self->_glassShadowLayer setHidden:1];
      layer = [(AVMobileGlassTimelineView *)self layer];
      [layer insertSublayer:self->_glassShadowLayer atIndex:0];
    }

    if (!self->_dimmingView)
    {
      v10 = [AVMobileGlassBackgroundDimmingView alloc];
      [(AVMobileGlassTimelineView *)self bounds];
      v11 = [(AVMobileGlassBackgroundDimmingView *)v10 initWithFrame:?];
      dimmingView = self->_dimmingView;
      self->_dimmingView = v11;

      [(AVMobileGlassBackgroundDimmingView *)self->_dimmingView setAutoresizingMask:0];
      [(AVMobileGlassBackgroundView *)self->_dimmingView setWantsCapsuleShape:1];
      [(AVView *)self->_dimmingView setIgnoresTouches:1];
      [(AVMobileGlassBackgroundView *)self->_dimmingView setEmphasizedColorAlpha:0.35];
      [(AVMobileGlassBackgroundView *)self->_dimmingView setEmphasized:[(AVMobileGlassTimelineView *)self isEmphasized]];
      [(AVMobileGlassBackgroundView *)self->_dimmingView setActive:0];
      [(AVView *)self->_dimmingView setHidden:1];
      [(AVMobileGlassTimelineView *)self insertSubview:self->_dimmingView atIndex:0];
    }

    if (!self->_contentsView)
    {
      v13 = [AVGlassBackedView alloc];
      [(AVMobileGlassTimelineView *)self bounds];
      v14 = [(AVGlassBackedView *)v13 initWithFrame:?];
      contentsView = self->_contentsView;
      self->_contentsView = v14;

      [(AVGlassBackedView *)self->_contentsView setAutoresizingMask:0];
      [(AVGlassBackedView *)self->_contentsView setWantsCapsuleShape:1];
      [(AVView *)self->_contentsView setIgnoresTouches:1];
      [(AVGlassBackedView *)self->_contentsView setBackgroundMaterialized:[(AVGlassBackedView *)self backgroundMaterialized]];
      [(AVGlassBackedView *)self->_contentsView setBackgroundMaterialStyle:[(AVGlassBackedView *)self backgroundMaterialStyle]];
      [(AVMobileGlassTimelineView *)self insertSubview:self->_contentsView aboveSubview:self->_dimmingView];
    }

    if (self->_slider || (!self->_overrideFluidSliderPreference ? (v16 = off_1E7205B20) : (v16 = off_1E7205B18), v17 = objc_alloc_init(*v16), slider = self->_slider, self->_slider = v17, slider, -[AVMobileChromelessSlider setAutoresizingMask:](self->_slider, "setAutoresizingMask:", 0), -[AVMobileChromelessSlider setBarHeight:](self->_slider, "setBarHeight:", 8.0), -[AVMobileChromelessSlider setSemanticContentAttribute:](self->_slider, "setSemanticContentAttribute:", 3), -[UIView setAvkit_extendedDynamicRangeGain:](self->_slider, "setAvkit_extendedDynamicRangeGain:", self->_sliderExtendedDynamicRangeGain), -[AVMobileGlassTimelineView fluidSlider](self, "fluidSlider"), v19 = objc_claimAutoreleasedReturnValue(), [v19 setStretchLimit:6.0], v19, -[AVMobileGlassTimelineView _updateSliderEnabledStateIfNeeded](self), -[AVGlassBackedView addSubview:](self->_contentsView, "addSubview:", self->_slider), self->_slider))
    {
      if (!self->_trailingLabel)
      {
        v20 = objc_alloc_init(AVLabel);
        trailingLabel = self->_trailingLabel;
        self->_trailingLabel = v20;

        [(AVLabel *)self->_trailingLabel setAccessibilityIdentifier:@"Remaining Time"];
        v22 = self->_trailingLabel;
        v23 = AVLocalizedString(@"Remaining Time");
        [(AVLabel *)v22 setAccessibilityLabel:v23];

        [(AVLabel *)self->_trailingLabel setIsAccessibilityElement:1];
        [(AVLabel *)self->_trailingLabel setAutoresizingMask:0];
        [(AVLabel *)self->_trailingLabel setUserInteractionEnabled:0];
        [(UIView *)self->_trailingLabel setAvkit_extendedDynamicRangeGain:self->_labelsExtendedDynamicRangeGain];
        [(AVGlassBackedView *)self->_contentsView insertSubview:self->_trailingLabel aboveSubview:self->_slider];
      }

      if (!self->_leadingLabel)
      {
        v24 = objc_alloc_init(AVLabel);
        leadingLabel = self->_leadingLabel;
        self->_leadingLabel = v24;

        [(AVLabel *)self->_leadingLabel setAccessibilityIdentifier:@"Elapsed Time"];
        v26 = self->_leadingLabel;
        v27 = AVLocalizedString(@"Elapsed Time");
        [(AVLabel *)v26 setAccessibilityLabel:v27];

        [(AVLabel *)self->_leadingLabel setIsAccessibilityElement:1];
        [(AVLabel *)self->_leadingLabel setAutoresizingMask:0];
        [(AVLabel *)self->_leadingLabel setUserInteractionEnabled:0];
        [(UIView *)self->_leadingLabel setAvkit_extendedDynamicRangeGain:self->_labelsExtendedDynamicRangeGain];
        [(AVGlassBackedView *)self->_contentsView insertSubview:self->_leadingLabel aboveSubview:self->_trailingLabel];
      }

      [(AVMobileGlassTimelineView *)self _updateLabelsTextColorIfNeeded];
      if (self->_slider && !self->_labelShadowView)
      {
        v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
        labelShadowView = self->_labelShadowView;
        self->_labelShadowView = v28;

        [(UIView *)self->_labelShadowView setIsAccessibilityElement:0];
        [(UIView *)self->_labelShadowView setAutoresizingMask:0];
        [(UIView *)self->_labelShadowView setUserInteractionEnabled:0];
        [(AVGlassBackedView *)self->_contentsView insertSubview:self->_labelShadowView belowSubview:self->_slider];
      }
    }
  }

  [(AVMobileGlassTimelineView *)self _setUpShadowAppearance];
  [(AVMobileGlassTimelineView *)self _updateFonts];
}

- (void)_updateFonts
{
  if (!self)
  {
    return;
  }

  timeLabelFont = [*(self + 632) timeLabelFont];
  v3 = timeLabelFont;
  v4 = *(self + 616);
  if (v4 == 2)
  {
    v16 = timeLabelFont;
    v5 = &OBJC_IVAR___AVMobileGlassTimelineView__timeLabelFullscreenPlatterFont;
    v6 = *(self + 560);
    if (!v6)
    {
      v7 = MEMORY[0x1E69DDD28];
      goto LABEL_8;
    }

LABEL_9:
    v15 = v6;

    v3 = v15;
    goto LABEL_10;
  }

  if (!v4)
  {
    v16 = timeLabelFont;
    v5 = &OBJC_IVAR___AVMobileGlassTimelineView__timeLabelInlineFont;
    v6 = *(self + 552);
    if (!v6)
    {
      v7 = MEMORY[0x1E69DDD08];
LABEL_8:
      v8 = MEMORY[0x1E69DB878];
      v9 = *v7;
      v10 = *MEMORY[0x1E69DB970];
      traitCollection = [self traitCollection];
      v12 = [v8 avkit_monospacedDigitFontWithTextStyle:v9 fontWeight:traitCollection traitCollection:v10];
      v13 = *v5;
      v14 = *(self + v13);
      *(self + v13) = v12;

      v6 = *(self + *v5);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:
  v17 = v3;
  [*(self + 528) setFont:v3];
  [*(self + 536) setFont:v17];
  [self setNeedsLayout];
}

- (uint64_t)_updateSliderEnabledStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 604);
    result = [*(result + 696) isEnabled];
    if (v2 != result)
    {
      v3 = *(v1 + 696);
      v4 = *(v1 + 604);

      return [v3 setEnabled:v4];
    }
  }

  return result;
}

- (void)prepareForDeemphasisIfNeeded
{
  if (self->_overrideFluidSliderPreference || (+[AVKitGlobalSettings shared](AVKitGlobalSettings, "shared"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 fluidSliderEnabled], v3, v4))
  {
    if ([(AVMobileGlassTimelineView *)self isEmphasized])
    {
      if ([MEMORY[0x1E69DD250] _isInRetargetableAnimationBlock])
      {
        fluidSlider = [(AVMobileGlassTimelineView *)self fluidSlider];
        [fluidSlider _removeAllRetargetableAnimations:0];
        v6 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __57__AVMobileGlassTimelineView_prepareForDeemphasisIfNeeded__block_invoke;
        v8[3] = &unk_1E7209FB0;
        v9 = fluidSlider;
        selfCopy = self;
        v7 = fluidSlider;
        [v6 performWithoutAnimation:v8];
      }
    }
  }
}

uint64_t __57__AVMobileGlassTimelineView_prepareForDeemphasisIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBarHeight:9.0];
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:?];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

- (void)setSliderExtendedDynamicRangeGain:(double)gain
{
  if (self->_sliderExtendedDynamicRangeGain != gain)
  {
    self->_sliderExtendedDynamicRangeGain = gain;
    [(UIView *)self->_slider setAvkit_extendedDynamicRangeGain:?];
  }
}

- (void)setLabelsCompositingFilter:(id)filter
{
  filterCopy = filter;
  if (self->_labelsCompositingFilter != filterCopy)
  {
    v8 = filterCopy;
    objc_storeStrong(&self->_labelsCompositingFilter, filter);
    layer = [(AVLabel *)self->_trailingLabel layer];
    [layer setCompositingFilter:v8];

    layer2 = [(AVLabel *)self->_leadingLabel layer];
    [layer2 setCompositingFilter:v8];
  }

  MEMORY[0x1EEE66BE0](filterCopy);
}

- (void)setLabelsFont:(id)font
{
  fontCopy = font;
  if (self->_labelsFont != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_labelsFont, font);
    [(AVMobileGlassTimelineView *)self _updateFonts];
    fontCopy = v6;
  }
}

- (void)setLabelsTextColor:(id)color
{
  colorCopy = color;
  if (self->_labelsTextColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_labelsTextColor, color);
    [(AVMobileGlassTimelineView *)self _updateLabelsTextColorIfNeeded];
    colorCopy = v6;
  }
}

- (void)setLabelsExtendedDynamicRangeGain:(double)gain
{
  if (self->_labelsExtendedDynamicRangeGain != gain)
  {
    self->_labelsExtendedDynamicRangeGain = gain;
    [(UIView *)self->_trailingLabel setAvkit_extendedDynamicRangeGain:?];
    leadingLabel = self->_leadingLabel;
    labelsExtendedDynamicRangeGain = self->_labelsExtendedDynamicRangeGain;

    [(UIView *)leadingLabel setAvkit_extendedDynamicRangeGain:labelsExtendedDynamicRangeGain];
  }
}

- (void)setTrailingTimeText:(id)text
{
  textCopy = text;
  if (self->_trailingTimeText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_trailingTimeText, text);
    [(AVLabel *)self->_trailingLabel setText:self->_trailingTimeText];
    [(AVMobileGlassTimelineView *)self setNeedsLayout];
    textCopy = v6;
  }
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v6 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    [(AVMobileGlassTimelineView *)self _updateFonts];
    sheetCopy = v6;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(AVMobileGlassTimelineView *)self _updateSliderEnabledStateIfNeeded];
  }
}

- (void)setEmphasized:(BOOL)emphasized
{
  if (self->_emphasized != emphasized)
  {
    self->_emphasized = emphasized;
    isEmphasized = [(AVMobileGlassTimelineView *)self isEmphasized];
    if (isEmphasized)
    {
      if (self->_labelPosition == 1)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }

      v7 = 10.0;
    }

    else
    {
      v6 = 1.0;
      v7 = 8.0;
    }

    [(AVMobileGlassTimelineView *)self _updateLabelsTextColorIfNeeded];
    [(AVMobileChromelessSlider *)self->_slider setBarHeight:v7];
    if (!self->_labelsAutoadjustWithSliderEmphasis)
    {
      [(AVLabel *)self->_leadingLabel setAlpha:v6];
      [(AVLabel *)self->_trailingLabel setAlpha:v6];
    }

    [(AVMobileGlassBackgroundView *)self->_dimmingView setEmphasized:isEmphasized];
    [(CALayer *)self->_glassShadowLayer setHidden:isEmphasized ^ 1];
    v8 = self->_layoutType != 2;
    [(AVView *)self->_dimmingView setHidden:v8];
    [(CALayer *)self->_glassShadowLayer setHidden:v8];

    [(AVMobileGlassTimelineView *)self setNeedsLayout];
  }
}

- (void)setLeadingTimeText:(id)text
{
  textCopy = text;
  if (self->_leadingTimeText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_leadingTimeText, text);
    [(AVLabel *)self->_leadingLabel setText:self->_leadingTimeText];
    [(AVMobileGlassTimelineView *)self setNeedsLayout];
    textCopy = v6;
  }
}

- (void)setLayoutType:(unint64_t)type
{
  if (self->_layoutType != type)
  {
    self->_layoutType = type;
    [(AVMobileGlassTimelineView *)self _updateFonts];
    [(AVMobileGlassTimelineView *)self _updateLabelsTextColorIfNeeded];
    v4 = self->_layoutType != 2;
    [(AVView *)self->_dimmingView setHidden:v4];
    [(CALayer *)self->_glassShadowLayer setHidden:v4];

    [(AVMobileGlassTimelineView *)self setNeedsLayout];
  }
}

- (void)setLabelPosition:(unint64_t)position
{
  if (self->_labelPosition != position)
  {
    self->_labelPosition = position;
    [(AVMobileGlassTimelineView *)self setNeedsLayout];
  }
}

- (AVMobileGlassTimelineView)initWithUsingFluidSlider:(BOOL)slider
{
  v7.receiver = self;
  v7.super_class = AVMobileGlassTimelineView;
  v4 = [(AVGlassBackedView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_overrideFluidSliderPreference = slider;
    [(AVMobileGlassTimelineView *)v4 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(self + 624);
  *(self + 624) = 0;

  v3 = *(self + 640);
  *(self + 640) = 0;

  *(self + 608) = 0;
  *(self + 616) = 1;
  *(self + 602) = 1;
  v4 = *(MEMORY[0x1E695F050] + 16);
  *(self + 568) = *MEMORY[0x1E695F050];
  *(self + 584) = v4;
  *(self + 603) = 0;
  *(self + 604) = 1;
  [self setIgnoresTouches:1];
  v7[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = [self registerForTraitChanges:v5 withHandler:&__block_literal_global_22698];
}

- (AVMobileGlassTimelineView)initWithStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  v10.receiver = self;
  v10.super_class = AVMobileGlassTimelineView;
  v6 = [(AVGlassBackedView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, sheet);
    v8 = +[AVKitGlobalSettings shared];
    v7->_overrideFluidSliderPreference = [v8 fluidSliderEnabled];

    [(AVMobileGlassTimelineView *)v7 _commonInit];
  }

  return v7;
}

@end