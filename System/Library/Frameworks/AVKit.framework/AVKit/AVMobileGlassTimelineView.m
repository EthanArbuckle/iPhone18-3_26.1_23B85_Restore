@interface AVMobileGlassTimelineView
- (AVMobileGlassTimelineView)initWithStyleSheet:(id)a3;
- (AVMobileGlassTimelineView)initWithUsingFluidSlider:(BOOL)a3;
- (AVMobileGlassTimelineViewDelegate)delegate;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_labelIntrinsicContentSize;
- (uint64_t)_intrinsicContentSizeWithLabelsInline;
- (uint64_t)_updateSliderEnabledStateIfNeeded;
- (void)_commonInit;
- (void)_setUpShadowAppearance;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_updateFonts;
- (void)_updateLabelsTextColorIfNeeded;
- (void)_updateShadowAppearanceState;
- (void)_updateShadowPathIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForDeemphasisIfNeeded;
- (void)setBackgroundMaterialStyle:(int64_t)a3;
- (void)setDrawsShadow:(BOOL)a3;
- (void)setEmphasized:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setLabelPosition:(unint64_t)a3;
- (void)setLabelsCompositingFilter:(id)a3;
- (void)setLabelsExtendedDynamicRangeGain:(double)a3;
- (void)setLabelsFont:(id)a3;
- (void)setLabelsTextColor:(id)a3;
- (void)setLayoutType:(unint64_t)a3;
- (void)setLeadingTimeText:(id)a3;
- (void)setSliderExtendedDynamicRangeGain:(double)a3;
- (void)setStyleSheet:(id)a3;
- (void)setTrailingTimeText:(id)a3;
- (void)updateBackgroundMaterial;
@end

@implementation AVMobileGlassTimelineView

