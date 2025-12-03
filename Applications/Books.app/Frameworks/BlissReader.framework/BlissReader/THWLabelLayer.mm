@interface THWLabelLayer
- (CGRect)p_erasableBounds;
- (CGRect)p_flippedImageBounds;
- (THWLabelLayer)init;
- (double)p_xOffsetForHorizontalAlignment:(int)alignment;
- (double)p_yOffsetForVerticalAlignment:(int)alignment;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSublayers;
- (void)p_invalidateText;
- (void)setContentsScale:(double)scale;
- (void)setFontName:(id)name;
- (void)setFontSize:(double)size;
- (void)setHorizontalAlignment:(int)alignment;
- (void)setShadow:(id)shadow;
- (void)setShadowScale:(double)scale;
- (void)setString:(id)string;
- (void)setTextColor:(id)color;
- (void)setVerticalAlignment:(int)alignment;
- (void)setVerticalAlignmentRule:(int)rule;
@end

@implementation THWLabelLayer

- (THWLabelLayer)init
{
  v5.receiver = self;
  v5.super_class = THWLabelLayer;
  v2 = [(THWLabelLayer *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CALayer);
    v2->_renderLayer = v3;
    [(CALayer *)v3 setDelegate:v2];
    [(THWLabelLayer *)v2 addSublayer:v2->_renderLayer];
  }

  return v2;
}

- (void)dealloc
{
  line = self->_line;
  if (line)
  {
    CFRelease(line);
  }

  v4.receiver = self;
  v4.super_class = THWLabelLayer;
  [(THWLabelLayer *)&v4 dealloc];
}

- (void)setString:(id)string
{
  if (self->_string != string && ([string isEqualToString:?] & 1) == 0)
  {

    self->_string = [string copy];

    [(THWLabelLayer *)self p_invalidateText];
  }
}

- (void)setFontName:(id)name
{
  if (self->_fontName != name && ([name isEqualToString:?] & 1) == 0)
  {

    self->_fontName = [name copy];

    [(THWLabelLayer *)self p_invalidateText];
  }
}

- (void)setFontSize:(double)size
{
  if (self->_fontSize != size)
  {
    self->_fontSize = size;
    [(THWLabelLayer *)self p_invalidateText];
  }
}

- (void)setTextColor:(id)color
{
  if (self->_textColor != color && ([color isEqual:?] & 1) == 0)
  {

    self->_textColor = color;

    [(THWLabelLayer *)self p_invalidateText];
  }
}

- (void)setHorizontalAlignment:(int)alignment
{
  if (self->_horizontalAlignment != alignment)
  {
    self->_horizontalAlignment = alignment;
    [(THWLabelLayer *)self p_invalidatePosition];
  }
}

- (void)setVerticalAlignment:(int)alignment
{
  if (self->_verticalAlignment != alignment)
  {
    self->_verticalAlignment = alignment;
    [(THWLabelLayer *)self p_invalidatePosition];
  }
}

- (void)setVerticalAlignmentRule:(int)rule
{
  if (self->_verticalAlignmentRule != rule)
  {
    self->_verticalAlignmentRule = rule;
    [(THWLabelLayer *)self p_invalidatePosition];
  }
}

- (void)setShadow:(id)shadow
{
  if (self->_shadow != shadow && ([shadow isEqual:?] & 1) == 0)
  {

    self->_shadow = [shadow copy];

    [(THWLabelLayer *)self p_invalidateText];
  }
}

- (void)setShadowScale:(double)scale
{
  if (vabdd_f64(scale, self->_shadowScale) >= 0.00999999978)
  {
    self->_shadowScale = scale;
    [(THWLabelLayer *)self p_invalidateText];
  }
}

- (void)layoutSublayers
{
  v15.receiver = self;
  v15.super_class = THWLabelLayer;
  [(THWLabelLayer *)&v15 layoutSublayers];
  if (!self->_line)
  {
    if (self->_string)
    {
      v3 = CTFontCreateWithName(self->_fontName, self->_fontSize, 0);
      if (v3)
      {
        v4 = v3;
        v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{v3, kCTFontAttributeName, -[TSUColor CGColor](self->_textColor, "CGColor"), kCTForegroundColorAttributeName, 0}];
        v6 = [[NSAttributedString alloc] initWithString:self->_string attributes:v5];
        self->_line = CTLineCreateWithAttributedString(v6);

        CFRelease(v4);
      }
    }

    [(THWLabelLayer *)self p_erasableBounds];
    [(CALayer *)self->_renderLayer setBounds:?];
    [(CALayer *)self->_renderLayer setAnchorPoint:CGPointZero.x, CGPointZero.y];
    [(CALayer *)self->_renderLayer bounds];
    v8 = v7;
    [(CALayer *)self->_renderLayer bounds];
    [(CALayer *)self->_renderLayer setPosition:v8];
    [(CALayer *)self->_renderLayer setNeedsDisplay];
  }

  [(THWLabelLayer *)self p_xOffsetForHorizontalAlignment:self->_horizontalAlignment];
  [(THWLabelLayer *)self p_yOffsetForVerticalAlignment:self->_verticalAlignment];
  TSURound();
  v10 = v9;
  TSURound();
  CATransform3DMakeTranslation(&v14, v10, v11, 0.0);
  renderLayer = self->_renderLayer;
  v13 = v14;
  [(CALayer *)renderLayer setTransform:&v13];
}

