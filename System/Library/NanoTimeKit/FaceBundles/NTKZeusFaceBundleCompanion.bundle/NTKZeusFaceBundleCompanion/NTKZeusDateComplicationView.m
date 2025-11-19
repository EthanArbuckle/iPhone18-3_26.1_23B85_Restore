@interface NTKZeusDateComplicationView
- (CGRect)_visualBoundsForLabel:(id)a3;
- (CGRect)contentFrame;
- (NTKZeusDateComplicationView)initWithBackgroundView:(id)a3;
- (void)_updateText;
- (void)applyPalette:(id)a3;
- (void)applyTransitionFraction:(double)a3 fromMode:(int64_t)a4 toMode:(int64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)blancEditModeApplyPalette:(id)a3;
- (void)layoutSubviews;
- (void)setDateComplicationText:(id)a3 withDayRange:(_NSRange)a4 forDateStyle:(unint64_t)a5;
- (void)setStyle:(unint64_t)a3;
@end

@implementation NTKZeusDateComplicationView

- (void)setDateComplicationText:(id)a3 withDayRange:(_NSRange)a4 forDateStyle:(unint64_t)a5
{
  v6 = [a3 intValue];
  if (v6 != self->_currentDayNumber)
  {
    self->_currentDayNumber = v6;

    [(NTKZeusDateComplicationView *)self _updateText];
  }
}

