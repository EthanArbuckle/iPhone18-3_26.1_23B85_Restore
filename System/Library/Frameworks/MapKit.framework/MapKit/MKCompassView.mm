@interface MKCompassView
+ (id)_parameterForSize:(int64_t)a3;
+ (id)_parameterForStyle:(int64_t)a3;
+ (id)_systemFontOfSize:(double)a3 withAttributes:(id)a4 orWeight:(double)a5;
- (BOOL)isPointInNorthEastHalf:(CGPoint)a3;
- (CGSize)intrinsicContentSize;
- (MKCompassView)initWithCoder:(id)a3;
- (MKCompassView)initWithFrame:(CGRect)a3;
- (double)mapHeading;
- (id)_compassDirectionImageForKey:(id)a3 sizeParams:(id)a4 styleParams:(id)a5 scale:(double)a6;
- (id)stringForCompassPoint:(int)a3;
- (void)_adaptCompassStyleToUserInterfaceStyle;
- (void)_commonInit;
- (void)_populateCompassPointLocalizedAbbreviationsArray;
- (void)_setupImageView:(id)a3;
- (void)_updateImageForCompassDirection:(int)a3;
- (void)_updateLayerForCurrentSizeAndStyle;
- (void)_updateStyle;
- (void)dealloc;
- (void)layoutSubviews;
- (void)movedToWindow:(id)a3;
- (void)setCompassViewSize:(int64_t)a3 style:(int64_t)a4;
- (void)setMapHeading:(double)a3;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateLocale:(id)a3;
@end

@implementation MKCompassView

- (void)_populateCompassPointLocalizedAbbreviationsArray
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = MKLocalizedAbbreviationForCompassPointNEWS(1);
  v9[0] = v3;
  v4 = MKLocalizedAbbreviationForCompassPointNEWS(2);
  v9[1] = v4;
  v5 = MKLocalizedAbbreviationForCompassPointNEWS(3);
  v9[2] = v5;
  v6 = MKLocalizedAbbreviationForCompassPointNEWS(4);
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  compassPointLocalizedAbbreviations = self->_compassPointLocalizedAbbreviations;
  self->_compassPointLocalizedAbbreviations = v7;
}

- (void)_commonInit
{
  v15[1] = *MEMORY[0x1E69E9840];
  LODWORD(v2) = 1144750080;
  [(MKCompassView *)self setContentCompressionResistancePriority:0 forAxis:v2];
  LODWORD(v4) = 1144750080;
  [(MKCompassView *)self setContentCompressionResistancePriority:1 forAxis:v4];
  LODWORD(v5) = 1144750080;
  [(MKCompassView *)self setContentHuggingPriority:0 forAxis:v5];
  LODWORD(v6) = 1144750080;
  [(MKCompassView *)self setContentHuggingPriority:1 forAxis:v6];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  containerImageView = self->_containerImageView;
  self->_containerImageView = v7;

  [(MKCompassView *)self addSubview:self->_containerImageView];
  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  assetImageView = self->_assetImageView;
  self->_assetImageView = v9;

  [(UIImageView *)self->_containerImageView addSubview:self->_assetImageView];
  [(MKCompassView *)self _populateCompassPointLocalizedAbbreviationsArray];
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = MNLocaleDidChangeNotification();
  [v11 addObserver:self selector:sel_updateLocale_ name:v12 object:0];

  v15[0] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14 = [(MKCompassView *)self registerForTraitChanges:v13 withAction:sel_traitEnvironment_didChangeTraitCollection_];
}

- (void)_updateLayerForCurrentSizeAndStyle
{
  v24 = [objc_opt_class() _parameterForSize:{-[MKCompassView compassViewSize](self, "compassViewSize")}];
  v3 = [objc_opt_class() _parameterForStyle:{-[MKCompassView compassViewStyle](self, "compassViewStyle")}];
  v4 = +[MKSystemController sharedInstance];
  v5 = [v4 isGlassEnabled];

  if (v5)
  {
    [(MKCompassView *)self _mapkit_setGlassBackground];
  }

  else
  {
    v6 = [v3 backgroundColor];
    [(MKCompassView *)self setBackgroundColor:v6];
  }

  [v24 diameter];
  v8 = v7 * 0.5;
  v9 = [(MKCompassView *)self layer];
  [v9 setCornerRadius:v8];

  v10 = +[MKSystemController sharedInstance];
  v11 = [v10 isGlassEnabled];

  if ((v11 & 1) == 0)
  {
    v12 = [(MKCompassView *)self layer];
    [v12 setShadowRadius:8.0];

    v13 = [(MKCompassView *)self layer];
    [v13 setShadowOffset:{0.0, 2.0}];

    v14 = [v3 shadowColor];
    v15 = [v14 CGColor];
    v16 = [(MKCompassView *)self layer];
    [v16 setShadowColor:v15];

    v17 = [(MKCompassView *)self layer];
    LODWORD(v18) = 1034147594;
    [v17 setShadowOpacity:v18];

    v19 = MEMORY[0x1E69DC728];
    [(MKCompassView *)self bounds];
    v20 = [v19 bezierPathWithOvalInRect:?];
    v21 = [v20 CGPath];
    v22 = [(MKCompassView *)self layer];
    [v22 setShadowPath:v21];
  }

  [(MKCompassView *)self mapHeading];
  [(MKCompassView *)self _updateImageForCompassDirection:MKCompassPointNEWSForHeading(v23)];
}

