@interface AKHeartAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
- (AKHeartAnnotation)initWithCoder:(id)coder;
- (CGRect)hitTestBounds;
- (id)displayName;
- (id)keysForValuesToObserveForAdornments;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKHeartAnnotation

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Heart" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if (![keyCopy isEqualToString:@"verticallyFlipped"] || (+[AKController akBundle](AKController, "akBundle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localizedStringForKey:value:table:", @"Bounds", &stru_28519E870, @"AnnotationStrings"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___AKHeartAnnotation;
    v6 = objc_msgSendSuper2(&v8, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
  }

  return v6;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKHeartAnnotation;
  keysForValuesToObserveForUndo = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BAD28];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKHeartAnnotation;
  keysForValuesToObserveForRedrawing = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BAD40];

  return v4;
}

- (id)keysForValuesToObserveForAdornments
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKHeartAnnotation;
  keysForValuesToObserveForAdornments = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForAdornments];
  v4 = [v2 setWithSet:keysForValuesToObserveForAdornments];

  [v4 addObjectsFromArray:&unk_2851BAD58];

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
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v32 = CGRectInset(v31, v12, v14);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  [(AKStrokedAnnotation *)self strokeWidth];
  v20 = v19 * -0.5;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v34 = CGRectInset(v33, v20, v20);
  v21 = v34.origin.x;
  v22 = v34.origin.y;
  v23 = v34.size.width;
  v24 = v34.size.height;
  [(AKRectangularShapeAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:v21 angle:v22, v23, v24, v25];
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AKHeartAnnotation;
  coderCopy = coder;
  [(AKRectangularShapeAnnotation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[AKHeartAnnotation verticallyFlipped](self forKey:{"verticallyFlipped", v5.receiver, v5.super_class), @"verticallyFlipped"}];
}

- (AKHeartAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AKHeartAnnotation;
  v5 = [(AKRectangularShapeAnnotation *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    -[AKHeartAnnotation setVerticallyFlipped:](v5, "setVerticallyFlipped:", [coderCopy decodeBoolForKey:@"verticallyFlipped"]);
  }

  return v5;
}

@end