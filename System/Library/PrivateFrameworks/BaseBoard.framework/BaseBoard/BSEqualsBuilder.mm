@interface BSEqualsBuilder
+ (id)builder;
+ (id)builderWithObject:(id)object ofExpectedClass:(Class)class;
- (BSEqualsBuilder)init;
- (id)appendArray:(id)array counterpart:(id)counterpart;
- (id)appendBool:(BOOL)bool counterpart:(id)counterpart;
- (id)appendCGAffineTransform:(CGAffineTransform *)transform counterpart:(id)counterpart;
- (id)appendCGFloat:(double)float counterpart:(id)counterpart;
- (id)appendCGPoint:(CGPoint)point counterpart:(id)counterpart;
- (id)appendCGRect:(CGRect)rect counterpart:(id)counterpart;
- (id)appendCGSize:(CGSize)size counterpart:(id)counterpart;
- (id)appendClass:(Class)class counterpart:(id)counterpart;
- (id)appendDouble:(double)double counterpart:(id)counterpart;
- (id)appendEqualsBlocks:(id)blocks;
- (id)appendFloat:(float)float counterpart:(id)counterpart;
- (id)appendInt64:(int64_t)int64 counterpart:(id)counterpart;
- (id)appendInteger:(int64_t)integer counterpart:(id)counterpart;
- (id)appendObject:(id)object counterpart:(id)counterpart;
- (id)appendPointer:(void *)pointer counterpart:(id)counterpart;
- (id)appendSizeT:(unint64_t)t counterpart:(id)counterpart;
- (id)appendString:(id)string counterpart:(id)counterpart;
- (id)appendUnsignedInteger:(unint64_t)integer counterpart:(id)counterpart;
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

+ (id)builderWithObject:(id)object ofExpectedClass:(Class)class
{
  objectCopy = object;
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

- (id)appendEqualsBlocks:(id)blocks
{
  blocksCopy = blocks;
  v5 = blocksCopy;
  if (blocksCopy && self->_equal)
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
      v7 = blocksCopy;
    }

    v5 = v7;
  }

  return self;
}

- (id)appendBool:(BOOL)bool counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = (*(counterpartCopy + 2))(counterpartCopy) ^ bool ^ 1;
  }

  return self;
}

- (id)appendInt64:(int64_t)int64 counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = (*(counterpartCopy + 2))(counterpartCopy) == int64;
  }

  return self;
}

- (id)appendInteger:(int64_t)integer counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = (*(counterpartCopy + 2))(counterpartCopy) == integer;
  }

  return self;
}

- (id)appendUnsignedInteger:(unint64_t)integer counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = (*(counterpartCopy + 2))(counterpartCopy) == integer;
  }

  return self;
}

- (id)appendSizeT:(unint64_t)t counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = (*(counterpartCopy + 2))(counterpartCopy) == t;
  }

  return self;
}

- (id)appendFloat:(float)float counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = vabds_f32(float, (*(counterpartCopy + 2))(counterpartCopy)) < 0.00000011921;
  }

  return self;
}

- (id)appendDouble:(double)double counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = vabdd_f64(double, (*(counterpartCopy + 2))(counterpartCopy)) < 2.22044605e-16;
  }

  return self;
}

- (id)appendCGFloat:(double)float counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = vabdd_f64(float, (*(counterpartCopy + 2))(counterpartCopy)) < 2.22044605e-16;
  }

  return self;
}

- (id)appendCGPoint:(CGPoint)point counterpart:(id)counterpart
{
  y = point.y;
  x = point.x;
  counterpartCopy = counterpart;
  v8 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    v9 = vabdd_f64(x, (*(counterpartCopy + 2))(counterpartCopy)) < 2.22044605e-16;
    if (vabdd_f64(y, v10) >= 2.22044605e-16)
    {
      v9 = 0;
    }

    self->_equal = v9;
  }

  return self;
}

- (id)appendCGSize:(CGSize)size counterpart:(id)counterpart
{
  height = size.height;
  width = size.width;
  counterpartCopy = counterpart;
  v8 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    v9 = vabdd_f64(width, (*(counterpartCopy + 2))(counterpartCopy)) < 2.22044605e-16;
    if (vabdd_f64(height, v10) >= 2.22044605e-16)
    {
      v9 = 0;
    }

    self->_equal = v9;
  }

  return self;
}

- (id)appendCGRect:(CGRect)rect counterpart:(id)counterpart
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  counterpartCopy = counterpart;
  v10 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    v11 = (*(counterpartCopy + 2))(counterpartCopy);
    self->_equal = BSRectEqualToRect(x, y, width, height, v11, v12, v13, v14);
  }

  return self;
}

- (id)appendCGAffineTransform:(CGAffineTransform *)transform counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    (*(counterpartCopy + 2))(&t2, counterpartCopy);
    v8 = *&transform->c;
    *&v10.a = *&transform->a;
    *&v10.c = v8;
    *&v10.tx = *&transform->tx;
    self->_equal = CGAffineTransformEqualToTransform(&v10, &t2);
  }

  return self;
}

- (id)appendClass:(Class)class counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = (*(counterpartCopy + 2))(counterpartCopy) == class;
  }

  return self;
}

- (id)appendObject:(id)object counterpart:(id)counterpart
{
  objectCopy = object;
  counterpartCopy = counterpart;
  v8 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    v9 = (*(counterpartCopy + 2))(counterpartCopy);
    if (v9 == objectCopy)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (objectCopy && v9)
      {
        v10 = [objectCopy isEqual:v9];
      }
    }

    self->_equal = v10;
  }

  return self;
}

- (id)appendPointer:(void *)pointer counterpart:(id)counterpart
{
  counterpartCopy = counterpart;
  v7 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    self->_equal = (*(counterpartCopy + 2))(counterpartCopy) == pointer;
  }

  return self;
}

- (id)appendString:(id)string counterpart:(id)counterpart
{
  stringCopy = string;
  counterpartCopy = counterpart;
  v8 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    v9 = (*(counterpartCopy + 2))(counterpartCopy);
    if (v9 == stringCopy)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (stringCopy && v9)
      {
        v10 = [stringCopy isEqualToString:v9];
      }
    }

    self->_equal = v10;
  }

  return self;
}

- (id)appendArray:(id)array counterpart:(id)counterpart
{
  arrayCopy = array;
  counterpartCopy = counterpart;
  v8 = counterpartCopy;
  if (counterpartCopy && self->_equal)
  {
    v9 = (*(counterpartCopy + 2))(counterpartCopy);
    self->_equal = [arrayCopy isEqualToArray:v9];
  }

  return self;
}

@end