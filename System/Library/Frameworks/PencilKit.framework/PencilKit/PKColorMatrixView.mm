@interface PKColorMatrixView
+ (double)_rgbDistanceFromColor:(id)color toColor:(id)toColor;
+ (id)_representableColorForColor:(id)color;
+ (id)defaultColorMatrix;
+ (id)flippedColorMatrix:(id)matrix;
- (CGRect)_frameForViewWithPoint:(id)point;
- (CGRect)frameForColorPickerCrosshairView:(id)view;
- (PKColorMatrixView)initWithFrame:(CGRect)frame;
- (_PKColorPickerImplementationDelegate)colorPickerDelegate;
- (id)_boundedPointForPoint:(id)point;
- (id)_colorForPoint:(id)point;
- (id)_pointForCGPoint:(CGPoint)point;
- (id)_pointForColor:(id)color;
- (id)_pointFromButton:(id)button;
- (id)representableColorForColor:(id)color;
- (id)uiColorMatrix;
- (int64_t)_uiColorUserInterfaceStyle;
- (unint64_t)cornerPositionForColorPickerCrosshairView:(id)view;
- (void)colorPickerCrosshairViewShouldUpdateColor:(id)color point:(CGPoint)point;
- (void)colorPickerCrosshairViewShouldUpdateWithColor:(id)color;
- (void)didTapColorButton:(id)button;
- (void)layoutSubviews;
- (void)setColorUserInterfaceStyle:(int64_t)style;
@end

@implementation PKColorMatrixView

- (PKColorMatrixView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = PKColorMatrixView;
  v3 = [(PKColorMatrixView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  defaultColorMatrix = [objc_opt_class() defaultColorMatrix];
  colorMatrix = v3->_colorMatrix;
  v3->_colorMatrix = defaultColorMatrix;

  v6 = [PKColorMatrixView flippedColorMatrix:v3->_colorMatrix];
  darkColorMatrix = v3->_darkColorMatrix;
  v3->_darkColorMatrix = v6;

  array = [MEMORY[0x1E695DF70] array];
  colorMatrix = [(PKColorMatrixView *)v3 colorMatrix];
  v10 = [colorMatrix count];

  if (v10)
  {
    v11 = 0;
    do
    {
      array2 = [MEMORY[0x1E695DF70] array];
      colorMatrix2 = [(PKColorMatrixView *)v3 colorMatrix];
      v14 = [colorMatrix2 objectAtIndexedSubscript:0];
      v15 = [v14 count];

      if (v15)
      {
        v16 = 0;
        do
        {
          v17 = [MEMORY[0x1E69DC738] buttonWithType:0];
          [v17 addTarget:v3 action:sel_didTapColorButton_ forControlEvents:64];
          [array2 addObject:v17];
          [(PKColorMatrixView *)v3 addSubview:v17];

          ++v16;
          colorMatrix3 = [(PKColorMatrixView *)v3 colorMatrix];
          v19 = [colorMatrix3 objectAtIndexedSubscript:0];
          v20 = [v19 count];
        }

        while (v16 < v20);
      }

      v21 = [array2 copy];
      [array addObject:v21];

      ++v11;
      colorMatrix4 = [(PKColorMatrixView *)v3 colorMatrix];
      v23 = [colorMatrix4 count];
    }

    while (v11 < v23);
  }

  v24 = [array copy];
  [(PKColorMatrixView *)v3 setColorButtons:v24];

  return v3;
}

+ (id)flippedColorMatrix:(id)matrix
{
  v3 = MEMORY[0x1E695DF70];
  matrixCopy = matrix;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(matrixCopy, "count")}];
  v6 = [matrixCopy objectAtIndexedSubscript:0];
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  [v5 addObject:allObjects];

  v9 = [matrixCopy subarrayWithRange:{1, objc_msgSend(matrixCopy, "count") - 1}];

  reverseObjectEnumerator2 = [v9 reverseObjectEnumerator];
  allObjects2 = [reverseObjectEnumerator2 allObjects];
  [v5 addObjectsFromArray:allObjects2];

  return v5;
}

