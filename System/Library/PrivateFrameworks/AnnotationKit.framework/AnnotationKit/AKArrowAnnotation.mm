@interface AKArrowAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKArrowAnnotation)init;
- (AKArrowAnnotation)initWithCoder:(id)coder;
- (CGPoint)endPoint;
- (CGPoint)midPoint;
- (CGPoint)startPoint;
- (CGRect)hitTestBounds;
- (id)displayName;
- (id)foregroundColorForOptions:(id)options;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)coder;
- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size;
- (void)setForegroundColor:(id)color;
- (void)translateBy:(CGPoint)by;
@end

@implementation AKArrowAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKArrowAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAA28];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKArrowAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAA40];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"startPoint"])
  {
    v5 = @"Start Point";
    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:@"endPoint"])
  {
    v5 = @"End Point";
    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:@"midPoint"])
  {
    v5 = @"Mid Point";
    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:@"arrowHeadStyle"])
  {
    v5 = @"Line Style";
    goto LABEL_12;
  }

  if (([keyCopy isEqualToString:@"annotationText"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"typingAttributes"))
  {
    v5 = @"Text";
LABEL_12:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_14;
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKArrowAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_14:

  return v7;
}

- (AKArrowAnnotation)init
{
  v5.receiver = self;
  v5.super_class = AKArrowAnnotation;
  v2 = [(AKAnnotation *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    [(AKArrowAnnotation *)v2 setTypingAttributes:dictionary];
  }

  return v2;
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (colorCopy && [colorCopy akIsEDR])
  {
    [(AKArrowAnnotation *)self setForegroundColorHDR:colorCopy];
    akToSDR = [colorCopy akToSDR];
    [(AKArrowAnnotation *)self setForegroundColorSDR:akToSDR];
  }

  else
  {
    [(AKArrowAnnotation *)self setForegroundColorHDR:0];
    [(AKArrowAnnotation *)self setForegroundColorSDR:colorCopy];
  }
}

- (id)foregroundColorForOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = +[AKAnnotationRendererOptions defaultOptions];
  }

  [optionsCopy scaleFactor];
  v6 = v5;
  foregroundColorHDR = [(AKArrowAnnotation *)self foregroundColorHDR];
  v8 = foregroundColorHDR;
  if (v6 == 0.0)
  {
    if (foregroundColorHDR && ([optionsCopy allowHDR] & 1) != 0)
    {
      foregroundColorHDR2 = [(AKArrowAnnotation *)self foregroundColorHDR];
    }

    else
    {
      foregroundColorHDR2 = [(AKArrowAnnotation *)self foregroundColorSDR];
    }

    v12 = foregroundColorHDR2;
  }

  else
  {
    if (foregroundColorHDR && [optionsCopy allowHDR])
    {
      foregroundColorHDR3 = [(AKArrowAnnotation *)self foregroundColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      foregroundColorHDR3 = [(AKArrowAnnotation *)self foregroundColorSDR];
      v11 = 0;
      v10 = 1;
    }

    [optionsCopy scaleFactor];
    v12 = [foregroundColorHDR3 akScale:?];
    if (v10)
    {
    }

    if (v11)
    {
    }
  }

  return v12;
}

- (id)displayName
{
  arrowHeadStyle = [(AKArrowAnnotation *)self arrowHeadStyle];
  v3 = +[AKController akBundle];
  v4 = v3;
  if (arrowHeadStyle)
  {
    v5 = @"Arrow Line";
  }

  else
  {
    v5 = @"Line";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

  return v6;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKArrowAnnotation;
  keysForValuesToObserveForUndo = [(AKShapeAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BAA58];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKArrowAnnotation;
  keysForValuesToObserveForRedrawing = [(AKShapeAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BAA70];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKArrowAnnotation;
  keysForValuesToObserveForAdornments = [(AKAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:keysForValuesToObserveForAdornments];

  [v4 addObjectsFromArray:&unk_2851BAA88];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKArrowAnnotation *)self startPoint];
  v4 = v3;
  v35 = v3;
  v6 = v5;
  [(AKArrowAnnotation *)self endPoint];
  v8 = v7;
  v10 = v9;
  [(AKArrowAnnotation *)self midPoint];
  v12 = v11;
  v14 = v13;
  v15 = v8 - v4;
  v16 = hypot(v8 - v4, v10 - v6);
  v17 = hypot(v8 - v12, v10 - v14);
  if (v16 >= v17)
  {
    v17 = v16;
  }

  v18 = -v17;
  [AKGeometryHelper expandCGRect:v35 toContainPoint:v6, v15, v10 - v6, v12, v14];
  v37 = CGRectStandardize(v36);
  v38 = CGRectInset(v37, v18, v18);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  annotationText = [(AKArrowAnnotation *)self annotationText];
  if (annotationText)
  {
    v24 = annotationText;
    annotationText2 = [(AKArrowAnnotation *)self annotationText];
    v26 = [annotationText2 length];

    if (v26)
    {
      [AKAnnotationRenderer textBoundsOfAnnotation:self withOptionalAnnotationRect:0 optionalText:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      v42.origin.x = v27;
      v42.origin.y = v28;
      v42.size.width = v29;
      v42.size.height = v30;
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v40 = CGRectUnion(v39, v42);
      x = v40.origin.x;
      y = v40.origin.y;
      width = v40.size.width;
      height = v40.size.height;
    }
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v30.receiver = self;
  v30.super_class = AKArrowAnnotation;
  [(AKAnnotation *)&v30 adjustModelToCompensateForOriginalExif];
  [(AKArrowAnnotation *)self startPoint];
  v4 = v3;
  v6 = v5;
  [(AKArrowAnnotation *)self endPoint];
  v8 = v7;
  v10 = v9;
  [(AKArrowAnnotation *)self midPoint];
  v12 = v11;
  v14 = v13;
  v15 = v4 + (v8 - v4) * 0.5;
  v16 = v6 + (v10 - v6) * 0.5;
  v17 = [AKGeometryHelper inverseExifOrientation:[(AKAnnotation *)self originalExifOrientation]];
  [AKGeometryHelper adjustPoint:v17 forExifOrientation:v4 aboutCenter:v6, v15, v16];
  v19 = v18;
  v21 = v20;
  [AKGeometryHelper adjustPoint:v17 forExifOrientation:v8 aboutCenter:v10, v15, v16];
  v23 = v22;
  v25 = v24;
  [AKGeometryHelper adjustPoint:v17 forExifOrientation:v12 aboutCenter:v14, v15, v16];
  v27 = v26;
  v29 = v28;
  [(AKArrowAnnotation *)self setStartPoint:v19, v21];
  [(AKArrowAnnotation *)self setEndPoint:v23, v25];
  [(AKArrowAnnotation *)self setMidPoint:v27, v29];
}

- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:orientation];
  [AKGeometryHelper affineTransformFlatteningOriginalModelExif:orientation withOriginalModelSize:width, height];
  [(AKArrowAnnotation *)self startPoint];
  v9 = v8;
  v11 = v10;
  [(AKArrowAnnotation *)self endPoint];
  v13 = v12;
  v15 = v14;
  [(AKArrowAnnotation *)self midPoint];
  v16 = v11 * 0.0 + 0.0 * v9 + 0.0;
  v17 = v15 * 0.0 + 0.0 * v13 + 0.0;
  v20 = v18 * 0.0 + 0.0 * v19 + 0.0;
  [(AKArrowAnnotation *)self setStartPoint:v16, v16];
  [(AKArrowAnnotation *)self setEndPoint:v17, v17];
  [(AKArrowAnnotation *)self setMidPoint:v20, v20];
}

- (void)translateBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    isTranslating = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKArrowAnnotation *)self startPoint];
    v9 = v8;
    v11 = v10;
    [(AKArrowAnnotation *)self endPoint];
    v13 = v12;
    v15 = v14;
    [(AKArrowAnnotation *)self midPoint];
    v16 = x + v9;
    v17 = y + v11;
    v18 = x + v13;
    v19 = y + v15;
    v21 = x + v20;
    v23 = y + v22;
    [(AKArrowAnnotation *)self setStartPoint:v16, v17];
    [(AKArrowAnnotation *)self setEndPoint:v18, v19];
    [(AKArrowAnnotation *)self setMidPoint:v21, v23];

    [(AKAnnotation *)self setIsTranslating:isTranslating];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = AKArrowAnnotation;
  coderCopy = coder;
  [(AKShapeAnnotation *)&v8 encodeWithCoder:coderCopy];
  [(AKArrowAnnotation *)self startPoint:v8.receiver];
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v9);
  [coderCopy encodeObject:DictionaryRepresentation forKey:@"startPoint"];
  [(AKArrowAnnotation *)self endPoint];
  v6 = CGPointCreateDictionaryRepresentation(v10);

  [coderCopy encodeObject:v6 forKey:@"endPoint"];
  [(AKArrowAnnotation *)self midPoint];
  v7 = CGPointCreateDictionaryRepresentation(v11);

  [coderCopy encodeObject:v7 forKey:@"midPoint"];
  [coderCopy encodeInteger:-[AKArrowAnnotation arrowHeadStyle](self forKey:{"arrowHeadStyle"), @"arrowHeadStyle"}];
  [AKSecureSerializationHelper encodeTextPropertiesOfAnnotation:self withCoder:coderCopy];
}

- (AKArrowAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = AKArrowAnnotation;
  v5 = [(AKShapeAnnotation *)&v27 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"startPoint"];

    CGPointMakeWithDictionaryRepresentation(v10, &v5->_startPoint);
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"endPoint"];

    CGPointMakeWithDictionaryRepresentation(v15, &v5->_endPoint);
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"midPoint"];

    if (v20)
    {
      CGPointMakeWithDictionaryRepresentation(v20, &v5->_midPoint);
    }

    else
    {
      __asm { FMOV            V1.2D, #0.5 }

      v5->_midPoint = vmulq_f64(vaddq_f64(v5->_startPoint, v5->_endPoint), _Q1);
    }

    -[AKArrowAnnotation setArrowHeadStyle:](v5, "setArrowHeadStyle:", [coderCopy decodeIntegerForKey:@"arrowHeadStyle"]);
    [AKSecureSerializationHelper decodeTextPropertiesOfAnnotation:v5 withSecureCoder:coderCopy];
  }

  return v5;
}

- (CGPoint)startPoint
{
  objc_copyStruct(v4, &self->_startPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)endPoint
{
  objc_copyStruct(v4, &self->_endPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)midPoint
{
  objc_copyStruct(v4, &self->_midPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end