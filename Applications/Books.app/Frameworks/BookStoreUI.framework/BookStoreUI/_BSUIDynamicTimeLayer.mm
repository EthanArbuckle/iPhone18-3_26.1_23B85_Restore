@interface _BSUIDynamicTimeLayer
- (_BSUIDynamicTimeLayer)init;
- (id)newTextLayerAtFrame:(CGRect)frame character:(id)character;
- (void)_generateDigits;
- (void)setColor:(id)color;
- (void)setFont:(id)font useFontFallback:(BOOL)fallback;
- (void)setReadingTime:(int64_t)time animate:(BOOL)animate;
@end

@implementation _BSUIDynamicTimeLayer

- (_BSUIDynamicTimeLayer)init
{
  v6.receiver = self;
  v6.super_class = _BSUIDynamicTimeLayer;
  v2 = [(_BSUIDynamicTimeLayer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_BSUIDynamicTimeLayer *)v2 _generateDigits];
    [(_BSUIDynamicTimeLayer *)v3 setSavedAnimatedReadingTime:-1];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_generateDigits" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v3;
}

- (void)_generateDigits
{
  v10 = [NSMutableArray arrayWithCapacity:10];
  v3 = objc_opt_new();
  v4 = +[NSLocale currentLocale];
  [v3 setLocale:v4];

  for (i = 0; i != 10; ++i)
  {
    v6 = [NSNumber numberWithInteger:i];
    v7 = [v3 stringFromNumber:v6];
    [v10 addObject:v7];
  }

  v8 = [v10 copy];
  digits = self->_digits;
  self->_digits = v8;
}

- (void)setFont:(id)font useFontFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  fontCopy = font;
  fontDescriptor = [fontCopy fontDescriptor];
  v29[0] = &off_39B470;
  v28[0] = UIFontFeatureTypeIdentifierKey;
  v28[1] = UIFontFeatureSelectorIdentifierKey;
  if (fallbackCopy)
  {
    v8 = 6;
  }

  else
  {
    v8 = 2;
  }

  v9 = [NSNumber numberWithInt:v8];
  v29[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v30[0] = v10;
  v26[0] = UIFontFeatureTypeIdentifierKey;
  v26[1] = UIFontFeatureSelectorIdentifierKey;
  v27[0] = &off_39B488;
  v27[1] = &off_39B4A0;
  v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v30[1] = v11;
  v12 = [NSArray arrayWithObjects:v30 count:2];

  v24 = UIFontDescriptorFeatureSettingsAttribute;
  v25 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v14 = [fontDescriptor fontDescriptorByAddingAttributes:v13];

  if (!+[BSUIDefaults disableReadingGoalFontFallbackWorkaround])
  {
    v22 = UIFontDescriptorCascadeListAttribute;
    [fontCopy pointSize];
    v15 = [UIFontDescriptor fontDescriptorWithName:@"GeezaPro" size:?];
    v21 = v15;
    v16 = [NSArray arrayWithObjects:&v21 count:1];
    v23 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v14 fontDescriptorByAddingAttributes:v17];

    v14 = v18;
  }

  [fontCopy pointSize];
  v19 = [UIFont fontWithDescriptor:v14 size:?];
  font = self->_font;
  self->_font = v19;
}

- (id)newTextLayerAtFrame:(CGRect)frame character:(id)character
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  characterCopy = character;
  v10 = objc_opt_new();
  [v10 setAnchorPoint:{0.0, 0.0}];
  [v10 setFrame:{x, y, width, height}];
  font = [(_BSUIDynamicTimeLayer *)self font];
  [v10 setFont:font];

  font2 = [(_BSUIDynamicTimeLayer *)self font];
  [font2 pointSize];
  [v10 setFontSize:?];

  color = [(_BSUIDynamicTimeLayer *)self color];
  [v10 setForegroundColor:{objc_msgSend(color, "CGColor")}];

  [v10 setAlignmentMode:kCAAlignmentCenter];
  [(_BSUIDynamicTimeLayer *)self contentsScale];
  [v10 setContentsScale:?];
  [v10 setString:characterCopy];

  return v10;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  v5 = +[UITraitCollection _currentTraitCollection];
  v6 = [colorCopy resolvedColorWithTraitCollection:v5];
  color = self->_color;
  self->_color = v6;

  outgoingLayers = [(_BSUIDynamicTimeLayer *)self outgoingLayers];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_3FDE4;
  v14[3] = &unk_3885B0;
  v9 = colorCopy;
  v15 = v9;
  [outgoingLayers enumerateObjectsUsingBlock:v14];

  currentLayers = [(_BSUIDynamicTimeLayer *)self currentLayers];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_3FE48;
  v12[3] = &unk_3885B0;
  v13 = v9;
  v11 = v9;
  [currentLayers enumerateObjectsUsingBlock:v12];
}

