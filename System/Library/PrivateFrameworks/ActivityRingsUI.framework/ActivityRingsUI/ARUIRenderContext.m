@interface ARUIRenderContext
- (ARUIRenderContext)initWithDrawableSize:(ARUIRenderContext *)self;
- (ARUIRenderContext)initWithSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ARUIRenderContext

- (unint64_t)hash
{
  v3 = +[ARUIHashBuilder builder];
  [v3 appendFloat2:*&self->_drawableSize[4]];
  [v3 appendBool:LOBYTE(self->_screenScale)];
  v4 = [v3 hash];

  return v4;
}

- (ARUIRenderContext)initWithSize:(CGSize)a3
{
  width = a3.width;
  height = a3.height;
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  *&v5 = v5;
  v9 = *&v5;

  v6.f64[0] = width;
  v6.f64[1] = height;
  v7 = COERCE_DOUBLE(vmul_n_f32(vcvt_f32_f64(v6), v9));

  return [(ARUIRenderContext *)self initWithDrawableSize:v7];
}

- (ARUIRenderContext)initWithDrawableSize:(ARUIRenderContext *)self
{
  v14 = v2;
  v15.receiver = self;
  v15.super_class = ARUIRenderContext;
  v3 = [(ARUIRenderContext *)&v15 init];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    *&v5 = v5;
    *v3->_drawableSize = LODWORD(v5);

    *&v3->_drawableSize[4] = v14;
    LOWORD(v3->_screenScale) = 1;
    if (ARUIFloatEqual(*&v14, *(&v14 + 1)))
    {
      LODWORD(v3->_drawableDiameter) = v14;
      v6 = MEMORY[0x1E69E9B18];
      v7 = *(MEMORY[0x1E69E9B18] + 16);
      *&v3->_anon_10[4] = *MEMORY[0x1E69E9B18];
      *&v3->_anon_10[20] = v7;
      v8 = *(v6 + 48);
      *&v3->_anon_10[36] = *(v6 + 32);
      *&v3->_anon_10[52] = v8;
    }

    else
    {
      if (ARUIFloatGreater(*(&v14 + 1), *&v14))
      {
        LODWORD(v3->_drawableDiameter) = v14;
        *&v9 = matrix_float4x4_scale_y();
      }

      else
      {
        v3->_drawableDiameter = *(&v14 + 1);
        matrix_float4x4_scale_x();
      }

      *&v3->_anon_10[4] = v9;
      *&v3->_anon_10[20] = v10;
      *&v3->_anon_10[36] = v11;
      *&v3->_anon_10[52] = v12;
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = *&self->_drawableSize[4];
    [v5 drawableSize];
    if (ARUIFloat2Equal(v6, v7))
    {
      screenScale_low = LOBYTE(self->_screenScale);
      v9 = screenScale_low == [v5 opaque];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:LOBYTE(self->_screenScale) withName:@"opaque"];
  v5 = [v3 appendFloat:@"drawableSize.x" withName:COERCE_FLOAT(*&self->_drawableSize[4])];
  v6 = [v3 appendFloat:@"drawableSize.y" withName:*&self->_drawableSize[8]];
  v7 = [v3 appendFloat:@"screenScale" withName:*self->_drawableSize];
  v8 = [v3 appendBool:BYTE1(self->_screenScale) withName:@"presentsWithTransaction"];
  v9 = [v3 build];

  return v9;
}

@end