- (void)didTapColorButton:(id)button
{
  v11 = [(PKColorMatrixView *)self _pointFromButton:button];
  v4 = [(PKColorMatrixView *)self _colorForPoint:?];
  [(PKColorMatrixView *)self setSelectedColor:v4];
  colorPickerDelegate = [(PKColorMatrixView *)self colorPickerDelegate];
  [colorPickerDelegate colorPickerImplementationDidChangeSelectedColor:self];

  colorPickerDelegate2 = [(PKColorMatrixView *)self colorPickerDelegate];
  if (colorPickerDelegate2)
  {
    v7 = colorPickerDelegate2;
    colorPickerDelegate3 = [(PKColorMatrixView *)self colorPickerDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      colorPickerDelegate4 = [(PKColorMatrixView *)self colorPickerDelegate];
      [colorPickerDelegate4 colorPickerImplementationUserDidTouchUpInside:self];
    }
  }
}

- (id)_pointFromButton:(id)button
{
  buttonCopy = button;
  colorButtons = [(PKColorMatrixView *)self colorButtons];
  v6 = [colorButtons count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      colorButtons2 = [(PKColorMatrixView *)self colorButtons];
      v9 = [colorButtons2 objectAtIndexedSubscript:0];
      v10 = [v9 count];

      if (v10)
      {
        break;
      }

LABEL_7:
      ++v7;
      colorButtons3 = [(PKColorMatrixView *)self colorButtons];
      v19 = [colorButtons3 count];

      if (v7 >= v19)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
    while (1)
    {
      colorButtons4 = [(PKColorMatrixView *)self colorButtons];
      v13 = [colorButtons4 objectAtIndexedSubscript:v7];
      v14 = [v13 objectAtIndexedSubscript:v11];

      if (v14 == buttonCopy)
      {
        break;
      }

      ++v11;
      colorButtons5 = [(PKColorMatrixView *)self colorButtons];
      v16 = [colorButtons5 objectAtIndexedSubscript:0];
      v17 = [v16 count];

      if (v11 >= v17)
      {
        goto LABEL_7;
      }
    }

    v20 = [PKColorMatrixViewPoint pointWithRow:v7 col:v11];
  }

  else
  {
LABEL_8:
    v20 = 0;
  }

  return v20;
}

