@interface NTKVictoryDigitalTimeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKVictoryDigitalTimeViewDelegate)delegate;
- (id)initForDevice:(id)a3;
- (int64_t)_lowerDigitAppearanceForStyle:(unint64_t)a3;
- (int64_t)_upperDigitAppearanceForStyle:(unint64_t)a3;
- (void)_resetDigitAppearanceForStyle:(unint64_t)a3;
- (void)_setFlipViewIsLower:(BOOL)a3;
- (void)_setupFlipDigitsView;
- (void)applyPopAnimationTransitionFraction:(double)a3;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)clearEditingTransitions;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setColorPalette:(id)a3;
- (void)setInvertedColors:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
- (void)timeFormatterTextDidChange:(id)a3;
@end

@implementation NTKVictoryDigitalTimeView

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = NTKVictoryDigitalTimeView;
  v6 = [(NTKVictoryDigitalTimeView *)&v22 init];
  p_isa = &v6->super.super.super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [[NTKVictoryDigitsView alloc] initForDevice:v5];
    v9 = p_isa[2];
    p_isa[2] = v8;

    v10 = [[NTKVictoryDigitsView alloc] initForDevice:v5];
    v11 = p_isa[3];
    p_isa[3] = v10;

    [p_isa addSubview:p_isa[2]];
    [p_isa addSubview:p_isa[3]];
    v12 = +[NSNull null];
    v23[0] = @"anchorPoint";
    v23[1] = @"transform";
    v24[0] = v12;
    v24[1] = v12;
    v23[2] = @"position";
    v23[3] = @"bounds";
    v24[2] = v12;
    v24[3] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
    v14 = [p_isa[2] layer];
    [v14 setActions:v13];

    v15 = [p_isa[3] layer];
    [v15 setActions:v13];

    v16 = [p_isa[2] layer];
    [v16 setAnchorPoint:{0.5, 1.0}];

    v17 = [p_isa[3] layer];
    [v17 setAnchorPoint:{0.5, 0.0}];

    v18 = +[UIColor blackColor];
    [p_isa setBackgroundColor:v18];

    [p_isa setOpaque:1];
    [p_isa[2] setAppearance:{objc_msgSend(p_isa, "defaultAppearance")}];
    [p_isa[3] setAppearance:{objc_msgSend(p_isa, "defaultAppearance")}];
    v19 = [[CLKTimeFormatter alloc] initWithForcesLatinNumbers:1];
    v20 = p_isa[6];
    p_isa[6] = v19;

    [p_isa[6] addObserver:p_isa];
  }

  return p_isa;
}

- (void)dealloc
{
  [(CLKTimeFormatter *)self->_timeFormatter removeObserver:self];
  v3.receiver = self;
  v3.super_class = NTKVictoryDigitalTimeView;
  [(NTKVictoryDigitalTimeView *)&v3 dealloc];
}

- (void)clearEditingTransitions
{
  [(NTKVictoryDigitalTimeView *)self setStyle:self->_style];
  colorPalette = self->_colorPalette;

  [(NTKVictoryDigitalTimeView *)self setColorPalette:colorPalette];
}

