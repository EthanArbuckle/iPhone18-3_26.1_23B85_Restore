@interface CRLCanvasLayoutGeometry
+ (id)geometryFromFullTransform:(CGAffineTransform *)transform;
- (BOOL)differsInMoreThanTranslationFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)fullTransform;
- (CGAffineTransform)inverseTransform;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformByConcatenatingTransformTo:(SEL)to;
- (CGPoint)center;
- (CGRect)frame;
- (CGSize)size;
- (CRLCanvasInfoGeometry)infoGeometry;
- (CRLCanvasLayoutGeometry)init;
- (CRLCanvasLayoutGeometry)initWithFrame:(CGRect)frame;
- (CRLCanvasLayoutGeometry)initWithInfoGeometry:(id)geometry;
- (CRLCanvasLayoutGeometry)initWithSize:(CGSize)size transform:(CGAffineTransform *)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)geometryByOutsettingBy:(CGSize)by;
- (id)geometryByTransformingBy:(CGAffineTransform *)by;
- (id)geometryByTranslatingBy:(CGPoint)by;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)i_setTransform:(CGAffineTransform *)transform;
@end

@implementation CRLCanvasLayoutGeometry

- (CRLCanvasLayoutGeometry)initWithSize:(CGSize)size transform:(CGAffineTransform *)transform
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = CRLCanvasLayoutGeometry;
  result = [(CRLCanvasLayoutGeometry *)&v10 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    v8 = *&transform->a;
    v9 = *&transform->c;
    *&result->_transform.tx = *&transform->tx;
    *&result->_transform.c = v9;
    *&result->_transform.a = v8;
  }

  return result;
}

- (CRLCanvasLayoutGeometry)init
{
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [(CRLCanvasLayoutGeometry *)self initWithSize:v4 transform:100.0, 100.0];
}

- (CRLCanvasLayoutGeometry)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  CGAffineTransformMakeTranslation(&v7, frame.origin.x, frame.origin.y);
  return [(CRLCanvasLayoutGeometry *)self initWithSize:&v7 transform:width, height];
}

- (CRLCanvasLayoutGeometry)initWithInfoGeometry:(id)geometry
{
  geometryCopy = geometry;
  v5 = geometryCopy;
  if (geometryCopy)
  {
    if (![geometryCopy heightValid] || (objc_msgSend(v5, "widthValid") & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101391BD8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101391BEC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101391C8C();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLCanvasLayoutGeometry initWithInfoGeometry:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutGeometry.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:53 isFatal:0 description:"can't create layout geometry from info geometry if width and height are not valid"];
    }

    [v5 size];
    v10 = v9;
    v12 = v11;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    [v5 transform];
    v18[0] = v19;
    v18[1] = v20;
    v18[2] = v21;
    self = [(CRLCanvasLayoutGeometry *)self initWithSize:v18 transform:v10, v12];
    selfCopy = self;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101391CB4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101391CC8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101391D78();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLCanvasLayoutGeometry initWithInfoGeometry:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutGeometry.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:48 isFatal:0 description:"invalid nil value for '%{public}s'", "infoGeometry"];

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->a;
  v4 = *&transform->c;
  v6 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v5, v5).f64[1]) + v5.f64[0] * v5.f64[0]);
  v7 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v4, v4).f64[1]) + v4.f64[0] * v4.f64[0]);
  if (v6 > 0.01)
  {
    *&transform->a = vdivq_f64(v5, vdupq_lane_s64(*&v6, 0));
  }

  v13 = v6;
  if (v7 > 0.01)
  {
    *&transform->c = vdivq_f64(v4, vdupq_lane_s64(*&v7, 0));
  }

  v12 = v7;
  v8 = [CRLCanvasLayoutGeometry alloc];
  v9 = *&transform->c;
  v14[0] = *&transform->a;
  v14[1] = v9;
  v14[2] = *&transform->tx;
  v10 = [(CRLCanvasLayoutGeometry *)v8 initWithSize:v14 transform:v13, v12];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  width = self->_size.width;
  height = self->_size.height;
  v7 = *&self->_transform.c;
  v9[0] = *&self->_transform.a;
  v9[1] = v7;
  v9[2] = *&self->_transform.tx;
  return [v4 initWithSize:v9 transform:{width, height}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLCanvasMutableLayoutGeometry alloc];
  width = self->_size.width;
  height = self->_size.height;
  v7 = *&self->_transform.c;
  v9[0] = *&self->_transform.a;
  v9[1] = v7;
  v9[2] = *&self->_transform.tx;
  return [(CRLCanvasLayoutGeometry *)v4 initWithSize:v9 transform:width, height];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v12 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    width = self->_size.width;
    v9 = v6->_size.width;
    if ((width == v9 || vabdd_f64(width, v9) < 0.000000001) && ((height = self->_size.height, v11 = v6->_size.height, height == v11) || vabdd_f64(height, v11) < 0.000000001))
    {
      v13 = *&self->_transform.c;
      v17[0] = *&self->_transform.a;
      v17[1] = v13;
      v17[2] = *&self->_transform.tx;
      v14 = *&v6->_transform.c;
      v16[0] = *&v6->_transform.a;
      v16[1] = v14;
      v16[2] = *&v6->_transform.tx;
      v12 = sub_10011ED78(v17, v16);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(CRLCanvasLayoutGeometry *)self frame];
  v5 = NSStringFromCGRect(v13);
  [(CRLCanvasLayoutGeometry *)self size];
  v6 = NSStringFromCGSize(v12);
  [(CRLCanvasLayoutGeometry *)self transform];
  v7 = NSStringFromCGAffineTransform(&transform);
  v8 = [NSString stringWithFormat:@"<%@ %p frame=%@ size=%@ xform=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (void)i_setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

- (CGPoint)center
{
  v2 = vaddq_f64(*&self->_transform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->_transform.c, self->_size.height * 0.5), *&self->_transform.a, self->_size.width * 0.5));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGRect)frame
{
  v5.origin.x = sub_10011ECB4();
  v3 = *&self->_transform.c;
  *&v4.a = *&self->_transform.a;
  *&v4.c = v3;
  *&v4.tx = *&self->_transform.tx;
  return CGRectApplyAffineTransform(v5, &v4);
}