- (double)mapHeading
{
  v2 = [(UIImageView *)self->_assetImageView layer];
  v3 = [v2 valueForKeyPath:@"transform.rotation.z"];
  [v3 doubleValue];
  v5 = v4;

  return v5 * -57.2957795;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKCompassView;
  [(MKCompassView *)&v3 layoutSubviews];
  [(MKCompassView *)self _setupImageView:self->_containerImageView];
  [(MKCompassView *)self _setupImageView:self->_assetImageView];
}

- (void)_updateStyle
{
  [(MKCompassView *)self _adaptCompassStyleToUserInterfaceStyle];

  [(MKCompassView *)self _updateLayerForCurrentSizeAndStyle];
}

- (void)_adaptCompassStyleToUserInterfaceStyle
{
  v3 = [(MKCompassView *)self traitCollection];
  self->_compassViewStyle = [v3 userInterfaceStyle] != 2;
}

- (id)stringForCompassPoint:(int)a3
{
  if (a3)
  {
    v3 = (a3 - 1);
  }

  else
  {
    v3 = 1;
  }

  return [(NSArray *)self->_compassPointLocalizedAbbreviations objectAtIndexedSubscript:v3];
}

- (BOOL)isPointInNorthEastHalf:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(MKCompassView *)self center];
  v7 = v6;
  [(MKCompassView *)self center];
  v9 = y - v8;
  v10 = 0.0;
  if (vabdd_f64(y, v8) >= 0.000001)
  {
    v10 = atan((x - v7) / -v9);
  }

  if (v9 > 0.0)
  {
    v10 = v10 + 3.14159265;
  }

  return v10 < 2.35619449 && v10 >= -0.785398163;
}

- (CGSize)intrinsicContentSize
{
  v2 = [objc_opt_class() _parameterForSize:{-[MKCompassView compassViewSize](self, "compassViewSize")}];
  [v2 diameter];
  v4 = v3;

  v5 = v4;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setMapHeading:(double)a3
{
  v5 = MKCompassPointNEWSForHeading(a3);
  if (v5 != self->_lastDrawnCompassDirection)
  {
    v6 = v5;
    [(MKCompassView *)self _updateImageForCompassDirection:v5];
    self->_lastDrawnCompassDirection = v6;
  }

  memset(&v12, 0, sizeof(v12));
  CATransform3DMakeRotation(&v12, a3 * -0.0174532925, 0.0, 0.0, 1.0);
  v7 = +[MKThreadContext currentContext];
  [v7 _CA_setDisableActions:1];

  v11 = v12;
  v8 = [(UIImageView *)self->_assetImageView layer];
  v10 = v11;
  [v8 setTransform:&v10];

  v9 = +[MKThreadContext currentContext];
  [v9 _CA_setDisableActions:0];
}

- (id)_compassDirectionImageForKey:(id)a3 sizeParams:(id)a4 styleParams:(id)a5 scale:(double)a6
{
  v37[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (_compassDirectionImageForKey_sizeParams_styleParams_scale__onceToken != -1)
  {
    dispatch_once(&_compassDirectionImageForKey_sizeParams_styleParams_scale__onceToken, &__block_literal_global_34357);
  }

  v13 = [_compassDirectionImageForKey_sizeParams_styleParams_scale__compassDirectionImagesDictionary objectForKey:v10];
  if (!v13)
  {
    [v10 size];
    UIGraphicsBeginImageContextWithOptions(v39, 0, a6);
    v14 = [v12 textColor];
    v15 = +[MKSystemController sharedInstance];
    v16 = [v15 isGlassEnabled];

    if (v16)
    {
      v17 = [(MKCompassView *)self traitCollection];
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __75__MKCompassView__compassDirectionImageForKey_sizeParams_styleParams_scale___block_invoke_2;
      v34 = &unk_1E76CA8E0;
      v35 = v10;
      v18 = [v17 traitCollectionByModifyingTraits:&v31];

      v19 = [MEMORY[0x1E69DC888] labelColor];
      v20 = [v19 resolvedColorWithTraitCollection:v18];

      v14 = v20;
    }

    v36[0] = *MEMORY[0x1E69DB648];
    v21 = [v11 font];
    v36[1] = *MEMORY[0x1E69DB650];
    v37[0] = v21;
    v37[1] = v14;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v23 = objc_alloc(MEMORY[0x1E696AAB0]);
    v24 = [v10 headingString];
    v25 = [v23 initWithString:v24 attributes:v22];

    [v10 size];
    [v10 size];
    v26 = [v10 headingString];
    [v26 sizeWithAttributes:v22];

    UIRoundToViewScale();
    v28 = v27;
    UIRoundToViewScale();
    [v25 drawAtPoint:{v28, v29}];
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [_compassDirectionImageForKey_sizeParams_styleParams_scale__compassDirectionImagesDictionary setObject:v13 forKey:v10];
  }

  return v13;
}

void __75__MKCompassView__compassDirectionImageForKey_sizeParams_styleParams_scale___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) compassViewStyle];
  v4 = v3;
  if (v3 != 1)
  {
    if (v3)
    {
      goto LABEL_5;
    }

    v4 = 2;
  }

  [v5 setUserInterfaceStyle:v4];