- (void)setReadingTime:(int64_t)time animate:(BOOL)animate
{
  animateCopy = animate;
  v7 = time & ~(time >> 63);
  if ([(_BSUIDynamicTimeLayer *)self savedAnimatedReadingTime]== v7)
  {
    return;
  }

  v69 = animateCopy;
  [(_BSUIDynamicTimeLayer *)self setSavedAnimatedReadingTime:v7];
  useFontFallback = [(_BSUIDynamicTimeLayer *)self useFontFallback];
  font = [(_BSUIDynamicTimeLayer *)self font];
  [font pointSize];
  v11 = v10 / 72.0;

  v12 = 38.0;
  if (useFontFallback)
  {
    v12 = 44.0;
  }

  v13 = v12 * v11;
  v14 = v11 * 16.0;
  [(_BSUIDynamicTimeLayer *)self bounds];
  v16 = v15;
  v17 = 3;
  v18 = 2;
  if (time <= 599)
  {
    v18 = 3;
  }

  if (time <= 5999)
  {
    v17 = v18;
  }

  if (time <= 59999)
  {
    v19 = v17;
  }

  else
  {
    v19 = 4;
  }

  v20 = v19;
  if (time >= 600)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 + 1;
  }

  v22 = v14 + v13 * v20;
  v23 = v13 * v20;
  if (time >= 600)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  timeSeparator = self->_timeSeparator;
  if (!timeSeparator)
  {
    timeSeparator = @":";
  }

  v26 = timeSeparator;
  currentLayers = [(_BSUIDynamicTimeLayer *)self currentLayers];
  v28 = [NSMutableArray arrayWithCapacity:v19 + 1];
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x2020000000;
  *&v101[3] = (v16 - v24) * 0.5;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v100 = 0;
  v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [currentLayers count]);
  v30 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [currentLayers count]);
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_4088C;
  v90[3] = &unk_3885D8;
  v96 = v101;
  v90[4] = self;
  v71 = v28;
  v91 = v71;
  v31 = currentLayers;
  v92 = v31;
  v70 = v26;
  v93 = v70;
  v97 = v99;
  v98 = v21;
  v32 = v29;
  v94 = v32;
  v33 = v30;
  v95 = v33;
  v34 = objc_retainBlock(v90);
  v35 = v7 / 0x3C;
  if (time < 600)
  {
    0x3C = [(NSArray *)self->_digits objectAtIndexedSubscript:v7 / 0x3C];
    (v34[2])(v34, 0x3C, v13);

    (v34[2])(v34, v70, v14);
    v37 = v7 % 0x3C;
    v38 = v7 % 0x3C / 0xA;
    v39 = [(NSArray *)self->_digits objectAtIndexedSubscript:v7 % 0x3C / 0xA];
    (v34[2])(v34, v39, v13);

    v40 = [(NSArray *)self->_digits objectAtIndexedSubscript:(v37 - 10 * v38)];
    (v34[2])(v34, v40, v13);
    goto LABEL_26;
  }

  if (time >= 60000)
  {
    v41 = [(NSArray *)self->_digits objectAtIndexedSubscript:(v7 / 0xEA60 - 10 * ((v7 / 0xEA60 * 0x199999999999999AuLL) >> 64))];
    (v34[2])(v34, v41, v13);

LABEL_24:
    v42 = [(NSArray *)self->_digits objectAtIndexedSubscript:(v7 / 0x1770 - 10 * ((v7 / 0x1770 * 0x199999999999999AuLL) >> 64))];
    (v34[2])(v34, v42, v13);

    goto LABEL_25;
  }

  if (time >> 4 >= 0x177)
  {
    goto LABEL_24;
  }

