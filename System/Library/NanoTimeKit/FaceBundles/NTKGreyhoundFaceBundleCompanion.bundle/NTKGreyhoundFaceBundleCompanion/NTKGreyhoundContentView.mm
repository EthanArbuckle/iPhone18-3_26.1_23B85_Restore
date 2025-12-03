@interface NTKGreyhoundContentView
- (NTKGreyhoundContentView)initWithFrame:(CGRect)frame device:(id)device style:(unint64_t)style density:(unint64_t)density typeface:(unint64_t)typeface colorPalette:(id)palette;
- (id)_createLabelForHour:(unint64_t)hour;
- (id)_font;
- (void)_createHourLabels;
- (void)setColorPalette:(id)palette;
- (void)setDensity:(unint64_t)density;
- (void)setStyle:(unint64_t)style;
- (void)setTypeface:(unint64_t)typeface;
@end

@implementation NTKGreyhoundContentView

- (NTKGreyhoundContentView)initWithFrame:(CGRect)frame device:(id)device style:(unint64_t)style density:(unint64_t)density typeface:(unint64_t)typeface colorPalette:(id)palette
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  paletteCopy = palette;
  v25.receiver = self;
  v25.super_class = NTKGreyhoundContentView;
  height = [(NTKGreyhoundContentView *)&v25 initWithFrame:x, y, width, height];
  v21 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v21->_style = style;
    v21->_typeface = typeface;
    v21->_density = density;
    objc_storeStrong(&v21->_colorPalette, palette);
    v22 = +[NSMutableArray array];
    hourLabels = v21->_hourLabels;
    v21->_hourLabels = v22;

    [(NTKGreyhoundContentView *)v21 _createHourLabels];
  }

  return v21;
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(NTKGreyhoundContentView *)self _createHourLabels];
  }
}

- (void)setDensity:(unint64_t)density
{
  if (self->_density != density)
  {
    self->_density = density;
    [(NTKGreyhoundContentView *)self _createHourLabels];
  }
}

- (void)setTypeface:(unint64_t)typeface
{
  if (self->_typeface != typeface)
  {
    self->_typeface = typeface;
    [(NTKGreyhoundContentView *)self _createHourLabels];
  }
}

- (void)setColorPalette:(id)palette
{
  objc_storeStrong(&self->_colorPalette, palette);
  paletteCopy = palette;
  digit = [paletteCopy digit];
  hourLabels = self->_hourLabels;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_66B4;
  v9[3] = &unk_14618;
  v10 = digit;
  v8 = digit;
  [(NSMutableArray *)hourLabels enumerateObjectsUsingBlock:v9];
}

- (void)_createHourLabels
{
  font = self->_font;
  self->_font = 0;

  [(NSMutableArray *)self->_hourLabels enumerateObjectsUsingBlock:&stru_14658];
  [(NSMutableArray *)self->_hourLabels removeAllObjects];
  if (self->_density)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  for (i = v4; i < 0xD; i += v4)
  {
    v6 = [(NTKGreyhoundContentView *)self _createLabelForHour:i];
    v7 = [NSString stringWithFormat:@"%lu", i];
    [v6 setAccessibilityLabel:v7];

    [(NSMutableArray *)self->_hourLabels addObject:v6];
  }

  hourLabels = self->_hourLabels;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_695C;
  v9[3] = &unk_14618;
  v9[4] = self;
  [(NSMutableArray *)hourLabels enumerateObjectsUsingBlock:v9];
}

