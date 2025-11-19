@interface AKLoupeAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKLoupeAnnotation)initWithCoder:(id)a3;
- (CGRect)rectangle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKLoupeAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKLoupeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAFB0];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKLoupeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAFC8];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"rectangle"])
  {
    v5 = @"Bounds";
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"magnification"])
  {
    v5 = @"Magnification";
LABEL_5:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKLoupeAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
LABEL_7:

  return v7;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"LOUPE_ANNOTATION_NAME" value:@"Loupe" table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKLoupeAnnotation;
  v3 = [(AKStrokedAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAFE0];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKLoupeAnnotation;
  v3 = [(AKStrokedAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAFF8];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKLoupeAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB010];

  return v4;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKLoupeAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKLoupeAnnotation *)self rectangle];
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
  [(AKLoupeAnnotation *)self setRectangle:?];
}

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:a3];
  [(AKLoupeAnnotation *)self rectangle];
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
  [(AKLoupeAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKLoupeAnnotation *)self rectangle];
    [(AKLoupeAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:v7];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = AKLoupeAnnotation;
  v5 = [(AKAnnotation *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(AKLoupeAnnotation *)self imageData];
    v7 = [v6 copyWithZone:a3];
    [v5 setImageData:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AKLoupeAnnotation;
  v4 = a3;
  [(AKStrokedAnnotation *)&v6 encodeWithCoder:v4];
  [(AKLoupeAnnotation *)self rectangle:v6.receiver];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v7);
  [v4 encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  [(AKLoupeAnnotation *)self magnification];
  [v4 encodeDouble:@"magnification" forKey:?];
}

- (AKLoupeAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AKLoupeAnnotation;
  v5 = [(AKStrokedAnnotation *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    [v4 decodeDoubleForKey:@"magnification"];
    [(AKLoupeAnnotation *)v5 setMagnification:?];
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