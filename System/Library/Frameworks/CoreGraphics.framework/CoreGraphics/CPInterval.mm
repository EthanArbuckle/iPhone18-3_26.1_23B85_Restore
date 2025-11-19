@interface CPInterval
- (BOOL)contains:(id)a3;
- (BOOL)intersects:(id)a3;
- (id)initLeft:(double)a3 right:(double)a4;
- (void)add:(id)a3;
@end

@implementation CPInterval

- (BOOL)contains:(id)a3
{
  [a3 normalizedBounds];
  x = v4;
  v9 = v5;
  width = v6;
  v11 = v7;
  if (v6 >= 0.0 && v7 >= 0.0)
  {
    if (v4 >= self->left)
    {
      return x + width <= self->right;
    }

    return 0;
  }

  if (COERCE_DOUBLE(CGRectStandardize(*&v4)) < self->left)
  {
    return 0;
  }

  v13.origin.x = x;
  v13.origin.y = v9;
  v13.size.width = width;
  v13.size.height = v11;
  v14 = CGRectStandardize(v13);
  x = v14.origin.x;
  width = v14.size.width;
  return x + width <= self->right;
}

- (void)add:(id)a3
{
  right = self->right;
  self->left = fmin(self->left, *(a3 + 1));
  self->right = fmax(right, *(a3 + 2));
}

- (BOOL)intersects:(id)a3
{
  right = self->right;
  v4 = *(a3 + 1);
  if (right < v4)
  {
    v5 = v4 - right;
    return v5 <= 10.0;
  }

  left = self->left;
  v7 = *(a3 + 2);
  if (left > v7)
  {
    v5 = left - v7;
    return v5 <= 10.0;
  }

  return 1;
}

- (id)initLeft:(double)a3 right:(double)a4
{
  v7.receiver = self;
  v7.super_class = CPInterval;
  result = [(CPInterval *)&v7 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
  }

  return result;
}

@end