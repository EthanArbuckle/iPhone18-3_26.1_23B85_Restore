@interface AEHighlightedTextLabel
+ (CGSize)sizeForAnnotation:(id)annotation font:(id)font width:(double)width numberOfLines:(unint64_t)lines useSelectedText:(BOOL)text;
+ (__CTParagraphStyle)createParagraphStyleForFont:(__CTFont *)font;
+ (double)adjustedLeadingForFont:(__CTFont *)font;
+ (void)collapseNewlinesForMutableAttributedString:(id)string;
- (AEHighlightedTextLabel)initWithFrame:(CGRect)frame generateHighlight:(BOOL)highlight generateHighlightAsynchronously:(BOOL)asynchronously;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSAttributedString)annotationAttributedString;
- (UIFont)font;
- (void)_updateBackgroundColors;
- (void)clearHighlights;
- (void)drawLabelInRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)p_renderHighlightLayer:(id)layer inContext:(CGContext *)context flippingOriginWithY:(double)y;
- (void)setAnnotation:(id)annotation;
- (void)setAnnotationBlendMode:(int)mode;
- (void)setBackgroundColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlightedTextColor:(id)color;
- (void)setPageTheme:(int64_t)theme;
- (void)setTextColor:(id)color;
@end

@implementation AEHighlightedTextLabel

