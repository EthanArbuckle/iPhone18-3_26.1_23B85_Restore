@interface CRLCanvasInfoGeometry
+ (id)geometryFromFullTransform:(CGAffineTransform *)transform;
+ (id)geometryFromFullTransform:(CGAffineTransform *)transform widthValid:(BOOL)valid heightValid:(BOOL)heightValid;
+ (id)geometryFromTransform:(CGAffineTransform *)transform withSize:(CGSize)size;
- (BOOL)allValuesValidNumbers;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualExceptForPosition:(id)position;
- (CGAffineTransform)fullTransform;
- (CGAffineTransform)transform;
- (CGAffineTransform)transformBasedOnPoint:(SEL)point centeredAtPoint:(CGPoint)atPoint withFlips:(CGPoint)flips;
- (CGAffineTransform)transformBasedOnRect:(SEL)rect;
- (CGAffineTransform)transformWithoutFlips;
- (CGPoint)center;
- (CGPoint)position;
- (CGRect)boundsBeforeRotation;
- (CGRect)transformedBounds;
- (CGSize)size;
- (CRLCanvasInfoGeometry)geometryWithNewBounds:(CGRect)bounds;
- (CRLCanvasInfoGeometry)geometryWithParentGeometry:(id)geometry;
- (CRLCanvasInfoGeometry)geometryWithValidNumbers;
- (CRLCanvasInfoGeometry)initWithFullTransform:(CGAffineTransform *)transform widthValid:(BOOL)valid heightValid:(BOOL)heightValid;
- (CRLCanvasInfoGeometry)initWithLayoutGeometry:(id)geometry;
- (CRLCanvasInfoGeometry)initWithPosition:(CGPoint)position size:(CGSize)size widthValid:(BOOL)valid heightValid:(BOOL)heightValid horizontalFlip:(BOOL)flip verticalFlip:(BOOL)verticalFlip angle:(double)angle;
- (CRLCanvasInfoGeometry)initWithTransform:(CGAffineTransform *)transform size:(CGSize)size;
- (CRLCanvasInfoGeometry)initWithTransformedBoundsOrigin:(CGPoint)origin size:(CGSize)size horizontalFlip:(BOOL)flip verticalFlip:(BOOL)verticalFlip angle:(double)angle;
- (id)description;
- (id)geometryByAppendingTransform:(CGAffineTransform *)transform;
- (id)geometryRelativeToGeometry:(id)geometry;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)normalizedGeometry;
- (id)parentGeometryWithRelativeGeometry:(id)geometry parentSize:(CGSize)size;
@end

@implementation CRLCanvasInfoGeometry

