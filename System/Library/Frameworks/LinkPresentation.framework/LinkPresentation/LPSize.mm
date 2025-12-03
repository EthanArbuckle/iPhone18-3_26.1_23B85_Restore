@interface LPSize
- (BOOL)isEmpty;
- (CGSize)asSize;
- (LPSize)init;
- (LPSize)initWithSize:(CGSize)size;
- (LPSize)initWithSquarePoints:(id)points;
- (LPSize)initWithSquareSize:(double)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)scaledBy:(double)by;
@end

@implementation LPSize

- (LPSize)init
{
  v9.receiver = self;
  v9.super_class = LPSize;
  v2 = [(LPSize *)&v9 init];
  if (v2)
  {
    v3 = +[LPPointUnit zero];
    width = v2->_width;
    v2->_width = v3;

    v5 = +[LPPointUnit zero];
    height = v2->_height;
    v2->_height = v5;

    v7 = v2;
  }

  return v2;
}

- (LPSize)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = LPSize;
  v5 = [(LPSize *)&v12 init];
  if (v5)
  {
    v6 = [[LPPointUnit alloc] initWithValue:width];
    v7 = v5->_width;
    v5->_width = v6;

    if (width == height)
    {
      v8 = v5->_width;
    }

    else
    {
      v8 = [[LPPointUnit alloc] initWithValue:height];
    }

    v9 = v5->_height;
    v5->_height = v8;

    v10 = v5;
  }

  return v5;
}

- (LPSize)initWithSquareSize:(double)size
{
  v9.receiver = self;
  v9.super_class = LPSize;
  v4 = [(LPSize *)&v9 init];
  if (v4)
  {
    v5 = [[LPPointUnit alloc] initWithValue:size];
    width = v4->_width;
    v4->_width = v5;

    objc_storeStrong(&v4->_height, v4->_width);
    v7 = v4;
  }

  return v4;
}

- (LPSize)initWithSquarePoints:(id)points
{
  pointsCopy = points;
  v10.receiver = self;
  v10.super_class = LPSize;
  v6 = [(LPSize *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_width, points);
    objc_storeStrong(&v7->_height, points);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPSize allocWithZone:zone];
  p_isa = &v4->super.isa;
  if (v4)
  {
    objc_storeStrong(&v4->_width, self->_width);
    objc_storeStrong(p_isa + 2, self->_height);
    v6 = p_isa;
  }

  return p_isa;
}

- (CGSize)asSize
{
  [(LPPointUnit *)self->_width value];
  v4 = v3;
  [(LPPointUnit *)self->_height value];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (BOOL)isEmpty
{
  [(LPPointUnit *)self->_width value];
  if (v3 == 0.0)
  {
    return 1;
  }

  [(LPPointUnit *)self->_height value];
  return v4 == 0.0;
}

- (id)scaledBy:(double)by
{
  v5 = [LPSize alloc];
  [(LPPointUnit *)self->_width value];
  v7 = v6 * by;
  [(LPPointUnit *)self->_height value];
  v9 = [(LPSize *)v5 initWithSize:v7, v8 * by];

  return v9;
}

@end