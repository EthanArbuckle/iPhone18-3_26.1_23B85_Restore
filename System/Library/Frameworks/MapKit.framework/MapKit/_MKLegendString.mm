@interface _MKLegendString
- (_MKLegendString)init;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)setFrame:(CGRect)frame;
- (void)setString:(id)string;
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
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
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

- (void)drawInContext:(CGContext *)context
{
  string = [(_MKLegendString *)self string];
  if (string)
  {
    line = self->_line;

    if (line)
    {
      CGContextSaveGState(context);
      [(_MKLegendString *)self bounds];
      CGContextTranslateCTM(context, 0.0, v7);
      CGContextScaleCTM(context, 1.0, -1.0);
      CGContextSetTextPosition(context, 0.0, self->_baselineDistanceFromBottom);
      VKLineDrawWithOuterStroke();

      CGContextRestoreGState(context);
    }
  }
}

- (void)setString:(id)string
{
  stringCopy = string;
  v6 = stringCopy;
  if (self->_string != stringCopy)
  {
    v10 = stringCopy;
    v7 = [(NSAttributedString *)stringCopy isEqualToAttributedString:?];
    v6 = v10;
    if (!v7)
    {
      objc_storeStrong(&self->_string, string);
      line = self->_line;
      if (line)
      {
        CFRelease(line);
        self->_line = 0;
      }

      v6 = v10;
      if (self->_string)
      {
        string = [(_MKLegendString *)self string];
        self->_line = CTLineCreateWithAttributedString(string);

        v6 = v10;
      }
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = _MKLegendString;
  [(_MKLegendString *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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