@interface PDFAnnotationDrawing
+ (BOOL)renderString:(id)string forRect:(CGRect)rect font:(id)font color:(id)color alignment:(int64_t)alignment rotation:(int)rotation breaks:(BOOL)breaks context:(CGContext *)c withAnnotation:(id)self1;
+ (CGPath)createCGPathArrayWithBezierPaths:(id)paths;
+ (CGRect)adjustedRectForBox:(int64_t)box withAnnotation:(id)annotation;
+ (id)createLigtherColor:(CGColor *)color withIntensity:(double)intensity;
+ (id)stringByTrimmingTrailingCharactersInSet:(id)set forString:(id)string;
+ (void)createPillBezier:(CGRect)bezier inContext:(CGContext *)context;
+ (void)drawAppearance:(int)appearance ofAnnotation:(id)annotation withBox:(int64_t)box inContext:(CGContext *)context scaleProportional:(BOOL)proportional suppressTextRendering:(BOOL)rendering;
+ (void)drawArrowFrom:(CGPoint)from to:(CGPoint)to open:(BOOL)open inContext:(CGContext *)context withBorder:(id)border;
+ (void)drawBulletAtPoint:(CGPoint)point shape:(int)shape inContext:(CGContext *)context withBorder:(id)border;
+ (void)drawCheckBox:(id)box inContext:(CGContext *)context withState:(int64_t)state withBackgroundColor:(id)color withBorderColor:(id)borderColor withFontColor:(id)fontColor isHighlighted:(BOOL)highlighted;
+ (void)drawComboBox:(CGRect)box inContext:(CGContext *)context withAnnotation:(id)annotation withStringValue:(id)value withFont:(id)font withFontColor:(id)color;
+ (void)drawCommentIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context;
+ (void)drawCommonCommentNoteIconToContext:(CGContext *)context color:(id)color rect:(CGRect)rect;
+ (void)drawDisclosureBox:(CGRect)box inContext:(CGContext *)context;
+ (void)drawHelpIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context;
+ (void)drawInsertIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context;
+ (void)drawKeyIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context;
+ (void)drawListBox:(CGRect)box inContext:(CGContext *)context withAnnotation:(id)annotation withOptions:(id)options withStringValue:(id)value withFont:(id)font withFontColor:(id)color;
+ (void)drawNewParagraphIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context;
+ (void)drawNoteAsSelected:(CGContext *)selected rect:(CGRect)rect;
+ (void)drawNoteIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context;
+ (void)drawNoteInContext:(CGContext *)context withParentAnnotation:(id)annotation;
+ (void)drawParagraphIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context;
+ (void)drawPushButton:(id)button inContext:(CGContext *)context withBackgroundColor:(id)color withCaption:(id)caption withFont:(id)font withFontColor:(id)fontColor isHighlighted:(BOOL)highlighted;
+ (void)drawRadioButton:(id)button inContext:(CGContext *)context withState:(int64_t)state withBackgroundColor:(id)color withBorderColor:(id)borderColor withFontColor:(id)fontColor isHighlighted:(BOOL)highlighted;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withButtonWidgetAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withChoiceWidgetAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withCircleAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withFreeTextAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withInkAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withLineAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withLinkAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withMarkupAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withRedactAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withSignatureWidgetAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withSquareAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withStampAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withTextAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withTextWidgetAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withAKAnnotation:(id)annotation forAnnotation:(id)forAnnotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withPopupAnnotation:(id)annotation;
+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withUnknownAnnotation:(id)annotation;
+ (void)fillOval:(CGRect)oval color:(id)color context:(CGContext *)context;
+ (void)fillRect:(CGRect)rect color:(id)color context:(CGContext *)context;
+ (void)setupDrawColor:(id)color forContext:(CGContext *)context;
+ (void)strokeOval:(CGRect)oval color:(id)color context:(CGContext *)context;
+ (void)strokeRect:(CGRect)rect color:(id)color context:(CGContext *)context;
@end

