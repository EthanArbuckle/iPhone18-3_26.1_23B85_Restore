@interface AKSignatureAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKSignatureAnnotation)initWithCoder:(id)coder;
- (CGRect)hitTestBounds;
- (CGRect)rectangle;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (id)strokeColorForOptions:(id)options;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)coder;
- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size;
- (void)setStrokeColor:(id)color;
- (void)translateBy:(CGPoint)by;
@end

@implementation AKSignatureAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKSignatureAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA800];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKSignatureAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA818];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"rectangle"])
  {
    v5 = @"Bounds";
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"signature"])
  {
    v5 = @"Signature Shape";
    goto LABEL_7;
  }

  if ([keyCopy isEqualToString:@"strokeColor"])
  {
    v5 = @"Signature Color";
LABEL_7:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKSignatureAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_9:

  return v7;
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (colorCopy && [colorCopy akIsEDR])
  {
    [(AKSignatureAnnotation *)self setStrokeColorHDR:colorCopy];
    akToSDR = [colorCopy akToSDR];
    [(AKSignatureAnnotation *)self setStrokeColorSDR:akToSDR];
  }

  else
  {
    [(AKSignatureAnnotation *)self setStrokeColorHDR:0];
    [(AKSignatureAnnotation *)self setStrokeColorSDR:colorCopy];
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
  strokeColorHDR = [(AKSignatureAnnotation *)self strokeColorHDR];
  v8 = strokeColorHDR;
  if (v6 == 0.0)
  {
    if (strokeColorHDR && ([optionsCopy allowHDR] & 1) != 0)
    {
      strokeColorHDR2 = [(AKSignatureAnnotation *)self strokeColorHDR];
    }

    else
    {
      strokeColorHDR2 = [(AKSignatureAnnotation *)self strokeColorSDR];
    }

    v12 = strokeColorHDR2;
  }

  else
  {
    if (strokeColorHDR && [optionsCopy allowHDR])
    {
      strokeColorHDR3 = [(AKSignatureAnnotation *)self strokeColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      strokeColorHDR3 = [(AKSignatureAnnotation *)self strokeColorSDR];
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

- (id)displayName
{
  signature = [(AKSignatureAnnotation *)self signature];
  descriptionTag = [signature descriptionTag];

  if (descriptionTag)
  {
    signature2 = [(AKSignatureAnnotation *)self signature];
    if (descriptionTag == -1)
    {
      [signature2 customDescription];
    }

    else
    {
      +[AKSignatureDescription stringValueForSignatureDescriptionTag:](AKSignatureDescription, "stringValueForSignatureDescriptionTag:", [signature2 descriptionTag]);
    }
    v6 = ;
  }

  else
  {
    signature2 = +[AKController akBundle];
    v6 = [signature2 localizedStringForKey:@"Signature" value:&stru_28519E870 table:@"AnnotationStrings"];
  }

  v7 = v6;

  return v7;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKSignatureAnnotation;
  keysForValuesToObserveForUndo = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BA830];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKSignatureAnnotation;
  keysForValuesToObserveForRedrawing = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BA848];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKSignatureAnnotation *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:self];
  v12 = v11;
  v14 = v13;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v26 = CGRectInset(v25, v12, v14);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  [(AKSignatureAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v19];
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKSignatureAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKSignatureAnnotation *)self rectangle];
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
  [(AKSignatureAnnotation *)self setRectangle:?];
}

- (void)flattenModelExifOrientation:(int64_t)orientation withModelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:orientation];
  [(AKSignatureAnnotation *)self rectangle];
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
  [(AKSignatureAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)by
{
  y = by.y;
  x = by.x;
  if (by.x != *MEMORY[0x277CBF348] || by.y != *(MEMORY[0x277CBF348] + 8))
  {
    isTranslating = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKSignatureAnnotation *)self rectangle];
    [(AKSignatureAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:isTranslating];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AKSignatureAnnotation;
  [(AKAnnotation *)&v10 encodeWithCoder:coderCopy];
  [(AKSignatureAnnotation *)self rectangle];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v11);
  [coderCopy encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  signature = [(AKSignatureAnnotation *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];

  strokeColorSDR = [(AKSignatureAnnotation *)self strokeColorSDR];
  [coderCopy akEncodeColor:strokeColorSDR forKey:@"strokeColorString"];

  strokeColorHDR = [(AKSignatureAnnotation *)self strokeColorHDR];

  if (strokeColorHDR)
  {
    strokeColorHDR2 = [(AKSignatureAnnotation *)self strokeColorHDR];
    [coderCopy akEncodeColor:strokeColorHDR2 forKey:@"strokeColorHDRString"];
  }
}

- (AKSignatureAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = AKSignatureAnnotation;
  v5 = [(AKAnnotation *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    [(AKSignatureAnnotation *)v5 setSignature:v11];

    if ([coderCopy containsValueForKey:@"strokeColorHDRString"])
    {
      v12 = [coderCopy akDecodeColorForKey:@"strokeColorHDRString"];
      [(AKSignatureAnnotation *)v5 setStrokeColorHDR:v12];
    }

    if ([coderCopy containsValueForKey:@"strokeColorString"])
    {
      v13 = [coderCopy akDecodeColorForKey:@"strokeColorSDRString"];
      [(AKSignatureAnnotation *)v5 setStrokeColorSDR:v13];
    }

    else
    {
      if (![coderCopy containsValueForKey:@"strokeColor"])
      {
LABEL_10:

        goto LABEL_11;
      }

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
      if (v13)
      {
        v14 = [MEMORY[0x277D75348] akColorWithCIColor:v13];
        [(AKSignatureAnnotation *)v5 setStrokeColor:v14];
      }
    }

    goto LABEL_10;
  }

LABEL_11:

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