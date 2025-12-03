@interface NTKBellonaNumeralsView
- (NTKBellonaNumeralsDelegate)backgroundView;
- (NTKBellonaNumeralsView)initWithDevice:(id)device;
- (id)_filledDigitLayers;
- (id)_outlinedDigitLayers;
- (id)createLabel:(BOOL)label;
- (id)textForDigit:(unint64_t)digit;
- (int64_t)updatedIndexForHour:(unint64_t)hour currentIndex:(unint64_t)index;
- (void)_createDigits;
- (void)hourChangeAnimationFromNow:(unint64_t)now withFraction:(double)fraction timeChanged:(BOOL)changed overrideDate:(BOOL)date;
- (void)setDateIsOn:(BOOL)on;
- (void)updateBackgroundWithPalette:(id)palette;
- (void)updateDigitsWithPalette:(id)palette;
@end

@implementation NTKBellonaNumeralsView

- (NTKBellonaNumeralsView)initWithDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy screenBounds];
  v9.receiver = self;
  v9.super_class = NTKBellonaNumeralsView;
  v6 = [(NTKBellonaNumeralsView *)&v9 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    [(NTKBellonaNumeralsView *)v7 _createDigits];
  }

  return v7;
}

- (void)setDateIsOn:(BOOL)on
{
  onCopy = on;
  if (self->_dateIsOn != on)
  {
    v5 = [(NSArray *)self->_filledHourMarkers objectAtIndexedSubscript:2];
    [v5 setHidden:onCopy];

    v6 = [(NSArray *)self->_outlinedHourMarkers objectAtIndexedSubscript:2];
    [v6 setHidden:onCopy];
  }

  self->_dateIsOn = onCopy;
}

- (void)_createDigits
{
  sub_4080(self->_device, __src);
  memcpy(&unk_580E0, __src, 0x230uLL);
  _filledDigitLayers = [(NTKBellonaNumeralsView *)self _filledDigitLayers];
  filledHourMarkers = self->_filledHourMarkers;
  self->_filledHourMarkers = _filledDigitLayers;

  v5 = self->_filledHourMarkers;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_331C;
  v10[3] = &unk_449E0;
  v10[4] = self;
  [(NSArray *)v5 enumerateObjectsUsingBlock:v10];
  _outlinedDigitLayers = [(NTKBellonaNumeralsView *)self _outlinedDigitLayers];
  outlinedHourMarkers = self->_outlinedHourMarkers;
  self->_outlinedHourMarkers = _outlinedDigitLayers;

  v8 = self->_outlinedHourMarkers;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3328;
  v9[3] = &unk_449E0;
  v9[4] = self;
  [(NSArray *)v8 enumerateObjectsUsingBlock:v9];
  [(NSArray *)self->_filledHourMarkers enumerateObjectsUsingBlock:&stru_44A20];
  [(NSArray *)self->_outlinedHourMarkers enumerateObjectsUsingBlock:&stru_44A40];
}

- (id)createLabel:(BOOL)label
{
  labelCopy = label;
  v5 = objc_alloc_init(UILabel);
  sub_4080(self->_device, v13);
  v6 = v14;
  if (labelCopy)
  {
    sub_4080(self->_device, v12);
    v7 = [NTKZeusFontLoader capeCodInlineFontDescriptorWithInlineWidth:v12[61]];
  }

  else
  {
    v7 = +[NTKZeusFontLoader capeCodFontDescriptor];
  }

  v8 = v7;
  v9 = [CLKFont fontWithDescriptor:v7 size:v6];
  [v5 setFont:v9];

  v10 = [UIColor colorWithRed:0.803921569 green:0.745098039 blue:0.694117647 alpha:1.0];
  [v5 setTextColor:v10];

  return v5;
}

- (id)textForDigit:(unint64_t)digit
{
  v3 = [NSNumber numberWithUnsignedInteger:digit];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (id)_filledDigitLayers
{
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  sub_4080(self->_device, v30);
  CLKClockTimerDateForNow();
  v3 = v28;
  self->_hour = v29;

  v4 = +[NSMutableArray array];
  v5 = 0;
  v6 = v34;
  v7 = v33;
  v8 = v32;
  v9 = 1;
  do
  {
    hour = self->_hour;
    if (hour >= 0xC)
    {
      self->_hour = hour - 12;
      hour -= 12;
    }

    v11 = v5 + 12;
    if (hour <= v5)
    {
      v11 = v5;
    }

    v12 = v11 - hour;
    if (v12 <= 11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 - 12;
    }

    v14 = [(NTKBellonaNumeralsView *)self createLabel:0];
    v15 = [(NTKBellonaNumeralsView *)self textForDigit:v5 + 1];
    [v14 setText:v15];

    [v14 sizeToFit];
    if (v14)
    {
      [v14 transform];
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
    }

    [(NTKBellonaNumeralsView *)self _rotationAngleForDigitIndex:v5 + 1];
    CGAffineTransformRotate(&v27, &v26, v16);
    v26 = v27;
    [v14 setTransform:&v26];
    if ((v9 - 9) <= 0xFFFFFFFA)
    {
      if (v14)
      {
        [v14 transform];
      }

      else
      {
        memset(&v26, 0, sizeof(v26));
      }

      CLKDegreesToRadians();
      CGAffineTransformRotate(&v25, &v26, v17);
      v26 = v25;
      [v14 setTransform:&v26];
    }

    [v14 setAlpha:*(v31 + v13)];
    v18 = v8;
    if (v9 == 10 || (v18 = v6, v9 == 12) || (v18 = v7, v9 == 11) || (v18 = 0.0, (v9 & 0xE) == 0xA))
    {
      v35 = NSKernAttributeName;
      v19 = [NSNumber numberWithDouble:v18];
      v36 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];

      v21 = [NSAttributedString alloc];
      text = [v14 text];
      v23 = [v21 initWithString:text attributes:v20];
      [v14 setAttributedText:v23];

      if (v5 != 10)
      {
        [v14 sizeToFit];
      }
    }

    [v4 addObject:{v14, v18}];

    ++v9;
    ++v5;
  }

  while (v5 != 12);

  return v4;
}