LABEL_25:
  v43 = [(NSArray *)self->_digits objectAtIndexedSubscript:(v7 / 0x258 - 10 * ((v7 / 0x258 * 0x199999999999999AuLL) >> 64))];
  (v34[2])(v34, v43, v13);

  v40 = [(NSArray *)self->_digits objectAtIndexedSubscript:(v35 - 10 * ((v35 * 0x199999999999999AuLL) >> 64))];
  (v34[2])(v34, v40, v13);
LABEL_26:

  for (i = [v71 count]; i < objc_msgSend(v31, "count"); ++i)
  {
    v45 = [v31 objectAtIndexedSubscript:i];
    [v32 addObject:v45];
  }

  [CATransaction setDisableActions:1];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  outgoingLayers = [(_BSUIDynamicTimeLayer *)self outgoingLayers];
  v47 = [outgoingLayers countByEnumeratingWithState:&v86 objects:v105 count:16];
  if (v47)
  {
    v48 = *v87;
    do
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v87 != v48)
        {
          objc_enumerationMutation(outgoingLayers);
        }

        [*(*(&v86 + 1) + 8 * j) removeFromSuperlayer];
      }

      v47 = [outgoingLayers countByEnumeratingWithState:&v86 objects:v105 count:16];
    }

    while (v47);
  }

  [CATransaction setDisableActions:0];
  v50 = [v32 copy];
  [(_BSUIDynamicTimeLayer *)self setOutgoingLayers:v50];

  v51 = [v71 copy];
  [(_BSUIDynamicTimeLayer *)self setCurrentLayers:v51];

  [CATransaction setDisableActions:1];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v52 = v33;
  v53 = [v52 countByEnumeratingWithState:&v82 objects:v104 count:16];
  if (v53)
  {
    v54 = *v83;
    do
    {
      for (k = 0; k != v53; k = k + 1)
      {
        if (*v83 != v54)
        {
          objc_enumerationMutation(v52);
        }

        [(_BSUIDynamicTimeLayer *)self addSublayer:*(*(&v82 + 1) + 8 * k)];
      }

      v53 = [v52 countByEnumeratingWithState:&v82 objects:v104 count:16];
    }

    while (v53);
  }

  [CATransaction setDisableActions:0];
  if (v69)
  {
    v56 = [v52 count];
    outgoingLayers2 = [(_BSUIDynamicTimeLayer *)self outgoingLayers];
    if (v56 >= [outgoingLayers2 count])
    {
      v58 = 0.0;
    }

    else
    {
      v58 = 0.12;
    }

    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_40A84;
    v81[3] = &unk_388600;
    *&v81[5] = v58;
    v81[6] = 0x3FB47AE147AE147BLL;
    v81[4] = self;
    [v52 enumerateObjectsUsingBlock:v81];
    outgoingLayers3 = [(_BSUIDynamicTimeLayer *)self outgoingLayers];
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_40CE8;
    v80[3] = &unk_388628;
    v80[4] = self;
    v80[5] = 0x3FB47AE147AE147BLL;
    [outgoingLayers3 enumerateObjectsUsingBlock:v80];
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v60 = v52;
    v61 = [v60 countByEnumeratingWithState:&v76 objects:v103 count:16];
    if (v61)
    {
      v62 = *v77;
      do
      {
        for (m = 0; m != v61; m = m + 1)
        {
          if (*v77 != v62)
          {
            objc_enumerationMutation(v60);
          }

          v64 = *(*(&v76 + 1) + 8 * m);
          [v64 frame];
          [v64 setFrame:?];
        }

        v61 = [v60 countByEnumeratingWithState:&v76 objects:v103 count:16];
      }

      while (v61);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    outgoingLayers4 = [(_BSUIDynamicTimeLayer *)self outgoingLayers];
    v66 = [outgoingLayers4 countByEnumeratingWithState:&v72 objects:v102 count:16];
    if (v66)
    {
      v67 = *v73;
      do
      {
        for (n = 0; n != v66; n = n + 1)
        {
          if (*v73 != v67)
          {
            objc_enumerationMutation(outgoingLayers4);
          }

          [*(*(&v72 + 1) + 8 * n) removeFromSuperlayer];
        }

        v66 = [outgoingLayers4 countByEnumeratingWithState:&v72 objects:v102 count:16];
      }

      while (v66);
    }
  }

  _Block_object_dispose(v99, 8);
  _Block_object_dispose(v101, 8);
}

@end