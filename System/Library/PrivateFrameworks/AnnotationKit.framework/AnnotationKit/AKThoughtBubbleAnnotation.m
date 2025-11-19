@interface AKThoughtBubbleAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKThoughtBubbleAnnotation)initWithCoder:(id)a3;
- (CGPoint)pointyBitPoint;
- (CGRect)hitTestBounds;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)adjustModelToCompensateForOriginalExif;
- (void)encodeWithCoder:(id)a3;
- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4;
- (void)translateBy:(CGPoint)a3;
@end

@implementation AKThoughtBubbleAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKThoughtBubbleAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA860];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKThoughtBubbleAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA878];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if (![v4 isEqualToString:@"pointyBitPoint"] || (+[AKController akBundle](AKController, "akBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Thought Bubble Tail", &stru_28519E870, @"AnnotationStrings"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___AKThoughtBubbleAnnotation;
    v6 = objc_msgSendSuper2(&v8, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
  }

  return v6;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Thought Bubble" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKThoughtBubbleAnnotation;
  v3 = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA890];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKThoughtBubbleAnnotation;
  v3 = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA8A8];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKThoughtBubbleAnnotation;
  v3 = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BA8C0];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKRectangularShapeAnnotation *)self rectangle];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [AKAnnotationRenderer draggingBoundsInsetsForAnnotation:self];
  v12 = v11;
  v14 = v13;
  v41.origin.x = v4;
  v41.origin.y = v6;
  v41.size.width = v8;
  v41.size.height = v10;
  v42 = CGRectInset(v41, v12, v14);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  [(AKThoughtBubbleAnnotation *)self pointyBitPoint];
  [AKGeometryHelper expandCGRect:x toContainPoint:y, width, height, v19, v20];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(AKStrokedAnnotation *)self strokeWidth];
  v30 = v29 * -0.5;
  v43.origin.x = v22;
  v43.origin.y = v24;
  v43.size.width = v26;
  v43.size.height = v28;
  v44 = CGRectInset(v43, v30, v30);
  v31 = v44.origin.x;
  v32 = v44.origin.y;
  v33 = v44.size.width;
  v34 = v44.size.height;
  [(AKRectangularShapeAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:v31 angle:v32, v33, v34, v35];
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (void)adjustModelToCompensateForOriginalExif
{
  v12.receiver = self;
  v12.super_class = AKThoughtBubbleAnnotation;
  [(AKRectangularShapeAnnotation *)&v12 adjustModelToCompensateForOriginalExif];
  [(AKThoughtBubbleAnnotation *)self pointyBitPoint];
  v4 = v3;
  v6 = v5;
  [(AKRectangularShapeAnnotation *)self rectangle];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  [AKGeometryHelper adjustPoint:[AKGeometryHelper inverseExifOrientation:[(AKAnnotation *)self originalExifOrientation]] forExifOrientation:v4 aboutCenter:v6, MidX, CGRectGetMidY(v14)];
  [(AKThoughtBubbleAnnotation *)self setPointyBitPoint:?];
}

- (void)flattenModelExifOrientation:(int64_t)a3 withModelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v12.receiver = self;
  v12.super_class = AKThoughtBubbleAnnotation;
  [AKRectangularShapeAnnotation flattenModelExifOrientation:sel_flattenModelExifOrientation_withModelSize_ withModelSize:?];
  [(AKThoughtBubbleAnnotation *)self pointyBitPoint];
  v10 = v9;
  v11 = v8;
  [AKGeometryHelper affineTransformFlatteningOriginalModelExif:a3 withOriginalModelSize:width, height];
  [(AKThoughtBubbleAnnotation *)self setPointyBitPoint:vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v10), 0, v11))];
}

- (void)translateBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v7 = [(AKAnnotation *)self isTranslating];
    [(AKAnnotation *)self setIsTranslating:1];
    v10.receiver = self;
    v10.super_class = AKThoughtBubbleAnnotation;
    [(AKRectangularShapeAnnotation *)&v10 translateBy:x, y];
    [(AKThoughtBubbleAnnotation *)self pointyBitPoint];
    [(AKThoughtBubbleAnnotation *)self setPointyBitPoint:x + v8, y + v9];
    [(AKAnnotation *)self setIsTranslating:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AKThoughtBubbleAnnotation;
  v4 = a3;
  [(AKRectangularShapeAnnotation *)&v6 encodeWithCoder:v4];
  [(AKThoughtBubbleAnnotation *)self pointyBitPoint:v6.receiver];
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v7);
  [v4 encodeObject:DictionaryRepresentation forKey:@"pointyBitPoint"];
}

- (AKThoughtBubbleAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AKThoughtBubbleAnnotation;
  v5 = [(AKRectangularShapeAnnotation *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"pointyBitPoint"];

    CGPointMakeWithDictionaryRepresentation(v10, &v5->_pointyBitPoint);
  }

  return v5;
}

- (CGPoint)pointyBitPoint
{
  objc_copyStruct(v4, &self->_pointyBitPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end