@interface CIVector
+ (CIVector)vectorWithCGAffineTransform:(CGAffineTransform *)t;
+ (CIVector)vectorWithCGPoint:(CGPoint)p;
+ (CIVector)vectorWithCGRect:(CGRect)r;
+ (CIVector)vectorWithString:(NSString *)representation;
+ (CIVector)vectorWithValues:(const CGFloat *)values count:(size_t)count;
+ (CIVector)vectorWithX:(CGFloat)x;
+ (CIVector)vectorWithX:(CGFloat)x Y:(CGFloat)y;
+ (CIVector)vectorWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z;
+ (CIVector)vectorWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z W:(CGFloat)w;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)CGAffineTransformValue;
- (CGFloat)W;
- (CGFloat)X;
- (CGFloat)Y;
- (CGFloat)Z;
- (CGFloat)valueAtIndex:(size_t)index;
- (CGPoint)CGPointValue;
- (CGRect)CGRectValue;
- (CIVector)initWithCGPoint:(CGPoint)p;
- (CIVector)initWithCGRect:(CGRect)r;
- (CIVector)initWithCoder:(id)coder;
- (CIVector)initWithString:(NSString *)representation;
- (CIVector)initWithValues:(const CGFloat *)values count:(size_t)count;
- (CIVector)initWithX:(CGFloat)x Y:(CGFloat)y;
- (CIVector)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z;
- (CIVector)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z W:(CGFloat)w;
- (float)_dot:(id)_dot;
- (float)_norm;
- (id)_orthonormalizeTo:(id)to;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CIVector

- (float)_norm
{
  if (self->_count)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      [(CIVector *)self valueAtIndex:v3];
      v4 = v4 + v5 * v5;
      ++v3;
    }

    while (v3 < self->_count);
    v6 = v4;
  }

  else
  {
    v6 = 0.0;
  }

  return sqrtf(v6);
}

- (id)_orthonormalizeTo:(id)to
{
  [to _dot:?];
  v6 = v5;
  if (v5 < 0.000001)
  {
    return self;
  }

  [(CIVector *)self _dot:to];
  v9 = v8 / v6;
  [(CIVector *)self X];
  v11 = v10;
  v12 = v9;
  [(CIVector *)self X];
  v14 = v11 + v9 * v13;
  [(CIVector *)self Y];
  v16 = v15;
  [(CIVector *)self Y];

  return [CIVector vectorWithX:v14 Y:v16 + v12 * v17];
}

- (float)_dot:(id)_dot
{
  [(CIVector *)self X];
  v6 = v5;
  [_dot X];
  v8 = v7;
  [(CIVector *)self Y];
  v10 = v9;
  [_dot Y];
  return v10 * v11 + v6 * v8;
}

+ (CIVector)vectorWithValues:(const CGFloat *)values count:(size_t)count
{
  v4 = [[self alloc] initWithValues:values count:count];

  return v4;
}

+ (CIVector)vectorWithX:(CGFloat)x
{
  v3 = [[self alloc] initWithX:x];

  return v3;
}

+ (CIVector)vectorWithX:(CGFloat)x Y:(CGFloat)y
{
  v4 = [[self alloc] initWithX:x Y:y];

  return v4;
}

+ (CIVector)vectorWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z
{
  v5 = [[self alloc] initWithX:x Y:y Z:z];

  return v5;
}

+ (CIVector)vectorWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z W:(CGFloat)w
{
  v6 = [[self alloc] initWithX:x Y:y Z:z W:w];

  return v6;
}

+ (CIVector)vectorWithCGPoint:(CGPoint)p
{
  v3 = [[self alloc] initWithCGPoint:{p.x, p.y}];

  return v3;
}

+ (CIVector)vectorWithCGRect:(CGRect)r
{
  v3 = [[self alloc] initWithCGRect:{r.origin.x, r.origin.y, r.size.width, r.size.height}];

  return v3;
}

+ (CIVector)vectorWithCGAffineTransform:(CGAffineTransform *)t
{
  v4 = [self alloc];
  v5 = *&t->c;
  v7[0] = *&t->a;
  v7[1] = v5;
  v7[2] = *&t->tx;
  return [v4 initWithCGAffineTransform:v7];
}

+ (CIVector)vectorWithString:(NSString *)representation
{
  v3 = [[self alloc] initWithString:representation];

  return v3;
}

- (CIVector)initWithX:(CGFloat)x Y:(CGFloat)y
{
  v5[2] = *MEMORY[0x1E69E9840];
  *v5 = x;
  *&v5[1] = y;
  return [(CIVector *)self initWithValues:v5 count:2];
}

- (CIVector)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z
{
  v6[3] = *MEMORY[0x1E69E9840];
  *v6 = x;
  *&v6[1] = y;
  *&v6[2] = z;
  return [(CIVector *)self initWithValues:v6 count:3];
}

