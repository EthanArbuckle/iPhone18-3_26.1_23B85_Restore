@interface GCDeviceCursor
- (CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation GCDeviceCursor

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_frame = &self->_frame;
  if (!CGRectEqualToRect(frame, self->_frame))
  {
    p_frame->origin.x = x;
    p_frame->origin.y = y;
    p_frame->size.width = width;
    p_frame->size.height = height;
    xAxis = [(GCControllerDirectionPad *)self xAxis];
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinX = CGRectGetMinX(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MaxX = CGRectGetMaxX(v19);
    *&v12 = MaxX;
    *&MaxX = MinX;
    [xAxis setMinValue:MaxX andMaxValue:v12];

    yAxis = [(GCControllerDirectionPad *)self yAxis];
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinY(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MaxY = CGRectGetMaxY(v21);
    *&v15 = MaxY;
    *&MaxY = MinY;
    [yAxis setMinValue:MaxY andMaxValue:v15];
  }
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