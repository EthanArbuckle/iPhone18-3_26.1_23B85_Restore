@interface NTKRenegadeColorPalette
+ (id)paletteForColor:(unint64_t)a3 flipped:(BOOL)a4;
+ (id)swatchImageForColor:(unint64_t)a3 size:(CGSize)a4;
- (id)_initWithColor:(unint64_t)a3 flipped:(BOOL)a4 tritium:(BOOL)a5;
@end

@implementation NTKRenegadeColorPalette

- (id)_initWithColor:(unint64_t)a3 flipped:(BOOL)a4 tritium:(BOOL)a5
{
  v6 = a4;
  v36.receiver = self;
  v36.super_class = NTKRenegadeColorPalette;
  v8 = [(NTKRenegadeColorPalette *)&v36 init];
  v9 = v8;
  if (v8)
  {
    v8->_color = a3;
    v8->_flipped = v6;
    v8->_tritium = a5;
    v35 = [UIColor colorWithWhite:0.2 alpha:1.0];
    v34 = [UIColor colorWithWhite:0.3 alpha:1.0];
    v10 = [objc_opt_class() _greenColor];
    v11 = [objc_opt_class() _redColor];
    v12 = [objc_opt_class() _goldColor];
    v13 = [objc_opt_class() _blackColor];
    v14 = v13;
    v15 = v14;
    v33 = v12;
    v16 = v14;
    if (a3 == 2)
    {
      if (!a5)
      {
        v16 = v12;
      }
    }

    else if (a3 != 1)
    {
      if (a3)
      {
        v20 = 0;
        v23 = 0;
        v16 = v14;
        goto LABEL_23;
      }

      v17 = v34;
      if (v6)
      {
        v18 = v35;
      }

      else
      {
        v18 = v34;
      }

      if (v6)
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

      objc_storeStrong(&v9->_topOverlapColor, v13);
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

    if (v6)
    {
      v22 = v11;
    }

    else
    {
      v22 = v10;
    }

    if (v6)
    {
      v19 = v10;
    }

    else
    {
      v19 = v11;
    }

    v17 = v22;
    v21 = v19;
    v20 = v17;
    goto LABEL_21;
  }

  return v9;
}

+ (id)paletteForColor:(unint64_t)a3 flipped:(BOOL)a4
{
  v4 = [[a1 alloc] _initWithColor:a3 flipped:a4 tritium:0];

  return v4;
}

+ (id)swatchImageForColor:(unint64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if (a4.width == CGSizeZero.width && a4.height == CGSizeZero.height)
  {
    [NTKEditOption sizeForSwatchStyle:0];
    width = v9;
    height = v10;
  }

  switch(a3)
  {
    case 2uLL:
      v11 = [a1 _redColor];
      v12 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v11 height:width / 3.7 * 0.85];
      v26[0] = v12;
      v13 = [a1 _swatchBlackColor];
      v14 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v13 height:width / 3.7];
      v26[1] = v14;
      v16 = [a1 _greenColor];
      v17 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v16 height:width / 3.7];
      v26[2] = v17;
      v18 = [a1 _goldColor];
      v19 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v18 height:width / 3.7 * 0.85];
      v26[3] = v19;
      v15 = [NSArray arrayWithObjects:v26 count:4];

      goto LABEL_13;
    case 1uLL:
      v11 = [a1 _redColor];
      v12 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v11 height:width / 2.52 * 0.76];
      v27[0] = v12;
      v13 = [a1 _swatchBlackColor];
      v14 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v13 height:width / 2.52];
      v27[1] = v14;
      v16 = [a1 _greenColor];
      v17 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v16 height:width / 2.52 * 0.76];
      v27[2] = v17;
      v15 = [NSArray arrayWithObjects:v27 count:3];
LABEL_13:

      goto LABEL_14;
    case 0uLL:
      v11 = [a1 _lightGrayColor];
      v12 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v11 height:width * 0.5];
      v28[0] = v12;
      v13 = [a1 _darkGrayColor];
      v14 = [_NTKRenegadeSwatchStripeDefinition definitionWithColor:v13 height:width * 0.5];
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