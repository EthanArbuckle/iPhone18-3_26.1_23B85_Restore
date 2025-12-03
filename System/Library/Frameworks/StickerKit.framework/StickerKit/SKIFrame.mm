@interface SKIFrame
- (SKIFrame)initWithStart:(double)start duration:(double)duration image:(id)image;
- (double)end;
- (int64_t)comparisonForTimeInterval:(double)interval;
@end

@implementation SKIFrame

- (SKIFrame)initWithStart:(double)start duration:(double)duration image:(id)image
{
  imageCopy = image;
  v13.receiver = self;
  v13.super_class = SKIFrame;
  v10 = [(SKIFrame *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_start = start;
    v10->_duration = duration;
    objc_storeStrong(&v10->_image, image);
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

- (int64_t)comparisonForTimeInterval:(double)interval
{
  if (self->_start > interval)
  {
    return 1;
  }

  if (self->_end >= interval)
  {
    return 0;
  }

  return -1;
}

@end