- (CRLCanvasInfoGeometry)initWithPosition:(CGPoint)position size:(CGSize)size widthValid:(BOOL)valid heightValid:(BOOL)heightValid horizontalFlip:(BOOL)flip verticalFlip:(BOOL)verticalFlip angle:(double)angle
{
  verticalFlipCopy = verticalFlip;
  flipCopy = flip;
  heightValidCopy = heightValid;
  height = size.height;
  width = size.width;
  y = position.y;
  x = position.x;
  v25.receiver = self;
  v25.super_class = CRLCanvasInfoGeometry;
  v18 = [(CRLCanvasInfoGeometry *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_position.x = x;
    v18->_position.y = y;
    v18->_size.width = width;
    v18->_size.height = height;
    if (heightValidCopy)
    {
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    if (flipCopy)
    {
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    if (verticalFlipCopy)
    {
      v22 = 8;
    }

    else
    {
      v22 = 0;
    }

    *&v18->_flags = v20 | valid | v21 | v22 | *&v18->_flags & 0xF0;
    sub_1001208E0(angle);
    v19->_angle = v23;
  }

  return v19;
}

- (CRLCanvasInfoGeometry)initWithFullTransform:(CGAffineTransform *)transform widthValid:(BOOL)valid heightValid:(BOOL)heightValid
{
  heightValidCopy = heightValid;
  validCopy = valid;
  v29.receiver = self;
  v29.super_class = CRLCanvasInfoGeometry;
  v8 = [(CRLCanvasInfoGeometry *)&v29 init];
  if (v8)
  {
    v9 = validCopy;
    v10 = heightValidCopy;
    v11 = *&transform->c;
    *&v28.a = *&transform->a;
    *&v28.c = v11;
    *&v28.tx = *&transform->tx;
    v12 = 0.0;
    v13 = 0;
    *&v11 = 0;
    v30 = CGRectApplyAffineTransform(*(&v9 - 2), &v28);
    v14 = 0.0;
    if (validCopy)
    {
      v14 = sqrt(transform->b * transform->b + transform->a * transform->a);
    }

    if (heightValidCopy)
    {
      v12 = sqrt(transform->d * transform->d + transform->c * transform->c);
      LOBYTE(heightValidCopy) = 2;
    }

    v8->_size.width = v14;
    v8->_size.height = v12;
    v15 = sub_100120414(v30.origin.x, v30.origin.y, v30.size.width, v30.size.height);
    v8->_position.x = sub_10011F334(v15, v16, v14 * -0.5);
    v8->_position.y = v17;
    v18 = sub_10011F31C(transform->tx + CGPointZero.y * transform->c + transform->a * CGPointZero.x, transform->ty + CGPointZero.y * transform->d + transform->b * CGPointZero.x, transform->tx + transform->c * 0.0 + transform->a * -1000.0);
    v20 = sub_1001208D0(v18, v19) * -57.2957795;
    v8->_angle = v20;
    v21 = heightValidCopy | validCopy;
    v22 = heightValidCopy | validCopy | *&v8->_flags & 0xFC;
    *&v8->_flags = v21 | *&v8->_flags & 0xFC;
    v23 = sub_10011FBE4(transform->a, transform->c, transform->b, transform->d);
    v24 = v23 <= 0.0;
    *&v8->_flags = v22 & 0xF3 | (4 * (v23 > 0.0));
    v25 = v20 + -180.0;
    if (v24)
    {
      v25 = v20;
    }

    sub_1001208E0(v25);
    v8->_angle = v26;
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLCanvasMutableInfoGeometry alloc];
  flags = self->_flags;
  angle = self->_angle;
  x = self->_position.x;
  y = self->_position.y;
  width = self->_size.width;
  height = self->_size.height;

  return [(CRLCanvasInfoGeometry *)v4 initWithPosition:*&flags & 1 size:(*&flags >> 1) & 1 widthValid:(*&flags >> 2) & 1 heightValid:(*&flags >> 3) & 1 horizontalFlip:x verticalFlip:y angle:width, height, angle];
}

- (CRLCanvasInfoGeometry)initWithTransformedBoundsOrigin:(CGPoint)origin size:(CGSize)size horizontalFlip:(BOOL)flip verticalFlip:(BOOL)verticalFlip angle:(double)angle
{
  y = origin.y;
  x = origin.x;
  angle = [(CRLCanvasInfoGeometry *)self initWithPosition:1 size:1 widthValid:flip heightValid:verticalFlip horizontalFlip:CGPointZero.x verticalFlip:CGPointZero.y angle:size.width, size.height, angle];
  v10 = angle;
  if (angle)
  {
    [(CRLCanvasInfoGeometry *)angle transformedBoundsOrigin];
    v12 = sub_10011F31C(v10->_position.x, v10->_position.y, v11);
    v10->_position.x = sub_10011F334(x, y, v12);
    v10->_position.y = v13;
  }

  return v10;
}

- (CRLCanvasInfoGeometry)initWithTransform:(CGAffineTransform *)transform size:(CGSize)size
{
  v6 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v6;
  *&v10.tx = *&transform->tx;
  CGAffineTransformScale(&v11, &v10, size.width, size.height);
  v7 = *&v11.c;
  *&transform->a = *&v11.a;
  *&transform->c = v7;
  *&transform->tx = *&v11.tx;
  v8 = *&transform->c;
  *&v11.a = *&transform->a;
  *&v11.c = v8;
  *&v11.tx = *&transform->tx;
  return [(CRLCanvasInfoGeometry *)self initWithFullTransform:&v11 widthValid:1 heightValid:1];
}

- (CRLCanvasInfoGeometry)initWithLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  v5 = geometryCopy;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  if (geometryCopy)
  {
    [geometryCopy transform];
    v17 = v20;
    v18 = v21;
    v19 = v22;
    v6 = sub_1001399E4(&v17);
    [v5 transform];
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v17 = 0uLL;
    v6 = sub_1001399E4(&v17);
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
  }

  sub_100139980(&v17);
  [v5 size];
  v8 = v7;
  [v5 frame];
  v13 = sub_100120414(v9, v10, v11, v12);
  v15 = [(CRLCanvasInfoGeometry *)self initWithPosition:1 size:1 widthValid:v6 heightValid:0 horizontalFlip:sub_10011F334(v13 verticalFlip:v14 angle:v8 * -0.5)];

  return v15;
}

- (CGRect)boundsBeforeRotation
{
  [(CRLCanvasInfoGeometry *)self position];
  v3 = [(CRLCanvasInfoGeometry *)self size];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGPoint)center
{
  [(CRLCanvasInfoGeometry *)self boundsBeforeRotation];

  v6 = sub_100120414(v2, v3, v4, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGAffineTransform)transform
{
  [(CRLCanvasInfoGeometry *)self boundsBeforeRotation];

  return [(CRLCanvasInfoGeometry *)self transformBasedOnRect:?];
}

- (CGAffineTransform)transformBasedOnRect:(SEL)rect
{
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = sub_100120414(a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);

  return [(CRLCanvasInfoGeometry *)self transformBasedOnPoint:x centeredAtPoint:y, v8, v7];
}

- (CGAffineTransform)transformBasedOnPoint:(SEL)point centeredAtPoint:(CGPoint)atPoint withFlips:(CGPoint)flips
{
  v6 = a6;
  y = flips.y;
  x = flips.x;
  v9 = atPoint.x;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeTranslation(retstr, atPoint.x, atPoint.y);
  result = [(CRLCanvasInfoGeometry *)self angle];
  v14 = v13;
  if (v13 != 0.0 || v6 && ([(CRLCanvasInfoGeometry *)self horizontalFlip]|| (result = [(CRLCanvasInfoGeometry *)self verticalFlip], result)))
  {
    v15 = sub_10011F31C(x, y, v9);
    v17 = v16;
    v18 = *&retstr->c;
    *&v28.a = *&retstr->a;
    *&v28.c = v18;
    *&v28.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v29, &v28, v15, v17);
    v19 = *&v29.c;
    *&retstr->a = *&v29.a;
    *&retstr->c = v19;
    *&retstr->tx = *&v29.tx;
    if (v14 != 0.0)
    {
      v20 = *&retstr->c;
      *&v28.a = *&retstr->a;
      *&v28.c = v20;
      *&v28.tx = *&retstr->tx;
      CGAffineTransformRotate(&v29, &v28, (v14 * -3.14159265 + v14 * -3.14159265) / 360.0);
      v21 = *&v29.c;
      *&retstr->a = *&v29.a;
      *&retstr->c = v21;
      *&retstr->tx = *&v29.tx;
    }

    if (v6)
    {
      if ([(CRLCanvasInfoGeometry *)self horizontalFlip])
      {
        v22 = *&retstr->c;
        *&v28.a = *&retstr->a;
        *&v28.c = v22;
        *&v28.tx = *&retstr->tx;
        CGAffineTransformScale(&v29, &v28, -1.0, 1.0);
        v23 = *&v29.c;
        *&retstr->a = *&v29.a;
        *&retstr->c = v23;
        *&retstr->tx = *&v29.tx;
      }

      if ([(CRLCanvasInfoGeometry *)self verticalFlip])
      {
        v24 = *&retstr->c;
        *&v28.a = *&retstr->a;
        *&v28.c = v24;
        *&v28.tx = *&retstr->tx;
        CGAffineTransformScale(&v29, &v28, 1.0, -1.0);
        v25 = *&v29.c;
        *&retstr->a = *&v29.a;
        *&retstr->c = v25;
        *&retstr->tx = *&v29.tx;
      }
    }

    v26 = *&retstr->c;
    *&v28.a = *&retstr->a;
    *&v28.c = v26;
    *&v28.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v29, &v28, -v15, -v17);
    v27 = *&v29.c;
    *&retstr->a = *&v29.a;
    *&retstr->c = v27;
    *&retstr->tx = *&v29.tx;
  }

  return result;
}

- (CGAffineTransform)transformWithoutFlips
{
  [(CRLCanvasInfoGeometry *)self boundsBeforeRotation];
  v5 = v4;
  v7 = v6;
  v11 = sub_100120414(v4, v6, v8, v9);

  return [(CRLCanvasInfoGeometry *)self transformBasedOnPoint:0 centeredAtPoint:v5 withFlips:v7, v11, v10];
}

- (CGRect)transformedBounds
{
  v3 = sub_10011ECB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(CRLCanvasInfoGeometry *)self transform];
  v11.origin.x = v3;
  v11.origin.y = v5;
  v11.size.width = v7;
  v11.size.height = v9;
  return CGRectApplyAffineTransform(v11, &v10);
}

