@interface DrawData
- (DrawData)initWithPosition:(float)position size:(Color)size color:;
@end

@implementation DrawData

- (DrawData)initWithPosition:(float)position size:(Color)size color:
{
  v5 = *&size.red;
  v6 = v4;
  v8 = *&position;
  v9.receiver = self;
  v9.super_class = DrawData;
  result = [(DrawData *)&v9 init];
  if (result)
  {
    *result->_position = v8;
    result->_size = v6;
    *&result->_color.red = v5;
    result->_color.blue = BYTE2(v5);
  }

  return result;
}

@end