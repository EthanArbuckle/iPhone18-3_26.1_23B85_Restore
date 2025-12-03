@interface AKStarAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
+ (id)keyPathsForValuesAffectingDrawingBounds;
+ (id)keyPathsForValuesAffectingHitTestBounds;
- (AKStarAnnotation)initWithCoder:(id)coder;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKStarAnnotation

+ (id)keyPathsForValuesAffectingHitTestBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKStarAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingHitTestBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAB18];

  return v4;
}

+ (id)keyPathsForValuesAffectingDrawingBounds
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___AKStarAnnotation;
  v3 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingDrawingBounds);
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BAB30];

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if (![keyCopy isEqualToString:@"innerRadiusFactor"] || (+[AKController akBundle](AKController, "akBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Inner Radius", &stru_28519E870, @"AnnotationStrings"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___AKStarAnnotation;
    v6 = objc_msgSendSuper2(&v8, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
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
  keysForValuesToObserveForUndo = [(AKPolygonAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BAB48];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStarAnnotation;
  keysForValuesToObserveForRedrawing = [(AKPolygonAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BAB60];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKStarAnnotation;
  keysForValuesToObserveForAdornments = [(AKPolygonAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:keysForValuesToObserveForAdornments];

  [v4 addObjectsFromArray:&unk_2851BAB78];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AKStarAnnotation;
  coderCopy = coder;
  [(AKPolygonAnnotation *)&v5 encodeWithCoder:coderCopy];
  [(AKStarAnnotation *)self innerRadiusFactor:v5.receiver];
  [coderCopy encodeDouble:@"innerRadiusFactor" forKey:?];
}

- (AKStarAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AKStarAnnotation;
  v5 = [(AKPolygonAnnotation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"innerRadiusFactor"];
    [(AKStarAnnotation *)v5 setInnerRadiusFactor:?];
  }

  return v5;
}

@end