- (BOOL)allValuesValidNumbers
{
  [(CRLCanvasInfoGeometry *)self size];
  v5 = sub_100120888(v3, v4);
  [(CRLCanvasInfoGeometry *)self position];
  v7 = v6;
  v9 = v8;
  [(CRLCanvasInfoGeometry *)self angle];
  if (!v5)
  {
    return 0;
  }

  v11 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  result = sub_100120888(v7, v9);
  if (v11 >= 0x7FF0000000000000)
  {
    return 0;
  }

  return result;
}

- (CRLCanvasInfoGeometry)geometryWithValidNumbers
{
  selfCopy = self;
  if ([(CRLCanvasInfoGeometry *)selfCopy allValuesValidNumbers])
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = [(CRLCanvasInfoGeometry *)selfCopy mutableCopy];
    [(CRLCanvasInfoGeometry *)selfCopy size];
    if (!sub_100120888(v4, v5))
    {
      [(CRLCanvasInfoGeometry *)v3 setSize:1.0, 1.0];
      if (![(CRLCanvasInfoGeometry *)selfCopy widthValid])
      {
        [(CRLCanvasInfoGeometry *)v3 size];
        [(CRLCanvasInfoGeometry *)v3 setSize:0.0];
      }

      if (![(CRLCanvasInfoGeometry *)selfCopy heightValid])
      {
        [(CRLCanvasInfoGeometry *)v3 size];
        [(CRLCanvasInfoGeometry *)v3 setSize:?];
      }
    }

    [(CRLCanvasInfoGeometry *)selfCopy position];
    if (!sub_100120888(v6, v7))
    {
      [(CRLCanvasInfoGeometry *)v3 setPosition:CGPointZero.x, CGPointZero.y];
    }

    [(CRLCanvasInfoGeometry *)selfCopy angle];
    if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      [(CRLCanvasInfoGeometry *)v3 setAngle:0.0];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && sub_10011ECC8(self->_position.x, self->_position.y, v5[1], v5[2]))
  {
    v6 = [(CRLCanvasInfoGeometry *)self isEqualExceptForPosition:v5];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (BOOL)isEqualExceptForPosition:(id)position
{
  positionCopy = position;
  v5 = positionCopy;
  if (positionCopy)
  {
    if (positionCopy == self)
    {
      v7 = 1;
    }

    else
    {
      v6 = positionCopy;
      if (sub_10011ECC8(self->_size.width, self->_size.height, v6->_size.width, v6->_size.height) && ((*&v6->_flags ^ *&self->_flags) & 0xF) == 0)
      {
        angle = self->_angle;
        v10 = v6->_angle;
        v7 = vabdd_f64(angle, v10) < 0.00999999978 || angle == v10;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGAffineTransform)fullTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v15 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(self, *&a3);
  [(CRLCanvasInfoGeometry *)self transformBasedOnRect:v15.recordType._object];
  v6 = 1.0;
  v7 = 1.0;
  if ([(CRLCanvasInfoGeometry *)self widthValid])
  {
    [(CRLCanvasInfoGeometry *)self size];
    v7 = v8;
  }

  if ([(CRLCanvasInfoGeometry *)self heightValid])
  {
    [(CRLCanvasInfoGeometry *)self size];
    v6 = v9;
  }

  v10 = *&retstr->c;
  *&v13.a = *&retstr->a;
  *&v13.c = v10;
  *&v13.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v14, &v13, v7, v6);
  v12 = *&v14.c;
  *&retstr->a = *&v14.a;
  *&retstr->c = v12;
  *&retstr->tx = *&v14.tx;
  return result;
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)transform widthValid:(BOOL)valid heightValid:(BOOL)heightValid
{
  heightValidCopy = heightValid;
  validCopy = valid;
  v8 = [CRLCanvasInfoGeometry alloc];
  v9 = *&transform->c;
  v12[0] = *&transform->a;
  v12[1] = v9;
  v12[2] = *&transform->tx;
  v10 = [(CRLCanvasInfoGeometry *)v8 initWithFullTransform:v12 widthValid:validCopy heightValid:heightValidCopy];

  return v10;
}

+ (id)geometryFromFullTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v3;
  v6[2] = *&transform->tx;
  v4 = [CRLCanvasInfoGeometry geometryFromFullTransform:v6 widthValid:1 heightValid:1];

  return v4;
}

+ (id)geometryFromTransform:(CGAffineTransform *)transform withSize:(CGSize)size
{
  v4 = *&transform->c;
  *&v7.a = *&transform->a;
  *&v7.c = v4;
  *&v7.tx = *&transform->tx;
  CGAffineTransformScale(&v8, &v7, size.width, size.height);
  v5 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v8];

  return v5;
}

