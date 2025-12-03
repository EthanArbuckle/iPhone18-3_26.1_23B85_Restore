@interface NTKRenegadeColorPalette
+ (id)paletteForColor:(unint64_t)color flipped:(BOOL)flipped;
+ (id)swatchImageForColor:(unint64_t)color size:(CGSize)size;
- (id)_initWithColor:(unint64_t)color flipped:(BOOL)flipped tritium:(BOOL)tritium;
@end

@implementation NTKRenegadeColorPalette

- (id)_initWithColor:(unint64_t)color flipped:(BOOL)flipped tritium:(BOOL)tritium
{
  flippedCopy = flipped;
  v36.receiver = self;
  v36.super_class = NTKRenegadeColorPalette;
  v8 = [(NTKRenegadeColorPalette *)&v36 init];
  v9 = v8;
  if (v8)
  {
    v8->_color = color;
    v8->_flipped = flippedCopy;
    v8->_tritium = tritium;
    v35 = [UIColor colorWithWhite:0.2 alpha:1.0];
    v34 = [UIColor colorWithWhite:0.3 alpha:1.0];
    _greenColor = [objc_opt_class() _greenColor];
    _redColor = [objc_opt_class() _redColor];
    _goldColor = [objc_opt_class() _goldColor];
    _blackColor = [objc_opt_class() _blackColor];
    v14 = _blackColor;
    v15 = v14;
    v33 = _goldColor;
    v16 = v14;
    if (color == 2)
    {
      if (!tritium)
      {
        v16 = _goldColor;
      }
    }

    else if (color != 1)
    {
      if (color)
      {
        v20 = 0;
        v23 = 0;
        v16 = v14;
        goto LABEL_23;
      }

      v17 = v34;
      if (flippedCopy)
      {
        v18 = v35;
      }

      else
      {
        v18 = v34;
      }

      if (flippedCopy)
      {
        v19 = v34;
      }

      else
      {
        v19 = v35;
      }

      v20 = v18;
      v21 = v34;
      v16 = v15;
LABEL_21:
      v23 = v19;
      objc_storeStrong(&v9->_bottomComplicationLabelColor, v21);
      objc_storeStrong(&v9->_dateComplicationLabelColor, v17);
LABEL_23:
      objc_storeStrong(&v9->_topPatchColor, v20);
      hourLabelColor = v9->_hourLabelColor;
      v9->_hourLabelColor = v20;
      v25 = v20;

      objc_storeStrong(&v9->_topOverlapColor, _blackColor);
      objc_storeStrong(&v9->_bottomPatchColor, v23);
      minuteLabelColor = v9->_minuteLabelColor;
      v9->_minuteLabelColor = v23;
      v27 = v23;

      bottomOverlapColor = v9->_bottomOverlapColor;
      v9->_bottomOverlapColor = v15;
      v29 = v15;

      highlightColor = v9->_highlightColor;
      v9->_highlightColor = v16;
      v31 = v16;

      return v9;
    }

    if (flippedCopy)
    {
      v22 = _redColor;
    }

    else
    {
      v22 = _greenColor;
    }

    if (flippedCopy)
    {
      v19 = _greenColor;
    }

    else
    {
      v19 = _redColor;
    }

    v17 = v22;
    v21 = v19;
    v20 = v17;
    goto LABEL_21;
  }

  return v9;
}

+ (id)paletteForColor:(unint64_t)color flipped:(BOOL)flipped
{
  v4 = [[self alloc] _initWithColor:color flipped:flipped tritium:0];

  return v4;
}

+ (id)swatchImageForColor:(unint64_t)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width == CGSizeZero.width && size.height == CGSizeZero.height)
  {
    [NTKEditOption sizeForSwatchStyle:0];
    width = v9;
    height = v10;
  }

  switch(color)
  {
    case 2uLL:
      _redColor = [self _redColor];
      v12 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_redColor height:width / 3.7 * 0.85];
      v26[0] = v12;
      _swatchBlackColor = [self _swatchBlackColor];
      v14 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_swatchBlackColor height:width / 3.7];
      v26[1] = v14;
      _greenColor = [self _greenColor];
      v17 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_greenColor height:width / 3.7];
      v26[2] = v17;
      _goldColor = [self _goldColor];
      v19 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_goldColor height:width / 3.7 * 0.85];
      v26[3] = v19;
      v15 = [NSArray arrayWithObjects:v26 count:4];

      goto LABEL_13;
    case 1uLL:
      _redColor = [self _redColor];
      v12 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_redColor height:width / 2.52 * 0.76];
      v27[0] = v12;
      _swatchBlackColor = [self _swatchBlackColor];
      v14 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_swatchBlackColor height:width / 2.52];
      v27[1] = v14;
      _greenColor = [self _greenColor];
      v17 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_greenColor height:width / 2.52 * 0.76];
      v27[2] = v17;
      v15 = [NSArray arrayWithObjects:v27 count:3];
LABEL_13:

      goto LABEL_14;
    case 0uLL:
      _redColor = [self _lightGrayColor];
      v12 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_redColor height:width * 0.5];
      v28[0] = v12;
      _swatchBlackColor = [self _darkGrayColor];
      v14 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:_swatchBlackColor height:width * 0.5];
      v28[1] = v14;
      v15 = [NSArray arrayWithObjects:v28 count:2];
LABEL_14:

      goto LABEL_16;
  }

  v15 = 0;
LABEL_16:
  v20 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1FAC;
  v24[3] = &unk_10558;
  v25 = v15;
  v21 = v15;
  v22 = [v20 imageWithActions:v24];

  return v22;
}

@end