- (NTKZeusDateComplicationView)initWithBackgroundView:(id)a3
{
  v10.receiver = self;
  v10.super_class = NTKZeusDateComplicationView;
  v3 = [(NTKZeusComplicationView *)&v10 initWithBackgroundView:a3];
  if (v3)
  {
    v4 = objc_alloc_init(NTKZeusColorPalette);
    v5 = objc_opt_new();
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTextAlignment:1];
    v7 = v3->_label;
    v8 = [(NTKZeusColorPalette *)v4 silver];
    [(UILabel *)v7 setTextColor:v8];

    [(NTKZeusDateComplicationView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (void)setStyle:(unint64_t)a3
{
  if ([(NTKZeusComplicationView *)self style]!= a3)
  {
    v6.receiver = self;
    v6.super_class = NTKZeusDateComplicationView;
    [(NTKZeusComplicationView *)&v6 setStyle:a3];
    v5 = [(NTKZeusComplicationView *)self backgroundView];
    [v5 setStyle:a3];

    [(NTKZeusDateComplicationView *)self _updateText];
  }
}

- (void)_updateText
{
  v3 = +[NSParagraphStyle defaultParagraphStyle];
  v4 = [v3 mutableCopy];

  [v4 setAlignment:1];
  v5 = [NSMutableAttributedString alloc];
  v6 = [NSString stringWithFormat:@"%i", self->_currentDayNumber];
  v35 = NSParagraphStyleAttributeName;
  v36 = v4;
  v7 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v8 = [v5 initWithString:v6 attributes:v7];

  v9 = [(NTKZeusComplicationView *)self device];
  v10 = [CLKDeviceMetrics metricsWithDevice:v9 identitySizeClass:2];

  v11 = [(NTKZeusComplicationView *)self style];
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v13 = +[NTKZeusFontLoader espaceFontDescriptor];
      v14 = [(NTKZeusComplicationView *)self device];
      sub_C038(v14, v29);
      v15 = &v30;
      goto LABEL_18;
    }

    if (v11 == 3)
    {
      if (self->_currentDayNumber == 21)
      {
        [v10 scaledValue:-2.0];
        v16 = [NSNumber numberWithDouble:?];
        [v8 addAttribute:NSKernAttributeName value:v16 range:{0, objc_msgSend(v8, "length")}];
      }

      v13 = +[NTKZeusFontLoader carrickFontDescriptor];
      v17 = [(NTKZeusComplicationView *)self device];
      v14 = v17;
      v18 = v28;
      v19 = v28;
      goto LABEL_13;
    }

LABEL_12:
    v13 = +[NTKZeusFontLoader carrickFontDescriptor];
    v17 = [(NTKZeusComplicationView *)self device];
    v14 = v17;
    v18 = v27;
    v19 = v27;
LABEL_13:
    sub_C038(v17, v19);
    v15 = (v18 + 72);
    goto LABEL_18;
  }

  if (v11)
  {
    if (v11 == 1)
    {
      if (self->_currentDayNumber == 1)
      {
        [v10 scaledValue:3.5];
        v12 = [NSNumber numberWithDouble:?];
        [v8 addAttribute:NSKernAttributeName value:v12 range:{0, objc_msgSend(v8, "length")}];
      }

      v13 = +[NTKZeusFontLoader capeCodFontDescriptor];
      v14 = [(NTKZeusComplicationView *)self device];
      sub_C038(v14, v31);
      v15 = &v32;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (self->_currentDayNumber == 1)
  {
    [v10 scaledValue:2.0];
    v20 = [NSNumber numberWithDouble:?];
    [v8 addAttribute:NSKernAttributeName value:v20 range:{0, objc_msgSend(v8, "length")}];
  }

  v13 = +[NTKZeusFontLoader clipperFontDescriptor];
  v14 = [(NTKZeusComplicationView *)self device];
  sub_C038(v14, v33);
  v15 = &v34;
LABEL_18:
  v21 = *v15;

  v22 = [UIFont fontWithDescriptor:v13 size:v21];
  [v8 addAttribute:NSFontAttributeName value:v22 range:{0, objc_msgSend(v8, "length")}];

  [(UILabel *)self->_label setAttributedText:v8];
  [(UILabel *)self->_label sizeToFit];
  [(NTKZeusDateComplicationView *)self _visualBoundsForLabel:self->_label];
  self->_labelVisualBounds.origin.x = v23;
  self->_labelVisualBounds.origin.y = v24;
  self->_labelVisualBounds.size.width = v25;
  self->_labelVisualBounds.size.height = v26;
  [(NTKZeusDateComplicationView *)self setNeedsLayout];
}

- (CGRect)_visualBoundsForLabel:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v7 = [(NTKZeusComplicationView *)self device];
  [v7 screenScale];
  v9 = (v6 * v8);

  [v4 bounds];
  v11 = v10;
  v12 = [(NTKZeusComplicationView *)self device];
  [v12 screenScale];
  v14 = (v11 * v13);

  v15 = 1;
  v16 = malloc_type_calloc(v14 * v9, 1uLL, 0x100004077774924uLL);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v18 = CGBitmapContextCreate(v16, v9, v14, 8uLL, v9, DeviceGray, 7u);
  v19 = [(NTKZeusComplicationView *)self device];
  [v19 screenScale];
  v21 = v20;
  v22 = [(NTKZeusComplicationView *)self device];
  [v22 screenScale];
  CGAffineTransformMakeScale(&v52, v21, v23);
  CGContextSetCTM();

  v24 = [v4 layer];
  [v24 renderInContext:v18];

  CGContextRelease(v18);
  CGColorSpaceRelease(DeviceGray);
  if (v14)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v29 = v16;
    v30 = -1;
    do
    {
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          if (i >= v28)
          {
            v32 = v28;
          }

          else
          {
            v32 = i;
          }

          if (i <= v27)
          {
            v33 = v27;
          }

          else
          {
            v33 = i;
          }

          if (v25 >= v30)
          {
            v34 = v30;
          }

          else
          {
            v34 = v25;
          }

          if (v25 <= v26)
          {
            v35 = v26;
          }

          else
          {
            v35 = v25;
          }

          if (v29[i])
          {
            v27 = v33;
            v30 = v34;
            v26 = v35;
            v28 = v32;
          }
        }
      }

      ++v25;
      v29 += v9;
    }

    while (v25 != v14);
    v15 = v27 + 1;
  }

  else
  {
    v26 = 0;
    v30 = -1;
    v28 = -1;
  }

  free(v16);
  v36 = [(NTKZeusComplicationView *)self device];
  [v36 screenScale];
  v38 = v28 / v37;
  v39 = [(NTKZeusComplicationView *)self device];
  [v39 screenScale];
  v41 = v30 / v40;

  v42 = [(NTKZeusComplicationView *)self device];
  [v42 screenScale];
  v44 = (v15 - v28) / v43;
  v45 = [(NTKZeusComplicationView *)self device];
  [v45 screenScale];
  v47 = (v26 - v30 + 1) / v46;

  v48 = v38;
  v49 = v41;
  v50 = v44;
  v51 = v47;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

