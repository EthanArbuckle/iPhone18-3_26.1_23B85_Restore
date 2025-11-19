@interface AKArrowShapeAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKArrowShapeAnnotation)init;
- (AKArrowShapeAnnotation)initWithCoder:(id)a3;
- (CGRect)hitTestBounds;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKArrowShapeAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKArrowShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB118];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKArrowShapeAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB130];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"arrowHeadLength"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"arrowLineWidth") & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"arrowHeadWidth") || (+[AKController akBundle](AKController, "akBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Arrow Shape", &stru_28519E870, @"AnnotationStrings"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___AKArrowShapeAnnotation;
    v6 = objc_msgSendSuper2(&v8, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
  }

  return v6;
}

- (AKArrowShapeAnnotation)init
{
  v5.receiver = self;
  v5.super_class = AKArrowShapeAnnotation;
  v2 = [(AKArrowAnnotation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AKAnnotation *)v2 setTextIsFixedWidth:1];
    [(AKAnnotation *)v3 setTextIsFixedHeight:1];
  }

  return v3;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Arrow" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKArrowShapeAnnotation;
  v3 = [(AKArrowAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB148];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKArrowShapeAnnotation;
  v3 = [(AKArrowAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB160];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKArrowShapeAnnotation;
  v3 = [(AKArrowAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB178];

  return v4;
}

- (CGRect)hitTestBounds
{
  [(AKArrowAnnotation *)self startPoint];
  v4 = v3;
  v6 = v5;
  [(AKArrowAnnotation *)self endPoint];
  v8 = v7;
  v10 = v9;
  [(AKArrowShapeAnnotation *)self arrowHeadWidth];
  v12 = v11 * -0.5;
  v14.size.width = v8 - v4;
  v14.size.height = v10 - v6;
  v14.origin.x = v4;
  v14.origin.y = v6;
  v15 = CGRectStandardize(v14);

  return CGRectInset(v15, v12, v12);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AKArrowShapeAnnotation;
  v4 = a3;
  [(AKArrowAnnotation *)&v5 encodeWithCoder:v4];
  [(AKArrowShapeAnnotation *)self arrowHeadLength:v5.receiver];
  [v4 encodeDouble:@"arrowHeadLength" forKey:?];
  [(AKArrowShapeAnnotation *)self arrowHeadWidth];
  [v4 encodeDouble:@"arrowHeadWidth" forKey:?];
  [(AKArrowShapeAnnotation *)self arrowLineWidth];
  [v4 encodeDouble:@"arrowLineWidth" forKey:?];
}

- (AKArrowShapeAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AKArrowShapeAnnotation;
  v5 = [(AKArrowAnnotation *)&v7 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"arrowHeadLength"];
    [(AKArrowShapeAnnotation *)v5 setArrowHeadLength:?];
    [v4 decodeDoubleForKey:@"arrowHeadWidth"];
    [(AKArrowShapeAnnotation *)v5 setArrowHeadWidth:?];
    [v4 decodeDoubleForKey:@"arrowLineWidth"];
    [(AKArrowShapeAnnotation *)v5 setArrowLineWidth:?];
  }

  return v5;
}

@end