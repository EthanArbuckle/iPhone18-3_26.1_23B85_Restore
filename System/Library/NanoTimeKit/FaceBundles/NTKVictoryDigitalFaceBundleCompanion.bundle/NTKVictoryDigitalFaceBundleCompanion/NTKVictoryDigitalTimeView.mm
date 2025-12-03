@interface NTKVictoryDigitalTimeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKVictoryDigitalTimeViewDelegate)delegate;
- (id)initForDevice:(id)device;
- (int64_t)_lowerDigitAppearanceForStyle:(unint64_t)style;
- (int64_t)_upperDigitAppearanceForStyle:(unint64_t)style;
- (void)_resetDigitAppearanceForStyle:(unint64_t)style;
- (void)_setFlipViewIsLower:(BOOL)lower;
- (void)_setupFlipDigitsView;
- (void)applyPopAnimationTransitionFraction:(double)fraction;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)clearEditingTransitions;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColorPalette:(id)palette;
- (void)setInvertedColors:(BOOL)colors;
- (void)setStyle:(unint64_t)style;
- (void)timeFormatterTextDidChange:(id)change;
@end

@implementation NTKVictoryDigitalTimeView

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKVictoryDigitalTimeView;
  v6 = [(NTKVictoryDigitalTimeView *)&v22 init];
  p_isa = &v6->super.super.super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = [[NTKVictoryDigitsView alloc] initForDevice:deviceCopy];
    v9 = p_isa[2];
    p_isa[2] = v8;

    v10 = [[NTKVictoryDigitsView alloc] initForDevice:deviceCopy];
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
    layer = [p_isa[2] layer];
    [layer setActions:v13];

    layer2 = [p_isa[3] layer];
    [layer2 setActions:v13];

    layer3 = [p_isa[2] layer];
    [layer3 setAnchorPoint:{0.5, 1.0}];

    layer4 = [p_isa[3] layer];
    [layer4 setAnchorPoint:{0.5, 0.0}];

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

    layer = [(NTKVictoryDigitsView *)self->_upperDigitsView layer];
    actions = [layer actions];
    layer2 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
    [layer2 setActions:actions];

    layer3 = [(NTKVictoryDigitsView *)self->_upperDigitsView layer];
    [layer3 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    layer4 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
    [layer4 setBounds:{v14, v16, v18, v20}];

    [(NTKVictoryDigitsView *)self->_flipDigitsView setAppearance:[(NTKVictoryDigitsView *)self->_upperDigitsView appearance]];
    [(NTKVictoryDigitsView *)self->_flipDigitsView setHidden:1];
    [(NTKVictoryDigitsView *)self->_flipDigitsView setClipsToBounds:1];
    [(NTKVictoryDigitalTimeView *)self _setFlipViewIsLower:0];
    [(NTKVictoryDigitalTimeView *)self addSubview:self->_flipDigitsView];
  }

  color = [(NTKVictoryDigitsView *)self->_upperDigitsView color];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setColor:color];

  [(NTKVictoryDigitsView *)self->_flipDigitsView prepareAppearance:1];
  [(NTKVictoryDigitsView *)self->_flipDigitsView prepareAppearance:3];
}

- (void)setInvertedColors:(BOOL)colors
{
  invertedColors = self->_invertedColors;
  self->_invertedColors = colors;
  if (invertedColors != colors)
  {
    [(NTKVictoryDigitalTimeView *)self setColorPalette:self->_colorPalette];
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(NTKVictoryDigitalTimeView *)self _resetDigitAppearanceForStyle:?];
  }
}

- (void)_resetDigitAppearanceForStyle:(unint64_t)style
{
  [(NTKVictoryDigitsView *)self->_upperDigitsView setAppearance:[(NTKVictoryDigitalTimeView *)self _upperDigitAppearanceForStyle:?]];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setAppearance:[(NTKVictoryDigitalTimeView *)self _lowerDigitAppearanceForStyle:style]];
  flipDigitsView = self->_flipDigitsView;

  [(NTKVictoryDigitsView *)flipDigitsView setHidden:1];
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  if (style == toStyle)
  {

    [(NTKVictoryDigitalTimeView *)self _resetDigitAppearanceForStyle:fraction];
  }

  else
  {
    [(NTKVictoryDigitsView *)self->_flipDigitsView setHidden:0];
    flipViewIsLower = self->_flipViewIsLower;
    if (flipViewIsLower != fraction < 0.5)
    {
      [(NTKVictoryDigitalTimeView *)self _setFlipViewIsLower:!flipViewIsLower];
      if (fraction >= 0.5)
      {
        v10 = [(NTKVictoryDigitalTimeView *)self _upperDigitAppearanceForStyle:toStyle];
      }

      else
      {
        v10 = [(NTKVictoryDigitalTimeView *)self _lowerDigitAppearanceForStyle:style];
      }

      [(NTKVictoryDigitsView *)self->_flipDigitsView setAppearance:v10];
    }

    v11 = (1.0 - fraction) * -2.0;
    if (fraction < 0.5)
    {
      v11 = 1.0 - (0.5 - fraction + 0.5 - fraction);
    }

    v12 = v11;
    fractionCopy = fraction;
    v14 = fabs(fractionCopy + -0.5);
    [(NTKVictoryDigitsView *)self->_flipDigitsView setDimmingFactor:fraction >= 0.5 isUpper:1.0 - (v14 + v14)];
    CATransform3DMakeRotation(&v17, v12 * 1.57079633, 1.0, 0.0, 0.0);
    layer = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
    v16 = v17;
    [layer setTransform:&v16];

    [(NTKVictoryDigitsView *)self->_upperDigitsView setAppearance:[(NTKVictoryDigitalTimeView *)self _upperDigitAppearanceForStyle:style]];
    [(NTKVictoryDigitsView *)self->_lowerDigitsView setAppearance:[(NTKVictoryDigitalTimeView *)self _lowerDigitAppearanceForStyle:toStyle]];
  }
}

