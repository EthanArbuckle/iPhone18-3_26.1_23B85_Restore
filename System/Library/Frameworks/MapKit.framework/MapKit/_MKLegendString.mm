@interface _MKLegendString
- (_MKLegendString)init;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)setFrame:(CGRect)a3;
- (void)setString:(id)a3;
- (void)sizeToFit;
@end

@implementation _MKLegendString

- (_MKLegendString)init
{
  v5.receiver = self;
  v5.super_class = _MKLegendString;
  v2 = [(_MKLegendString *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    [(_MKLegendString *)v2 setContentsScale:?];
  }

  return v2;
}

- (void)sizeToFit
{
  line = self->_line;
  if (line)
  {
    descent = 0.0;
    ascent = 0.0;
    leading = 0.0;
    CTLineGetTypographicBounds(line, &ascent, &descent, &leading);
    BoundsWithOptions = CTLineGetBoundsWithOptions(self->_line, 8uLL);
    ceil(CGRectGetMaxX(BoundsWithOptions));
    self->_baselineDistanceFromBottom = descent;
    [(_MKLegendString *)self frame];
    [(_MKLegendString *)self setFrame:?];
  }
}

- (void)drawInContext:(CGContext *)a3
{
  v5 = [(_MKLegendString *)self string];
  if (v5)
  {
    line = self->_line;

    if (line)
    {
      CGContextSaveGState(a3);
      [(_MKLegendString *)self bounds];
      CGContextTranslateCTM(a3, 0.0, v7);
      CGContextScaleCTM(a3, 1.0, -1.0);
      CGContextSetTextPosition(a3, 0.0, self->_baselineDistanceFromBottom);
      VKLineDrawWithOuterStroke();

      CGContextRestoreGState(a3);
    }
  }
}

- (void)setString:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_string != v5)
  {
    v10 = v5;
    v7 = [(NSAttributedString *)v5 isEqualToAttributedString:?];
    v6 = v10;
    if (!v7)
    {
      objc_storeStrong(&self->_string, a3);
      line = self->_line;
      if (line)
      {
        CFRelease(line);
        self->_line = 0;
      }

      v6 = v10;
      if (self->_string)
      {
        v9 = [(_MKLegendString *)self string];
        self->_line = CTLineCreateWithAttributedString(v9);

        v6 = v10;
      }
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = _MKLegendString;
  [(_MKLegendString *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)dealloc
{
  line = self->_line;
  if (line)
  {
    CFRelease(line);
  }

  v4.receiver = self;
  v4.super_class = _MKLegendString;
  [(_MKLegendString *)&v4 dealloc];
}

@end