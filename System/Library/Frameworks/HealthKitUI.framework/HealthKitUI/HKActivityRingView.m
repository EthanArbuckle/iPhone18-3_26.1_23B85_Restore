@interface HKActivityRingView
- (HKActivityRingView)initWithCoder:(id)a3;
- (HKActivityRingView)initWithFrame:(CGRect)a3;
- (HKActivityRingView)initWithFrame:(CGRect)a3 renderer:(id)a4;
- (double)_ringDiameter;
- (void)_displayIconsForWheelchairUser:(BOOL)a3;
- (void)_setActivityRingViewBackgroundTransparent:(BOOL)a3;
- (void)_setEmptyRingAlpha:(double)a3;
- (void)_setRingDiameter:(double)a3 ringInterspacing:(double)a4 ringThickness:(double)a5;
- (void)_setUpAfterInit;
- (void)_setUpRingsView;
- (void)_updateAndInterpolateRingsViewDiameterForWidth:(double)a3 lowerDirective:(id)a4 higherDirective:(id)a5;
- (void)_updateMaskPath;
- (void)_updateRingsViewDiameter;
- (void)_updateRingsViewDiameterLegacy;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation HKActivityRingView

- (void)_updateMaskPath
{
  [(HKActivityRingView *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetHeight(v11);
  v7 = MEMORY[0x277D75208];
  [(ARUIRingsView *)self->_ringsView bounds];
  v8 = [v7 bezierPathWithRoundedRect:? cornerRadius:?];
  [(_HKShapeView *)self->_maskView setPath:v8];
}

- (void)_setUpAfterInit
{
  self->_ringInsetPercentage = 0.15;
  self->_emptyRingAlpha = 0.15;
  [(HKActivityRingView *)self setOpaque:0];
  v3 = [MEMORY[0x277D75348] clearColor];
  [(HKActivityRingView *)self setBackgroundColor:v3];

  [(HKActivityRingView *)self _setUpRingsView];
  [(HKActivityRingView *)self setActivitySummary:0 animated:0];

  [(HKActivityRingView *)self _updateMaskPath];
}

- (void)_setUpRingsView
{
  v38[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE8E80] energyColors];
  v4 = [MEMORY[0x277CE8E80] briskColors];
  v5 = [MEMORY[0x277CE8E80] sedentaryColors];
  v6 = [v3 gradientDarkColor];
  v38[0] = v6;
  v7 = [v4 gradientDarkColor];
  v38[1] = v7;
  v8 = [v5 gradientDarkColor];
  v38[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

  v36 = v3;
  v10 = [v3 gradientLightColor];
  v37[0] = v10;
  v11 = [v4 gradientLightColor];
  v37[1] = v11;
  v12 = [v5 gradientLightColor];
  v37[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];

  v14 = [MEMORY[0x277CE8E90] activityRingGroup];
  LODWORD(v15) = 1132134400;
  [v14 setGroupDiameter:v15];
  LODWORD(v16) = 2.0;
  [v14 setInterspacing:v16];
  LODWORD(v17) = 27.0;
  [v14 setThickness:v17];
  v18 = 0;
  v19 = -1;
  do
  {
    v20 = [v9 count];
    [v14 setPercentage:v18 ofRingAtIndex:0 animated:0.0];
    v21 = [v9 objectAtIndexedSubscript:v20 + v19];
    v22 = [v13 objectAtIndexedSubscript:v20 + v19];
    [v14 setTopColor:v21 bottomColor:v22 ofRingAtIndex:v18];

    ++v18;
    --v19;
  }

  while (v18 != 3);
  renderer = self->_renderer;
  v24 = objc_alloc(MEMORY[0x277CE8EA8]);
  if (renderer)
  {
    v25 = [v24 initWithRingGroup:v14 renderer:self->_renderer];
  }

  else
  {
    v25 = [v24 initWithRingGroup:v14];
  }

  ringsView = self->_ringsView;
  self->_ringsView = v25;

  [(HKActivityRingView *)self _emptyRingAlpha];
  v28 = v27;
  v29 = [(ARUIRingsView *)self->_ringsView ringGroup];
  *&v30 = v28;
  [v29 setEmptyOpacity:v30];

  [(ARUIRingsView *)self->_ringsView setPaused:1];
  v31 = self->_ringsView;
  v32 = [MEMORY[0x277D75348] blackColor];
  [(ARUIRingsView *)v31 setBackgroundColor:v32];

  [(ARUIRingsView *)self->_ringsView setOpaque:1];
  [(HKActivityRingView *)self addSubview:self->_ringsView];
  v33 = objc_alloc_init(_HKShapeView);
  maskView = self->_maskView;
  self->_maskView = v33;

  [(ARUIRingsView *)self->_ringsView setMaskView:self->_maskView];
  v35 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HKActivityRingView;
  [(HKActivityRingView *)&v13 layoutSubviews];
  if (MEMORY[0x20F314410](0x7E00901FFFFFFFFLL))
  {
    [(HKActivityRingView *)self _updateRingsViewDiameter];
  }

  else
  {
    [(HKActivityRingView *)self _updateRingsViewDiameterLegacy];
  }

  [(HKActivityRingView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  height = v14.size.height;
  Width = CGRectGetWidth(v14);
  v7 = HKUIOnePixel();
  if (Width < v7)
  {
    Width = v7;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = Width;
  v15.size.height = height;
  v8 = CGRectGetHeight(v15);
  v9 = HKUIOnePixel();
  if (v8 >= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  [(ARUIRingsView *)self->_ringsView setBounds:x, y, Width, v10];
  ringsView = self->_ringsView;
  [(HKActivityRingView *)self bounds];
  MidX = CGRectGetMidX(v16);
  [(HKActivityRingView *)self bounds];
  [(ARUIRingsView *)ringsView setCenter:MidX, CGRectGetMidY(v17)];
  [(HKActivityRingView *)self _updateMaskPath];
}

- (void)_updateRingsViewDiameter
{
  v27 = *MEMORY[0x277D85DE8];
  [(HKActivityRingView *)self bounds];
  Width = CGRectGetWidth(v28);
  [(HKActivityRingView *)self bounds];
  Height = CGRectGetHeight(v29);
  if (Width >= Height)
  {
    Width = Height;
  }

  v5 = +[_HKActivityRingViewSizingDirective sortedRingRatioDirectives];
  v6 = [v5 firstObject];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);

        [v13 width];
        if (Width < v14)
        {
          v10 = v13;
          goto LABEL_14;
        }

        v10 = v13;

        v6 = v10;
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v6 = v10;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_14:

  [v6 width];
  if (HKUIEqualDoubles(floor(Width), v15))
  {
    [v6 outerRingOffset];
    v17 = Width - v16;
    [v6 ringInterspacing];
    v19 = v18;
    [v6 ringThickness];
    [(HKActivityRingView *)self _setRingDiameter:v17 ringInterspacing:v19 ringThickness:v20];
  }

  else
  {
    [(HKActivityRingView *)self _updateAndInterpolateRingsViewDiameterForWidth:v6 lowerDirective:v10 higherDirective:Width];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (HKActivityRingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HKActivityRingView;
  v3 = [(HKActivityRingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HKActivityRingView *)v3 _setUpAfterInit];
  }

  return v4;
}

- (HKActivityRingView)initWithFrame:(CGRect)a3 renderer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HKActivityRingView;
  v11 = [(HKActivityRingView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_renderer, a4);
    [(HKActivityRingView *)v12 _setUpAfterInit];
  }

  return v12;
}

- (HKActivityRingView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKActivityRingView;
  v3 = [(HKActivityRingView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HKActivityRingView *)v3 _setUpAfterInit];
  }

  return v4;
}

- (void)_setEmptyRingAlpha:(double)a3
{
  v3 = fmin(a3, 1.0);
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  self->_emptyRingAlpha = v3;
  v4 = v3;
  v6 = [(ARUIRingsView *)self->_ringsView ringGroup];
  *&v5 = v4;
  [v6 setEmptyOpacity:v5];
}

- (void)_setActivityRingViewBackgroundTransparent:(BOOL)a3
{
  self->_backgroundTransparencyOrColorSPIUsed = 1;
  v4 = !a3;
  [(ARUIRingsView *)self->_ringsView setOpaque:!a3];
  ringsView = self->_ringsView;
  if (v4)
  {
    maskView = 0;
  }

  else
  {
    maskView = self->_maskView;
  }

  [(ARUIRingsView *)ringsView setMaskView:maskView];
}

- (void)_displayIconsForWheelchairUser:(BOOL)a3
{
  v5 = [(ARUIRingsView *)self->_ringsView ringGroup];
  if (a3)
  {
    [MEMORY[0x277CE8EB0] wheelchairSpriteSheet];
  }

  else
  {
    [MEMORY[0x277CE8EB0] defaultSpriteSheet];
  }
  v6 = ;
  [v5 setSpriteSheet:v6];

  v7 = [(ARUIRingsView *)self->_ringsView ringGroup];
  [v7 playSpriteAnimation];
}

- (double)_ringDiameter
{
  [(HKActivityRingView *)self bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetHeight(v13);
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8 * (1.0 - self->_ringInsetPercentage);

  return HKUIFloorToScreenScale(v9);
}

- (void)_updateAndInterpolateRingsViewDiameterForWidth:(double)a3 lowerDirective:(id)a4 higherDirective:(id)a5
{
  v8 = a5;
  v9 = a4;
  [v8 width];
  v11 = v10;
  [v9 width];
  v13 = v11 - v12;
  [v9 width];
  v15 = (a3 - v14) / v13;
  [v9 ringThickness];
  v17 = v16;
  [v8 ringThickness];
  v19 = v17 + (v18 - v17) * v15;
  [v9 ringInterspacing];
  v21 = v20;
  [v8 ringInterspacing];
  v23 = v22;

  v24 = v21 + (v23 - v21) * v15;
  [v9 outerRingOffset];
  v26 = v25;

  [(HKActivityRingView *)self _setRingDiameter:a3 - v26 ringInterspacing:v24 ringThickness:v19];
}

- (void)_setRingDiameter:(double)a3 ringInterspacing:(double)a4 ringThickness:(double)a5
{
  v9 = [(ARUIRingsView *)self->_ringsView ringGroup];
  UIRoundToViewScale();
  *&v6 = v6;
  [v9 setGroupDiameter:v6];
  UIRoundToViewScale();
  *&v7 = v7;
  [v9 setInterspacing:v7];
  UIRoundToViewScale();
  *&v8 = v8;
  [v9 setThickness:v8];
  [(HKActivityRingView *)self setActivitySummary:self->_activitySummary animated:1];
}

- (void)_updateRingsViewDiameterLegacy
{
  [(HKActivityRingView *)self _ringDiameter];
  if (v3 >= 60.0)
  {
    v4 = 0.3;
  }

  else
  {
    v4 = v3 / 60.0 * 0.3;
  }

  v5 = (v3 - v3 * fmax(v4, 0.25) + -8.0) / 6.0;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  if (v5 >= 2.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = (v5 + 2.0) * 0.5;
  }

  if (v5 >= 2.0)
  {
    v7 = 2.0;
  }

  else
  {
    v7 = (v5 + 2.0) * 0.5;
  }

  [(HKActivityRingView *)self _setRingDiameter:v3 ringInterspacing:v7 ringThickness:v6];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = HKActivityRingView;
  [(HKActivityRingView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(HKActivityRingView *)self _updateMaskPath];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = HKActivityRingView;
  [(HKActivityRingView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(HKActivityRingView *)self _updateMaskPath];
}

@end