- (void)_setFlipViewIsLower:(BOOL)lower
{
  self->_flipViewIsLower = lower;
  v4 = &OBJC_IVAR___NTKVictoryDigitalTimeView__upperDigitsView;
  if (lower)
  {
    v4 = &OBJC_IVAR___NTKVictoryDigitalTimeView__lowerDigitsView;
  }

  v5 = *(&self->super.super.super.isa + *v4);
  layer = [v5 layer];
  [layer anchorPoint];
  v8 = v7;
  v10 = v9;
  layer2 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
  [layer2 setAnchorPoint:{v8, v10}];

  layer3 = [v5 layer];
  [layer3 position];
  v14 = v13;
  v16 = v15;
  layer4 = [(NTKVictoryDigitsView *)self->_flipDigitsView layer];
  [layer4 setPosition:{v14, v16}];

  digitText = [v5 digitText];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setDigitText:digitText];
}

- (int64_t)_upperDigitAppearanceForStyle:(unint64_t)style
{
  if (style - 2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_EBF0[style - 2];
  }
}

- (int64_t)_lowerDigitAppearanceForStyle:(unint64_t)style
{
  if (style - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_EC10[style - 1];
  }
}

- (void)setColorPalette:(id)palette
{
  paletteCopy = palette;
  objc_storeStrong(&self->_colorPalette, palette);
  digits = [paletteCopy digits];
  if (self->_invertedColors)
  {
    background = [paletteCopy background];

    digits = background;
  }

  digitsOutlineBackground = [paletteCopy digitsOutlineBackground];
  [(NTKVictoryDigitsView *)self->_upperDigitsView setOutlineBackgroundColor:digitsOutlineBackground];
  [(NTKVictoryDigitsView *)self->_upperDigitsView setColor:digits];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setOutlineBackgroundColor:digitsOutlineBackground];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setColor:digits];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setColor:digits];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setOutlineBackgroundColor:digitsOutlineBackground];
  background2 = [paletteCopy background];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setBackgroundColor:background2];

  [(NTKVictoryDigitsView *)self->_upperDigitsView setScale:1.0];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setScale:1.0];
}

- (void)setBackgroundColor:(id)color
{
  v4 = +[UIColor clearColor];
  [(NTKVictoryDigitsView *)self->_upperDigitsView setBackgroundColor:v4];

  v5 = +[UIColor clearColor];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setBackgroundColor:v5];

  v6 = +[UIColor clearColor];
  [(NTKVictoryDigitsView *)self->_flipDigitsView setBackgroundColor:v6];
}

- (void)applyPopAnimationTransitionFraction:(double)fraction
{
  v5 = NTKVictoryTransitionTimingFunction();
  v12 = v5;
  fractionCopy = fraction;
  *&v7 = fabsf((fractionCopy + -0.4) / 0.4);
  if (*&v7 > 1.0)
  {
    *&v7 = 1.0;
  }

  [v5 _solveForInput:v7];
  v8 = *&v9;
  *&v9 = fabsf((fractionCopy + -0.5333) / 0.4);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  sub_812C(self, self->_device);
  v5 = v4;
  [(NTKVictoryDigitsView *)self->_upperDigitsView sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)timeFormatterTextDidChange:(id)change
{
  timeText = [(CLKTimeFormatter *)self->_timeFormatter timeText];
  separatorRangeInTimeText = [(CLKTimeFormatter *)self->_timeFormatter separatorRangeInTimeText];
  v6 = [timeText substringFromIndex:&separatorRangeInTimeText[v5]];
  [(NTKVictoryDigitsView *)self->_lowerDigitsView setDigitText:v6];

  v7 = [timeText substringToIndex:separatorRangeInTimeText];
  [(NTKVictoryDigitsView *)self->_upperDigitsView setDigitText:v7];

  delegate = [(NTKVictoryDigitalTimeView *)self delegate];
  [delegate victoryDigitalTimeViewDidChangeTime:self];
}

- (NTKVictoryDigitalTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end