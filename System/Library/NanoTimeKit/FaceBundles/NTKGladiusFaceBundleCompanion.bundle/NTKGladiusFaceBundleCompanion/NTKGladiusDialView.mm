@interface NTKGladiusDialView
+ (double)minorMinuteAngleAtIndex:(int64_t)index device:(id)device;
- (CGPoint)_hourTickPositionAtIndex:(unint64_t)index forStyle:(unint64_t)style;
- (NTKGladiusDialView)initWithDevice:(id)device style:(unint64_t)style palette:(id)palette;
- (_TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator)lightSpillCoordinator;
- (double)_hourTickLengthAtIndex:(unint64_t)index forStyle:(unint64_t)style;
- (id)_textLayerWithText:(id)text position:(CGPoint)position;
- (id)_tickWithLength:(double)length width:(double)width position:(CGPoint)position angle:(double)angle;
- (void)_applyPalette;
- (void)_createMajorHourLayers;
- (void)_createMinorHourLayers;
- (void)_createMinorMinuteLayers;
- (void)_updateMajorHourTickAtIndex:(unint64_t)index forStyle:(unint64_t)style;
- (void)setLightSpillCoordinator:(id)coordinator;
- (void)setPalette:(id)palette;
- (void)setStyle:(unint64_t)style;
@end

@implementation NTKGladiusDialView

- (NTKGladiusDialView)initWithDevice:(id)device style:(unint64_t)style palette:(id)palette
{
  deviceCopy = device;
  paletteCopy = palette;
  [deviceCopy screenBounds];
  v16.receiver = self;
  v16.super_class = NTKGladiusDialView;
  v11 = [(NTKGladiusDialView *)&v16 initWithFrame:?];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, device);
    v12->_style = style;
    objc_storeStrong(&v12->_palette, palette);
    v13 = +[NSMutableArray array];
    minorHourLayers = v12->_minorHourLayers;
    v12->_minorHourLayers = v13;

    [(NTKGladiusDialView *)v12 _createMinorMinuteLayers];
    [(NTKGladiusDialView *)v12 _createMinorHourLayers];
    [(NTKGladiusDialView *)v12 _createMajorHourLayers];
  }

  return v12;
}

- (void)setStyle:(unint64_t)style
{
  style = self->_style;
  if (style != style)
  {
    self->_style = style;
    [(NTKGladiusDialView *)self _createMinorHourLayers];
    if (!style || !style)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      if ([(NSArray *)self->_majorHourLayers count])
      {
        v6 = 0;
        do
        {
          [(NTKGladiusDialView *)self _updateMajorHourTickAtIndex:v6++ forStyle:style];
        }

        while (v6 < [(NSArray *)self->_majorHourLayers count]);
      }

      +[CATransaction commit];
    }

    [(NTKGladiusDialView *)self _applyPalette];
  }
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);

  [(NTKGladiusDialView *)self _applyPalette];
}

- (void)setLightSpillCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  objc_storeWeak(&self->_lightSpillCoordinator, coordinatorCopy);
  [coordinatorCopy setMajorHourLayers:self->_majorHourLayers];
  [coordinatorCopy setMinorHourLayers:self->_minorHourLayers];
  [coordinatorCopy setMinorMinuteLayers:self->_minorMinuteLayers];
}

- (void)_createMinorMinuteLayers
{
  memset(v13, 0, 512);
  sub_73B8(self->_device, v13);
  v12 = +[NSMutableArray array];
  v3 = 0;
  v4 = 504;
  v5 = *v13;
  do
  {
    if (-858993459 * v3 >= 0x33333334)
    {
      v6 = [(NTKGladiusDialView *)self _tickWithLength:*(&v13[91] + v3 + 1) width:v5 position:*(v13 + v4) angle:*(v13 + v4 + 8), *(&v13[1] + v3 + 1)];
      [v12 addObject:v6];
      layer = [(NTKGladiusDialView *)self layer];
      [layer addSublayer:v6];
    }

    ++v3;
    v4 += 16;
  }

  while (v3 != 60);
  v8 = [v12 copy];
  minorMinuteLayers = self->_minorMinuteLayers;
  self->_minorMinuteLayers = v8;

  v10 = self->_minorMinuteLayers;
  WeakRetained = objc_loadWeakRetained(&self->_lightSpillCoordinator);
  [WeakRetained setMinorMinuteLayers:v10];
}

