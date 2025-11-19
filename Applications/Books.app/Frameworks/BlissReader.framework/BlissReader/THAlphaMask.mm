@interface THAlphaMask
- (BOOL)testPoint:(CGPoint)a3;
- (CGSize)p_maxSizeForResolution:(int)a3 naturalSize:(CGSize)result;
- (THAlphaMask)initWithSize:(CGSize)a3 resolution:(int)a4 renderBlock:(id)a5;
- (void)dealloc;
@end

@implementation THAlphaMask

- (THAlphaMask)initWithSize:(CGSize)a3 resolution:(int)a4 renderBlock:(id)a5
{
  v6 = *&a4;
  height = a3.height;
  width = a3.width;
  v23.receiver = self;
  v23.super_class = THAlphaMask;
  v9 = [(THAlphaMask *)&v23 init];
  v10 = v9;
  if (v9)
  {
    [(THAlphaMask *)v9 p_maxSizeForResolution:v6 naturalSize:width, height];
    v13 = fmin(v11 / width, v12 / height);
    TSDMultiplySizeScalar();
    TSDCeilSize();
    v15 = v14;
    v17 = v16;
    v18 = TSDBitmapContextCreate();
    v10->_bitmapContext = v18;
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = v15;
    v24.size.height = v17;
    CGContextClearRect(v18, v24);
    CGContextScaleCTM(v10->_bitmapContext, v13, v13);
    if (a5)
    {
      (*(a5 + 2))(a5, v10->_bitmapContext);
    }

    CGAffineTransformMakeScale(&v22, v13, v13);
    v20 = *&v22.c;
    v19 = *&v22.tx;
    *&v10->_naturalToBitmapTransform.a = *&v22.a;
    *&v10->_naturalToBitmapTransform.c = v20;
    *&v10->_naturalToBitmapTransform.tx = v19;
  }

  return v10;
}

- (void)dealloc
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CGContextRelease(bitmapContext);
  }

  v4.receiver = self;
  v4.super_class = THAlphaMask;
  [(THAlphaMask *)&v4 dealloc];
}

- (BOOL)testPoint:(CGPoint)a3
{
  if (!self->_bitmapContext)
  {
    y = a3.y;
    x = a3.x;
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    a3.y = y;
    a3.x = x;
    if (!self->_bitmapContext)
    {
      return 0;
    }
  }

  v4 = vmovn_s64(vcgezq_f64(vaddq_f64(*&self->_naturalToBitmapTransform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_naturalToBitmapTransform.c, a3.y), *&self->_naturalToBitmapTransform.a, a3.x))));
  if ((v4.i32[0] & v4.i32[1] & 1) == 0)
  {
    return 0;
  }

  TSURound();
  v6 = v5;
  TSURound();
  v8 = v7;
  if (CGBitmapContextGetHeight(self->_bitmapContext) <= v6 || CGBitmapContextGetWidth(self->_bitmapContext) <= v8)
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(self->_bitmapContext);
  return *(CGBitmapContextGetData(self->_bitmapContext) + BytesPerRow * v6 + v8) != 0;
}

- (CGSize)p_maxSizeForResolution:(int)a3 naturalSize:(CGSize)result
{
  if (a3 == 2)
  {
    v4 = 64.0;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v4 = 640.0;
LABEL_7:
    result.height = v4;
    result.width = v4;
    return result;
  }

  if (a3)
  {
    result.width = CGSizeZero.width;
    result.height = CGSizeZero.height;
  }

  return result;
}

@end