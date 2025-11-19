@interface PDFAnnotationDrawing
+ (BOOL)renderString:(id)a3 forRect:(CGRect)a4 font:(id)a5 color:(id)a6 alignment:(int64_t)a7 rotation:(int)a8 breaks:(BOOL)a9 context:(CGContext *)c withAnnotation:(id)a11;
+ (CGPath)createCGPathArrayWithBezierPaths:(id)a3;
+ (CGRect)adjustedRectForBox:(int64_t)a3 withAnnotation:(id)a4;
+ (id)createLigtherColor:(CGColor *)a3 withIntensity:(double)a4;
+ (id)stringByTrimmingTrailingCharactersInSet:(id)a3 forString:(id)a4;
+ (void)createPillBezier:(CGRect)a3 inContext:(CGContext *)a4;
+ (void)drawAppearance:(int)a3 ofAnnotation:(id)a4 withBox:(int64_t)a5 inContext:(CGContext *)a6 scaleProportional:(BOOL)a7 suppressTextRendering:(BOOL)a8;
+ (void)drawArrowFrom:(CGPoint)a3 to:(CGPoint)a4 open:(BOOL)a5 inContext:(CGContext *)a6 withBorder:(id)a7;
+ (void)drawBulletAtPoint:(CGPoint)a3 shape:(int)a4 inContext:(CGContext *)a5 withBorder:(id)a6;
+ (void)drawCheckBox:(id)a3 inContext:(CGContext *)a4 withState:(int64_t)a5 withBackgroundColor:(id)a6 withBorderColor:(id)a7 withFontColor:(id)a8 isHighlighted:(BOOL)a9;
+ (void)drawComboBox:(CGRect)a3 inContext:(CGContext *)a4 withAnnotation:(id)a5 withStringValue:(id)a6 withFont:(id)a7 withFontColor:(id)a8;
+ (void)drawCommentIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5;
+ (void)drawCommonCommentNoteIconToContext:(CGContext *)a3 color:(id)a4 rect:(CGRect)a5;
+ (void)drawDisclosureBox:(CGRect)a3 inContext:(CGContext *)a4;
+ (void)drawHelpIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5;
+ (void)drawInsertIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5;
+ (void)drawKeyIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5;
+ (void)drawListBox:(CGRect)a3 inContext:(CGContext *)a4 withAnnotation:(id)a5 withOptions:(id)a6 withStringValue:(id)a7 withFont:(id)a8 withFontColor:(id)a9;
+ (void)drawNewParagraphIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5;
+ (void)drawNoteAsSelected:(CGContext *)a3 rect:(CGRect)a4;
+ (void)drawNoteIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5;
+ (void)drawNoteInContext:(CGContext *)a3 withParentAnnotation:(id)a4;
+ (void)drawParagraphIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5;
+ (void)drawPushButton:(id)a3 inContext:(CGContext *)a4 withBackgroundColor:(id)a5 withCaption:(id)a6 withFont:(id)a7 withFontColor:(id)a8 isHighlighted:(BOOL)a9;
+ (void)drawRadioButton:(id)a3 inContext:(CGContext *)a4 withState:(int64_t)a5 withBackgroundColor:(id)a6 withBorderColor:(id)a7 withFontColor:(id)a8 isHighlighted:(BOOL)a9;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withButtonWidgetAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withChoiceWidgetAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withCircleAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withFreeTextAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withInkAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withLineAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withLinkAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withMarkupAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withRedactAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withSignatureWidgetAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withSquareAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withStampAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withTextAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withTextWidgetAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4 withAKAnnotation:(id)a5 forAnnotation:(id)a6;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4 withAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4 withPopupAnnotation:(id)a5;
+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4 withUnknownAnnotation:(id)a5;
+ (void)fillOval:(CGRect)a3 color:(id)a4 context:(CGContext *)a5;
+ (void)fillRect:(CGRect)a3 color:(id)a4 context:(CGContext *)a5;
+ (void)setupDrawColor:(id)a3 forContext:(CGContext *)a4;
+ (void)strokeOval:(CGRect)a3 color:(id)a4 context:(CGContext *)a5;
+ (void)strokeRect:(CGRect)a3 color:(id)a4 context:(CGContext *)a5;
@end