- (void)drawInContext:(CGContext *)context
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THWLabelLayer drawInContext:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWLabelLayer.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:204 description:@"all rendering should happen in the render layer"];
}

- (void)setContentsScale:(double)scale
{
  v6.receiver = self;
  v6.super_class = THWLabelLayer;
  [(THWLabelLayer *)&v6 setContentsScale:?];
  [(CALayer *)self->_renderLayer contentsScale];
  if (v5 != scale)
  {
    [(CALayer *)self->_renderLayer setContentsScale:scale];
    [(CALayer *)self->_renderLayer setNeedsDisplay];
  }
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if (self->_renderLayer != layer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [layer contentsScale];
  TSDSetCGContextInfo();
  CGAffineTransformMakeScale(&v7, 1.0, -1.0);
  CGContextSetTextMatrix(context, &v7);
  [(TSDShadow *)self->_shadow applyToContext:context viewScale:1 flipped:self->_shadowScale];
  CGContextSetTextPosition(context, 0.0, 0.0);
  CGContextSetShouldSmoothFonts(context, 0);
  CGContextSetShouldAntialias(context, 1);
  CTLineDraw(self->_line, context);
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  if (self->_renderLayer != layer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return +[NSNull null];
}

- (void)p_invalidateText
{
  line = self->_line;
  if (line)
  {
    CFRelease(line);
    self->_line = 0;
  }

  [(THWLabelLayer *)self setNeedsLayout];
}

- (CGRect)p_flippedImageBounds
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (self->_line)
  {
    if (qword_5678E0 != -1)
    {
      sub_29D3D4();
    }

    ImageBounds = CTLineGetImageBounds(self->_line, qword_5678D8);
    v7 = ImageBounds.origin.x;
    v8 = ImageBounds.origin.y;
    v9 = ImageBounds.size.width;
    v10 = ImageBounds.size.height;
    if (!CGRectIsNull(ImageBounds))
    {
      CGAffineTransformMakeScale(&v15, 1.0, -1.0);
      v17.origin.x = v7;
      v17.origin.y = v8;
      v17.size.width = v9;
      v17.size.height = v10;
      v18 = CGRectApplyAffineTransform(v17, &v15);
      v19 = CGRectIntegral(v18);
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
    }
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)p_erasableBounds
{
  [(THWLabelLayer *)self p_flippedImageBounds];
  shadow = self->_shadow;
  if (shadow)
  {
    [(TSDShadow *)shadow shadowBoundsForRect:?];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)p_xOffsetForHorizontalAlignment:(int)alignment
{
  v3 = 0.0;
  if (alignment == 1)
  {
    v3 = 0.5;
  }

  if (alignment == 2)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = v3;
  }

  line = self->_line;
  [(THWLabelLayer *)self bounds];

  return CTLineGetPenOffsetForFlush(line, v4, v6);
}

- (double)p_yOffsetForVerticalAlignment:(int)alignment
{
  v16 = 0.0;
  ascent = 0.0;
  TypographicBounds = CTLineGetTypographicBounds(self->_line, &ascent, &v16, 0);
  if (alignment == 2)
  {
    verticalAlignmentRule = self->_verticalAlignmentRule;
    [(THWLabelLayer *)self bounds];
    result = v15;
    if (!verticalAlignmentRule)
    {
      return v15 - v16;
    }
  }

  else
  {
    v6 = ascent;
    if (alignment == 1)
    {
      v8 = v16;
      v9 = self->_verticalAlignmentRule;
      [(THWLabelLayer *)self bounds];
      v11 = v10 * 0.5;
      if (v9)
      {
        v12 = ascent;
        v13 = v11 + ascent * -0.5;
      }

      else
      {
        v13 = v11 + (v6 + v8) * -0.5;
        v12 = ascent;
      }

      return v12 + v13;
    }

    else
    {
      result = 0.0;
      if (!alignment)
      {
        return ascent;
      }
    }
  }

  return result;
}

@end