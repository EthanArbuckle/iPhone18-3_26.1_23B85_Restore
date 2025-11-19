@interface PKShape
+ (id)snapToShapeActionNameForNumShapes:(unint64_t)a3;
- (PKShape)initWithShapeType:(int64_t)a3 strokes:(id)a4 originalStroke:(id)a5;
@end

@implementation PKShape

- (PKShape)initWithShapeType:(int64_t)a3 strokes:(id)a4 originalStroke:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKShape;
  v11 = [(PKShape *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_strokes, a4);
    objc_storeStrong(&v12->_originalStroke, a5);
  }

  return v12;
}

+ (id)snapToShapeActionNameForNumShapes:(unint64_t)a3
{
  v4 = _PencilKitBundle();
  v5 = v4;
  if (a3 > 1)
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