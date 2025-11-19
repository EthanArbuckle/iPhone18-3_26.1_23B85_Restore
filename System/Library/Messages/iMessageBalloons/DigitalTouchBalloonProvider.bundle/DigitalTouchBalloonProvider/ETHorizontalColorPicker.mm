@interface ETHorizontalColorPicker
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFitsColumns:(unint64_t)a3;
- (ETHorizontalColorPicker)initWithFrame:(CGRect)a3;
- (ETHorizontalColorPickerDelegate)presentationDelegate;
- (void)_getNumCirclesPerColumn:(unint64_t *)a3 numExtraCircles:(unint64_t *)a4 horizontalSpacing:(double *)a5 verticalSpacing:(double *)a6 forNumRows:(unint64_t)a7 andNumColumns:(unint64_t)a8;
- (void)_getNumRows:(unint64_t *)a3 numColumns:(unint64_t *)a4 numCirclesPerColumn:(unint64_t *)a5 numExtraCircles:(unint64_t *)a6 horizontalSpacing:(double *)a7 verticalSpacing:(double *)a8 forSize:(CGSize)a9;
- (void)_getWidthNeeded:(double *)a3 heightNeeded:(double *)a4 numColumns:(unint64_t)a5 numCirclesPerColumn:(unint64_t)a6 numExtraCircles:(unint64_t)a7 horizontalSpacing:(unint64_t)a8 verticalSpacing:(unint64_t)a9;
- (void)colorWheel:(id)a3 didPickColor:(id)a4;
- (void)colorWheel:(id)a3 pickerColorChanged:(id)a4;
- (void)layoutSubviews;
- (void)setDimmed:(BOOL)a3 excludeSelectedColor:(BOOL)a4 animated:(BOOL)a5;
- (void)setTransform:(CGAffineTransform *)a3 excludeSelectedColor:(BOOL)a4;
- (void)showColorWheel;
@end

@implementation ETHorizontalColorPicker

- (ETHorizontalColorPicker)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = ETHorizontalColorPicker;
  v3 = [(ETHorizontalColorPicker *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ETHorizontalColorPicker *)v3 createPaletteCirclesWithParentView:v3];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(ETHorizontalColorPicker *)v4 paletteCircles];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          LODWORD(v7) = -1093874483;
          [*(*(&v14 + 1) + 8 * v10) setCharge:v7];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
  v7 = [(ETHorizontalColorPicker *)self paletteCircles];
  v8 = [v7 count];
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
          v13 = [v7 objectAtIndexedSubscript:v14];

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