- (void)layoutSubviews
{
  p_labelVisualBounds = &self->_labelVisualBounds;
  MidX = CGRectGetMidX(self->_labelVisualBounds);
  [(UILabel *)self->_label bounds];
  v5 = MidX - CGRectGetMidX(v13);
  MidY = CGRectGetMidY(*p_labelVisualBounds);
  [(UILabel *)self->_label bounds];
  v7 = MidY - CGRectGetMidY(v14);
  label = self->_label;
  [(NTKZeusDateComplicationView *)self bounds];
  v10 = v9 * 0.5 - v5;
  [(NTKZeusDateComplicationView *)self bounds];
  [(UILabel *)label setCenter:v10, v7 + v11 * 0.5];
  v12.receiver = self;
  v12.super_class = NTKZeusDateComplicationView;
  [(NTKZeusComplicationView *)&v12 layoutSubviews];
}

- (CGRect)contentFrame
{
  memset(&v17[9], 0, 64);
  v3 = [(NTKZeusComplicationView *)self device:0];
  sub_C038(v3, v17);

  [(NTKZeusComplicationView *)self style];
  v4 = [(NTKZeusComplicationView *)self device];
  CLKCeilForDevice();
  v6 = v5 + v5;

  v7 = [(NTKZeusComplicationView *)self device];
  CLKCeilForDevice();
  v9 = v8 + v8;

  [(NTKZeusDateComplicationView *)self bounds];
  v11 = v10 * 0.5 - v6 * 0.5;
  [(NTKZeusDateComplicationView *)self bounds];
  v13 = v12 * 0.5 - v9 * 0.5;
  v14 = v11;
  v15 = v6;
  v16 = v9;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (void)applyPalette:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKZeusDateComplicationView;
  v4 = a3;
  [(NTKZeusComplicationView *)&v7 applyPalette:v4];
  label = self->_label;
  v6 = [v4 bottomComplication];

  [(UILabel *)label setTextColor:v6];
}

- (void)blancEditModeApplyPalette:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKZeusDateComplicationView;
  v4 = a3;
  [(NTKZeusComplicationView *)&v7 blancEditModeApplyPalette:v4];
  label = self->_label;
  v6 = [v4 editMode];

  [(UILabel *)label setTextColor:v6];
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKZeusDateComplicationView;
  v8 = a5;
  v9 = a4;
  [(NTKZeusComplicationView *)&v13 applyTransitionFraction:v9 fromPalette:v8 toPalette:a3];
  v10 = [v9 bottomComplication];

  v11 = [v8 bottomComplication];

  v12 = NTKInterpolateBetweenColors();

  [(UILabel *)self->_label setTextColor:v12];
}

- (void)applyTransitionFraction:(double)a3 fromMode:(int64_t)a4 toMode:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = NTKZeusDateComplicationView;
  [NTKZeusComplicationView applyTransitionFraction:"applyTransitionFraction:fromMode:toMode:" fromMode:? toMode:?];
  v12.receiver = self;
  v12.super_class = NTKZeusDateComplicationView;
  v8 = [(NTKZeusComplicationView *)&v12 complicationColorForBlancEditMode:a4];
  v11.receiver = self;
  v11.super_class = NTKZeusDateComplicationView;
  v9 = [(NTKZeusComplicationView *)&v11 complicationColorForBlancEditMode:a5];
  v10 = NTKInterpolateBetweenColors();

  [(UILabel *)self->_label setTextColor:v10];
}

@end