@interface AKRedactionRectAnnotation
- (AKRedactionRectAnnotation)init;
- (AKRedactionRectAnnotation)initWithCoder:(id)a3;
- (CGRect)hitTestBounds;
- (id)displayName;
- (id)keysForValuesToObserveForRedrawing;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKRedactionRectAnnotation

- (AKRedactionRectAnnotation)init
{
  v5.receiver = self;
  v5.super_class = AKRedactionRectAnnotation;
  v2 = [(AKRectangularShapeAnnotation *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] blackColor];
    [(AKShapeAnnotation *)v2 setFillColor:v3];

    [(AKRedactionRectAnnotation *)v2 setIsOpaque:1];
  }

  return v2;
}

- (id)displayName
{
  v2 = +[AKController akBundle];
  v3 = [v2 localizedStringForKey:@"Redaction" value:&stru_28519E870 table:@"AnnotationStrings"];

  return v3;
}

- (id)keysForValuesToObserveForRedrawing
{
  v2 = MEMORY[0x277CBEB58];
  v6.receiver = self;
  v6.super_class = AKRedactionRectAnnotation;
  v3 = [(AKRectangularShapeAnnotation *)&v6 keysForValuesToObserveForRedrawing];
  v4 = [v2 setWithSet:v3];

  [v4 addObjectsFromArray:&unk_2851BB1C0];

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
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v26 = CGRectInset(v25, v12, v14);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  [(AKRectangularShapeAnnotation *)self rotationAngle];

  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v19];
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AKRedactionRectAnnotation;
  v4 = a3;
  [(AKRectangularShapeAnnotation *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[AKRedactionRectAnnotation isOpaque](self forKey:{"isOpaque", v5.receiver, v5.super_class), @"isOpaque"}];
  [v4 encodeBool:-[AKRedactionRectAnnotation isOpaque](self forKey:{"isOpaque"), @"isHighlighted"}];
}

- (AKRedactionRectAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AKRedactionRectAnnotation;
  v5 = [(AKRectangularShapeAnnotation *)&v7 initWithCoder:v4];
  if (v5)
  {
    -[AKRedactionRectAnnotation setIsOpaque:](v5, "setIsOpaque:", [v4 decodeBoolForKey:@"isOpaque"]);
    -[AKRedactionRectAnnotation setIsOpaque:](v5, "setIsOpaque:", [v4 decodeBoolForKey:@"isHighlighted"]);
  }

  return v5;
}

@end