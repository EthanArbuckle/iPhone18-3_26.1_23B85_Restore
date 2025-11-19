@interface NTKZeusAnalogNumeralsView
+ (id)_digitImageNameForNumber:(unint64_t)a3 style:(unint64_t)a4 outlined:(BOOL)a5;
+ (id)_digitImageWithName:(id)a3;
- (CGPoint)_labelPositionForIndex:(unint64_t)a3 status:(BOOL)a4;
- (NTKZeusAnalogNumeralsView)initWithDevice:(id)a3 palette:(id)a4 style:(unint64_t)a5 density:(unint64_t)a6;
- (void)_updateImages;
- (void)layoutSubviews;
- (void)setDensity:(unint64_t)a3;
- (void)setPalette:(id)a3;
- (void)setStatusIndicatorVisibleFraction:(double)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setTintColor:(id)a3;
@end

@implementation NTKZeusAnalogNumeralsView

- (NTKZeusAnalogNumeralsView)initWithDevice:(id)a3 palette:(id)a4 style:(unint64_t)a5 density:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  [v11 screenBounds];
  v16.receiver = self;
  v16.super_class = NTKZeusAnalogNumeralsView;
  v13 = [(NTKZeusAnalogNumeralsView *)&v16 initWithFrame:?];
  v14 = v13;
  if (v13)
  {
    v13->_style = a5;
    v13->_density = a6;
    v13->_bleed = [v12 bleed];
    objc_storeStrong(&v14->_device, a3);
    v14->_outlined = [NTKZeusAnalogNumeralsView _outlinedForBleed:v14->_bleed style:v14->_style];
    [(NTKZeusAnalogNumeralsView *)v14 _updateImages];
  }

  return v14;
}

- (void)setPalette:(id)a3
{
  v10 = a3;
  v5 = +[NTKZeusAnalogNumeralsView _outlinedForBleed:style:](NTKZeusAnalogNumeralsView, "_outlinedForBleed:style:", [v10 bleed], self->_style);
  outlined = self->_outlined;
  objc_storeStrong(&self->_palette, a3);
  self->_bleed = [v10 bleed];
  self->_outlined = v5;
  if (outlined == v5)
  {
    v7 = 12;
    v8 = self;
    do
    {
      v9 = [(NTKZeusAnalogColorPalette *)self->_palette dial];
      [(UIImageView *)v8->_digitViews[0] setTintColor:v9];

      v8 = (v8 + 8);
      --v7;
    }

    while (v7);
  }

  else
  {
    [(NTKZeusAnalogNumeralsView *)self _updateImages];
  }
}

- (void)setDensity:(unint64_t)a3
{
  if (self->_density != a3)
  {
    self->_density = a3;
    [(NTKZeusAnalogNumeralsView *)self _updateImages];
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    self->_outlined = [NTKZeusAnalogNumeralsView _outlinedForBleed:self->_bleed style:a3];

    [(NTKZeusAnalogNumeralsView *)self _updateImages];
  }
}

- (void)setStatusIndicatorVisibleFraction:(double)a3
{
  v5 = fabs(a3);
  v6 = fabs(a3 + -1.0);
  if (v5 < 0.00000011920929 || v6 < 0.00000011920929)
  {

    [(NTKZeusAnalogNumeralsView *)self setStatusIndicatorVisible:v5 >= 0.00000011920929];
  }

  else
  {
    for (i = 0; i != 12; ++i)
    {
      v9 = self->_digitViews[i];
      if (v9)
      {
        v10 = v9;
        [(NTKZeusAnalogNumeralsView *)self _labelPositionForIndex:i status:1];
        [(NTKZeusAnalogNumeralsView *)self _labelPositionForIndex:i status:0];
        CLKInterpolateBetweenPoints();
        v12 = v11;
        v14 = v13;
        [(NTKZeusAnalogNumeralsView *)self bounds];
        v16 = v12 + v15 * 0.5;
        [(NTKZeusAnalogNumeralsView *)self bounds];
        [(UIImageView *)v10 setCenter:v16, v14 + v17 * 0.5];
      }
    }
  }
}

- (void)_updateImages
{
  v3 = self->_density - 1;
  if (v3 > 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_38CA0[v3];
  }

  v5 = 1;
  v6 = 8;
  do
  {
    v7 = *(&self->super.super.super.isa + v6);
    if (v5 % v4)
    {
      [v7 removeFromSuperview];
      v8 = *(&self->super.super.super.isa + v6);
      *(&self->super.super.super.isa + v6) = 0;
    }

    else
    {
      if (!v7)
      {
        v9 = objc_alloc_init(UIImageView);
        v10 = *(&self->super.super.super.isa + v6);
        *(&self->super.super.super.isa + v6) = v9;

        [(NTKZeusAnalogNumeralsView *)self addSubview:*(&self->super.super.super.isa + v6)];
      }

      v8 = [NTKZeusAnalogNumeralsView _digitImageNameForNumber:v5 style:self->_style outlined:self->_outlined];
      v11 = [NTKZeusAnalogNumeralsView _digitImageWithName:v8];
      v12 = [*(&self->super.super.super.isa + v6) image];

      if (v12 != v11)
      {
        [*(&self->super.super.super.isa + v6) setImage:v11];
      }

      [*(&self->super.super.super.isa + v6) sizeToFit];
      v13 = *(&self->super.super.super.isa + v6);
      v14 = [(NTKZeusAnalogColorPalette *)self->_palette dial];
      [v13 setTintColor:v14];
    }

    v6 += 8;
    ++v5;
  }

  while (v5 != 13);

  [(NTKZeusAnalogNumeralsView *)self setNeedsLayout];
}