LABEL_5:
}

void __75__MKCompassView__compassDirectionImageForKey_sizeParams_styleParams_scale___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _compassDirectionImageForKey_sizeParams_styleParams_scale__compassDirectionImagesDictionary;
  _compassDirectionImageForKey_sizeParams_styleParams_scale__compassDirectionImagesDictionary = v0;
}

- (void)_updateImageForCompassDirection:(int)a3
{
  v3 = *&a3;
  v23 = [objc_opt_class() _parameterForSize:{-[MKCompassView compassViewSize](self, "compassViewSize")}];
  v5 = [objc_opt_class() _parameterForStyle:{-[MKCompassView compassViewStyle](self, "compassViewStyle")}];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v23 imageNamePart];
  v9 = [v5 imageNamePart];
  v10 = [v7 stringWithFormat:@"Compass%@%@", v8, v9];

  v11 = [v6 _mapkit_imageNamed:v10];
  [(UIImageView *)self->_assetImageView setImage:v11];

  v12 = [(UIImageView *)self->_assetImageView image];

  if (v12)
  {
    v13 = [_MKCompassDirectionImageKey alloc];
    v14 = [(UIImageView *)self->_assetImageView image];
    [v14 size];
    v16 = v15;
    v18 = v17;
    v19 = [(MKCompassView *)self stringForCompassPoint:v3];
    v20 = [(_MKCompassDirectionImageKey *)v13 initWithSize:v19 headingString:[(MKCompassView *)self compassViewStyle] compassViewStyle:v16, v18];

    v21 = [(MKCompassView *)self traitCollection];
    [v21 displayScale];
    v22 = [(MKCompassView *)self _compassDirectionImageForKey:v20 sizeParams:v23 styleParams:v5 scale:?];
    [(UIImageView *)self->_containerImageView setImage:v22];

    [(MKCompassView *)self invalidateIntrinsicContentSize];
  }

  else
  {
    [(MKCompassView *)self setHidden:1];
  }
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(MKCompassView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = [v5 userInterfaceStyle];

  if (v7 != v8)
  {

    [(MKCompassView *)self _updateStyle];
  }
}

- (void)setCompassViewSize:(int64_t)a3 style:(int64_t)a4
{
  if (self->_compassViewSize != a3 || self->_compassViewStyle != a4)
  {
    self->_compassViewSize = a3;
    self->_compassViewStyle = a4;
    [(MKCompassView *)self _updateLayerForCurrentSizeAndStyle];

    [(MKCompassView *)self layoutIfNeeded];
  }
}

- (void)_setupImageView:(id)a3
{
  v13 = a3;
  [(MKCompassView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v13 setBounds:?];
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  [v13 setCenter:{MidX, CGRectGetMidY(v16)}];
}

- (void)updateLocale:(id)a3
{
  [(MKCompassView *)self _populateCompassPointLocalizedAbbreviationsArray];

  [(MKCompassView *)self _updateLayerForCurrentSizeAndStyle];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKCompassView;
  [(MKCompassView *)&v4 dealloc];
}

- (void)movedToWindow:(id)a3
{
  if (a3)
  {
    [(MKCompassView *)self _updateStyle];
  }
}

- (MKCompassView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKCompassView;
  v3 = [(MKCompassView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MKCompassView *)v3 _commonInit];
  }

  return v4;
}

- (MKCompassView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MKCompassView;
  v3 = [(MKCompassView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKCompassView *)v3 _commonInit];
  }

  return v4;
}

