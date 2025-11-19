@interface NTKZeusAnalogBackgroundView
- (NTKZeusAnalogBackgroundView)initWithDevice:(id)a3;
- (id)_splitLayerForBleed:(unint64_t)a3;
- (void)applyPalette:(id)a3;
- (void)applyRotation:(double)a3;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)layoutSubviews;
@end

@implementation NTKZeusAnalogBackgroundView

- (NTKZeusAnalogBackgroundView)initWithDevice:(id)a3
{
  v5 = a3;
  [v5 screenBounds];
  v15.receiver = self;
  v15.super_class = NTKZeusAnalogBackgroundView;
  v6 = [(NTKZeusAnalogBackgroundView *)&v15 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = objc_opt_new();
    splits = v7->_splits;
    v7->_splits = v8;

    v10 = +[CALayer layer];
    straightSplit = v7->_straightSplit;
    v7->_straightSplit = v10;

    v12 = [(NTKZeusAnalogBackgroundView *)v7 layer];
    [v12 addSublayer:v7->_straightSplit];

    v13 = [(NTKZeusAnalogBackgroundView *)v7 layer];
    [v13 setMasksToBounds:1];
  }

  return v7;
}

- (void)layoutSubviews
{
  [(NTKZeusAnalogBackgroundView *)self bounds];
  v4 = v3 * 0.5;
  [(NTKZeusAnalogBackgroundView *)self bounds];
  v6 = v5 * 0.5;
  v7 = sqrt(v6 * v6 + v4 * v4);
  [(CALayer *)self->_straightSplit setBounds:0.0, 0.0, v7, v7 + v7];
  [(CALayer *)self->_straightSplit setAnchorPoint:1.0, 0.5];
  straightSplit = self->_straightSplit;

  [(CALayer *)straightSplit setPosition:v4, v6];
}