- (CGAffineTransform)inverseTransform
{
  v3 = *&self->_transform.c;
  *&v5.a = *&self->_transform.a;
  *&v5.c = v3;
  *&v5.tx = *&self->_transform.tx;
  return CGAffineTransformInvert(retstr, &v5);
}

- (CGAffineTransform)fullTransform
{
  v3 = fmax(self->_size.width, 0.00000001);
  v4 = fmax(self->_size.height, 0.00000001);
  v5 = *&self->_transform.c;
  *&v7.a = *&self->_transform.a;
  *&v7.c = v5;
  *&v7.tx = *&self->_transform.tx;
  return CGAffineTransformScale(retstr, &v7, v3, v4);
}

- (CRLCanvasInfoGeometry)infoGeometry
{
  v3 = [CRLCanvasInfoGeometry alloc];
  [(CRLCanvasLayoutGeometry *)self transform];
  [(CRLCanvasLayoutGeometry *)self size];
  v4 = [(CRLCanvasInfoGeometry *)v3 initWithTransform:&v6 size:?];

  return v4;
}

- (id)geometryByTransformingBy:(CGAffineTransform *)by
{
  memset(&v18, 0, sizeof(v18));
  [(CRLCanvasLayoutGeometry *)self transform];
  v5 = *&by->c;
  *&v16.a = *&by->a;
  *&v16.c = v5;
  *&v16.tx = *&by->tx;
  CGAffineTransformConcat(&v18, &t1, &v16);
  t1 = v18;
  v6 = sub_100139A14(&t1.a);
  v8 = v7;
  v16 = v18;
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformScale(&t1, &v16, 1.0 / v6, 1.0 / v7);
  [(CRLCanvasLayoutGeometry *)self size];
  v10 = v6 * v9;
  [(CRLCanvasLayoutGeometry *)self size];
  v12 = v8 * v11;
  v13 = [CRLCanvasLayoutGeometry alloc];
  v16 = t1;
  v14 = [(CRLCanvasLayoutGeometry *)v13 initWithSize:&v16 transform:v10, v12];

  return v14;
}

- (id)geometryByTranslatingBy:(CGPoint)by
{
  CGAffineTransformMakeTranslation(&v6, by.x, by.y);
  v4 = [(CRLCanvasLayoutGeometry *)self geometryByTransformingBy:&v6];

  return v4;
}

- (id)geometryByOutsettingBy:(CGSize)by
{
  height = by.height;
  width = by.width;
  v5 = [(CRLCanvasLayoutGeometry *)self mutableCopy];
  [v5 outsetBy:{width, height}];

  return v5;
}

- (CGAffineTransform)transformByConcatenatingTransformTo:(SEL)to
{
  v4 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v4;
  *&t1.tx = *&a4->tx;
  v5 = *&self->_transform.c;
  *&v7.a = *&self->_transform.a;
  *&v7.c = v5;
  *&v7.tx = *&self->_transform.tx;
  return CGAffineTransformConcat(retstr, &t1, &v7);
}

- (BOOL)differsInMoreThanTranslationFrom:(id)from
{
  fromCopy = from;
  if (fromCopy && (-[CRLCanvasLayoutGeometry frame](self, "frame"), v6 = v5, v8 = v7, [fromCopy frame], sub_10011ECC8(v6, v8, v9, v10)))
  {
    [(CRLCanvasLayoutGeometry *)self transform];
    [fromCopy transform];
    v11 = !sub_100139934(v14, &v13);
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self->ty;
  *&retstr->a = *&self->d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].b;
  return self;
}

@end