- (id)_outlinedDigitLayers
{
  sub_4080(self->_device, v23);
  v3 = +[NSMutableArray array];
  v4 = v26;
  v5 = v25;
  v6 = v24;
  v7 = -8;
  for (i = 1; i != 13; ++i)
  {
    v9 = [(NTKBellonaNumeralsView *)self createLabel:1];
    v10 = [(NTKBellonaNumeralsView *)self textForDigit:i];
    [v9 setText:v10];

    [v9 sizeToFit];
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    [(NTKBellonaNumeralsView *)self _rotationAngleForDigitIndex:i];
    CGAffineTransformRotate(&v22, &v21, v11);
    v21 = v22;
    [v9 setTransform:&v21];
    if (v7 <= 0xFFFFFFFA)
    {
      if (v9)
      {
        [v9 transform];
      }

      else
      {
        memset(&v21, 0, sizeof(v21));
      }

      CLKDegreesToRadians();
      CGAffineTransformRotate(&v20, &v21, v12);
      v21 = v20;
      [v9 setTransform:&v21];
    }

    v13 = v6;
    if (i == 10 || (v13 = v4, i == 12) || (v13 = v5, i == 11) || (v13 = 0.0, (i & 0xE) == 0xA))
    {
      v27 = NSKernAttributeName;
      v14 = [NSNumber numberWithDouble:v13];
      v28 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

      v16 = [NSAttributedString alloc];
      text = [v9 text];
      v18 = [v16 initWithString:text attributes:v15];
      [v9 setAttributedText:v18];

      if (i != 11)
      {
        [v9 sizeToFit];
      }
    }

    [v3 addObject:{v9, v13}];

    ++v7;
  }

  return v3;
}

- (void)updateDigitsWithPalette:(id)palette
{
  paletteCopy = palette;
  filledHourMarkers = self->_filledHourMarkers;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_3C78;
  v11[3] = &unk_449E0;
  v6 = paletteCopy;
  v12 = v6;
  [(NSArray *)filledHourMarkers enumerateObjectsUsingBlock:v11];
  outlinedHourMarkers = self->_outlinedHourMarkers;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3CF8;
  v9[3] = &unk_449E0;
  v10 = v6;
  v8 = v6;
  [(NSArray *)outlinedHourMarkers enumerateObjectsUsingBlock:v9];
}

- (void)updateBackgroundWithPalette:(id)palette
{
  background = [palette background];
  [(NTKBellonaNumeralsView *)self setBackgroundColor:background];
}

- (void)hourChangeAnimationFromNow:(unint64_t)now withFraction:(double)fraction timeChanged:(BOOL)changed overrideDate:(BOOL)date
{
  dateCopy = date;
  changedCopy = changed;
  memset(v18, 0, 512);
  sub_4080(self->_device, v18);
  v11 = changedCopy || dateCopy;
  v12 = 48;
  do
  {
    v13 = v12 - 48;
    v14 = [(NSArray *)self->_filledHourMarkers objectAtIndexedSubscript:[(NTKBellonaNumeralsView *)self updatedIndexForHour:now currentIndex:v12 - 48]];
    if (v11)
    {
      if (v12 == 50 && self->_dateIsOn)
      {
        WeakRetained = objc_loadWeakRetained(&self->_backgroundView);
        [WeakRetained hourChangeAnimationFromCurrentHour:now withFraction:1 timeChanged:fraction];
      }

      v16 = *(v18 + v12);
    }

    else
    {
      if (v12 == 50 && self->_dateIsOn)
      {
        v17 = objc_loadWeakRetained(&self->_backgroundView);
        [v17 hourChangeAnimationFromCurrentHour:now withFraction:0 timeChanged:fraction];

        goto LABEL_10;
      }

      CLKInterpolateBetweenFloatsClipped();
    }

    [v14 setAlpha:v16];
LABEL_10:

    ++v12;
  }

  while (v13 != 11);
}

- (int64_t)updatedIndexForHour:(unint64_t)hour currentIndex:(unint64_t)index
{
  hourCopy = hour - 12;
  if (hour <= 0xB)
  {
    hourCopy = hour;
  }

  v5 = hourCopy + index;
  if (v5 <= 11)
  {
    return v5;
  }

  else
  {
    return v5 - 12;
  }
}

- (NTKBellonaNumeralsDelegate)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

@end