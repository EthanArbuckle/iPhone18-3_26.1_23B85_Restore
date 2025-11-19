@interface THWStageGeometry
- (CGRect)frame;
- (THWStageGeometry)initWithFrame:(CGRect)a3 cornerRadius:(double)a4;
@end

@implementation THWStageGeometry

- (THWStageGeometry)initWithFrame:(CGRect)a3 cornerRadius:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = THWStageGeometry;
  result = [(THWStageGeometry *)&v10 init];
  if (result)
  {
    result->_frame.origin.y = y;
    result->_frame.size.width = width;
    result->_frame.size.height = height;
    result->_cornerRadius = a4;
    result->_frame.origin.x = x;
  }

  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end