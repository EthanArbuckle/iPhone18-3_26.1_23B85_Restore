@interface AVMobileChromelessTimelineView
- (AVMobileChromelessTimelineView)initWithStyleSheet:(id)a3;
- (AVMobileChromelessTimelineView)initWithUsingFluidSlider:(BOOL)a3;
- (AVMobileChromelessTimelineViewDelegate)delegate;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (double)_labelIntrinsicContentSize;
- (uint64_t)_commonInit;
- (uint64_t)_timelineScaleFactor;
- (uint64_t)_updateSliderEnabledStateIfNeeded;
- (void)_setUpShadowAppearance;
- (void)_updateFonts;
- (void)_updateLabelsTextColorIfNeeded;
- (void)_updateShadowAppearanceState;
- (void)_updateShadowPathIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForDeemphasisIfNeeded;
- (void)setDrawsShadow:(BOOL)a3;
- (void)setEmphasized:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setLabelPosition:(unint64_t)a3;
- (void)setLabelsCompositingFilter:(id)a3;
- (void)setLabelsExtendedDynamicRangeGain:(double)a3;
- (void)setLabelsFont:(id)a3;
- (void)setLabelsTextColor:(id)a3;
- (void)setLeadingTimeText:(id)a3;
- (void)setSliderExtendedDynamicRangeGain:(double)a3;
- (void)setStyleSheet:(id)a3;
- (void)setTrailingTimeText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AVMobileChromelessTimelineView

- (AVMobileChromelessTimelineViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setUpShadowAppearance
{
  v4 = [(AVMobileChromelessSlider *)self->_slider layer];
  v3 = [(UIView *)self->_labelShadowView layer];
  [v4 setShadowOffset:{0.0, 6.0}];
  [v4 setShadowRadius:10.0];
  [v3 setShadowOffset:{0.0, 6.0}];
  [v3 setShadowRadius:10.0];
  [(AVMobileChromelessTimelineView *)&self->super.super.super.super.isa _updateShadowAppearanceState];
}

- (void)_updateShadowAppearanceState
{
  if (!a1)
  {
    return;
  }

  v14 = [a1[75] layer];
  v2 = [a1[60] layer];
  v3 = 0;
  if ([a1 drawsShadow])
  {
    v4 = [a1[75] traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 1)
    {
      v6 = 0;
      v7 = 0.0;
    }

    else
    {
      v6 = [MEMORY[0x1E69DC888] blackColor];
      v7 = 0.8;
    }

    v9 = [a1[77] traitCollection];
    if ([v9 userInterfaceStyle] == 1)
    {
      v10 = [a1[78] traitCollection];
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
    v3 = 1058642330;
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
  LODWORD(v13) = v3;
  [v2 setShadowOpacity:v13];
  [(AVMobileChromelessTimelineView *)a1 _updateShadowPathIfNeeded];
}

- (void)_updateShadowPathIfNeeded
{
  if (a1 && [a1 drawsShadow])
  {
    v26 = [*(a1 + 600) layer];
    [v26 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if (CGRectIsNull(*(a1 + 488)) || (v28.origin.x = v3, v28.origin.y = v5, v28.size.width = v7, v28.size.height = v9, !CGRectEqualToRect(*(a1 + 488), v28)))
    {
      *(a1 + 488) = v3;
      *(a1 + 496) = v5;
      *(a1 + 504) = v7;
      *(a1 + 512) = v9;
      v10 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v3, v5, v7, v9}];
      [v26 setShadowPath:{objc_msgSend(v10, "CGPath")}];
    }

    v11 = [*(a1 + 480) layer];
    v12 = [MEMORY[0x1E69DC728] bezierPathWithRect:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    if (([*(a1 + 616) isHidden] & 1) == 0)
    {
      v13 = [*(a1 + 616) traitCollection];
      v14 = [v13 userInterfaceStyle];

      if (v14 != 1)
      {
        v15 = [*(a1 + 616) layer];
        v16 = MEMORY[0x1E69DC728];
        [v15 frame];
        v17 = [v16 bezierPathWithRect:?];

        v12 = v17;
      }
    }

    if (([*(a1 + 624) isHidden] & 1) == 0)
    {
      v18 = [*(a1 + 624) traitCollection];
      v19 = [v18 userInterfaceStyle];

      if (v19 != 1)
      {
        v20 = [*(a1 + 624) layer];
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

- (void)setDrawsShadow:(BOOL)a3
{
  if (self->_drawsShadow != a3)
  {
    self->_drawsShadow = a3;
    [(AVMobileChromelessTimelineView *)&self->super.super.super.super.isa _updateShadowAppearanceState];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3
{
  if (self->_slider == a3)
  {
    v5 = a3;
    [(AVMobileChromelessTimelineView *)self invalidateIntrinsicContentSize];
    v6 = [(AVMobileChromelessTimelineView *)self superview];
    [v6 avkit_intrinsicContentSizeOfSubviewWasInvalidated:v5];

    [(AVMobileChromelessTimelineView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVMobileChromelessTimelineView;
  v4 = a3;
  [(AVMobileChromelessTimelineView *)&v8 traitCollectionDidChange:v4];
  v5 = [(AVMobileChromelessTimelineView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(AVMobileChromelessTimelineView *)&self->super.super.super.super.isa _updateShadowAppearanceState];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  v11.receiver = self;
  v11.super_class = AVMobileChromelessTimelineView;
  v7 = a4;
  v8 = [(AVMobileChromelessTimelineView *)&v11 pointInside:v7 withEvent:x, y];
  slider = v6->_slider;
  [(AVMobileChromelessSlider *)slider convertPoint:v6 fromView:x, y, v11.receiver, v11.super_class];
  LOBYTE(v6) = [(AVMobileChromelessSlider *)slider pointInside:v7 withEvent:?];

  return (v8 | v6) & 1;
}

- (void)layoutSubviews
{
  v121 = *MEMORY[0x1E69E9840];
  v117.receiver = self;
  v117.super_class = AVMobileChromelessTimelineView;
  [(AVView *)&v117 layoutSubviews];
  labelPosition = self->_labelPosition;
  [(AVMobileChromelessTimelineView *)self bounds];
  v115 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVMobileChromelessSlider *)self->_slider intrinsicContentSize];
  v12 = v11;
  v116 = v6;
  if (labelPosition)
  {
    v13 = [(AVMobileChromelessTimelineView *)self _labelIntrinsicContentSize];
    v15 = v14;
    v16 = v10;
    v17 = [(AVMobileChromelessTimelineView *)self _labelIntrinsicContentSize];
    v19 = v18;
    [(AVMobileChromelessTimelineView *)self _timelineScaleFactor];
    v113 = (15.0 - v12) * 0.5;
    v21 = 7.5;
    if (self->_labelsAutoadjustWithSliderEmphasis)
    {
      v21 = v12;
    }

    v22 = v113 + 6.0 + v21;
    if (self->_emphasized)
    {
      v23 = v8 * v20;
    }

    else
    {
      v23 = v8;
    }

    v24 = v12 * v20;
    if (!self->_emphasized)
    {
      v24 = v12;
    }

    v110 = v15;
    v112 = v24;
    v25 = v15 + v22;
    v26 = v17;
    v27 = v16;
    v28 = v13;
    v29 = v22;
    v30 = -(v8 - v8 * v20) * 0.5;
    if (self->_emphasized)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0.0;
    }

    v32 = v23 < v25;
    if (v23 < v28)
    {
      v32 = 1;
    }

    if (self->_leadingTimeText)
    {
      v33 = v32;
    }

    else
    {
      v33 = 1;
    }

    v34 = v28 + 3.0;
    v35 = v23;
    v36 = v19 + v22;
    v37 = vabds_f32(v35, v36);
    if (v33)
    {
      v34 = 0.0;
    }

    v39 = v37 >= 0.00000011921 && v35 <= v36;
    v40 = v26 + v34;
    v42 = vabds_f32(v35, v40) >= 0.00000011921 && v35 <= v40;
    v43 = self->_trailingTimeText == 0 || v39 || v42;
    v44 = v27;
    v46 = fabsf(v44 + -15.0) >= 0.00000011921 && v44 <= 15.0;
    v47 = self->_labelPosition;
    [(AVMobileChromelessTimelineView *)self _timelineScaleFactor];
    memset(&v120, 0, sizeof(v120));
    if (self->_emphasized)
    {
      if (!v47)
      {
        v48 = 1.0;
      }

      CGAffineTransformMakeScale(&v120, v48, v48);
    }

    else
    {
      v66 = *(MEMORY[0x1E695EFD0] + 16);
      *&v120.a = *MEMORY[0x1E695EFD0];
      *&v120.c = v66;
      *&v120.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    leadingLabel = self->_leadingLabel;
    v118 = v120;
    [(AVLabel *)leadingLabel setTransform:&v118, *&v110];
    trailingLabel = self->_trailingLabel;
    v118 = v120;
    [(AVLabel *)trailingLabel setTransform:&v118];
    if (v33)
    {
      if (v43)
      {
        goto LABEL_56;
      }
    }

    else
    {
      [(AVLabel *)self->_leadingLabel setFrame:-v31, v29, v28, v111];
      if (v43)
      {
LABEL_56:
        if (v46)
        {
LABEL_58:
          [(UIView *)self->_labelShadowView setFrame:v115, v116, v8, v27];
          [(AVLabel *)self->_leadingLabel setHidden:v33];
          v70 = self->_trailingLabel;
          v71 = v43;
          goto LABEL_80;
        }

LABEL_57:
        [(AVMobileChromelessSlider *)self->_slider setFrame:0.0, v113, v23, v112];
        slider = self->_slider;
        [(AVMobileChromelessTimelineView *)self bounds];
        [(AVMobileChromelessSlider *)slider setCenter:CGRectGetMidX(v122), v113];
        goto LABEL_58;
      }
    }

    [(AVLabel *)self->_trailingLabel setFrame:v8 - v26 + v31, v29, v26, v19];
    if (v46)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  [(AVLabel *)self->_leadingLabel intrinsicContentSize];
  v50 = v49;
  v52 = v51;
  [(AVLabel *)self->_trailingLabel intrinsicContentSize];
  v55 = v53;
  v57 = v56;
  v58 = v8 - v50 + -12.0;
  v114 = 0.0;
  if (v58 >= 60.0 && ((v59 = v52, v60 = v10, *&v54 = vabds_f32(v59, v60), v59 >= v60) ? (v61 = *&v54 < 0.00000011921) : (v61 = 1), v61))
  {
    leadingTimeText = self->_leadingTimeText;
    v63 = 0.0;
    v64 = leadingTimeText != 0;
    if (leadingTimeText)
    {
      v65 = v8 - v50 + -12.0;
    }

    else
    {
      v65 = v8;
    }

    if (leadingTimeText)
    {
      v63 = v50 + 12.0;
    }

    v114 = v63;
  }

  else
  {
    v64 = 0;
    v65 = v8;
  }

  v72 = v58 - v53 + -12.0;
  if (v72 >= 60.0 && ((v73 = v57, v74 = v10, v75 = vabds_f32(v73, v74), v73 >= v74) ? (v76 = v75 < 0.00000011921) : (v76 = 1), v76))
  {
    trailingTimeText = self->_trailingTimeText;
    v78 = trailingTimeText != 0;
    if (trailingTimeText)
    {
      v65 = v72;
    }
  }

  else
  {
    v78 = 0;
  }

  v46 = v12 > v10;
  if (v64)
  {
    [(AVLabel *)self->_leadingLabel setFrame:0.0, (v10 - v52) * 0.5, v50, v52, v54];
  }

  if (v78)
  {
    [(AVLabel *)self->_trailingLabel setFrame:v8 - v55, (v10 - v57) * 0.5, v55, v57, v54];
  }

  if (v12 <= v10)
  {
    [(AVMobileChromelessSlider *)self->_slider setFrame:v114, (v10 - v12) * 0.5, v65, v12, v54];
  }

  [(UIView *)self->_labelShadowView setFrame:v115, v116, v8, v10];
  [(AVLabel *)self->_leadingLabel setHidden:!v64];
  v70 = self->_trailingLabel;
  v71 = !v78;
LABEL_80:
  [(AVLabel *)v70 setHidden:v71];
  [(AVMobileChromelessSlider *)self->_slider setHidden:v46];
  [(AVMobileChromelessTimelineView *)self _updateShadowPathIfNeeded];
  if ([objc_opt_class() conformsToProtocol:&unk_1EFF1F5A8])
  {
    v79 = self;
    emphasized = v79->_emphasized;
    [(AVView *)v79 contentIntersection];
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    if (emphasized)
    {
      [(AVMobileChromelessTimelineView *)v79 bounds];
      v90 = v89;
      [(AVMobileChromelessTimelineView *)v79 _timelineScaleFactor];
      v92 = v91;
      [(AVMobileChromelessSlider *)v79->_slider frame];
      v93 = -(v90 - v90 * v92) * 0.5;
      v95 = fabs(v94);
      v86 = v86 + v93 * 2.0;
      v88 = v88 + v95;
      v82 = v82 - v93;
      v84 = v84 - v95;
    }

    v96 = [(AVMobileChromelessTimelineView *)v79 subviews];
    memset(&v118, 0, sizeof(v118));
    v119 = 0u;
    v97 = [v96 countByEnumeratingWithState:&v118 objects:&v120 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = **&v118.c;
      do
      {
        for (i = 0; i != v98; ++i)
        {
          if (**&v118.c != v99)
          {
            objc_enumerationMutation(v96);
          }

          v101 = *(*&v118.b + 8 * i);
          if ([objc_opt_class() conformsToProtocol:&unk_1EFF1F5A8])
          {
            v102 = v101;
            [v102 frame];
            v125.origin.x = v103;
            v125.origin.y = v104;
            v125.size.width = v105;
            v125.size.height = v106;
            v123.origin.x = v82;
            v123.origin.y = v84;
            v123.size.width = v86;
            v123.size.height = v88;
            v124 = CGRectIntersection(v123, v125);
            [v102 convertRect:v79 fromView:{v124.origin.x, v124.origin.y, v124.size.width, v124.size.height}];
            [v102 setContentIntersection:?];
          }
        }

        v98 = [v96 countByEnumeratingWithState:&v118 objects:&v120 count:16];
      }

      while (v98);
    }
  }

  v107 = [(AVMobileChromelessTimelineView *)self delegate];
  v108 = objc_opt_respondsToSelector();

  if (v108)
  {
    v109 = [(AVMobileChromelessTimelineView *)self delegate];
    [v109 timelineViewDidLayoutSubviews:self];
  }
}

- (uint64_t)_timelineScaleFactor
{
  v2 = [a1 superview];
  [v2 frame];

  return [a1 bounds];
}

- (double)_labelIntrinsicContentSize
{
  [*(a1 + 616) intrinsicContentSize];
  v3 = v2;
  [*(a1 + 624) intrinsicContentSize];
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
  if (!*(a1 + 523))
  {
    return v7;
  }

  return v8;
}

- (CGSize)intrinsicContentSize
{
  leadingTimeText = self->_leadingTimeText;
  if (self->_labelPosition)
  {
    if (leadingTimeText)
    {
      [(AVLabel *)self->_leadingLabel intrinsicContentSize];
      v5 = v4;
    }

    else
    {
      v5 = 0.0;
    }

    if (self->_trailingTimeText)
    {
      [(AVLabel *)self->_trailingLabel intrinsicContentSize];
      if (v5 < v8)
      {
        v5 = v8;
      }
    }

    if (v5 <= 0.0)
    {
      v7 = 15.0;
    }

    else
    {
      v7 = v5 + 6.0 + 15.0;
    }
  }

  else
  {
    if (leadingTimeText)
    {
      [(AVLabel *)self->_leadingLabel intrinsicContentSize];
      v7 = fmax(v6, 15.0);
    }

    else
    {
      v7 = 15.0;
    }

    if (self->_trailingTimeText)
    {
      [(AVLabel *)self->_trailingLabel intrinsicContentSize];
      if (v7 < v9)
      {
        v7 = v9;
      }
    }
  }

  v10 = *MEMORY[0x1E69DE788];
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)didMoveToWindow
{
  v16.receiver = self;
  v16.super_class = AVMobileChromelessTimelineView;
  [(AVMobileChromelessTimelineView *)&v16 didMoveToWindow];
  if (self)
  {
    if (self->_slider || (!self->_overrideFluidSliderPreference ? (v3 = off_1E7205B20) : (v3 = off_1E7205B18), v4 = objc_alloc_init(*v3), slider = self->_slider, self->_slider = v4, slider, [(AVMobileChromelessSlider *)self->_slider setAutoresizingMask:0], [(AVMobileChromelessSlider *)self->_slider setBarHeight:7.5], [(AVMobileChromelessSlider *)self->_slider setSemanticContentAttribute:3], [(UIView *)self->_slider setAvkit_extendedDynamicRangeGain:self->_sliderExtendedDynamicRangeGain], [(AVMobileChromelessTimelineView *)self _updateSliderEnabledStateIfNeeded], [(AVMobileChromelessTimelineView *)self addSubview:self->_slider], self->_slider))
    {
      if (!self->_trailingLabel)
      {
        v6 = objc_alloc_init(AVLabel);
        trailingLabel = self->_trailingLabel;
        self->_trailingLabel = v6;

        [(AVLabel *)self->_trailingLabel setAccessibilityIdentifier:@"Remaining Time"];
        v8 = self->_trailingLabel;
        v9 = AVLocalizedString(@"Remaining Time");
        [(AVLabel *)v8 setAccessibilityLabel:v9];

        [(AVLabel *)self->_trailingLabel setIsAccessibilityElement:1];
        [(AVLabel *)self->_trailingLabel setAutoresizingMask:0];
        [(AVLabel *)self->_trailingLabel setUserInteractionEnabled:0];
        [(UIView *)self->_trailingLabel setAvkit_extendedDynamicRangeGain:self->_labelsExtendedDynamicRangeGain];
        [(AVMobileChromelessTimelineView *)self insertSubview:self->_trailingLabel aboveSubview:self->_slider];
      }

      if (!self->_leadingLabel)
      {
        v10 = objc_alloc_init(AVLabel);
        leadingLabel = self->_leadingLabel;
        self->_leadingLabel = v10;

        [(AVLabel *)self->_leadingLabel setAccessibilityIdentifier:@"Elapsed Time"];
        v12 = self->_leadingLabel;
        v13 = AVLocalizedString(@"Elapsed Time");
        [(AVLabel *)v12 setAccessibilityLabel:v13];

        [(AVLabel *)self->_leadingLabel setIsAccessibilityElement:1];
        [(AVLabel *)self->_leadingLabel setAutoresizingMask:0];
        [(AVLabel *)self->_leadingLabel setUserInteractionEnabled:0];
        [(UIView *)self->_leadingLabel setAvkit_extendedDynamicRangeGain:self->_labelsExtendedDynamicRangeGain];
        [(AVMobileChromelessTimelineView *)self insertSubview:self->_leadingLabel aboveSubview:self->_trailingLabel];
      }

      [(AVMobileChromelessTimelineView *)self _updateLabelsTextColorIfNeeded];
      if (self->_slider && !self->_labelShadowView)
      {
        v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
        labelShadowView = self->_labelShadowView;
        self->_labelShadowView = v14;

        [(UIView *)self->_labelShadowView setIsAccessibilityElement:0];
        [(UIView *)self->_labelShadowView setAutoresizingMask:0];
        [(UIView *)self->_labelShadowView setUserInteractionEnabled:0];
        [(AVMobileChromelessTimelineView *)self insertSubview:self->_labelShadowView belowSubview:self->_slider];
      }
    }
  }

  [(AVMobileChromelessTimelineView *)self _setUpShadowAppearance];
  [(AVMobileChromelessTimelineView *)self _updateFonts];
}

- (void)_updateFonts
{
  if (a1)
  {
    v2 = *(a1 + 576);
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = [*(a1 + 544) timeLabelFont];
    }

    v4 = v3;
    [*(a1 + 616) setFont:v3];
    [*(a1 + 624) setFont:v4];
    [a1 setNeedsLayout];
  }
}

- (void)_updateLabelsTextColorIfNeeded
{
  if (a1)
  {
    v2 = *(a1 + 584);
    if (*(a1 + 523))
    {
      [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v3 = ;
    v4 = v3;
    if (v2)
    {
      v6 = v3;
      v5 = *(a1 + 584);

      v4 = v5;
    }

    v7 = v4;
    [*(a1 + 616) setTextColor:v4];
    [*(a1 + 624) setTextColor:v7];
  }
}

- (uint64_t)_updateSliderEnabledStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 524);
    result = [*(result + 600) isEnabled];
    if (v2 != result)
    {
      v3 = *(v1 + 600);
      v4 = *(v1 + 524);

      return [v3 setEnabled:v4];
    }
  }

  return result;
}

- (void)prepareForDeemphasisIfNeeded
{
  if (self->_overrideFluidSliderPreference || (+[AVKitGlobalSettings shared](AVKitGlobalSettings, "shared"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 fluidSliderEnabled], v3, v4))
  {
    if ([(AVMobileChromelessTimelineView *)self isEmphasized])
    {
      if ([MEMORY[0x1E69DD250] _isInRetargetableAnimationBlock])
      {
        v5 = [(AVMobileChromelessTimelineView *)self fluidSlider];
        [v5 _removeAllRetargetableAnimations:0];
        v6 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __62__AVMobileChromelessTimelineView_prepareForDeemphasisIfNeeded__block_invoke;
        v8[3] = &unk_1E7209FB0;
        v9 = v5;
        v10 = self;
        v7 = v5;
        [v6 performWithoutAnimation:v8];
      }
    }
  }
}

uint64_t __62__AVMobileChromelessTimelineView_prepareForDeemphasisIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBarHeight:11.25];
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
    [(AVMobileChromelessTimelineView *)self _updateFonts];
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
    [(AVMobileChromelessTimelineView *)self _updateLabelsTextColorIfNeeded];
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
    [(AVMobileChromelessTimelineView *)self setNeedsLayout];
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
    [(AVMobileChromelessTimelineView *)self _updateFonts];
    v5 = v6;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(AVMobileChromelessTimelineView *)self _updateSliderEnabledStateIfNeeded];
  }
}

- (void)setEmphasized:(BOOL)a3
{
  if (self->_emphasized != a3)
  {
    self->_emphasized = a3;
    if ([(AVMobileChromelessTimelineView *)self isEmphasized])
    {
      if (self->_labelPosition == 1)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = 1.0;
      }

      v6 = 15.0;
    }

    else
    {
      v6 = 7.5;
      v5 = 1.0;
    }

    [(AVMobileChromelessTimelineView *)self _updateLabelsTextColorIfNeeded];
    [(AVMobileChromelessSlider *)self->_slider setBarHeight:v6];
    if (!self->_labelsAutoadjustWithSliderEmphasis)
    {
      [(AVLabel *)self->_leadingLabel setAlpha:v5];
      [(AVLabel *)self->_trailingLabel setAlpha:v5];
    }

    [(AVMobileChromelessTimelineView *)self setNeedsLayout];
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
    [(AVMobileChromelessTimelineView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setLabelPosition:(unint64_t)a3
{
  if (self->_labelPosition != a3)
  {
    self->_labelPosition = a3;
    [(AVMobileChromelessTimelineView *)self setNeedsLayout];
  }
}

- (AVMobileChromelessTimelineView)initWithUsingFluidSlider:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = AVMobileChromelessTimelineView;
  v4 = [(AVView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_overrideFluidSliderPreference = a3;
    [(AVMobileChromelessTimelineView *)v4 _commonInit];
  }

  return v5;
}

- (uint64_t)_commonInit
{
  v2 = *(a1 + 536);
  *(a1 + 536) = 0;

  v3 = *(a1 + 552);
  *(a1 + 552) = 0;

  *(a1 + 528) = 0;
  *(a1 + 522) = 1;
  v4 = *(MEMORY[0x1E695F050] + 16);
  *(a1 + 488) = *MEMORY[0x1E695F050];
  *(a1 + 504) = v4;
  *(a1 + 523) = 0;
  *(a1 + 524) = 1;

  return [a1 setIgnoresTouches:1];
}

- (AVMobileChromelessTimelineView)initWithStyleSheet:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AVMobileChromelessTimelineView;
  v6 = [(AVView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    v8 = +[AVKitGlobalSettings shared];
    v7->_overrideFluidSliderPreference = [v8 fluidSliderEnabled];

    [(AVMobileChromelessTimelineView *)v7 _commonInit];
  }

  return v7;
}

@end