@implementation PDFAnnotationDrawing

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v9 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
  akAnnotationAdaptor = [annotationCopy akAnnotationAdaptor];
  akAnnotation = [akAnnotationAdaptor akAnnotation];

  if (akAnnotation)
  {
    [self drawWithBox:box inContext:context withAKAnnotation:akAnnotation forAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Circle"])
  {
    [self drawWithBox:box inContext:context withCircleAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/FreeText"])
  {
    [self drawWithBox:box inContext:context withFreeTextAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Ink"])
  {
    [self drawWithBox:box inContext:context withInkAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Line"])
  {
    [self drawWithBox:box inContext:context withLineAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Link"])
  {
    [self drawWithBox:box inContext:context withLinkAnnotation:annotationCopy];
  }

  else if (([v9 isEqualToString:@"/Highlight"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"/StrikeOut") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"/Underline"))
  {
    [self drawWithBox:box inContext:context withMarkupAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Popup"])
  {
    [self drawWithBox:box inContext:context withPopupAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Square"])
  {
    [self drawWithBox:box inContext:context withSquareAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Stamp"])
  {
    [self drawWithBox:box inContext:context withStampAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Text"])
  {
    [self drawWithBox:box inContext:context withTextAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Redact"])
  {
    [self drawWithBox:box inContext:context withRedactAnnotation:annotationCopy];
  }

  else if ([v9 isEqualToString:@"/Widget"])
  {
    v15 = [annotationCopy valueForAnnotationKey:@"/FT"];
    if ([v15 isEqualToString:@"/Btn"])
    {
      [self drawWithBox:box inContext:context withButtonWidgetAnnotation:annotationCopy];
    }

    else if ([v15 isEqualToString:@"/Tx"])
    {
      [self drawWithBox:box inContext:context withTextWidgetAnnotation:annotationCopy];
    }

    else if ([v15 isEqualToString:@"/Ch"])
    {
      [self drawWithBox:box inContext:context withChoiceWidgetAnnotation:annotationCopy];
    }

    else if ([v15 isEqualToString:@"/Sig"])
    {
      [self drawWithBox:box inContext:context withSignatureWidgetAnnotation:annotationCopy];
    }
  }

  else
  {
    [self drawWithBox:box inContext:context withUnknownAnnotation:annotationCopy];
  }

  if (GetDefaultsWriteHighlightAnnotations())
  {
    CGContextSaveGState(context);
    [annotationCopy bounds];
    page = [annotationCopy page];
    v13 = page;
    memset(&v16[1], 0, sizeof(CGAffineTransform));
    if (page)
    {
      [page getDrawingTransformForBox:box];
    }

    v16[0] = v16[1];
    CGContextConcatCTM(context, v16);
    CGContextSetRGBStrokeColor(context, 0.5, 0.0, 0.5, 1.0);
    CGContextSetLineWidth(context, 1.0);
    v17.origin.x = PDFRectToCGRect(v14);
    CGContextStrokeRect(context, v17);
    CGContextRestoreGState(context);
  }
}

+ (void)drawAppearance:(int)appearance ofAnnotation:(id)annotation withBox:(int64_t)box inContext:(CGContext *)context scaleProportional:(BOOL)proportional suppressTextRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  v11 = *&appearance;
  annotationCopy = annotation;
  v12 = [annotationCopy cachedAppearance:v11];
  if (v12)
  {
    v13 = v12;
    [annotationCopy bounds];
    [annotationCopy drawCachedAppearance:v13 withBox:box inContext:context inRect:1 scaleProportional:?];
  }

  else
  {
    v14 = [annotationCopy appearance:v11];
    [annotationCopy bounds];
    [annotationCopy drawAppearance:v14 withBox:box inContext:context inRect:1 scaleProportional:renderingCopy suppressTextRendering:?];
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withAKAnnotation:(id)annotation forAnnotation:(id)forAnnotation
{
  annotationCopy = annotation;
  forAnnotationCopy = forAnnotation;
  CGContextSaveGState(context);
  page = [forAnnotationCopy page];

  if (page)
  {
    [page getDrawingTransformForBox:box];
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(context, &transform);

  [annotationCopy integralDrawingBounds];
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
    CGContextConcatCTM(context, &v18);
  }

  [AKControllerClass() renderAnnotation:annotationCopy inContext:context];
  CGContextRestoreGState(context);
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withCircleAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  v9 = [annotationCopy valueForAnnotationKey:@"/Border"];
  v10 = [annotationCopy valueForAnnotationKey:@"/C"];
  v11 = [annotationCopy valueForAnnotationKey:@"/IC"];
  v12 = PDFRectToCGRect(v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([annotationCopy appearance:0])
  {
    [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
  }

  else if (box <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [page transformContext:CurrentContext forBox:box];
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
      cGColor = [v11 CGColor];
      ColorSpace = CGColorGetColorSpace(cGColor);
      CGContextSetFillColorSpace(CurrentContext, ColorSpace);
      CGContextSetFillColorWithColor(CurrentContext, cGColor);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      CGContextFillEllipseInRect(CurrentContext, v33);
    }

    cGColor2 = [v10 CGColor];
    v28 = CGColorGetColorSpace(cGColor2);
    CGContextSetStrokeColorSpace(CurrentContext, v28);
    CGContextSetStrokeColorWithColor(CurrentContext, cGColor2);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    CGContextStrokeEllipseInRect(CurrentContext, v34);
    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withFreeTextAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v24 = [annotationCopy valueForAnnotationKey:@"/C"];
  v17 = [annotationCopy valueForAnnotationKey:@"/Contents"];
  v18 = [annotationCopy valueForAnnotationKey:@"/Border"];
  font = [annotationCopy font];
  fontColor = [annotationCopy fontColor];
  alignment = [annotationCopy alignment];
  rotation = [page rotation];
  if ([annotationCopy appearance:0])
  {
    [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
  }

  else if (box <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [page transformContext:CurrentContext forBox:box];
    [PDFAnnotationDrawing fillRect:v24 color:CurrentContext context:v10, v12, v14, v16];
    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    v28 = PDFRectInset(v27, 2.0, 2.0);
    [PDFAnnotationDrawing renderString:v17 forRect:font font:fontColor color:alignment alignment:rotation rotation:1 breaks:v28.origin.x context:v28.origin.y withAnnotation:v28.size.width, v28.size.height, CurrentContext, annotationCopy];
    if (v18)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      CGContextSetStrokeColorWithColor(CurrentContext, [blackColor CGColor]);

      [v18 drawInRect:CurrentContext inContext:{v10, v12, v14, v16}];
    }

    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withInkAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  v10 = [annotationCopy valueForAnnotationKey:@"/C"];
  v11 = [annotationCopy valueForAnnotationKey:@"/Border"];
  if (![annotationCopy appearance:0])
  {
    v12 = [annotationCopy valueForAnnotationKey:@"/InkList"];
    if (v12)
    {
      cgPathArray = [annotationCopy cgPathArray];
      if (cgPathArray)
      {
        v14 = cgPathArray;
LABEL_7:
        v15 = [v12 count];
        if (box <= 4)
        {
          LODWORD(v16) = v15;
          if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
          {
            CGContextSaveGState(CurrentContext);
            [page transformContext:CurrentContext forBox:box];
            [annotationCopy bounds];
            CGAffineTransformMakeTranslation(&v24, v17, v18);
            CGContextConcatCTM(CurrentContext, &v24);
            if (v10)
            {
              cGColor = [v10 CGColor];
              ColorSpace = CGColorGetColorSpace(cGColor);
              CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
              CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
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

      v14 = [self createCGPathArrayWithBezierPaths:v12];
      [annotationCopy setCGPathArray:v14];
      if (v14)
      {
        goto LABEL_7;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
LABEL_24:
}

+ (CGPath)createCGPathArrayWithBezierPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [pathsCopy count];
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
        v8 = [pathsCopy objectAtIndex:i];
        v6[i] = CGPathCreateMutableCopy([v8 CGPath]);
      }
    }
  }

  return v6;
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withLineAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  v10 = v9;
  v12 = v11;
  v13 = [annotationCopy valueForAnnotationKey:@"/C"];
  v14 = [annotationCopy valueForAnnotationKey:@"/IC"];
  v15 = [annotationCopy valueForAnnotationKey:@"/Border"];
  v16 = [annotationCopy valueForAnnotationKey:@"/L"];
  if (v16)
  {
    [annotationCopy startPoint];
    v18 = v17;
    v20 = v19;
    [annotationCopy endPoint];
    v22 = v21;
    v24 = v23;
    startLineStyle = [annotationCopy startLineStyle];
    endLineStyle = [annotationCopy endLineStyle];
    if ([annotationCopy appearance:0])
    {
      [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
      goto LABEL_45;
    }

    if (box <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
    {
      CGContextSaveGState(CurrentContext);
      [page transformContext:CurrentContext forBox:box];
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
      cGColor = [v13 CGColor];
      ColorSpace = CGColorGetColorSpace(cGColor);
      CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
      CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
      if (startLineStyle == 4)
      {
        [self drawArrowFrom:1 to:CurrentContext open:v15 inContext:v22 withBorder:{v24, v18, v20}];
      }

      if (endLineStyle == 4)
      {
        [self drawArrowFrom:1 to:CurrentContext open:v15 inContext:v18 withBorder:{v20, v22, v24}];
      }

      CGContextDrawPath(CurrentContext, kCGPathStroke);
      if (((startLineStyle | endLineStyle) & 0xFFFFFFFFFFFFFFFBLL) == 0)
      {
        goto LABEL_44;
      }

      if (startLineStyle > 2)
      {
        if (startLineStyle != 3)
        {
          if (startLineStyle == 5)
          {
            [self drawArrowFrom:0 to:CurrentContext open:v15 inContext:v22 withBorder:{v24, v18, v20}];
          }

LABEL_27:
          if (endLineStyle > 2)
          {
            if (endLineStyle != 3)
            {
              if (endLineStyle == 5)
              {
                [self drawArrowFrom:0 to:CurrentContext open:v15 inContext:v18 withBorder:{v20, v22, v24}];
              }

              goto LABEL_37;
            }

            selfCopy3 = self;
            v36 = v22;
            v37 = v24;
            v38 = 2;
          }

          else if (endLineStyle == 1)
          {
            selfCopy3 = self;
            v36 = v22;
            v37 = v24;
            v38 = 0;
          }

          else
          {
            if (endLineStyle != 2)
            {
LABEL_37:
              v39 = endLineStyle <= 0 && startLineStyle <= 0;
              v40 = kCGPathStroke;
              if (!v39 && v14)
              {
                cGColor2 = [v14 CGColor];
                v42 = CGColorGetColorSpace(cGColor2);
                CGContextSetFillColorSpace(CurrentContext, v42);
                CGContextSetFillColorWithColor(CurrentContext, cGColor2);
                v40 = kCGPathFillStroke;
              }

              CGContextDrawPath(CurrentContext, v40);
LABEL_44:
              CGContextRestoreGState(CurrentContext);
              goto LABEL_45;
            }

            selfCopy3 = self;
            v36 = v22;
            v37 = v24;
            v38 = 1;
          }

          [selfCopy3 drawBulletAtPoint:v38 shape:CurrentContext inContext:v15 withBorder:{v36, v37}];
          goto LABEL_37;
        }

        selfCopy6 = self;
        v32 = v18;
        v33 = v20;
        v34 = 2;
      }

      else if (startLineStyle == 1)
      {
        selfCopy6 = self;
        v32 = v18;
        v33 = v20;
        v34 = 0;
      }

      else
      {
        if (startLineStyle != 2)
        {
          goto LABEL_27;
        }

        selfCopy6 = self;
        v32 = v18;
        v33 = v20;
        v34 = 1;
      }

      [selfCopy6 drawBulletAtPoint:v34 shape:CurrentContext inContext:v15 withBorder:{v32, v33}];
      goto LABEL_27;
    }
  }

LABEL_45:
}

+ (void)drawBulletAtPoint:(CGPoint)point shape:(int)shape inContext:(CGContext *)context withBorder:(id)border
{
  y = point.y;
  x = point.x;
  borderCopy = border;
  v15 = borderCopy;
  if (borderCopy)
  {
    [borderCopy lineWidth];
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

  switch(shape)
  {
    case 2:
      CGContextMoveToPoint(context, x - v14 * 0.25, y + v14 + v14 * 0.25);
      CGContextAddLineToPoint(context, x + v14, y);
      CGContextAddLineToPoint(context, x, y - v14);
      CGContextAddLineToPoint(context, x - v14, y);
      CGContextAddLineToPoint(context, x, y + v14);
      break;
    case 1:
      v18.origin.x = x - v14;
      v18.origin.y = y - v14;
      v18.size.width = v14 + v14;
      v18.size.height = v14 + v14;
      CGContextAddEllipseInRect(context, v18);
      break;
    case 0:
      v17.origin.x = x - v14;
      v17.origin.y = y - v14;
      v17.size.width = v14 + v14;
      v17.size.height = v14 + v14;
      CGContextAddRect(context, v17);
      break;
  }
}

+ (void)drawArrowFrom:(CGPoint)from to:(CGPoint)to open:(BOOL)open inContext:(CGContext *)context withBorder:(id)border
{
  y = to.y;
  x = to.x;
  v11 = from.y;
  v12 = from.x;
  borderCopy = border;
  v14 = x - v12;
  v15 = y - v11;
  v16 = sqrtf((v15 * v15) + (v14 * v14));
  v26 = borderCopy;
  if (borderCopy)
  {
    [borderCopy lineWidth];
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
  CGContextMoveToPoint(context, v21 - v24, v25 + v23);
  CGContextAddLineToPoint(context, x, y);
  CGContextAddLineToPoint(context, v24 + v21, v23 - v25);
  if (!open)
  {
    CGContextAddLineToPoint(context, v21 - v24, v25 + v23);
    CGContextAddLineToPoint(context, x, y);
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withLinkAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [annotationCopy valueForAnnotationKey:@"/Border"];
  blackColor = [annotationCopy valueForAnnotationKey:@"/C"];
  isHighlighted = [annotationCopy isHighlighted];
  v20 = [annotationCopy valueForAnnotationKey:@"/H"];
  if (isHighlighted)
  {
    if ([annotationCopy appearance:2])
    {
      selfCopy2 = self;
      v22 = 2;
LABEL_6:
      [selfCopy2 drawAppearance:v22 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
      goto LABEL_26;
    }
  }

  else if ([annotationCopy appearance:0])
  {
    selfCopy2 = self;
    v22 = 0;
    goto LABEL_6;
  }

  if (v17)
  {
    v23 = 1;
  }

  else
  {
    v23 = isHighlighted;
  }

  if (box > 4)
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
  [page transformContext:CurrentContext forBox:box];
  if (!isHighlighted)
  {
    goto LABEL_20;
  }

  if (![v20 isEqualToString:@"/I"])
  {
    if ([v20 isEqualToString:@"/O"])
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      cGColor = [whiteColor CGColor];
      ColorSpace = CGColorGetColorSpace(cGColor);
      CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
      CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
      CGContextSetCompositeOperation();
      v33.origin.x = v10;
      v33.origin.y = v12;
      v33.size.width = v14;
      v33.size.height = v16;
      v34 = PDFRectInset(v33, 0.5, 0.5);
      [self createPillBezier:CurrentContext inContext:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
      CGContextStrokePath(CurrentContext);
      goto LABEL_21;
    }

LABEL_20:
    whiteColor = 0;
LABEL_21:
    if (v17)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  whiteColor = +[PDFSelection defaultActiveColor];
  cGColor2 = [whiteColor CGColor];
  v26 = CGColorGetColorSpace(cGColor2);
  CGContextSetFillColorSpace(CurrentContext, v26);
  CGContextSetFillColorWithColor(CurrentContext, cGColor2);
  v27 = CGContextSetCompositeOperation();
  if (v17)
  {
    v32.origin.x = PDFRectToCGRect(v27);
    CGContextFillRect(CurrentContext, v32);
LABEL_22:
    if (!blackColor)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
    }

    CGContextSetStrokeColorWithColor(CurrentContext, [blackColor CGColor]);
    [v17 drawInRect:CurrentContext inContext:{v10, v12, v14, v16}];
    goto LABEL_25;
  }

  [self createPillBezier:CurrentContext inContext:{v10, v12, v14, v16}];
  CGContextFillPath(CurrentContext);
LABEL_25:
  CGContextRestoreGState(CurrentContext);

LABEL_26:
}

+ (void)createPillBezier:(CGRect)bezier inContext:(CGContext *)context
{
  height = bezier.size.height;
  width = bezier.size.width;
  y = bezier.origin.y;
  v8 = bezier.origin.x;
  CGContextSetLineJoin(context, kCGLineJoinRound);
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
  CGContextMoveToPoint(context, x, y);
  v13 = v12;
  v14 = v8 + v12;
  CGContextAddCurveToPoint(context, v14, y, v8, y + v13, v8, y + v11);
  v15 = y + height;
  CGContextAddLineToPoint(context, v8, v15 - v11);
  CGContextAddCurveToPoint(context, v8, v15 - v13, v14, v15, x, v15);
  v16 = v8 + v19;
  v17 = v8 + v19 - v11;
  CGContextAddLineToPoint(context, v17, v15);
  CGContextAddCurveToPoint(context, v16 - v13, v15, v16, v15 - v13, v16, v15 - v11);
  CGContextAddLineToPoint(context, v16, y + v11);
  CGContextAddCurveToPoint(context, v16, y + v13, v16 - v13, y, v17, y);

  CGContextAddLineToPoint(context, x, y);
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withMarkupAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  v9 = [annotationCopy valueForAnnotationKey:@"/C"];
  markupType = [annotationCopy markupType];
  v11 = [annotationCopy valueForAnnotationKey:@"/QuadPoints"];
  v12 = [v11 count];
  if ([annotationCopy appearance:0])
  {
    [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
    goto LABEL_13;
  }

  if (box <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [page transformContext:CurrentContext forBox:box];
    cGColor = [v9 CGColor];
    ColorSpace = CGColorGetColorSpace(cGColor);
    if (markupType)
    {
      CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
      CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
    }

    else
    {
      CGContextSetCompositeOperation();
      CGContextSetFillColorSpace(CurrentContext, ColorSpace);
      CGContextSetFillColorWithColor(CurrentContext, cGColor);
    }

    v15 = annotationCopy;
    if (v12 < 4)
    {
LABEL_10:
      popup = [v15 popup];

      if (popup)
      {
        [PDFAnnotationDrawing drawNoteInContext:CurrentContext withParentAnnotation:annotationCopy];
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

      v15 = annotationCopy;
      v40.f64[0] = v36;
      v40.f64[1] = v38;
      v17 += 4;
      if (markupType)
      {
        if (markupType == 2)
        {
          underlinePath(CurrentContext, v43.f64, v41.f64, v40.f64);
        }

        else
        {
          if (markupType != 1)
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

      v15 = annotationCopy;
LABEL_21:
      if (!--v18)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_13:
}

+ (void)drawNoteInContext:(CGContext *)context withParentAnnotation:(id)annotation
{
  annotationCopy = annotation;
  markupStyle = [annotationCopy markupStyle];
  v7 = [PDFAnnotation PDFTextColorForMarkupStyle:markupStyle];
  cGColor = [v7 CGColor];

  v9 = [PDFAnnotation PDFTextBorderColorForMarkupStyle:markupStyle];
  cGColor2 = [v9 CGColor];

  [annotationCopy noteBounds];
  v13 = PDFKitBezierPathWithRoundedRect();
  ColorSpace = CGColorGetColorSpace(cGColor);
  CGContextSetFillColorSpace(context, ColorSpace);
  CGContextSetFillColorWithColor(context, cGColor);
  [v13 fill];
  v12 = CGColorGetColorSpace(cGColor2);
  CGContextSetStrokeColorSpace(context, v12);
  CGContextSetStrokeColorWithColor(context, cGColor2);
  [v13 stroke];
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withPopupAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  if (box <= 4)
  {
    CGContextSaveGState(context);
    [page transformContext:context forBox:box];
    [self adjustedRectForBox:box withAnnotation:annotationCopy];
    [self drawInContext:context withBounds:annotationCopy withPopupAnnotation:?];
    CGContextRestoreGState(context);
  }
}

+ (CGRect)adjustedRectForBox:(int64_t)box withAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy bounds];
  x = v6;
  y = v8;
  width = v10;
  height = v12;
  page = [annotationCopy page];

  if (page)
  {
    [page boundsForBox:box];
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

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withSquareAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [annotationCopy valueForAnnotationKey:@"/C"];
  v18 = [annotationCopy valueForAnnotationKey:@"/IC"];
  v19 = [annotationCopy valueForAnnotationKey:@"/Border"];
  if ([annotationCopy appearance:0])
  {
    [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
  }

  else if (box <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [page transformContext:CurrentContext forBox:box];
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
      cGColor = [v18 CGColor];
      ColorSpace = CGColorGetColorSpace(cGColor);
      CGContextSetFillColorSpace(CurrentContext, ColorSpace);
      CGContextSetFillColorWithColor(CurrentContext, cGColor);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      CGContextFillRect(CurrentContext, v34);
    }

    cGColor2 = [v17 CGColor];
    v29 = CGColorGetColorSpace(cGColor2);
    CGContextSetStrokeColorSpace(CurrentContext, v29);
    CGContextSetStrokeColorWithColor(CurrentContext, cGColor2);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    CGContextStrokeRect(CurrentContext, v35);
    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withStampAnnotation:(id)annotation
{
  v29 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  if (box <= 4)
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    if ([annotationCopy appearance:0])
    {
      [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
    }

    else if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
    {
      CGContextSaveGState(CurrentContext);
      [page transformContext:CurrentContext forBox:box];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor = [blackColor CGColor];

      ColorSpace = CGColorGetColorSpace(cGColor);
      if (ColorSpace)
      {
        CGContextSetStrokeColorSpace(CurrentContext, ColorSpace);
        CGContextSetStrokeColorWithColor(CurrentContext, cGColor);
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

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withTextAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  color = [annotationCopy color];
  popup = [annotationCopy popup];
  iconType = [annotationCopy iconType];
  if ([annotationCopy appearance:0])
  {
    [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
    if ([annotationCopy isSelected])
    {
      [self drawNoteAsSelected:CurrentContext rect:{v10, v12, v14, v16}];
    }
  }

  else if (box <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [page transformContext:CurrentContext forBox:box];
    if (!color)
    {
      color2 = [popup color];

      if (color2)
      {
        color = [popup color];
      }

      else
      {
        v21 = +[PDFAnnotation PDFTextColors];
        color = [v21 objectAtIndex:0];
      }
    }

    if (GetDefaultsWriteAKEnabled())
    {
      v22 = color;
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
      if ([annotationCopy isSelected])
      {
        [self drawNoteAsSelected:CurrentContext rect:{v10, v12, v14, v16}];
      }
    }

    else if (iconType <= 2)
    {
      if (iconType)
      {
        if (iconType == 1)
        {
          [self drawKeyIconInRect:color withColor:CurrentContext inContext:{v10, v12, v14, v16}];
        }

        else if (iconType == 2)
        {
          [self drawNoteIconInRect:color withColor:CurrentContext inContext:{v10, v12, v14, v16}];
        }
      }

      else
      {
        [self drawCommentIconInRect:color withColor:CurrentContext inContext:{v10, v12, v14, v16}];
      }
    }

    else if (iconType > 4)
    {
      if (iconType == 5)
      {
        [self drawParagraphIconInRect:color withColor:CurrentContext inContext:{v10, v12, v14, v16}];
      }

      else if (iconType == 6)
      {
        [self drawInsertIconInRect:color withColor:CurrentContext inContext:{v10, v12, v14, v16}];
      }
    }

    else if (iconType == 3)
    {
      [self drawHelpIconInRect:color withColor:CurrentContext inContext:{v10, v12, v14, v16}];
    }

    else
    {
      [self drawNewParagraphIconInRect:color withColor:CurrentContext inContext:{v10, v12, v14, v16}];
    }

    CGContextRestoreGState(CurrentContext);
  }
}

+ (void)drawNoteAsSelected:(CGContext *)selected rect:(CGRect)rect
{
  v10 = PDFRectInset(rect, 1.0, 1.0);
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v10.origin.x cornerRadius:{v10.origin.y, v10.size.width, v10.size.height, 1.0}];
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  cGColor = [lightGrayColor CGColor];
  ColorSpace = CGColorGetColorSpace(cGColor);
  CGContextSetStrokeColorSpace(selected, ColorSpace);
  CGContextSetStrokeColorWithColor(selected, cGColor);
  [v8 stroke];
}

+ (void)drawCommonCommentNoteIconToContext:(CGContext *)context color:(id)color rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSetFillColorWithColor(context, [color CGColor]);
  v10 = x + width * 0.1;
  v16.origin.y = y + height * 0.78;
  v16.origin.x = v10;
  v16.size.width = width * 0.8;
  v16.size.height = height * 0.11;
  CGContextFillRect(context, v16);
  v17.origin.y = y + height * 0.57;
  v17.origin.x = v10;
  v17.size.width = width * 0.8;
  v17.size.height = height * 0.11;
  CGContextFillRect(context, v17);
  v13 = v10;

  v11 = y + height * 0.36;
  v12 = width * 0.6;
  v14 = height * 0.11;
  CGContextFillRect(context, *&v13);
}

+ (void)setupDrawColor:(id)color forContext:(CGContext *)context
{
  colorCopy = color;
  if (colorCopy)
  {
    v12 = colorCopy;
    v6 = colorCopy;
    cGColor = [v12 CGColor];
    colorCopy = v12;
    if (cGColor)
    {
      ColorSpace = CGColorGetColorSpace(cGColor);
      CGContextSetFillColorSpace(context, ColorSpace);
      CGContextSetFillColorWithColor(context, cGColor);
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor2 = [blackColor CGColor];

      v11 = CGColorGetColorSpace(cGColor2);
      CGContextSetStrokeColorSpace(context, v11);
      CGContextSetStrokeColorWithColor(context, cGColor2);
      colorCopy = v12;
    }
  }
}

+ (void)drawCommentIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  v8 = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  v27.origin.x = x;
  v27.origin.y = v8;
  v27.size.width = width;
  v27.size.height = height;
  v28 = PDFRectInset(v27, 0.5, 0.5);
  v11 = v28.origin.x;
  v12 = v28.origin.y;
  v13 = v28.size.width;
  v14 = v28.size.height;
  CGContextSetLineWidth(context, 1.0);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  v24 = v12 + v14 * 0.0;
  CGContextMoveToPoint(context, v11 + v13 * 0.25, v24);
  v15 = v12 + v14 * 0.25;
  CGContextAddLineToPoint(context, v11 + v13 * 0.33, v15);
  CGContextAddLineToPoint(context, v11 + v13 * 0.1, v15);
  cp1y = v12 + v14 * 0.28;
  v20 = v12 + v14 * 0.35;
  CGContextAddCurveToPoint(context, v11 + v13 * 0.03, v15, v11 + v13 * 0.0, cp1y, v11 + v13 * 0.0, v20);
  y = v12 + v14 * 0.9;
  CGContextAddLineToPoint(context, v11 + v13 * 0.0, y);
  v16 = v12;
  v22 = v12;
  v23 = v14;
  v17 = v12 + v14 * 0.97;
  v18 = v14 + v16;
  CGContextAddCurveToPoint(context, v11 + v13 * 0.0, v17, v11 + v13 * 0.03, v18, v11 + v13 * 0.1, v18);
  CGContextAddLineToPoint(context, v11 + v13 * 0.9, v18);
  CGContextAddCurveToPoint(context, v11 + v13 * 0.97, v18, v13 + v11, v17, v13 + v11, y);
  CGContextAddLineToPoint(context, v13 + v11, v20);
  CGContextAddCurveToPoint(context, v13 + v11, cp1y, v11 + v13 * 0.97, v15, v11 + v13 * 0.9, v15);
  CGContextAddLineToPoint(context, v11 + v13 * 0.5, v15);
  CGContextAddLineToPoint(context, v11 + v13 * 0.25, v24);
  [self setupDrawColor:colorCopy forContext:context];
  CGContextDrawPath(context, kCGPathFillStroke);
  [self drawCommonCommentNoteIconToContext:context color:colorCopy rect:{v11, v22, v13, v23}];
}

+ (void)drawKeyIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = PDFRectInset(v17, 0.5, 0.5);
  v12 = v18.origin.x;
  v13 = v18.origin.y;
  v14 = v18.size.width;
  v15 = v18.size.height;
  CGContextSetLineWidth(context, 1.0);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  CGContextMoveToPoint(context, v12 + v14 * 0.0, v13 + v15 * 0.61);
  CGContextAddLineToPoint(context, v12 + v14 * 0.0, v13 + v15 * 0.75);
  CGContextAddCurveToPoint(context, v12 + v14 * 0.0, v13 + v15 * 0.9, v12 + v14 * 0.1, v15 + v13, v12 + v14 * 0.25, v15 + v13);
  CGContextAddLineToPoint(context, v12 + v14 * 0.38, v15 + v13);
  CGContextAddCurveToPoint(context, v12 + v14 * 0.48, v15 + v13, v12 + v14 * 0.55, v13 + v15 * 0.95, v12 + v14 * 0.55, v13 + v15 * 0.85);
  CGContextAddLineToPoint(context, v12 + v14 * 0.55, v13 + v15 * 0.61);
  CGContextAddLineToPoint(context, v14 + v12, v13 + v15 * 0.15);
  CGContextAddLineToPoint(context, v14 + v12, v13 + v15 * 0.0);
  CGContextAddLineToPoint(context, v12 + v14 * 0.7, v13 + v15 * 0.0);
  CGContextAddLineToPoint(context, v12 + v14 * 0.7, v13 + v15 * 0.15);
  CGContextAddLineToPoint(context, v12 + v14 * 0.55, v13 + v15 * 0.15);
  CGContextAddLineToPoint(context, v12 + v14 * 0.55, v13 + v15 * 0.3);
  CGContextAddLineToPoint(context, v12 + v14 * 0.4, v13 + v15 * 0.3);
  CGContextAddLineToPoint(context, v12 + v14 * 0.4, v13 + v15 * 0.45);
  CGContextAddLineToPoint(context, v12 + v14 * 0.15, v13 + v15 * 0.45);
  CGContextAddCurveToPoint(context, v12 + v14 * 0.05, v13 + v15 * 0.45, v12 + v14 * 0.0, v13 + v15 * 0.51, v12 + v14 * 0.0, v13 + v15 * 0.61);
  v19.origin.x = v12 + v14 * 0.12;
  v19.origin.y = v13 + v15 * 0.72;
  v19.size.width = v14 * 0.16;
  v19.size.height = v15 * 0.16;
  CGContextAddEllipseInRect(context, v19);
  [self setupDrawColor:colorCopy forContext:context];

  CGContextDrawPath(context, kCGPathEOFillStroke);
}

+ (void)drawNoteIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
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
  CGContextSetLineWidth(context, 1.0);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  v15 = v11 + v13 * 0.0;
  v16 = v12 + v14 * 0.0;
  CGContextMoveToPoint(context, v15, v16);
  CGContextAddLineToPoint(context, v15, v14 + v12);
  CGContextAddLineToPoint(context, v13 + v11, v14 + v12);
  v17 = v12 + v14 * 0.25;
  CGContextAddLineToPoint(context, v13 + v11, v17);
  CGContextAddLineToPoint(context, v11 + v13 * 0.75, v16);
  CGContextAddLineToPoint(context, v15, v16);
  [self setupDrawColor:colorCopy forContext:context];
  CGContextDrawPath(context, kCGPathFillStroke);
  CGContextMoveToPoint(context, v13 + v11, v17);
  CGContextAddLineToPoint(context, v11 + v13 * 0.75, v17);
  CGContextAddLineToPoint(context, v11 + v13 * 0.75, v16);
  CGContextStrokePath(context);
  [self drawCommonCommentNoteIconToContext:context color:colorCopy rect:{v11, v12, v13, v14}];
}

+ (void)drawHelpIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = PDFRectInset(v18, 0.5, 0.5);
  v12 = v19.origin.x;
  v13 = v19.origin.y;
  v14 = v19.size.width;
  v15 = v19.size.height;
  CGContextSetLineWidth(context, 1.0);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  CGContextMoveToPoint(context, v12 + v14 * 0.3, v13 + v15 * 0.65);
  CGContextAddCurveToPoint(context, v12 + v14 * 0.3, v13 + v15 * 0.78, v12 + v14 * 0.37, v13 + v15 * 0.85, v12 + v14 * 0.5, v13 + v15 * 0.85);
  CGContextAddCurveToPoint(context, v12 + v14 * 0.63, v13 + v15 * 0.85, v12 + v14 * 0.7, v13 + v15 * 0.78, v12 + v14 * 0.7, v13 + v15 * 0.65);
  CGContextAddCurveToPoint(context, v12 + v14 * 0.68, v13 + v15 * 0.45, v12 + v14 * 0.55, v13 + v15 * 0.5, v12 + v14 * 0.55, v13 + v15 * 0.35);
  CGContextAddLineToPoint(context, v12 + v14 * 0.45, v13 + v15 * 0.35);
  CGContextAddCurveToPoint(context, v12 + v14 * 0.44, v13 + v15 * 0.55, v12 + v14 * 0.6, v13 + v15 * 0.52, v12 + v14 * 0.6, v13 + v15 * 0.65);
  CGContextAddCurveToPoint(context, v12 + v14 * 0.6, v13 + v15 * 0.71, v12 + v14 * 0.56, v13 + v15 * 0.75, v12 + v14 * 0.5, v13 + v15 * 0.75);
  v16 = v13 + v15 * 0.65;
  CGContextAddCurveToPoint(context, v12 + v14 * 0.44, v13 + v15 * 0.75, v12 + v14 * 0.4, v13 + v15 * 0.71, v12 + v14 * 0.4, v16);
  CGContextAddLineToPoint(context, v12 + v14 * 0.3, v16);
  v20.origin.x = v12 + v14 * 0.42;
  v20.origin.y = v13 + v15 * 0.11;
  v20.size.width = v14 * 0.16;
  v20.size.height = v15 * 0.16;
  CGContextAddEllipseInRect(context, v20);
  v21.origin.x = v12 + v14 * 0.0;
  v21.origin.y = v13 + v15 * 0.0;
  v21.size.width = v14;
  v21.size.height = v15;
  CGContextAddEllipseInRect(context, v21);
  [self setupDrawColor:colorCopy forContext:context];

  CGContextDrawPath(context, kCGPathEOFillStroke);
}

+ (void)drawNewParagraphIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
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
  CGContextSetLineWidth(context, 1.0);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  CGContextMoveToPoint(context, v12 + v14 * 0.0, v13 + v15 * 0.5);
  CGContextAddLineToPoint(context, v12 + v14 * 0.5, v15 + v13);
  CGContextAddLineToPoint(context, v14 + v12, v13 + v15 * 0.5);
  CGContextAddLineToPoint(context, v12 + v14 * 0.0, v13 + v15 * 0.5);
  [self setupDrawColor:colorCopy forContext:context];

  CGContextDrawPath(context, kCGPathFillStroke);
  v16 = v13 + v15 * 0.0;
  CGContextMoveToPoint(context, v12 + v14 * 0.0, v16);
  v17 = v13 + v15 * 0.4;
  CGContextAddLineToPoint(context, v12 + v14 * 0.0, v17);
  CGContextAddLineToPoint(context, v12 + v14 * 0.4, v16);
  CGContextAddLineToPoint(context, v12 + v14 * 0.4, v17);
  CGContextMoveToPoint(context, v12 + v14 * 0.6, v16);
  CGContextAddLineToPoint(context, v12 + v14 * 0.6, v17);
  CGContextAddLineToPoint(context, v12 + v14 * 0.9, v17);
  v18 = v13 + v15 * 0.2;
  CGContextAddCurveToPoint(context, v12 + v14 * 1.1, v17, v12 + v14 * 1.1, v18, v12 + v14 * 0.9, v18);
  CGContextAddLineToPoint(context, v12 + v14 * 0.6, v18);

  CGContextStrokePath(context);
}

+ (void)drawParagraphIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
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
  CGContextSetLineWidth(context, 1.0);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  v16 = v13 + v15 * 0.0;
  CGContextMoveToPoint(context, v12 + v14 * 0.5, v16);
  CGContextAddLineToPoint(context, v12 + v14 * 0.5, v13 + v15 * 0.5);
  v17 = v12 + v14 * 0.0;
  CGContextAddCurveToPoint(context, v12 + v14 * 0.15, v13 + v15 * 0.5, v17, v13 + v15 * 0.55, v17, v13 + v15 * 0.7);
  v18 = v12 + v14 * 0.5;
  CGContextAddCurveToPoint(context, v17, v13 + v15 * 0.95, v12 + v14 * 0.15, v15 + v13, v18, v15 + v13);
  CGContextAddLineToPoint(context, v14 + v12, v15 + v13);
  CGContextAddLineToPoint(context, v14 + v12, v16);
  CGContextAddLineToPoint(context, v12 + v14 * 0.8, v16);
  v19 = v13 + v15 * 0.8;
  CGContextAddLineToPoint(context, v12 + v14 * 0.8, v19);
  v20 = v12 + v14 * 0.65;
  CGContextAddLineToPoint(context, v20, v19);
  CGContextAddLineToPoint(context, v20, v16);
  CGContextAddLineToPoint(context, v18, v16);
  [self setupDrawColor:colorCopy forContext:context];

  CGContextDrawPath(context, kCGPathFillStroke);
}

+ (void)drawInsertIconInRect:(CGRect)rect withColor:(id)color inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = PDFRectInset(v17, 0.5, 0.5);
  v12 = v18.origin.x;
  v13 = v18.origin.y;
  v14 = v18.size.width;
  v15 = v18.size.height;
  CGContextSetLineWidth(context, 1.0);
  CGContextSetLineCap(context, kCGLineCapRound);
  CGContextSetLineJoin(context, kCGLineJoinRound);
  CGContextMoveToPoint(context, v12 + v14 * 0.0, v13 + v15 * 0.0);
  CGContextAddLineToPoint(context, v12 + v14 * 0.5, v15 + v13);
  CGContextAddLineToPoint(context, v14 + v12, v13 + v15 * 0.0);
  CGContextAddLineToPoint(context, v12 + v14 * 0.0, v13 + v15 * 0.0);
  [self setupDrawColor:colorCopy forContext:context];

  CGContextDrawPath(context, kCGPathFillStroke);
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withRedactAnnotation:(id)annotation
{
  v52 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  if (box <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    page = [annotationCopy page];
    [page transformContext:CurrentContext forBox:box];
    if ([annotationCopy isTransparent])
    {
      v9 = 0.65;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = [annotationCopy valueForAnnotationKey:@"/QuadPoints"];
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
      [annotationCopy bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      if (GetDefaultsWriteHighlightRedactions())
      {
        CGContextSetLineWidth(CurrentContext, 1.0);
        blackColor = [MEMORY[0x1E69DC888] blackColor];
        [PDFAnnotationDrawing strokeRect:blackColor color:CurrentContext context:v28, v30, v32, v34];
      }

      else
      {
        v53.origin.x = v28;
        v53.origin.y = v30;
        v53.size.width = v32;
        v53.size.height = v34;
        CGContextClipToRect(CurrentContext, v53);
        blackColor2 = [MEMORY[0x1E69DC888] blackColor];
        v37 = [blackColor2 colorWithAlphaComponent:0.5];
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

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withButtonWidgetAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  interactiveBackgroundColor = [annotationCopy interactiveBackgroundColor];
  v17 = [annotationCopy valueForAnnotationKey:@"/MK"];
  buttonWidgetState = [annotationCopy buttonWidgetState];
  widgetControlType = [annotationCopy widgetControlType];
  isHighlighted = [annotationCopy isHighlighted];
  if (box > 4)
  {
    goto LABEL_35;
  }

  v21 = isHighlighted;
  if (!CurrentContext)
  {
    CurrentContext = PDFGraphicsGetCurrentContext();
    if (!CurrentContext)
    {
      goto LABEL_35;
    }
  }

  if (interactiveBackgroundColor)
  {
    CGContextSetFillColorWithColor(CurrentContext, [interactiveBackgroundColor CGColor]);
    v45.origin.x = PDFRectToCGRect(v22);
    CGContextFillRect(CurrentContext, v45);
  }

  if ((v21 & 1) == 0)
  {
    if (![annotationCopy appearance:0])
    {
      goto LABEL_24;
    }

    v30 = [annotationCopy appearance:0];
    v31 = [annotationCopy appearance:3];
    v26 = 0;
    if (widgetControlType)
    {
      if (!buttonWidgetState)
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

    if (![annotationCopy appearance:v26])
    {
      goto LABEL_24;
    }

LABEL_23:
    [self drawAppearance:v26 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext scaleProportional:{objc_msgSend(v17, "scaleProportional")}];
    goto LABEL_35;
  }

  v23 = widgetControlType != 0;
  v24 = buttonWidgetState == 0;
  v25 = v23 && v24;
  if (v23 && v24)
  {
    v26 = 5;
  }

  else
  {
    v26 = 2;
  }

  if ([annotationCopy appearance:v26])
  {
    goto LABEL_23;
  }

  v40 = [annotationCopy appearance:0];
  v27 = [annotationCopy appearance:3];
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

  if ([annotationCopy appearance:v28])
  {
    [self drawAppearance:v28 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext scaleProportional:{objc_msgSend(v17, "scaleProportional")}];
    CGContextSaveGState(CurrentContext);
    v29 = PDFColorCreateFromWhiteAlpha([page transformContext:CurrentContext forBox:box], 0.0, 0.25);
    if (widgetControlType == 1)
    {
      [self fillOval:v29 color:CurrentContext context:{v9, v11, v13, v15}];
    }

    else
    {
      [self fillRect:v29 color:CurrentContext context:{v9, v11, v13, v15}];
    }

    CGContextRestoreGState(CurrentContext);
    goto LABEL_35;
  }

LABEL_24:
  CGContextSaveGState(CurrentContext);
  [page transformContext:CurrentContext forBox:box];
  backgroundColor = [v17 backgroundColor];
  borderColor = [v17 borderColor];
  caption = [v17 caption];
  font = [annotationCopy font];
  fontColor = [annotationCopy fontColor];
  if (!caption)
  {
    caption = [annotationCopy valueForAnnotationKey:@"/Contents"];
  }

  if (widgetControlType == 2)
  {
    LOBYTE(v38) = v21;
    v37 = buttonWidgetState;
    v35 = backgroundColor;
    [self drawCheckBox:annotationCopy inContext:CurrentContext withState:v37 withBackgroundColor:backgroundColor withBorderColor:borderColor withFontColor:fontColor isHighlighted:v38];
  }

  else if (widgetControlType == 1)
  {
    LOBYTE(v38) = v21;
    v36 = buttonWidgetState;
    v35 = backgroundColor;
    [self drawRadioButton:annotationCopy inContext:CurrentContext withState:v36 withBackgroundColor:backgroundColor withBorderColor:borderColor withFontColor:fontColor isHighlighted:v38];
  }

  else
  {
    v35 = backgroundColor;
    if (!widgetControlType)
    {
      LOBYTE(v38) = v21;
      [self drawPushButton:annotationCopy inContext:CurrentContext withBackgroundColor:backgroundColor withCaption:caption withFont:font withFontColor:fontColor isHighlighted:v38];
    }
  }

  CGContextRestoreGState(CurrentContext);

LABEL_35:
}

+ (void)drawPushButton:(id)button inContext:(CGContext *)context withBackgroundColor:(id)color withCaption:(id)caption withFont:(id)font withFontColor:(id)fontColor isHighlighted:(BOOL)highlighted
{
  buttonCopy = button;
  colorCopy = color;
  captionCopy = caption;
  fontCopy = font;
  fontColorCopy = fontColor;
  [buttonCopy bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  page = [buttonCopy page];
  rotation = [page rotation];

  if (colorCopy)
  {
    [PDFAnnotationDrawing fillRect:colorCopy color:context context:v19, v21, v23, v25];
  }

  if (captionCopy)
  {
    [fontCopy pointSize];
    v29 = (v25 - v28) * -0.5;
    if (!fontCopy)
    {
      v30 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      fontCopy = [v30 systemFontOfSize:?];
    }

    v31 = v25 + v29;
    if (!fontColorCopy)
    {
      fontColorCopy = [MEMORY[0x1E69DC888] blackColor];
    }

    [PDFAnnotationDrawing renderString:captionCopy forRect:fontCopy font:fontColorCopy color:1 alignment:rotation rotation:0 breaks:v19 context:v21 withAnnotation:v23, v31, context, buttonCopy];
  }

  v32 = [buttonCopy valueForAnnotationKey:@"/C"];
  v33 = v32;
  if (v32)
  {
    v32 = [PDFAnnotationDrawing strokeRect:v32 color:context context:v19, v21, v23, v25];
  }

  if (highlighted)
  {
    v34 = PDFColorCreateFromWhiteAlpha(v32, 0.0, 0.25);
    [PDFAnnotationDrawing fillRect:v34 color:context context:v19, v21, v23, v25];
  }
}

+ (void)drawRadioButton:(id)button inContext:(CGContext *)context withState:(int64_t)state withBackgroundColor:(id)color withBorderColor:(id)borderColor withFontColor:(id)fontColor isHighlighted:(BOOL)highlighted
{
  colorCopy = color;
  borderColorCopy = borderColor;
  fontColorCopy = fontColor;
  buttonCopy = button;
  [buttonCopy bounds];
  x = v17;
  y = v19;
  width = v21;
  v24 = v23;
  v25 = [buttonCopy valueForAnnotationKey:@"/Border"];

  CGContextSaveGState(context);
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
  CGContextSetLineWidth(context, *&v26);
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

  if (colorCopy)
  {
    [PDFAnnotationDrawing fillOval:colorCopy color:context context:x, y, width, width];
  }

  if (!borderColorCopy)
  {
    borderColorCopy = [MEMORY[0x1E69DC888] blackColor];
  }

  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = width;
  v37 = PDFRectInset(v36, v27 * 0.5, v27 * 0.5);
  v30 = [PDFAnnotationDrawing strokeOval:borderColorCopy color:context context:v37.origin.x, v37.origin.y, v37.size.width, v37.size.height];
  if (state != 1)
  {
    height = width;
    if (!highlighted)
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
  blackColor = fontColorCopy;
  if (!blackColor)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  [PDFAnnotationDrawing fillOval:blackColor color:context context:x, y, width, height];

  if (highlighted)
  {
LABEL_19:
    v33 = PDFColorCreateFromWhiteAlpha(v30, 0.0, 0.25);
    [PDFAnnotationDrawing fillOval:v33 color:context context:x, y, width, height];
  }

LABEL_20:
  CGContextRestoreGState(context);
}

+ (void)drawCheckBox:(id)box inContext:(CGContext *)context withState:(int64_t)state withBackgroundColor:(id)color withBorderColor:(id)borderColor withFontColor:(id)fontColor isHighlighted:(BOOL)highlighted
{
  colorCopy = color;
  borderColorCopy = borderColor;
  fontColorCopy = fontColor;
  [box bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  CGContextSaveGState(context);
  v24 = colorCopy;
  if (colorCopy)
  {
    v24 = [PDFAnnotationDrawing fillRect:colorCopy color:context context:v17, v19, v21, v23];
  }

  if (!fontColorCopy)
  {
    fontColorCopy = PDFColorCreateFromWhiteAlpha(v24, 0.0, 1.0);
  }

  cGColor = [fontColorCopy CGColor];
  ColorSpace = CGColorGetColorSpace(cGColor);
  CGContextSetStrokeColorSpace(context, ColorSpace);
  CGContextSetStrokeColorWithColor(context, cGColor);
  if (state == 1)
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
    CGContextBeginPath(context);
    v35 = v17 + v32;
    v36 = v34;
    v37 = v19 + v33;
    CGContextMoveToPoint(context, v35 + v36 * 0.15, v37 + v36 * 0.45);
    CGContextAddLineToPoint(context, v35 + v36 * 0.35, v37 + v36 * 0.25);
    CGContextAddLineToPoint(context, v35 + v36 * 0.85, v37 + v36 * 0.75);
    CGContextSetLineWidth(context, 1.5);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
  if (!borderColorCopy)
  {
    borderColorCopy = [MEMORY[0x1E69DC888] blackColor];
  }

  v38 = [PDFAnnotationDrawing strokeRect:borderColorCopy color:context context:v17, v19, v21, v23];
  if (highlighted)
  {
    v39 = PDFColorCreateFromWhiteAlpha(v38, 0.0, 0.25);
    [PDFAnnotationDrawing fillRect:v39 color:context context:v17, v19, v21, v23];
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withChoiceWidgetAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  interactiveBackgroundColor = [annotationCopy interactiveBackgroundColor];
  widgetStringValue = [annotationCopy widgetStringValue];
  widgetDefaultStringValue = [annotationCopy widgetDefaultStringValue];
  if (interactiveBackgroundColor)
  {
    [PDFAnnotationDrawing fillRect:interactiveBackgroundColor color:CurrentContext context:v10, v12, v14, v16];
  }

  if ([annotationCopy appearance:0] && widgetDefaultStringValue && objc_msgSend(widgetDefaultStringValue, "isEqualToString:", widgetStringValue))
  {
    [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext];
    goto LABEL_22;
  }

  if (box <= 4 && (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0))
  {
    CGContextSaveGState(CurrentContext);
    [page transformContext:CurrentContext forBox:box];
    v20 = [annotationCopy valueForAnnotationKey:@"/MK"];
    backgroundColor = [v20 backgroundColor];
    isListChoice = [annotationCopy isListChoice];
    choices = [annotationCopy choices];
    font = [annotationCopy font];
    fontColor = [annotationCopy fontColor];
    v23 = [annotationCopy valueForAnnotationKey:@"/Border"];
    if (backgroundColor)
    {
      [PDFAnnotationDrawing fillRect:backgroundColor color:CurrentContext context:v10, v12, v14, v16];
    }

    if (isListChoice)
    {
      [self drawListBox:CurrentContext inContext:annotationCopy withAnnotation:choices withOptions:widgetStringValue withStringValue:font withFont:fontColor withFontColor:{v10, v12, v14, v16}];
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      [self drawComboBox:CurrentContext inContext:annotationCopy withAnnotation:widgetStringValue withStringValue:font withFont:fontColor withFontColor:{v10, v12, v14, v16}];
      if (!v23)
      {
LABEL_19:
        if ((isListChoice & 1) == 0)
        {
          [self drawDisclosureBox:CurrentContext inContext:{v10, v12, v14, v16}];
        }

        CGContextRestoreGState(CurrentContext);

        goto LABEL_22;
      }
    }

    v25 = v20;
    borderColor = [v20 borderColor];
    if (!borderColor)
    {
      borderColor = [MEMORY[0x1E69DC888] blackColor];
    }

    CGContextSetStrokeColorWithColor(CurrentContext, [borderColor CGColor]);
    [v23 drawInRect:CurrentContext inContext:{v10, v12, v14, v16}];

    v20 = v25;
    goto LABEL_19;
  }

LABEL_22:
}

+ (void)drawListBox:(CGRect)box inContext:(CGContext *)context withAnnotation:(id)annotation withOptions:(id)options withStringValue:(id)value withFont:(id)font withFontColor:(id)color
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  annotationCopy = annotation;
  optionsCopy = options;
  valueCopy = value;
  fontCopy = font;
  colorCopy = color;
  if (optionsCopy)
  {
    v22 = [optionsCopy count];
    if (v22 >= 1)
    {
      v23 = v22;
      v24 = x + 1.0;
      v25 = width + -1.0;
      [fontCopy pointSize];
      v26 = 0;
      v28 = v27 + 2.0;
      v29 = y + height - (v27 + 2.0);
      do
      {
        v30 = [optionsCopy objectAtIndex:v26];
        if ([valueCopy isEqualToString:v30])
        {
          groupTableViewBackgroundColor = [MEMORY[0x1E69DC888] groupTableViewBackgroundColor];
          [PDFAnnotationDrawing fillRect:groupTableViewBackgroundColor color:context context:v24, v29, v25, v28 + -0.1];

          v32 = 0x1E69DC000;
          p_vtable = (&OBJC_METACLASS___PDFAKPageOverlayViewProvider + 24);
        }

        else
        {
          p_vtable = &OBJC_METACLASS___PDFAKPageOverlayViewProvider.vtable;
          v32 = 0x1E69DC000uLL;
        }

        [p_vtable + 332 renderString:v30 forRect:fontCopy font:colorCopy color:0 alignment:0 rotation:0 breaks:v24 context:v29 withAnnotation:{v25, v28, context, annotationCopy}];
        CGContextSaveGState(context);
        grayColor = [*(v32 + 2184) grayColor];
        cGColor = [grayColor CGColor];

        ColorSpace = CGColorGetColorSpace(cGColor);
        CGContextSetStrokeColorSpace(context, ColorSpace);
        CGContextSetStrokeColorWithColor(context, cGColor);
        CGContextSetLineWidth(context, 0.2);
        CGContextMoveToPoint(context, v24, v29);
        CGContextAddLineToPoint(context, v25 + v24, v29);
        CGContextStrokePath(context);
        CGContextRestoreGState(context);
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

+ (void)drawComboBox:(CGRect)box inContext:(CGContext *)context withAnnotation:(id)annotation withStringValue:(id)value withFont:(id)font withFontColor:(id)color
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  colorCopy = color;
  fontCopy = font;
  valueCopy = value;
  annotationCopy = annotation;
  [fontCopy pointSize];
  v20 = ceil((height - v19) * 0.5);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = PDFRectInset(v23, 2.0, v20);
  [PDFAnnotationDrawing renderString:valueCopy forRect:fontCopy font:colorCopy color:0 alignment:0 rotation:0 breaks:v24.origin.x context:v24.origin.y - (height - v24.size.height) withAnnotation:v24.size.width, v24.size.height + height - v24.size.height, context, annotationCopy];
}

+ (void)drawDisclosureBox:(CGRect)box inContext:(CGContext *)context
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  CGContextSaveGState(context);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v10 = DeviceRGB;
    CGContextSetFillColorSpace(context, DeviceRGB);
    v11 = PDFRectGetMaxX(x, y, width) + -8.0;
    v12 = PDFRectGetMidY(x, y, width, height) + -2.5;
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    CGContextSetFillColorWithColor(context, [grayColor CGColor]);

    v17.origin.x = v11 + -4.5;
    v17.origin.y = v12 + -2.0;
    v17.size.width = 9.0;
    v17.size.height = 9.0;
    CGContextFillEllipseInRect(context, v17);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    CGContextSetFillColorWithColor(context, [whiteColor CGColor]);

    CGContextBeginPath(context);
    CGContextMoveToPoint(context, v11, v12);
    v15 = v12 + 4.0;
    CGContextAddLineToPoint(context, v11 + -3.0, v15);
    CGContextAddLineToPoint(context, v11 + 3.0, v15);
    CGContextClosePath(context);
    CGContextFillPath(context);
    CGContextRestoreGState(context);

    CGColorSpaceRelease(v10);
  }

  else
  {

    CGContextRestoreGState(context);
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withTextWidgetAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  if (box <= 4)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
    {
      Property = CGContextGetProperty();
      v18 = *MEMORY[0x1E695E4D0];
      v19 = [annotationCopy appearance:0];
      if (v19)
      {
        [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext scaleProportional:1 suppressTextRendering:1];
      }

      CGContextSaveGState(CurrentContext);
      [page transformContext:CurrentContext forBox:box];
      UIGraphicsPushContext(CurrentContext);
      [page boundsForBox:box];
      CGContextTranslateCTM(CurrentContext, 0.0, v20 + v14 - (v20 - v14 - v16));
      CGContextScaleCTM(CurrentContext, 1.0, -1.0);
      if (Property == v18)
      {
        interactiveBackgroundColor = [annotationCopy interactiveBackgroundColor];
      }

      else
      {
        interactiveBackgroundColor = 0;
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
        if (interactiveBackgroundColor)
        {
          [PDFAnnotationDrawing fillRect:interactiveBackgroundColor color:CurrentContext context:v47.origin.x, v47.origin.y, v47.size.width, v47.size.height];
        }
      }

      else
      {
        backgroundColor = [annotationCopy backgroundColor];
        v27 = backgroundColor;
        v28 = interactiveBackgroundColor;
        if (interactiveBackgroundColor || (v28 = backgroundColor) != 0)
        {
          [PDFAnnotationDrawing fillRect:v28 color:CurrentContext context:x, y, width, height];
        }

        v29 = [annotationCopy valueForAnnotationKey:@"/MK"];
        borderColor = [v29 borderColor];

        if (borderColor)
        {
          CGContextSetStrokeColorWithColor(CurrentContext, [borderColor CGColor]);
          v31 = objc_alloc_init(PDFBorder);
          [(PDFBorder *)v31 drawInRect:CurrentContext inContext:v13, v14, v15, v16];
        }
      }

      control = [annotationCopy control];

      if (!control)
      {
        createAttributedStringForTextWidget = [annotationCopy createAttributedStringForTextWidget];
        if ([createAttributedStringForTextWidget length])
        {
          +[PDFAnnotationDrawing textInset];
          v35 = v34;
          +[PDFAnnotationDrawing textInset];
          v37 = v36;
          if (([annotationCopy isMultiline] & 1) == 0)
          {
            [createAttributedStringForTextWidget boundingRectWithSize:1 options:0 context:{v15, v16}];
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
          [createAttributedStringForTextWidget drawWithRect:1 options:0 context:{v39, v43 - CGRectGetHeight(v50), v41, v42}];
        }
      }

      UIGraphicsPopContext();
      CGContextRestoreGState(CurrentContext);
    }
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)CurrentContext withSignatureWidgetAnnotation:(id)annotation
{
  annotationCopy = annotation;
  page = [annotationCopy page];
  [annotationCopy bounds];
  if (box <= 4)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    if (CurrentContext || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
    {
      Property = CGContextGetProperty();
      v18 = *MEMORY[0x1E695E4D0];
      isAppearanceStreamEmpty = [annotationCopy isAppearanceStreamEmpty];
      if ((isAppearanceStreamEmpty & 1) == 0)
      {
        [self drawAppearance:0 ofAnnotation:annotationCopy withBox:box inContext:CurrentContext scaleProportional:1 suppressTextRendering:1];
      }

      CGContextSaveGState(CurrentContext);
      [page transformContext:CurrentContext forBox:box];
      UIGraphicsPushContext(CurrentContext);
      if (Property == v18)
      {
        interactiveBackgroundColor = [annotationCopy interactiveBackgroundColor];
      }

      else
      {
        interactiveBackgroundColor = 0;
      }

      v23.origin.x = v13;
      v23.origin.y = v14;
      v23.size.width = v15;
      v23.size.height = v16;
      v24 = PDFRectInset(v23, 1.0, 1.0);
      if (isAppearanceStreamEmpty)
      {
        [PDFAnnotationDrawing fillRect:interactiveBackgroundColor color:CurrentContext context:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
      }

      UIGraphicsPopContext();
      CGContextRestoreGState(CurrentContext);
    }
  }
}

+ (id)createLigtherColor:(CGColor *)color withIntensity:(double)intensity
{
  if (color && CGColorGetNumberOfComponents(color) == 4 && (ColorSpace = CGColorGetColorSpace(color), CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB))
  {
    Components = CGColorGetComponents(color);
    v8 = fmax(*Components - intensity, 0.0);
    v9 = fmax(Components[1] - intensity, 0.0);
    v10 = fmax(Components[2] - intensity, 0.0);
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

+ (id)stringByTrimmingTrailingCharactersInSet:(id)set forString:(id)string
{
  stringCopy = string;
  invertedSet = [set invertedSet];
  v7 = [stringCopy rangeOfCharacterFromSet:invertedSet options:4];
  v9 = v8;

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = &stru_1F416DF70;
  }

  else
  {
    v10 = [stringCopy substringToIndex:v7 + v9];
  }

  return v10;
}

+ (BOOL)renderString:(id)string forRect:(CGRect)rect font:(id)font color:(id)color alignment:(int64_t)alignment rotation:(int)rotation breaks:(BOOL)breaks context:(CGContext *)c withAnnotation:(id)self1
{
  breaksCopy = breaks;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v70[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  fontCopy = font;
  colorCopy = color;
  annotationCopy = annotation;
  if (!stringCopy)
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
  v25 = [annotationCopy gcCreateAttributesForFont:fontCopy color:colorCopy];
  if (!v25)
  {
    v39 = height >= 0.0;
    CGContextRestoreGState(c);
    goto LABEL_45;
  }

  v26 = v25;
  if (alignment == 2)
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v28 = [self stringByTrimmingTrailingCharactersInSet:whitespaceCharacterSet forString:stringCopy];

    stringCopy = v28;
  }

  v64 = annotationCopy;
  if ([annotationCopy shouldComb])
  {
    v29 = [annotationCopy valueForAnnotationKey:@"/MaxLen"];
    integerValue = [v29 integerValue];

    if (!fontCopy)
    {
      v31 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      fontCopy = [v31 systemFontOfSize:?];
    }

    v69 = *MEMORY[0x1E69DB648];
    v70[0] = fontCopy;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    [(__CFString *)stringCopy sizeWithAttributes:v32];
    v34 = v33;

    valuePtr.a = (width + -v34 / [(__CFString *)stringCopy length]* integerValue) / integerValue;
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
  v40 = CFAttributedStringCreate(v35, stringCopy, v26);
  v41 = v40;
  if (v40)
  {
    v42 = CTTypesetterCreateWithAttributedString(v40);
    if (v42)
    {
      v43 = v42;
      Length = CFAttributedStringGetLength(v41);
      v45 = 0.0;
      v61 = fontCopy;
      v62 = colorCopy;
      if (rotation > 179)
      {
        if (rotation != 180)
        {
          if (rotation != 270)
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
        if (rotation)
        {
          if (rotation != 90)
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
        if (breaksCopy)
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
          if (alignment != 2)
          {
            v59 = v58;
          }

          if (!alignment)
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
      fontCopy = v61;
      colorCopy = v62;
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

  annotationCopy = v64;
LABEL_45:

  return v39;
}

+ (void)fillRect:(CGRect)rect color:(id)color context:(CGContext *)context
{
  if (color)
  {
    colorCopy = color;
    CGContextSaveGState(context);
    cGColor = [colorCopy CGColor];

    ColorSpace = CGColorGetColorSpace(cGColor);
    CGContextSetFillColorSpace(context, ColorSpace);
    CGContextSetFillColorWithColor(context, cGColor);
    v11.origin.x = PDFRectToCGRect(v9);
    CGContextFillRect(context, v11);

    CGContextRestoreGState(context);
  }
}

+ (void)strokeRect:(CGRect)rect color:(id)color context:(CGContext *)context
{
  if (color)
  {
    colorCopy = color;
    CGContextSaveGState(context);
    cGColor = [colorCopy CGColor];

    ColorSpace = CGColorGetColorSpace(cGColor);
    CGContextSetStrokeColorSpace(context, ColorSpace);
    CGContextSetStrokeColorWithColor(context, cGColor);
    v11.origin.x = PDFRectToCGRect(v9);
    CGContextStrokeRect(context, v11);

    CGContextRestoreGState(context);
  }
}

+ (void)fillOval:(CGRect)oval color:(id)color context:(CGContext *)context
{
  if (color)
  {
    colorCopy = color;
    CGContextSaveGState(context);
    cGColor = [colorCopy CGColor];

    ColorSpace = CGColorGetColorSpace(cGColor);
    CGContextSetFillColorSpace(context, ColorSpace);
    CGContextSetFillColorWithColor(context, cGColor);
    v11.origin.x = PDFRectToCGRect(v9);
    CGContextFillEllipseInRect(context, v11);

    CGContextRestoreGState(context);
  }
}

+ (void)strokeOval:(CGRect)oval color:(id)color context:(CGContext *)context
{
  if (color)
  {
    colorCopy = color;
    CGContextSaveGState(context);
    cGColor = [colorCopy CGColor];

    ColorSpace = CGColorGetColorSpace(cGColor);
    CGContextSetStrokeColorSpace(context, ColorSpace);
    CGContextSetStrokeColorWithColor(context, cGColor);
    v11.origin.x = PDFRectToCGRect(v9);
    CGContextStrokeEllipseInRect(context, v11);

    CGContextRestoreGState(context);
  }
}

+ (void)drawWithBox:(int64_t)box inContext:(CGContext *)context withUnknownAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v9 = annotationCopy;
  if (box <= 4)
  {
    v10 = annotationCopy;
    annotationCopy = [annotationCopy appearance:0];
    v9 = v10;
    if (annotationCopy)
    {
      annotationCopy = [self drawAppearance:0 ofAnnotation:v10 withBox:box inContext:context];
      v9 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](annotationCopy, v9);
}

@end