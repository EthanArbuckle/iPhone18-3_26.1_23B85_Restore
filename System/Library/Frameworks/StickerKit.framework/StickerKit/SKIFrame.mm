@interface SKIFrame
- (SKIFrame)initWithStart:(double)a3 duration:(double)a4 image:(id)a5;
- (double)end;
- (int64_t)comparisonForTimeInterval:(double)a3;
@end

@implementation SKIFrame

- (SKIFrame)initWithStart:(double)a3 duration:(double)a4 image:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SKIFrame;
  v10 = [(SKIFrame *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_start = a3;
    v10->_duration = a4;
    objc_storeStrong(&v10->_image, a5);
    v11->_end = v11->_start + v11->_duration;
  }

  return v11;
}

- (double)end
{
  [(SKIFrame *)self start];
  v4 = v3;
  [(SKIFrame *)self duration];
  return v4 + v5;
}

- (int64_t)comparisonForTimeInterval:(double)a3
{
  if (self->_start > a3)
  {
    return 1;
  }

  if (self->_end >= a3)
  {
    return 0;
  }

  return -1;
}

@end