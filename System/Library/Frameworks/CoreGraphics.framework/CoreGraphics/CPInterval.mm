@interface CPInterval
- (BOOL)contains:(id)contains;
- (BOOL)intersects:(id)intersects;
- (id)initLeft:(double)left right:(double)right;
- (void)add:(id)add;
@end

@implementation CPInterval

- (BOOL)contains:(id)contains
{
  [contains normalizedBounds];
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

- (void)add:(id)add
{
  right = self->right;
  self->left = fmin(self->left, *(add + 1));
  self->right = fmax(right, *(add + 2));
}

- (BOOL)intersects:(id)intersects
{
  right = self->right;
  v4 = *(intersects + 1);
  if (right < v4)
  {
    v5 = v4 - right;
    return v5 <= 10.0;
  }

  left = self->left;
  v7 = *(intersects + 2);
  if (left > v7)
  {
    v5 = left - v7;
    return v5 <= 10.0;
  }

  return 1;
}

- (id)initLeft:(double)left right:(double)right
{
  v7.receiver = self;
  v7.super_class = CPInterval;
  result = [(CPInterval *)&v7 init];
  if (result)
  {
    *(result + 1) = left;
    *(result + 2) = right;
  }

  return result;
}

@end