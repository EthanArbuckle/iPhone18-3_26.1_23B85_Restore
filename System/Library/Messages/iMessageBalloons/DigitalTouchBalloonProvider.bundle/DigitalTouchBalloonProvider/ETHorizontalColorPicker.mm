@interface ETHorizontalColorPicker
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFitsColumns:(unint64_t)columns;
- (ETHorizontalColorPicker)initWithFrame:(CGRect)frame;
- (ETHorizontalColorPickerDelegate)presentationDelegate;
- (void)_getNumCirclesPerColumn:(unint64_t *)column numExtraCircles:(unint64_t *)circles horizontalSpacing:(double *)spacing verticalSpacing:(double *)verticalSpacing forNumRows:(unint64_t)rows andNumColumns:(unint64_t)columns;
- (void)_getNumRows:(unint64_t *)rows numColumns:(unint64_t *)columns numCirclesPerColumn:(unint64_t *)column numExtraCircles:(unint64_t *)circles horizontalSpacing:(double *)spacing verticalSpacing:(double *)verticalSpacing forSize:(CGSize)size;
- (void)_getWidthNeeded:(double *)needed heightNeeded:(double *)heightNeeded numColumns:(unint64_t)columns numCirclesPerColumn:(unint64_t)column numExtraCircles:(unint64_t)circles horizontalSpacing:(unint64_t)spacing verticalSpacing:(unint64_t)verticalSpacing;
- (void)colorWheel:(id)wheel didPickColor:(id)color;
- (void)colorWheel:(id)wheel pickerColorChanged:(id)changed;
- (void)layoutSubviews;
- (void)setDimmed:(BOOL)dimmed excludeSelectedColor:(BOOL)color animated:(BOOL)animated;
- (void)setTransform:(CGAffineTransform *)transform excludeSelectedColor:(BOOL)color;
- (void)showColorWheel;
@end

@implementation ETHorizontalColorPicker