- (void)_setupFlipDigitsView
{
  v3 = *&CATransform3DIdentity.m23;
  v25 = *&CATransform3DIdentity.m21;
  v26 = v3;
  v27 = *&CATransform3DIdentity.m31;
  m33 = CATransform3DIdentity.m33;
  v4 = *&CATransform3DIdentity.m13;
  v23 = *&CATransform3DIdentity.m11;
  v24 = v4;
  v5 = *&CATransform3DIdentity.m43;
  v30 = *&CATransform3DIdentity.m41;
  v31 = v5;
  v6 = [(NTKVictoryDigitalTimeView *)self layer:v23];
  v29 = 0xBF6B4E81B4E81B4FLL;
  [v6 setSublayerTransform:&v23];

  if (!self->_flipDigitsView)
  {
    v7 = [[NTKVictoryDigitsView alloc] initForDevice:self->_device];
    flipDigitsView = self->_flipDigitsView;
    self->_flipDigitsView = v7;

    v9 = [(NTKVictoryDigitsView *)self->_upperDigitsView layer];
    v10 = [v9 actions];
    v11 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
    [v11 setActions:v10];

    v12 = [(NTKVictoryDigitsView *)self->_upperDigitsView layer];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
    [v21 setBounds:{v14, v16, v18, v20}];

    [(NTKVictoryDigitsView *)self->_flipDigitsView setAppearance:[(NTKVictoryDigitsView *)self->_upperDigitsView appearance]];
    [(NTKVictoryDigitsView *)self->_flipDigitsView setHidden:1];
    [(NTKVictoryDigitsView *)self->_flipDigitsView setClipsToBounds:1];
    [(NTKVictoryDigitalTimeView *)self _setFlipViewIsLower:0];
    [(NTKVictoryDigitalTimeView *)self addSubview:self->_flipDigitsView];
  }

  v22 = [(NTKVictoryDigitsView *)self->_upperDigitsView color];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setColor:v22];

  [(NTKVictoryDigitsView *)self->_flipDigitsView prepareAppearance:1];
  [(NTKVictoryDigitsView *)self->_flipDigitsView prepareAppearance:3];
}

- (void)setInvertedColors:(BOOL)a3
{
  invertedColors = self->_invertedColors;
  self->_invertedColors = a3;
  if (invertedColors != a3)
  {
    [(NTKVictoryDigitalTimeView *)self setColorPalette:self->_colorPalette];
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(NTKVictoryDigitalTimeView *)self _resetDigitAppearanceForStyle:?];
  }
}

- (void)_resetDigitAppearanceForStyle:(unint64_t)a3
{
  [(NTKVictoryDigitsView *)self->_upperDigitsView setAppearance:[(NTKVictoryDigitalTimeView *)self _upperDigitAppearanceForStyle:?]];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setAppearance:[(NTKVictoryDigitalTimeView *)self _lowerDigitAppearanceForStyle:a3]];
  flipDigitsView = self->_flipDigitsView;

  [(NTKVictoryDigitsView *)flipDigitsView setHidden:1];
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  if (a4 == a5)
  {

    [(NTKVictoryDigitalTimeView *)self _resetDigitAppearanceForStyle:a3];
  }

  else
  {
    [(NTKVictoryDigitsView *)self->_flipDigitsView setHidden:0];
    flipViewIsLower = self->_flipViewIsLower;
    if (flipViewIsLower != a3 < 0.5)
    {
      [(NTKVictoryDigitalTimeView *)self _setFlipViewIsLower:!flipViewIsLower];
      if (a3 >= 0.5)
      {
        v10 = [(NTKVictoryDigitalTimeView *)self _upperDigitAppearanceForStyle:a5];
      }

      else
      {
        v10 = [(NTKVictoryDigitalTimeView *)self _lowerDigitAppearanceForStyle:a4];
      }

      [(NTKVictoryDigitsView *)self->_flipDigitsView setAppearance:v10];
    }

    v11 = (1.0 - a3) * -2.0;
    if (a3 < 0.5)
    {
      v11 = 1.0 - (0.5 - a3 + 0.5 - a3);
    }

    v12 = v11;
    v13 = a3;
    v14 = fabs(v13 + -0.5);
    [(NTKVictoryDigitsView *)self->_flipDigitsView setDimmingFactor:a3 >= 0.5 isUpper:1.0 - (v14 + v14)];
    CATransform3DMakeRotation(&v17, v12 * 1.57079633, 1.0, 0.0, 0.0);
    v15 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
    v16 = v17;
    [v15 setTransform:&v16];

    [(NTKVictoryDigitsView *)self->_upperDigitsView setAppearance:[(NTKVictoryDigitalTimeView *)self _upperDigitAppearanceForStyle:a4]];
    [(NTKVictoryDigitsView *)self->_lowerDigitsView setAppearance:[(NTKVictoryDigitalTimeView *)self _lowerDigitAppearanceForStyle:a5]];
  }
}

