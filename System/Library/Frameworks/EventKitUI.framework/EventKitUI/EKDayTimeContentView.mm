@interface EKDayTimeContentView
- (EKDayTimeContentView)init;
- (_NSRange)hourRange;
- (void)drawRect:(CGRect)a3;
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
    v4 = [(EKDayTimeContentView *)v2 layer];
    [v4 setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [v4 setNeedsDisplay];
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

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  owner = self->_owner;
  v10 = [(EKDayTimeContentView *)self hourRange];

  [(EKDayTimeView *)owner drawRect:self forContentView:v10 withHourRange:v9, x, y, width, height];
}

@end