- (id)_createLabelForHour:(unint64_t)hour
{
  _font = [(NTKGreyhoundContentView *)self _font];
  style = self->_style;
  if (style <= 1)
  {
    if (style)
    {
      if (style != 1)
      {
        goto LABEL_53;
      }

      typeface = self->_typeface;
      if (typeface)
      {
        if (typeface != 2 || hour > 0xC || ((1 << hour) & 0x1402) == 0)
        {
          goto LABEL_53;
        }
      }

      else if (hour != 3 || self->_density)
      {
        goto LABEL_53;
      }
    }

    else if (hour != 4)
    {
      goto LABEL_53;
    }

LABEL_45:
    v8 = [_font CLKFontWithStylisticSet:1];
    goto LABEL_52;
  }

  switch(style)
  {
    case 2:
      if (self->_typeface != 2 || hour != 12 || self->_density)
      {
        break;
      }

      goto LABEL_45;
    case 3:
      v12 = self->_typeface;
      if (v12)
      {
        if (v12 == 1)
        {
          if (hour != 12)
          {
            break;
          }
        }

        else
        {
          if (v12 != 2)
          {
            break;
          }

          if (self->_density)
          {
            if (hour != 10)
            {
              break;
            }
          }

          else if (hour != 12 && hour != 10 && hour != 9)
          {
            break;
          }
        }
      }

      else if (self->_density)
      {
        break;
      }

      goto LABEL_45;
    case 4:
      density = self->_density;
      if (density == 1)
      {
        v8 = [_font CLKFontWithRareLigaturesAndStylisticSet:self->_typeface == 2];
        goto LABEL_52;
      }

      if (!density)
      {
        v7 = self->_typeface;
        switch(v7)
        {
          case 2uLL:
            if (hour == 12)
            {
              v13 = 2;
            }

            else
            {
              v13 = 1;
            }

            v8 = [_font CLKFontWithRareLigaturesAndStylisticSet:v13];
            goto LABEL_52;
          case 1uLL:
            v8 = [_font CLKFontWithRareLigaturesAndStylisticSet:1];
            goto LABEL_52;
          case 0uLL:
            v8 = [_font CLKFontWithRareLigaturesAndStylisticSet:2];
LABEL_52:
            v14 = v8;

            _font = v14;
            break;
        }
      }

      break;
  }

LABEL_53:
  v15 = objc_alloc_init(UILabel);
  [v15 setTextAlignment:1];
  digit = [(NTKCaliforniaColorPalette *)self->_colorPalette digit];
  [v15 setTextColor:digit];

  [v15 setFont:_font];
  v17 = [NTKGreyhoundTextUtilities textForHour:hour density:self->_density style:self->_style typeface:self->_typeface];
  if (self->_density || self->_typeface != 1 || self->_style)
  {
    goto LABEL_56;
  }

  if (hour != 3)
  {
    if (hour == 12)
    {
      v30 = v17;
      sub_744C(v17, self->_device);
      v62 = qword_1B6D8;
      v59 = [NSNumber numberWithUnsignedInteger:self->_style];
      v31 = [v62 objectForKeyedSubscript:v59];
      v32 = [NSNumber numberWithUnsignedInteger:self->_typeface];
      v33 = [v31 objectForKeyedSubscript:v32];
      v34 = [NSNumber numberWithUnsignedInteger:self->_density];
      v35 = [v33 objectForKeyedSubscript:v34];
      v36 = [NSNumber numberWithUnsignedInteger:12];
      v37 = [v35 objectForKeyedSubscript:v36];

      v26 = v30;
      v38 = [[NSMutableAttributedString alloc] initWithString:v30];
      v39 = [v37 objectAtIndexedSubscript:0];
      [v38 addAttribute:NSKernAttributeName value:v39 range:{0, 1}];

      v40 = [v37 objectAtIndexedSubscript:1];
      [v38 addAttribute:NSKernAttributeName value:v40 range:{1, 1}];

      [v15 setAttributedText:v38];
LABEL_60:
      [v15 sizeToFit];
      [v15 frame];
      [v15 setFrame:?];
      goto LABEL_61;
    }

LABEL_56:
    v58 = v17;
    sub_744C(v17, self->_device);
    v61 = qword_1B6D8;
    v18 = [NSNumber numberWithUnsignedInteger:self->_style];
    v19 = [v61 objectForKeyedSubscript:v18];
    v20 = [NSNumber numberWithUnsignedInteger:self->_typeface];
    v21 = [v19 objectForKeyedSubscript:v20];
    v22 = [NSNumber numberWithUnsignedInteger:self->_density];
    v23 = [v21 objectForKeyedSubscript:v22];
    v24 = [NSNumber numberWithUnsignedInteger:hour];
    v25 = [v23 objectForKeyedSubscript:v24];

    if (v25)
    {
      v65 = NSKernAttributeName;
      v66 = v25;
      [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v27 = v26 = v58;
      v28 = [[NSAttributedString alloc] initWithString:v58 attributes:v27];
      [v15 setAttributedText:v28];
    }

    else
    {
      v26 = v58;
      [v15 setText:v58];
    }

    goto LABEL_60;
  }

  v41 = v17;
  sub_744C(v17, self->_device);
  v63 = qword_1B6D8;
  v60 = [NSNumber numberWithUnsignedInteger:self->_style];
  v57 = [v63 objectForKeyedSubscript:v60];
  v56 = [NSNumber numberWithUnsignedInteger:self->_typeface];
  v42 = [v57 objectForKeyedSubscript:v56];
  v43 = [NSNumber numberWithUnsignedInteger:self->_density];
  v44 = [v42 objectForKeyedSubscript:v43];
  v45 = [NSNumber numberWithUnsignedInteger:3];
  v46 = [v44 objectForKeyedSubscript:v45];

  v47 = 1;
  v26 = v41;
  do
  {
    v48 = objc_alloc_init(UILabel);
    [v48 setTextAlignment:1];
    digit2 = [(NTKCaliforniaColorPalette *)self->_colorPalette digit];
    [v48 setTextColor:digit2];

    [v48 setFont:_font];
    [v48 setText:v26];
    [v48 sizeToFit];
    [v15 center];
    v51 = v50;
    v53 = v52;
    if (v47 == 3)
    {
      [v46 floatValue];
      v51 = v51 + v55;
    }

    else if (v47 == 1)
    {
      [v46 floatValue];
      v51 = v51 - v54;
    }

    [v48 setCenter:{v51, v53}];
    [v15 addSubview:v48];

    ++v47;
  }

  while (v47 != 4);

LABEL_61:

  return v15;
}

- (id)_font
{
  font = self->_font;
  if (!font)
  {
    v4 = [NTKGreyhoundTextUtilities fontForDevice:self->_device style:self->_style density:self->_density typeface:self->_typeface];
    v5 = self->_font;
    self->_font = v4;

    font = self->_font;
  }

  return font;
}

@end