- (id)_splitLayerForBleed:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    splits = self->_splits;
    v6 = [NSNumber numberWithUnsignedInteger:?];
    v7 = [(NSMutableDictionary *)splits objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = self->_splits;
      v9 = [NSNumber numberWithUnsignedInteger:a3];
      v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
    }

    else
    {
      v9 = +[CALayer layer];
      [(NTKZeusAnalogBackgroundView *)self bounds];
      v12 = v11;
      [(NTKZeusAnalogBackgroundView *)self bounds];
      if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v14 = v13 * 0.5;
        v15 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
        [(CLKDevice *)self->_device screenBounds];
        v17 = v16 + v16;
        [(CLKDevice *)self->_device screenBounds];
        v19 = v18 + v18;
        [(CLKDevice *)self->_device screenScale];
        v21 = v20;
        v22 = +[UIColor whiteColor];
        v23 = NTKZeusAnalogColorPaletteCreateGradientImage(a3, v22, v15, v17, v19, v21);

        [v9 setContents:{objc_msgSend(v23, "CGImage")}];
        y = CGPointZero.y;
        [v23 size];
        [v9 setBounds:{CGPointZero.x, y, v25, v26}];
        [v9 setAnchorPoint:{0.5, 0.5}];
        [v9 setPosition:{v12 * 0.5, v14}];
        CGAffineTransformMakeRotation(&v37, self->_rotation);
        v36 = v37;
        [v9 setAffineTransform:&v36];
        v27 = self->_splits;
        v28 = [NSNumber numberWithUnsignedInteger:a3];
        [(NSMutableDictionary *)v27 setObject:v9 forKeyedSubscript:v28];

        v29 = [(NTKZeusAnalogBackgroundView *)self layer];
        [v29 addSublayer:v9];
      }

      else
      {
        straightSplit = self->_straightSplit;
        v31 = self->_splits;
        v32 = [NSNumber numberWithUnsignedInteger:a3];
        [(NSMutableDictionary *)v31 setObject:straightSplit forKeyedSubscript:v32];
      }

      v33 = self->_splits;
      v34 = [NSNumber numberWithUnsignedInteger:a3];
      v10 = [(NSMutableDictionary *)v33 objectForKeyedSubscript:v34];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)applyPalette:(id)a3
{
  v4 = a3;
  v5 = -[NTKZeusAnalogBackgroundView _splitLayerForBleed:](self, "_splitLayerForBleed:", [v4 bleed]);
  objc_storeStrong(&self->_activeSplit, v5);
  [CATransaction setDisableActions:1];
  [(NSMutableDictionary *)self->_splits enumerateKeysAndObjectsUsingBlock:&stru_44F70];
  LODWORD(v6) = 1.0;
  [v5 setOpacity:v6];
  v7 = [v4 isGradientStyle];
  v8 = [v4 splitBackground];
  v9 = [v8 CGColor];
  if (v7)
  {
    [v5 setContentsMultiplyColor:v9];
  }

  else
  {
    [v5 setBackgroundColor:v9];
  }

  v10 = [(NTKZeusAnalogBackgroundView *)self layer];
  v11 = [v4 background];
  [v10 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];

  CGAffineTransformMakeRotation(&v13, self->_rotation);
  v12 = v13;
  [v5 setAffineTransform:&v12];
  [CATransaction setDisableActions:0];
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 splitBackground];
  v11 = [v9 splitBackground];
  v12 = NTKInterpolateBetweenColors();

  v13 = [v8 background];
  v14 = [v9 background];
  v15 = NTKInterpolateBetweenColors();

  v16 = -[NTKZeusAnalogBackgroundView _splitLayerForBleed:](self, "_splitLayerForBleed:", [v8 bleed]);
  v17 = -[NTKZeusAnalogBackgroundView _splitLayerForBleed:](self, "_splitLayerForBleed:", [v9 bleed]);
  [CATransaction setDisableActions:1];
  if (v16 == v17)
  {
    LODWORD(v18) = 1.0;
    v20 = v16;
  }

  else
  {
    v19 = 1.0 - a3;
    *&v19 = 1.0 - a3;
    [v16 setOpacity:v19];
    *&v18 = a3;
    v20 = v17;
  }

  [v20 setOpacity:v18];
  splits = self->_splits;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_FCD0;
  v31[3] = &unk_44F98;
  v22 = v17;
  v32 = v22;
  v23 = v16;
  v33 = v23;
  [(NSMutableDictionary *)splits enumerateKeysAndObjectsUsingBlock:v31];
  LODWORD(splits) = [v8 isGradientStyle];
  v24 = [v12 CGColor];
  if (splits)
  {
    [v23 setContentsMultiplyColor:v24];
  }

  else
  {
    [v23 setBackgroundColor:v24];
  }

  v25 = [v9 isGradientStyle];
  v26 = [v12 CGColor];
  if (v25)
  {
    [v22 setContentsMultiplyColor:v26];
  }

  else
  {
    [v22 setBackgroundColor:v26];
  }

  v27 = [(NTKZeusAnalogBackgroundView *)self layer];
  [v27 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];

  if ([v9 isCompositePalette])
  {
    CGAffineTransformMakeRotation(&v30, self->_rotation);
    v29 = v30;
    [v22 setAffineTransform:&v29];
  }

  if ([v8 isCompositePalette])
  {
    CGAffineTransformMakeRotation(&v28, self->_rotation);
    v29 = v28;
    [v23 setAffineTransform:&v29];
  }

  [CATransaction setDisableActions:0];
}

- (void)applyRotation:(double)a3
{
  self->_rotation = a3;
  [CATransaction setDisableActions:1];
  splits = self->_splits;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_FDEC;
  v6[3] = &unk_44FB8;
  *&v6[4] = a3;
  [(NSMutableDictionary *)splits enumerateKeysAndObjectsUsingBlock:v6];
  [CATransaction setDisableActions:0];
}

@end