- (id)geometryByAppendingTransform:(CGAffineTransform *)transform
{
  [(CRLCanvasInfoGeometry *)self fullTransform];
  v5 = *&transform->c;
  *&v8.a = *&transform->a;
  *&v8.c = v5;
  *&v8.tx = *&transform->tx;
  CGAffineTransformConcat(&v10, &t1, &v8);
  v6 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v10 widthValid:[(CRLCanvasInfoGeometry *)self widthValid] heightValid:[(CRLCanvasInfoGeometry *)self heightValid]];

  return v6;
}

- (CRLCanvasInfoGeometry)geometryWithParentGeometry:(id)geometry
{
  geometryCopy = geometry;
  [(CRLCanvasInfoGeometry *)self fullTransform];
  if (geometryCopy)
  {
    [geometryCopy transform];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CGAffineTransformConcat(&v9, &t1, &v7);
  v5 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v9 widthValid:[(CRLCanvasInfoGeometry *)self widthValid] heightValid:[(CRLCanvasInfoGeometry *)self heightValid]];

  return v5;
}

- (id)geometryRelativeToGeometry:(id)geometry
{
  geometryCopy = geometry;
  [(CRLCanvasInfoGeometry *)self fullTransform];
  if (geometryCopy)
  {
    [geometryCopy transform];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  CGAffineTransformInvert(&v7, &v9);
  CGAffineTransformConcat(&v9, &t1, &v7);
  v5 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v9 widthValid:[(CRLCanvasInfoGeometry *)self widthValid] heightValid:[(CRLCanvasInfoGeometry *)self heightValid]];

  return v5;
}

