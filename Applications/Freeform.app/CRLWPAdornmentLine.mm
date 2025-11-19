@interface CRLWPAdornmentLine
- (BOOL)merge:(id)a3;
- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)a3;
- (CGColor)color;
- (CGPoint)start;
- (CRLWPAdornmentLine)initWithStart:(CGPoint)a3 length:(double)a4 color:(CGColor *)a5 thickness:(double)a6 lineCount:(unint64_t)a7 underline:(int64_t)a8 adornmentLocation:(int)a9 underLineAdjustment:(double)a10 isWhitespace:(BOOL)a11 renderingDelegate:(id)a12 allowAntialiasing:(BOOL)a13;
- (id)copyWithColor:(CGColor *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CRLWPAdornmentLine

- (CRLWPAdornmentLine)initWithStart:(CGPoint)a3 length:(double)a4 color:(CGColor *)a5 thickness:(double)a6 lineCount:(unint64_t)a7 underline:(int64_t)a8 adornmentLocation:(int)a9 underLineAdjustment:(double)a10 isWhitespace:(BOOL)a11 renderingDelegate:(id)a12 allowAntialiasing:(BOOL)a13
{
  y = a3.y;
  x = a3.x;
  v25 = a12;
  v35.receiver = self;
  v35.super_class = CRLWPAdornmentLine;
  v26 = [(CRLWPAdornmentLine *)&v35 init];
  v27 = v26;
  if (v26)
  {
    v26->_start.x = x;
    v26->_start.y = y;
    v26->_length = a4;
    if (a5)
    {
      v26->_color = CGColorRetain(a5);
    }

    if (a7 >= 3)
    {
      v34 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138762C();
      }

      v28 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101387654(v34, v28);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101387700();
      }

      v29 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v29, v34);
      }

      v30 = [NSString stringWithUTF8String:"[CRLWPAdornmentLine initWithStart:length:color:thickness:lineCount:underline:adornmentLocation:underLineAdjustment:isWhitespace:renderingDelegate:allowAntialiasing:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPAdornmentLine.m"];
      [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:34 isFatal:0 description:"Illegal line count"];
    }

    v27->_thickness = a6;
    v32 = 2;
    if (a7 < 2)
    {
      v32 = a7;
    }

    v27->_lineCount = v32;
    v27->_underline = a8;
    v27->_adornmentLocation = a9;
    v27->_underlineAdjustment = a10;
    v27->_isWhitespace = a11;
    objc_storeStrong(&v27->_renderingDelegate, a12);
    v27->_allowAntialiasing = a13;
  }

  return v27;
}

- (void)dealloc
{
  color = self->_color;
  if (color)
  {
    CGColorRelease(color);
  }

  v4.receiver = self;
  v4.super_class = CRLWPAdornmentLine;
  [(CRLWPAdornmentLine *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLWPAdornmentLine alloc];
  LOBYTE(v6) = self->_allowAntialiasing;
  return [(CRLWPAdornmentLine *)v4 initWithStart:self->_color length:self->_lineCount color:self->_underline thickness:self->_adornmentLocation lineCount:self->_isWhitespace underline:self->_renderingDelegate adornmentLocation:self->_start.x underLineAdjustment:self->_start.y isWhitespace:self->_length renderingDelegate:self->_thickness allowAntialiasing:self->_underlineAdjustment, v6];
}

- (id)copyWithColor:(CGColor *)a3
{
  v4 = [(CRLWPAdornmentLine *)self copy];
  if (a3)
  {
    v5 = CGColorRetain(a3);
  }

  else
  {
    v5 = 0;
  }

  v4[2] = v5;
  v6 = v4[8];
  v4[8] = 0;

  return v4;
}

- (CGColor)color
{
  renderingDelegate = self->_renderingDelegate;
  if (renderingDelegate)
  {
    return [(CRLWPAdornmentLineRenderingDelegate *)renderingDelegate cgColor];
  }

  else
  {
    return self->_color;
  }
}

- (BOOL)merge:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 5) != self->_lineCount || (x = self->_start.x, y = self->_start.y, v9 = *(v4 + 9), v8 = *(v4 + 10), underline = self->_underline, !CGColorEqualToColor(self->_color, *(v4 + 2))) || [v5 underline] != self->_underline || (v11 = objc_msgSend(v5, "adornmentLocation"), v11 != self->_adornmentLocation) || !underline && ((thickness = self->_thickness, v14 = v5[4], thickness != v14) && vabdd_f64(thickness, v14) >= 0.00999999978 || y != v8 && vabdd_f64(y, v8) >= 0.00999999978) || *(v5 + 8) != self->_renderingDelegate)
  {
    v15 = 0;
    goto LABEL_16;
  }

  self->_length = v9 - x + v5[3];
  if (!underline)
  {
    goto LABEL_18;
  }

  if (!self->_isWhitespace)
  {
    if (v5[1])
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v5[1])
  {
LABEL_18:
    if (v11 == 1)
    {
      v17 = fmin(y, v8);
    }

    else
    {
      v17 = fmax(y, v8);
    }

    self->_start.y = v17;
    v12 = fmax(self->_thickness, v5[4]);
    goto LABEL_22;
  }

  self->_start.y = v8;
  v12 = v5[4];
LABEL_22:
  self->_thickness = v12;
LABEL_23:
  if (self->_isWhitespace && (v5[1] & 1) == 0)
  {
    self->_isWhitespace = 0;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)a3
{
  renderingDelegate = self->_renderingDelegate;
  if (renderingDelegate)
  {
    return [(CRLWPAdornmentLineRenderingDelegate *)renderingDelegate shouldRenderForLineDrawFlags:a3];
  }

  else
  {
    return 1;
  }
}

- (CGPoint)start
{
  x = self->_start.x;
  y = self->_start.y;
  result.y = y;
  result.x = x;
  return result;
}

@end