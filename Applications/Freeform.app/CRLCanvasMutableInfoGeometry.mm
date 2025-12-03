@interface CRLCanvasMutableInfoGeometry
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCenter:(CGPoint)center;
- (void)setHeightValid:(BOOL)valid;
- (void)setHorizontalFlip:(BOOL)flip;
- (void)setPosition:(CGPoint)position;
- (void)setSize:(CGSize)size;
- (void)setTransformedBoundsOrigin:(CGPoint)origin;
- (void)setVerticalFlip:(BOOL)flip;
@end

@implementation CRLCanvasMutableInfoGeometry

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLCanvasInfoGeometry alloc];
  flags = self->super._flags;
  angle = self->super._angle;
  x = self->super._position.x;
  y = self->super._position.y;
  width = self->super._size.width;
  height = self->super._size.height;

  return [(CRLCanvasInfoGeometry *)v4 initWithPosition:*&flags & 1 size:(*&flags >> 1) & 1 widthValid:(*&flags >> 2) & 1 heightValid:(*&flags >> 3) & 1 horizontalFlip:x verticalFlip:y angle:width, height, angle];
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  if (!sub_100120888(position.x, position.y))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363540();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363554();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013635DC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasMutableInfoGeometry setPosition:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasInfoGeometry.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:484 isFatal:0 description:"Attempted to set the position of a CRLCanvasInfoGeometry with a non-finite position"];

    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  self->super._position.x = x;
  self->super._position.y = y;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (sub_10012287C())
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101363604();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101363618();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013636A0();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasMutableInfoGeometry setSize:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasInfoGeometry.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:492 isFatal:0 description:"Attempted to set the size of a CRLCanvasInfoGeometry with NaNs"];

    width = 1.0;
    height = 1.0;
  }

  if (width < 0.0 || height < 0.0)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013636C8();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      v15 = v9;
      v16 = 2082;
      v17 = "[CRLCanvasMutableInfoGeometry setSize:]";
      v18 = 2082;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasInfoGeometry.m";
      v20 = 1024;
      v21 = 496;
      v22 = 2048;
      v23 = width;
      v24 = 2048;
      v25 = height;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Attempted to set the size of a CRLCanvasInfoGeometry with a negative width or height (%f, %f)", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013636F0();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLCanvasMutableInfoGeometry setSize:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasInfoGeometry.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:496 isFatal:0 description:"Attempted to set the size of a CRLCanvasInfoGeometry with a negative width or height (%f, %f)", *&width, *&height];
  }

  self->super._size.width = width;
  self->super._size.height = height;
}

- (void)setHeightValid:(BOOL)valid
{
  if (valid)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xFD | v3;
}

- (void)setHorizontalFlip:(BOOL)flip
{
  if (flip)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xFB | v3;
}

- (void)setVerticalFlip:(BOOL)flip
{
  if (flip)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xF7 | v3;
}

- (void)setCenter:(CGPoint)center
{
  __asm { FMOV            V3.2D, #-0.5 }

  y = center.y;
  self->super._position = vaddq_f64(center, vmulq_f64(self->super._size, _Q3));
}

- (void)setTransformedBoundsOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  [(CRLCanvasInfoGeometry *)self transformedBoundsOrigin];
  v7 = sub_10011F31C(self->super._position.x, self->super._position.y, v6);
  self->super._position.x = sub_10011F334(x, y, v7);
  self->super._position.y = v8;
}

@end