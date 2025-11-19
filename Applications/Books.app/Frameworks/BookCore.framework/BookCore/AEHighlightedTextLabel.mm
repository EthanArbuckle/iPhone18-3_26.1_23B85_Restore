@interface AEHighlightedTextLabel
+ (CGSize)sizeForAnnotation:(id)a3 font:(id)a4 width:(double)a5 numberOfLines:(unint64_t)a6 useSelectedText:(BOOL)a7;
+ (__CTParagraphStyle)createParagraphStyleForFont:(__CTFont *)a3;
+ (double)adjustedLeadingForFont:(__CTFont *)a3;
+ (void)collapseNewlinesForMutableAttributedString:(id)a3;
- (AEHighlightedTextLabel)initWithFrame:(CGRect)a3 generateHighlight:(BOOL)a4 generateHighlightAsynchronously:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSAttributedString)annotationAttributedString;
- (UIFont)font;
- (void)_updateBackgroundColors;
- (void)clearHighlights;
- (void)drawLabelInRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)p_renderHighlightLayer:(id)a3 inContext:(CGContext *)a4 flippingOriginWithY:(double)a5;
- (void)setAnnotation:(id)a3;
- (void)setAnnotationBlendMode:(int)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlightedTextColor:(id)a3;
- (void)setPageTheme:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation AEHighlightedTextLabel