- (CIVector)initWithX:(CGFloat)x Y:(CGFloat)y Z:(CGFloat)z W:(CGFloat)w
{
  v7[4] = *MEMORY[0x1E69E9840];
  *v7 = x;
  *&v7[1] = y;
  *&v7[2] = z;
  *&v7[3] = w;
  return [(CIVector *)self initWithValues:v7 count:4];
}

- (CIVector)initWithCGPoint:(CGPoint)p
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = p;
  return [(CIVector *)self initWithValues:&v4 count:2];
}

- (CIVector)initWithCGRect:(CGRect)r
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = r;
  return [(CIVector *)self initWithValues:&v4 count:4];
}

- (CIVector)initWithValues:(const CGFloat *)values count:(size_t)count
{
  v12.receiver = self;
  v12.super_class = CIVector;
  v6 = [(CIVector *)&v12 init];
  v7 = v6;
  if (v6 && count)
  {
    if (count >= 0x401)
    {
LABEL_4:

      return 0;
    }

    v6->_count = count;
    if (count > 4)
    {
      v9 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
      v7->_u.ptr = v9;
      if (!v9)
      {
        goto LABEL_4;
      }

      v10 = 0;
      do
      {
        v7->_u.ptr[v10] = values[v10];
        ++v10;
      }

      while (count != v10);
    }

    else
    {
      v8 = 0;
      do
      {
        v6->_u.vec[v8] = values[v8];
        ++v8;
      }

      while (count != v8);
      if ((v8 - 1) <= 2)
      {
        bzero(&v6->_u.vec[count], 32 - 8 * count);
      }
    }
  }

  return v7;
}