- (void)_createMinorHourLayers
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_minorHourLayers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * i) removeFromSuperlayer];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_minorHourLayers removeAllObjects];
  if (self->_style)
  {
    memset(v19, 0, 512);
    sub_73B8(self->_device, v19);
    v8 = 0;
    v9 = 504;
    v10 = *(v19 + 1);
    do
    {
      if (self->_style == 1)
      {
        v11 = [(NTKGladiusDialView *)self _tickWithLength:*(&v19[91] + v8 + 1) width:v10 position:*(v19 + v9) angle:*(v19 + v9 + 8), *(&v19[1] + v8 + 1)];
      }

      else
      {
        if (v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = 60;
        }

        v13 = [NSString localizedStringWithFormat:@"%02i", v12];
        v11 = [(NTKGladiusDialView *)self _textLayerWithText:v13 position:*(v19 + v9), *(v19 + v9 + 8)];
      }

      [(NSMutableArray *)self->_minorHourLayers addObject:v11];
      layer = [(NTKGladiusDialView *)self layer];
      [layer addSublayer:v11];

      v8 += 5;
      v9 += 80;
    }

    while (v8 != 60);
    minorHourLayers = self->_minorHourLayers;
    WeakRetained = objc_loadWeakRetained(&self->_lightSpillCoordinator);
    v17 = WeakRetained;
    v18 = minorHourLayers;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_lightSpillCoordinator);
    v17 = WeakRetained;
    v18 = &__NSArray0__struct;
  }

  [WeakRetained setMinorHourLayers:v18];
}

- (void)_createMajorHourLayers
{
  memset(v18, 0, 512);
  sub_73B8(self->_device, v18);
  v17 = +[NSMutableArray array];
  v3 = 0;
  v4 = &v18[1] + 1;
  v5 = *(v18 + 1);
  do
  {
    v6 = *v4;
    v4 += 5;
    [(NTKGladiusDialView *)self _hourTickLengthAtIndex:v3 forStyle:self->_style];
    v8 = v7;
    [(NTKGladiusDialView *)self _hourTickPositionAtIndex:v3 forStyle:self->_style];
    v11 = [(NTKGladiusDialView *)self _tickWithLength:v8 width:v5 position:v9 angle:v10, v6];
    [v17 addObject:v11];
    layer = [(NTKGladiusDialView *)self layer];
    [layer addSublayer:v11];

    ++v3;
  }

  while (v3 != 12);
  v13 = [v17 copy];
  majorHourLayers = self->_majorHourLayers;
  self->_majorHourLayers = v13;

  v15 = self->_majorHourLayers;
  WeakRetained = objc_loadWeakRetained(&self->_lightSpillCoordinator);
  [WeakRetained setMajorHourLayers:v15];
}

- (id)_tickWithLength:(double)length width:(double)width position:(CGPoint)position angle:(double)angle
{
  y = position.y;
  x = position.x;
  v11 = +[CAGradientLayer layer];
  [v11 setStartPoint:{0.0, 0.5}];
  [v11 setEndPoint:{1.0, 0.5}];
  [v11 setFrame:{0.0, 0.0, length, width}];
  [v11 setCornerRadius:width * 0.5];
  [v11 setPosition:{x, y}];
  CGAffineTransformMakeRotation(&v17, angle);
  v16 = v17;
  [v11 setAffineTransform:&v16];
  v18[0] = @"backgroundColor";
  v12 = +[NSNull null];
  v19[0] = v12;
  v18[1] = @"colors";
  v13 = +[NSNull null];
  v19[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v11 setActions:v14];

  return v11;
}