- (void)setTintColor:(id)a3
{
  v4 = 0;
  digitViews = self->_digitViews;
  do
  {
    [(UIImageView *)digitViews[v4++] setTintColor:a3];
  }

  while (v4 != 12);
}

+ (id)_digitImageNameForNumber:(unint64_t)a3 style:(unint64_t)a4 outlined:(BOOL)a5
{
  v5 = @"espace";
  v6 = @"carrick";
  if (a4 != 3)
  {
    v6 = 0;
  }

  if (a4 != 2)
  {
    v5 = v6;
  }

  v7 = @"clipper";
  v8 = @"capecod-filled";
  if (a5)
  {
    v8 = @"capecod-outlined";
  }

  if (a4 != 1)
  {
    v8 = 0;
  }

  if (a4)
  {
    v7 = v8;
  }

  if (a4 <= 1)
  {
    v5 = v7;
  }

  return [NSString stringWithFormat:@"ZeusAnalog-digits-%@-%i", v5, a3];
}

+ (id)_digitImageWithName:(id)a3
{
  v3 = a3;
  if (qword_58BD0 != -1)
  {
    sub_2EE78();
  }

  v4 = [qword_58BC8 objectForKey:v3];
  if (!v4)
  {
    v5 = [NTKZeusAnalogFaceBundle imageWithName:v3];
    v4 = [v5 imageWithRenderingMode:2];

    [qword_58BC8 setObject:v4 forKey:v3];
  }

  return v4;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKZeusAnalogNumeralsView;
  [(NTKZeusAnalogNumeralsView *)&v13 layoutSubviews];
  for (i = 0; i != 12; ++i)
  {
    v4 = self->_digitViews[i];
    if (v4)
    {
      v5 = v4;
      [(UIImageView *)v5 sizeToFit];
      [(NTKZeusAnalogNumeralsView *)self _labelPositionForIndex:i status:self->_status];
      v7 = v6;
      v9 = v8;
      [(NTKZeusAnalogNumeralsView *)self bounds];
      v11 = v7 + v10 * 0.5;
      [(NTKZeusAnalogNumeralsView *)self bounds];
      [(UIImageView *)v5 setCenter:v11, v9 + v12 * 0.5];
    }
  }
}

- (CGPoint)_labelPositionForIndex:(unint64_t)a3 status:(BOOL)a4
{
  v4 = a4;
  memset(v15, 0, 128);
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  sub_20E20(self->_device, v13);
  bleed = self->_bleed;
  style = self->_style;
  if (bleed && v4)
  {
    if (style > 1)
    {
      if (style == 2)
      {
        v11 = &v27;
        goto LABEL_41;
      }

      if (style == 3)
      {
        v11 = &v28;
        goto LABEL_41;
      }
    }

    else
    {
      if (!style)
      {
        v11 = &v25;
        goto LABEL_41;
      }

      if (style == 1)
      {
        v11 = &v26;
LABEL_41:
        v12 = &v11[2 * a3];
        v7 = *v12;
        v8 = v12[1];
      }
    }
  }

  else if (bleed)
  {
    if (style > 1)
    {
      if (style == 2)
      {
        v11 = &v23;
        goto LABEL_41;
      }

      if (style == 3)
      {
        v11 = &v24;
        goto LABEL_41;
      }
    }

    else
    {
      if (!style)
      {
        v11 = &v21;
        goto LABEL_41;
      }

      if (style == 1)
      {
        v11 = &v22;
        goto LABEL_41;
      }
    }
  }

  else if (v4)
  {
    if (style > 1)
    {
      if (style == 2)
      {
        v11 = &v19;
        goto LABEL_41;
      }

      if (style == 3)
      {
        v11 = &v20;
        goto LABEL_41;
      }
    }

    else
    {
      if (!style)
      {
        v11 = &v17;
        goto LABEL_41;
      }

      if (style == 1)
      {
        v11 = &v18;
        goto LABEL_41;
      }
    }
  }

  else if (style > 1)
  {
    if (style == 2)
    {
      v11 = v15;
      goto LABEL_41;
    }

    if (style == 3)
    {
      v11 = &v16;
      goto LABEL_41;
    }
  }

  else
  {
    if (!style)
    {
      v11 = v13;
      goto LABEL_41;
    }

    if (style == 1)
    {
      v11 = v14;
      goto LABEL_41;
    }
  }

  result.y = v8;
  result.x = v7;
  return result;
}

@end