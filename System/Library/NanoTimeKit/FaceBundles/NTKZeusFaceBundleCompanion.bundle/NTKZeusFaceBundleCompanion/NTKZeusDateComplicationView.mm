@interface NTKZeusDateComplicationView
- (CGRect)_visualBoundsForLabel:(id)label;
- (CGRect)contentFrame;
- (NTKZeusDateComplicationView)initWithBackgroundView:(id)view;
- (void)_updateText;
- (void)applyPalette:(id)palette;
- (void)applyTransitionFraction:(double)fraction fromMode:(int64_t)mode toMode:(int64_t)toMode;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)blancEditModeApplyPalette:(id)palette;
- (void)layoutSubviews;
- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style;
- (void)setStyle:(unint64_t)style;
@end

@implementation NTKZeusDateComplicationView

- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style
{
  intValue = [text intValue];
  if (intValue != self->_currentDayNumber)
  {
    self->_currentDayNumber = intValue;

    [(NTKZeusDateComplicationView *)self _updateText];
  }
}

- (NTKZeusDateComplicationView)initWithBackgroundView:(id)view
{
  v10.receiver = self;
  v10.super_class = NTKZeusDateComplicationView;
  v3 = [(NTKZeusComplicationView *)&v10 initWithBackgroundView:view];
  if (v3)
  {
    v4 = objc_alloc_init(NTKZeusColorPalette);
    v5 = objc_opt_new();
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTextAlignment:1];
    v7 = v3->_label;
    silver = [(NTKZeusColorPalette *)v4 silver];
    [(UILabel *)v7 setTextColor:silver];

    [(NTKZeusDateComplicationView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (void)setStyle:(unint64_t)style
{
  if ([(NTKZeusComplicationView *)self style]!= style)
  {
    v6.receiver = self;
    v6.super_class = NTKZeusDateComplicationView;
    [(NTKZeusComplicationView *)&v6 setStyle:style];
    backgroundView = [(NTKZeusComplicationView *)self backgroundView];
    [backgroundView setStyle:style];

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

  device = [(NTKZeusComplicationView *)self device];
  v10 = [CLKDeviceMetrics metricsWithDevice:device identitySizeClass:2];

  style = [(NTKZeusComplicationView *)self style];
  if (style > 1)
  {
    if (style == 2)
    {
      v13 = +[NTKZeusFontLoader espaceFontDescriptor];
      device2 = [(NTKZeusComplicationView *)self device];
      sub_C038(device2, v29);
      v15 = &v30;
      goto LABEL_18;
    }

    if (style == 3)
    {
      if (self->_currentDayNumber == 21)
      {
        [v10 scaledValue:-2.0];
        v16 = [NSNumber numberWithDouble:?];
        [v8 addAttribute:NSKernAttributeName value:v16 range:{0, objc_msgSend(v8, "length")}];
      }

      v13 = +[NTKZeusFontLoader carrickFontDescriptor];
      device3 = [(NTKZeusComplicationView *)self device];
      device2 = device3;
      v18 = v28;
      v19 = v28;
      goto LABEL_13;
    }

LABEL_12:
    v13 = +[NTKZeusFontLoader carrickFontDescriptor];
    device3 = [(NTKZeusComplicationView *)self device];
    device2 = device3;
    v18 = v27;
    v19 = v27;
LABEL_13:
    sub_C038(device3, v19);
    v15 = (v18 + 72);
    goto LABEL_18;
  }

  if (style)
  {
    if (style == 1)
    {
      if (self->_currentDayNumber == 1)
      {
        [v10 scaledValue:3.5];
        v12 = [NSNumber numberWithDouble:?];
        [v8 addAttribute:NSKernAttributeName value:v12 range:{0, objc_msgSend(v8, "length")}];
      }

      v13 = +[NTKZeusFontLoader capeCodFontDescriptor];
      device2 = [(NTKZeusComplicationView *)self device];
      sub_C038(device2, v31);
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
  device2 = [(NTKZeusComplicationView *)self device];
  sub_C038(device2, v33);
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

- (CGRect)_visualBoundsForLabel:(id)label
{
  labelCopy = label;
  [labelCopy bounds];
  v6 = v5;
  device = [(NTKZeusComplicationView *)self device];
  [device screenScale];
  v9 = (v6 * v8);

  [labelCopy bounds];
  v11 = v10;
  device2 = [(NTKZeusComplicationView *)self device];
  [device2 screenScale];
  v14 = (v11 * v13);

  v15 = 1;
  v16 = malloc_type_calloc(v14 * v9, 1uLL, 0x100004077774924uLL);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v18 = CGBitmapContextCreate(v16, v9, v14, 8uLL, v9, DeviceGray, 7u);
  device3 = [(NTKZeusComplicationView *)self device];
  [device3 screenScale];
  v21 = v20;
  device4 = [(NTKZeusComplicationView *)self device];
  [device4 screenScale];
  CGAffineTransformMakeScale(&v52, v21, v23);
  CGContextSetCTM();

  layer = [labelCopy layer];
  [layer renderInContext:v18];

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
  device5 = [(NTKZeusComplicationView *)self device];
  [device5 screenScale];
  v38 = v28 / v37;
  device6 = [(NTKZeusComplicationView *)self device];
  [device6 screenScale];
  v41 = v30 / v40;

  device7 = [(NTKZeusComplicationView *)self device];
  [device7 screenScale];
  v44 = (v15 - v28) / v43;
  device8 = [(NTKZeusComplicationView *)self device];
  [device8 screenScale];
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
  device = [(NTKZeusComplicationView *)self device];
  CLKCeilForDevice();
  v6 = v5 + v5;

  device2 = [(NTKZeusComplicationView *)self device];
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

- (void)applyPalette:(id)palette
{
  v7.receiver = self;
  v7.super_class = NTKZeusDateComplicationView;
  paletteCopy = palette;
  [(NTKZeusComplicationView *)&v7 applyPalette:paletteCopy];
  label = self->_label;
  bottomComplication = [paletteCopy bottomComplication];

  [(UILabel *)label setTextColor:bottomComplication];
}

- (void)blancEditModeApplyPalette:(id)palette
{
  v7.receiver = self;
  v7.super_class = NTKZeusDateComplicationView;
  paletteCopy = palette;
  [(NTKZeusComplicationView *)&v7 blancEditModeApplyPalette:paletteCopy];
  label = self->_label;
  editMode = [paletteCopy editMode];

  [(UILabel *)label setTextColor:editMode];
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  v13.receiver = self;
  v13.super_class = NTKZeusDateComplicationView;
  toPaletteCopy = toPalette;
  paletteCopy = palette;
  [(NTKZeusComplicationView *)&v13 applyTransitionFraction:paletteCopy fromPalette:toPaletteCopy toPalette:fraction];
  bottomComplication = [paletteCopy bottomComplication];

  bottomComplication2 = [toPaletteCopy bottomComplication];

  v12 = NTKInterpolateBetweenColors();

  [(UILabel *)self->_label setTextColor:v12];
}

- (void)applyTransitionFraction:(double)fraction fromMode:(int64_t)mode toMode:(int64_t)toMode
{
  v13.receiver = self;
  v13.super_class = NTKZeusDateComplicationView;
  [NTKZeusComplicationView applyTransitionFraction:"applyTransitionFraction:fromMode:toMode:" fromMode:? toMode:?];
  v12.receiver = self;
  v12.super_class = NTKZeusDateComplicationView;
  v8 = [(NTKZeusComplicationView *)&v12 complicationColorForBlancEditMode:mode];
  v11.receiver = self;
  v11.super_class = NTKZeusDateComplicationView;
  v9 = [(NTKZeusComplicationView *)&v11 complicationColorForBlancEditMode:toMode];
  v10 = NTKInterpolateBetweenColors();

  [(UILabel *)self->_label setTextColor:v10];
}

@end