- (id)_textLayerWithText:(id)text position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  device = self->_device;
  textCopy = text;
  sub_73B8(device, v24);
  v9 = [CLKFont compactSoftFontOfSize:v25 weight:UIFontWeightRegular];
  v28 = NSFontAttributeName;
  v29 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [textCopy boundingRectWithSize:3 options:v10 attributes:0 context:{CGSizeZero.width, CGSizeZero.height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = +[CATextLayer layer];
  [v19 setFont:v9];
  [v9 pointSize];
  [v19 setFontSize:?];
  [(CLKDevice *)self->_device screenScale];
  [v19 setContentsScale:?];
  [v19 setBounds:{v12, v14, v16, v18}];
  [v19 setString:textCopy];

  [v19 setPosition:{x, y}];
  v20 = +[UIColor whiteColor];
  [v19 setForegroundColor:{objc_msgSend(v20, "CGColor")}];

  v26 = @"contentsMultiplyColor";
  v21 = +[NSNull null];
  v27 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [v19 setActions:v22];

  return v19;
}

- (void)_updateMajorHourTickAtIndex:(unint64_t)index forStyle:(unint64_t)style
{
  if ([(NSArray *)self->_majorHourLayers count]> index)
  {
    [(NTKGladiusDialView *)self _hourTickLengthAtIndex:index forStyle:style];
    [(NTKGladiusDialView *)self _hourTickPositionAtIndex:index forStyle:style];
    v8 = v7;
    v10 = v9;
    v11 = [(NSArray *)self->_majorHourLayers objectAtIndexedSubscript:index];
    v12 = v11;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    if (v11)
    {
      [v11 affineTransform];
    }

    v13 = *&CGAffineTransformIdentity.c;
    v14 = *&CGAffineTransformIdentity.a;
    v15 = v13;
    v16 = *&CGAffineTransformIdentity.tx;
    [v12 setAffineTransform:&v14];
    [v12 frame];
    [v12 setFrame:?];
    [v12 setPosition:{v8, v10}];
    v14 = v17;
    v15 = v18;
    v16 = v19;
    [v12 setAffineTransform:&v14];
  }
}

- (double)_hourTickLengthAtIndex:(unint64_t)index forStyle:(unint64_t)style
{
  memset(v8, 0, 512);
  sub_73B8(self->_device, v8);
  v6 = 2136;
  if (!style)
  {
    v6 = 2424;
  }

  return *(v8 + 8 * index + v6);
}

- (CGPoint)_hourTickPositionAtIndex:(unint64_t)index forStyle:(unint64_t)style
{
  memset(v10, 0, 512);
  sub_73B8(self->_device, v10);
  v6 = 1944;
  if (!style)
  {
    v6 = 2232;
  }

  v7 = (&v10[index] + v6);
  v8 = *v7;
  v9 = v7[1];
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_applyPalette
{
  minuteTickDay = [(NTKGladiusColorPalette *)self->_palette minuteTickDay];
  minuteTickNight = [(NTKGladiusColorPalette *)self->_palette minuteTickNight];
  colorFraction = self->_colorFraction;
  v6 = NTKInterpolateBetweenColors();

  minuteTickDay2 = [(NTKGladiusColorPalette *)self->_palette minuteTickDay];
  minuteTickStart = [(NTKGladiusColorPalette *)self->_palette minuteTickStart];
  v9 = self->_colorFraction;
  v60 = NTKInterpolateBetweenColors();

  minuteTickDay3 = [(NTKGladiusColorPalette *)self->_palette minuteTickDay];
  minuteTickEnd = [(NTKGladiusColorPalette *)self->_palette minuteTickEnd];
  v12 = self->_colorFraction;
  v13 = NTKInterpolateBetweenColors();

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  selfCopy = self;
  v14 = self->_minorMinuteLayers;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v70;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v70 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v69 + 1) + 8 * i);
        [v19 setBackgroundColor:{objc_msgSend(v6, "CGColor")}];
        v75[0] = [v60 CGColor];
        v75[1] = [v13 CGColor];
        v20 = [NSArray arrayWithObjects:v75 count:2];
        [v19 setColors:v20];
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v16);
  }

  hourTickEndDay = [(NTKGladiusColorPalette *)selfCopy->_palette hourTickEndDay];
  hourTickEndNight = [(NTKGladiusColorPalette *)selfCopy->_palette hourTickEndNight];
  v23 = selfCopy->_colorFraction;
  v58 = NTKInterpolateBetweenColors();

  v24 = +[UIColor clearColor];
  hourTickNight = [(NTKGladiusColorPalette *)selfCopy->_palette hourTickNight];
  v26 = selfCopy->_colorFraction;
  v59 = NTKInterpolateBetweenColors();

  hourTickEndDay2 = [(NTKGladiusColorPalette *)selfCopy->_palette hourTickEndDay];
  hourTickNight2 = [(NTKGladiusColorPalette *)selfCopy->_palette hourTickNight];
  v29 = selfCopy->_colorFraction;
  v30 = NTKInterpolateBetweenColors();

  v31 = selfCopy->_colorFraction;
  CLKInterpolateBetweenFloatsClipped();
  v55 = v30;
  v32 = NTKColorByApplyingWhiteOverlay();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v33 = selfCopy->_minorHourLayers;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v66;
    v37 = &NTKAllSignatureCircularTypes_ptr;
    v57 = *v66;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v66 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v39 = *(*(&v65 + 1) + 8 * j);
        v40 = v37[220];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v32;
          v42 = v39;
          [v42 setContentsMultiplyColor:{objc_msgSend(v32, "CGColor")}];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v43 = v59;
          v44 = v13;
          v45 = v32;
          v46 = v37;
          v47 = v33;
          v48 = v39;
          [v48 setBackgroundColor:{objc_msgSend(v59, "CGColor", v55)}];
          v73[0] = [v58 CGColor];
          v73[1] = [v58 CGColor];
          v42 = [NSArray arrayWithObjects:v73 count:2];
          [v48 setColors:v42];

          v33 = v47;
          v37 = v46;
          v32 = v45;
          v13 = v44;
          v36 = v57;
        }
      }

      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v35);
  }

  v49 = [NSMutableArray arrayWithCapacity:12];
  majorHourLayers = selfCopy->_majorHourLayers;
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_7004;
  v61[3] = &unk_20978;
  v61[4] = selfCopy;
  v62 = v49;
  v63 = v59;
  v64 = v58;
  v51 = v58;
  v52 = v59;
  v53 = v49;
  [(NSArray *)majorHourLayers enumerateObjectsUsingBlock:v61];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_lightSpillCoordinator);
  [WeakRetained handleDialPaletteChangeWithHourStartColors:v53 minuteStartColor:v60 minuteEndColor:v13 hourEndColor:v51 hourTextColor:v32];
}

+ (double)minorMinuteAngleAtIndex:(int64_t)index device:(id)device
{
  if (index >= 0)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = index + 3;
  }

  sub_73B8(device, v7);
  return *&v7[(index + (indexCopy >> 2) + 1) % 0x3CuLL + 3] + 1.57079633;
}

- (_TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator)lightSpillCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_lightSpillCoordinator);

  return WeakRetained;
}

@end