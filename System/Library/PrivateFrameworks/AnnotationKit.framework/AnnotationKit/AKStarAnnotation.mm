@interface AKStarAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKStarAnnotation)initWithCoder:(id)a3;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKStarAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKStarAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAB18];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___AKStarAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAB30];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v4 = a3;
  if (![v4 isEqualToString:@"innerRadiusFactor"] || (+[AKController akBundle](AKController, "akBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Inner Radius", &stru_28519E870, @"AnnotationStrings"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___AKStarAnnotation;
    v6 = objc_msgSendSuper2(&v8, sel_displayNameForUndoablePropertyChangeWithKey_, v4);
  }

  return v6;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Star" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStarAnnotation;
  v3 = [(AKPolygonAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAB48];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStarAnnotation;
  v3 = [(AKPolygonAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAB60];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStarAnnotation;
  v3 = [(AKPolygonAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAB78];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AKStarAnnotation;
  v4 = a3;
  [(AKPolygonAnnotation *)&v5 encodeWithCoder:v4];
  [(AKStarAnnotation *)self innerRadiusFactor:v5.receiver];
  [v4 encodeDouble:@"innerRadiusFactor" forKey:?];
}

- (AKStarAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AKStarAnnotation;
  v5 = [(AKPolygonAnnotation *)&v7 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"innerRadiusFactor"];
    [(AKStarAnnotation *)v5 setInnerRadiusFactor:?];
  }

  return v5;
}

@end