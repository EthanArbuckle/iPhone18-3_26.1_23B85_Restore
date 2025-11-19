@interface THMultiLineLabel
- (CGSize)textShadowOffset;
- (CGSize)textSize;
- (THMultiLineLabel)initWithFrame:(CGRect)a3;
- (__CFAttributedString)p_createAttributedString;
- (double)firstLineAscent;
- (unint64_t)lineCount;
- (unint64_t)lineCountForWidth:(double)a3;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)p_ensureTypesetterCreated;
- (void)p_enumerateLinesForWidth:(double)a3 withBlock:(id)a4;
- (void)p_enumerateLinesWithBlock:(id)a3;
- (void)p_tearDownTypesetter;
- (void)resizeToFitCurrentWidth;
- (void)resizeToFitTightly;
- (void)setAlignment:(int)a3;
- (void)setFont:(id)a3;
- (void)setRunIn:(id)a3;
- (void)setRunInFont:(id)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextShadowColor:(id)a3;
@end

@implementation THMultiLineLabel

- (THMultiLineLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setRunIn:(id)a3
{
  v4 = [a3 copy];

  self->_runIn = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];

  self->_text = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setFont:(id)a3
{
  v4 = a3;

  self->_font = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setRunInFont:(id)a3
{
  v4 = a3;

  self->_runInFont = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setTextColor:(id)a3
{
  v4 = a3;

  self->_textColor = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setAlignment:(int)a3
{
  self->_alignment = a3;
  if (a3 <= 1)
  {
    if (a3)
    {
      v4 = 0.5;
      if (a3 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_9:
    v4 = 0.0;
    goto LABEL_12;
  }

  if (a3 != 4)
  {
    if (a3 != 3)
    {
      if (a3 == 2)
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

  v5 = [+[UIApplication sharedApplication](UIApplication userInterfaceLayoutDirection];
  v4 = 0.0;
  if (v5 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v4 = 1.0;
  }

LABEL_12:
  self->_flushFactor = v4;

  [(THMultiLineLabel *)self p_tearDownTypesetter];
}

- (void)setTextShadowColor:(id)a3
{
  v5 = a3;

  self->_textShadowColor = a3;

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

- (unint64_t)lineCountForWidth:(double)a3
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
    v5 += CTTypesetterSuggestLineBreak(self->_typesetter, v5, a3);
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

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  textShadowColor = self->_textShadowColor;
  if (textShadowColor)
  {
    width = self->_textShadowOffset.width;
    height = self->_textShadowOffset.height;
    textShadowBlur = self->_textShadowBlur;
    v9 = [(TSUColor *)textShadowColor CGColor];
    v12.width = width;
    v12.height = height;
    CGContextSetShadowWithColor(a3, v12, textShadowBlur, v9);
  }

  CGAffineTransformMakeScale(&v11, 1.0, -1.0);
  CGContextSetTextMatrix(a3, &v11);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_E5CA4;
  v10[3] = &unk_45D3B8;
  v10[4] = a3;
  [(THMultiLineLabel *)self p_enumerateLinesWithBlock:v10];
  CGContextRestoreGState(a3);
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

  v9 = [NSString stringWithFormat:@"%@%@", runIn, text];
  v17.location = 0;
  v17.length = 0;
  CFAttributedStringReplaceString(Mutable, v17, v9);
  font = self->_font;
  if (font)
  {
    v11 = [[(TSUFont *)font fontWithScale:self->_scale] CTFont];
    v18.length = v6 + v5;
    v18.location = 0;
    CFAttributedStringSetAttribute(Mutable, v18, kCTFontAttributeName, v11);
  }

  textColor = self->_textColor;
  if (textColor)
  {
    v13 = [(TSUColor *)textColor CGColor];
    v19.length = v6 + v5;
    v19.location = 0;
    CFAttributedStringSetAttribute(Mutable, v19, kCTForegroundColorAttributeName, v13);
  }

  if (self->_runIn)
  {
    runInFont = self->_runInFont;
    if (runInFont)
    {
      v15 = [[(TSUFont *)runInFont fontWithScale:self->_scale] CTFont];
      v20.location = 0;
      v20.length = v4;
      CFAttributedStringSetAttribute(Mutable, v20, kCTFontAttributeName, v15);
    }
  }

  CFAttributedStringEndEditing(Mutable);
  return Mutable;
}

- (void)p_ensureTypesetterCreated
{
  if (!self->_typesetter)
  {
    v3 = [(THMultiLineLabel *)self p_createAttributedString];
    self->_typesetter = CTTypesetterCreateWithAttributedString(v3);

    CFRelease(v3);
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

- (void)p_enumerateLinesWithBlock:(id)a3
{
  [(THMultiLineLabel *)self bounds];

  [(THMultiLineLabel *)self p_enumerateLinesForWidth:a3 withBlock:v5];
}

- (void)p_enumerateLinesForWidth:(double)a3 withBlock:(id)a4
{
  v6 = self;
  [(THMultiLineLabel *)self p_ensureTypesetterCreated];
  v7 = 112;
  if (v6->_typesetter)
  {
    lineHeight = v6->_lineHeight;
    if (lineHeight == 0.0)
    {
      [(TSUFont *)v6->_font lineHeight];
      v10 = v9;
      runInFont = v6->_runInFont;
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

    scale = v6->_scale;
    v14 = 16;
    if ([(NSString *)v6->_text length])
    {
      v15 = 0;
      v16 = lineHeight * scale;
      v17 = a4 + 16;
      v18 = 1;
      v19 = &OBJC_IVAR___THWFreeTransformGestureRecognizer_mTouch1;
      v32 = v6;
      do
      {
        v20 = CTTypesetterSuggestLineBreak(*&v6->TSDNoDefaultImplicitActionLayer_opaque[v7], v15, a3);
        v34.location = v15;
        v34.length = v20;
        Line = CTTypesetterCreateLine(*&v6->TSDNoDefaultImplicitActionLayer_opaque[v7], v34);
        v22 = Line;
        if (*&v6->TSDNoDefaultImplicitActionLayer_opaque[v19[779]] == 3)
        {
          v23 = v7;
          v24 = a4;
          v25 = v17;
          v26 = v14;
          v27 = v19;
          JustifiedLine = CTLineCreateJustifiedLine(Line, 1.0, a3);
          CFRelease(v22);
          v22 = JustifiedLine;
          v19 = v27;
          v14 = v26;
          v17 = v25;
          a4 = v24;
          v7 = v23;
          v6 = v32;
        }

        PenOffsetForFlush = CTLineGetPenOffsetForFlush(v22, v6->_flushFactor, a3);
        descent = 0.0;
        CTLineGetTypographicBounds(v22, 0, &descent, 0);
        v30 = PenOffsetForFlush;
        v31 = -(descent - v18 * v16);
        (*(a4 + 2))(a4, v22, roundf(v30), roundf(v31));
        CFRelease(v22);
        v15 += v20;
        ++v18;
      }

      while (v15 < [*&v6->TSDNoDefaultImplicitActionLayer_opaque[v14] length]);
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