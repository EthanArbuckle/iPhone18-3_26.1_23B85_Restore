@interface AKDoodleAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKDoodleAnnotation)initWithCoder:(id)coder;
- (CGRect)hitTestBounds;
- (CGRect)rectangle;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (id)strokeColorForOptions:(id)options;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)coder;
- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size;
- (void)setStrokeColor:(id)color;
- (void)translateBy:(CGPoint)by;
@end

@implementation AKDoodleAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKDoodleAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAE78];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKDoodleAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAE90];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"rectangle"])
  {
    v5 = @"Bounds";
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = @"Doodle Shape";
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:@"strokeWidth"])
  {
    v5 = @"Line Width";
    goto LABEL_15;
  }

  if ([keyCopy containsString:@"strokeColor"])
  {
    v5 = @"Color";
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:@"dashed"])
  {
    v5 = @"Dashed";
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:@"hasShadow"])
  {
    v5 = @"Shadow";
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:@"brushStyle"])
  {
    v5 = @"Brush Style";
LABEL_15:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_17;
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKDoodleAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_17:

  return v7;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Doodle" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKDoodleAnnotation;
  keysForValuesToObserveForUndo = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BAEA8];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKDoodleAnnotation;
  keysForValuesToObserveForRedrawing = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BAEC0];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKDoodleAnnotation;
  keysForValuesToObserveForAdornments = [(AKAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:keysForValuesToObserveForAdornments];

  [v4 addObjectsFromArray:&unk_2851BAED8];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKDoodleAnnotation *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:self];
  v12 = v11;
  v14 = v13;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v32 = CGRectInset(v31, v12, v14);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  [(AKDoodleAnnotation *)self strokeWidth];
  v20 = v19 * -0.5;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v34 = CGRectInset(v33, v20, v20);
  v21 = v34.origin.x;
  v22 = v34.origin.y;
  v23 = v34.size.width;
  v24 = v34.size.height;
  [(AKDoodleAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:v21 angle:v22, v23, v24, v25];
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKDoodleAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKDoodleAnnotation *)self rectangle];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  [AKGeometryHelper adjustRect:[AKGeometryHelper inverseExifOrientation:[(AKAnnotation *)self originalExifOrientation]] forExifOrientation:x aboutCenter:y, width, height, MidX, CGRectGetMidY(v10)];
  [(AKDoodleAnnotation *)self setRectangle:?];
}

- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:orientation];
  [(AKDoodleAnnotation *)self rectangle];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memset(&v16[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper affineTransformFlatteningOriginalModelExif:orientation withOriginalModelSize:width, height];
  v16[0] = v16[1];
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  v18 = CGRectApplyAffineTransform(v17, v16);
  [(AKDoodleAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    isTranslating = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKDoodleAnnotation *)self rectangle];
    [(AKDoodleAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:isTranslating];
  }
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (colorCopy && [colorCopy akIsEDR])
  {
    [(AKDoodleAnnotation *)self setStrokeColorHDR:colorCopy];
    akToSDR = [colorCopy akToSDR];
    [(AKDoodleAnnotation *)self setStrokeColorSDR:akToSDR];
  }

  else
  {
    [(AKDoodleAnnotation *)self setStrokeColorHDR:0];
    [(AKDoodleAnnotation *)self setStrokeColorSDR:colorCopy];
  }
}