- (id)parentGeometryWithRelativeGeometry:(id)geometry parentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  geometryCopy = geometry;
  [(CRLCanvasInfoGeometry *)self size];
  v9 = v8;
  v11 = v10;
  [geometryCopy size];
  if (!sub_10011ECC8(v9, v11, v12, v13))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136347C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363490();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101363518();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLCanvasInfoGeometry parentGeometryWithRelativeGeometry:parentSize:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasInfoGeometry.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:409 isFatal:0 description:"Input geometries' sizes don't match"];
  }

  memset(&v24, 0, sizeof(v24));
  if (geometryCopy)
  {
    [geometryCopy transform];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  CGAffineTransformInvert(&v24, &v23);
  memset(&v23, 0, sizeof(v23));
  [(CRLCanvasInfoGeometry *)self transform];
  t1 = v24;
  memset(&v22, 0, sizeof(v22));
  v20 = v23;
  CGAffineTransformConcat(&v22, &t1, &v20);
  v17 = [CRLCanvasInfoGeometry alloc];
  t1 = v22;
  height = [(CRLCanvasInfoGeometry *)v17 initWithTransform:&t1 size:width, height];

  return height;
}

- (CRLCanvasInfoGeometry)geometryWithNewBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = [(CRLCanvasInfoGeometry *)self mutableCopy];
  [v8 setSize:{width, height}];
  v9 = sub_100120414(x, y, width, height);
  v11 = v10;
  [(CRLCanvasInfoGeometry *)self size];
  v13 = v12 * 0.5;
  [(CRLCanvasInfoGeometry *)self size];
  v14 = sub_10011F31C(v9, v11, v13);
  v16 = v15;
  [(CRLCanvasInfoGeometry *)self transform];
  v17 = sub_10012119C(v22, v14, v16);
  v19 = v18;
  [(CRLCanvasInfoGeometry *)self center];
  [v8 setCenter:{sub_10011F334(v17, v19, v20)}];

  return v8;
}

