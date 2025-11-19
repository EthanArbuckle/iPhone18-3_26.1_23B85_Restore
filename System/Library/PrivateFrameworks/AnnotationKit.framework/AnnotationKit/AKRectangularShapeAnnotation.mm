@interface AKRectangularShapeAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKRectangularShapeAnnotation)init;
- (AKRectangularShapeAnnotation)initWithCoder:(id)a3;
- (CGRect)rectangle;
- (id)displayName;
- (id)foregroundColorForOptions:(id)a3;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (id)strokeColorForOptions:(id)a3;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)setForegroundColor:(id)a3;
- (void)setStrokeColor:(id)a3;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKRectangularShapeAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKRectangularShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAC08];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKRectangularShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAC20];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"rectangle"])
  {
    v5 = @"Bounds";
    goto LABEL_6;
  }

  if (([v4 isEqualToString:@"annotationText"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"typingAttributes"))
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

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKRectangularShapeAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
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
    v4 = [MEMORY[0x277CBEAC0] dictionary];
    [(AKRectangularShapeAnnotation *)v3 setTypingAttributes:v4];
  }

  return v3;
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (v5 && [v5 akIsEDR])
  {
    [(AKStrokedAnnotation *)self setStrokeColorHDR:v5];
    v4 = [v5 akToSDR];
    [(AKStrokedAnnotation *)self setStrokeColorSDR:v4];
  }

  else
  {
    [(AKStrokedAnnotation *)self setStrokeColorHDR:0];
    [(AKStrokedAnnotation *)self setStrokeColorSDR:v5];
  }
}

- (id)strokeColorForOptions:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[AKAnnotationRendererOptions defaultOptions];
  }

  [v4 scaleFactor];
  v6 = v5;
  v7 = [(AKStrokedAnnotation *)self strokeColorHDR];
  v8 = v7;
  if (v6 == 0.0)
  {
    if (v7 && ([v4 allowHDR] & 1) != 0)
    {
      v13 = [(AKStrokedAnnotation *)self strokeColorHDR];
    }

    else
    {
      v13 = [(AKStrokedAnnotation *)self strokeColorSDR];
    }

    v12 = v13;
  }

  else
  {
    if (v7 && [v4 allowHDR])
    {
      v9 = [(AKStrokedAnnotation *)self strokeColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v9 = [(AKStrokedAnnotation *)self strokeColorSDR];
      v11 = 0;
      v10 = 1;
    }

    [v4 scaleFactor];
    v12 = [v9 akScale:?];
    if (v10)
    {
    }

    if (v11)
    {
    }
  }

  return v12;
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  if (v5 && [v5 akIsEDR])
  {
    [(AKRectangularShapeAnnotation *)self setForegroundColorHDR:v5];
    v4 = [v5 akToSDR];
    [(AKRectangularShapeAnnotation *)self setForegroundColorSDR:v4];
  }

  else
  {
    [(AKRectangularShapeAnnotation *)self setForegroundColorHDR:0];
    [(AKRectangularShapeAnnotation *)self setForegroundColorSDR:v5];
  }
}

- (id)foregroundColorForOptions:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[AKAnnotationRendererOptions defaultOptions];
  }

  [v4 scaleFactor];
  v6 = v5;
  v7 = [(AKRectangularShapeAnnotation *)self foregroundColorHDR];
  v8 = v7;
  if (v6 == 0.0)
  {
    if (v7 && ([v4 allowHDR] & 1) != 0)
    {
      v13 = [(AKRectangularShapeAnnotation *)self foregroundColorHDR];
    }

    else
    {
      v13 = [(AKRectangularShapeAnnotation *)self foregroundColorSDR];
    }

    v12 = v13;
  }

  else
  {
    if (v7 && [v4 allowHDR])
    {
      v9 = [(AKRectangularShapeAnnotation *)self foregroundColorHDR];
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v9 = [(AKRectangularShapeAnnotation *)self foregroundColorSDR];
      v11 = 0;
      v10 = 1;
    }

    [v4 scaleFactor];
    v12 = [v9 akScale:?];
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
  v2 = [(AKShapeAnnotation *)&v4 displayName];

  return v2;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  v3 = [(AKShapeAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAC38];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  v3 = [(AKShapeAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAC50];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:v3];

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

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:a3];
  [(AKRectangularShapeAnnotation *)self rectangle];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memset(&v16[1], 0, sizeof(CGAffineTransform));
  [AKGeometryHelper affineTransformFlatteningOriginalModelExif:a3 withOriginalModelSize:width, height];
  v16[0] = v16[1];
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  v18 = CGRectApplyAffineTransform(v17, v16);
  [(AKRectangularShapeAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKRectangularShapeAnnotation *)self rectangle];
    [(AKRectangularShapeAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AKRectangularShapeAnnotation;
  v4 = a3;
  [(AKShapeAnnotation *)&v6 encodeWithCoder:v4];
  [(AKRectangularShapeAnnotation *)self rectangle:v6.receiver];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v7);
  [v4 encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  [AKSecureSerializationHelper encodeTextPropertiesOfAnnotation:self withCoder:v4];
}

- (AKRectangularShapeAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AKRectangularShapeAnnotation;
  v5 = [(AKShapeAnnotation *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    [AKSecureSerializationHelper decodeTextPropertiesOfAnnotation:v5 withSecureCoder:v4];
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