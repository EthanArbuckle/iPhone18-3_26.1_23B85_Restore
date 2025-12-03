@interface MKCompassView
+ (id)_parameterForSize:(int64_t)size;
+ (id)_parameterForStyle:(int64_t)style;
+ (id)_systemFontOfSize:(double)size withAttributes:(id)attributes orWeight:(double)weight;
- (BOOL)isPointInNorthEastHalf:(CGPoint)half;
- (CGSize)intrinsicContentSize;
- (MKCompassView)initWithCoder:(id)coder;
- (MKCompassView)initWithFrame:(CGRect)frame;
- (double)mapHeading;
- (id)_compassDirectionImageForKey:(id)key sizeParams:(id)params styleParams:(id)styleParams scale:(double)scale;
- (id)stringForCompassPoint:(int)point;
- (void)_adaptCompassStyleToUserInterfaceStyle;
- (void)_commonInit;
- (void)_populateCompassPointLocalizedAbbreviationsArray;
- (void)_setupImageView:(id)view;
- (void)_updateImageForCompassDirection:(int)direction;
- (void)_updateLayerForCurrentSizeAndStyle;
- (void)_updateStyle;
- (void)dealloc;
- (void)layoutSubviews;
- (void)movedToWindow:(id)window;
- (void)setCompassViewSize:(int64_t)size style:(int64_t)style;
- (void)setMapHeading:(double)heading;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)updateLocale:(id)locale;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = MNLocaleDidChangeNotification();
  [defaultCenter addObserver:self selector:sel_updateLocale_ name:v12 object:0];

  v15[0] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14 = [(MKCompassView *)self registerForTraitChanges:v13 withAction:sel_traitEnvironment_didChangeTraitCollection_];
}

- (void)_updateLayerForCurrentSizeAndStyle
{
  v24 = [objc_opt_class() _parameterForSize:{-[MKCompassView compassViewSize](self, "compassViewSize")}];
  v3 = [objc_opt_class() _parameterForStyle:{-[MKCompassView compassViewStyle](self, "compassViewStyle")}];
  v4 = +[MKSystemController sharedInstance];
  isGlassEnabled = [v4 isGlassEnabled];

  if (isGlassEnabled)
  {
    [(MKCompassView *)self _mapkit_setGlassBackground];
  }

  else
  {
    backgroundColor = [v3 backgroundColor];
    [(MKCompassView *)self setBackgroundColor:backgroundColor];
  }

  [v24 diameter];
  v8 = v7 * 0.5;
  layer = [(MKCompassView *)self layer];
  [layer setCornerRadius:v8];

  v10 = +[MKSystemController sharedInstance];
  isGlassEnabled2 = [v10 isGlassEnabled];

  if ((isGlassEnabled2 & 1) == 0)
  {
    layer2 = [(MKCompassView *)self layer];
    [layer2 setShadowRadius:8.0];

    layer3 = [(MKCompassView *)self layer];
    [layer3 setShadowOffset:{0.0, 2.0}];

    shadowColor = [v3 shadowColor];
    cGColor = [shadowColor CGColor];
    layer4 = [(MKCompassView *)self layer];
    [layer4 setShadowColor:cGColor];

    layer5 = [(MKCompassView *)self layer];
    LODWORD(v18) = 1034147594;
    [layer5 setShadowOpacity:v18];

    v19 = MEMORY[0x1E69DC728];
    [(MKCompassView *)self bounds];
    v20 = [v19 bezierPathWithOvalInRect:?];
    cGPath = [v20 CGPath];
    layer6 = [(MKCompassView *)self layer];
    [layer6 setShadowPath:cGPath];
  }

  [(MKCompassView *)self mapHeading];
  [(MKCompassView *)self _updateImageForCompassDirection:MKCompassPointNEWSForHeading(v23)];
}

- (double)mapHeading
{
  layer = [(UIImageView *)self->_assetImageView layer];
  v3 = [layer valueForKeyPath:@"transform.rotation.z"];
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
  traitCollection = [(MKCompassView *)self traitCollection];
  self->_compassViewStyle = [traitCollection userInterfaceStyle] != 2;
}