- (CIVector)initWithString:(NSString *)representation
{
  v20 = *MEMORY[0x1E69E9840];
  uTF8String = [(NSString *)representation UTF8String];
  if (!uTF8String)
  {

    return [(CIVector *)self init];
  }

  v18 = 0;
  if (*uTF8String == 91)
  {
    v5 = uTF8String + 1;
  }

  else
  {
    v5 = uTF8String;
  }

  v6 = strtod(v5, &v18);
  v7 = v18;
  if (v18 == v5)
  {
    return [(CIVector *)self initWithValues:v19 count:0, v6];
  }

  v8 = v6;
  v9 = 0;
  v10 = 32;
  v11 = v19;
  while (v9 != v10)
  {
    v13 = v11;
LABEL_13:
    v14 = v9 + 1;
    v13[v9] = v8;
    v8 = strtod(v7, &v18);
    ++v9;
    v15 = v18 == v7;
    v7 = v18;
    if (v15)
    {
      goto LABEL_21;
    }
  }

  v12 = malloc_type_malloc(16 * v10, 0x100004000313F17uLL);
  if (v12)
  {
    v13 = v12;
    memcpy(v12, v11, 8 * v10);
    if (v11 != v19)
    {
      free(v11);
    }

    v10 *= 2;
    v7 = v18;
    v11 = v13;
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v9;
LABEL_21:
  v17 = [(CIVector *)self initWithValues:v13 count:v14, v18];
  if (v13 != v19)
  {
    free(v13);
  }

  return v17;
}

- (void)dealloc
{
  if (self->_count >= 5)
  {
    free(self->_u.ptr);
  }

  v3.receiver = self;
  v3.super_class = CIVector;
  [(CIVector *)&v3 dealloc];
}

- (CGFloat)valueAtIndex:(size_t)index
{
  count = self->_count;
  result = 0.0;
  if (count > index)
  {
    p_u = &self->_u;
    if (count > 4)
    {
      v6 = &p_u->ptr[index];
    }

    else
    {
      v6 = &p_u->vec[index];
    }

    return *v6;
  }

  return result;
}

- (CGFloat)X
{
  p_u = &self->_u;
  if (self->_count >= 5)
  {
    p_u = p_u->ptr;
  }

  return p_u->vec[0];
}

- (CGFloat)Y
{
  if (self->_count > 4)
  {
    v2 = self->_u.ptr + 1;
  }

  else
  {
    v2 = &self->_u.vec[1];
  }

  return *v2;
}

- (CGFloat)Z
{
  if (self->_count > 4)
  {
    v2 = self->_u.ptr + 2;
  }

  else
  {
    v2 = &self->_u.vec[2];
  }

  return *v2;
}

- (CGFloat)W
{
  if (self->_count > 4)
  {
    v2 = self->_u.ptr + 3;
  }

  else
  {
    v2 = &self->_u.vec[3];
  }

  return *v2;
}

- (CGPoint)CGPointValue
{
  [(CIVector *)self X];
  v4 = v3;
  [(CIVector *)self Y];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGRect)CGRectValue
{
  [(CIVector *)self X];
  v4 = v3;
  [(CIVector *)self Y];
  v6 = v5;
  [(CIVector *)self Z];
  v8 = v7;
  [(CIVector *)self W];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGAffineTransform)CGAffineTransformValue
{
  [(CIVector *)self X];
  v6 = v5;
  [(CIVector *)self Y];
  v8 = v7;
  [(CIVector *)self Z];
  v10 = v9;
  [(CIVector *)self W];
  v12 = v11;
  [(CIVector *)self valueAtIndex:4];
  v14 = v13;
  result = [(CIVector *)self valueAtIndex:5];
  retstr->a = v6;
  retstr->b = v8;
  retstr->c = v10;
  retstr->d = v12;
  retstr->tx = v14;
  retstr->ty = v16;
  return result;
}

- (id)description
{
  count = self->_count;
  if (count <= 1)
  {
    if (!count)
    {
      return @"[]";
    }

    if (count == 1)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g]", self->_u.ptr, v18, v19, v20];
    }
  }

  else
  {
    switch(count)
    {
      case 2:
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g %g]", self->_u.ptr, *&self->_u.vec[1], v19, v20];
      case 3:
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g %g %g]", self->_u.ptr, *&self->_u.vec[1], *&self->_u.vec[2], v20];
      case 4:
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g %g %g %g]", self->_u.ptr, *&self->_u.vec[1], *&self->_u.vec[2], *&self->_u.vec[3]];
    }
  }

  v5 = MEMORY[0x1E696AEC0];
  [(CIVector *)self X];
  v7 = v6;
  [(CIVector *)self Y];
  v9 = v8;
  [(CIVector *)self Z];
  v11 = v10;
  [(CIVector *)self W];
  v13 = [v5 stringWithFormat:@"[%g %g %g %g", v7, v9, v11, v12];
  if (self->_count >= 5)
  {
    v14 = 5;
    v15 = 4;
    do
    {
      [(CIVector *)self valueAtIndex:v15];
      v13 = [v13 stringByAppendingFormat:@" %g", v16];
      v15 = v14;
    }

    while (self->_count > v14++);
  }

  return [v13 stringByAppendingString:@"]"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      v6 = [equal count];
      if (v6 == self->_count)
      {
        if (v6 > 4)
        {
          ptr = self->_u.ptr;
          v7 = 8 * v6;
          v8 = *(equal + 2);
        }

        else
        {
          v7 = 8 * v6;
          v8 = equal + 16;
          ptr = &self->_u;
        }

        LOBYTE(v5) = memcmp(v8, ptr, v7) == 0;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  count = self->_count;
  p_u = &self->_u;
  if (count >= 5)
  {
    p_u = p_u->ptr;
  }

  else if (!count)
  {
    return 0;
  }

  v5 = self->_count;
  do
  {
    v6 = p_u->vec[0];
    p_u = (p_u + 8);
    LODWORD(v5) = 33 * v5 + vcvtmd_s64_f64(v6 * 1024.0);
    --count;
  }

  while (count);
  return v5;
}

- (CIVector)initWithCoder:(id)coder
{
  v19[64] = *MEMORY[0x1E69E9840];
  if (![coder containsValueForKey:@"CICount"])
  {
    goto LABEL_4;
  }

  v5 = [coder decodeIntForKey:@"CICount"];
  if (v5)
  {
    v6 = v5;
    if (v5 >= 0x401)
    {
LABEL_4:

      return 0;
    }

    if ([coder containsValueForKey:@"CIVector"])
    {
      [coder decodeRectForKey:@"CIVector"];
      v19[0] = v8;
      v19[1] = v9;
      v19[2] = v10;
      v19[3] = v11;
      if (v6 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v6;
      }

      v13 = v19;
      selfCopy2 = self;
    }

    else
    {
      if (v6 >= 0x41)
      {
        v15 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
        if (!v15)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v15 = v19;
      }

      for (i = 0; i != v6; ++i)
      {
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CI_%zu", i];
        [coder decodeFloatForKey:v17];
        *&v15[i] = v18;
      }

      selfCopy2 = self;
      v13 = v15;
      v12 = v6;
    }

    return [(CIVector *)selfCopy2 initWithValues:v13 count:v12];
  }

  return [(CIVector *)self init];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:LODWORD(self->_count) forKey:@"CICount"];
  count = self->_count;
  if (count >= 5)
  {
    v9 = 0;
    do
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CI_%zu", v9];
      v11 = self->_u.ptr[v9];
      *&v11 = v11;
      [coder encodeFloat:v10 forKey:v11];

      ++v9;
    }

    while (v9 < self->_count);
  }

  else if (count)
  {
    v6 = 0;
    do
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CI_%zu", v6];
      v8 = self->_u.vec[v6];
      *&v8 = v8;
      [coder encodeFloat:v7 forKey:v8];

      ++v6;
    }

    while (v6 < self->_count);
  }
}

@end