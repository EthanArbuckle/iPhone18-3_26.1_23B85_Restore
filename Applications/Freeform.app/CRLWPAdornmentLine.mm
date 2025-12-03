@interface CRLWPAdornmentLine
- (BOOL)merge:(id)merge;
- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)flags;
- (CGColor)color;
- (CGPoint)start;
- (CRLWPAdornmentLine)initWithStart:(CGPoint)start length:(double)length color:(CGColor *)color thickness:(double)thickness lineCount:(unint64_t)count underline:(int64_t)underline adornmentLocation:(int)location underLineAdjustment:(double)self0 isWhitespace:(BOOL)self1 renderingDelegate:(id)self2 allowAntialiasing:(BOOL)self3;
- (id)copyWithColor:(CGColor *)color;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CRLWPAdornmentLine

- (CRLWPAdornmentLine)initWithStart:(CGPoint)start length:(double)length color:(CGColor *)color thickness:(double)thickness lineCount:(unint64_t)count underline:(int64_t)underline adornmentLocation:(int)location underLineAdjustment:(double)self0 isWhitespace:(BOOL)self1 renderingDelegate:(id)self2 allowAntialiasing:(BOOL)self3
{
  y = start.y;
  x = start.x;
  delegateCopy = delegate;
  v35.receiver = self;
  v35.super_class = CRLWPAdornmentLine;
  v26 = [(CRLWPAdornmentLine *)&v35 init];
  v27 = v26;
  if (v26)
  {
    v26->_start.x = x;
    v26->_start.y = y;
    v26->_length = length;
    if (color)
    {
      v26->_color = CGColorRetain(color);
    }

    if (count >= 3)
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

    v27->_thickness = thickness;
    countCopy = 2;
    if (count < 2)
    {
      countCopy = count;
    }

    v27->_lineCount = countCopy;
    v27->_underline = underline;
    v27->_adornmentLocation = location;
    v27->_underlineAdjustment = adjustment;
    v27->_isWhitespace = whitespace;
    objc_storeStrong(&v27->_renderingDelegate, delegate);
    v27->_allowAntialiasing = antialiasing;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPAdornmentLine alloc];
  LOBYTE(v6) = self->_allowAntialiasing;
  return [(CRLWPAdornmentLine *)v4 initWithStart:self->_color length:self->_lineCount color:self->_underline thickness:self->_adornmentLocation lineCount:self->_isWhitespace underline:self->_renderingDelegate adornmentLocation:self->_start.x underLineAdjustment:self->_start.y isWhitespace:self->_length renderingDelegate:self->_thickness allowAntialiasing:self->_underlineAdjustment, v6];
}

- (id)copyWithColor:(CGColor *)color
{
  v4 = [(CRLWPAdornmentLine *)self copy];
  if (color)
  {
    v5 = CGColorRetain(color);
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

- (BOOL)merge:(id)merge
{
  mergeCopy = merge;
  v5 = mergeCopy;
  if (*(mergeCopy + 5) != self->_lineCount || (x = self->_start.x, y = self->_start.y, v9 = *(mergeCopy + 9), v8 = *(mergeCopy + 10), underline = self->_underline, !CGColorEqualToColor(self->_color, *(mergeCopy + 2))) || [v5 underline] != self->_underline || (v11 = objc_msgSend(v5, "adornmentLocation"), v11 != self->_adornmentLocation) || !underline && ((thickness = self->_thickness, v14 = v5[4], thickness != v14) && vabdd_f64(thickness, v14) >= 0.00999999978 || y != v8 && vabdd_f64(y, v8) >= 0.00999999978) || *(v5 + 8) != self->_renderingDelegate)
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

- (BOOL)shouldRenderForLineDrawFlags:(unint64_t)flags
{
  renderingDelegate = self->_renderingDelegate;
  if (renderingDelegate)
  {
    return [(CRLWPAdornmentLineRenderingDelegate *)renderingDelegate shouldRenderForLineDrawFlags:flags];
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