@implementation PDFAnnotationDrawing

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4 withAnnotation:(id)a5
{
  v8 = a5;
  v9 = [v8 valueForAnnotationKey:@"/Subtype"];
  v10 = [v8 akAnnotationAdaptor];
  v11 = [v10 akAnnotation];

  if (v11)
  {
    [a1 drawWithBox:a3 inContext:a4 withAKAnnotation:v11 forAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Circle"])
  {
    [a1 drawWithBox:a3 inContext:a4 withCircleAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/FreeText"])
  {
    [a1 drawWithBox:a3 inContext:a4 withFreeTextAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Ink"])
  {
    [a1 drawWithBox:a3 inContext:a4 withInkAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Line"])
  {
    [a1 drawWithBox:a3 inContext:a4 withLineAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Link"])
  {
    [a1 drawWithBox:a3 inContext:a4 withLinkAnnotation:v8];
  }

  else if (([v9 isEqualToString:@"/Highlight"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"/StrikeOut") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"/Underline"))
  {
    [a1 drawWithBox:a3 inContext:a4 withMarkupAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Popup"])
  {
    [a1 drawWithBox:a3 inContext:a4 withPopupAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Square"])
  {
    [a1 drawWithBox:a3 inContext:a4 withSquareAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Stamp"])
  {
    [a1 drawWithBox:a3 inContext:a4 withStampAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Text"])
  {
    [a1 drawWithBox:a3 inContext:a4 withTextAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Redact"])
  {
    [a1 drawWithBox:a3 inContext:a4 withRedactAnnotation:v8];
  }

  else if ([v9 isEqualToString:@"/Widget"])
  {
    v15 = [v8 valueForAnnotationKey:@"/FT"];
    if ([v15 isEqualToString:@"/Btn"])
    {
      [a1 drawWithBox:a3 inContext:a4 withButtonWidgetAnnotation:v8];
    }

    else if ([v15 isEqualToString:@"/Tx"])
    {
      [a1 drawWithBox:a3 inContext:a4 withTextWidgetAnnotation:v8];
    }

    else if ([v15 isEqualToString:@"/Ch"])
    {
      [a1 drawWithBox:a3 inContext:a4 withChoiceWidgetAnnotation:v8];
    }

    else if ([v15 isEqualToString:@"/Sig"])
    {
      [a1 drawWithBox:a3 inContext:a4 withSignatureWidgetAnnotation:v8];
    }
  }

  else
  {
    [a1 drawWithBox:a3 inContext:a4 withUnknownAnnotation:v8];
  }

  if (GetDefaultsWriteHighlightAnnotations())
  {
    CGContextSaveGState(a4);
    [v8 bounds];
    v12 = [v8 page];
    v13 = v12;
    memset(&v16[1], 0, sizeof(CGAffineTransform));
    if (v12)
    {
      [v12 getDrawingTransformForBox:a3];
    }

    v16[0] = v16[1];
    CGContextConcatCTM(a4, v16);
    CGContextSetRGBStrokeColor(a4, 0.5, 0.0, 0.5, 1.0);
    CGContextSetLineWidth(a4, 1.0);
    v17.origin.x = PDFRectToCGRect(v14);
    CGContextStrokeRect(a4, v17);
    CGContextRestoreGState(a4);
  }
}

+ (void)drawAppearance:(int)a3 ofAnnotation:(id)a4 withBox:(int64_t)a5 inContext:(CGContext *)a6 scaleProportional:(BOOL)a7 suppressTextRendering:(BOOL)a8
{
  v8 = a8;
  v11 = *&a3;
  v15 = a4;
  v12 = [v15 cachedAppearance:v11];
  if (v12)
  {
    v13 = v12;
    [v15 bounds];
    [v15 drawCachedAppearance:v13 withBox:a5 inContext:a6 inRect:1 scaleProportional:?];
  }

  else
  {
    v14 = [v15 appearance:v11];
    [v15 bounds];
    [v15 drawAppearance:v14 withBox:a5 inContext:a6 inRect:1 scaleProportional:v8 suppressTextRendering:?];
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4 withAKAnnotation:(id)a5 forAnnotation:(id)a6
{
  v9 = a5;
  v10 = a6;
  CGContextSaveGState(a4);
  v11 = [v10 page];

  if (v11)
  {
    [v11 getDrawingTransformForBox:a3];
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(a4, &transform);

  [v9 integralDrawingBounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (!CGRectIsInfinite(v20))
  {
    memset(&transform, 0, sizeof(transform));
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MinX = CGRectGetMinX(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MinY = CGRectGetMinY(v22);
    CGAffineTransformMakeTranslation(&transform, MinX, MinY);
    v18 = transform;
    CGContextConcatCTM(a4, &v18);
  }

  [AKControllerClass() renderAnnotation:v9 inContext:a4];
  CGContextRestoreGState(a4);
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withCircleAnnotation:(id)a5
{
  v29 = a5;
  v8 = [v29 page];
  [v29 bounds];
  v9 = [v29 valueForAnnotationKey:@"/Border"];
  v10 = [v29 valueForAnnotationKey:@"/C"];
  v11 = [v29 valueForAnnotationKey:@"/IC"];
  v12 = PDFRectToCGRect(v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([v29 appearance:0])
  {
    [a1 drawAppearance:0 ofAnnotation:v29 withBox:a3 inContext:CurrentContext];
  }

  else if (a3 <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [v8 transformContext:CurrentContext forBox:a3];
    v19 = 1.0;
    if (v9)
    {
      [v9 lineWidth];
      if (v20 != 0.0)
      {
        v19 = v20;
      }
    }

    CGContextSetLineWidth(CurrentContext, v19);
    if ([v9 style] == 1)
    {
      CGContextSetLineDash(CurrentContext, 0.0, [v9 dashPatternRaw], objc_msgSend(v9, "dashCountRaw"));
    }

    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v16;
    v31.size.height = v18;
    v32 = CGRectInset(v31, v19 * 0.5, v19 * 0.5);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    if (v11)
    {
      v25 = [v11 CGColor];
      ColorSpace = CGColorGetColorSpace(v25);
      CGContextSetFillColorSpace(CurrentContext, ColorSpace);
      CGContextSetFillColorWithColor(CurrentContext, v25);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      CGContextFillEllipseInRect(CurrentContext, v33);
    }

    v27 = [v10 CGColor];
    v28 = CGColorGetColorSpace(v27);
    CGContextSetStrokeColorSpace(CurrentContext, v28);
    CGContextSetStrokeColorWithColor(CurrentContext, v27);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    CGContextStrokeEllipseInRect(CurrentContext, v34);
    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withFreeTextAnnotation:(id)a5
{
  v25 = a5;
  v8 = [v25 page];
  [v25 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v24 = [v25 valueForAnnotationKey:@"/C"];
  v17 = [v25 valueForAnnotationKey:@"/Contents"];
  v18 = [v25 valueForAnnotationKey:@"/Border"];
  v19 = [v25 font];
  v20 = [v25 fontColor];
  v21 = [v25 alignment];
  v22 = [v8 rotation];
  if ([v25 appearance:0])
  {
    [a1 drawAppearance:0 ofAnnotation:v25 withBox:a3 inContext:CurrentContext];
  }

  else if (a3 <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [v8 transformContext:CurrentContext forBox:a3];
    [PDFAnnotationDrawing fillRect:v24 color:CurrentContext context:v10, v12, v14, v16];
    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    v28 = PDFRectInset(v27, 2.0, 2.0);
    [PDFAnnotationDrawing renderString:v17 forRect:v19 font:v20 color:v21 alignment:v22 rotation:1 breaks:v28.origin.x context:v28.origin.y withAnnotation:v28.size.width, v28.size.height, CurrentContext, v25];
    if (v18)
    {
      v23 = [MEMORY[0x1E69DC888] blackColor];
      CGContextSetStrokeColorWithColor(CurrentContext, [v23 CGColor]);

      [v18 drawInRect:CurrentContext inContext:{v10, v12, v14, v16}];
    }

    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withInkAnnotation:(id)a5
{
  v8 = a5;
  v9 = [v8 page];
  v10 = [v8 valueForAnnotationKey:@"/C"];
  v11 = [v8 valueForAnnotationKey:@"/Border"];
  if (![v8 appearance:0])
  {
    v12 = [v8 valueForAnnotationKey:@"/InkList"];
    if (v12)
    {
      v13 = [v8 cgPathArray];
      if (v13)
      {
        v14 = v13;
LABEL_7:
        v15 = [v12 count];
        if (a3 <= 4)
        {
          LODWORD(v16) = v15;
          if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
          {
            CGContextSaveGState(CurrentContext);
            [v9 transformContext:CurrentContext forBox:a3];
            [v8 bounds];
            CGAffineTransformMakeTranslation(&v24, v17, v18);
            CGContextConcatCTM(CurrentContext, &v24);
            if (v10)
            {
              v19 = [v10 CGColor];
              ColorSpace = CGColorGetColorSpace(v19);
              CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
              CGContextSetStrokeColorWithColor(CurrentContext, v19);
            }

            if (v11)
            {
              [v11 lineWidth];
              if (v21 == 0.0)
              {
                v22 = 1.0;
              }

              else
              {
                v22 = v21;
              }

              if ([v11 style] == 1)
              {
                CGContextSetLineDash(CurrentContext, 0.0, [v11 dashPatternRaw], objc_msgSend(v11, "dashCountRaw"));
              }

              else
              {
                CGContextSetLineCap(CurrentContext, kCGLineCapRound);
              }
            }

            else
            {
              v22 = 1.0;
            }

            CGContextSetLineWidth(CurrentContext, v22);
            CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
            v16 = v16;
            if (v16)
            {
              do
              {
                CGContextSaveGState(CurrentContext);
                v23 = *v14++;
                CGContextAddPath(CurrentContext, v23);
                CGContextStrokePath(CurrentContext);
                CGContextRestoreGState(CurrentContext);
                --v16;
              }

              while (v16);
            }

            CGContextRestoreGState(CurrentContext);
          }
        }

        goto LABEL_23;
      }

      v14 = [a1 createCGPathArrayWithBezierPaths:v12];
      [v8 setCGPathArray:v14];
      if (v14)
      {
        goto LABEL_7;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  [a1 drawAppearance:0 ofAnnotation:v8 withBox:a3 inContext:CurrentContext];
LABEL_24:
}

+ (CGPath)createCGPathArrayWithBezierPaths:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = malloc_type_calloc(v4, 8uLL, 0x2004093837F09uLL);
    if (v6)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [v3 objectAtIndex:i];
        v6[i] = CGPathCreateMutableCopy([v8 CGPath]);
      }
    }
  }

  return v6;
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withLineAnnotation:(id)a5
{
  v8 = a5;
  v43 = [v8 page];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v13 = [v8 valueForAnnotationKey:@"/C"];
  v14 = [v8 valueForAnnotationKey:@"/IC"];
  v15 = [v8 valueForAnnotationKey:@"/Border"];
  v16 = [v8 valueForAnnotationKey:@"/L"];
  if (v16)
  {
    [v8 startPoint];
    v18 = v17;
    v20 = v19;
    [v8 endPoint];
    v22 = v21;
    v24 = v23;
    v25 = [v8 startLineStyle];
    v26 = [v8 endLineStyle];
    if ([v8 appearance:0])
    {
      [a1 drawAppearance:0 ofAnnotation:v8 withBox:a3 inContext:CurrentContext];
      goto LABEL_45;
    }

    if (a3 <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
    {
      CGContextSaveGState(CurrentContext);
      [v43 transformContext:CurrentContext forBox:a3];
      CGAffineTransformMakeTranslation(&transform, v10, v12);
      CGContextConcatCTM(CurrentContext, &transform);
      v27 = 1.0;
      if (v15)
      {
        [v15 lineWidth];
        if (v28 != 0.0)
        {
          v27 = v28;
        }
      }

      CGContextSetLineWidth(CurrentContext, v27);
      if ([v15 style] == 1)
      {
        CGContextSetLineDash(CurrentContext, 0.0, [v15 dashPatternRaw], objc_msgSend(v15, "dashCountRaw"));
      }

      CGContextMoveToPoint(CurrentContext, v18, v20);
      CGContextAddLineToPoint(CurrentContext, v22, v24);
      v29 = [v13 CGColor];
      ColorSpace = CGColorGetColorSpace(v29);
      CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
      CGContextSetStrokeColorWithColor(CurrentContext, v29);
      if (v25 == 4)
      {
        [a1 drawArrowFrom:1 to:CurrentContext open:v15 inContext:v22 withBorder:{v24, v18, v20}];
      }

      if (v26 == 4)
      {
        [a1 drawArrowFrom:1 to:CurrentContext open:v15 inContext:v18 withBorder:{v20, v22, v24}];
      }

      CGContextDrawPath(CurrentContext, kCGPathStroke);
      if (((v25 | v26) & 0xFFFFFFFFFFFFFFFBLL) == 0)
      {
        goto LABEL_44;
      }

      if (v25 > 2)
      {
        if (v25 != 3)
        {
          if (v25 == 5)
          {
            [a1 drawArrowFrom:0 to:CurrentContext open:v15 inContext:v22 withBorder:{v24, v18, v20}];
          }

LABEL_27:
          if (v26 > 2)
          {
            if (v26 != 3)
            {
              if (v26 == 5)
              {
                [a1 drawArrowFrom:0 to:CurrentContext open:v15 inContext:v18 withBorder:{v20, v22, v24}];
              }

              goto LABEL_37;
            }

            v35 = a1;
            v36 = v22;
            v37 = v24;
            v38 = 2;
          }

          else if (v26 == 1)
          {
            v35 = a1;
            v36 = v22;
            v37 = v24;
            v38 = 0;
          }

          else
          {
            if (v26 != 2)
            {
LABEL_37:
              v39 = v26 <= 0 && v25 <= 0;
              v40 = kCGPathStroke;
              if (!v39 && v14)
              {
                v41 = [v14 CGColor];
                v42 = CGColorGetColorSpace(v41);
                CGContextSetFillColorSpace(CurrentContext, v42);
                CGContextSetFillColorWithColor(CurrentContext, v41);
                v40 = kCGPathFillStroke;
              }

              CGContextDrawPath(CurrentContext, v40);
LABEL_44:
              CGContextRestoreGState(CurrentContext);
              goto LABEL_45;
            }

            v35 = a1;
            v36 = v22;
            v37 = v24;
            v38 = 1;
          }

          [v35 drawBulletAtPoint:v38 shape:CurrentContext inContext:v15 withBorder:{v36, v37}];
          goto LABEL_37;
        }

        v31 = a1;
        v32 = v18;
        v33 = v20;
        v34 = 2;
      }

      else if (v25 == 1)
      {
        v31 = a1;
        v32 = v18;
        v33 = v20;
        v34 = 0;
      }

      else
      {
        if (v25 != 2)
        {
          goto LABEL_27;
        }

        v31 = a1;
        v32 = v18;
        v33 = v20;
        v34 = 1;
      }

      [v31 drawBulletAtPoint:v34 shape:CurrentContext inContext:v15 withBorder:{v32, v33}];
      goto LABEL_27;
    }
  }

LABEL_45:
}

+ (void)drawBulletAtPoint:(CGPoint)a3 shape:(int)a4 inContext:(CGContext *)a5 withBorder:(id)a6
{
  y = a3.y;
  x = a3.x;
  v10 = a6;
  v15 = v10;
  if (v10)
  {
    [v10 lineWidth];
    v12 = v11;
    if (v12 == 0.0)
    {
      v13 = 1.5;
    }

    else
    {
      v13 = v12 * 1.5;
    }

    v14 = v13;
  }

  else
  {
    v14 = 1.0;
  }

  switch(a4)
  {
    case 2:
      CGContextMoveToPoint(a5, x - v14 * 0.25, y + v14 + v14 * 0.25);
      CGContextAddLineToPoint(a5, x + v14, y);
      CGContextAddLineToPoint(a5, x, y - v14);
      CGContextAddLineToPoint(a5, x - v14, y);
      CGContextAddLineToPoint(a5, x, y + v14);
      break;
    case 1:
      v18.origin.x = x - v14;
      v18.origin.y = y - v14;
      v18.size.width = v14 + v14;
      v18.size.height = v14 + v14;
      CGContextAddEllipseInRect(a5, v18);
      break;
    case 0:
      v17.origin.x = x - v14;
      v17.origin.y = y - v14;
      v17.size.width = v14 + v14;
      v17.size.height = v14 + v14;
      CGContextAddRect(a5, v17);
      break;
  }
}

+ (void)drawArrowFrom:(CGPoint)a3 to:(CGPoint)a4 open:(BOOL)a5 inContext:(CGContext *)a6 withBorder:(id)a7
{
  y = a4.y;
  x = a4.x;
  v11 = a3.y;
  v12 = a3.x;
  v13 = a7;
  v14 = x - v12;
  v15 = y - v11;
  v16 = sqrtf((v15 * v15) + (v14 * v14));
  v26 = v13;
  if (v13)
  {
    [v13 lineWidth];
    v18 = v17;
    if (v18 == 0.0)
    {
      v18 = 1.0;
    }
  }

  else
  {
    v18 = 1.0;
  }

  v19 = (v18 * v14);
  v20 = v16;
  v21 = x - v19 * 3.0 / v16;
  v22 = (v18 * v15);
  v23 = y - v22 * 3.0 / v20;
  v24 = v22 * 1.5 / v20;
  v25 = v19 * 1.5 / v20;
  CGContextMoveToPoint(a6, v21 - v24, v25 + v23);
  CGContextAddLineToPoint(a6, x, y);
  CGContextAddLineToPoint(a6, v24 + v21, v23 - v25);
  if (!a5)
  {
    CGContextAddLineToPoint(a6, v21 - v24, v25 + v23);
    CGContextAddLineToPoint(a6, x, y);
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withLinkAnnotation:(id)a5
{
  v30 = a5;
  v8 = [v30 page];
  [v30 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v30 valueForAnnotationKey:@"/Border"];
  v18 = [v30 valueForAnnotationKey:@"/C"];
  v19 = [v30 isHighlighted];
  v20 = [v30 valueForAnnotationKey:@"/H"];
  if (v19)
  {
    if ([v30 appearance:2])
    {
      v21 = a1;
      v22 = 2;
LABEL_6:
      [v21 drawAppearance:v22 ofAnnotation:v30 withBox:a3 inContext:CurrentContext];
      goto LABEL_26;
    }
  }

  else if ([v30 appearance:0])
  {
    v21 = a1;
    v22 = 0;
    goto LABEL_6;
  }

  if (v17)
  {
    v23 = 1;
  }

  else
  {
    v23 = v19;
  }

  if (a3 > 4)
  {
    goto LABEL_26;
  }

  if (!v23)
  {
    goto LABEL_26;
  }

  if (!CurrentContext)
  {
    CurrentContext = PDFGraphicsGetCurrentContext();
    if (!CurrentContext)
    {
      goto LABEL_26;
    }
  }

  CGContextSaveGState(CurrentContext);
  [v8 transformContext:CurrentContext forBox:a3];
  if (!v19)
  {
    goto LABEL_20;
  }

  if (![v20 isEqualToString:@"/I"])
  {
    if ([v20 isEqualToString:@"/O"])
    {
      v24 = [MEMORY[0x1E69DC888] whiteColor];
      v28 = [v24 CGColor];
      ColorSpace = CGColorGetColorSpace(v28);
      CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
      CGContextSetStrokeColorWithColor(CurrentContext, v28);
      CGContextSetCompositeOperation();
      v33.origin.x = v10;
      v33.origin.y = v12;
      v33.size.width = v14;
      v33.size.height = v16;
      v34 = PDFRectInset(v33, 0.5, 0.5);
      [a1 createPillBezier:CurrentContext inContext:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
      CGContextStrokePath(CurrentContext);
      goto LABEL_21;
    }

LABEL_20:
    v24 = 0;
LABEL_21:
    if (v17)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v24 = +[PDFSelection defaultActiveColor];
  v25 = [v24 CGColor];
  v26 = CGColorGetColorSpace(v25);
  CGContextSetFillColorSpace(CurrentContext, v26);
  CGContextSetFillColorWithColor(CurrentContext, v25);
  v27 = CGContextSetCompositeOperation();
  if (v17)
  {
    v32.origin.x = PDFRectToCGRect(v27);
    CGContextFillRect(CurrentContext, v32);
LABEL_22:
    if (!v18)
    {
      v18 = [MEMORY[0x1E69DC888] blackColor];
    }

    CGContextSetStrokeColorWithColor(CurrentContext, [v18 CGColor]);
    [v17 drawInRect:CurrentContext inContext:{v10, v12, v14, v16}];
    goto LABEL_25;
  }

  [a1 createPillBezier:CurrentContext inContext:{v10, v12, v14, v16}];
  CGContextFillPath(CurrentContext);
LABEL_25:
  CGContextRestoreGState(CurrentContext);

LABEL_26:
}

+ (void)createPillBezier:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  v8 = a3.origin.x;
  CGContextSetLineJoin(a4, kCGLineJoinRound);
  v19 = width;
  if (height >= width)
  {
    v9 = width;
  }

  else
  {
    v9 = height;
  }

  v10 = v9 * 0.1;
  v11 = v10;
  v12 = 0.55228 * v10;
  x = v8 + v10;
  CGContextMoveToPoint(a4, x, y);
  v13 = v12;
  v14 = v8 + v12;
  CGContextAddCurveToPoint(a4, v14, y, v8, y + v13, v8, y + v11);
  v15 = y + height;
  CGContextAddLineToPoint(a4, v8, v15 - v11);
  CGContextAddCurveToPoint(a4, v8, v15 - v13, v14, v15, x, v15);
  v16 = v8 + v19;
  v17 = v8 + v19 - v11;
  CGContextAddLineToPoint(a4, v17, v15);
  CGContextAddCurveToPoint(a4, v16 - v13, v15, v16, v15 - v13, v16, v15 - v11);
  CGContextAddLineToPoint(a4, v16, y + v11);
  CGContextAddCurveToPoint(a4, v16, y + v13, v16 - v13, y, v17, y);

  CGContextAddLineToPoint(a4, x, y);
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withMarkupAnnotation:(id)a5
{
  v39 = a5;
  v8 = [v39 page];
  v9 = [v39 valueForAnnotationKey:@"/C"];
  v10 = [v39 markupType];
  v11 = [v39 valueForAnnotationKey:@"/QuadPoints"];
  v12 = [v11 count];
  if ([v39 appearance:0])
  {
    [a1 drawAppearance:0 ofAnnotation:v39 withBox:a3 inContext:CurrentContext];
    goto LABEL_13;
  }

  if (a3 <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [v8 transformContext:CurrentContext forBox:a3];
    v13 = [v9 CGColor];
    ColorSpace = CGColorGetColorSpace(v13);
    if (v10)
    {
      CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
      CGContextSetStrokeColorWithColor(CurrentContext, v13);
    }

    else
    {
      CGContextSetCompositeOperation();
      CGContextSetFillColorSpace(CurrentContext, ColorSpace);
      CGContextSetFillColorWithColor(CurrentContext, v13);
    }

    v15 = v39;
    if (v12 < 4)
    {
LABEL_10:
      v16 = [v15 popup];

      if (v16)
      {
        [PDFAnnotationDrawing drawNoteInContext:CurrentContext withParentAnnotation:v39];
      }

      CGContextRestoreGState(CurrentContext);
      goto LABEL_13;
    }

    v17 = 0;
    if (v12 >> 2 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v12 >> 2;
    }

    while (1)
    {
      v41 = 0uLL;
      v40 = 0uLL;
      v19 = [v11 objectAtIndex:v17];
      [v19 PDFKitPDFPointValue];
      v21 = v20;
      v23 = v22;

      v43.f64[0] = v21;
      v43.f64[1] = v23;
      v24 = [v11 objectAtIndex:v17 + 1];
      [v24 PDFKitPDFPointValue];
      v26 = v25;
      v28 = v27;

      v42.f64[0] = v26;
      v42.f64[1] = v28;
      v29 = [v11 objectAtIndex:v17 + 2];
      [v29 PDFKitPDFPointValue];
      v31 = v30;
      v33 = v32;

      v41.f64[0] = v31;
      v41.f64[1] = v33;
      v34 = [v11 objectAtIndex:v17 + 3];
      [v34 PDFKitPDFPointValue];
      v36 = v35;
      v38 = v37;

      v15 = v39;
      v40.f64[0] = v36;
      v40.f64[1] = v38;
      v17 += 4;
      if (v10)
      {
        if (v10 == 2)
        {
          underlinePath(CurrentContext, v43.f64, v41.f64, v40.f64);
        }

        else
        {
          if (v10 != 1)
          {
            goto LABEL_21;
          }

          strikeOutPath(CurrentContext, v43.f64, v42.f64, v41.f64, v40.f64);
        }

        CGContextStrokePath(CurrentContext);
      }

      else
      {
        highlightPath(CurrentContext, &v43, &v42, &v41, &v40);
        CGContextFillPath(CurrentContext);
      }

      v15 = v39;
LABEL_21:
      if (!--v18)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_13:
}

+ (void)drawNoteInContext:(CGContext *)a3 withParentAnnotation:(id)a4
{
  v5 = a4;
  v6 = [v5 markupStyle];
  v7 = [PDFAnnotation PDFTextColorForMarkupStyle:v6];
  v8 = [v7 CGColor];

  v9 = [PDFAnnotation PDFTextBorderColorForMarkupStyle:v6];
  v10 = [v9 CGColor];

  [v5 noteBounds];
  v13 = PDFKitBezierPathWithRoundedRect();
  ColorSpace = CGColorGetColorSpace(v8);
  CGContextSetFillColorSpace(a3, ColorSpace);
  CGContextSetFillColorWithColor(a3, v8);
  [v13 fill];
  v12 = CGColorGetColorSpace(v10);
  CGContextSetStrokeColorSpace(a3, v12);
  CGContextSetStrokeColorWithColor(a3, v10);
  [v13 stroke];
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4 withPopupAnnotation:(id)a5
{
  v9 = a5;
  v8 = [v9 page];
  if (a3 <= 4)
  {
    CGContextSaveGState(a4);
    [v8 transformContext:a4 forBox:a3];
    [a1 adjustedRectForBox:a3 withAnnotation:v9];
    [a1 drawInContext:a4 withBounds:v9 withPopupAnnotation:?];
    CGContextRestoreGState(a4);
  }
}

+ (CGRect)adjustedRectForBox:(int64_t)a3 withAnnotation:(id)a4
{
  v5 = a4;
  [v5 bounds];
  x = v6;
  y = v8;
  width = v10;
  height = v12;
  v14 = [v5 page];

  if (v14)
  {
    [v14 boundsForBox:a3];
    v16 = v15;
    v17 = x;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v41 = v17;
    MinX = PDFRectGetMinX(v17, y, width);
    r2 = v16;
    v25 = v16;
    v26 = v19;
    v42 = height;
    if (MinX >= PDFRectGetMaxX(v25, v19, v21) + -72.0)
    {
      v27 = PDFRectGetMaxX(r2, v19, v21) + -72.0;
    }

    else
    {
      v27 = v41;
      MaxX = PDFRectGetMaxX(v41, y, width);
      v29 = width;
      if (MaxX > PDFRectGetMinX(r2, v26, v21) + 72.0)
      {
        goto LABEL_7;
      }

      v27 = PDFRectGetMinX(r2, v26, v21);
    }

    v29 = 72.0;
LABEL_7:
    v30 = v42;
    MinY = PDFRectGetMinY(v27, y, v29, v42);
    if (MinY >= PDFRectGetMaxY(r2, v26, v21, v23) + -36.0)
    {
      y = PDFRectGetMaxY(r2, v26, v21, v23) + -36.0;
    }

    else
    {
      MaxY = PDFRectGetMaxY(v27, y, v29, v42);
      if (MaxY > PDFRectGetMinY(r2, v26, v21, v23) + 36.0)
      {
LABEL_12:
        v44.origin.x = v27;
        v44.origin.y = y;
        v44.size.width = v29;
        v44.size.height = v30;
        v49.origin.x = r2;
        v49.origin.y = v26;
        v49.size.width = v21;
        v49.size.height = v23;
        v45 = PDFRectIntersection(v44, v49);
        x = v45.origin.x;
        y = v45.origin.y;
        width = v45.size.width;
        height = v45.size.height;
        goto LABEL_13;
      }

      y = PDFRectGetMinY(r2, v26, v21, v23);
    }

    v30 = 36.0;
    goto LABEL_12;
  }

LABEL_13:
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = PDFRectInset(v46, 1.0, 1.0);
  v33 = v47.origin.x;
  v34 = v47.origin.y;
  v35 = v47.size.width;
  v36 = v47.size.height + 1.0;

  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withSquareAnnotation:(id)a5
{
  v30 = a5;
  v8 = [v30 page];
  [v30 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v30 valueForAnnotationKey:@"/C"];
  v18 = [v30 valueForAnnotationKey:@"/IC"];
  v19 = [v30 valueForAnnotationKey:@"/Border"];
  if ([v30 appearance:0])
  {
    [a1 drawAppearance:0 ofAnnotation:v30 withBox:a3 inContext:CurrentContext];
  }

  else if (a3 <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [v8 transformContext:CurrentContext forBox:a3];
    v20 = 1.0;
    if (v19)
    {
      [v19 lineWidth];
      if (v21 != 0.0)
      {
        v20 = v21;
      }
    }

    CGContextSetLineWidth(CurrentContext, v20);
    if ([v19 style] == 1)
    {
      CGContextSetLineDash(CurrentContext, 0.0, [v19 dashPatternRaw], objc_msgSend(v19, "dashCountRaw"));
    }

    v32.origin.x = v10;
    v32.origin.y = v12;
    v32.size.width = v14;
    v32.size.height = v16;
    v33 = CGRectInset(v32, v20 * 0.5, v20 * 0.5);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    if (v18)
    {
      v26 = [v18 CGColor];
      ColorSpace = CGColorGetColorSpace(v26);
      CGContextSetFillColorSpace(CurrentContext, ColorSpace);
      CGContextSetFillColorWithColor(CurrentContext, v26);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      CGContextFillRect(CurrentContext, v34);
    }

    v28 = [v17 CGColor];
    v29 = CGColorGetColorSpace(v28);
    CGContextSetStrokeColorSpace(CurrentContext, v29);
    CGContextSetStrokeColorWithColor(CurrentContext, v28);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    CGContextStrokeRect(CurrentContext, v35);
    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withStampAnnotation:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [v8 page];
  [v8 bounds];
  if (a3 <= 4)
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    if ([v8 appearance:0])
    {
      [a1 drawAppearance:0 ofAnnotation:v8 withBox:a3 inContext:CurrentContext];
    }

    else if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
    {
      CGContextSaveGState(CurrentContext);
      [v9 transformContext:CurrentContext forBox:a3];
      v18 = [MEMORY[0x1E69DC888] blackColor];
      v19 = [v18 CGColor];

      ColorSpace = CGColorGetColorSpace(v19);
      if (ColorSpace)
      {
        CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
        CGContextSetStrokeColorWithColor(CurrentContext, v19);
        points.x = PDFRectGetMinX(v14, v15, v16);
        points.y = PDFRectGetMinY(v14, v15, v16, v17);
        MaxX = PDFRectGetMaxX(v14, v15, v16);
        MaxY = PDFRectGetMaxY(v14, v15, v16, v17);
        MinX = PDFRectGetMinX(v14, v15, v16);
        v26 = PDFRectGetMaxY(v14, v15, v16, v17);
        v27 = PDFRectGetMaxX(v14, v15, v16);
        MinY = PDFRectGetMinY(v14, v15, v16, v17);
        v30.origin.x = PDFRectToCGRect(v21);
        CGContextStrokeRect(CurrentContext, v30);
        CGContextStrokeLineSegments(CurrentContext, &points, 4uLL);
      }

      CGContextRestoreGState(CurrentContext);
    }
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withTextAnnotation:(id)a5
{
  v32 = a5;
  v8 = [v32 page];
  [v32 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v32 color];
  v18 = [v32 popup];
  v19 = [v32 iconType];
  if ([v32 appearance:0])
  {
    [a1 drawAppearance:0 ofAnnotation:v32 withBox:a3 inContext:CurrentContext];
    if ([v32 isSelected])
    {
      [a1 drawNoteAsSelected:CurrentContext rect:{v10, v12, v14, v16}];
    }
  }

  else if (a3 <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [v8 transformContext:CurrentContext forBox:a3];
    if (!v17)
    {
      v20 = [v18 color];

      if (v20)
      {
        v17 = [v18 color];
      }

      else
      {
        v21 = +[PDFAnnotation PDFTextColors];
        v17 = [v21 objectAtIndex:0];
      }
    }

    if (GetDefaultsWriteAKEnabled())
    {
      v22 = v17;
      v23 = +[PDFAnnotation PDFTextColors];
      v24 = [v23 indexOfObject:v22];

      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = +[PDFAnnotationDrawing createLigtherColor:withIntensity:](PDFAnnotationDrawing, "createLigtherColor:withIntensity:", [v22 CGColor], 0.05);
      }

      else
      {
        v26 = +[PDFAnnotation PDFTextBorderColors];
        v25 = [v26 objectAtIndex:v24];
      }

      v34.origin.x = v10;
      v34.origin.y = v12;
      v34.size.width = v14;
      v34.size.height = v16;
      v35 = PDFRectInset(v34, 1.0, 1.0);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      CGContextSetFillColorWithColor(CurrentContext, [v22 CGColor]);
      [PDFAnnotationDrawing fillRect:v22 color:CurrentContext context:x, y, width, height];
      v31 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 1.0}];
      CGContextSetStrokeColorWithColor(CurrentContext, [v25 CGColor]);
      [v31 stroke];
      if ([v32 isSelected])
      {
        [a1 drawNoteAsSelected:CurrentContext rect:{v10, v12, v14, v16}];
      }
    }

    else if (v19 <= 2)
    {
      if (v19)
      {
        if (v19 == 1)
        {
          [a1 drawKeyIconInRect:v17 withColor:CurrentContext inContext:{v10, v12, v14, v16}];
        }

        else if (v19 == 2)
        {
          [a1 drawNoteIconInRect:v17 withColor:CurrentContext inContext:{v10, v12, v14, v16}];
        }
      }

      else
      {
        [a1 drawCommentIconInRect:v17 withColor:CurrentContext inContext:{v10, v12, v14, v16}];
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        [a1 drawParagraphIconInRect:v17 withColor:CurrentContext inContext:{v10, v12, v14, v16}];
      }

      else if (v19 == 6)
      {
        [a1 drawInsertIconInRect:v17 withColor:CurrentContext inContext:{v10, v12, v14, v16}];
      }
    }

    else if (v19 == 3)
    {
      [a1 drawHelpIconInRect:v17 withColor:CurrentContext inContext:{v10, v12, v14, v16}];
    }

    else
    {
      [a1 drawNewParagraphIconInRect:v17 withColor:CurrentContext inContext:{v10, v12, v14, v16}];
    }

    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawNoteAsSelected:(CGContext *)a3 rect:(CGRect)a4
{
  v10 = PDFRectInset(a4, 1.0, 1.0);
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v10.origin.x cornerRadius:{v10.origin.y, v10.size.width, v10.size.height, 1.0}];
  v5 = [MEMORY[0x1E69DC888] lightGrayColor];
  v6 = [v5 CGColor];
  ColorSpace = CGColorGetColorSpace(v6);
  CGContextSetStrokeColorSpace(a3, ColorSpace);
  CGContextSetStrokeColorWithColor(a3, v6);
  [v8 stroke];
}

+ (void)drawCommonCommentNoteIconToContext:(CGContext *)a3 color:(id)a4 rect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  CGContextSetFillColorWithColor(a3, [a4 CGColor]);
  v10 = x + width * 0.1;
  v16.origin.y = y + height * 0.78;
  v16.origin.x = v10;
  v16.size.width = width * 0.8;
  v16.size.height = height * 0.11;
  CGContextFillRect(a3, v16);
  v17.origin.y = y + height * 0.57;
  v17.origin.x = v10;
  v17.size.width = width * 0.8;
  v17.size.height = height * 0.11;
  CGContextFillRect(a3, v17);
  v13 = v10;

  v11 = y + height * 0.36;
  v12 = width * 0.6;
  v14 = height * 0.11;
  CGContextFillRect(a3, *&v13);
}

+ (void)setupDrawColor:(id)a3 forContext:(CGContext *)a4
{
  v5 = a3;
  if (v5)
  {
    v12 = v5;
    v6 = v5;
    v7 = [v12 CGColor];
    v5 = v12;
    if (v7)
    {
      ColorSpace = CGColorGetColorSpace(v7);
      CGContextSetFillColorSpace(a4, ColorSpace);
      CGContextSetFillColorWithColor(a4, v7);
      v9 = [MEMORY[0x1E69DC888] blackColor];
      v10 = [v9 CGColor];

      v11 = CGColorGetColorSpace(v10);
      CGContextSetStrokeColorSpace(a4, v11);
      CGContextSetStrokeColorWithColor(a4, v10);
      v5 = v12;
    }
  }
}

+ (void)drawCommentIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  x = a3.origin.x;
  v25 = a4;
  v27.origin.x = x;
  v27.origin.y = v8;
  v27.size.width = width;
  v27.size.height = height;
  v28 = PDFRectInset(v27, 0.5, 0.5);
  v11 = v28.origin.x;
  v12 = v28.origin.y;
  v13 = v28.size.width;
  v14 = v28.size.height;
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetLineCap(a5, kCGLineCapRound);
  CGContextSetLineJoin(a5, kCGLineJoinRound);
  v24 = v12 + v14 * 0.0;
  CGContextMoveToPoint(a5, v11 + v13 * 0.25, v24);
  v15 = v12 + v14 * 0.25;
  CGContextAddLineToPoint(a5, v11 + v13 * 0.33, v15);
  CGContextAddLineToPoint(a5, v11 + v13 * 0.1, v15);
  cp1y = v12 + v14 * 0.28;
  v20 = v12 + v14 * 0.35;
  CGContextAddCurveToPoint(a5, v11 + v13 * 0.03, v15, v11 + v13 * 0.0, cp1y, v11 + v13 * 0.0, v20);
  y = v12 + v14 * 0.9;
  CGContextAddLineToPoint(a5, v11 + v13 * 0.0, y);
  v16 = v12;
  v22 = v12;
  v23 = v14;
  v17 = v12 + v14 * 0.97;
  v18 = v14 + v16;
  CGContextAddCurveToPoint(a5, v11 + v13 * 0.0, v17, v11 + v13 * 0.03, v18, v11 + v13 * 0.1, v18);
  CGContextAddLineToPoint(a5, v11 + v13 * 0.9, v18);
  CGContextAddCurveToPoint(a5, v11 + v13 * 0.97, v18, v13 + v11, v17, v13 + v11, y);
  CGContextAddLineToPoint(a5, v13 + v11, v20);
  CGContextAddCurveToPoint(a5, v13 + v11, cp1y, v11 + v13 * 0.97, v15, v11 + v13 * 0.9, v15);
  CGContextAddLineToPoint(a5, v11 + v13 * 0.5, v15);
  CGContextAddLineToPoint(a5, v11 + v13 * 0.25, v24);
  [a1 setupDrawColor:v25 forContext:a5];
  CGContextDrawPath(a5, kCGPathFillStroke);
  [a1 drawCommonCommentNoteIconToContext:a5 color:v25 rect:{v11, v22, v13, v23}];
}

+ (void)drawKeyIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = PDFRectInset(v17, 0.5, 0.5);
  v12 = v18.origin.x;
  v13 = v18.origin.y;
  v14 = v18.size.width;
  v15 = v18.size.height;
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetLineCap(a5, kCGLineCapRound);
  CGContextSetLineJoin(a5, kCGLineJoinRound);
  CGContextMoveToPoint(a5, v12 + v14 * 0.0, v13 + v15 * 0.61);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.0, v13 + v15 * 0.75);
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.0, v13 + v15 * 0.9, v12 + v14 * 0.1, v15 + v13, v12 + v14 * 0.25, v15 + v13);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.38, v15 + v13);
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.48, v15 + v13, v12 + v14 * 0.55, v13 + v15 * 0.95, v12 + v14 * 0.55, v13 + v15 * 0.85);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.55, v13 + v15 * 0.61);
  CGContextAddLineToPoint(a5, v14 + v12, v13 + v15 * 0.15);
  CGContextAddLineToPoint(a5, v14 + v12, v13 + v15 * 0.0);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.7, v13 + v15 * 0.0);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.7, v13 + v15 * 0.15);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.55, v13 + v15 * 0.15);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.55, v13 + v15 * 0.3);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.4, v13 + v15 * 0.3);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.4, v13 + v15 * 0.45);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.15, v13 + v15 * 0.45);
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.05, v13 + v15 * 0.45, v12 + v14 * 0.0, v13 + v15 * 0.51, v12 + v14 * 0.0, v13 + v15 * 0.61);
  v19.origin.x = v12 + v14 * 0.12;
  v19.origin.y = v13 + v15 * 0.72;
  v19.size.width = v14 * 0.16;
  v19.size.height = v15 * 0.16;
  CGContextAddEllipseInRect(a5, v19);
  [a1 setupDrawColor:v11 forContext:a5];

  CGContextDrawPath(a5, kCGPathEOFillStroke);
}

+ (void)drawNoteIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a4;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v21 = PDFRectInset(v20, 0.5, 0.5);
  v22 = PDFRectInset(v21, v21.size.width * 0.08, 0.0);
  v11 = v22.origin.x;
  v12 = v22.origin.y;
  v13 = v22.size.width;
  v14 = v22.size.height;
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetLineCap(a5, kCGLineCapRound);
  CGContextSetLineJoin(a5, kCGLineJoinRound);
  v15 = v11 + v13 * 0.0;
  v16 = v12 + v14 * 0.0;
  CGContextMoveToPoint(a5, v15, v16);
  CGContextAddLineToPoint(a5, v15, v14 + v12);
  CGContextAddLineToPoint(a5, v13 + v11, v14 + v12);
  v17 = v12 + v14 * 0.25;
  CGContextAddLineToPoint(a5, v13 + v11, v17);
  CGContextAddLineToPoint(a5, v11 + v13 * 0.75, v16);
  CGContextAddLineToPoint(a5, v15, v16);
  [a1 setupDrawColor:v18 forContext:a5];
  CGContextDrawPath(a5, kCGPathFillStroke);
  CGContextMoveToPoint(a5, v13 + v11, v17);
  CGContextAddLineToPoint(a5, v11 + v13 * 0.75, v17);
  CGContextAddLineToPoint(a5, v11 + v13 * 0.75, v16);
  CGContextStrokePath(a5);
  [a1 drawCommonCommentNoteIconToContext:a5 color:v18 rect:{v11, v12, v13, v14}];
}

+ (void)drawHelpIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = PDFRectInset(v18, 0.5, 0.5);
  v12 = v19.origin.x;
  v13 = v19.origin.y;
  v14 = v19.size.width;
  v15 = v19.size.height;
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetLineCap(a5, kCGLineCapRound);
  CGContextSetLineJoin(a5, kCGLineJoinRound);
  CGContextMoveToPoint(a5, v12 + v14 * 0.3, v13 + v15 * 0.65);
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.3, v13 + v15 * 0.78, v12 + v14 * 0.37, v13 + v15 * 0.85, v12 + v14 * 0.5, v13 + v15 * 0.85);
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.63, v13 + v15 * 0.85, v12 + v14 * 0.7, v13 + v15 * 0.78, v12 + v14 * 0.7, v13 + v15 * 0.65);
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.68, v13 + v15 * 0.45, v12 + v14 * 0.55, v13 + v15 * 0.5, v12 + v14 * 0.55, v13 + v15 * 0.35);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.45, v13 + v15 * 0.35);
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.44, v13 + v15 * 0.55, v12 + v14 * 0.6, v13 + v15 * 0.52, v12 + v14 * 0.6, v13 + v15 * 0.65);
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.6, v13 + v15 * 0.71, v12 + v14 * 0.56, v13 + v15 * 0.75, v12 + v14 * 0.5, v13 + v15 * 0.75);
  v16 = v13 + v15 * 0.65;
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.44, v13 + v15 * 0.75, v12 + v14 * 0.4, v13 + v15 * 0.71, v12 + v14 * 0.4, v16);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.3, v16);
  v20.origin.x = v12 + v14 * 0.42;
  v20.origin.y = v13 + v15 * 0.11;
  v20.size.width = v14 * 0.16;
  v20.size.height = v15 * 0.16;
  CGContextAddEllipseInRect(a5, v20);
  v21.origin.x = v12 + v14 * 0.0;
  v21.origin.y = v13 + v15 * 0.0;
  v21.size.width = v14;
  v21.size.height = v15;
  CGContextAddEllipseInRect(a5, v21);
  [a1 setupDrawColor:v11 forContext:a5];

  CGContextDrawPath(a5, kCGPathEOFillStroke);
}

+ (void)drawNewParagraphIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v21 = PDFRectInset(v20, 0.5, 0.5);
  v22 = PDFRectInset(v21, v21.size.width * 0.1, 0.0);
  v12 = v22.origin.x;
  v13 = v22.origin.y;
  v14 = v22.size.width;
  v15 = v22.size.height;
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetLineCap(a5, kCGLineCapRound);
  CGContextSetLineJoin(a5, kCGLineJoinRound);
  CGContextMoveToPoint(a5, v12 + v14 * 0.0, v13 + v15 * 0.5);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.5, v15 + v13);
  CGContextAddLineToPoint(a5, v14 + v12, v13 + v15 * 0.5);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.0, v13 + v15 * 0.5);
  [a1 setupDrawColor:v11 forContext:a5];

  CGContextDrawPath(a5, kCGPathFillStroke);
  v16 = v13 + v15 * 0.0;
  CGContextMoveToPoint(a5, v12 + v14 * 0.0, v16);
  v17 = v13 + v15 * 0.4;
  CGContextAddLineToPoint(a5, v12 + v14 * 0.0, v17);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.4, v16);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.4, v17);
  CGContextMoveToPoint(a5, v12 + v14 * 0.6, v16);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.6, v17);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.9, v17);
  v18 = v13 + v15 * 0.2;
  CGContextAddCurveToPoint(a5, v12 + v14 * 1.1, v17, v12 + v14 * 1.1, v18, v12 + v14 * 0.9, v18);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.6, v18);

  CGContextStrokePath(a5);
}

+ (void)drawParagraphIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v23 = PDFRectInset(v22, 0.5, 0.5);
  v24 = PDFRectInset(v23, v23.size.width * 0.1, 0.0);
  v12 = v24.origin.x;
  v13 = v24.origin.y;
  v14 = v24.size.width;
  v15 = v24.size.height;
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetLineCap(a5, kCGLineCapRound);
  CGContextSetLineJoin(a5, kCGLineJoinRound);
  v16 = v13 + v15 * 0.0;
  CGContextMoveToPoint(a5, v12 + v14 * 0.5, v16);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.5, v13 + v15 * 0.5);
  v17 = v12 + v14 * 0.0;
  CGContextAddCurveToPoint(a5, v12 + v14 * 0.15, v13 + v15 * 0.5, v17, v13 + v15 * 0.55, v17, v13 + v15 * 0.7);
  v18 = v12 + v14 * 0.5;
  CGContextAddCurveToPoint(a5, v17, v13 + v15 * 0.95, v12 + v14 * 0.15, v15 + v13, v18, v15 + v13);
  CGContextAddLineToPoint(a5, v14 + v12, v15 + v13);
  CGContextAddLineToPoint(a5, v14 + v12, v16);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.8, v16);
  v19 = v13 + v15 * 0.8;
  CGContextAddLineToPoint(a5, v12 + v14 * 0.8, v19);
  v20 = v12 + v14 * 0.65;
  CGContextAddLineToPoint(a5, v20, v19);
  CGContextAddLineToPoint(a5, v20, v16);
  CGContextAddLineToPoint(a5, v18, v16);
  [a1 setupDrawColor:v11 forContext:a5];

  CGContextDrawPath(a5, kCGPathFillStroke);
}

+ (void)drawInsertIconInRect:(CGRect)a3 withColor:(id)a4 inContext:(CGContext *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = PDFRectInset(v17, 0.5, 0.5);
  v12 = v18.origin.x;
  v13 = v18.origin.y;
  v14 = v18.size.width;
  v15 = v18.size.height;
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetLineCap(a5, kCGLineCapRound);
  CGContextSetLineJoin(a5, kCGLineJoinRound);
  CGContextMoveToPoint(a5, v12 + v14 * 0.0, v13 + v15 * 0.0);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.5, v15 + v13);
  CGContextAddLineToPoint(a5, v14 + v12, v13 + v15 * 0.0);
  CGContextAddLineToPoint(a5, v12 + v14 * 0.0, v13 + v15 * 0.0);
  [a1 setupDrawColor:v11 forContext:a5];

  CGContextDrawPath(a5, kCGPathFillStroke);
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withRedactAnnotation:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a5;
  if (a3 <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    v8 = [v7 page];
    [v8 transformContext:CurrentContext forBox:a3];
    if ([v7 isTransparent])
    {
      v9 = 0.65;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = [v7 valueForAnnotationKey:@"/QuadPoints"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 count];
      if (v12)
      {
        v13 = v12;
        for (i = 0; i < v13; i += 4)
        {
          v15 = [v11 objectAtIndex:i];
          [v15 PDFKitPDFPointValue];
          points.x = v16;
          points.y = v17;

          v18 = [v11 objectAtIndex:i + 1];
          [v18 PDFKitPDFPointValue];
          v44[0] = v19;
          v44[1] = v20;

          v21 = [v11 objectAtIndex:i + 2];
          [v21 PDFKitPDFPointValue];
          v43[0] = v22;
          v43[1] = v23;

          v24 = [v11 objectAtIndex:i + 3];
          [v24 PDFKitPDFPointValue];
          v42[0] = v25;
          v42[1] = v26;

          redactPath(CurrentContext, &points.x, v44, v43, v42, v9);
        }
      }
    }

    else
    {
      [v7 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      if (GetDefaultsWriteHighlightRedactions())
      {
        CGContextSetLineWidth(CurrentContext, 1.0);
        v35 = [MEMORY[0x1E69DC888] blackColor];
        [PDFAnnotationDrawing strokeRect:v35 color:CurrentContext context:v28, v30, v32, v34];
      }

      else
      {
        v53.origin.x = v28;
        v53.origin.y = v30;
        v53.size.width = v32;
        v53.size.height = v34;
        CGContextClipToRect(CurrentContext, v53);
        v36 = [MEMORY[0x1E69DC888] blackColor];
        v37 = [v36 colorWithAlphaComponent:0.5];
        [PDFAnnotationDrawing fillRect:v37 color:CurrentContext context:v28, v30, v32, v34];

        CGContextSetRGBStrokeColor(CurrentContext, 0.333333, 0.333333, 0.333333, 1.0);
        CGContextSetLineWidth(CurrentContext, 1.0);
        v54.origin.x = v28;
        v54.origin.y = v30;
        v54.size.width = v32;
        v54.size.height = v34;
        MinX = CGRectGetMinX(v54);
        v55.origin.x = v28;
        v55.origin.y = v30;
        v55.size.width = v32;
        v55.size.height = v34;
        points.x = MinX;
        points.y = CGRectGetMinY(v55);
        v56.origin.x = v28;
        v56.origin.y = v30;
        v56.size.width = v32;
        v56.size.height = v34;
        MaxX = CGRectGetMaxX(v56);
        v57.origin.x = v28;
        v57.origin.y = v30;
        v57.size.width = v32;
        v57.size.height = v34;
        v46 = MaxX;
        MaxY = CGRectGetMaxY(v57);
        v58.origin.x = v28;
        v58.origin.y = v30;
        v58.size.width = v32;
        v58.size.height = v34;
        v40 = CGRectGetMinX(v58);
        v59.origin.x = v28;
        v59.origin.y = v30;
        v59.size.width = v32;
        v59.size.height = v34;
        v48 = v40;
        v49 = CGRectGetMaxY(v59);
        v60.origin.x = v28;
        v60.origin.y = v30;
        v60.size.width = v32;
        v60.size.height = v34;
        v41 = CGRectGetMaxX(v60);
        v61.origin.x = v28;
        v61.origin.y = v30;
        v61.size.width = v32;
        v61.size.height = v34;
        v50 = v41;
        MinY = CGRectGetMinY(v61);
        CGContextSetLineWidth(CurrentContext, 1.0);
        CGContextStrokeLineSegments(CurrentContext, &points, 4uLL);
      }
    }

    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withButtonWidgetAnnotation:(id)a5
{
  v43 = a5;
  v7 = [v43 page];
  [v43 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v43 interactiveBackgroundColor];
  v17 = [v43 valueForAnnotationKey:@"/MK"];
  v18 = [v43 buttonWidgetState];
  v19 = [v43 widgetControlType];
  v20 = [v43 isHighlighted];
  if (a3 > 4)
  {
    goto LABEL_35;
  }

  v21 = v20;
  if (!CurrentContext)
  {
    CurrentContext = PDFGraphicsGetCurrentContext();
    if (!CurrentContext)
    {
      goto LABEL_35;
    }
  }

  if (v16)
  {
    CGContextSetFillColorWithColor(CurrentContext, [v16 CGColor]);
    v45.origin.x = PDFRectToCGRect(v22);
    CGContextFillRect(CurrentContext, v45);
  }

  if ((v21 & 1) == 0)
  {
    if (![v43 appearance:0])
    {
      goto LABEL_24;
    }

    v30 = [v43 appearance:0];
    v31 = [v43 appearance:3];
    v26 = 0;
    if (v19)
    {
      if (!v18)
      {
        v26 = 3;
        if (v30)
        {
          if (!v31)
          {
            goto LABEL_35;
          }
        }
      }
    }

    if (![v43 appearance:v26])
    {
      goto LABEL_24;
    }

LABEL_23:
    [a1 drawAppearance:v26 ofAnnotation:v43 withBox:a3 inContext:CurrentContext scaleProportional:{objc_msgSend(v17, "scaleProportional")}];
    goto LABEL_35;
  }

  v23 = v19 != 0;
  v24 = v18 == 0;
  v25 = v23 && v24;
  if (v23 && v24)
  {
    v26 = 5;
  }

  else
  {
    v26 = 2;
  }

  if ([v43 appearance:v26])
  {
    goto LABEL_23;
  }

  v40 = [v43 appearance:0];
  v27 = [v43 appearance:3];
  v28 = 0;
  if (v25)
  {
    v28 = 3;
    if (v40)
    {
      if (!v27)
      {
        goto LABEL_35;
      }
    }
  }

  if ([v43 appearance:v28])
  {
    [a1 drawAppearance:v28 ofAnnotation:v43 withBox:a3 inContext:CurrentContext scaleProportional:{objc_msgSend(v17, "scaleProportional")}];
    CGContextSaveGState(CurrentContext);
    v29 = PDFColorCreateFromWhiteAlpha([v7 transformContext:CurrentContext forBox:a3], 0.0, 0.25);
    if (v19 == 1)
    {
      [a1 fillOval:v29 color:CurrentContext context:{v9, v11, v13, v15}];
    }

    else
    {
      [a1 fillRect:v29 color:CurrentContext context:{v9, v11, v13, v15}];
    }

    CGContextRestoreGState(CurrentContext);
    goto LABEL_35;
  }

LABEL_24:
  CGContextSaveGState(CurrentContext);
  [v7 transformContext:CurrentContext forBox:a3];
  v39 = [v17 backgroundColor];
  v32 = [v17 borderColor];
  v33 = [v17 caption];
  v41 = [v43 font];
  v34 = [v43 fontColor];
  if (!v33)
  {
    v33 = [v43 valueForAnnotationKey:@"/Contents"];
  }

  if (v19 == 2)
  {
    LOBYTE(v38) = v21;
    v37 = v18;
    v35 = v39;
    [a1 drawCheckBox:v43 inContext:CurrentContext withState:v37 withBackgroundColor:v39 withBorderColor:v32 withFontColor:v34 isHighlighted:v38];
  }

  else if (v19 == 1)
  {
    LOBYTE(v38) = v21;
    v36 = v18;
    v35 = v39;
    [a1 drawRadioButton:v43 inContext:CurrentContext withState:v36 withBackgroundColor:v39 withBorderColor:v32 withFontColor:v34 isHighlighted:v38];
  }

  else
  {
    v35 = v39;
    if (!v19)
    {
      LOBYTE(v38) = v21;
      [a1 drawPushButton:v43 inContext:CurrentContext withBackgroundColor:v39 withCaption:v33 withFont:v41 withFontColor:v34 isHighlighted:v38];
    }
  }

  CGContextRestoreGState(CurrentContext);

LABEL_35:
}

+ (void)drawPushButton:(id)a3 inContext:(CGContext *)a4 withBackgroundColor:(id)a5 withCaption:(id)a6 withFont:(id)a7 withFontColor:(id)a8 isHighlighted:(BOOL)a9
{
  v35 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  [v35 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v35 page];
  v27 = [v26 rotation];

  if (v14)
  {
    [PDFAnnotationDrawing fillRect:v14 color:a4 context:v19, v21, v23, v25];
  }

  if (v15)
  {
    [v16 pointSize];
    v29 = (v25 - v28) * -0.5;
    if (!v16)
    {
      v30 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v16 = [v30 systemFontOfSize:?];
    }

    v31 = v25 + v29;
    if (!v17)
    {
      v17 = [MEMORY[0x1E69DC888] blackColor];
    }

    [PDFAnnotationDrawing renderString:v15 forRect:v16 font:v17 color:1 alignment:v27 rotation:0 breaks:v19 context:v21 withAnnotation:v23, v31, a4, v35];
  }

  v32 = [v35 valueForAnnotationKey:@"/C"];
  v33 = v32;
  if (v32)
  {
    v32 = [PDFAnnotationDrawing strokeRect:v32 color:a4 context:v19, v21, v23, v25];
  }

  if (a9)
  {
    v34 = PDFColorCreateFromWhiteAlpha(v32, 0.0, 0.25);
    [PDFAnnotationDrawing fillRect:v34 color:a4 context:v19, v21, v23, v25];
  }
}

+ (void)drawRadioButton:(id)a3 inContext:(CGContext *)a4 withState:(int64_t)a5 withBackgroundColor:(id)a6 withBorderColor:(id)a7 withFontColor:(id)a8 isHighlighted:(BOOL)a9
{
  v34 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a3;
  [v16 bounds];
  x = v17;
  y = v19;
  width = v21;
  v24 = v23;
  v25 = [v16 valueForAnnotationKey:@"/Border"];

  CGContextSaveGState(a4);
  LODWORD(v26) = 1.0;
  if (v25)
  {
    [v25 lineWidth];
    *&v26 = v26;
    if (*&v26 == 0.0)
    {
      LODWORD(v26) = 1.0;
    }
  }

  v27 = *&v26;
  CGContextSetLineWidth(a4, *&v26);
  v28 = width < v24;
  v29 = x + (width - v24) * 0.5;
  if (width < v24)
  {
    y = y + (v24 - width) * 0.5;
  }

  else
  {
    width = v24;
  }

  if (!v28)
  {
    x = v29;
  }

  if (v34)
  {
    [PDFAnnotationDrawing fillOval:v34 color:a4 context:x, y, width, width];
  }

  if (!v14)
  {
    v14 = [MEMORY[0x1E69DC888] blackColor];
  }

  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = width;
  v37 = PDFRectInset(v36, v27 * 0.5, v27 * 0.5);
  v30 = [PDFAnnotationDrawing strokeOval:v14 color:a4 context:v37.origin.x, v37.origin.y, v37.size.width, v37.size.height];
  if (a5 != 1)
  {
    height = width;
    if (!a9)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = width;
  v39 = PDFRectInset(v38, width * 0.25, width * 0.25);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v32 = v15;
  if (!v32)
  {
    v32 = [MEMORY[0x1E69DC888] blackColor];
  }

  [PDFAnnotationDrawing fillOval:v32 color:a4 context:x, y, width, height];

  if (a9)
  {
LABEL_19:
    v33 = PDFColorCreateFromWhiteAlpha(v30, 0.0, 0.25);
    [PDFAnnotationDrawing fillOval:v33 color:a4 context:x, y, width, height];
  }

LABEL_20:
  CGContextRestoreGState(a4);
}

+ (void)drawCheckBox:(id)a3 inContext:(CGContext *)a4 withState:(int64_t)a5 withBackgroundColor:(id)a6 withBorderColor:(id)a7 withFontColor:(id)a8 isHighlighted:(BOOL)a9
{
  v40 = a6;
  v14 = a7;
  v15 = a8;
  [a3 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  CGContextSaveGState(a4);
  v24 = v40;
  if (v40)
  {
    v24 = [PDFAnnotationDrawing fillRect:v40 color:a4 context:v17, v19, v21, v23];
  }

  if (!v15)
  {
    v15 = PDFColorCreateFromWhiteAlpha(v24, 0.0, 1.0);
  }

  v25 = [v15 CGColor];
  ColorSpace = CGColorGetColorSpace(v25);
  CGContextSetStrokeColorSpace(a4, ColorSpace);
  CGContextSetStrokeColorWithColor(a4, v25);
  if (a5 == 1)
  {
    v27 = (v21 - v23) * 0.5;
    v28 = v27;
    v29 = (v23 - v21) * 0.5;
    v30 = v29;
    if (v21 < v23)
    {
      v31 = v21;
    }

    else
    {
      v31 = v23;
    }

    if (v21 < v23)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v28;
    }

    if (v21 < v23)
    {
      v33 = v30;
    }

    else
    {
      v33 = 0.0;
    }

    v34 = v31;
    CGContextBeginPath(a4);
    v35 = v17 + v32;
    v36 = v34;
    v37 = v19 + v33;
    CGContextMoveToPoint(a4, v35 + v36 * 0.15, v37 + v36 * 0.45);
    CGContextAddLineToPoint(a4, v35 + v36 * 0.35, v37 + v36 * 0.25);
    CGContextAddLineToPoint(a4, v35 + v36 * 0.85, v37 + v36 * 0.75);
    CGContextSetLineWidth(a4, 1.5);
    CGContextStrokePath(a4);
  }

  CGContextRestoreGState(a4);
  if (!v14)
  {
    v14 = [MEMORY[0x1E69DC888] blackColor];
  }

  v38 = [PDFAnnotationDrawing strokeRect:v14 color:a4 context:v17, v19, v21, v23];
  if (a9)
  {
    v39 = PDFColorCreateFromWhiteAlpha(v38, 0.0, 0.25);
    [PDFAnnotationDrawing fillRect:v39 color:a4 context:v17, v19, v21, v23];
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withChoiceWidgetAnnotation:(id)a5
{
  v29 = a5;
  v8 = [v29 page];
  [v29 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v29 interactiveBackgroundColor];
  v18 = [v29 widgetStringValue];
  v19 = [v29 widgetDefaultStringValue];
  if (v17)
  {
    [PDFAnnotationDrawing fillRect:v17 color:CurrentContext context:v10, v12, v14, v16];
  }

  if ([v29 appearance:0] && v19 && objc_msgSend(v19, "isEqualToString:", v18))
  {
    [a1 drawAppearance:0 ofAnnotation:v29 withBox:a3 inContext:CurrentContext];
    goto LABEL_22;
  }

  if (a3 <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [v8 transformContext:CurrentContext forBox:a3];
    v20 = [v29 valueForAnnotationKey:@"/MK"];
    v21 = [v20 backgroundColor];
    v22 = [v29 isListChoice];
    v26 = [v29 choices];
    v28 = [v29 font];
    v27 = [v29 fontColor];
    v23 = [v29 valueForAnnotationKey:@"/Border"];
    if (v21)
    {
      [PDFAnnotationDrawing fillRect:v21 color:CurrentContext context:v10, v12, v14, v16];
    }

    if (v22)
    {
      [a1 drawListBox:CurrentContext inContext:v29 withAnnotation:v26 withOptions:v18 withStringValue:v28 withFont:v27 withFontColor:{v10, v12, v14, v16}];
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [a1 drawComboBox:CurrentContext inContext:v29 withAnnotation:v18 withStringValue:v28 withFont:v27 withFontColor:{v10, v12, v14, v16}];
      if (!v23)
      {
LABEL_19:
        if ((v22 & 1) == 0)
        {
          [a1 drawDisclosureBox:CurrentContext inContext:{v10, v12, v14, v16}];
        }

        CGContextRestoreGState(CurrentContext);

        goto LABEL_22;
      }
    }

    v25 = v20;
    v24 = [v20 borderColor];
    if (!v24)
    {
      v24 = [MEMORY[0x1E69DC888] blackColor];
    }

    CGContextSetStrokeColorWithColor(CurrentContext, [v24 CGColor]);
    [v23 drawInRect:CurrentContext inContext:{v10, v12, v14, v16}];

    v20 = v25;
    goto LABEL_19;
  }

LABEL_22:
}

+ (void)drawListBox:(CGRect)a3 inContext:(CGContext *)a4 withAnnotation:(id)a5 withOptions:(id)a6 withStringValue:(id)a7 withFont:(id)a8 withFontColor:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v38 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (v18)
  {
    v22 = [v18 count];
    if (v22 >= 1)
    {
      v23 = v22;
      v24 = x + 1.0;
      v25 = width + -1.0;
      [v20 pointSize];
      v26 = 0;
      v28 = v27 + 2.0;
      v29 = y + height - (v27 + 2.0);
      do
      {
        v30 = [v18 objectAtIndex:v26];
        if ([v19 isEqualToString:v30])
        {
          v31 = [MEMORY[0x1E69DC888] groupTableViewBackgroundColor];
          [PDFAnnotationDrawing fillRect:v31 color:a4 context:v24, v29, v25, v28 + -0.1];

          v32 = 0x1E69DC000;
          p_vtable = (&OBJC_METACLASS___PDFAKPageOverlayViewProvider + 24);
        }

        else
        {
          p_vtable = &OBJC_METACLASS___PDFAKPageOverlayViewProvider.vtable;
          v32 = 0x1E69DC000uLL;
        }

        [p_vtable + 332 renderString:v30 forRect:v20 font:v21 color:0 alignment:0 rotation:0 breaks:v24 context:v29 withAnnotation:{v25, v28, a4, v38}];
        CGContextSaveGState(a4);
        v34 = [*(v32 + 2184) grayColor];
        v35 = [v34 CGColor];

        ColorSpace = CGColorGetColorSpace(v35);
        CGContextSetStrokeColorSpace(a4, ColorSpace);
        CGContextSetStrokeColorWithColor(a4, v35);
        CGContextSetLineWidth(a4, 0.2);
        CGContextMoveToPoint(a4, v24, v29);
        CGContextAddLineToPoint(a4, v25 + v24, v29);
        CGContextStrokePath(a4);
        CGContextRestoreGState(a4);
        v40.origin.x = v24;
        v40.origin.y = v29;
        v40.size.width = v25;
        v40.size.height = v28;
        v41 = PDFRectOffset(v40, 0.0, -v28);
        v24 = v41.origin.x;
        v29 = v41.origin.y;
        v25 = v41.size.width;
        v28 = v41.size.height;
        v37 = v41.origin.y + v41.size.height;

        if (v37 < y)
        {
          break;
        }

        ++v26;
      }

      while (v23 > v26);
    }
  }
}

+ (void)drawComboBox:(CGRect)a3 inContext:(CGContext *)a4 withAnnotation:(id)a5 withStringValue:(id)a6 withFont:(id)a7 withFontColor:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v21 = a5;
  [v17 pointSize];
  v20 = ceil((height - v19) * 0.5);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = PDFRectInset(v23, 2.0, v20);
  [PDFAnnotationDrawing renderString:v18 forRect:v17 font:v16 color:0 alignment:0 rotation:0 breaks:v24.origin.x context:v24.origin.y - (height - v24.size.height) withAnnotation:v24.size.width, v24.size.height + height - v24.size.height, a4, v21];
}

+ (void)drawDisclosureBox:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSaveGState(a4);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v10 = DeviceRGB;
    CGContextSetFillColorSpace(a4, DeviceRGB);
    v11 = PDFRectGetMaxX(x, y, width) + -8.0;
    v12 = PDFRectGetMidY(x, y, width, height) + -2.5;
    v13 = [MEMORY[0x1E69DC888] grayColor];
    CGContextSetFillColorWithColor(a4, [v13 CGColor]);

    v17.origin.x = v11 + -4.5;
    v17.origin.y = v12 + -2.0;
    v17.size.width = 9.0;
    v17.size.height = 9.0;
    CGContextFillEllipseInRect(a4, v17);
    v14 = [MEMORY[0x1E69DC888] whiteColor];
    CGContextSetFillColorWithColor(a4, [v14 CGColor]);

    CGContextBeginPath(a4);
    CGContextMoveToPoint(a4, v11, v12);
    v15 = v12 + 4.0;
    CGContextAddLineToPoint(a4, v11 + -3.0, v15);
    CGContextAddLineToPoint(a4, v11 + 3.0, v15);
    CGContextClosePath(a4);
    CGContextFillPath(a4);
    CGContextRestoreGState(a4);

    CGColorSpaceRelease(v10);
  }

  else
  {

    CGContextRestoreGState(a4);
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withTextWidgetAnnotation:(id)a5
{
  v44 = a5;
  v8 = [v44 page];
  [v44 bounds];
  if (a3 <= 4)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
    {
      Property = CGContextGetProperty();
      v18 = *MEMORY[0x1E695E4D0];
      v19 = [v44 appearance:0];
      if (v19)
      {
        [a1 drawAppearance:0 ofAnnotation:v44 withBox:a3 inContext:CurrentContext scaleProportional:1 suppressTextRendering:1];
      }

      CGContextSaveGState(CurrentContext);
      [v8 transformContext:CurrentContext forBox:a3];
      UIGraphicsPushContext(CurrentContext);
      [v8 boundsForBox:a3];
      CGContextTranslateCTM(CurrentContext, 0.0, v20 + v14 - (v20 - v14 - v16));
      CGContextScaleCTM(CurrentContext, 1.0, -1.0);
      if (Property == v18)
      {
        v21 = [v44 interactiveBackgroundColor];
      }

      else
      {
        v21 = 0;
      }

      v46.origin.x = v13;
      v46.origin.y = v14;
      v46.size.width = v15;
      v46.size.height = v16;
      v47 = PDFRectInset(v46, 1.0, 1.0);
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;
      if (v19)
      {
        if (v21)
        {
          [PDFAnnotationDrawing fillRect:v21 color:CurrentContext context:v47.origin.x, v47.origin.y, v47.size.width, v47.size.height];
        }
      }

      else
      {
        v26 = [v44 backgroundColor];
        v27 = v26;
        v28 = v21;
        if (v21 || (v28 = v26) != 0)
        {
          [PDFAnnotationDrawing fillRect:v28 color:CurrentContext context:x, y, width, height];
        }

        v29 = [v44 valueForAnnotationKey:@"/MK"];
        v30 = [v29 borderColor];

        if (v30)
        {
          CGContextSetStrokeColorWithColor(CurrentContext, [v30 CGColor]);
          v31 = objc_alloc_init(PDFBorder);
          [(PDFBorder *)v31 drawInRect:CurrentContext inContext:v13, v14, v15, v16];
        }
      }

      v32 = [v44 control];

      if (!v32)
      {
        v33 = [v44 createAttributedStringForTextWidget];
        if ([v33 length])
        {
          +[PDFAnnotationDrawing textInset];
          v35 = v34;
          +[PDFAnnotationDrawing textInset];
          v37 = v36;
          if (([v44 isMultiline] & 1) == 0)
          {
            [v33 boundingRectWithSize:1 options:0 context:{v15, v16}];
            v37 = fmax((v16 - v38) * 0.5, 0.0);
          }

          v48.origin.x = v13;
          v48.origin.y = v14;
          v48.size.width = v15;
          v48.size.height = v16;
          v49 = CGRectInset(v48, v35, v37);
          v39 = v49.origin.x;
          v40 = v49.origin.y;
          v41 = v49.size.width;
          v42 = v49.size.height;
          v43 = floor(CGRectGetMaxY(v49));
          v50.origin.x = v39;
          v50.origin.y = v40;
          v50.size.width = v41;
          v50.size.height = v42;
          [v33 drawWithRect:1 options:0 context:{v39, v43 - CGRectGetHeight(v50), v41, v42}];
        }
      }

      UIGraphicsPopContext();
      CGContextRestoreGState(CurrentContext);
    }
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)CurrentContext withSignatureWidgetAnnotation:(id)a5
{
  v21 = a5;
  v8 = [v21 page];
  [v21 bounds];
  if (a3 <= 4)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
    {
      Property = CGContextGetProperty();
      v18 = *MEMORY[0x1E695E4D0];
      v19 = [v21 isAppearanceStreamEmpty];
      if ((v19 & 1) == 0)
      {
        [a1 drawAppearance:0 ofAnnotation:v21 withBox:a3 inContext:CurrentContext scaleProportional:1 suppressTextRendering:1];
      }

      CGContextSaveGState(CurrentContext);
      [v8 transformContext:CurrentContext forBox:a3];
      UIGraphicsPushContext(CurrentContext);
      if (Property == v18)
      {
        v20 = [v21 interactiveBackgroundColor];
      }

      else
      {
        v20 = 0;
      }

      v23.origin.x = v13;
      v23.origin.y = v14;
      v23.size.width = v15;
      v23.size.height = v16;
      v24 = PDFRectInset(v23, 1.0, 1.0);
      if (v19)
      {
        [PDFAnnotationDrawing fillRect:v20 color:CurrentContext context:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
      }

      UIGraphicsPopContext();
      CGContextRestoreGState(CurrentContext);
    }
  }
}

+ (id)createLigtherColor:(CGColor *)a3 withIntensity:(double)a4
{
  if (a3 && CGColorGetNumberOfComponents(a3) == 4 && (ColorSpace = CGColorGetColorSpace(a3), CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB))
  {
    Components = CGColorGetComponents(a3);
    v8 = fmax(*Components - a4, 0.0);
    v9 = fmax(Components[1] - a4, 0.0);
    v10 = fmax(Components[2] - a4, 0.0);
  }

  else
  {
    v8 = 0.996;
    v9 = 0.933;
    v10 = 0.737;
  }

  v11 = PDFCGColorCreateGenericRGB(v8, v9, v10, 1.0);

  return v11;
}

+ (id)stringByTrimmingTrailingCharactersInSet:(id)a3 forString:(id)a4
{
  v5 = a4;
  v6 = [a3 invertedSet];
  v7 = [v5 rangeOfCharacterFromSet:v6 options:4];
  v9 = v8;

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = &stru_1F416DF70;
  }

  else
  {
    v10 = [v5 substringToIndex:v7 + v9];
  }

  return v10;
}

+ (BOOL)renderString:(id)a3 forRect:(CGRect)a4 font:(id)a5 color:(id)a6 alignment:(int64_t)a7 rotation:(int)a8 breaks:(BOOL)a9 context:(CGContext *)c withAnnotation:(id)a11
{
  v11 = a9;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v70[1] = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a5;
  v22 = a6;
  v23 = a11;
  if (!v20)
  {
    v39 = 1;
    goto LABEL_45;
  }

  CGContextSaveGState(c);
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  PDFRectIntegral(v72);
  v73.origin.x = PDFRectToCGRect(v24);
  CGContextClipToRect(c, v73);
  v25 = [v23 gcCreateAttributesForFont:v21 color:v22];
  if (!v25)
  {
    v39 = height >= 0.0;
    CGContextRestoreGState(c);
    goto LABEL_45;
  }

  v26 = v25;
  if (a7 == 2)
  {
    v27 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v28 = [a1 stringByTrimmingTrailingCharactersInSet:v27 forString:v20];

    v20 = v28;
  }

  v64 = v23;
  if ([v23 shouldComb])
  {
    v29 = [v23 valueForAnnotationKey:@"/MaxLen"];
    v30 = [v29 integerValue];

    if (!v21)
    {
      v31 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v21 = [v31 systemFontOfSize:?];
    }

    v69 = *MEMORY[0x1E69DB648];
    v70[0] = v21;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    [(__CFString *)v20 sizeWithAttributes:v32];
    v34 = v33;

    valuePtr.a = (width + -v34 / [(__CFString *)v20 length]* v30) / v30;
    v35 = *MEMORY[0x1E695E480];
    v36 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
    CFDictionarySetValue(v26, *MEMORY[0x1E6965A18], v36);
    CFRelease(v36);
    LODWORD(descent) = 0;
    v37 = CFNumberCreate(v35, kCFNumberIntType, &descent);
    CFDictionarySetValue(v26, *MEMORY[0x1E6965A28], v37);
    CFRelease(v37);
    v38 = valuePtr.a * 0.5;
  }

  else
  {
    v35 = *MEMORY[0x1E695E480];
    v38 = 0.0;
  }

  cf = v26;
  v40 = CFAttributedStringCreate(v35, v20, v26);
  v41 = v40;
  if (v40)
  {
    v42 = CTTypesetterCreateWithAttributedString(v40);
    if (v42)
    {
      v43 = v42;
      Length = CFAttributedStringGetLength(v41);
      v45 = 0.0;
      v61 = v21;
      v62 = v22;
      if (a8 > 179)
      {
        if (a8 != 180)
        {
          if (a8 != 270)
          {
            goto LABEL_26;
          }

          CGContextTranslateCTM(c, x + width, y + height);
          v46 = -90.0;
          goto LABEL_22;
        }

        CGContextTranslateCTM(c, x + width, y);
        v48 = PDFDegToRad(180.0);
        CGContextRotateCTM(c, v48);
      }

      else
      {
        if (a8)
        {
          if (a8 != 90)
          {
            goto LABEL_26;
          }

          CGContextTranslateCTM(c, x, y);
          v46 = 90.0;
LABEL_22:
          v47 = PDFDegToRad(v46);
          CGContextRotateCTM(c, v47);
          v45 = height;
          goto LABEL_26;
        }

        CGContextTranslateCTM(c, x, y + height);
      }

      v45 = width;
LABEL_26:
      v49 = *(MEMORY[0x1E695EFD0] + 16);
      *&valuePtr.a = *MEMORY[0x1E695EFD0];
      *&valuePtr.c = v49;
      *&valuePtr.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGContextSetTextMatrix(c, &valuePtr);
      v50 = 0;
      v51 = 0.0;
      do
      {
        v52 = Length;
        if (v11)
        {
          v52 = CTTypesetterSuggestLineBreak(v43, v50, v45);
        }

        v71.location = v50;
        v71.length = v52;
        Line = CTTypesetterCreateLine(v43, v71);
        if (Line)
        {
          v54 = Line;
          descent = 0.0;
          valuePtr.a = 0.0;
          leading = 0.0;
          TypographicBounds = CTLineGetTypographicBounds(Line, &valuePtr.a, &descent, &leading);
          v56 = ceil(valuePtr.a);
          if (v51 == 0.0)
          {
            v51 = v56 + 1.0;
          }

          else
          {
            v51 = v51 + v56 + ceil(descent);
          }

          v57 = v45 - TypographicBounds;
          v58 = v57 * 0.5;
          v59 = v38 + v57;
          if (a7 != 2)
          {
            v59 = v58;
          }

          if (!a7)
          {
            v59 = v38;
          }

          CGContextSetTextPosition(c, round(v59), round(-v51));
          CTLineDraw(v54, c);
          CFRelease(v54);
        }

        v50 += v52;
      }

      while (v50 < Length);
      v39 = v51 <= height;
      v21 = v61;
      v22 = v62;
      goto LABEL_40;
    }
  }

  v43 = 0;
  v39 = height >= 0.0;
LABEL_40:
  CGContextRestoreGState(c);
  CFRelease(cf);
  if (v41)
  {
    CFRelease(v41);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  v23 = v64;
LABEL_45:

  return v39;
}

+ (void)fillRect:(CGRect)a3 color:(id)a4 context:(CGContext *)a5
{
  if (a4)
  {
    v6 = a4;
    CGContextSaveGState(a5);
    v7 = [v6 CGColor];

    ColorSpace = CGColorGetColorSpace(v7);
    CGContextSetFillColorSpace(a5, ColorSpace);
    CGContextSetFillColorWithColor(a5, v7);
    v11.origin.x = PDFRectToCGRect(v9);
    CGContextFillRect(a5, v11);

    CGContextRestoreGState(a5);
  }
}

+ (void)strokeRect:(CGRect)a3 color:(id)a4 context:(CGContext *)a5
{
  if (a4)
  {
    v6 = a4;
    CGContextSaveGState(a5);
    v7 = [v6 CGColor];

    ColorSpace = CGColorGetColorSpace(v7);
    CGContextSetStrokeColorSpace(a5, ColorSpace);
    CGContextSetStrokeColorWithColor(a5, v7);
    v11.origin.x = PDFRectToCGRect(v9);
    CGContextStrokeRect(a5, v11);

    CGContextRestoreGState(a5);
  }
}

+ (void)fillOval:(CGRect)a3 color:(id)a4 context:(CGContext *)a5
{
  if (a4)
  {
    v6 = a4;
    CGContextSaveGState(a5);
    v7 = [v6 CGColor];

    ColorSpace = CGColorGetColorSpace(v7);
    CGContextSetFillColorSpace(a5, ColorSpace);
    CGContextSetFillColorWithColor(a5, v7);
    v11.origin.x = PDFRectToCGRect(v9);
    CGContextFillEllipseInRect(a5, v11);

    CGContextRestoreGState(a5);
  }
}

+ (void)strokeOval:(CGRect)a3 color:(id)a4 context:(CGContext *)a5
{
  if (a4)
  {
    v6 = a4;
    CGContextSaveGState(a5);
    v7 = [v6 CGColor];

    ColorSpace = CGColorGetColorSpace(v7);
    CGContextSetStrokeColorSpace(a5, ColorSpace);
    CGContextSetStrokeColorWithColor(a5, v7);
    v11.origin.x = PDFRectToCGRect(v9);
    CGContextStrokeEllipseInRect(a5, v11);

    CGContextRestoreGState(a5);
  }
}

+ (void)drawWithBox:(int64_t)a3 inContext:(CGContext *)a4 withUnknownAnnotation:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (a3 <= 4)
  {
    v10 = v8;
    v8 = [v8 appearance:0];
    v9 = v10;
    if (v8)
    {
      v8 = [a1 drawAppearance:0 ofAnnotation:v10 withBox:a3 inContext:a4];
      v9 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

@end