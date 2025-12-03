@interface EKDayTimeContentView
- (EKDayTimeContentView)init;
- (_NSRange)hourRange;
- (void)drawRect:(CGRect)rect;
@end

@implementation EKDayTimeContentView

- (EKDayTimeContentView)init
{
  v6.receiver = self;
  v6.super_class = EKDayTimeContentView;
  v2 = [(EKDayTimeContentView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    layer = [(EKDayTimeContentView *)v2 layer];
    [layer setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [layer setNeedsDisplay];
  }

  return v3;
}

- (_NSRange)hourRange
{
  p_hourRange = &self->_hourRange;
  location = self->_hourRange.location;
  length = p_hourRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  owner = self->_owner;
  hourRange = [(EKDayTimeContentView *)self hourRange];

  [(EKDayTimeView *)owner drawRect:self forContentView:hourRange withHourRange:v9, x, y, width, height];
}

@end