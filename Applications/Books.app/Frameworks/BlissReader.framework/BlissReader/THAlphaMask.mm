@interface THAlphaMask
- (BOOL)testPoint:(CGPoint)point;
- (CGSize)p_maxSizeForResolution:(int)resolution naturalSize:(CGSize)result;
- (THAlphaMask)initWithSize:(CGSize)size resolution:(int)resolution renderBlock:(id)block;
- (void)dealloc;
@end

@implementation THAlphaMask

- (THAlphaMask)initWithSize:(CGSize)size resolution:(int)resolution renderBlock:(id)block
{
  v6 = *&resolution;
  height = size.height;
  width = size.width;
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
    if (block)
    {
      (*(block + 2))(block, v10->_bitmapContext);
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

- (BOOL)testPoint:(CGPoint)point
{
  if (!self->_bitmapContext)
  {
    y = point.y;
    x = point.x;
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    point.y = y;
    point.x = x;
    if (!self->_bitmapContext)
    {
      return 0;
    }
  }

  v4 = vmovn_s64(vcgezq_f64(vaddq_f64(*&self->_naturalToBitmapTransform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_naturalToBitmapTransform.c, point.y), *&self->_naturalToBitmapTransform.a, point.x))));
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

- (CGSize)p_maxSizeForResolution:(int)resolution naturalSize:(CGSize)result
{
  if (resolution == 2)
  {
    v4 = 64.0;
    goto LABEL_7;
  }

  if (resolution == 1)
  {
    v4 = 640.0;
LABEL_7:
    result.height = v4;
    result.width = v4;
    return result;
  }

  if (resolution)
  {
    result.width = CGSizeZero.width;
    result.height = CGSizeZero.height;
  }

  return result;
}

@end