- (AEHighlightedTextLabel)initWithFrame:(CGRect)frame generateHighlight:(BOOL)highlight generateHighlightAsynchronously:(BOOL)asynchronously
{
  v17.receiver = self;
  v17.super_class = AEHighlightedTextLabel;
  v7 = [(AEHighlightedTextLabel *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v7)
  {
    v8 = objc_alloc_init(AEHighlightRenderingController);
    renderingController = v7->_renderingController;
    v7->_renderingController = v8;

    [(AEHighlightRenderingController *)v7->_renderingController setCanUseFilters:1];
    v7->_numberOfLines = 2;
    v7->_generateHighlight = highlight;
    v7->_generateHighlightAsynchronously = asynchronously;
    v7->_annotationBlendMode = 0;
    v7->_highlightedAnnotationBlendMode = 3;
    [(AEHighlightedTextLabel *)v7 setContentMode:3];
    [(AEHighlightedTextLabel *)v7 setUserInteractionEnabled:0];
    v7->_fullLineWidth = 1.79769313e308;
    v10 = +[UIColor blackColor];
    textColor = v7->_textColor;
    v7->_textColor = v10;

    v12 = [AEHighlightedTextLabelTextView alloc];
    [(AEHighlightedTextLabel *)v7 bounds];
    v13 = [(AEHighlightedTextLabelTextView *)v12 initWithFrame:?];
    textView = v7->_textView;
    v7->_textView = v13;

    [(AEHighlightedTextLabelTextView *)v7->_textView setOpaque:[(AEHighlightedTextLabel *)v7 isOpaque]];
    [(AEHighlightedTextLabelTextView *)v7->_textView setDelegate:v7];
    [(AEHighlightedTextLabel *)v7 addSubview:v7->_textView];
    v15 = +[UIColor clearColor];
    [(AEHighlightedTextLabelTextView *)v7->_textView setBackgroundColor:v15];
    [(AEHighlightedTextLabel *)v7 setBackgroundColor:v15];
    [(AEHighlightedTextLabel *)v7 setUseSelectedText:0];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = objc_opt_class();
  annotation = [(AEHighlightedTextLabel *)self annotation];
  font = [(AEHighlightedTextLabel *)self font];
  [v5 sizeForAnnotation:annotation font:font width:-[AEHighlightedTextLabel numberOfLines](self numberOfLines:"numberOfLines") useSelectedText:{-[AEHighlightedTextLabel useSelectedText](self, "useSelectedText"), width}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AEHighlightedTextLabel;
  [(AEHighlightedTextLabel *)&v3 layoutSubviews];
  [(AEHighlightedTextLabel *)self bounds];
  [(AEHighlightedTextLabelTextView *)self->_textView setFrame:?];
}

+ (double)adjustedLeadingForFont:(__CTFont *)font
{
  Ascent = CTFontGetAscent(font);
  Descent = CTFontGetDescent(font);
  result = CTFontGetLeading(font);
  if (result < (Ascent + Descent) * 0.2)
  {
    return (Ascent + Descent) * 0.2;
  }

  return result;
}

+ (__CTParagraphStyle)createParagraphStyleForFont:(__CTFont *)font
{
  Ascent = CTFontGetAscent(font);
  Descent = CTFontGetDescent(font);
  [self adjustedLeadingForFont:font];
  v10 = v7;
  v9 = Ascent + Descent + v7;
  settings.spec = kCTParagraphStyleSpecifierMinimumLineSpacing;
  settings.valueSize = 8;
  settings.value = &v10;
  v12 = 14;
  v13 = 8;
  v14 = &v10;
  v15 = 8;
  v16 = 8;
  v17 = &v9;
  return CTParagraphStyleCreate(&settings, 3uLL);
}

- (void)drawLabelInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = *&CGAffineTransformIdentity.c;
  *&v145.a = *&CGAffineTransformIdentity.a;
  *&v145.c = v9;
  *&v145.tx = *&CGAffineTransformIdentity.tx;
  CGContextSetTextMatrix(CurrentContext, &v145);
  memset(&v145, 0, sizeof(v145));
  v153.origin.x = x;
  v153.origin.y = y;
  v153.size.width = width;
  v153.size.height = height;
  v10 = CGRectGetHeight(v153);
  CGAffineTransformMakeTranslation(&v145, 0.0, v10);
  v143 = v145;
  CGAffineTransformScale(&transform, &v143, 1.0, -1.0);
  v145 = transform;
  CGContextConcatCTM(CurrentContext, &transform);
  annotation = [(AEHighlightedTextLabel *)self annotation];
  renderingController = [(AEHighlightedTextLabel *)self renderingController];
  annotationUuid = [annotation annotationUuid];
  [renderingController removeHighlightForData:annotationUuid];

  if ([(AEHighlightedTextLabel *)self useSelectedText])
  {
    [AEAnnotation annotatedAttributedStringForAnnotation:annotation];
  }

  else
  {
    +[AEAnnotation annotatedAttributedStringForAnnotation:withPossibleLength:](AEAnnotation, "annotatedAttributedStringForAnnotation:withPossibleLength:", annotation, -[AEHighlightedTextLabel numberOfLines](self, "numberOfLines") * [objc_opt_class() possibleLineLengthForAnnotation:annotation size:{CGSizeZero.width, CGSizeZero.height}]);
  }
  v14 = ;
  v15 = [v14 mutableCopy];

  if (v15)
  {
    font = [(AEHighlightedTextLabel *)self font];
    fontName = [font fontName];
    font2 = [(AEHighlightedTextLabel *)self font];
    [font2 pointSize];
    v20 = CTFontCreateWithName(fontName, v19, 0);

    v21 = [objc_opt_class() createParagraphStyleForFont:v20];
    if (v21)
    {
      v22 = v21;
      [v15 addAttribute:kCTParagraphStyleAttributeName value:v21 range:{0, objc_msgSend(v15, "length")}];
      CFRelease(v22);
    }

    v105 = objc_alloc_init(NSMutableArray);
    if (self->_highlighted)
    {
      v23 = &OBJC_IVAR___AEHighlightedTextLabel__highlightedTextColor;
    }

    else
    {
      v23 = &OBJC_IVAR___AEHighlightedTextLabel__textColor;
    }

    v24 = *(&self->super.super.super.isa + *v23);
    if (!v24)
    {
      v24 = self->_textColor;
    }

    v102 = v24;
    v25 = [[NSDictionary alloc] initWithObjectsAndKeys:{v20, kCTFontAttributeName, -[UIColor CGColor](v24, "CGColor"), kCTForegroundColorAttributeName, 0}];
    [v15 addAttributes:v25 range:{0, objc_msgSend(v15, "length")}];
    [objc_opt_class() collapseNewlinesForMutableAttributedString:v15];
    v26 = CTFramesetterCreateWithAttributedString(v15);
    height = [UIBezierPath bezierPathWithRect:x, y, width, height];
    cGPath = [height CGPath];
    cf = v26;
    v149.location = 0;
    v149.length = 0;
    v29 = CTFramesetterCreateFrame(v26, v149, cGPath, 0);

    frame = v29;
    v30 = [(__CFArray *)CTFrameGetLines(v29) mutableCopy];
    v100 = v20;
    v101 = annotation;
    v97.size.width = width;
    v97.size.height = height;
    v97.origin.x = x;
    v97.origin.y = y;
    v103 = v15;
    if ([v30 count])
    {
      selfCopy = self;
      v32 = CurrentContext;
      lastObject = [v30 lastObject];
      v34 = [v15 attributesAtIndex:0 effectiveRange:0];

      v35 = [v34 mutableCopy];
      [v35 setValue:0 forKey:@"kAEAnnotationStyleAttributeName"];
      v36 = IMCommonCoreBundle();
      v37 = [v36 localizedStringForKey:@"\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
      v38 = CFAttributedStringCreate(0, v37, v35);

      v39 = CTLineCreateWithAttributedString(v38);
      if (v38)
      {
        CFRelease(v38);
      }

      location = CTLineGetStringRange(lastObject).location;
      v152.length = [v103 length] - location;
      v152.location = location;
      v41 = CFAttributedStringCreateWithSubstring(0, v103, v152);
      v42 = CTLineCreateWithAttributedString(v41);
      v154.origin.x = x;
      v154.origin.y = y;
      v154.size.width = width;
      v154.size.height = height;
      v43 = CGRectGetWidth(v154);
      TruncatedLine = CTLineCreateTruncatedLine(v42, v43, kCTLineTruncationEnd, v39);
      if (TruncatedLine)
      {
        v45 = TruncatedLine;
        [v30 replaceObjectAtIndex:objc_msgSend(v30 withObject:{"count") - 1, TruncatedLine}];
        CFRelease(v45);
      }

      if (v42)
      {
        CFRelease(v42);
      }

      CurrentContext = v32;
      self = selfCopy;
      if (v41)
      {
        CFRelease(v41);
      }

      if (v39)
      {
        CFRelease(v39);
      }

      v98 = v34;
    }

    else
    {
      v98 = v25;
    }

    v46 = malloc_type_malloc(16 * [v30 count], 0x1000040451B5BE8uLL);
    v150.location = 0;
    v150.length = 0;
    CTFrameGetLineOrigins(frame, v150, v46);
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    obj = v30;
    v110 = v46;
    v111 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
    if (v111)
    {
      LODWORD(v47) = 0;
      v107 = *v140;
      v114 = CGRectNull.origin.y;
      v112 = CGRectNull.size.height;
      v113 = CGRectNull.size.width;
      selfCopy2 = self;
      context = CurrentContext;
      do
      {
        v48 = 0;
        v47 = v47;
        do
        {
          if (*v140 != v107)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v139 + 1) + 8 * v48);
          v115 = v47;
          p_x = &v46[v47].x;
          CGContextSetTextPosition(CurrentContext, *p_x, p_x[1]);
          v143.a = 0.0;
          leading = 0.0;
          descent = 0.0;
          TypographicBounds = CTLineGetTypographicBounds(v49, &v143.a, &descent, &leading);
          v51 = p_x[1] - descent;
          v52 = floorf(v51);
          [(AEHighlightedTextLabel *)self bounds];
          v53 = CGRectGetWidth(v155);
          v54 = ceilf(v53);
          v55 = v143.a + descent;
          v119 = v54;
          v120 = ceilf(v55);
          v56 = CTLineGetGlyphRuns(v49);
          v133 = 0u;
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v57 = [v56 countByEnumeratingWithState:&v133 objects:v147 count:16];
          v59 = v112;
          v58 = v113;
          v60 = v114;
          v61 = CGRectNull.origin.x;
          if (v57)
          {
            v62 = v57;
            v63 = *v134;
            v59 = v112;
            v58 = v113;
            v60 = v114;
            v61 = CGRectNull.origin.x;
            v117 = v52;
            do
            {
              for (i = 0; i != v62; i = i + 1)
              {
                if (*v134 != v63)
                {
                  objc_enumerationMutation(v56);
                }

                v65 = *(*(&v133 + 1) + 8 * i);
                v66 = CTRunGetAttributes(v65);
                v67 = [v66 objectForKey:@"kAEAnnotationStyleAttributeName"];

                if (v67)
                {
                  Status = CTRunGetStatus(v65);
                  if ([v56 count] == &dword_0 + 1)
                  {
                    v58 = CTLineGetTypographicBounds(v49, 0, 0, 0);
                    v61 = 0.0;
                    if (Status)
                    {
                      v160.origin.x = 0.0;
                      v60 = v52;
                      v160.origin.y = v52;
                      v160.size.width = v119;
                      v59 = v120;
                      v160.size.height = v120;
                      MaxX = CGRectGetMaxX(v160);
                      v161.origin.x = 0.0;
                      v161.origin.y = v52;
                      v161.size.width = v58;
                      v161.size.height = v120;
                      v61 = MaxX - CGRectGetWidth(v161);
                    }

                    else
                    {
                      v59 = v120;
                      v60 = v52;
                    }
                  }

                  else
                  {
                    v118 = v58;
                    v69 = CTRunGetStringRange(v65).location;
                    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v49, v69, 0);
                    v151.location = 0;
                    v151.length = 0;
                    v71 = CTRunGetTypographicBounds(v65, v151, 0, 0, 0);
                    if (Status)
                    {
                      v156.origin.x = 0.0;
                      v156.origin.y = v52;
                      v156.size.width = v119;
                      v156.size.height = v120;
                      OffsetForStringIndex = CGRectGetMaxX(v156) - (TypographicBounds - OffsetForStringIndex + v71);
                    }

                    v157.origin.x = 0.0;
                    v157.origin.y = v52;
                    v157.size.width = v119;
                    v157.size.height = v120;
                    v72 = CGRectGetHeight(v157);
                    v158.origin.x = 0.0;
                    v158.origin.y = v52;
                    v158.size.width = v119;
                    v158.size.height = v120;
                    MinY = CGRectGetMinY(v158);
                    v159.origin.x = v61;
                    v159.origin.y = v60;
                    v159.size.width = v118;
                    v159.size.height = v59;
                    if (CGRectIsNull(v159))
                    {
                      v59 = v72;
                      v58 = v71;
                      v60 = MinY;
                      v61 = OffsetForStringIndex;
                    }

                    else
                    {
                      v162.origin.x = v61;
                      v162.origin.y = v60;
                      v162.size.width = v118;
                      v162.size.height = v59;
                      v173.origin.x = OffsetForStringIndex;
                      v173.origin.y = MinY;
                      v173.size.width = v71;
                      v173.size.height = v72;
                      v163 = CGRectUnion(v162, v173);
                      v61 = v163.origin.x;
                      v60 = v163.origin.y;
                      v58 = v163.size.width;
                      v59 = v163.size.height;
                    }

                    v52 = v117;
                  }
                }
              }

              v62 = [v56 countByEnumeratingWithState:&v133 objects:v147 count:16];
            }

            while (v62);
          }

          CurrentContext = context;
          CTLineDraw(v49, context);
          self = selfCopy2;
          if (selfCopy2->_generateHighlight)
          {
            v164.origin.x = v61;
            v164.origin.y = v60;
            v164.size.width = v58;
            v164.size.height = v59;
            if (!CGRectIsNull(v164))
            {
              transform = v145;
              v165.origin.x = 0.0;
              v165.origin.y = v52;
              v165.size.width = v119;
              v165.size.height = v120;
              v166 = CGRectApplyAffineTransform(v165, &transform);
              v75 = v166.origin.x;
              v76 = v58;
              v77 = v166.origin.y;
              v78 = v166.size.width;
              v79 = v166.size.height;
              transform = v145;
              v166.origin.x = v61;
              v166.origin.y = v60;
              v166.size.width = v76;
              v166.size.height = v59;
              v167 = CGRectApplyAffineTransform(v166, &transform);
              v80 = v167.origin.x;
              v81 = v167.size.width;
              v82 = v167.origin.y + -3.0;
              v83 = v167.size.height + 2.0;
              v84 = objc_alloc_init(AEHighlightLine);
              v168.origin.x = v75;
              v168.origin.y = v77;
              v168.size.width = v78;
              v168.size.height = v79;
              v169 = CGRectIntegral(v168);
              [(AEHighlightLine *)v84 setFullLineRect:v169.origin.x, v169.origin.y, v169.size.width, v169.size.height];
              v170.origin.x = v80;
              v170.origin.y = v82;
              v170.size.width = v81;
              v170.size.height = v83;
              v171 = CGRectIntegral(v170);
              [(AEHighlightLine *)v84 setCurrentLineRect:v171.origin.x, v171.origin.y, v171.size.width, v171.size.height];
              [(AEHighlightLine *)v84 setLightenBlend:selfCopy2->_shouldInvertContent];
              [(AEHighlightLine *)v84 setMultiplyImage:0];
              v172.origin.x = v80;
              v172.origin.y = v82;
              v172.size.width = v81;
              v172.size.height = v83;
              [(AEHighlightLine *)v84 setUnderlinePosition:CGRectGetMaxY(v172)];
              [v105 addObject:v84];
            }
          }

          v47 = v115 + 1;

          v48 = v48 + 1;
          v46 = v110;
        }

        while (v48 != v111);
        v111 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
      }

      while (v111);
    }

    annotation = v101;
    v85 = v102;
    if ([v105 count])
    {
      v86 = objc_alloc_init(AEHighlight);
      [(AEHighlight *)v86 setAnnotation:v101];
      [(AEHighlight *)v86 setLines:v105];
      if (self->_generateHighlightAsynchronously)
      {
        v87 = dispatch_get_global_queue(2, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_46938;
        block[3] = &unk_2C9740;
        block[4] = self;
        v126 = v86;
        v127 = v101;
        v128 = CurrentContext;
        v129 = v97.origin.x;
        v130 = v97.origin.y;
        v131 = v97.size.width;
        v132 = v97.size.height;
        dispatch_async(v87, block);
      }

      else
      {
        renderingController2 = [(AEHighlightedTextLabel *)self renderingController];
        annotationUuid2 = [v101 annotationUuid];
        [renderingController2 addHighlight:v86 forData:annotationUuid2];

        renderingController3 = [(AEHighlightedTextLabel *)self renderingController];
        highlightLayers = [renderingController3 highlightLayers];

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v92 = highlightLayers;
        v93 = [v92 countByEnumeratingWithState:&v121 objects:v146 count:16];
        if (v93)
        {
          v94 = v93;
          v95 = *v122;
          do
          {
            for (j = 0; j != v94; j = j + 1)
            {
              if (*v122 != v95)
              {
                objc_enumerationMutation(v92);
              }

              [(AEHighlightedTextLabel *)self p_renderHighlightLayer:*(*(&v121 + 1) + 8 * j) inContext:CurrentContext flippingOriginWithY:CGRectGetHeight(v97)];
            }

            v94 = [v92 countByEnumeratingWithState:&v121 objects:v146 count:16];
          }

          while (v94);
        }

        v85 = v102;
      }

      v46 = v110;
    }

    CFRelease(frame);
    if (cf)
    {
      CFRelease(cf);
    }

    v15 = v103;
    if (v100)
    {
      CFRelease(v100);
    }

    if (v46)
    {
      free(v46);
    }
  }
}

- (void)p_renderHighlightLayer:(id)layer inContext:(CGContext *)context flippingOriginWithY:(double)y
{
  layerCopy = layer;
  v8 = [layerCopy valueForKey:@"kAEHighlightLayerCurrentRectKey"];
  [v8 CGRectValue];
  v10 = v9;
  v12 = v11;

  CGContextSaveGState(context);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, 0.0, y);
  v13 = v15;
  CGAffineTransformScale(&transform, &v13, 1.0, -1.0);
  v15 = transform;
  CGContextConcatCTM(context, &transform);
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeTranslation(&transform, v10, v12);
  v13 = transform;
  CGContextConcatCTM(context, &v13);
  [layerCopy renderInContext:context];

  CGContextRestoreGState(context);
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  areAnimationsEnabled = [objc_opt_class() areAnimationsEnabled];
  [objc_opt_class() setAnimationsEnabled:0];
  v9.receiver = self;
  v9.super_class = AEHighlightedTextLabel;
  [(AEHighlightedTextLabel *)&v9 setFrame:x, y, width, height];
  [objc_opt_class() setAnimationsEnabled:areAnimationsEnabled];
}