+ (id)_parameterForStyle:(int64_t)a3
{
  if (_parameterForStyle__onceToken != -1)
  {
    dispatch_once(&_parameterForStyle__onceToken, &__block_literal_global_40_34410);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = &_parameterForStyle__darkParameters;
    goto LABEL_7;
  }

  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a3 != 1)
  {
    goto LABEL_8;
  }

  v4 = &_parameterForStyle__lightParameters;
LABEL_7:
  a1 = *v4;
LABEL_8:

  return a1;
}

void __36__MKCompassView__parameterForStyle___block_invoke()
{
  v0 = objc_alloc_init(_MKCompassViewStyleParameter);
  v1 = _parameterForStyle__lightParameters;
  _parameterForStyle__lightParameters = v0;

  [_parameterForStyle__lightParameters setImageNamePart:@"Light"];
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.639999986];
  [_parameterForStyle__lightParameters setTextColor:v2];

  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [_parameterForStyle__lightParameters setBackgroundColor:v3];

  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0500000007];
  [_parameterForStyle__lightParameters setBorderColor:v4];

  v5 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [_parameterForStyle__lightParameters setShadowColor:v5];

  v6 = objc_alloc_init(_MKCompassViewStyleParameter);
  v7 = _parameterForStyle__darkParameters;
  _parameterForStyle__darkParameters = v6;

  [_parameterForStyle__darkParameters setImageNamePart:@"Dark"];
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.639999986];
  [_parameterForStyle__darkParameters setTextColor:v8];

  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
  [_parameterForStyle__darkParameters setBackgroundColor:v9];

  v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0500000007];
  [_parameterForStyle__darkParameters setBorderColor:v10];

  v11 = [MEMORY[0x1E69DC888] systemBlackColor];
  [_parameterForStyle__darkParameters setShadowColor:v11];
}

+ (id)_parameterForSize:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MKCompassView__parameterForSize___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_parameterForSize__onceToken != -1)
  {
    dispatch_once(&_parameterForSize__onceToken, block);
  }

  if (a3 <= 2)
  {
    a1 = *off_1E76CA900[a3];
  }

  return a1;
}

void __35__MKCompassView__parameterForSize___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = +[MKSystemController sharedInstance];
  v3 = [v2 isGlassEnabled];

  v4 = *MEMORY[0x1E69DB970];
  if (v3)
  {
    v21 = *MEMORY[0x1E69DB8F0];
    v19[0] = *MEMORY[0x1E69DB990];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v19[1] = *MEMORY[0x1E69DB940];
    v20[0] = v5;
    v20[1] = *MEMORY[0x1E69DB938];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v22[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v8 = 18.0;
  }

  else
  {
    v7 = 0;
    v8 = 16.0;
  }

  v9 = objc_alloc_init(_MKCompassViewSizeParameter);
  v10 = _parameterForSize__smallParameters;
  _parameterForSize__smallParameters = v9;

  [_parameterForSize__smallParameters setImageNamePart:@"Small"];
  [_parameterForSize__smallParameters setDiameter:36.0];
  v11 = [*(a1 + 32) _systemFontOfSize:v7 withAttributes:13.0 orWeight:v4];
  [_parameterForSize__smallParameters setFont:v11];

  v12 = objc_alloc_init(_MKCompassViewSizeParameter);
  v13 = _parameterForSize__mediumParameters;
  _parameterForSize__mediumParameters = v12;

  [_parameterForSize__mediumParameters setImageNamePart:@"Medium"];
  v14 = 44.0;
  if (_useMapsAppSpecificNonStandardControlSizeResolution)
  {
    v14 = 48.0;
  }

  [_parameterForSize__mediumParameters setDiameter:v14];
  v15 = [*(a1 + 32) _systemFontOfSize:v7 withAttributes:v8 orWeight:v4];
  [_parameterForSize__mediumParameters setFont:v15];

  v16 = objc_alloc_init(_MKCompassViewSizeParameter);
  v17 = _parameterForSize__largeParameters;
  _parameterForSize__largeParameters = v16;

  [_parameterForSize__largeParameters setImageNamePart:@"Large"];
  [_parameterForSize__largeParameters setDiameter:60.0];
  v18 = [*(a1 + 32) _systemFontOfSize:v7 withAttributes:20.0 orWeight:*MEMORY[0x1E69DB980]];
  [_parameterForSize__largeParameters setFont:v18];
}

+ (id)_systemFontOfSize:(double)a3 withAttributes:(id)a4 orWeight:(double)a5
{
  if (a4)
  {
    v6 = [MEMORY[0x1E69DB880] fontDescriptorWithFontAttributes:{a3, a5}];
    v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:a3];
  }

  else
  {
    v7 = [MEMORY[0x1E69DB878] systemFontOfSize:a3 weight:a5];
  }

  return v7;
}

@end