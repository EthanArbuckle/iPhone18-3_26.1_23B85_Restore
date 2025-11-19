@interface AVCacheLargestInscribedRectInBoundingPathKey
- (AVCacheLargestInscribedRectInBoundingPathKey)initWithCenter:(CGPoint)a3 aspectRatio:(double)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)center;
@end

@implementation AVCacheLargestInscribedRectInBoundingPathKey

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v16 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    [(AVCacheLargestInscribedRectInBoundingPathKey *)self center];
    v8 = v7;
    [(AVCacheLargestInscribedRectInBoundingPathKey *)v6 center];
    if (v8 == v9 && ([(AVCacheLargestInscribedRectInBoundingPathKey *)self center], v11 = v10, [(AVCacheLargestInscribedRectInBoundingPathKey *)v6 center], v11 == v12))
    {
      [(AVCacheLargestInscribedRectInBoundingPathKey *)self aspectRatio];
      v14 = v13;
      [(AVCacheLargestInscribedRectInBoundingPathKey *)v6 aspectRatio];
      v16 = v14 == v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (AVCacheLargestInscribedRectInBoundingPathKey)initWithCenter:(CGPoint)a3 aspectRatio:(double)a4
{
  y = a3.y;
  x = a3.x;
  v10.receiver = self;
  v10.super_class = AVCacheLargestInscribedRectInBoundingPathKey;
  v7 = [(AVCacheLargestInscribedRectInBoundingPathKey *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AVCacheLargestInscribedRectInBoundingPathKey *)v7 setCenter:x, y];
    [(AVCacheLargestInscribedRectInBoundingPathKey *)v8 setAspectRatio:a4];
  }

  return v8;
}

@end