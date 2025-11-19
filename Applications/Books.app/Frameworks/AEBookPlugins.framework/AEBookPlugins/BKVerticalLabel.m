@interface BKVerticalLabel
- (void)drawRect:(CGRect)a3;
@end

@implementation BKVerticalLabel

- (void)drawRect:(CGRect)a3
{
  v4 = [(BKVerticalLabel *)self text:a3.origin.x];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(BKVerticalLabel *)self text];
    v7 = [NSMutableString stringWithString:v6];

    for (i = 0; i != v5; ++i)
    {
      v9 = [(__CFString *)v7 characterAtIndex:i];
      if (v9 - 48 <= 9)
      {
        LOWORD(v47.a) = v9 - 288;
        v10 = [NSString stringWithCharacters:&v47 length:1];
        [(__CFString *)v7 replaceCharactersInRange:i withString:1, v10];
      }
    }

    Mutable = CFAttributedStringCreateMutable(kCFAllocatorDefault, v5);
    if (!Mutable)
    {
      goto LABEL_22;
    }

    v12 = Mutable;
    v48.location = 0;
    v48.length = 0;
    CFAttributedStringReplaceString(Mutable, v48, v7);
    v13 = [(BKVerticalLabel *)self font];
    [v13 pointSize];
    v15 = v14;

    v16 = [(BKVerticalLabel *)self font];
    v17 = [v16 fontName];
    v18 = CTFontCreateWithName(v17, v15, 0);

    if (!v18)
    {
LABEL_21:
      CFRelease(v12);
LABEL_22:

      return;
    }

    v49.location = 0;
    v49.length = v5;
    value = v18;
    CFAttributedStringSetAttribute(v12, v49, kCTFontAttributeName, v18);
    v19 = [(BKVerticalLabel *)self textColor];
    v20 = [v19 CGColor];
    v50.location = 0;
    v50.length = v5;
    CFAttributedStringSetAttribute(v12, v50, kCTForegroundColorAttributeName, v20);

    v51.location = 0;
    v51.length = v5;
    CFAttributedStringSetAttribute(v12, v51, kCTVerticalFormsAttributeName, kCFBooleanTrue);
    CurrentContext = UIGraphicsGetCurrentContext();
    if (!CurrentContext)
    {
      goto LABEL_20;
    }

    v22 = CurrentContext;
    CGAffineTransformMakeScale(&v47, 1.0, -1.0);
    CGContextSetTextMatrix(v22, &v47);
    v23 = CTTypesetterCreateWithAttributedString(v12);
    if (!v23)
    {
      goto LABEL_20;
    }

    v24 = v23;
    v52.location = 0;
    v52.length = v5;
    Line = CTTypesetterCreateLine(v23, v52);
    if (!Line)
    {
LABEL_19:
      CFRelease(v24);
      goto LABEL_20;
    }

    v26 = Line;
    ImageBounds = CTLineGetImageBounds(Line, v22);
    v27 = ceil(CGRectGetWidth(ImageBounds));
    [(BKVerticalLabel *)self bounds];
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    height = v58.size.height;
    if (v27 <= CGRectGetWidth(v58))
    {
      TruncatedLine = 0;
      v36 = 0;
      v33 = 0;
    }

    else
    {
      v32 = CFAttributedStringCreateMutable(kCFAllocatorDefault, 1);
      v33 = v32;
      if (!v32)
      {
        goto LABEL_18;
      }

      v53.location = 0;
      v53.length = 0;
      CFAttributedStringReplaceString(v32, v53, @"…");
      v54.location = 0;
      v54.length = 1;
      CFAttributedStringSetAttribute(v33, v54, kCTFontAttributeName, value);
      v34 = [(BKVerticalLabel *)self textColor];
      v35 = [v34 CGColor];
      v55.location = 0;
      v55.length = 1;
      CFAttributedStringSetAttribute(v33, v55, kCTForegroundColorAttributeName, v35);

      v56.location = 0;
      v56.length = 1;
      CFAttributedStringSetAttribute(v33, v56, kCTVerticalFormsAttributeName, kCFBooleanTrue);
      v36 = CTLineCreateWithAttributedString(v33);
      v59 = CTLineGetImageBounds(v36, v22);
      attrName = v59.origin.x;
      v37 = v59.origin.y;
      v38 = v59.size.width;
      v39 = v59.size.height;
      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      v40 = CGRectGetWidth(v59);
      v60.origin.x = attrName;
      v60.origin.y = v37;
      v60.size.width = v38;
      v60.size.height = v39;
      v41 = CGRectGetWidth(v60);
      TruncatedLine = CTLineCreateTruncatedLine(v26, v40 - ceil(v41), kCTLineTruncationEnd, v36);
    }

    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    v43 = CGRectGetWidth(v61);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v44 = CGRectGetHeight(v62);
    CGContextSetTextPosition(v22, v43, round(v44 * 0.5));
    if (TruncatedLine)
    {
      CTLineDraw(TruncatedLine, v22);
      CFRelease(TruncatedLine);
      if (!v36)
      {
        goto LABEL_18;
      }
    }

    else
    {
      CTLineDraw(v26, v22);
      if (!v36)
      {
LABEL_18:
        CFRelease(v26);
        CFRelease(v24);
        v24 = v33;
        if (v33)
        {
          goto LABEL_19;
        }

LABEL_20:
        CFRelease(value);
        goto LABEL_21;
      }
    }

    CFRelease(v36);
    goto LABEL_18;
  }
}

@end