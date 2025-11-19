@interface BSEqualsBuilder
+ (id)builder;
+ (id)builderWithObject:(id)a3 ofExpectedClass:(Class)a4;
- (BSEqualsBuilder)init;
- (id)appendArray:(id)a3 counterpart:(id)a4;
- (id)appendBool:(BOOL)a3 counterpart:(id)a4;
- (id)appendCGAffineTransform:(CGAffineTransform *)a3 counterpart:(id)a4;
- (id)appendCGFloat:(double)a3 counterpart:(id)a4;
- (id)appendCGPoint:(CGPoint)a3 counterpart:(id)a4;
- (id)appendCGRect:(CGRect)a3 counterpart:(id)a4;
- (id)appendCGSize:(CGSize)a3 counterpart:(id)a4;
- (id)appendClass:(Class)a3 counterpart:(id)a4;
- (id)appendDouble:(double)a3 counterpart:(id)a4;
- (id)appendEqualsBlocks:(id)a3;
- (id)appendFloat:(float)a3 counterpart:(id)a4;
- (id)appendInt64:(int64_t)a3 counterpart:(id)a4;
- (id)appendInteger:(int64_t)a3 counterpart:(id)a4;
- (id)appendObject:(id)a3 counterpart:(id)a4;
- (id)appendPointer:(void *)a3 counterpart:(id)a4;
- (id)appendSizeT:(unint64_t)a3 counterpart:(id)a4;
- (id)appendString:(id)a3 counterpart:(id)a4;
- (id)appendUnsignedInteger:(unint64_t)a3 counterpart:(id)a4;
@end

@implementation BSEqualsBuilder

+ (id)builder
{
  v2 = [BSEqualsBuilder alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = BSEqualsBuilder;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2->_equal = 1;
    }
  }

  return v2;
}

+ (id)builderWithObject:(id)a3 ofExpectedClass:(Class)a4
{
  v4 = a3;
  v5 = [BSEqualsBuilder alloc];
  isKindOfClass = objc_opt_isKindOfClass();
  if (v5)
  {
    v7 = isKindOfClass;
    v10.receiver = v5;
    v10.super_class = BSEqualsBuilder;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    v5 = v8;
    if (v8)
    {
      v8->_equal = v7 & 1;
    }
  }

  return v5;
}

- (BSEqualsBuilder)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = BSEqualsBuilder;
    self = [(BSEqualsBuilder *)&v2 init];
    if (self)
    {
      self->_equal = 1;
    }
  }

  return self;
}

- (id)appendEqualsBlocks:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_equal)
  {
    v10 = &v11;
    if (self->_equal)
    {
      do
      {
        self->_equal = v5[2](v5);
        v6 = v10++;
        v7 = MEMORY[0x193AE5AC0](*v6);

        v8 = !self->_equal || v7 == 0;
        v5 = v7;
      }

      while (!v8);
    }

    else
    {
      v7 = v4;
    }

    v5 = v7;
  }

  return self;
}

- (id)appendBool:(BOOL)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = (*(v6 + 2))(v6) ^ a3 ^ 1;
  }

  return self;
}

- (id)appendInt64:(int64_t)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = (*(v6 + 2))(v6) == a3;
  }

  return self;
}

- (id)appendInteger:(int64_t)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = (*(v6 + 2))(v6) == a3;
  }

  return self;
}

- (id)appendUnsignedInteger:(unint64_t)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = (*(v6 + 2))(v6) == a3;
  }

  return self;
}

- (id)appendSizeT:(unint64_t)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = (*(v6 + 2))(v6) == a3;
  }

  return self;
}

- (id)appendFloat:(float)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = vabds_f32(a3, (*(v6 + 2))(v6)) < 0.00000011921;
  }

  return self;
}

- (id)appendDouble:(double)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = vabdd_f64(a3, (*(v6 + 2))(v6)) < 2.22044605e-16;
  }

  return self;
}

- (id)appendCGFloat:(double)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = vabdd_f64(a3, (*(v6 + 2))(v6)) < 2.22044605e-16;
  }

  return self;
}

- (id)appendCGPoint:(CGPoint)a3 counterpart:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (v7 && self->_equal)
  {
    v9 = vabdd_f64(x, (*(v7 + 2))(v7)) < 2.22044605e-16;
    if (vabdd_f64(y, v10) >= 2.22044605e-16)
    {
      v9 = 0;
    }

    self->_equal = v9;
  }

  return self;
}

- (id)appendCGSize:(CGSize)a3 counterpart:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  if (v7 && self->_equal)
  {
    v9 = vabdd_f64(width, (*(v7 + 2))(v7)) < 2.22044605e-16;
    if (vabdd_f64(height, v10) >= 2.22044605e-16)
    {
      v9 = 0;
    }

    self->_equal = v9;
  }

  return self;
}

- (id)appendCGRect:(CGRect)a3 counterpart:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = v9;
  if (v9 && self->_equal)
  {
    v11 = (*(v9 + 2))(v9);
    self->_equal = BSRectEqualToRect(x, y, width, height, v11, v12, v13, v14);
  }

  return self;
}

- (id)appendCGAffineTransform:(CGAffineTransform *)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    (*(v6 + 2))(&t2, v6);
    v8 = *&a3->c;
    *&v10.a = *&a3->a;
    *&v10.c = v8;
    *&v10.tx = *&a3->tx;
    self->_equal = CGAffineTransformEqualToTransform(&v10, &t2);
  }

  return self;
}

- (id)appendClass:(Class)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = (*(v6 + 2))(v6) == a3;
  }

  return self;
}

- (id)appendObject:(id)a3 counterpart:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && self->_equal)
  {
    v9 = (*(v7 + 2))(v7);
    if (v9 == v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v6 && v9)
      {
        v10 = [v6 isEqual:v9];
      }
    }

    self->_equal = v10;
  }

  return self;
}

- (id)appendPointer:(void *)a3 counterpart:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && self->_equal)
  {
    self->_equal = (*(v6 + 2))(v6) == a3;
  }

  return self;
}

- (id)appendString:(id)a3 counterpart:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && self->_equal)
  {
    v9 = (*(v7 + 2))(v7);
    if (v9 == v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v6 && v9)
      {
        v10 = [v6 isEqualToString:v9];
      }
    }

    self->_equal = v10;
  }

  return self;
}

- (id)appendArray:(id)a3 counterpart:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && self->_equal)
  {
    v9 = (*(v7 + 2))(v7);
    self->_equal = [v6 isEqualToArray:v9];
  }

  return self;
}

@end