- (ETHorizontalColorPicker)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = ETHorizontalColorPicker;
  v3 = [(ETHorizontalColorPicker *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ETHorizontalColorPicker *)v3 createPaletteCirclesWithParentView:v3];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    paletteCircles = [(ETHorizontalColorPicker *)v4 paletteCircles];
    v6 = [paletteCircles countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(paletteCircles);
          }

          LODWORD(v7) = -1093874483;
          [*(*(&v14 + 1) + 8 * v10) setCharge:v7];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [paletteCircles countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    v11 = [[ETTranscriptColorWheel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    colorWheel = v4->_colorWheel;
    v4->_colorWheel = v11;

    [(ETTranscriptColorWheel *)v4->_colorWheel setDelegate:v4];
  }

  return v4;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = ETHorizontalColorPicker;
  [(ETHorizontalColorPicker *)&v30 layoutSubviews];
  [(ETHorizontalColorPicker *)self bounds];
  v4 = v3;
  v6 = v5;
  paletteCircles = [(ETHorizontalColorPicker *)self paletteCircles];
  v8 = [paletteCircles count];
  [(ETHorizontalColorPicker *)self colorCircleDiameter];
  v10 = v9;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0.0;
  v25 = 0.0;
  [(ETHorizontalColorPicker *)self _getNumRows:&v29 numColumns:&v28 numCirclesPerColumn:&v27 numExtraCircles:&v26 horizontalSpacing:&v25 verticalSpacing:&v24 forSize:v4, v6];
  v11 = v28;
  if (v28 && v8)
  {
    v12 = 0;
    v13 = 0;
    LODWORD(v14) = 0;
    v15 = v10 * 0.5;
    do
    {
      v16 = v27;
      if (v26 != 1 || (v8 & 1) == 0)
      {
        if (v26)
        {
          v16 = v27 + 1;
          --v26;
        }
      }

      else if (v12 == v11 >> 1)
      {
        v16 = v27 + 1;
        v26 = 0;
      }

      if (v16)
      {
        v18 = 0;
        v14 = v14;
        do
        {
          v19 = v13;
          v13 = [paletteCircles objectAtIndexedSubscript:v14];

          v20 = v25;
          v21 = v15 + v18 * (v10 + v24);
          if ((v12 & 1) == 0 && v28 >= 2 && v29 >= 2)
          {
            [(ETHorizontalColorPicker *)self colorCircleDiameter];
            v21 = v21 + v23;
          }

          [v13 setCenter:{v15 + v12 * (v10 + v20), v21}];
          ++v14;
          ++v18;
        }

        while (v16 != v18);
        v11 = v28;
      }

      ++v12;
    }

    while (v12 < v11 && v8 > v14);
  }
}

- (CGSize)sizeThatFitsColumns:(unint64_t)columns
{
  paletteCircles = [(ETHorizontalColorPicker *)self paletteCircles];
  v6 = [paletteCircles count];

  v14 = 0;
  v12 = 0.0;
  v13 = 0;
  v11 = 0.0;
  [(ETHorizontalColorPicker *)self _getNumCirclesPerColumn:&v14 numExtraCircles:&v13 horizontalSpacing:&v12 verticalSpacing:&v11 forNumRows:vcvtps_u32_f32(v6 / columns) andNumColumns:columns];
  v9 = 0.0;
  v10 = 0.0;
  [(ETHorizontalColorPicker *)self _getWidthNeeded:&v10 heightNeeded:&v9 numColumns:columns numCirclesPerColumn:v14 numExtraCircles:v13 horizontalSpacing:v12 verticalSpacing:v11];
  v8 = v9;
  v7 = v10;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0.0;
  v10 = 0;
  v8 = 0.0;
  [(ETHorizontalColorPicker *)self _getNumRows:&v13 numColumns:&v12 numCirclesPerColumn:&v11 numExtraCircles:&v10 horizontalSpacing:&v9 verticalSpacing:&v8 forSize:fits.width, fits.height];
  v6 = 0.0;
  v7 = 0.0;
  [(ETHorizontalColorPicker *)self _getWidthNeeded:&v7 heightNeeded:&v6 numColumns:v12 numCirclesPerColumn:v11 numExtraCircles:v10 horizontalSpacing:v9 verticalSpacing:v8];
  v5 = v6;
  v4 = v7;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_getWidthNeeded:(double *)needed heightNeeded:(double *)heightNeeded numColumns:(unint64_t)columns numCirclesPerColumn:(unint64_t)column numExtraCircles:(unint64_t)circles horizontalSpacing:(unint64_t)spacing verticalSpacing:(unint64_t)verticalSpacing
{
  [(ETHorizontalColorPicker *)self colorCircleDiameter];
  *needed = ((columns - 1) * spacing) + columns * v15;
  v16 = ((column - 1) * verticalSpacing) + column * v15;
  *heightNeeded = v16;
  if (circles)
  {
    v17 = verticalSpacing + v15 * 2.0;
    v18 = v15 + verticalSpacing;
    if (circles != 1)
    {
      v18 = v17;
    }

    *heightNeeded = v16 + v18;
  }
}

- (void)_getNumRows:(unint64_t *)rows numColumns:(unint64_t *)columns numCirclesPerColumn:(unint64_t *)column numExtraCircles:(unint64_t *)circles horizontalSpacing:(double *)spacing verticalSpacing:(double *)verticalSpacing forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  paletteCircles = [(ETHorizontalColorPicker *)self paletteCircles];
  v18 = [paletteCircles count];
  [(ETHorizontalColorPicker *)self colorCircleDiameter];
  v20 = v19;
  v21 = floor((height + v19) / (v20 + v20));
  if (v21 < 1.0)
  {
    v21 = 1.0;
  }

  *rows = v21;
  *columns = vcvtps_u32_f32(v18 / v21);
  [(ETHorizontalColorPicker *)self _getNumCirclesPerColumn:column numExtraCircles:circles horizontalSpacing:spacing verticalSpacing:verticalSpacing forNumRows:*rows andNumColumns:?];
  colorCircleSize = [(ETHorizontalColorPicker *)self colorCircleSize];
  if (colorCircleSize != &dword_0 + 3 && colorCircleSize)
  {
    [(ETHorizontalColorPicker *)self colorCircleHorizontalSpacing];
    v23 = paletteCircles;
  }

  else
  {
    v23 = paletteCircles;
    if (*rows != 1)
    {
      goto LABEL_11;
    }

    v24 = (width - v18 * v20) / (v18 - 1);
    if (v20 < v24)
    {
      v24 = v20;
    }
  }

  *spacing = v24;
LABEL_11:
}

- (void)_getNumCirclesPerColumn:(unint64_t *)column numExtraCircles:(unint64_t *)circles horizontalSpacing:(double *)spacing verticalSpacing:(double *)verticalSpacing forNumRows:(unint64_t)rows andNumColumns:(unint64_t)columns
{
  paletteCircles = [(ETHorizontalColorPicker *)self paletteCircles];
  v16 = [paletteCircles count];

  [(ETHorizontalColorPicker *)self colorCircleDiameter];
  v18 = v17;
  *column = v16 / columns;
  *circles = v16 % columns;
  colorCircleSize = [(ETHorizontalColorPicker *)self colorCircleSize];
  if ([(ETHorizontalColorPicker *)self shouldCompressSpacingBetweenColumns]|| colorCircleSize != &dword_0 + 3 && colorCircleSize)
  {
    [(ETHorizontalColorPicker *)self colorCircleHorizontalSpacing];
  }

  else
  {
    v20 = v18 * 0.5;
    if (rows == 1)
    {
      v20 = v18;
    }
  }

  *spacing = v20;
  *verticalSpacing = v18;
}

- (void)setDimmed:(BOOL)dimmed excludeSelectedColor:(BOOL)color animated:(BOOL)animated
{
  animatedCopy = animated;
  dimmedCopy = dimmed;
  if ([(ETHorizontalColorPicker *)self isDimmed]!= dimmed)
  {
    v13.receiver = self;
    v13.super_class = ETHorizontalColorPicker;
    [(ETHorizontalColorPicker *)&v13 setDimmed:dimmedCopy];
    v9 = 1.0;
    if (dimmedCopy)
    {
      v9 = 0.1;
    }

    v10 = 0.0;
    v11[1] = 3221225472;
    v11[0] = _NSConcreteStackBlock;
    v11[2] = sub_99D8;
    v11[3] = &unk_24A00;
    v11[4] = self;
    if (animatedCopy)
    {
      v10 = 0.25;
    }

    colorCopy = color;
    *&v11[5] = v9;
    [UIView animateWithDuration:v11 animations:0 completion:v10];
    [(ETHorizontalColorPicker *)self setUserInteractionEnabled:dimmedCopy ^ 1];
  }
}

- (void)setTransform:(CGAffineTransform *)transform excludeSelectedColor:(BOOL)color
{
  colorCopy = color;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  paletteCircles = [(ETHorizontalColorPicker *)self paletteCircles];
  v8 = [paletteCircles countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(paletteCircles);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if (!colorCopy || ([(ETHorizontalColorPicker *)self selectedCircle], v13 = objc_claimAutoreleasedReturnValue(), v13, v12 != v13))
        {
          v14 = *&transform->c;
          v15[0] = *&transform->a;
          v15[1] = v14;
          v15[2] = *&transform->tx;
          [v12 setTransform:v15];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [paletteCircles countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)showColorWheel
{
  longPressRecognizer = [(ETHorizontalColorPicker *)self longPressRecognizer];
  [longPressRecognizer setEnabled:0];

  colorWheel = self->_colorWheel;
  selectedCircle = [(ETHorizontalColorPicker *)self selectedCircle];
  [(ETTranscriptColorWheel *)colorWheel setHueForPaletteCircle:selectedCircle];

  presentationDelegate = [(ETHorizontalColorPicker *)self presentationDelegate];
  [presentationDelegate colorPicker:self requestsPresentColorWheel:self->_colorWheel];
}

- (void)colorWheel:(id)wheel didPickColor:(id)color
{
  if (color)
  {
    colorCopy = color;
    v6 = +[ETColorStore defaultStore];
    paletteCircles = [(ETHorizontalColorPicker *)self paletteCircles];
    selectedCircle = [(ETHorizontalColorPicker *)self selectedCircle];
    [v6 saveColor:colorCopy forIndex:{objc_msgSend(paletteCircles, "indexOfObject:", selectedCircle)}];
  }

  delegate = [(ETHorizontalColorPicker *)self delegate];
  [delegate colorPickerSelectedColorDidChange:self];

  longPressRecognizer = [(ETHorizontalColorPicker *)self longPressRecognizer];
  [longPressRecognizer setEnabled:1];

  presentationDelegate = [(ETHorizontalColorPicker *)self presentationDelegate];
  [presentationDelegate colorPicker:self requestsDismissColorWheel:self->_colorWheel];
}

- (void)colorWheel:(id)wheel pickerColorChanged:(id)changed
{
  changedCopy = changed;
  selectedCircle = [(ETHorizontalColorPicker *)self selectedCircle];
  [selectedCircle setBackgroundColor:changedCopy];
}

- (ETHorizontalColorPickerDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end