- (CGRect)_frameForViewWithPoint:(id)point
{
  if (point)
  {
    pointCopy = point;
    uiColorMatrix = [(PKColorMatrixView *)self uiColorMatrix];
    [uiColorMatrix count];
    v6 = [uiColorMatrix objectAtIndexedSubscript:0];
    [v6 count];

    [(PKColorMatrixView *)self bounds];
    [pointCopy col];
    [pointCopy row];

    traitCollection = [(PKColorMatrixView *)self traitCollection];
    [traitCollection displayScale];
    UIRectIntegralWithScale();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_pointForCGPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  uiColorMatrix = [(PKColorMatrixView *)self uiColorMatrix];
  v7 = [uiColorMatrix count];
  v8 = [uiColorMatrix objectAtIndexedSubscript:0];
  v9 = [v8 count];

  [(PKColorMatrixView *)self bounds];
  v12 = [PKColorMatrixViewPoint pointWithRow:vcvtmd_s64_f64(y / (v10 / v7)) col:vcvtmd_s64_f64(x / (v11 / v9))];

  return v12;
}

- (id)_colorForPoint:(id)point
{
  pointCopy = point;
  uiColorMatrix = [(PKColorMatrixView *)self uiColorMatrix];
  if (pointCopy && (v6 = [pointCopy row], v6 < objc_msgSend(uiColorMatrix, "count")) && (v7 = objc_msgSend(pointCopy, "col"), objc_msgSend(uiColorMatrix, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 < v9))
  {
    v10 = [uiColorMatrix objectAtIndexedSubscript:{objc_msgSend(pointCopy, "row")}];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(pointCopy, "col")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  if (self->_colorUserInterfaceStyle != style)
  {
    self->_colorUserInterfaceStyle = style;
    [(PKColorMatrixView *)self setNeedsLayout];
  }
}

- (int64_t)_uiColorUserInterfaceStyle
{
  if ([(PKColorMatrixView *)self colorUserInterfaceStyle])
  {

    return [(PKColorMatrixView *)self colorUserInterfaceStyle];
  }

  else
  {
    traitCollection = [(PKColorMatrixView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    return userInterfaceStyle;
  }
}

- (id)uiColorMatrix
{
  if ([(PKColorMatrixView *)self _uiColorUserInterfaceStyle]== 2)
  {
    [(PKColorMatrixView *)self darkColorMatrix];
  }

  else
  {
    [(PKColorMatrixView *)self colorMatrix];
  }
  v3 = ;

  return v3;
}

- (id)_pointForColor:(id)color
{
  colorCopy = color;
  if (colorCopy && (-[PKColorMatrixView uiColorMatrix](self, "uiColorMatrix"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    v7 = 0;
    v8 = 0;
    v9 = 1.79769313e308;
    do
    {
      uiColorMatrix = [(PKColorMatrixView *)self uiColorMatrix];
      v11 = [uiColorMatrix objectAtIndexedSubscript:0];
      v12 = [v11 count];

      if (v12)
      {
        v13 = 0;
        do
        {
          uiColorMatrix2 = [(PKColorMatrixView *)self uiColorMatrix];
          v15 = [uiColorMatrix2 objectAtIndexedSubscript:v7];
          v16 = [v15 objectAtIndexedSubscript:v13];

          [v16 _colorDifferenceFromColor:colorCopy];
          if (v17 < v9)
          {
            v18 = v17;
            v19 = [PKColorMatrixViewPoint pointWithRow:v7 col:v13];

            v8 = v19;
            v9 = v18;
          }

          ++v13;
          uiColorMatrix3 = [(PKColorMatrixView *)self uiColorMatrix];
          v21 = [uiColorMatrix3 objectAtIndexedSubscript:0];
          v22 = [v21 count];
        }

        while (v13 < v22);
      }

      ++v7;
      uiColorMatrix4 = [(PKColorMatrixView *)self uiColorMatrix];
      v24 = [uiColorMatrix4 count];
    }

    while (v7 < v24);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_boundedPointForPoint:(id)point
{
  if (point)
  {
    pointCopy = point;
    uiColorMatrix = [(PKColorMatrixView *)self uiColorMatrix];
    v6 = [pointCopy row];
    v7 = ([uiColorMatrix count] - 1);
    if (v6 < v7)
    {
      v7 = v6;
    }

    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    v8 = v7;
    v9 = [pointCopy col];

    v10 = v9;
    v11 = [uiColorMatrix objectAtIndexedSubscript:0];
    v12 = [v11 count] - 1;

    v13 = v12;
    if (v10 < v12)
    {
      v13 = v10;
    }

    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v14 = [PKColorMatrixViewPoint pointWithRow:v8 col:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = PKColorMatrixView;
  [(PKColorMatrixView *)&v24 layoutSubviews];
  _uiColorUserInterfaceStyle = [(PKColorMatrixView *)self _uiColorUserInterfaceStyle];
  uiColorMatrix = [(PKColorMatrixView *)self uiColorMatrix];
  v21 = [uiColorMatrix count];
  if (v21 >= 1)
  {
    v4 = 0;
    v5 = off_1E82D4000;
    v6 = off_1E82D4000;
    do
    {
      v7 = [uiColorMatrix objectAtIndexedSubscript:0];
      v8 = [v7 count];

      if (v8 >= 1)
      {
        v9 = 0;
        v23 = v8;
        do
        {
          [(PKColorMatrixView *)self colorButtons];
          v11 = v10 = v6;
          [v11 objectAtIndexedSubscript:v4];
          v13 = v12 = v4;
          v14 = [v13 objectAtIndexedSubscript:v9];

          v15 = v5[97];
          v16 = [uiColorMatrix objectAtIndexedSubscript:v12];
          [v16 objectAtIndexedSubscript:v9];
          v18 = v17 = v5;
          v19 = [(__objc2_class *)v15 convertColor:v18 fromUserInterfaceStyle:1 to:_uiColorUserInterfaceStyle];
          [v14 setBackgroundColor:v19];

          v6 = v10;
          v4 = v12;
          v20 = [(__objc2_class *)v10[12] pointWithRow:v12 col:v9];
          [(PKColorMatrixView *)self _frameForViewWithPoint:v20];
          [v14 setFrame:?];

          v5 = v17;
          ++v9;
        }

        while (v23 != v9);
      }

      ++v4;
    }

    while (v4 != v21);
  }
}

- (id)representableColorForColor:(id)color
{
  colorCopy = color;
  v4 = [objc_opt_class() _representableColorForColor:colorCopy];

  return v4;
}

+ (id)_representableColorForColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    defaultColorMatrix = [self defaultColorMatrix];
    if ([defaultColorMatrix count])
    {
      v6 = 0;
      v7 = 0;
      v8 = 1.79769313e308;
      do
      {
        v9 = [defaultColorMatrix objectAtIndexedSubscript:0];
        v10 = [v9 count];

        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = [defaultColorMatrix objectAtIndexedSubscript:v6];
            v13 = [v12 objectAtIndexedSubscript:v11];

            [self _rgbDistanceFromColor:v13 toColor:colorCopy];
            if (v14 < v8)
            {
              v15 = v14;
              v16 = v13;

              v7 = v16;
              v8 = v15;
            }

            ++v11;
            v17 = [defaultColorMatrix objectAtIndexedSubscript:0];
            v18 = [v17 count];
          }

          while (v11 < v18);
        }

        ++v6;
      }

      while (v6 < [defaultColorMatrix count]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (double)_rgbDistanceFromColor:(id)color toColor:(id)toColor
{
  v13 = *MEMORY[0x1E69E9840];
  toColorCopy = toColor;
  v11 = 0u;
  v12 = 0u;
  [color getRed:&v11 green:&v11 + 8 blue:&v12 alpha:&v12 + 8];
  v9 = 0u;
  v10 = 0u;
  [toColorCopy getRed:&v9 green:&v9 + 8 blue:&v10 alpha:&v10 + 8];
  v6 = 0;
  v7 = 0.0;
  do
  {
    v7 = v7 + (*(&v11 + v6) - *(&v9 + v6)) * (*(&v11 + v6) - *(&v9 + v6));
    v6 += 8;
  }

  while (v6 != 24);

  return sqrt(v7);
}

- (CGRect)frameForColorPickerCrosshairView:(id)view
{
  viewCopy = view;
  selectedColor = [(PKColorMatrixView *)self selectedColor];
  v6 = [(PKColorMatrixView *)self _pointForColor:selectedColor];
  v7 = [(PKColorMatrixView *)self _boundedPointForPoint:v6];
  [(PKColorMatrixView *)self _frameForViewWithPoint:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  superview = [viewCopy superview];

  [superview convertRect:self fromView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (unint64_t)cornerPositionForColorPickerCrosshairView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  [(PKColorMatrixView *)self convertRect:viewCopy fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  uiColorMatrix = [(PKColorMatrixView *)self uiColorMatrix];
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  v15 = [(PKColorMatrixView *)self _pointForCGPoint:MidX, CGRectGetMidY(v26)];
  if (![v15 row])
  {
    if (![v15 col])
    {
      v20 = 1;
      goto LABEL_12;
    }

    v21 = [v15 col];
    v22 = [uiColorMatrix objectAtIndexedSubscript:0];
    v23 = [v22 count] - 1;

    if (v21 == v23)
    {
      v20 = 2;
      goto LABEL_12;
    }

LABEL_9:
    v20 = 0;
    goto LABEL_12;
  }

  v16 = [v15 row];
  if (v16 != [uiColorMatrix count] - 1)
  {
    goto LABEL_9;
  }

  if (![v15 col])
  {
    v20 = 3;
    goto LABEL_12;
  }

  v17 = [v15 col];
  v18 = [uiColorMatrix objectAtIndexedSubscript:0];
  v19 = [v18 count] - 1;

  if (v17 != v19)
  {
    goto LABEL_9;
  }

  v20 = 4;
LABEL_12:

  return v20;
}

- (void)colorPickerCrosshairViewShouldUpdateColor:(id)color point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  superview = [color superview];
  [(PKColorMatrixView *)self convertPoint:superview fromView:x, y];
  v9 = v8;
  v11 = v10;

  v12 = [(PKColorMatrixView *)self _pointForCGPoint:v9, v11];
  v13 = [(PKColorMatrixView *)self _boundedPointForPoint:v12];
  v16 = [(PKColorMatrixView *)self _colorForPoint:v13];

  selectedColor = [(PKColorMatrixView *)self selectedColor];
  LOBYTE(v13) = [selectedColor isEqual:v16];

  if ((v13 & 1) == 0)
  {
    [(PKColorMatrixView *)self setSelectedColor:v16];
    colorPickerDelegate = [(PKColorMatrixView *)self colorPickerDelegate];
    [colorPickerDelegate colorPickerImplementationDidChangeSelectedColor:self];
  }
}

- (void)colorPickerCrosshairViewShouldUpdateWithColor:(id)color
{
  colorCopy = color;
  selectedColor = [(PKColorMatrixView *)self selectedColor];
  v5 = [selectedColor isEqual:colorCopy];

  if ((v5 & 1) == 0)
  {
    [(PKColorMatrixView *)self setSelectedColor:colorCopy];
    colorPickerDelegate = [(PKColorMatrixView *)self colorPickerDelegate];
    [colorPickerDelegate colorPickerImplementationDidChangeSelectedColor:self];
  }
}

+ (id)defaultColorMatrix
{
  if (qword_1EC2971B8 != -1)
  {
    dispatch_once(&qword_1EC2971B8, &__block_literal_global_28);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __39__PKColorMatrixView_defaultColorMatrix__block_invoke()
{
  v142[10] = *MEMORY[0x1E69E9840];
  v128 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v141[0] = v128;
  v127 = [MEMORY[0x1E69DC888] colorWithRed:0.921568627 green:0.921568627 blue:0.921568627 alpha:1.0];
  v141[1] = v127;
  v126 = [MEMORY[0x1E69DC888] colorWithRed:0.839215686 green:0.839215686 blue:0.839215686 alpha:1.0];
  v141[2] = v126;
  v125 = [MEMORY[0x1E69DC888] colorWithRed:0.760784314 green:0.760784314 blue:0.760784314 alpha:1.0];
  v141[3] = v125;
  v124 = [MEMORY[0x1E69DC888] colorWithRed:0.678431373 green:0.678431373 blue:0.678431373 alpha:1.0];
  v141[4] = v124;
  v123 = [MEMORY[0x1E69DC888] colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  v141[5] = v123;
  v122 = [MEMORY[0x1E69DC888] colorWithRed:0.521568627 green:0.521568627 blue:0.521568627 alpha:1.0];
  v141[6] = v122;
  v121 = [MEMORY[0x1E69DC888] colorWithRed:0.439215686 green:0.439215686 blue:0.439215686 alpha:1.0];
  v141[7] = v121;
  v120 = [MEMORY[0x1E69DC888] colorWithRed:0.360784314 green:0.360784314 blue:0.360784314 alpha:1.0];
  v141[8] = v120;
  v119 = [MEMORY[0x1E69DC888] colorWithRed:0.278431373 green:0.278431373 blue:0.278431373 alpha:1.0];
  v141[9] = v119;
  v118 = [MEMORY[0x1E69DC888] colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
  v141[10] = v118;
  v117 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v141[11] = v117;
  v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:12];
  v142[0] = v116;
  v115 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:? blue:? alpha:?];
  v140[0] = v115;
  v114 = [MEMORY[0x1E69DC888] colorWithRed:0.00392156863 green:0.11372549 blue:? alpha:?];
  v140[1] = v114;
  v113 = [MEMORY[0x1E69DC888] colorWithRed:0.0666666667 green:0.0196078431 blue:? alpha:?];
  v140[2] = v113;
  v112 = [MEMORY[0x1E69DC888] colorWithRed:0.180392157 green:0.0235294118 blue:0.239215686 alpha:1.0];
  v140[3] = v112;
  v111 = [MEMORY[0x1E69DC888] colorWithRed:0.235294118 green:0.0274509804 blue:0.105882353 alpha:1.0];
  v140[4] = v111;
  v110 = [MEMORY[0x1E69DC888] colorWithRed:0.360784314 green:0.0274509804 blue:0.00392156863 alpha:1.0];
  v140[5] = v110;
  v109 = [MEMORY[0x1E69DC888] colorWithRed:0.352941176 green:0.109803922 blue:0.0 alpha:1.0];
  v140[6] = v109;
  v108 = [MEMORY[0x1E69DC888] colorWithRed:0.345098039 green:0.2 blue:0.0 alpha:1.0];
  v140[7] = v108;
  v107 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v140[8] = v107;
  v106 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v140[9] = v106;
  v105 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v140[10] = v105;
  v104 = [MEMORY[0x1E69DC888] colorWithRed:0.149019608 green:? blue:? alpha:?];
  v140[11] = v104;
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:12];
  v142[1] = v103;
  v102 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:? blue:? alpha:?];
  v139[0] = v102;
  v101 = [MEMORY[0x1E69DC888] colorWithRed:0.00392156863 green:0.184313725 blue:0.482352941 alpha:1.0];
  v139[1] = v101;
  v100 = [MEMORY[0x1E69DC888] colorWithRed:0.101960784 green:0.0392156863 blue:? alpha:?];
  v139[2] = v100;
  v99 = [MEMORY[0x1E69DC888] colorWithRed:0.270588235 green:0.0509803922 blue:0.349019608 alpha:1.0];
  v139[3] = v99;
  v98 = [MEMORY[0x1E69DC888] colorWithRed:0.333333333 green:0.062745098 blue:0.160784314 alpha:1.0];
  v139[4] = v98;
  v97 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v139[5] = v97;
  v96 = [MEMORY[0x1E69DC888] colorWithRed:0.482352941 green:0.160784314 blue:0.0 alpha:1.0];
  v139[6] = v96;
  v95 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v139[7] = v95;
  v94 = [MEMORY[0x1E69DC888] colorWithRed:0.470588235 green:0.345098039 blue:0.0 alpha:1.0];
  v139[8] = v94;
  v93 = [MEMORY[0x1E69DC888] colorWithRed:0.552941176 green:? blue:? alpha:?];
  v139[9] = v93;
  v92 = [MEMORY[0x1E69DC888] colorWithRed:0.435294118 green:? blue:? alpha:?];
  v139[10] = v92;
  v91 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v139[11] = v91;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:12];
  v142[2] = v90;
  v89 = [MEMORY[0x1E69DC888] colorWithRed:0.00392156863 green:0.431372549 blue:? alpha:?];
  v138[0] = v89;
  v88 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.258823529 blue:0.662745098 alpha:1.0];
  v138[1] = v88;
  v87 = [MEMORY[0x1E69DC888] colorWithRed:0.17254902 green:0.0352941176 blue:? alpha:?];
  v138[2] = v87;
  v86 = [MEMORY[0x1E69DC888] colorWithRed:0.380392157 green:0.0941176471 blue:0.48627451 alpha:1.0];
  v138[3] = v86;
  v85 = [MEMORY[0x1E69DC888] colorWithRed:0.474509804 green:0.101960784 blue:0.239215686 alpha:1.0];
  v138[4] = v85;
  v84 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v138[5] = v84;
  v83 = [MEMORY[0x1E69DC888] colorWithRed:0.678431373 green:0.243137255 blue:0.0 alpha:1.0];
  v138[6] = v83;
  v82 = [MEMORY[0x1E69DC888] colorWithRed:0.662745098 green:0.407843137 blue:0.0 alpha:1.0];
  v138[7] = v82;
  v81 = [MEMORY[0x1E69DC888] colorWithRed:0.650980392 green:0.482352941 blue:0.00392156863 alpha:1.0];
  v138[8] = v81;
  v80 = [MEMORY[0x1E69DC888] colorWithRed:0.768627451 green:0.737254902 blue:0.0 alpha:1.0];
  v138[9] = v80;
  v79 = [MEMORY[0x1E69DC888] colorWithRed:0.607843137 green:? blue:? alpha:?];
  v138[10] = v79;
  v78 = [MEMORY[0x1E69DC888] colorWithRed:0.305882353 green:0.478431373 blue:0.152941176 alpha:1.0];
  v138[11] = v78;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:12];
  v142[3] = v77;
  v76 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:? blue:? alpha:?];
  v137[0] = v76;
  v75 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.337254902 blue:0.839215686 alpha:1.0];
  v137[1] = v75;
  v74 = [MEMORY[0x1E69DC888] colorWithRed:0.215686275 green:0.101960784 blue:? alpha:?];
  v137[2] = v74;
  v73 = [MEMORY[0x1E69DC888] colorWithRed:0.478431373 green:0.129411765 blue:? alpha:?];
  v137[3] = v73;
  v72 = [MEMORY[0x1E69DC888] colorWithRed:0.6 green:0.141176471 blue:0.309803922 alpha:1.0];
  v137[4] = v72;
  v71 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v137[5] = v71;
  v70 = [MEMORY[0x1E69DC888] colorWithRed:0.854901961 green:0.317647059 blue:0.0 alpha:1.0];
  v137[6] = v70;
  v69 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v137[7] = v69;
  v68 = [MEMORY[0x1E69DC888] colorWithRed:0.819607843 green:0.615686275 blue:0.00392156863 alpha:1.0];
  v137[8] = v68;
  v67 = [MEMORY[0x1E69DC888] colorWithRed:0.960784314 green:0.925490196 blue:0.0 alpha:1.0];
  v137[9] = v67;
  v66 = [MEMORY[0x1E69DC888] colorWithRed:0.764705882 green:0.819607843 blue:0.0901960784 alpha:1.0];
  v137[10] = v66;
  v64 = [MEMORY[0x1E69DC888] colorWithRed:0.4 green:0.615686275 blue:0.203921569 alpha:1.0];
  v137[11] = v64;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:12];
  v142[4] = v63;
  v62 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.631372549 blue:? alpha:?];
  v136[0] = v62;
  v61 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.380392157 blue:0.996078431 alpha:1.0];
  v136[1] = v61;
  v60 = [MEMORY[0x1E69DC888] colorWithRed:0.301960784 green:0.133333333 blue:0.698039216 alpha:1.0];
  v136[2] = v60;
  v59 = [MEMORY[0x1E69DC888] colorWithRed:0.596078431 green:0.164705882 blue:0.737254902 alpha:1.0];
  v136[3] = v59;
  v58 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v136[4] = v58;
  v57 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.250980392 blue:0.0823529412 alpha:1.0];
  v136[5] = v57;
  v56 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.415686275 blue:0.0 alpha:1.0];
  v136[6] = v56;
  v55 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:? blue:? alpha:?];
  v136[7] = v55;
  v53 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v136[8] = v53;
  v52 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:? blue:? alpha:?];
  v136[9] = v52;
  v51 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v136[10] = v51;
  v49 = [MEMORY[0x1E69DC888] colorWithRed:0.462745098 green:0.733333333 blue:0.250980392 alpha:1.0];
  v136[11] = v49;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:12];
  v142[5] = v47;
  v45 = [MEMORY[0x1E69DC888] colorWithRed:0.00392156863 green:0.780392157 blue:0.988235294 alpha:1.0];
  v135[0] = v45;
  v43 = [MEMORY[0x1E69DC888] colorWithRed:0.22745098 green:0.529411765 blue:0.996078431 alpha:1.0];
  v135[1] = v43;
  v65 = [MEMORY[0x1E69DC888] colorWithRed:0.368627451 green:0.188235294 blue:0.921568627 alpha:1.0];
  v135[2] = v65;
  v42 = [MEMORY[0x1E69DC888] colorWithRed:0.745098039 green:0.219607843 blue:0.952941176 alpha:1.0];
  v135[3] = v42;
  v54 = [MEMORY[0x1E69DC888] colorWithRed:0.901960784 green:0.231372549 blue:0.478431373 alpha:1.0];
  v135[4] = v54;
  v40 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.384313725 blue:0.31372549 alpha:1.0];
  v135[5] = v40;
  v39 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.525490196 blue:0.282352941 alpha:1.0];
  v135[6] = v39;
  v38 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.705882353 blue:0.247058824 alpha:1.0];
  v135[7] = v38;
  v129 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:? blue:? alpha:?];
  v135[8] = v129;
  v37 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:? blue:? alpha:?];
  v135[9] = v37;
  v46 = [MEMORY[0x1E69DC888] colorWithRed:0.894117647 green:? blue:? alpha:?];
  v135[10] = v46;
  v35 = [MEMORY[0x1E69DC888] colorWithRed:0.588235294 green:0.82745098 blue:0.37254902 alpha:1.0];
  v135[11] = v35;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:12];
  v142[6] = v33;
  v48 = [MEMORY[0x1E69DC888] colorWithRed:0.321568627 green:0.839215686 blue:0.988235294 alpha:1.0];
  v134[0] = v48;
  v31 = [MEMORY[0x1E69DC888] colorWithRed:0.454901961 green:0.654901961 blue:1.0 alpha:1.0];
  v134[1] = v31;
  v130 = [MEMORY[0x1E69DC888] colorWithRed:0.525490196 green:0.309803922 blue:0.996078431 alpha:1.0];
  v134[2] = v130;
  v131 = [MEMORY[0x1E69DC888] colorWithRed:0.82745098 green:0.341176471 blue:0.996078431 alpha:1.0];
  v134[3] = v131;
  v36 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  v134[4] = v36;
  v28 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.549019608 blue:0.509803922 alpha:1.0];
  v134[5] = v28;
  v34 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.647058824 blue:0.490196078 alpha:1.0];
  v134[6] = v34;
  v26 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.780392157 blue:0.466666667 alpha:1.0];
  v134[7] = v26;
  v41 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.850980392 blue:0.466666667 alpha:1.0];
  v134[8] = v41;
  v32 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.976470588 blue:0.580392157 alpha:1.0];
  v134[9] = v32;
  v44 = [MEMORY[0x1E69DC888] colorWithRed:0.917647059 green:0.949019608 blue:0.560784314 alpha:1.0];
  v134[10] = v44;
  v24 = [MEMORY[0x1E69DC888] colorWithRed:0.694117647 green:? blue:? alpha:?];
  v134[11] = v24;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:12];
  v142[7] = v23;
  v22 = [MEMORY[0x1E69DC888] colorWithRed:0.576470588 green:0.890196078 blue:0.992156863 alpha:1.0];
  v133[0] = v22;
  v19 = [MEMORY[0x1E69DC888] colorWithRed:0.654901961 green:0.776470588 blue:1.0 alpha:1.0];
  v133[1] = v19;
  v30 = [MEMORY[0x1E69DC888] colorWithRed:0.694117647 green:0.549019608 blue:0.996078431 alpha:1.0];
  v133[2] = v30;
  v18 = [MEMORY[0x1E69DC888] colorWithRed:0.88627451 green:0.57254902 blue:0.996078431 alpha:1.0];
  v133[3] = v18;
  v17 = [MEMORY[0x1E69DC888] colorWithRed:0.956862745 green:0.643137255 blue:0.752941176 alpha:1.0];
  v133[4] = v17;
  v16 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.709803922 blue:0.68627451 alpha:1.0];
  v133[5] = v16;
  v25 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.77254902 blue:0.670588235 alpha:1.0];
  v133[6] = v25;
  v14 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.850980392 blue:0.658823529 alpha:1.0];
  v133[7] = v14;
  v13 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.894117647 blue:0.658823529 alpha:1.0];
  v133[8] = v13;
  v29 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.984313725 blue:0.725490196 alpha:1.0];
  v133[9] = v29;
  v27 = [MEMORY[0x1E69DC888] colorWithRed:0.949019608 green:0.968627451 blue:0.717647059 alpha:1.0];
  v133[10] = v27;
  v50 = [MEMORY[0x1E69DC888] colorWithRed:0.803921569 green:0.909803922 blue:0.709803922 alpha:1.0];
  v133[11] = v50;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:12];
  v142[8] = v12;
  v20 = [MEMORY[0x1E69DC888] colorWithRed:0.796078431 green:0.941176471 blue:1.0 alpha:1.0];
  v132[0] = v20;
  v11 = [MEMORY[0x1E69DC888] colorWithRed:0.82745098 green:0.88627451 blue:1.0 alpha:1.0];
  v132[1] = v11;
  v15 = [MEMORY[0x1E69DC888] colorWithRed:0.850980392 green:0.788235294 blue:0.996078431 alpha:1.0];
  v132[2] = v15;
  v21 = [MEMORY[0x1E69DC888] colorWithRed:0.937254902 green:0.792156863 blue:1.0 alpha:1.0];
  v132[3] = v21;
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.976470588 green:0.82745098 blue:0.878431373 alpha:1.0];
  v132[4] = v0;
  v1 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.858823529 blue:0.847058824 alpha:1.0];
  v132[5] = v1;
  v2 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.88627451 blue:0.839215686 alpha:1.0];
  v132[6] = v2;
  v3 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.925490196 blue:0.831372549 alpha:1.0];
  v132[7] = v3;
  v4 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.949019608 blue:0.835294118 alpha:1.0];
  v132[8] = v4;
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.988235294 blue:0.866666667 alpha:1.0];
  v132[9] = v5;
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.968627451 green:0.980392157 blue:0.858823529 alpha:1.0];
  v132[10] = v6;
  v7 = [MEMORY[0x1E69DC888] colorWithRed:0.874509804 green:0.933333333 blue:0.831372549 alpha:1.0];
  v132[11] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:12];
  v142[9] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:10];
  v10 = _MergedGlobals_1;
  _MergedGlobals_1 = v9;
}

- (_PKColorPickerImplementationDelegate)colorPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_colorPickerDelegate);

  return WeakRetained;
}

@end