- (UIFont)font
{
  v2 = self->_font;
  if (!v2)
  {
    v2 = [UIFont systemFontOfSize:14.0];
  }

  return v2;
}

+ (void)collapseNewlinesForMutableAttributedString:(id)string
{
  stringCopy = string;
  v6 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"[\r\n]+" options:0 error:&v6];
  if (v4)
  {
    mutableString = [stringCopy mutableString];
    [v4 replaceMatchesInString:mutableString options:0 range:0 withTemplate:{objc_msgSend(stringCopy, "length"), @"\n"}];
  }
}

+ (CGSize)sizeForAnnotation:(id)annotation font:(id)font width:(double)width numberOfLines:(unint64_t)lines useSelectedText:(BOOL)text
{
  annotationCopy = annotation;
  fontCopy = font;
  if (text)
  {
    [AEAnnotation annotatedAttributedStringForAnnotation:annotationCopy];
  }

  else
  {
    +[AEAnnotation annotatedAttributedStringForAnnotation:withPossibleLength:](AEAnnotation, "annotatedAttributedStringForAnnotation:withPossibleLength:", annotationCopy, [self possibleLineLengthForAnnotation:annotationCopy size:{CGSizeZero.width, CGSizeZero.height}] * lines);
  }
  v14 = ;
  v15 = [v14 mutableCopy];

  if (v15)
  {
    [self collapseNewlinesForMutableAttributedString:v15];
    fontName = [fontCopy fontName];
    [fontCopy pointSize];
    v18 = CTFontCreateWithName(fontName, v17, 0);

    Ascent = CTFontGetAscent(v18);
    Descent = CTFontGetDescent(v18);
    [objc_opt_class() adjustedLeadingForFont:v18];
    v22 = v21;
    [v15 addAttribute:kCTFontAttributeName value:v18 range:{0, objc_msgSend(v15, "length")}];
    v23 = [objc_opt_class() createParagraphStyleForFont:v18];
    if (v23)
    {
      v24 = v23;
      [v15 addAttribute:kCTParagraphStyleAttributeName value:v23 range:{0, objc_msgSend(v15, "length")}];
      CFRelease(v24);
    }

    v25 = (ceil(Ascent + Descent) + ceil(v22)) * lines;
    v26 = CTFramesetterCreateWithAttributedString(v15);
    v27 = [UIBezierPath bezierPathWithRect:0.0, 0.0, width, v25];
    cGPath = [v27 CGPath];
    v51.location = 0;
    v51.length = 0;
    Frame = CTFramesetterCreateFrame(v26, v51, cGPath, 0);

    v30 = CTFrameGetLines(Frame);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = v25;
    [v30 count];
    v31 = &v42[-2 * __chkstk_darwin() - 1];
    bzero(v31, v32);
    v52.location = 0;
    v52.length = 0;
    CTFrameGetLineOrigins(Frame, v52, v31);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_47228;
    v42[3] = &unk_2C9768;
    v42[6] = lines;
    v42[7] = v31;
    v42[4] = &v47;
    v42[5] = &v43;
    [v30 enumerateObjectsUsingBlock:v42];
    if (Frame)
    {
      CFRelease(Frame);
    }

    v33 = v48[3];
    v34 = v44[3];
    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);

    if (v26)
    {
      CFRelease(v26);
    }

    v35 = v33;
    width = ceilf(v35);
    v37 = v34 + -0.5;
    height = v25 - floorf(v37) + 5.0;
    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  widthCopy = width;
  v40 = height;
  result.height = v40;
  result.width = widthCopy;
  return result;
}

