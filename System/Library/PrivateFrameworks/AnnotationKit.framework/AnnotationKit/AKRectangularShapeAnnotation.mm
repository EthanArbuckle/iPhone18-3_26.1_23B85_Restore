@interface AKRectangularShapeAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKRectangularShapeAnnotation)init;
- (AKRectangularShapeAnnotation)initWithCoder:(id)coder;
- (CGRect)rectangle;
- (id)displayName;
- (id)foregroundColorForOptions:(id)options;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (id)strokeColorForOptions:(id)options;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)coder;
- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size;
- (void)setForegroundColor:(id)color;
- (void)setStrokeColor:(id)color;
- (void)translateBy:(CGPoint)by;
@end

@implementation AKRectangularShapeAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKRectangularShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAC08];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKRectangularShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAC20];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"rectangle"])
  {
    v5 = @"Bounds";
    goto LABEL_6;
  }

  if (([keyCopy isEqualToString:@"annotationText"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"typingAttributes"))
  {
    v5 = @"Text";
LABEL_6:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKRectangularShapeAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_8:

  return v7;
}

- (AKRectangularShapeAnnotation)init
{
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  v2 = [(AKAnnotation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(AKAnnotation *)v2 setTextIsFixedWidth:1];
    [(AKAnnotation *)v3 setTextIsFixedHeight:1];
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    [(AKRectangularShapeAnnotation *)v3 setTypingAttributes:dictionary];
  }

  return v3;
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (colorCopy && [colorCopy akIsEDR])
  {
    [(AKStrokedAnnotation *)self setStrokeColorHDR:colorCopy];
    akToSDR = [colorCopy akToSDR];
    [(AKStrokedAnnotation *)self setStrokeColorSDR:akToSDR];
  }

  else
  {
    [(AKStrokedAnnotation *)self setStrokeColorHDR:0];
    [(AKStrokedAnnotation *)self setStrokeColorSDR:colorCopy];
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
  strokeColorHDR = [(AKStrokedAnnotation *)self strokeColorHDR];
  v8 = strokeColorHDR;
  if (v6 == 0.0)
  {
    if (strokeColorHDR && ([optionsCopy allowHDR] & 1) != 0)
    {
      strokeColorHDR2 = [(AKStrokedAnnotation *)self strokeColorHDR];
    }

    else
    {
      strokeColorHDR2 = [(AKStrokedAnnotation *)self strokeColorSDR];
    }

    v12 = strokeColorHDR2;
  }

  else
  {
    if (strokeColorHDR && [optionsCopy allowHDR])
    {
      strokeColorHDR3 = [(AKStrokedAnnotation *)self strokeColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      strokeColorHDR3 = [(AKStrokedAnnotation *)self strokeColorSDR];
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

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (colorCopy && [colorCopy akIsEDR])
  {
    [(AKRectangularShapeAnnotation *)self setForegroundColorHDR:colorCopy];
    akToSDR = [colorCopy akToSDR];
    [(AKRectangularShapeAnnotation *)self setForegroundColorSDR:akToSDR];
  }

  else
  {
    [(AKRectangularShapeAnnotation *)self setForegroundColorHDR:0];
    [(AKRectangularShapeAnnotation *)self setForegroundColorSDR:colorCopy];
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
  foregroundColorHDR = [(AKRectangularShapeAnnotation *)self foregroundColorHDR];
  v8 = foregroundColorHDR;
  if (v6 == 0.0)
  {
    if (foregroundColorHDR && ([optionsCopy allowHDR] & 1) != 0)
    {
      foregroundColorHDR2 = [(AKRectangularShapeAnnotation *)self foregroundColorHDR];
    }

    else
    {
      foregroundColorHDR2 = [(AKRectangularShapeAnnotation *)self foregroundColorSDR];
    }

    v12 = foregroundColorHDR2;
  }

  else
  {
    if (foregroundColorHDR && [optionsCopy allowHDR])
    {
      foregroundColorHDR3 = [(AKRectangularShapeAnnotation *)self foregroundColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      foregroundColorHDR3 = [(AKRectangularShapeAnnotation *)self foregroundColorSDR];
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
  v4.receiver = self;
  v4.super_class = AKRectangularShapeAnnotation;
  displayName = [(AKShapeAnnotation *)&v4 displayName];

  return displayName;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  keysForValuesToObserveForUndo = [(AKShapeAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BAC38];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  keysForValuesToObserveForRedrawing = [(AKShapeAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BAC50];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  keysForValuesToObserveForAdornments = [(AKAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:keysForValuesToObserveForAdornments];

  [v4 addObjectsFromArray:&unk_2851BAC68];

  return v4;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKRectangularShapeAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKRectangularShapeAnnotation *)self rectangle];
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
  [(AKRectangularShapeAnnotation *)self setRectangle:?];
}

- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:orientation];
  [(AKRectangularShapeAnnotation *)self rectangle];
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
  [(AKRectangularShapeAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    isTranslating = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKRectangularShapeAnnotation *)self rectangle];
    [(AKRectangularShapeAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:isTranslating];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  coderCopy = coder;
  [(AKShapeAnnotation *)&v6 encodeWithCoder:coderCopy];
  [(AKRectangularShapeAnnotation *)self rectangle:v6.receiver];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v7);
  [coderCopy encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  [AKSecureSerializationHelper encodeTextPropertiesOfAnnotation:self withCoder:coderCopy];
}

- (AKRectangularShapeAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AKRectangularShapeAnnotation;
  v5 = [(AKShapeAnnotation *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    [AKSecureSerializationHelper decodeTextPropertiesOfAnnotation:v5 withSecureCoder:coderCopy];
  }

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