- (AVMobileGlassTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setBackgroundMaterialStyle:(int64_t)a3
{
  if (self)
  {
    v5 = [(AVMobileGlassTimelineView *)self traitCollection];
    v6 = [v5 userInterfaceStyle];

    if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = a3;
    }

    if (v6 != 2)
    {
      v7 = a3;
    }

    if (v6 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
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

- (void)_traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileGlassTimelineView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = [v4 userInterfaceStyle];
  if (v6 != v7)
  {
    [(AVMobileGlassTimelineView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];
    if (self)
    {
      [(AVMobileGlassTimelineView *)self setBackgroundMaterialStyle:[(AVGlassBackedView *)self backgroundMaterialStyle]];
      [(AVMobileGlassTimelineView *)self _updateLabelsTextColorIfNeeded];
    }

    [(AVMobileChromelessSlider *)self->_slider setOverrideUserInterfaceStyle:v6];
    [(AVLabel *)self->_leadingLabel setOverrideUserInterfaceStyle:v6];
    trailingLabel = self->_trailingLabel;

    [(AVLabel *)trailingLabel setOverrideUserInterfaceStyle:v6];
  }
}

- (void)_updateShadowAppearanceState
{
  if (!a1)
  {
    return;
  }

  v14 = [a1[87] layer];
  v2 = [a1[68] layer];
  v3 = 0.0;
  if ([a1 drawsShadow])
  {
    v4 = [a1[87] traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 1)
    {
      v6 = 0;
      v7 = 0.0;
    }

    else
    {
      v6 = [MEMORY[0x1E69DC888] blackColor];
      v7 = 0.5;
    }

    v9 = [a1[66] traitCollection];
    if ([v9 userInterfaceStyle] == 1)
    {
      v10 = [a1[67] traitCollection];
      v11 = [v10 userInterfaceStyle];

      if (v11 == 1)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v8 = [MEMORY[0x1E69DC888] blackColor];
    v3 = 0.5;
    goto LABEL_12;
  }

  v6 = 0;
  v8 = 0;
  v7 = 0.0;
LABEL_12:
  [v14 setShadowColor:{objc_msgSend(v6, "CGColor")}];
  *&v12 = v7;
  [v14 setShadowOpacity:v12];
  [v2 setShadowColor:{objc_msgSend(v8, "CGColor")}];
  *&v13 = v3;
  [v2 setShadowOpacity:v13];
  [(AVMobileGlassTimelineView *)a1 _updateShadowPathIfNeeded];
}

- (void)_updateLabelsTextColorIfNeeded
{
  if (!a1)
  {
    return;
  }

  v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v3 = v2;
  v4 = *(a1 + 672);
  if (v4)
  {
    v7 = v2;
    v5 = v4;
LABEL_4:
    v6 = v5;

    v3 = v6;
    goto LABEL_7;
  }

  if (!*(a1 + 616) && (*(a1 + 603) & 1) == 0)
  {
    v7 = v2;
    v5 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    goto LABEL_4;
  }

LABEL_7:
  v8 = v3;
  [*(a1 + 528) setTextColor:v3];
  [*(a1 + 536) setTextColor:v8];
}

- (void)_updateShadowPathIfNeeded
{
  if (a1 && [a1 drawsShadow])
  {
    v26 = [*(a1 + 696) layer];
    [v26 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if (CGRectIsNull(*(a1 + 568)) || (v28.origin.x = v3, v28.origin.y = v5, v28.size.width = v7, v28.size.height = v9, !CGRectEqualToRect(*(a1 + 568), v28)))
    {
      *(a1 + 568) = v3;
      *(a1 + 576) = v5;
      *(a1 + 584) = v7;
      *(a1 + 592) = v9;
      v10 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v3, v5, v7, v9}];
      [v26 setShadowPath:{objc_msgSend(v10, "CGPath")}];
    }

    v11 = [*(a1 + 544) layer];
    v12 = [MEMORY[0x1E69DC728] bezierPathWithRect:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    if (([*(a1 + 528) isHidden] & 1) == 0)
    {
      v13 = [*(a1 + 528) traitCollection];
      v14 = [v13 userInterfaceStyle];

      if (v14 != 1)
      {
        v15 = [*(a1 + 528) layer];
        v16 = MEMORY[0x1E69DC728];
        [v15 frame];
        v17 = [v16 bezierPathWithRect:?];

        v12 = v17;
      }
    }

    if (([*(a1 + 536) isHidden] & 1) == 0)
    {
      v18 = [*(a1 + 536) traitCollection];
      v19 = [v18 userInterfaceStyle];

      if (v19 != 1)
      {
        v20 = [*(a1 + 536) layer];
        v21 = [v12 isEmpty];
        v22 = MEMORY[0x1E69DC728];
        [v20 frame];
        v23 = [v22 bezierPathWithRect:?];
        v24 = v23;
        if (v21)
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

    [v11 setShadowPath:{objc_msgSend(v12, "CGPath")}];
  }
}

- (void)_setUpShadowAppearance
{
  v4 = [(AVMobileChromelessSlider *)self->_slider layer];
  v3 = [(UIView *)self->_labelShadowView layer];
  [v4 setShadowOffset:{0.0, 4.0}];
  [v4 setPunchoutShadow:1];
  [v4 setShadowRadius:12.0];
  [v4 setShadowPathIsBounds:1];
  [v3 setShadowOffset:{0.0, 4.0}];
  [v3 setShadowRadius:12.0];
  [v3 setShadowPathIsBounds:1];
  [(AVMobileGlassTimelineView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];
}

- (void)updateBackgroundMaterial
{
  v3 = [(AVGlassBackedView *)self backgroundMaterialStyle];
  v4 = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedView *)self->_contentsView setBackgroundMaterialStyle:v3];
  contentsView = self->_contentsView;

  [(AVGlassBackedView *)contentsView setBackgroundMaterialized:v4];
}

- (void)setDrawsShadow:(BOOL)a3
{
  if (self->_drawsShadow != a3)
  {
    self->_drawsShadow = a3;
    [(AVMobileGlassTimelineView *)&self->super.super.super.super.super.isa _updateShadowAppearanceState];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3
{
  if (self->_slider == a3)
  {
    v5 = a3;
    [(AVMobileGlassTimelineView *)self invalidateIntrinsicContentSize];
    v6 = [(AVMobileGlassTimelineView *)self superview];
    [v6 avkit_intrinsicContentSizeOfSubviewWasInvalidated:v5];

    [(AVMobileGlassTimelineView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v11.receiver = self;
  v11.super_class = AVMobileGlassTimelineView;
  v7 = a4;
  v8 = [(AVMobileGlassTimelineView *)&v11 pointInside:v7 withEvent:x, y];
  slider = v6->_slider;
  [(AVMobileChromelessSlider *)slider convertPoint:v6 fromView:x, y, v11.receiver, v11.super_class];
  LOBYTE(v6) = [(AVMobileChromelessSlider *)slider pointInside:v7 withEvent:?];

  return (v8 | v6) & 1;
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
    v11 = [(AVMobileGlassTimelineView *)self _labelIntrinsicContentSize];
    v13 = v12;
    v14 = [(AVMobileGlassTimelineView *)self _labelIntrinsicContentSize];
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
    v23 = v11;
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
    v35 = v14 + v29;
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

    [(AVLabel *)self->_trailingLabel setFrame:v6 - v14 + v26, v24, v14, v16];
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
  v88 = [(AVMobileGlassTimelineView *)self delegate];
  v89 = objc_opt_respondsToSelector();

  if (v89)
  {
    v90 = [(AVMobileGlassTimelineView *)self delegate];
    [v90 timelineViewDidLayoutSubviews:self];
  }
}

- (double)_labelIntrinsicContentSize
{
  [*(a1 + 528) intrinsicContentSize];
  v3 = v2;
  [*(a1 + 536) intrinsicContentSize];
  v5 = v4;
  [(AVMobileChromelessTimelineView *)a1 _timelineScaleFactor];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v6 * v7;
  if (!*(a1 + 603))
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
      v7 = [MEMORY[0x1E69DC888] blackColor];
      -[CALayer setShadowColor:](v6, "setShadowColor:", [v7 CGColor]);

      LODWORD(v8) = 1041865114;
      [(CALayer *)self->_glassShadowLayer setOpacity:v8];
      [(CALayer *)self->_glassShadowLayer setShadowRadius:20.0];
      [(CALayer *)self->_glassShadowLayer setShadowPathIsBounds:1];
      [(CALayer *)self->_glassShadowLayer setPunchoutShadow:1];
      [(CALayer *)self->_glassShadowLayer setAllowsEdgeAntialiasing:1];
      [(CALayer *)self->_glassShadowLayer setHidden:1];
      v9 = [(AVMobileGlassTimelineView *)self layer];
      [v9 insertSublayer:self->_glassShadowLayer atIndex:0];
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
  if (!a1)
  {
    return;
  }

  v2 = [*(a1 + 632) timeLabelFont];
  v3 = v2;
  v4 = *(a1 + 616);
  if (v4 == 2)
  {
    v16 = v2;
    v5 = &OBJC_IVAR___AVMobileGlassTimelineView__timeLabelFullscreenPlatterFont;
    v6 = *(a1 + 560);
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
    v16 = v2;
    v5 = &OBJC_IVAR___AVMobileGlassTimelineView__timeLabelInlineFont;
    v6 = *(a1 + 552);
    if (!v6)
    {
      v7 = MEMORY[0x1E69DDD08];
LABEL_8:
      v8 = MEMORY[0x1E69DB878];
      v9 = *v7;
      v10 = *MEMORY[0x1E69DB970];
      v11 = [a1 traitCollection];
      v12 = [v8 avkit_monospacedDigitFontWithTextStyle:v9 fontWeight:v11 traitCollection:v10];
      v13 = *v5;
      v14 = *(a1 + v13);
      *(a1 + v13) = v12;

      v6 = *(a1 + *v5);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:
  v17 = v3;
  [*(a1 + 528) setFont:v3];
  [*(a1 + 536) setFont:v17];
  [a1 setNeedsLayout];
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
        v5 = [(AVMobileGlassTimelineView *)self fluidSlider];
        [v5 _removeAllRetargetableAnimations:0];
        v6 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __57__AVMobileGlassTimelineView_prepareForDeemphasisIfNeeded__block_invoke;
        v8[3] = &unk_1E7209FB0;
        v9 = v5;
        v10 = self;
        v7 = v5;
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

- (void)setSliderExtendedDynamicRangeGain:(double)a3
{
  if (self->_sliderExtendedDynamicRangeGain != a3)
  {
    self->_sliderExtendedDynamicRangeGain = a3;
    [(UIView *)self->_slider setAvkit_extendedDynamicRangeGain:?];
  }
}

- (void)setLabelsCompositingFilter:(id)a3
{
  v5 = a3;
  if (self->_labelsCompositingFilter != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_labelsCompositingFilter, a3);
    v6 = [(AVLabel *)self->_trailingLabel layer];
    [v6 setCompositingFilter:v8];

    v7 = [(AVLabel *)self->_leadingLabel layer];
    [v7 setCompositingFilter:v8];
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (void)setLabelsFont:(id)a3
{
  v5 = a3;
  if (self->_labelsFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_labelsFont, a3);
    [(AVMobileGlassTimelineView *)self _updateFonts];
    v5 = v6;
  }
}

- (void)setLabelsTextColor:(id)a3
{
  v5 = a3;
  if (self->_labelsTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_labelsTextColor, a3);
    [(AVMobileGlassTimelineView *)self _updateLabelsTextColorIfNeeded];
    v5 = v6;
  }
}

- (void)setLabelsExtendedDynamicRangeGain:(double)a3
{
  if (self->_labelsExtendedDynamicRangeGain != a3)
  {
    self->_labelsExtendedDynamicRangeGain = a3;
    [(UIView *)self->_trailingLabel setAvkit_extendedDynamicRangeGain:?];
    leadingLabel = self->_leadingLabel;
    labelsExtendedDynamicRangeGain = self->_labelsExtendedDynamicRangeGain;

    [(UIView *)leadingLabel setAvkit_extendedDynamicRangeGain:labelsExtendedDynamicRangeGain];
  }
}

- (void)setTrailingTimeText:(id)a3
{
  v5 = a3;
  if (self->_trailingTimeText != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_trailingTimeText, a3);
    [(AVLabel *)self->_trailingLabel setText:self->_trailingTimeText];
    [(AVMobileGlassTimelineView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileGlassTimelineView *)self _updateFonts];
    v5 = v6;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(AVMobileGlassTimelineView *)self _updateSliderEnabledStateIfNeeded];
  }
}

- (void)setEmphasized:(BOOL)a3
{
  if (self->_emphasized != a3)
  {
    self->_emphasized = a3;
    v5 = [(AVMobileGlassTimelineView *)self isEmphasized];
    if (v5)
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

    [(AVMobileGlassBackgroundView *)self->_dimmingView setEmphasized:v5];
    [(CALayer *)self->_glassShadowLayer setHidden:v5 ^ 1];
    v8 = self->_layoutType != 2;
    [(AVView *)self->_dimmingView setHidden:v8];
    [(CALayer *)self->_glassShadowLayer setHidden:v8];

    [(AVMobileGlassTimelineView *)self setNeedsLayout];
  }
}

- (void)setLeadingTimeText:(id)a3
{
  v5 = a3;
  if (self->_leadingTimeText != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_leadingTimeText, a3);
    [(AVLabel *)self->_leadingLabel setText:self->_leadingTimeText];
    [(AVMobileGlassTimelineView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setLayoutType:(unint64_t)a3
{
  if (self->_layoutType != a3)
  {
    self->_layoutType = a3;
    [(AVMobileGlassTimelineView *)self _updateFonts];
    [(AVMobileGlassTimelineView *)self _updateLabelsTextColorIfNeeded];
    v4 = self->_layoutType != 2;
    [(AVView *)self->_dimmingView setHidden:v4];
    [(CALayer *)self->_glassShadowLayer setHidden:v4];

    [(AVMobileGlassTimelineView *)self setNeedsLayout];
  }
}

- (void)setLabelPosition:(unint64_t)a3
{
  if (self->_labelPosition != a3)
  {
    self->_labelPosition = a3;
    [(AVMobileGlassTimelineView *)self setNeedsLayout];
  }
}

- (AVMobileGlassTimelineView)initWithUsingFluidSlider:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = AVMobileGlassTimelineView;
  v4 = [(AVGlassBackedView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_overrideFluidSliderPreference = a3;
    [(AVMobileGlassTimelineView *)v4 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 624);
  *(a1 + 624) = 0;

  v3 = *(a1 + 640);
  *(a1 + 640) = 0;

  *(a1 + 608) = 0;
  *(a1 + 616) = 1;
  *(a1 + 602) = 1;
  v4 = *(MEMORY[0x1E695F050] + 16);
  *(a1 + 568) = *MEMORY[0x1E695F050];
  *(a1 + 584) = v4;
  *(a1 + 603) = 0;
  *(a1 + 604) = 1;
  [a1 setIgnoresTouches:1];
  v7[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = [a1 registerForTraitChanges:v5 withHandler:&__block_literal_global_22698];
}

- (AVMobileGlassTimelineView)initWithStyleSheet:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AVMobileGlassTimelineView;
  v6 = [(AVGlassBackedView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    v8 = +[AVKitGlobalSettings shared];
    v7->_overrideFluidSliderPreference = [v8 fluidSliderEnabled];

    [(AVMobileGlassTimelineView *)v7 _commonInit];
  }

  return v7;
}

@end