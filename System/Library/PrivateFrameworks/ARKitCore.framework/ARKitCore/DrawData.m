@interface DrawData
- (DrawData)initWithPosition:(float)a3 size:(Color)a4 color:;
@end

@implementation DrawData

- (DrawData)initWithPosition:(float)a3 size:(Color)a4 color:
{
  v5 = *&a4.red;
  v6 = v4;
  v8 = *&a3;
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