- (CGSize)sizeThatFitsColumns:(unint64_t)a3
{
  v5 = [(ETHorizontalColorPicker *)self paletteCircles];
  v6 = [v5 count];

  v14 = 0;
  v12 = 0.0;
  v13 = 0;
  v11 = 0.0;
  [(ETHorizontalColorPicker *)self _getNumCirclesPerColumn:&v14 numExtraCircles:&v13 horizontalSpacing:&v12 verticalSpacing:&v11 forNumRows:vcvtps_u32_f32(v6 / a3) andNumColumns:a3];
  v9 = 0.0;
  v10 = 0.0;
  [(ETHorizontalColorPicker *)self _getWidthNeeded:&v10 heightNeeded:&v9 numColumns:a3 numCirclesPerColumn:v14 numExtraCircles:v13 horizontalSpacing:v12 verticalSpacing:v11];
  v8 = v9;
  v7 = v10;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0.0;
  v10 = 0;
  v8 = 0.0;
  [(ETHorizontalColorPicker *)self _getNumRows:&v13 numColumns:&v12 numCirclesPerColumn:&v11 numExtraCircles:&v10 horizontalSpacing:&v9 verticalSpacing:&v8 forSize:a3.width, a3.height];
  v6 = 0.0;
  v7 = 0.0;
  [(ETHorizontalColorPicker *)self _getWidthNeeded:&v7 heightNeeded:&v6 numColumns:v12 numCirclesPerColumn:v11 numExtraCircles:v10 horizontalSpacing:v9 verticalSpacing:v8];
  v5 = v6;
  v4 = v7;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_getWidthNeeded:(double *)a3 heightNeeded:(double *)a4 numColumns:(unint64_t)a5 numCirclesPerColumn:(unint64_t)a6 numExtraCircles:(unint64_t)a7 horizontalSpacing:(unint64_t)a8 verticalSpacing:(unint64_t)a9
{
  [(ETHorizontalColorPicker *)self colorCircleDiameter];
  *a3 = ((a5 - 1) * a8) + a5 * v15;
  v16 = ((a6 - 1) * a9) + a6 * v15;
  *a4 = v16;
  if (a7)
  {
    v17 = a9 + v15 * 2.0;
    v18 = v15 + a9;
    if (a7 != 1)
    {
      v18 = v17;
    }

    *a4 = v16 + v18;
  }
}

- (void)_getNumRows:(unint64_t *)a3 numColumns:(unint64_t *)a4 numCirclesPerColumn:(unint64_t *)a5 numExtraCircles:(unint64_t *)a6 horizontalSpacing:(double *)a7 verticalSpacing:(double *)a8 forSize:(CGSize)a9
{
  height = a9.height;
  width = a9.width;
  v25 = [(ETHorizontalColorPicker *)self paletteCircles];
  v18 = [v25 count];
  [(ETHorizontalColorPicker *)self colorCircleDiameter];
  v20 = v19;
  v21 = floor((height + v19) / (v20 + v20));
  if (v21 < 1.0)
  {
    v21 = 1.0;
  }

  *a3 = v21;
  *a4 = vcvtps_u32_f32(v18 / v21);
  [(ETHorizontalColorPicker *)self _getNumCirclesPerColumn:a5 numExtraCircles:a6 horizontalSpacing:a7 verticalSpacing:a8 forNumRows:*a3 andNumColumns:?];
  v22 = [(ETHorizontalColorPicker *)self colorCircleSize];
  if (v22 != &dword_0 + 3 && v22)
  {
    [(ETHorizontalColorPicker *)self colorCircleHorizontalSpacing];
    v23 = v25;
  }

  else
  {
    v23 = v25;
    if (*a3 != 1)
    {
      goto LABEL_11;
    }

    v24 = (width - v18 * v20) / (v18 - 1);
    if (v20 < v24)
    {
      v24 = v20;
    }
  }

  *a7 = v24;
LABEL_11:
}

- (void)_getNumCirclesPerColumn:(unint64_t *)a3 numExtraCircles:(unint64_t *)a4 horizontalSpacing:(double *)a5 verticalSpacing:(double *)a6 forNumRows:(unint64_t)a7 andNumColumns:(unint64_t)a8
{
  v15 = [(ETHorizontalColorPicker *)self paletteCircles];
  v16 = [v15 count];

  [(ETHorizontalColorPicker *)self colorCircleDiameter];
  v18 = v17;
  *a3 = v16 / a8;
  *a4 = v16 % a8;
  v19 = [(ETHorizontalColorPicker *)self colorCircleSize];
  if ([(ETHorizontalColorPicker *)self shouldCompressSpacingBetweenColumns]|| v19 != &dword_0 + 3 && v19)
  {
    [(ETHorizontalColorPicker *)self colorCircleHorizontalSpacing];
  }

  else
  {
    v20 = v18 * 0.5;
    if (a7 == 1)
    {
      v20 = v18;
    }
  }

  *a5 = v20;
  *a6 = v18;
}

- (void)setDimmed:(BOOL)a3 excludeSelectedColor:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if ([(ETHorizontalColorPicker *)self isDimmed]!= a3)
  {
    v13.receiver = self;
    v13.super_class = ETHorizontalColorPicker;
    [(ETHorizontalColorPicker *)&v13 setDimmed:v7];
    v9 = 1.0;
    if (v7)
    {
      v9 = 0.1;
    }

    v10 = 0.0;
    v11[1] = 3221225472;
    v11[0] = _NSConcreteStackBlock;
    v11[2] = sub_99D8;
    v11[3] = &unk_24A00;
    v11[4] = self;
    if (v5)
    {
      v10 = 0.25;
    }

    v12 = a4;
    *&v11[5] = v9;
    [UIView animateWithDuration:v11 animations:0 completion:v10];
    [(ETHorizontalColorPicker *)self setUserInteractionEnabled:v7 ^ 1];
  }
}

- (void)setTransform:(CGAffineTransform *)a3 excludeSelectedColor:(BOOL)a4
{
  v4 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(ETHorizontalColorPicker *)self paletteCircles];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if (!v4 || ([(ETHorizontalColorPicker *)self selectedCircle], v13 = objc_claimAutoreleasedReturnValue(), v13, v12 != v13))
        {
          v14 = *&a3->c;
          v15[0] = *&a3->a;
          v15[1] = v14;
          v15[2] = *&a3->tx;
          [v12 setTransform:v15];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)showColorWheel
{
  v3 = [(ETHorizontalColorPicker *)self longPressRecognizer];
  [v3 setEnabled:0];

  colorWheel = self->_colorWheel;
  v5 = [(ETHorizontalColorPicker *)self selectedCircle];
  [(ETTranscriptColorWheel *)colorWheel setHueForPaletteCircle:v5];

  v6 = [(ETHorizontalColorPicker *)self presentationDelegate];
  [v6 colorPicker:self requestsPresentColorWheel:self->_colorWheel];
}

- (void)colorWheel:(id)a3 didPickColor:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = +[ETColorStore defaultStore];
    v7 = [(ETHorizontalColorPicker *)self paletteCircles];
    v8 = [(ETHorizontalColorPicker *)self selectedCircle];
    [v6 saveColor:v5 forIndex:{objc_msgSend(v7, "indexOfObject:", v8)}];
  }

  v9 = [(ETHorizontalColorPicker *)self delegate];
  [v9 colorPickerSelectedColorDidChange:self];

  v10 = [(ETHorizontalColorPicker *)self longPressRecognizer];
  [v10 setEnabled:1];

  v11 = [(ETHorizontalColorPicker *)self presentationDelegate];
  [v11 colorPicker:self requestsDismissColorWheel:self->_colorWheel];
}

- (void)colorWheel:(id)a3 pickerColorChanged:(id)a4
{
  v5 = a4;
  v6 = [(ETHorizontalColorPicker *)self selectedCircle];
  [v6 setBackgroundColor:v5];
}

- (ETHorizontalColorPickerDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

@end