- (id)strokeColorForOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = +[AKAnnotationRendererOptions defaultOptions];
  }

  [optionsCopy scaleFactor];
  v6 = v5;
  strokeColorHDR = [(AKDoodleAnnotation *)self strokeColorHDR];
  v8 = strokeColorHDR;
  if (v6 == 0.0)
  {
    if (strokeColorHDR && ([optionsCopy allowHDR] & 1) != 0)
    {
      strokeColorHDR2 = [(AKDoodleAnnotation *)self strokeColorHDR];
    }

    else
    {
      strokeColorHDR2 = [(AKDoodleAnnotation *)self strokeColorSDR];
    }

    v12 = strokeColorHDR2;
  }

  else
  {
    if (strokeColorHDR && [optionsCopy allowHDR])
    {
      strokeColorHDR3 = [(AKDoodleAnnotation *)self strokeColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      strokeColorHDR3 = [(AKDoodleAnnotation *)self strokeColorSDR];
      v11 = 0;
      v10 = 1;
    }

    [optionsCopy scaleFactor];
    v12 = [strokeColorHDR3 akScale:?];
    if (v10)
    {
    }

    if (v11)
    {
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AKDoodleAnnotation;
  [(AKAnnotation *)&v12 encodeWithCoder:coderCopy];
  [(AKDoodleAnnotation *)self rectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v13);
  [coderCopy encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  path = [(AKDoodleAnnotation *)self path];
  newCGPathForPlatformBezierPath = [path newCGPathForPlatformBezierPath];

  v8 = [MEMORY[0x277CBEA90] encodeCGPath:newCGPathForPlatformBezierPath];
  [coderCopy encodeObject:v8 forKey:@"path"];
  CGPathRelease(newCGPathForPlatformBezierPath);
  strokeColorSDR = [(AKDoodleAnnotation *)self strokeColorSDR];
  [coderCopy akEncodeColor:strokeColorSDR forKey:@"strokeColorString"];

  strokeColorHDR = [(AKDoodleAnnotation *)self strokeColorHDR];

  if (strokeColorHDR)
  {
    strokeColorHDR2 = [(AKDoodleAnnotation *)self strokeColorHDR];
    [coderCopy akEncodeColor:strokeColorHDR2 forKey:@"strokeColorHDRString"];
  }

  [(AKDoodleAnnotation *)self strokeWidth];
  [coderCopy encodeDouble:@"strokeWidth" forKey:?];
  [coderCopy encodeBool:-[AKDoodleAnnotation isDashed](self forKey:{"isDashed"), @"dashed"}];
  [coderCopy encodeBool:-[AKDoodleAnnotation hasShadow](self forKey:{"hasShadow"), @"hasShadow"}];
  [coderCopy encodeInteger:-[AKDoodleAnnotation brushStyle](self forKey:{"brushStyle"), @"brushStyle"}];
  [coderCopy encodeBool:-[AKDoodleAnnotation pathIsPrestroked](self forKey:{"pathIsPrestroked"), @"pathIsPrestroked"}];
  [coderCopy encodeBool:-[AKDoodleAnnotation pathIsDot](self forKey:{"pathIsDot"), @"pathIsDot"}];
}

- (AKDoodleAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = AKDoodleAnnotation;
  v5 = [(AKAnnotation *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v12 = [MEMORY[0x277CBEA90] newCGPathDecodedFromData:v11];
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x277D75208] bezierPathWithCGPath:v12];
      [(AKDoodleAnnotation *)v5 setPath:v14];

      CGPathRelease(v13);
    }

    if ([coderCopy containsValueForKey:@"pathIsPrestroked"])
    {
      v15 = [coderCopy decodeBoolForKey:@"pathIsPrestroked"];
    }

    else
    {
      v15 = 0;
    }

    [(AKDoodleAnnotation *)v5 setPathIsPrestroked:v15];
    if ([coderCopy containsValueForKey:@"pathIsDot"])
    {
      v16 = [coderCopy decodeBoolForKey:@"pathIsDot"];
    }

    else
    {
      v16 = 0;
    }

    [(AKDoodleAnnotation *)v5 setPathIsDot:v16];
    if ([coderCopy containsValueForKey:@"strokeColorHDRString"])
    {
      v17 = [coderCopy akDecodeColorForKey:@"strokeColorHDRString"];
      [(AKDoodleAnnotation *)v5 setStrokeColorHDR:v17];
    }

    if ([coderCopy containsValueForKey:@"strokeColorString"])
    {
      v18 = [coderCopy akDecodeColorForKey:@"strokeColorString"];
      [(AKDoodleAnnotation *)v5 setStrokeColorSDR:v18];
    }

    else
    {
      if (![coderCopy containsValueForKey:@"strokeColor"])
      {
LABEL_18:
        [coderCopy decodeDoubleForKey:@"strokeWidth"];
        [(AKDoodleAnnotation *)v5 setStrokeWidth:?];
        -[AKDoodleAnnotation setDashed:](v5, "setDashed:", [coderCopy decodeBoolForKey:@"dashed"]);
        -[AKDoodleAnnotation setHasShadow:](v5, "setHasShadow:", [coderCopy decodeBoolForKey:@"hasShadow"]);
        -[AKDoodleAnnotation setBrushStyle:](v5, "setBrushStyle:", [coderCopy decodeIntegerForKey:@"brushStyle"]);

        goto LABEL_19;
      }

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
      if (v18)
      {
        v19 = [MEMORY[0x277D75348] akColorWithCIColor:v18];
        [(AKDoodleAnnotation *)v5 setStrokeColor:v19];
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return v5;
}

- (CGRect)rectangle
{
  objc_copyStruct(v6, &self->_rectangle, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end