@interface CBSpacerView
+ (id)spacerViewWithHeight:(double)a3;
- (CBSpacerView)initWithHeight:(double)a3;
- (CGSize)intrinsicContentSize;
@end

@implementation CBSpacerView

+ (id)spacerViewWithHeight:(double)a3
{
  v3 = [[CBSpacerView alloc] initWithHeight:a3];

  return v3;
}

- (CBSpacerView)initWithHeight:(double)a3
{
  v5.receiver = self;
  v5.super_class = CBSpacerView;
  result = [(CBSpacerView *)&v5 init];
  if (result)
  {
    result->_height = a3;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CBSpacerView *)self height];
  v3 = v2;
  v4 = 0.0;
  result.height = v3;
  result.width = v4;
  return result;
}

@end