- (id)stringForCompassPoint:(int)point
{
  if (point)
  {
    v3 = (point - 1);
  }

  else
  {
    v3 = 1;
  }

  return [(NSArray *)self->_compassPointLocalizedAbbreviations objectAtIndexedSubscript:v3];
}

- (BOOL)isPointInNorthEastHalf:(CGPoint)half
{
  y = half.y;
  x = half.x;
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

- (void)setMapHeading:(double)heading
{
  v5 = MKCompassPointNEWSForHeading(heading);
  if (v5 != self->_lastDrawnCompassDirection)
  {
    v6 = v5;
    [(MKCompassView *)self _updateImageForCompassDirection:v5];
    self->_lastDrawnCompassDirection = v6;
  }

  memset(&v12, 0, sizeof(v12));
  CATransform3DMakeRotation(&v12, heading * -0.0174532925, 0.0, 0.0, 1.0);
  v7 = +[MKThreadContext currentContext];
  [v7 _CA_setDisableActions:1];

  v11 = v12;
  layer = [(UIImageView *)self->_assetImageView layer];
  v10 = v11;
  [layer setTransform:&v10];

  v9 = +[MKThreadContext currentContext];
  [v9 _CA_setDisableActions:0];
}

- (id)_compassDirectionImageForKey:(id)key sizeParams:(id)params styleParams:(id)styleParams scale:(double)scale
{
  v37[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  paramsCopy = params;
  styleParamsCopy = styleParams;
  if (_compassDirectionImageForKey_sizeParams_styleParams_scale__onceToken != -1)
  {
    dispatch_once(&_compassDirectionImageForKey_sizeParams_styleParams_scale__onceToken, &__block_literal_global_34357);
  }

  v13 = [_compassDirectionImageForKey_sizeParams_styleParams_scale__compassDirectionImagesDictionary objectForKey:keyCopy];
  if (!v13)
  {
    [keyCopy size];
    UIGraphicsBeginImageContextWithOptions(v39, 0, scale);
    textColor = [styleParamsCopy textColor];
    v15 = +[MKSystemController sharedInstance];
    isGlassEnabled = [v15 isGlassEnabled];

    if (isGlassEnabled)
    {
      traitCollection = [(MKCompassView *)self traitCollection];
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __75__MKCompassView__compassDirectionImageForKey_sizeParams_styleParams_scale___block_invoke_2;
      v34 = &unk_1E76CA8E0;
      v35 = keyCopy;
      v18 = [traitCollection traitCollectionByModifyingTraits:&v31];

      labelColor = [MEMORY[0x1E69DC888] labelColor];
      v20 = [labelColor resolvedColorWithTraitCollection:v18];

      textColor = v20;
    }

    v36[0] = *MEMORY[0x1E69DB648];
    font = [paramsCopy font];
    v36[1] = *MEMORY[0x1E69DB650];
    v37[0] = font;
    v37[1] = textColor;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

    v23 = objc_alloc(MEMORY[0x1E696AAB0]);
    headingString = [keyCopy headingString];
    v25 = [v23 initWithString:headingString attributes:v22];

    [keyCopy size];
    [keyCopy size];
    headingString2 = [keyCopy headingString];
    [headingString2 sizeWithAttributes:v22];

    UIRoundToViewScale();
    v28 = v27;
    UIRoundToViewScale();
    [v25 drawAtPoint:{v28, v29}];
    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [_compassDirectionImageForKey_sizeParams_styleParams_scale__compassDirectionImagesDictionary setObject:v13 forKey:keyCopy];
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

- (void)_updateImageForCompassDirection:(int)direction
{
  v3 = *&direction;
  v23 = [objc_opt_class() _parameterForSize:{-[MKCompassView compassViewSize](self, "compassViewSize")}];
  v5 = [objc_opt_class() _parameterForStyle:{-[MKCompassView compassViewStyle](self, "compassViewStyle")}];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = MEMORY[0x1E696AEC0];
  imageNamePart = [v23 imageNamePart];
  imageNamePart2 = [v5 imageNamePart];
  v10 = [v7 stringWithFormat:@"Compass%@%@", imageNamePart, imageNamePart2];

  v11 = [v6 _mapkit_imageNamed:v10];
  [(UIImageView *)self->_assetImageView setImage:v11];

  image = [(UIImageView *)self->_assetImageView image];

  if (image)
  {
    v13 = [_MKCompassDirectionImageKey alloc];
    image2 = [(UIImageView *)self->_assetImageView image];
    [image2 size];
    v16 = v15;
    v18 = v17;
    v19 = [(MKCompassView *)self stringForCompassPoint:v3];
    v20 = [(_MKCompassDirectionImageKey *)v13 initWithSize:v19 headingString:[(MKCompassView *)self compassViewStyle] compassViewStyle:v16, v18];

    traitCollection = [(MKCompassView *)self traitCollection];
    [traitCollection displayScale];
    v22 = [(MKCompassView *)self _compassDirectionImageForKey:v20 sizeParams:v23 styleParams:v5 scale:?];
    [(UIImageView *)self->_containerImageView setImage:v22];

    [(MKCompassView *)self invalidateIntrinsicContentSize];
  }

  else
  {
    [(MKCompassView *)self setHidden:1];
  }
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(MKCompassView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(MKCompassView *)self _updateStyle];
  }
}

- (void)setCompassViewSize:(int64_t)size style:(int64_t)style
{
  if (self->_compassViewSize != size || self->_compassViewStyle != style)
  {
    self->_compassViewSize = size;
    self->_compassViewStyle = style;
    [(MKCompassView *)self _updateLayerForCurrentSizeAndStyle];

    [(MKCompassView *)self layoutIfNeeded];
  }
}

- (void)_setupImageView:(id)view
{
  viewCopy = view;
  [(MKCompassView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [viewCopy setBounds:?];
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  [viewCopy setCenter:{MidX, CGRectGetMidY(v16)}];
}

- (void)updateLocale:(id)locale
{
  [(MKCompassView *)self _populateCompassPointLocalizedAbbreviationsArray];

  [(MKCompassView *)self _updateLayerForCurrentSizeAndStyle];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKCompassView;
  [(MKCompassView *)&v4 dealloc];
}

- (void)movedToWindow:(id)window
{
  if (window)
  {
    [(MKCompassView *)self _updateStyle];
  }
}

- (MKCompassView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MKCompassView;
  v3 = [(MKCompassView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(MKCompassView *)v3 _commonInit];
  }

  return v4;
}

- (MKCompassView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MKCompassView;
  v3 = [(MKCompassView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKCompassView *)v3 _commonInit];
  }

  return v4;
}

+ (id)_parameterForStyle:(int64_t)style
{
  if (_parameterForStyle__onceToken != -1)
  {
    dispatch_once(&_parameterForStyle__onceToken, &__block_literal_global_40_34410);
    if (style)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = &_parameterForStyle__darkParameters;
    goto LABEL_7;
  }

  if (!style)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (style != 1)
  {
    goto LABEL_8;
  }

  v4 = &_parameterForStyle__lightParameters;
LABEL_7:
  self = *v4;
LABEL_8:

  return self;
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

+ (id)_parameterForSize:(int64_t)size
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MKCompassView__parameterForSize___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_parameterForSize__onceToken != -1)
  {
    dispatch_once(&_parameterForSize__onceToken, block);
  }

  if (size <= 2)
  {
    self = *off_1E76CA900[size];
  }

  return self;
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

+ (id)_systemFontOfSize:(double)size withAttributes:(id)attributes orWeight:(double)weight
{
  if (attributes)
  {
    v6 = [MEMORY[0x1E69DB880] fontDescriptorWithFontAttributes:{size, weight}];
    v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:size];
  }

  else
  {
    v7 = [MEMORY[0x1E69DB878] systemFontOfSize:size weight:weight];
  }

  return v7;
}

@end