- (AEHighlightedTextLabel)initWithFrame:(CGRect)a3 generateHighlight:(BOOL)a4 generateHighlightAsynchronously:(BOOL)a5
{
  v17.receiver = self;
  v17.super_class = AEHighlightedTextLabel;
  v7 = [(AEHighlightedTextLabel *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v7)
  {
    v8 = objc_alloc_init(AEHighlightRenderingController);
    renderingController = v7->_renderingController;
    v7->_renderingController = v8;

    [(AEHighlightRenderingController *)v7->_renderingController setCanUseFilters:1];
    v7->_numberOfLines = 2;
    v7->_generateHighlight = a4;
    v7->_generateHighlightAsynchronously = a5;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = objc_opt_class();
  v6 = [(AEHighlightedTextLabel *)self annotation];
  v7 = [(AEHighlightedTextLabel *)self font];
  [v5 sizeForAnnotation:v6 font:v7 width:-[AEHighlightedTextLabel numberOfLines](self numberOfLines:"numberOfLines") useSelectedText:{-[AEHighlightedTextLabel useSelectedText](self, "useSelectedText"), width}];
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

+ (double)adjustedLeadingForFont:(__CTFont *)a3
{
  Ascent = CTFontGetAscent(a3);
  Descent = CTFontGetDescent(a3);
  result = CTFontGetLeading(a3);
  if (result < (Ascent + Descent) * 0.2)
  {
    return (Ascent + Descent) * 0.2;
  }

  return result;
}

+ (__CTParagraphStyle)createParagraphStyleForFont:(__CTFont *)a3
{
  Ascent = CTFontGetAscent(a3);
  Descent = CTFontGetDescent(a3);
  [a1 adjustedLeadingForFont:a3];
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

- (void)drawLabelInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v11 = [(AEHighlightedTextLabel *)self annotation];
  v12 = [(AEHighlightedTextLabel *)self renderingController];
  v13 = [v11 annotationUuid];
  [v12 removeHighlightForData:v13];

  if ([(AEHighlightedTextLabel *)self useSelectedText])
  {
    [AEAnnotation annotatedAttributedStringForAnnotation:v11];
  }

  else
  {
    +[AEAnnotation annotatedAttributedStringForAnnotation:withPossibleLength:](AEAnnotation, "annotatedAttributedStringForAnnotation:withPossibleLength:", v11, -[AEHighlightedTextLabel numberOfLines](self, "numberOfLines") * [objc_opt_class() possibleLineLengthForAnnotation:v11 size:{CGSizeZero.width, CGSizeZero.height}]);
  }
  v14 = ;
  v15 = [v14 mutableCopy];

  if (v15)
  {
    v16 = [(AEHighlightedTextLabel *)self font];
    v17 = [v16 fontName];
    v18 = [(AEHighlightedTextLabel *)self font];
    [v18 pointSize];
    v20 = CTFontCreateWithName(v17, v19, 0);

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
    v27 = [UIBezierPath bezierPathWithRect:x, y, width, height];
    v28 = [v27 CGPath];
    cf = v26;
    v149.location = 0;
    v149.length = 0;
    v29 = CTFramesetterCreateFrame(v26, v149, v28, 0);

    frame = v29;
    v30 = [(__CFArray *)CTFrameGetLines(v29) mutableCopy];
    v100 = v20;
    v101 = v11;
    v97.size.width = width;
    v97.size.height = height;
    v97.origin.x = x;
    v97.origin.y = y;
    v103 = v15;
    if ([v30 count])
    {
      v31 = self;
      v32 = CurrentContext;
      v33 = [v30 lastObject];
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

      location = CTLineGetStringRange(v33).location;
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
      self = v31;
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
      v108 = self;
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
          self = v108;
          if (v108->_generateHighlight)
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
              [(AEHighlightLine *)v84 setLightenBlend:v108->_shouldInvertContent];
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

    v11 = v101;
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
        v88 = [(AEHighlightedTextLabel *)self renderingController];
        v89 = [v101 annotationUuid];
        [v88 addHighlight:v86 forData:v89];

        v90 = [(AEHighlightedTextLabel *)self renderingController];
        v91 = [v90 highlightLayers];

        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v92 = v91;
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

- (void)p_renderHighlightLayer:(id)a3 inContext:(CGContext *)a4 flippingOriginWithY:(double)a5
{
  v7 = a3;
  v8 = [v7 valueForKey:@"kAEHighlightLayerCurrentRectKey"];
  [v8 CGRectValue];
  v10 = v9;
  v12 = v11;

  CGContextSaveGState(a4);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, 0.0, a5);
  v13 = v15;
  CGAffineTransformScale(&transform, &v13, 1.0, -1.0);
  v15 = transform;
  CGContextConcatCTM(a4, &transform);
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeTranslation(&transform, v10, v12);
  v13 = transform;
  CGContextConcatCTM(a4, &v13);
  [v7 renderInContext:a4];

  CGContextRestoreGState(a4);
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [objc_opt_class() areAnimationsEnabled];
  [objc_opt_class() setAnimationsEnabled:0];
  v9.receiver = self;
  v9.super_class = AEHighlightedTextLabel;
  [(AEHighlightedTextLabel *)&v9 setFrame:x, y, width, height];
  [objc_opt_class() setAnimationsEnabled:v8];
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

+ (void)collapseNewlinesForMutableAttributedString:(id)a3
{
  v3 = a3;
  v6 = 0;
  v4 = [NSRegularExpression regularExpressionWithPattern:@"[\r\n]+" options:0 error:&v6];
  if (v4)
  {
    v5 = [v3 mutableString];
    [v4 replaceMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v3, "length"), @"\n"}];
  }
}

+ (CGSize)sizeForAnnotation:(id)a3 font:(id)a4 width:(double)a5 numberOfLines:(unint64_t)a6 useSelectedText:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  if (a7)
  {
    [AEAnnotation annotatedAttributedStringForAnnotation:v12];
  }

  else
  {
    +[AEAnnotation annotatedAttributedStringForAnnotation:withPossibleLength:](AEAnnotation, "annotatedAttributedStringForAnnotation:withPossibleLength:", v12, [a1 possibleLineLengthForAnnotation:v12 size:{CGSizeZero.width, CGSizeZero.height}] * a6);
  }
  v14 = ;
  v15 = [v14 mutableCopy];

  if (v15)
  {
    [a1 collapseNewlinesForMutableAttributedString:v15];
    v16 = [v13 fontName];
    [v13 pointSize];
    v18 = CTFontCreateWithName(v16, v17, 0);

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

    v25 = (ceil(Ascent + Descent) + ceil(v22)) * a6;
    v26 = CTFramesetterCreateWithAttributedString(v15);
    v27 = [UIBezierPath bezierPathWithRect:0.0, 0.0, a5, v25];
    v28 = [v27 CGPath];
    v51.location = 0;
    v51.length = 0;
    Frame = CTFramesetterCreateFrame(v26, v51, v28, 0);

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
    v42[6] = a6;
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

  v39 = width;
  v40 = height;
  result.height = v40;
  result.width = v39;
  return result;
}

- (void)setAnnotation:(id)a3
{
  v5 = a3;
  if (self->_annotation != v5)
  {
    v8 = v5;
    v6 = [(AEHighlightedTextLabel *)self renderingController];
    v7 = [(AEAnnotation *)self->_annotation annotationUuid];
    [v6 removeHighlightForData:v7];

    objc_storeStrong(&self->_annotation, a3);
    [(AEHighlightedTextLabelTextView *)self->_textView setNeedsDisplay];
    v5 = v8;
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v4 = +[UIColor blackColor];
  }

  objc_storeStrong(&self->_textColor, v4);
  if (!v5)
  {
  }

  if (!self->_highlightedTextColor)
  {
    objc_storeStrong(&self->_highlightedTextColor, self->_textColor);
  }

  [(AEHighlightedTextLabelTextView *)self->_textView setNeedsDisplay];
}

- (void)setHighlightedTextColor:(id)a3
{
  textColor = a3;
  if (!a3)
  {
    textColor = self->_textColor;
  }

  objc_storeStrong(&self->_highlightedTextColor, textColor);
  v6 = a3;
  [(AEHighlightedTextLabelTextView *)self->_textView setNeedsDisplay];
}

- (void)setBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_bk_backgroundColor, a3);
  v5 = a3;
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

- (void)setPageTheme:(int64_t)a3
{
  if ([(AEHighlightRenderingController *)self->_renderingController pageTheme]!= a3)
  {
    [(AEHighlightRenderingController *)self->_renderingController setPageTheme:a3];
    textView = self->_textView;

    [(AEHighlightedTextLabelTextView *)textView setNeedsDisplay];
  }
}

- (void)setAnnotationBlendMode:(int)a3
{
  v3 = *&a3;
  self->_annotationBlendMode = a3;
  if ([(AEHighlightRenderingController *)self->_renderingController annotationBlendMode]!= a3)
  {
    [(AEHighlightRenderingController *)self->_renderingController setAnnotationBlendMode:v3];
    textView = self->_textView;

    [(AEHighlightedTextLabelTextView *)textView setNeedsDisplay];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v9 = v3;
    self->_highlighted = a3;
    v8 = &OBJC_IVAR___AEHighlightedTextLabel__annotationBlendMode;
    if (a3)
    {
      v8 = &OBJC_IVAR___AEHighlightedTextLabel__highlightedAnnotationBlendMode;
    }

    [(AEHighlightRenderingController *)self->_renderingController setAnnotationBlendMode:*(&self->super.super.super.isa + *v8), v4, v9, v5];

    [(AEHighlightedTextLabel *)self _updateBackgroundColors];
  }
}

- (NSAttributedString)annotationAttributedString
{
  v3 = [(AEHighlightedTextLabel *)self annotation];
  if ([(AEHighlightedTextLabel *)self useSelectedText])
  {
    [AEAnnotation annotatedAttributedStringForAnnotation:v3];
  }

  else
  {
    +[AEAnnotation annotatedAttributedStringForAnnotation:withPossibleLength:](AEAnnotation, "annotatedAttributedStringForAnnotation:withPossibleLength:", v3, -[AEHighlightedTextLabel numberOfLines](self, "numberOfLines") * [objc_opt_class() possibleLineLengthForAnnotation:v3 size:{CGSizeZero.width, CGSizeZero.height}]);
  }
  v4 = ;
  v5 = [v4 mutableCopy];

  return v5;
}

- (void)clearHighlights
{
  v5 = [(AEHighlightedTextLabel *)self renderingController];
  v3 = [(AEHighlightedTextLabel *)self annotation];
  v4 = [v3 annotationUuid];
  [v5 removeHighlightForData:v4];
}

@end