- (void)_setFlipViewIsLower:(BOOL)a3
{
  self->_flipViewIsLower = a3;
  v4 = &OBJC_IVAR___NTKVictoryDigitalTimeView__upperDigitsView;
  if (a3)
  {
    v4 = &OBJC_IVAR___NTKVictoryDigitalTimeView__lowerDigitsView;
  }

  v5 = *(&self->super.super.super.isa + *v4);
  v6 = [v5 layer];
  [v6 anchorPoint];
  v8 = v7;
  v10 = v9;
  v11 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
  [v11 setAnchorPoint:{v8, v10}];

  v12 = [v5 layer];
  [v12 position];
  v14 = v13;
  v16 = v15;
  v17 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
  [v17 setPosition:{v14, v16}];

  v18 = [v5 digitText];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setDigitText:v18];
}

- (int64_t)_upperDigitAppearanceForStyle:(unint64_t)a3
{
  if (a3 - 2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_EBF0[a3 - 2];
  }
}

- (int64_t)_lowerDigitAppearanceForStyle:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_EC10[a3 - 1];
  }
}

- (void)setColorPalette:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_colorPalette, a3);
  v5 = [v9 digits];
  if (self->_invertedColors)
  {
    v6 = [v9 background];

    v5 = v6;
  }

  v7 = [v9 digitsOutlineBackground];
  [(NTKVictoryDigitsView *)self->_upperDigitsView setOutlineBackgroundColor:v7];
  [(NTKVictoryDigitsView *)self->_upperDigitsView setColor:v5];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setOutlineBackgroundColor:v7];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setColor:v5];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setColor:v5];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setOutlineBackgroundColor:v7];
  v8 = [v9 background];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setBackgroundColor:v8];

  [(NTKVictoryDigitsView *)self->_upperDigitsView setScale:1.0];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setScale:1.0];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = +[UIColor clearColor];
  [(NTKVictoryDigitsView *)self->_upperDigitsView setBackgroundColor:v4];

  v5 = +[UIColor clearColor];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setBackgroundColor:v5];

  v6 = +[UIColor clearColor];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setBackgroundColor:v6];
}

- (void)applyPopAnimationTransitionFraction:(double)a3
{
  v5 = NTKVictoryTransitionTimingFunction();
  v12 = v5;
  v6 = a3;
  *&v7 = fabsf((v6 + -0.4) / 0.4);
  if (*&v7 > 1.0)
  {
    *&v7 = 1.0;
  }

  [v5 _solveForInput:v7];
  v8 = *&v9;
  *&v9 = fabsf((v6 + -0.5333) / 0.4);
  if (*&v9 > 1.0)
  {
    *&v9 = 1.0;
  }

  [v12 _solveForInput:v9];
  v11 = v10;
  [(NTKVictoryDigitsView *)self->_upperDigitsView setScale:v8 * 0.075 + 0.925];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setScale:v11 * 0.075 + 0.925];
}

- (void)layoutSubviews
{
  [(NTKVictoryDigitalTimeView *)self bounds];
  v4 = v3;
  v5 = [(NTKVictoryDigitsView *)self->_upperDigitsView sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v7 = v6;
  v8 = sub_812C(v5, self->_device);
  v10 = v9;
  v12 = -v11;
  [(NTKVictoryDigitsView *)self->_upperDigitsView ntk_setBoundsAndPositionFromFrame:-v11, v8, v4, v7];
  lowerDigitsView = self->_lowerDigitsView;

  [(NTKVictoryDigitsView *)lowerDigitsView ntk_setBoundsAndPositionFromFrame:v12, v10, v4, v7];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  sub_812C(self, self->_device);
  v5 = v4;
  [(NTKVictoryDigitsView *)self->_upperDigitsView sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)timeFormatterTextDidChange:(id)a3
{
  v9 = [(CLKTimeFormatter *)self->_timeFormatter timeText];
  v4 = [(CLKTimeFormatter *)self->_timeFormatter separatorRangeInTimeText];
  v6 = [v9 substringFromIndex:&v4[v5]];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setDigitText:v6];

  v7 = [v9 substringToIndex:v4];
  [(NTKVictoryDigitsView *)self->_upperDigitsView setDigitText:v7];

  v8 = [(NTKVictoryDigitalTimeView *)self delegate];
  [v8 victoryDigitalTimeViewDidChangeTime:self];
}

- (NTKVictoryDigitalTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end