- (void)setAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (self->_annotation != annotationCopy)
  {
    v8 = annotationCopy;
    renderingController = [(AEHighlightedTextLabel *)self renderingController];
    annotationUuid = [(AEAnnotation *)self->_annotation annotationUuid];
    [renderingController removeHighlightForData:annotationUuid];

    objc_storeStrong(&self->_annotation, annotation);
    [(AEHighlightedTextLabelTextView *)self->_textView setNeedsDisplay];
    annotationCopy = v8;
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  if (!colorCopy)
  {
    colorCopy = +[UIColor blackColor];
  }

  objc_storeStrong(&self->_textColor, colorCopy);
  if (!v5)
  {
  }

  if (!self->_highlightedTextColor)
  {
    objc_storeStrong(&self->_highlightedTextColor, self->_textColor);
  }

  [(AEHighlightedTextLabelTextView *)self->_textView setNeedsDisplay];
}

- (void)setHighlightedTextColor:(id)color
{
  textColor = color;
  if (!color)
  {
    textColor = self->_textColor;
  }

  objc_storeStrong(&self->_highlightedTextColor, textColor);
  colorCopy = color;
  [(AEHighlightedTextLabelTextView *)self->_textView setNeedsDisplay];
}

- (void)setBackgroundColor:(id)color
{
  objc_storeStrong(&self->_bk_backgroundColor, color);
  colorCopy = color;
  v6 = +[UIColor clearColor];
  v7.receiver = self;
  v7.super_class = AEHighlightedTextLabel;
  [(AEHighlightedTextLabel *)&v7 setBackgroundColor:v6];

  [(AEHighlightedTextLabel *)self _updateBackgroundColors];
}