- (id)normalizedGeometry
{
  angle = self->_angle;
  flags = self->_flags;
  v5 = (*&flags >> 2) & 1;
  if ((*&flags & 8) != 0)
  {
    v5 = (*&flags & 4) == 0;
    sub_1001208E0(angle + 180.0);
    angle = v6;
  }

  angle = [[CRLCanvasInfoGeometry alloc] initWithPosition:*&self->_flags & 1 size:(*&self->_flags >> 1) & 1 widthValid:v5 heightValid:0 horizontalFlip:self->_position.x verticalFlip:self->_position.y angle:self->_size.width, self->_size.height, angle];

  return angle;
}

- (id)description
{
  if (*&self->_flags)
  {
    v3 = @"%g";
  }

  else
  {
    v3 = @"auto(%g)";
  }

  v4 = [NSString stringWithFormat:v3, *&self->_size.width];
  if ((*&self->_flags & 2) != 0)
  {
    v5 = @"%g";
  }

  else
  {
    v5 = @"auto(%g)";
  }

  v6 = [NSString stringWithFormat:v5, *&self->_size.height];
  v7 = [NSString stringWithFormat:@"{%@, %@}", v4, v6];
  if (self->_angle == 0.0)
  {
    v8 = &stru_1018BCA28;
  }

  else
  {
    v8 = [NSString stringWithFormat:@" angle=%g", *&self->_angle];
  }

  v9 = @" flip=h+v";
  if ((*&self->_flags & 8) == 0)
  {
    v9 = @" flip=h";
  }

  v10 = @" flip=v";
  if ((*&self->_flags & 8) == 0)
  {
    v10 = &stru_1018BCA28;
  }

  if ((*&self->_flags & 4) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = NSStringFromCGPoint(self->_position);
  v15 = [NSString stringWithFormat:@"<%@ %p pos=%@ size=%@%@%@>", v13, self, v14, v7, v8, v11];

  return v15;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end