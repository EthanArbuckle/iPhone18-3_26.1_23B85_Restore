@interface THLabelWithWordHighlights
- (THLabelWithWordHighlights)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setText:(id)a3;
@end

@implementation THLabelWithWordHighlights

- (THLabelWithWordHighlights)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = THLabelWithWordHighlights;
  v3 = [(THLabelWithWordHighlights *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v3->mTextColor = +[UIColor blackColor];
    v3->mTextFont = [UIFont systemFontOfSize:15.0];
    v3->mHighlightedTextColor = +[UIColor blackColor];
    v3->mHighlightedTextFont = [UIFont boldSystemFontOfSize:15.0];
    [(THLabelWithWordHighlights *)v3 setOpaque:0];
  }

  return v3;
}

- (void)dealloc
{
  [(THLabelWithWordHighlights *)self setText:0];
  [(THLabelWithWordHighlights *)self setTextColor:0];
  [(THLabelWithWordHighlights *)self setTextFont:0];
  [(THLabelWithWordHighlights *)self setHighlightedTextColor:0];
  [(THLabelWithWordHighlights *)self setHighlightedTextFont:0];
  v3.receiver = self;
  v3.super_class = THLabelWithWordHighlights;
  [(THLabelWithWordHighlights *)&v3 dealloc];
}

- (void)drawRect:(CGRect)a3
{
  if ([(NSString *)self->mText length:a3.origin.x])
  {
    v4 = [(NSString *)self->mText componentsSeparatedByCharactersInSet:+[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v42;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v42 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v41 + 1) + 8 * i);
          if (v7)
          {
            [(NSMutableString *)v7 appendFormat:@" %@", *(*(&v41 + 1) + 8 * i)];
          }

          else
          {
            v7 = [NSMutableString stringWithCapacity:[(NSString *)self->mText length]];
            [(NSMutableString *)v7 appendString:v10];
          }
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    Mutable = CFAttributedStringCreateMutable(0, 0);
    CFAttributedStringBeginEditing(Mutable);
    v47.location = 0;
    v47.length = 0;
    CFAttributedStringReplaceString(Mutable, v47, v7);
    v12 = [(NSMutableString *)v7 length];
    v13 = [(UIFont *)self->mTextFont fontName];
    [(UIFont *)self->mTextFont pointSize];
    v15 = CTFontCreateWithName(v13, v14, 0);
    v48.location = 0;
    v48.length = v12;
    CFAttributedStringSetAttribute(Mutable, v48, kCTFontAttributeName, v15);
    v16 = [(UIColor *)self->mTextColor CGColor];
    aStr = Mutable;
    v49.location = 0;
    v49.length = v12;
    CFAttributedStringSetAttribute(Mutable, v49, kCTForegroundColorAttributeName, v16);
    CFRelease(v15);
    if (self->mDelegate)
    {
      v17 = [(UIFont *)self->mHighlightedTextFont fontName];
      [(UIFont *)self->mHighlightedTextFont pointSize];
      cf = CTFontCreateWithName(v17, v18, 0);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v19 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v38;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v4);
            }

            v24 = *(*(&v37 + 1) + 8 * j);
            if (v21 > 0)
            {
              ++v21;
            }

            if ([(THLabelWithWordHighlightsDelegate *)self->mDelegate shouldHighlightWord:*(*(&v37 + 1) + 8 * j)])
            {
              v25 = [v24 length];
              v50.location = v21;
              v50.length = v25;
              CFAttributedStringSetAttribute(aStr, v50, kCTFontAttributeName, cf);
              v26 = [(UIColor *)self->mHighlightedTextColor CGColor];
              v51.location = v21;
              v51.length = v25;
              CFAttributedStringSetAttribute(aStr, v51, kCTForegroundColorAttributeName, v26);
            }

            v21 += [v24 length];
          }

          v20 = [(NSArray *)v4 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v20);
      }

      CFRelease(cf);
    }

    CFAttributedStringEndEditing(aStr);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v28 = *&CGAffineTransformIdentity.c;
    *&v36.a = *&CGAffineTransformIdentity.a;
    *&v36.c = v28;
    *&v36.tx = *&CGAffineTransformIdentity.tx;
    CGContextSetTextMatrix(CurrentContext, &v36);
    [(THLabelWithWordHighlights *)self frame];
    CGContextTranslateCTM(CurrentContext, 0.0, v29);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    v30 = CTLineCreateWithAttributedString(aStr);
    [(THLabelWithWordHighlights *)self frame];
    v32 = v31;
    [(UIFont *)self->mTextFont capHeight];
    *&v33 = (v32 - v33) * 0.5;
    CGContextSetTextPosition(CurrentContext, 0.0, floorf(*&v33));
    CTLineDraw(v30, CurrentContext);
    CFRelease(v30);
    CFRelease(aStr);
    CGContextRestoreGState(CurrentContext);
  }
}

- (void)setText:(id)a3
{
  mText = self->mText;
  if (mText != a3)
  {
    if (mText)
    {
    }

    self->mText = [a3 copy];

    [(THLabelWithWordHighlights *)self setNeedsDisplay];
  }
}

@end