@interface PKShape
+ (id)snapToShapeActionNameForNumShapes:(unint64_t)shapes;
- (PKShape)initWithShapeType:(int64_t)type strokes:(id)strokes originalStroke:(id)stroke;
@end

@implementation PKShape

- (PKShape)initWithShapeType:(int64_t)type strokes:(id)strokes originalStroke:(id)stroke
{
  strokesCopy = strokes;
  strokeCopy = stroke;
  v14.receiver = self;
  v14.super_class = PKShape;
  v11 = [(PKShape *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_strokes, strokes);
    objc_storeStrong(&v12->_originalStroke, stroke);
  }

  return v12;
}

+ (id)snapToShapeActionNameForNumShapes:(unint64_t)shapes
{
  v4 = _PencilKitBundle();
  v5 = v4;
  if (shapes > 1)
  {
    v6 = @"Snap to Shapes";
  }

  else
  {
    v6 = @"Snap to Shape";
  }

  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  return v7;
}

@end