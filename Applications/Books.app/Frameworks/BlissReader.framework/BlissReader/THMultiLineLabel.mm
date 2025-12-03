@interface THMultiLineLabel
- (CGSize)textShadowOffset;
- (CGSize)textSize;
- (THMultiLineLabel)initWithFrame:(CGRect)frame;
- (__CFAttributedString)p_createAttributedString;
- (double)firstLineAscent;
- (unint64_t)lineCount;
- (unint64_t)lineCountForWidth:(double)width;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)p_ensureTypesetterCreated;
- (void)p_enumerateLinesForWidth:(double)width withBlock:(id)block;
- (void)p_enumerateLinesWithBlock:(id)block;
- (void)p_tearDownTypesetter;
- (void)resizeToFitCurrentWidth;
- (void)resizeToFitTightly;
- (void)setAlignment:(int)alignment;
- (void)setFont:(id)font;
- (void)setRunIn:(id)in;
- (void)setRunInFont:(id)font;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setTextShadowColor:(id)color;
@end

@implementation THMultiLineLabel

- (THMultiLineLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = THMultiLineLabel;
  v7 = [(THMultiLineLabel *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(THMultiLineLabel *)v7 setFrame:x, y, width, height];
    -[THMultiLineLabel setBackgroundColor:](v8, "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
    [(THMultiLineLabel *)v8 setOpaque:0];
    v8->_scale = 1.0;
  }

  return v8;
}

- (void)dealloc
{
  self->_runIn = 0;

  self->_text = 0;
  self->_font = 0;

  self->_runInFont = 0;
  self->_textColor = 0;
  typesetter = self->_typesetter;
  if (typesetter)
  {
    CFRelease(typesetter);
    self->_typesetter = 0;
  }

  self->_textShadowColor = 0;
  v4.receiver = self;
  v4.super_class = THMultiLineLabel;
  [(THMultiLineLabel *)&v4 dealloc];
}

- (void)setRunIn:(id)in
{
  v4 = [in copy];

  self->_runIn = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setText:(id)text
{
  v4 = [text copy];

  self->_text = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setFont:(id)font
{
  fontCopy = font;

  self->_font = fontCopy;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setRunInFont:(id)font
{
  fontCopy = font;

  self->_runInFont = fontCopy;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;

  self->_textColor = colorCopy;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setAlignment:(int)alignment
{
  self->_alignment = alignment;
  if (alignment <= 1)
  {
    if (alignment)
    {
      v4 = 0.5;
      if (alignment == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_9:
    v4 = 0.0;
    goto LABEL_12;
  }

  if (alignment != 4)
  {
    if (alignment != 3)
    {
      if (alignment == 2)
      {
        v4 = 1.0;
        goto LABEL_12;
      }

LABEL_8:
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  userInterfaceLayoutDirection = [+[UIApplication sharedApplication](UIApplication userInterfaceLayoutDirection];
  v4 = 0.0;
  if (userInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v4 = 1.0;
  }

LABEL_12:
  self->_flushFactor = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setTextShadowColor:(id)color
{
  colorCopy = color;

  self->_textShadowColor = color;

  [(THMultiLineLabel *)self setNeedsDisplay];
}

- (unint64_t)lineCount
{
  [(THMultiLineLabel *)self bounds];

  return [(THMultiLineLabel *)self lineCountForWidth:v3];
}

- (double)firstLineAscent
{
  ascent = 0.0;
  [(THMultiLineLabel *)self p_ensureTypesetterCreated];
  if (!self->_typesetter)
  {
    return 0.0;
  }

  [(THMultiLineLabel *)self bounds];
  v4 = v3;
  v10.length = CTTypesetterSuggestLineBreak(self->_typesetter, 0, v3);
  v10.location = 0;
  Line = CTTypesetterCreateLine(self->_typesetter, v10);
  v6 = Line;
  if (self->_alignment == 3)
  {
    JustifiedLine = CTLineCreateJustifiedLine(Line, 1.0, v4);
    CFRelease(v6);
    v6 = JustifiedLine;
  }

  CTLineGetTypographicBounds(v6, &ascent, 0, 0);
  CFRelease(v6);
  return ascent;
}

- (unint64_t)lineCountForWidth:(double)width
{
  [(THMultiLineLabel *)self p_ensureTypesetterCreated];
  if (!self->_typesetter || ![(NSString *)self->_text length])
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v5 += CTTypesetterSuggestLineBreak(self->_typesetter, v5, width);
    ++v6;
  }

  while (v5 < [(NSString *)self->_text length]);
  return v6;
}

- (void)resizeToFitTightly
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x4012000000;
  v4[3] = sub_E59E4;
  v4[4] = nullsub_21;
  v4[5] = "";
  v5 = CGSizeZero;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_E59F4;
  v3[3] = &unk_45D398;
  v3[4] = v4;
  [(THMultiLineLabel *)self p_enumerateLinesForWidth:v3 withBlock:1.79769313e308];
  [(THMultiLineLabel *)self bounds];
  [(THMultiLineLabel *)self setBounds:?];
  _Block_object_dispose(v4, 8);
}

- (void)resizeToFitCurrentWidth
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v4[3] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_E5B40;
  v3[3] = &unk_45D398;
  v3[4] = v4;
  [(THMultiLineLabel *)self p_enumerateLinesWithBlock:v3];
  [(THMultiLineLabel *)self bounds];
  [(THMultiLineLabel *)self setBounds:?];
  _Block_object_dispose(v4, 8);
}

- (void)drawInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  textShadowColor = self->_textShadowColor;
  if (textShadowColor)
  {
    width = self->_textShadowOffset.width;
    height = self->_textShadowOffset.height;
    textShadowBlur = self->_textShadowBlur;
    cGColor = [(TSUColor *)textShadowColor CGColor];
    v12.width = width;
    v12.height = height;
    CGContextSetShadowWithColor(context, v12, textShadowBlur, cGColor);
  }

  CGAffineTransformMakeScale(&v11, 1.0, -1.0);
  CGContextSetTextMatrix(context, &v11);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_E5CA4;
  v10[3] = &unk_45D3B8;
  v10[4] = context;
  [(THMultiLineLabel *)self p_enumerateLinesWithBlock:v10];
  CGContextRestoreGState(context);
}

- (__CFAttributedString)p_createAttributedString
{
  Mutable = CFAttributedStringCreateMutable(0, [(NSString *)self->_runIn length]+ [(NSString *)self->_text length]);
  v4 = [(NSString *)self->_runIn length];
  v5 = [(NSString *)self->_runIn length];
  v6 = [(NSString *)self->_text length];
  CFAttributedStringBeginEditing(Mutable);
  runIn = self->_runIn;
  text = &stru_471858;
  if (!runIn)
  {
    runIn = &stru_471858;
  }

  if (self->_text)
  {
    text = self->_text;
  }

  text = [NSString stringWithFormat:@"%@%@", runIn, text];
  v17.location = 0;
  v17.length = 0;
  CFAttributedStringReplaceString(Mutable, v17, text);
  font = self->_font;
  if (font)
  {
    cTFont = [[(TSUFont *)font fontWithScale:self->_scale] CTFont];
    v18.length = v6 + v5;
    v18.location = 0;
    CFAttributedStringSetAttribute(Mutable, v18, kCTFontAttributeName, cTFont);
  }

  textColor = self->_textColor;
  if (textColor)
  {
    cGColor = [(TSUColor *)textColor CGColor];
    v19.length = v6 + v5;
    v19.location = 0;
    CFAttributedStringSetAttribute(Mutable, v19, kCTForegroundColorAttributeName, cGColor);
  }

  if (self->_runIn)
  {
    runInFont = self->_runInFont;
    if (runInFont)
    {
      cTFont2 = [[(TSUFont *)runInFont fontWithScale:self->_scale] CTFont];
      v20.location = 0;
      v20.length = v4;
      CFAttributedStringSetAttribute(Mutable, v20, kCTFontAttributeName, cTFont2);
    }
  }

  CFAttributedStringEndEditing(Mutable);
  return Mutable;
}

- (void)p_ensureTypesetterCreated
{
  if (!self->_typesetter)
  {
    p_createAttributedString = [(THMultiLineLabel *)self p_createAttributedString];
    self->_typesetter = CTTypesetterCreateWithAttributedString(p_createAttributedString);

    CFRelease(p_createAttributedString);
  }
}

- (void)p_tearDownTypesetter
{
  typesetter = self->_typesetter;
  if (typesetter)
  {
    CFRelease(typesetter);
    self->_typesetter = 0;
  }

  [(THMultiLineLabel *)self setNeedsDisplay];
}

- (void)p_enumerateLinesWithBlock:(id)block
{
  [(THMultiLineLabel *)self bounds];

  [(THMultiLineLabel *)self p_enumerateLinesForWidth:block withBlock:v5];
}

- (void)p_enumerateLinesForWidth:(double)width withBlock:(id)block
{
  selfCopy = self;
  [(THMultiLineLabel *)self p_ensureTypesetterCreated];
  v7 = 112;
  if (selfCopy->_typesetter)
  {
    lineHeight = selfCopy->_lineHeight;
    if (lineHeight == 0.0)
    {
      [(TSUFont *)selfCopy->_font lineHeight];
      v10 = v9;
      runInFont = selfCopy->_runInFont;
      if (runInFont)
      {
        [(TSUFont *)runInFont lineHeight];
      }

      else
      {
        v12 = 0.0;
      }

      lineHeight = fmax(v10, v12);
    }

    scale = selfCopy->_scale;
    v14 = 16;
    if ([(NSString *)selfCopy->_text length])
    {
      v15 = 0;
      v16 = lineHeight * scale;
      v17 = block + 16;
      v18 = 1;
      v19 = &OBJC_IVAR___THWFreeTransformGestureRecognizer_mTouch1;
      v32 = selfCopy;
      do
      {
        v20 = CTTypesetterSuggestLineBreak(*&selfCopy->TSDNoDefaultImplicitActionLayer_opaque[v7], v15, width);
        v34.location = v15;
        v34.length = v20;
        Line = CTTypesetterCreateLine(*&selfCopy->TSDNoDefaultImplicitActionLayer_opaque[v7], v34);
        v22 = Line;
        if (*&selfCopy->TSDNoDefaultImplicitActionLayer_opaque[v19[779]] == 3)
        {
          v23 = v7;
          blockCopy = block;
          v25 = v17;
          v26 = v14;
          v27 = v19;
          JustifiedLine = CTLineCreateJustifiedLine(Line, 1.0, width);
          CFRelease(v22);
          v22 = JustifiedLine;
          v19 = v27;
          v14 = v26;
          v17 = v25;
          block = blockCopy;
          v7 = v23;
          selfCopy = v32;
        }

        PenOffsetForFlush = CTLineGetPenOffsetForFlush(v22, selfCopy->_flushFactor, width);
        descent = 0.0;
        CTLineGetTypographicBounds(v22, 0, &descent, 0);
        v30 = PenOffsetForFlush;
        v31 = -(descent - v18 * v16);
        (*(block + 2))(block, v22, roundf(v30), roundf(v31));
        CFRelease(v22);
        v15 += v20;
        ++v18;
      }

      while (v15 < [*&selfCopy->TSDNoDefaultImplicitActionLayer_opaque[v14] length]);
    }
  }
}

- (CGSize)textShadowOffset
{
  width = self->_textShadowOffset.width;
  height = self->_textShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)textSize
{
  width = self->_textSize.width;
  height = self->_textSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end