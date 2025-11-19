@interface AKInkAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKInkAnnotation)initWithCoder:(id)a3;
- (CGRect)hitTestBounds;
- (CGRect)rectangle;
- (CGSize)drawingSize;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKInkAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKInkAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAEF0];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKInkAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAF08];

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

  if ([v4 isEqualToString:@"drawing"])
  {
    v5 = @"Drawing";
LABEL_5:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___AKInkAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
LABEL_7:

  return v7;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Drawing_Annotation" value:@"Drawing" table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKInkAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAF20];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKInkAnnotation;
  v3 = [(AKAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAF38];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKInkAnnotation *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:self];
  v12 = v11;
  v14 = v13;
  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;

  return CGRectInset(*&v15, v12, v14);
}

- (void)adjustModelToCompensateForOriginalExif
{
  v8.receiver = self;
  v8.super_class = AKInkAnnotation;
  [(AKAnnotation *)&v8 adjustModelToCompensateForOriginalExif];
  [(AKInkAnnotation *)self rectangle];
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
  [(AKInkAnnotation *)self setRectangle:?];
}

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [AKGeometryHelper adjustOriginalExifOrientationOnAnnotation:self flatteningOriginalModelExif:a3];
  [(AKInkAnnotation *)self rectangle];
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
  [(AKInkAnnotation *)self setRectangle:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    [(AKInkAnnotation *)self rectangle];
    [(AKInkAnnotation *)self setRectangle:x + v8, y + v9];

    [(AKAnnotation *)self setIsTranslating:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = AKInkAnnotation;
  v4 = a3;
  [(AKAnnotation *)&v9 encodeWithCoder:v4];
  [(AKInkAnnotation *)self rectangle:v9.receiver];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v11);
  [v4 encodeObject:DictionaryRepresentation forKey:@"rectangle"];
  v6 = [(AKInkAnnotation *)self drawing];
  v7 = [v6 serialize];

  [v4 encodeObject:v7 forKey:@"drawing"];
  [(AKInkAnnotation *)self drawingSize];
  v8 = CGSizeCreateDictionaryRepresentation(v10);

  [v4 encodeObject:v8 forKey:@"drawingSize"];
}

- (AKInkAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AKInkAnnotation;
  v5 = [(AKAnnotation *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rectangle"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_rectangle);
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"drawing"];

    v24 = 0;
    v15 = [objc_alloc(MEMORY[0x277CD95F8]) initWithData:v14 error:&v24];
    v16 = v24;
    if (v16)
    {
      v17 = os_log_create("com.apple.annotationkit", "Serialization");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_23F4BD2B0(v16, v17);
      }
    }

    [(AKInkAnnotation *)v5 setDrawing:v15];
    if ([v4 containsValueForKey:@"drawingSize"])
    {
      v18 = MEMORY[0x277CBEB98];
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
      v22 = [v4 decodeObjectOfClasses:v21 forKey:@"drawingSize"];

      CGSizeMakeWithDictionaryRepresentation(v22, &v5->_drawingSize);
    }
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

- (CGSize)drawingSize
{
  objc_copyStruct(v4, &self->_drawingSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end