- (void)_updateBackgroundColors
{
  if (self->_highlighted)
  {
    v3 = +[UIColor clearColor];
  }

  else
  {
    v3 = self->_bk_backgroundColor;
  }

  v4 = v3;
  [(AEHighlightedTextLabelTextView *)self->_textView setBackgroundColor:v3];
  [(AEHighlightedTextLabelTextView *)self->_textView setNeedsDisplay];
}

- (void)setPageTheme:(int64_t)theme
{
  if ([(AEHighlightRenderingController *)self->_renderingController pageTheme]!= theme)
  {
    [(AEHighlightRenderingController *)self->_renderingController setPageTheme:theme];
    textView = self->_textView;

    [(AEHighlightedTextLabelTextView *)textView setNeedsDisplay];
  }
}

- (void)setAnnotationBlendMode:(int)mode
{
  v3 = *&mode;
  self->_annotationBlendMode = mode;
  if ([(AEHighlightRenderingController *)self->_renderingController annotationBlendMode]!= mode)
  {
    [(AEHighlightRenderingController *)self->_renderingController setAnnotationBlendMode:v3];
    textView = self->_textView;

    [(AEHighlightedTextLabelTextView *)textView setNeedsDisplay];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    v9 = v3;
    self->_highlighted = highlighted;
    v8 = &OBJC_IVAR___AEHighlightedTextLabel__annotationBlendMode;
    if (highlighted)
    {
      v8 = &OBJC_IVAR___AEHighlightedTextLabel__highlightedAnnotationBlendMode;
    }

    [(AEHighlightRenderingController *)self->_renderingController setAnnotationBlendMode:*(&self->super.super.super.isa + *v8), v4, v9, v5];

    [(AEHighlightedTextLabel *)self _updateBackgroundColors];
  }
}

- (NSAttributedString)annotationAttributedString
{
  annotation = [(AEHighlightedTextLabel *)self annotation];
  if ([(AEHighlightedTextLabel *)self useSelectedText])
  {
    [AEAnnotation annotatedAttributedStringForAnnotation:annotation];
  }

  else
  {
    +[AEAnnotation annotatedAttributedStringForAnnotation:withPossibleLength:](AEAnnotation, "annotatedAttributedStringForAnnotation:withPossibleLength:", annotation, -[AEHighlightedTextLabel numberOfLines](self, "numberOfLines") * [objc_opt_class() possibleLineLengthForAnnotation:annotation size:{CGSizeZero.width, CGSizeZero.height}]);
  }
  v4 = ;
  v5 = [v4 mutableCopy];

  return v5;
}

- (void)clearHighlights
{
  renderingController = [(AEHighlightedTextLabel *)self renderingController];
  annotation = [(AEHighlightedTextLabel *)self annotation];
  annotationUuid = [annotation annotationUuid];
  [renderingController removeHighlightForData:annotationUuid];
}

@end