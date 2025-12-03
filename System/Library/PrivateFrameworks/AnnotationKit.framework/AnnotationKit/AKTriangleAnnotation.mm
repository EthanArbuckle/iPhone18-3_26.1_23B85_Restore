@interface AKTriangleAnnotation
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key;
- (AKTriangleAnnotation)initWithCoder:(id)coder;
- (CGRect)hitTestBounds;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (id)keysForValuesToObserveForUndo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AKTriangleAnnotation

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = @"Triangle Shape";
    goto LABEL_6;
  }

  if (([keyCopy isEqualToString:@"horizontallyFlipped"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"verticallyFlipped"))
  {
    v5 = @"Bounds";
LABEL_6:
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:v5 value:&stru_28519E870 table:@"AnnotationStrings"];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AKTriangleAnnotation;
  v7 = objc_msgSendSuper2(&v9, sel_displayNameForUndoablePropertyChangeWithKey_, keyCopy);
LABEL_8:

  return v7;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Triangle" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForUndo
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKTriangleAnnotation;
  keysForValuesToObserveForUndo = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForUndo];
  v4 = [v2 setWithSet:keysForValuesToObserveForUndo];

  [v4 addObjectsFromArray:&unk_2851BAF50];

  return v4;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKTriangleAnnotation;
  keysForValuesToObserveForRedrawing = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:keysForValuesToObserveForRedrawing];

  [v4 addObjectsFromArray:&unk_2851BAF68];

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
  v8.receiver = self;
  v8.super_class = AKTriangleAnnotation;
  coderCopy = coder;
  [(AKRectangularShapeAnnotation *)&v8 encodeWithCoder:coderCopy];
  v5 = [(AKTriangleAnnotation *)self path:v8.receiver];
  newCGPathForPlatformBezierPath = [v5 newCGPathForPlatformBezierPath];

  v7 = [MEMORY[0x277CBEA90] encodeCGPath:newCGPathForPlatformBezierPath];
  [coderCopy encodeObject:v7 forKey:@"path"];
  CGPathRelease(newCGPathForPlatformBezierPath);
  [coderCopy encodeBool:-[AKTriangleAnnotation verticallyFlipped](self forKey:{"verticallyFlipped"), @"verticallyFlipped"}];
  [coderCopy encodeBool:-[AKTriangleAnnotation horizontallyFlipped](self forKey:{"horizontallyFlipped"), @"horizontallyFlipped"}];
}

- (AKTriangleAnnotation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AKTriangleAnnotation;
  v5 = [(AKRectangularShapeAnnotation *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v7 = [MEMORY[0x277CBEA90] newCGPathDecodedFromData:v6];
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x277D75208] bezierPathWithCGPath:v7];
      [(AKTriangleAnnotation *)v5 setPath:v9];

      CGPathRelease(v8);
    }

    if ([coderCopy containsValueForKey:@"verticallyFlipped"])
    {
      -[AKTriangleAnnotation setVerticallyFlipped:](v5, "setVerticallyFlipped:", [coderCopy decodeBoolForKey:@"verticallyFlipped"]);
    }

    if ([coderCopy containsValueForKey:@"horizontallyFlipped"])
    {
      -[AKTriangleAnnotation setHorizontallyFlipped:](v5, "setHorizontallyFlipped:", [coderCopy decodeBoolForKey:@"horizontallyFlipped"]);
    }
  }

  return v5;
}

@end