@interface PKEraserTool
+ (CGFloat)defaultWidthForEraserType:(PKEraserType)eraserType;
+ (CGFloat)maximumWidthForEraserType:(PKEraserType)eraserType;
+ (CGFloat)minimumWidthForEraserType:(PKEraserType)eraserType;
- (BOOL)_isFixedWidthBitmap;
- (CGFloat)width;
- (PKEraserTool)initWithEraserType:(PKEraserType)eraserType;
- (PKEraserTool)initWithEraserType:(PKEraserType)eraserType width:(CGFloat)width;
- (PKEraserTool)initWithEraserType:(int64_t)a3 weight:(double)a4;
- (PKEraserType)eraserType;
- (double)_weight;
- (void)setWidth:(double)a3;
@end

@implementation PKEraserTool

- (PKEraserTool)initWithEraserType:(PKEraserType)eraserType
{
  v4 = PKEraserInkForTypeAndWeight(eraserType, NAN);
  v7.receiver = self;
  v7.super_class = PKEraserTool;
  v5 = [(PKTool *)&v7 _initWithInk:v4];

  return v5;
}

- (PKEraserTool)initWithEraserType:(int64_t)a3 weight:(double)a4
{
  v5 = PKEraserInkForTypeAndWeight(a3, a4);
  v8.receiver = self;
  v8.super_class = PKEraserTool;
  v6 = [(PKTool *)&v8 _initWithInk:v5];

  return v6;
}

- (PKEraserTool)initWithEraserType:(PKEraserType)eraserType width:(CGFloat)width
{
  [PKInkingTool _weightForWidth:@"com.apple.ink.eraser" type:width];
  v7 = PKEraserInkForTypeAndWeight(eraserType, v6);
  v10.receiver = self;
  v10.super_class = PKEraserTool;
  v8 = [(PKTool *)&v10 _initWithInk:v7];

  return v8;
}

- (BOOL)_isFixedWidthBitmap
{
  v3 = [(PKTool *)self ink];
  v4 = [v3 identifier];
  if ([v4 isEqualToString:@"com.apple.ink.eraser"])
  {
    v5 = [(PKTool *)self ink];
    v6 = [v5 version] > 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGFloat)width
{
  if (![(PKEraserTool *)self _isFixedWidthBitmap])
  {
    return 0.0;
  }

  v3 = [(PKTool *)self ink];
  [v3 weight];
  [PKInkingTool _widthForWeight:@"com.apple.ink.eraser" type:?];
  v5 = v4;

  return v5;
}

- (void)setWidth:(double)a3
{
  if ([(PKEraserTool *)self _isFixedWidthBitmap])
  {
    v7 = [(PKTool *)self ink];
    [v7 weight];
    [PKInkingTool _weightForWidth:@"com.apple.ink.eraser" type:?];
    v5 = v4;
    v6 = [(PKTool *)self ink];
    [v6 setWeight:v5];
  }
}

+ (CGFloat)defaultWidthForEraserType:(PKEraserType)eraserType
{
  if (eraserType != PKEraserTypeFixedWidthBitmap)
  {
    return 0.0;
  }

  [PKInkingTool defaultWidthForInkType:@"com.apple.ink.eraser"];
  return result;
}

+ (CGFloat)minimumWidthForEraserType:(PKEraserType)eraserType
{
  if (eraserType != PKEraserTypeFixedWidthBitmap)
  {
    return 0.0;
  }

  [PKInkingTool minimumWidthForInkType:@"com.apple.ink.eraser"];
  return result;
}

+ (CGFloat)maximumWidthForEraserType:(PKEraserType)eraserType
{
  if (eraserType != PKEraserTypeFixedWidthBitmap)
  {
    return 0.0;
  }

  [PKInkingTool maximumWidthForInkType:@"com.apple.ink.eraser"];
  return result;
}

- (double)_weight
{
  v2 = [(PKTool *)self ink];
  if ([v2 version] < 4)
  {
    v4 = NAN;
  }

  else
  {
    [v2 weight];
    v4 = v3;
  }

  return v4;
}

- (PKEraserType)eraserType
{
  v3 = [(PKTool *)self ink];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:@"com.apple.ink.objectEraser"];

  if (v5)
  {
    return 0;
  }

  if ([(PKEraserTool *)self _isFixedWidthBitmap])
  {
    return 2;
  }

  return 1;
}

@end