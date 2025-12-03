@interface CRLWPRenderer
+ (void)initialize;
- (BOOL)shouldClipFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state lineDrawFlags:(unint64_t)flags updateRect:(CGRect)rect outClipRect:(CGRect *)clipRect;
- (CGSize)convertSizeToDeviceSpace:(CGSize)space;
- (CRLWPRenderer)initWithContext:(CGContext *)context;
- (void)dealloc;
- (void)drawAdornmentRects:(id)rects forColumn:(id)column foreground:(BOOL)foreground drawingState:(const CRLWPDrawingState *)state;
- (void)drawAdornmentsForFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const CRLWPDrawingState *)state runState:(id *)runState lineDrawFlags:(unint64_t)flags;
- (void)drawCharacterFillAdornmentRects:(id)rects forColumn:(id)column excludeRange:(_NSRange)range drawingState:(const CRLWPDrawingState *)state;
- (void)drawCharacterStrokeAdornmentRects:(id)rects forColumn:(id)column excludeRange:(_NSRange)range drawingState:(const CRLWPDrawingState *)state;
- (void)drawFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const CRLWPDrawingState *)state runState:(id *)runState lineDrawFlags:(unint64_t)flags;
- (void)p_calculateMarkAdornments:(id)adornments drawingState:(const CRLWPDrawingState *)state lineFragment:(const void *)fragment;
- (void)p_clipToInteriorClippingPath;
- (void)p_drawAdornmentGlyphs:(id)glyphs lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state;
- (void)p_drawAdornmentLine:(id)line drawingState:(const CRLWPDrawingState *)state lineFragment:(const void *)fragment lineFragmentStart:(CGPoint)start vertical:(BOOL)vertical;
- (void)p_drawAdornmentLineBackgroundRect:(id)rect lineDrawFlags:(unint64_t)flags drawingState:(const CRLWPDrawingState *)state bounds:(CGRect)bounds;
- (void)p_drawAdornments:(id)adornments lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state;
- (void)p_drawAttachmentAdornments:(id)adornments lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state;
- (void)p_drawAttachmentGlyphAtPosition:(id)position fragment:(const void *)fragment;
- (void)p_drawAutocorrectionMarkingsFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state;
- (void)p_drawDictationMarkingsFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state;
- (void)p_drawHiddenDeletionsAdornments:(id)adornments lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state;
- (void)p_drawInvisiblesAdornments:(id)adornments lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state;
- (void)p_drawInvisiblesBreakLine:(id)line lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state;
- (void)p_drawListLabelForFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state lineDrawFlags:(unint64_t)flags;
- (void)p_drawMisspelledWordMarkingsFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state;
- (void)p_drawRun:(const __CTRun *)run range:(id)range attributes:(id)attributes canvasIsInteractive:(BOOL)interactive;
- (void)p_drawTextInRunsForLine:(CRLWPLineRef *)line fragment:(const void *)fragment state:(const CRLWPDrawingState *)state listLabel:(BOOL)label tateChuYoko:(BOOL)yoko ruby:(BOOL)ruby baseRange:(_NSRange)range isFirstLineRef:(BOOL)self0;
- (void)p_drawUngrammaticMarkingsFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state;
- (void)p_drawWordMarkingsForFragment:(const void *)fragment color:(id)color ranges:(id)ranges suppressRange:(_NSRange)range drawingState:(const CRLWPDrawingState *)state;
- (void)p_setCTMAndTextPositionForFragment:(const void *)fragment state:(const CRLWPDrawingState *)state;
- (void)p_strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width;
- (void)p_strokeWavyLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width;
- (void)willRenderFragmentsWithDrawingState:(const CRLWPDrawingState *)state;
@end

@implementation CRLWPRenderer

- (CRLWPRenderer)initWithContext:(CGContext *)context
{
  v6.receiver = self;
  v6.super_class = CRLWPRenderer;
  v4 = [(CRLWPRenderer *)&v6 init];
  if (v4)
  {
    v4->_context = CGContextRetain(context);
  }

  return v4;
}

- (void)dealloc
{
  CGContextRelease(self->_context);
  v3.receiver = self;
  v3.super_class = CRLWPRenderer;
  [(CRLWPRenderer *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [CRLColor colorWithRed:1.0 green:0.227 blue:0.188 alpha:1.0];
    v3 = qword_101A344D0;
    qword_101A344D0 = v2;

    v4 = [CRLColor colorWithRed:0.35 green:0.766 blue:0.405 alpha:1.0];
    v5 = qword_101A344D8;
    qword_101A344D8 = v4;

    v6 = [CRLColor colorWithRed:0.0 green:0.478 blue:1.0 alpha:1.0];
    v7 = qword_101A344E0;
    qword_101A344E0 = v6;
  }
}

- (CGSize)convertSizeToDeviceSpace:(CGSize)space
{
  v5 = CGContextConvertSizeToDeviceSpace(self->_context, space);
  height = v5.height;
  width = v5.width;
  result.height = height;
  result.width = width;
  return result;
}

- (void)willRenderFragmentsWithDrawingState:(const CRLWPDrawingState *)state
{
  CGContextSaveGState(self->_context);
  context = self->_context;
  var1 = state->var1;
  if (var1)
  {
    [var1 transformFromWP];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  CGContextConcatCTM(context, &v9);
  v7 = self->_context;
  v8 = *&CGAffineTransformIdentity.c;
  *&v9.a = *&CGAffineTransformIdentity.a;
  *&v9.c = v8;
  *&v9.tx = *&CGAffineTransformIdentity.tx;
  CGContextSetTextMatrix(v7, &v9);
}

- (void)drawFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const CRLWPDrawingState *)state runState:(id *)runState lineDrawFlags:(unint64_t)flags
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((flags & 2) != 0)
  {
    v16 = sub_10050FEFC(self->_context);
    v15 = v16;
    if (*(fragment + 3) < 0)
    {
      fragmentCopy = &xmmword_101464828;
    }

    else
    {
      fragmentCopy = fragment;
    }

    v61 = [v16 needsSeparateRunsForLineFragmentWithRange:{*fragmentCopy, *(fragmentCopy + 1)}];
  }

  else
  {
    v15 = 0;
    v61 = 0;
  }

  v63 = v15;
  if (!state->var0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101310BD0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310BE4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310C6C();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v19 = [NSString stringWithUTF8String:"[CRLWPRenderer drawFragment:updateRect:drawingState:runState:lineDrawFlags:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:186 isFatal:0 description:"storage is nil"];

    v15 = v63;
  }

  v21 = *(fragment + 6);
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  v79 = CGRectIntersection(*(fragment + 72), v80);
  if (CGRectIsEmpty(v79))
  {
    if ((flags & 2) != 0)
    {
      if (*(fragment + 3) < 0)
      {
        fragmentCopy2 = &xmmword_101464828;
      }

      else
      {
        fragmentCopy2 = fragment;
      }

      [v15 beginLineFragmentWithRange:{*fragmentCopy2, *(fragmentCopy2 + 1)}];
      if (*(fragment + 3) < 0)
      {
        fragmentCopy3 = &xmmword_101464828;
      }

      else
      {
        fragmentCopy3 = fragment;
      }

      [v15 beginLineFragmentBodyWithRange:{*fragmentCopy3, *(fragmentCopy3 + 1)}];
      if (*(fragment + 3) < 0)
      {
        fragmentCopy4 = &xmmword_101464828;
      }

      else
      {
        fragmentCopy4 = fragment;
      }

      [v15 endLineFragmentBodyWithRange:{*fragmentCopy4, *(fragmentCopy4 + 1)}];
      if (*(fragment + 3) < 0)
      {
        fragmentCopy5 = &xmmword_101464828;
      }

      else
      {
        fragmentCopy5 = fragment;
      }

      [v15 endLineFragmentWithRange:{*fragmentCopy5, *(fragmentCopy5 + 1)}];
    }
  }

  else
  {
    v60 = v21;
    size = CGRectZero.size;
    v75.origin = CGRectZero.origin;
    v75.size = size;
    height = [(CRLWPRenderer *)self shouldClipFragment:fragment drawingState:state lineDrawFlags:flags updateRect:&v75 outClipRect:x, y, width, height];
    if (height)
    {
      CGContextSaveGState(self->_context);
      CGContextClipToRect(self->_context, v75);
    }

    v28 = *(fragment + 6);
    v29 = *(fragment + 7);
    v30 = *(fragment + 8);
    v32 = *(fragment + 4);
    v31 = *(fragment + 5);
    if (flags)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v33 = sub_10020BD24(fragment);
      v34 = [v33 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (v34)
      {
        v35 = *v72;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v72 != v35)
            {
              objc_enumerationMutation(v33);
            }

            [(CRLWPRenderer *)self p_drawAdornmentLineBackgroundRect:*(*(&v71 + 1) + 8 * i) lineDrawFlags:flags drawingState:state bounds:v31, v28, v29, v30];
          }

          v34 = [v33 countByEnumeratingWithState:&v71 objects:v77 count:16];
        }

        while (v34);
      }
    }

    if ((flags & 0x3000) != 0)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v37 = sub_10020BD2C(fragment);
      v38 = height;
      v39 = [v37 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v39)
      {
        v40 = *v68;
        do
        {
          for (j = 0; j != v39; j = j + 1)
          {
            if (*v68 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v67 + 1) + 8 * j);
            if ([v42 shouldRenderForLineDrawFlags:flags])
            {
              v43 = v28;
              v44 = v30;
              if ((*(fragment + 28) & 1) == 0)
              {
                v45 = *(fragment + 15);
                v44 = v45 + *(fragment + 17);
                v43 = v32 - v45;
              }

              [(CRLWPRenderer *)self p_drawAdornmentLineBackgroundRect:v42 lineDrawFlags:flags drawingState:state bounds:v31, v43, v29, v44];
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v67 objects:v76 count:16];
        }

        while (v39);
      }

      height = v38;
    }

    if (*(fragment + 3) < 0)
    {
      fragmentCopy6 = &xmmword_101464828;
    }

    else
    {
      fragmentCopy6 = fragment;
    }

    v48 = *fragmentCopy6;
    v47 = fragmentCopy6[1];
    v49 = objc_opt_new();
    if ((flags & 0x400) != 0)
    {
      v78.location = v48;
      v78.length = v47;
      if (NSIntersectionRange(v78, state[192]).length)
      {
        [(CRLWPRenderer *)self p_calculateMarkAdornments:v49 drawingState:state lineFragment:fragment];
      }
    }

    if ((flags & 2) != 0)
    {
      if (*(fragment + 3) < 0)
      {
        fragmentCopy7 = &xmmword_101464828;
      }

      else
      {
        fragmentCopy7 = fragment;
      }

      [v63 beginLineFragmentWithRange:{*fragmentCopy7, *(fragmentCopy7 + 1)}];
      runState->var2 = v32;
      if ((flags & 8) != 0)
      {
        [(CRLWPRenderer *)self p_drawMisspelledWordMarkingsFragment:fragment drawingState:state];
      }

      if ((flags & 0x10) != 0)
      {
        [(CRLWPRenderer *)self p_drawUngrammaticMarkingsFragment:fragment drawingState:state];
      }

      if ((flags & 0x200) != 0)
      {
        [(CRLWPRenderer *)self p_drawDictationMarkingsFragment:fragment drawingState:state];
      }

      if ((flags & 0x800) != 0)
      {
        [(CRLWPRenderer *)self p_drawAutocorrectionMarkingsFragment:fragment drawingState:state];
      }

      v51 = sub_10020BCF4(fragment);
      v52 = v51 == 0;

      if (!v52)
      {
        [(CRLWPRenderer *)self p_drawListLabelForFragment:fragment drawingState:state lineDrawFlags:flags];
      }

      if (*(fragment + 3) < 0)
      {
        fragmentCopy8 = &xmmword_101464828;
      }

      else
      {
        fragmentCopy8 = fragment;
      }

      [v63 beginLineFragmentBodyWithRange:{*fragmentCopy8, *(fragmentCopy8 + 1)}];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1000E184C;
      v64[3] = &unk_10183B298;
      *&v64[6] = v32;
      v64[4] = self;
      v64[5] = fragment;
      v64[7] = state;
      v65 = (v60 & 0x2000) != 0;
      v66 = v61;
      v54 = objc_retainBlock(v64);
      if (((!state->var4 || !state->var23.length) && (v55 = sub_10020BCA8(fragment), (v54[2])(v54, v55, 0, 0), !state->var4) || state->var23.length) && (v56 = sub_10020BCB0(fragment), (v54[2])(v54, v56, 0, 1), !state->var4) || !state->var23.length)
      {
        v57 = sub_10020BCE4(fragment);
        (v54[2])(v54, v57, 1, 0);
      }

      if (*(fragment + 3) < 0)
      {
        fragmentCopy9 = &xmmword_101464828;
      }

      else
      {
        fragmentCopy9 = fragment;
      }

      [v63 endLineFragmentBodyWithRange:{*fragmentCopy9, *(fragmentCopy9 + 1)}];
      if (*(fragment + 3) < 0)
      {
        fragmentCopy10 = &xmmword_101464828;
      }

      else
      {
        fragmentCopy10 = fragment;
      }

      [v63 endLineFragmentWithRange:{*fragmentCopy10, *(fragmentCopy10 + 1)}];
    }

    if (height)
    {
      CGContextRestoreGState(self->_context);
    }

    v15 = v63;
  }
}

- (void)drawAdornmentsForFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const CRLWPDrawingState *)state runState:(id *)runState lineDrawFlags:(unint64_t)flags
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!state->var0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101310C94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310CA8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310D30();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v17 = [NSString stringWithUTF8String:"[CRLWPRenderer drawAdornmentsForFragment:updateRect:drawingState:runState:lineDrawFlags:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:522 isFatal:0 description:"storage is nil"];
  }

  v19 = *(fragment + 3);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  v69 = CGRectIntersection(*(fragment + 72), v70);
  if (!CGRectIsEmpty(v69))
  {
    size = CGRectZero.size;
    v63.origin = CGRectZero.origin;
    v63.size = size;
    height = [(CRLWPRenderer *)self shouldClipFragment:fragment drawingState:state lineDrawFlags:flags updateRect:&v63 outClipRect:x, y, width, height];
    if (height)
    {
      CGContextSaveGState(self->_context);
      CGContextClipToRect(self->_context, v63);
    }

    v22 = *(fragment + 4);
    v23 = *(fragment + 5);
    if (*(fragment + 3) < 0)
    {
      fragmentCopy = &xmmword_101464828;
    }

    else
    {
      fragmentCopy = fragment;
    }

    v26 = *fragmentCopy;
    v25 = fragmentCopy[1];
    v46 = objc_opt_new();
    if ((flags & 0x400) != 0)
    {
      v68.location = v26;
      v68.length = v25;
      if (NSIntersectionRange(v68, state[192]).length)
      {
        [(CRLWPRenderer *)self p_calculateMarkAdornments:v46 drawingState:state lineFragment:fragment];
      }
    }

    if ((flags & 2) != 0)
    {
      runState->var2 = v22;
      if (!state->var4 || !state->var23.length)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v27 = sub_10020BD14(fragment);
        v28 = [v27 countByEnumeratingWithState:&v59 objects:v67 count:16];
        v29 = (v19 >> 13) & 1;
        if (v28)
        {
          v30 = *v60;
          do
          {
            for (i = 0; i != v28; i = i + 1)
            {
              if (*v60 != v30)
              {
                objc_enumerationMutation(v27);
              }

              [(CRLWPRenderer *)self p_drawAdornmentLine:*(*(&v59 + 1) + 8 * i) drawingState:state lineFragment:fragment lineFragmentStart:v29 vertical:v23, v22];
            }

            v28 = [v27 countByEnumeratingWithState:&v59 objects:v67 count:16];
          }

          while (v28);
        }

        if ((flags & 0x400) != 0)
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v32 = v46;
          v33 = [v32 countByEnumeratingWithState:&v55 objects:v66 count:16];
          if (v33)
          {
            v34 = *v56;
            do
            {
              for (j = 0; j != v33; j = j + 1)
              {
                if (*v56 != v34)
                {
                  objc_enumerationMutation(v32);
                }

                v36 = *(*(&v55 + 1) + 8 * j);
                [(CRLWPRenderer *)self p_drawAdornmentLine:v36 drawingState:state lineFragment:fragment lineFragmentStart:v29 vertical:v23, v22];
              }

              v33 = [v32 countByEnumeratingWithState:&v55 objects:v66 count:16];
            }

            while (v33);
          }
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v37 = sub_10020BD1C(fragment);
        v38 = [v37 countByEnumeratingWithState:&v51 objects:v65 count:16];
        if (v38)
        {
          v39 = *v52;
          do
          {
            for (k = 0; k != v38; k = k + 1)
            {
              if (*v52 != v39)
              {
                objc_enumerationMutation(v37);
              }

              [(CRLWPRenderer *)self p_drawAdornmentLine:*(*(&v51 + 1) + 8 * k) drawingState:state lineFragment:fragment lineFragmentStart:v29 vertical:v23, v22];
            }

            v38 = [v37 countByEnumeratingWithState:&v51 objects:v65 count:16];
          }

          while (v38);
        }

        CGContextSetTextDrawingMode(self->_context, kCGTextFill);
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v41 = sub_10020BD34(fragment);
        v42 = [v41 countByEnumeratingWithState:&v47 objects:v64 count:16];
        if (v42)
        {
          v43 = *v48;
          do
          {
            for (m = 0; m != v42; m = m + 1)
            {
              if (*v48 != v43)
              {
                objc_enumerationMutation(v41);
              }

              [(CRLWPRenderer *)self p_drawAdornments:*(*(&v47 + 1) + 8 * m) lineFragment:fragment state:state];
            }

            v42 = [v41 countByEnumeratingWithState:&v47 objects:v64 count:16];
          }

          while (v42);
        }

        v45 = sub_10020BD48(fragment);
        if (v45)
        {
          [(CRLWPRenderer *)self p_drawInvisiblesBreakLine:v45 lineFragment:fragment state:state];
        }
      }
    }

    if (height)
    {
      CGContextRestoreGState(self->_context);
    }
  }
}

- (void)p_clipToInteriorClippingPath
{
  interiorClippingPath = [(CRLWPRenderer *)self interiorClippingPath];
  if (interiorClippingPath && ([interiorClippingPath isEmpty] & 1) == 0)
  {
    CGContextAddPath(self->_context, [interiorClippingPath CGPath]);
    CGContextClip(self->_context);
  }
}

- (void)drawCharacterFillAdornmentRects:(id)rects forColumn:(id)column excludeRange:(_NSRange)range drawingState:(const CRLWPDrawingState *)state
{
  length = range.length;
  location = range.location;
  rectsCopy = rects;
  columnCopy = column;
  v55 = rectsCopy;
  if ([rectsCopy count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = rectsCopy;
    v11 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v11)
    {
      v12 = *v62;
      do
      {
        v13 = 0;
        do
        {
          if (*v62 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v61 + 1) + 8 * v13);
          [v14 rect];
          x = v15;
          y = v17;
          width = v19;
          height = v21;
          if ([v14 type] == 4)
          {
            fill = [v14 fill];
            v24 = fill == 0;

            if (v24)
            {
              v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101310D58();
              }

              v26 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.a) = 67110146;
                HIDWORD(buf.a) = v25;
                LOWORD(buf.b) = 2082;
                *(&buf.b + 2) = "[CRLWPRenderer drawCharacterFillAdornmentRects:forColumn:excludeRange:drawingState:]";
                WORD1(buf.c) = 2082;
                *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm";
                WORD2(buf.d) = 1024;
                *(&buf.d + 6) = 625;
                WORD1(buf.tx) = 2082;
                *(&buf.tx + 4) = "adornment.fill";
                _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101310D80();
              }

              v27 = off_1019EDA68;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v52 = +[CRLAssertionHandler packedBacktraceString];
                LODWORD(buf.a) = 67109378;
                HIDWORD(buf.a) = v25;
                LOWORD(buf.b) = 2114;
                *(&buf.b + 2) = v52;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
              }

              v28 = [NSString stringWithUTF8String:"[CRLWPRenderer drawCharacterFillAdornmentRects:forColumn:excludeRange:drawingState:]"];
              v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
              [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:625 isFatal:0 description:"invalid nil value for '%{public}s'", "adornment.fill"];
            }

            path = [v14 path];
            v31 = path == 0;

            if (v31)
            {
              v32 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101310DA8();
              }

              v33 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.a) = 67110146;
                HIDWORD(buf.a) = v32;
                LOWORD(buf.b) = 2082;
                *(&buf.b + 2) = "[CRLWPRenderer drawCharacterFillAdornmentRects:forColumn:excludeRange:drawingState:]";
                WORD1(buf.c) = 2082;
                *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm";
                WORD2(buf.d) = 1024;
                *(&buf.d + 6) = 626;
                WORD1(buf.tx) = 2082;
                *(&buf.tx + 4) = "adornment.path";
                _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101310DD0();
              }

              v34 = off_1019EDA68;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v53 = +[CRLAssertionHandler packedBacktraceString];
                LODWORD(buf.a) = 67109378;
                HIDWORD(buf.a) = v32;
                LOWORD(buf.b) = 2114;
                *(&buf.b + 2) = v53;
                _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
              }

              v35 = [NSString stringWithUTF8String:"[CRLWPRenderer drawCharacterFillAdornmentRects:forColumn:excludeRange:drawingState:]"];
              v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
              [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:626 isFatal:0 description:"invalid nil value for '%{public}s'", "adornment.path"];
            }

            if (state->var4 || location != 0x7FFFFFFFFFFFFFFFLL || length)
            {
              path2 = [v14 pathFromExcludeRange:location limitSelection:length rubyGlyphRange:?];
            }

            else
            {
              path2 = [v14 path];
            }

            v38 = path2;
            if (path2)
            {
              CGContextSaveGState(self->_context);
              if ([columnCopy textIsVertical])
              {
                v39 = sub_100120414(x, y, width, height);
                v41 = v40;
                memset(&buf, 0, sizeof(buf));
                CGAffineTransformMakeRotation(&transform, -1.57079633);
                v42 = sub_10011F340(v39, v41, -1.0);
                sub_100139EB4(&transform, &buf, v42, v43);
                context = self->_context;
                transform = buf;
                CGContextConcatCTM(context, &transform);
                v59 = buf;
                CGAffineTransformInvert(&transform, &v59);
                [v38 transformUsingAffineTransform:&transform];
                transform = buf;
                v67.origin.x = x;
                v67.origin.y = y;
                v67.size.width = width;
                v67.size.height = height;
                v68 = CGRectApplyAffineTransform(v67, &transform);
                x = v68.origin.x;
                y = v68.origin.y;
                width = v68.size.width;
                height = v68.size.height;
              }

              shadow = [v14 shadow];
              v46 = shadow == 0;

              if (!v46)
              {
                shadow2 = [v14 shadow];
                [shadow2 applyToContext:self->_context viewScale:self->_flipShadows flipped:self->_viewScale];

                CGContextBeginTransparencyLayer(self->_context, 0);
              }

              fill2 = [v14 fill];
              v49 = v38;
              [fill2 paintPath:objc_msgSend(v38 naturalBounds:"CGPath") inContext:self->_context isPDF:{0, x, y, width, height}];

              shadow3 = [v14 shadow];
              v51 = shadow3 == 0;

              if (!v51)
              {
                CGContextEndTransparencyLayer(self->_context);
              }

              CGContextRestoreGState(self->_context);
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v54 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
        v11 = v54;
      }

      while (v54);
    }
  }
}

- (void)drawCharacterStrokeAdornmentRects:(id)rects forColumn:(id)column excludeRange:(_NSRange)range drawingState:(const CRLWPDrawingState *)state
{
  length = range.length;
  location = range.location;
  rectsCopy = rects;
  if ([rectsCopy count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = rectsCopy;
    v9 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v9)
    {
      v10 = *v44;
      do
      {
        v11 = 0;
        do
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v43 + 1) + 8 * v11);
          if ([v12 type] == 5)
          {
            stroke = [v12 stroke];
            v14 = stroke == 0;

            if (v14)
            {
              v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101310DF8();
              }

              v16 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110146;
                v48 = v15;
                v49 = 2082;
                v50 = "[CRLWPRenderer drawCharacterStrokeAdornmentRects:forColumn:excludeRange:drawingState:]";
                v51 = 2082;
                v52 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm";
                v53 = 1024;
                v54 = 676;
                v55 = 2082;
                v56 = "adornment.stroke";
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101310E20();
              }

              v17 = off_1019EDA68;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v37 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                v48 = v15;
                v49 = 2114;
                v50 = v37;
                _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v18 = [NSString stringWithUTF8String:"[CRLWPRenderer drawCharacterStrokeAdornmentRects:forColumn:excludeRange:drawingState:]"];
              v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
              [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:676 isFatal:0 description:"invalid nil value for '%{public}s'", "adornment.stroke"];
            }

            path = [v12 path];
            v21 = path == 0;

            if (v21)
            {
              v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101310E48();
              }

              v23 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110146;
                v48 = v22;
                v49 = 2082;
                v50 = "[CRLWPRenderer drawCharacterStrokeAdornmentRects:forColumn:excludeRange:drawingState:]";
                v51 = 2082;
                v52 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm";
                v53 = 1024;
                v54 = 677;
                v55 = 2082;
                v56 = "adornment.path";
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101310E70();
              }

              v24 = off_1019EDA68;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v38 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                v48 = v22;
                v49 = 2114;
                v50 = v38;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v25 = [NSString stringWithUTF8String:"[CRLWPRenderer drawCharacterStrokeAdornmentRects:forColumn:excludeRange:drawingState:]"];
              v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
              [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:677 isFatal:0 description:"invalid nil value for '%{public}s'", "adornment.path"];
            }

            if (state->var4 || location != 0x7FFFFFFFFFFFFFFFLL || length)
            {
              path2 = [v12 pathFromExcludeRange:location limitSelection:length rubyGlyphRange:?];
            }

            else
            {
              path2 = [v12 path];
            }

            v28 = path2;
            if (path2)
            {
              CGContextSaveGState(self->_context);
              shadow = [v12 shadow];
              v30 = shadow == 0;

              if (!v30)
              {
                shadow2 = [v12 shadow];
                [shadow2 applyToContext:self->_context viewScale:self->_flipShadows flipped:self->_viewScale];

                CGContextBeginTransparencyLayer(self->_context, 0);
              }

              v32 = sub_1005114F4(self->_context);
              sub_1005113CC(self->_context, 1);
              stroke2 = [v12 stroke];
              v34 = v28;
              [stroke2 paintPath:objc_msgSend(v28 inContext:{"CGPath"), self->_context}];

              sub_1005113CC(self->_context, v32);
              shadow3 = [v12 shadow];
              v36 = shadow3 == 0;

              if (!v36)
              {
                CGContextEndTransparencyLayer(self->_context);
              }

              CGContextRestoreGState(self->_context);
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v39 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
        v9 = v39;
      }

      while (v39);
    }
  }
}

- (void)drawAdornmentRects:(id)rects forColumn:(id)column foreground:(BOOL)foreground drawingState:(const CRLWPDrawingState *)state
{
  foregroundCopy = foreground;
  rectsCopy = rects;
  if ([rectsCopy count])
  {
    CGContextSaveGState(self->_context);
    [(CRLWPRenderer *)self p_clipToInteriorClippingPath];
    v58 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = rectsCopy;
    v10 = [v9 countByEnumeratingWithState:&v63 objects:v78 count:16];
    if (v10)
    {
      v11 = *v64;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v64 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v63 + 1) + 8 * i);
          [v13 rect];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          if (!state->var4 && !foregroundCopy)
          {
            fill = [v13 fill];
            if (fill)
            {
              v23 = [v13 type] == 1;

              if (v23)
              {
                fill2 = [v13 fill];
                [fill2 paintRect:self->_context inContext:{v15, v17, v19, v21}];
              }
            }
          }

          if (!state->var4 && foregroundCopy)
          {
            stroke = [v13 stroke];
            if (stroke)
            {
              v26 = [v13 type] == 2;

              if (v26)
              {
                CGContextSetShouldAntialias(self->_context, 1);
                if (v21 == 0.0)
                {
                  Mutable = CGPathCreateMutable();
                  CGPathMoveToPoint(Mutable, 0, v15, v17);
                  v79.origin.x = v15;
                  v79.origin.y = v17;
                  v79.size.width = v19;
                  v79.size.height = v21;
                  MaxX = CGRectGetMaxX(v79);
                  CGPathAddLineToPoint(Mutable, 0, MaxX, v17);
                  stroke2 = [v13 stroke];
                  [stroke2 paintPath:Mutable inContext:self->_context];

                  CGPathRelease(Mutable);
                }

                else
                {
                  stroke3 = [v13 stroke];
                  [stroke3 paintRect:self->_context inContext:{v15, v17, v19, v21}];
                }
              }
            }
          }

          if (foregroundCopy)
          {
            fill3 = [v13 fill];
            if (fill3)
            {
              v32 = [v13 type] == 3;

              if (v32)
              {
                [v58 addObject:v13];
              }
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v63 objects:v78 count:16];
      }

      while (v10);
    }

    CGContextRestoreGState(self->_context);
    if ([v58 count])
    {
      CGContextSaveGState(self->_context);
      CGContextSetShouldAntialias(self->_context, 1);
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v33 = v58;
      v34 = [v33 countByEnumeratingWithState:&v59 objects:v77 count:16];
      if (v34)
      {
        v35 = *v60;
        do
        {
          v36 = 0;
          do
          {
            if (*v60 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v59 + 1) + 8 * v36);
            [v37 rect];
            x = v80.origin.x;
            y = v80.origin.y;
            width = v80.size.width;
            height = v80.size.height;
            MinX = CGRectGetMinX(v80);
            v43 = sub_100122128(MinX, self->_viewScale);
            v81.origin.x = x;
            v81.origin.y = y;
            v81.size.width = width;
            v81.size.height = height;
            v44 = CGRectGetWidth(v81);
            v45 = sub_100122128(v44, self->_viewScale);
            v82.origin.x = x;
            v82.origin.y = y;
            v82.size.width = width;
            v82.size.height = height;
            MinY = CGRectGetMinY(v82);
            v83.origin.x = x;
            v83.origin.y = y;
            v83.size.width = width;
            v83.size.height = height;
            v47 = CGRectGetHeight(v83);
            v48 = objc_opt_class();
            fill4 = [v37 fill];
            v50 = sub_100014370(v48, fill4);

            if (v50)
            {
              CGContextSetFillColorWithColor(self->_context, [v50 CGColor]);
              v84.origin.x = v43;
              v84.origin.y = MinY;
              v84.size.width = v45;
              v84.size.height = v47;
              CGContextFillRect(self->_context, v84);
            }

            else
            {
              v51 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_101310E98();
              }

              v52 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110146;
                v68 = v51;
                v69 = 2082;
                v70 = "[CRLWPRenderer drawAdornmentRects:forColumn:foreground:drawingState:]";
                v71 = 2082;
                v72 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm";
                v73 = 1024;
                v74 = 774;
                v75 = 2082;
                v76 = "colorFill";
                _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_101310EC0();
              }

              v53 = off_1019EDA68;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                v56 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                v68 = v51;
                v69 = 2114;
                v70 = v56;
                _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v54 = [NSString stringWithUTF8String:"[CRLWPRenderer drawAdornmentRects:forColumn:foreground:drawingState:]"];
              v55 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
              [CRLAssertionHandler handleFailureInFunction:v54 file:v55 lineNumber:774 isFatal:0 description:"invalid nil value for '%{public}s'", "colorFill"];
            }

            v36 = v36 + 1;
          }

          while (v34 != v36);
          v34 = [v33 countByEnumeratingWithState:&v59 objects:v77 count:16];
        }

        while (v34);
      }

      CGContextRestoreGState(self->_context);
    }
  }
}

- (BOOL)shouldClipFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state lineDrawFlags:(unint64_t)flags updateRect:(CGRect)rect outClipRect:(CGRect *)clipRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  flagsCopy = flags;
  if (!CGRectIsNull(rect))
  {
    v49.origin.x = state->var2.origin.x;
    v19 = state->var2.origin.y;
    v20 = state->var2.size.width;
    v21 = state->var2.size.height;
    v48 = v49.origin.x;
    v49.origin.y = v19;
    v49.size.width = v20;
    v49.size.height = v21;
    v22 = CGRectGetWidth(v49);
    if (!fragment)
    {
      if (!state->var15)
      {
        v46 = height;
        v32 = v21;
        v33 = v20;
        v34 = v19;
        v47 = 10000000.0;
        goto LABEL_31;
      }

LABEL_44:
      result = 0;
LABEL_45:
      clipRect->origin.x = x;
      clipRect->origin.y = y;
      clipRect->size.width = width;
      clipRect->size.height = height;
      return result;
    }

    v23 = v22;
    v24 = sub_100211DF4(fragment);
    v47 = 10000000.0;
    if ((v24 == 1 || v24 == 2 && (*(fragment + 25) & 8) != 0) && rint(*(fragment + 30)) > rint(v23))
    {
      [state->var1 erasableBounds:0];
      v45 = v50.origin.x;
      v42 = v50.size.width;
      v43 = v50.origin.y;
      rect = v50.size.height;
      MaxX = CGRectGetMaxX(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v26 = CGRectGetMaxX(v51);
      if (v26 >= MaxX)
      {
        v26 = MaxX;
      }

      v47 = v26;
      v52.origin.x = v45;
      v52.size.width = v42;
      v52.origin.y = v43;
      v52.size.height = rect;
      MinX = CGRectGetMinX(v52);
      if (MinX >= x)
      {
        x = MinX;
      }

      y = fmax(y, -10000000.0);
      v28 = 1;
      if ((flagsCopy & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v28 = 0;
      if ((flagsCopy & 2) != 0)
      {
LABEL_21:
        v29 = 0.0;
        if (*(fragment + 488) == 1)
        {
          v29 = *(fragment + 20);
        }

        MaxY = *(fragment + 4) + *(fragment + 17) + v29;
        goto LABEL_26;
      }
    }

    MaxY = CGRectGetMaxY(*(fragment + 40));
LABEL_26:
    v53.origin.x = v48;
    v53.origin.y = v19;
    v53.size.width = v20;
    v53.size.height = v21;
    v31 = CGRectGetMaxY(v53);
    if (!state->var15 && rint(MaxY) > rint(v31))
    {
      v46 = height;
      v32 = v21;
      v33 = v20;
      v34 = v19;
LABEL_31:
      state->var27 = 1;
      v54.origin.x = v48;
      v54.origin.y = v34;
      v54.size.width = v33;
      v54.size.height = v32;
      v44 = v32;
      v35 = CGRectGetMaxY(v54);
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      height = v46;
      v55.size.height = v46;
      v36 = CGRectGetMaxY(v55);
      if (v36 < v35)
      {
        v35 = v36;
      }

      v56.origin.x = v48;
      v56.origin.y = v34;
      v56.size.width = v33;
      v56.size.height = v44;
      MinY = CGRectGetMinY(v56);
      if (MinY >= y)
      {
        y = MinY;
      }

      x = fmax(x, -10000000.0);
      goto LABEL_38;
    }

    if (v28)
    {
      v35 = 10000000.0;
LABEL_38:
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      v38 = CGRectGetMaxX(v57);
      if (v38 >= v47)
      {
        v39 = v47;
      }

      else
      {
        v39 = v38;
      }

      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v40 = CGRectGetMaxY(v58);
      if (v40 >= v35)
      {
        v40 = v35;
      }

      height = fmax(v40 - y, 0.0);
      width = fmax(v39 - x, 0.0);
      result = 1;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101310EE8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101310EFC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101310F84();
  }

  v15 = off_1019EDA68;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v16 = [NSString stringWithUTF8String:"[CRLWPRenderer shouldClipFragment:drawingState:lineDrawFlags:updateRect:outClipRect:]"];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
  [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:848 isFatal:0 description:"Should not try to clip with null update rect"];

  return 0;
}

- (void)p_drawWordMarkingsForFragment:(const void *)fragment color:(id)color ranges:(id)ranges suppressRange:(_NSRange)range drawingState:(const CRLWPDrawingState *)state
{
  rangeCopy = range;
  colorCopy = color;
  rangesCopy = ranges;
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = &xmmword_101464828;
  }

  else
  {
    fragmentCopy = fragment;
  }

  location = *fragmentCopy;
  length = fragmentCopy[1];
  if (location + length > [state->var0 length])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101310FAC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310FC0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311048();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v15 = [NSString stringWithUTF8String:"[CRLWPRenderer p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:917 isFatal:0 description:"Invalid line fragment range"];

    v50.location = [state->var0 range];
    v50.length = v17;
    v49.location = location;
    v49.length = length;
    v18 = NSIntersectionRange(v49, v50);
    location = v18.location;
    length = v18.length;
  }

  CGContextSaveGState(self->_context);
  CGContextSetStrokeColorWithColor(self->_context, [colorCopy CGColor]);
  lengths[0] = 2.5;
  lengths[1] = 4.0 - 2.5;
  CGContextSetLineDash(self->_context, 0.0, lengths, 2uLL);
  v19 = *(fragment + 152);
  v44 = *(fragment + 136);
  v45 = v19;
  v20 = *(fragment + 184);
  v46 = *(fragment + 168);
  v47 = v20;
  v21 = *(fragment + 120);
  v42 = *(fragment + 104);
  v43 = v21;
  v22 = *(fragment + 6);
  var25 = state->var25;
  if (var25 == 0x7FFFFFFFFFFFFFFFuLL)
  {
    var25 = rangeCopy;
  }

  else
  {
    v24 = rangeCopy;
    if (rangeCopy.location != 0x7FFFFFFFFFFFFFFFLL || rangeCopy.length)
    {
      var25 = NSUnionRange(v24, var25);
    }
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v34 = v42;
  v28[2] = sub_1000E43FC;
  v28[3] = &unk_10183B4C0;
  v29 = var25;
  v30 = location;
  v31 = length;
  fragmentCopy2 = fragment;
  stateCopy = state;
  v40 = 0;
  v35 = v43;
  v41 = (v22 & 0x2000) != 0;
  v28[4] = self;
  [rangesCopy enumerateRanges:v28];
  CGContextRestoreGState(self->_context);
}

- (void)p_drawMisspelledWordMarkingsFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state
{
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = &xmmword_101464828;
  }

  else
  {
    fragmentCopy = fragment;
  }

  v8 = [state->var17 rangesIntersecting:{*fragmentCopy, *(fragmentCopy + 1)}];
  v10 = [v8 mutableCopy];

  v9 = +[CRLWPRenderer spellingMarkColor];
  [(CRLWPRenderer *)self p_drawWordMarkingsForFragment:fragment color:v9 ranges:v10 suppressRange:state->var19.location drawingState:state->var19.length, state];
}

- (void)p_drawUngrammaticMarkingsFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state
{
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = &xmmword_101464828;
  }

  else
  {
    fragmentCopy = fragment;
  }

  v8 = [state->var18 rangesIntersecting:{*fragmentCopy, *(fragmentCopy + 1)}];
  v12 = [v8 mutableCopy];

  if (*(fragment + 3) < 0)
  {
    fragmentCopy2 = &xmmword_101464828;
  }

  else
  {
    fragmentCopy2 = fragment;
  }

  v10 = [state->var17 rangesIntersecting:{*fragmentCopy2, *(fragmentCopy2 + 1)}];
  [v12 subtract:v10];
  v11 = +[CRLWPRenderer grammarMarkColor];
  [(CRLWPRenderer *)self p_drawWordMarkingsForFragment:fragment color:v11 ranges:v12 suppressRange:0x7FFFFFFFFFFFFFFFLL drawingState:0, state];
}

- (void)p_drawDictationMarkingsFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state
{
  v6 = +[CRLWPRenderer correctionAndDictationMarkColor];
  [CRLWPRenderer p_drawWordMarkingsForFragment:"p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:" color:fragment ranges:? suppressRange:? drawingState:?];
}

- (void)p_drawAutocorrectionMarkingsFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state
{
  v6 = +[CRLWPRenderer correctionAndDictationMarkColor];
  [CRLWPRenderer p_drawWordMarkingsForFragment:"p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:" color:fragment ranges:? suppressRange:? drawingState:?];
}

- (void)p_drawAdornmentLine:(id)line drawingState:(const CRLWPDrawingState *)state lineFragment:(const void *)fragment lineFragmentStart:(CGPoint)start vertical:(BOOL)vertical
{
  y = start.y;
  x = start.x;
  lineCopy = line;
  if (![lineCopy color])
  {
    goto LABEL_39;
  }

  [lineCopy thickness];
  v14 = v13;
  [lineCopy start];
  v16 = v15;
  v18 = v17;
  lineCount = [lineCopy lineCount];
  [lineCopy length];
  v21 = v20;
  v22 = *(fragment + 7);
  [lineCopy start];
  v23 = x + v16;
  v24 = y + v18;
  v26 = v22 - v25;
  if (v21 >= v26)
  {
    v21 = v26;
  }

  if (state->var10)
  {
    memset(&v62, 0, sizeof(v62));
    CGContextGetCTM(&v62, self->_context);
    v61 = v62;
    if (sub_100139B5C(&v61.a))
    {
      v64.width = v14;
      v64.height = v14;
      v27 = CGContextConvertSizeToDeviceSpace(self->_context, v64);
      if (v27.height >= 0.5 && ([lineCopy allowAntialiasing] & 1) == 0)
      {
        CGContextConvertPointToDeviceSpace(self->_context, state->var2.origin);
        CGContextConvertSizeToDeviceSpace(self->_context, state->var2.size);
        v65.x = v23;
        v65.y = v24;
        v29 = CGContextConvertPointToDeviceSpace(self->_context, v65);
        v28 = v29.x;
        v30 = fmax(rint(v27.height), 1.0);
        v31 = rint(v29.y);
        v32 = 0.0;
        if ((v30 & 0x80000001) == 1)
        {
          v32 = 0.5;
        }

        v33 = v32 + v31;
        v24 = CGContextConvertPointToUserSpace(self[16], *&v28).y;
        v66.width = v27.width;
        v66.height = v30;
        v14 = fabs(CGContextConvertSizeToUserSpace(self[16], v66).height);
      }
    }
  }

  CGContextSetStrokeColorWithColor(self->_context, [lineCopy color]);
  var4 = state->var4;
  if (var4)
  {
    v35.location = [var4 range];
  }

  else
  {
    v35.location = 0x7FFFFFFFFFFFFFFFLL;
    v35.length = 0;
  }

  v36 = v23 + fmax(v21, 0.0);
  if (v35.location == 0x7FFFFFFFFFFFFFFFLL && !v35.length)
  {
    goto LABEL_31;
  }

  if (*(fragment + 3) < 0)
  {
    fragmentCopy = &xmmword_101464828;
  }

  else
  {
    fragmentCopy = fragment;
  }

  v39 = *fragmentCopy;
  v38 = fragmentCopy[1];
  v63.location = *fragmentCopy;
  v63.length = v38;
  v40 = NSIntersectionRange(v35, v63);
  if (!v40.length)
  {
    goto LABEL_39;
  }

  if (v40.length >= v38)
  {
LABEL_31:
    v53 = 0;
    if (!lineCount)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  sub_10020BF7C(fragment, v39, v38, 1, 1, 0, 0, &v62);
  sub_100282B74(&v62);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  if (*&v62.a)
  {
    v62.b = v62.a;
    operator delete(*&v62.a);
  }

  if (v23 >= v42)
  {
    v49 = v23;
  }

  else
  {
    v49 = v42;
  }

  v60 = v49;
  v67.origin.x = v42;
  v67.origin.y = v44;
  v67.size.width = v46;
  v67.size.height = v48;
  MaxX = CGRectGetMaxX(v67);
  if (MaxX >= v36)
  {
    v51 = v36;
  }

  else
  {
    v51 = MaxX;
  }

  if ([lineCopy underline] == 3)
  {
    v52 = sub_1002826EC(v14);
  }

  else
  {
    v52 = v14 * 0.5;
  }

  v57 = v60 + -1.0;
  v58 = v52 + 1.0;
  if (lineCount == 2)
  {
    v59 = (v58 + v58) * 1.5;
  }

  else
  {
    v59 = v58 + v58;
  }

  if (v51 > v57)
  {
    CGContextSaveGState(self->_context);
    v68.size.width = v51 - v57;
    v68.origin.y = v24 - v58;
    v68.origin.x = v60 + -1.0;
    v68.size.height = v59;
    CGContextClipToRect(self->_context, v68);
    v53 = 1;
    if (!lineCount)
    {
LABEL_37:
      if (v53)
      {
        CGContextRestoreGState(self->_context);
      }

      goto LABEL_39;
    }

LABEL_32:
    v54 = 1;
    v55 = v24;
    do
    {
      if ([lineCopy underline] == 3)
      {
        [(CRLWPRenderer *)self p_strokeWavyLineFromPoint:v23 toPoint:v55 width:v36, v24, v14];
      }

      else
      {
        [(CRLWPRenderer *)self p_strokeLineFromPoint:v23 toPoint:v55 width:v36, v24, v14];
      }

      v55 = v55 + v14 * 2.0;
      v24 = v24 + v14 * 2.0;
    }

    while (lineCount > v54++);
    goto LABEL_37;
  }

LABEL_39:
}

- (void)p_drawAdornmentLineBackgroundRect:(id)rect lineDrawFlags:(unint64_t)flags drawingState:(const CRLWPDrawingState *)state bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  flagsCopy = flags;
  rectCopy = rect;
  if ([rectCopy color])
  {
    if ((flagsCopy & 2) != 0)
    {
      CopyWithAlpha = CGColorCreateCopyWithAlpha([rectCopy color], 0.5);
      CGContextSetFillColorWithColor(self->_context, CopyWithAlpha);
      CGColorRelease(CopyWithAlpha);
    }

    else
    {
      CGContextSetFillColorWithColor(self->_context, [rectCopy color]);
    }

    [rectCopy length];
    v14 = v13;
    [rectCopy start];
    v16 = width - v15;
    v17 = v14 >= v16 ? v16 : v14;
    if (v17 > 0.0)
    {
      [rectCopy start];
      v21.origin.x = x + v18;
      v21.origin.y = y;
      v21.size.width = v17;
      v21.size.height = height;
      CGContextFillRect(self->_context, v21);
    }
  }
}

- (void)p_strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width
{
  y = toPoint.y;
  x = toPoint.x;
  v7 = point.y;
  v8 = point.x;
  CGContextSetLineWidth(self->_context, width);
  CGContextMoveToPoint(self->_context, v8, v7);
  CGContextAddLineToPoint(self->_context, x, y);
  context = self->_context;

  CGContextStrokePath(context);
}

- (void)p_strokeWavyLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width
{
  x = toPoint.x;
  y = point.y;
  v8 = point.x;
  v10 = sub_100282704();
  v11 = sub_1002826EC(width);
  v12 = sub_1002826F8(width);
  CGContextSaveGState(self->_context);
  v24.origin.y = y - (v11 + 1.0);
  v24.size.height = v11 + 1.0 + v11 + 1.0;
  v24.origin.x = v8;
  v24.size.width = x - v8;
  CGContextClipToRect(self->_context, v24);
  CGContextBeginPath(self->_context);
  CGContextMoveToPoint(self->_context, v8, y);
  CGContextSetLineWidth(self->_context, v12);
  v22 = fmax((x - v8) * v10, 1.0);
  v13 = (x - v8) / v22 * 0.5;
  v14 = v13 * 0.5;
  v15 = y - v11;
  v16 = y + v11;
  v17 = 0.0;
  do
  {
    v18 = v14 + v8;
    if (x < v14 + v8)
    {
      v18 = x;
    }

    v19 = v13 + v8;
    CGContextAddQuadCurveToPoint(self->_context, v18, v15, v19, y);
    v20 = v14 + v19;
    v8 = v13 + v19;
    CGContextAddQuadCurveToPoint(self->_context, v20, v16, v8, y);
    v17 = v17 + 1.0;
  }

  while (v17 < v22);
  CGContextDrawPath(self->_context, kCGPathStroke);
  context = self->_context;

  CGContextRestoreGState(context);
}

- (void)p_calculateMarkAdornments:(id)adornments drawingState:(const CRLWPDrawingState *)state lineFragment:(const void *)fragment
{
  adornmentsCopy = adornments;
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = &xmmword_101464828;
  }

  else
  {
    fragmentCopy = fragment;
  }

  v8 = fragmentCopy[1];
  range2.location = *fragmentCopy;
  v9 = *(fragment + 17);
  v10 = *(fragment + 19);
  v11 = [state->var26 length];
  v12 = sub_10020BC98(fragment, 0);
  v13 = sub_10026ECB4(v12);
  v14 = CTLineGetGlyphRuns(v13);
  v15 = 0;
  v49 = v14;
  do
  {
    if (v15 >= [v14 count])
    {
      v50 = 0;
      if (!v11)
      {
        goto LABEL_40;
      }

      goto LABEL_15;
    }

    v16 = [v14 objectAtIndexedSubscript:v15];

    StringRange = CTRunGetStringRange(v16);
    location = state->var25.location;
    ++v15;
    v19 = location >= StringRange.location;
    v20 = location - StringRange.location;
  }

  while (!v19 || v20 >= StringRange.length);
  v21 = CTRunGetAttributes(v16);
  v22 = [v21 objectForKeyedSubscript:kCTForegroundColorAttributeName];

  if (v22)
  {
    v50 = [CRLColor colorWithCGColor:v22];
  }

  else
  {
    v50 = 0;
  }

  if (!v11)
  {
    goto LABEL_40;
  }

LABEL_15:
  v23 = 0;
  v24 = NSUnderlineStyleAttributeName;
  v25 = v9 + v10 * 0.5;
  v52 = 1;
  while (1)
  {
    v26 = [state->var26 attribute:NSMarkedClauseSegmentAttributeName atIndex:v23 longestEffectiveRange:&v56 inRange:{0, v11}];
    v27 = [state->var26 attribute:v24 atIndex:v23 longestEffectiveRange:&v55 inRange:{0, v11}];
    if (([v26 BOOLValue] & 1) == 0 && (objc_msgSend(v27, "BOOLValue") & 1) == 0)
    {
      break;
    }

    if (([v26 BOOLValue] & 1) == 0)
    {
      v56 = v55;
    }

    v57.length = *(&v56 + 1);
    v57.location = state->var25.location + v56;
    v58.location = range2.location;
    v58.length = v8;
    v28 = NSIntersectionRange(v57, v58);
    if (v28.length)
    {
      sub_10020BF7C(fragment, v28.location, v28.length, 1, 1, 0, 0, &range2.length);
      length = range2.length;
      if (v54 != range2.length)
      {
        v30 = *range2.length;
        v31 = *(range2.length + 8);
        v33 = *(range2.length + 16);
        v32 = *(range2.length + 24);
        v34 = *(fragment + 5);
        v35 = *(fragment + 19);
        intValue = [v27 intValue];
        if (intValue >= 1)
        {
          v37 = v8;
          x = v30 - v34;
          v39 = v32 + v35;
          v59.origin.x = x;
          v59.origin.y = v31;
          v59.size.width = v33;
          v59.size.height = v32 + v35;
          v40 = CGRectGetMaxY(v59) - *(fragment + 4);
          if (v40 >= v25)
          {
            v41 = v25;
          }

          else
          {
            v41 = v40;
          }

          v42 = v50;
          v43 = [state->var26 attribute:NSUnderlineColorAttributeName atIndex:v23 longestEffectiveRange:0 inRange:{0, v11}];
          cGColor = [v43 CGColor];

          if (cGColor)
          {
            v45 = [CRLColor colorWithCGColor:cGColor];

            v42 = v45;
          }

          if (!v42)
          {
            v42 = +[CRLColor blackColor];
          }

          if (v52)
          {
            width = v33 + -1.0;
          }

          else
          {
            v60.origin.x = x;
            v60.origin.y = v31;
            v60.size.width = v33;
            v60.size.height = v39;
            v61 = CGRectInset(v60, 1.0, 0.0);
            x = v61.origin.x;
            width = v61.size.width;
          }

          LOBYTE(v48) = 1;
          v47 = -[CRLWPAdornmentLine initWithStart:length:color:thickness:lineCount:underline:adornmentLocation:underLineAdjustment:isWhitespace:renderingDelegate:allowAntialiasing:]([CRLWPAdornmentLine alloc], "initWithStart:length:color:thickness:lineCount:underline:adornmentLocation:underLineAdjustment:isWhitespace:renderingDelegate:allowAntialiasing:", [v42 CGColor], 1, 1, 2, 0, 0, x, v41, width, intValue, 0.0, v48);
          [adornmentsCopy addObject:v47];

          v52 = 0;
          v8 = v37;
          v24 = NSUnderlineStyleAttributeName;
        }

        length = range2.length;
      }

      if (length)
      {
        v54 = length;
        operator delete(length);
      }
    }

    v23 = *(&v56 + 1) + v56;
    if (*(&v56 + 1) + v56 >= v11)
    {
      goto LABEL_40;
    }
  }

LABEL_40:
}

- (void)p_drawRun:(const __CTRun *)run range:(id)range attributes:(id)attributes canvasIsInteractive:(BOOL)interactive
{
  LODWORD(v29) = interactive;
  attributesCopy = attributes;
  CGContextSaveGState(self->_context);
  v7 = [attributesCopy objectForKeyedSubscript:kCTFontAttributeName];

  v8 = CTFontCopyPostScriptName(v7);
  v9 = CFEqual(v8, @"AppleColorEmoji");
  CFRelease(v8);
  v10 = [attributesCopy objectForKeyedSubscript:@"CRLWPCharacterFillAttribute"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101311070();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101311084();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131110C();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v12 = [NSString stringWithUTF8String:"[CRLWPRenderer p_drawRun:range:attributes:canvasIsInteractive:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1331 isFatal:0 description:"unexpected color fill"];
    }
  }

  v34 = [attributesCopy objectForKeyedSubscript:{@"CRLWPCharacterStrokeAttribute", v29}];
  if (v10)
  {
    v31 = [v10 fillType] != 0;
  }

  else
  {
    v31 = 0;
  }

  cGColor = [attributesCopy objectForKeyedSubscript:kCTForegroundColorAttributeName];

  if (cGColor)
  {
    v15 = sub_1000CD54C(cGColor);
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_20:
    v16 = 0;
    goto LABEL_22;
  }

  v15 = 1;
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_17:
  if ([v10 fillType])
  {
    v16 = 1;
  }

  else
  {
    v16 = [v10 fillType] != 4;
  }

LABEL_22:
  v17 = sub_100510804(self->_context);
  v18 = objc_opt_class();
  v19 = [attributesCopy objectForKeyedSubscript:@"CRLWPInvisibleTextAttribute"];
  v20 = sub_100013F00(v18, v19);
  bOOLValue = [v20 BOOLValue];

  if (v9)
  {
    if (v34)
    {
      v22 = 1;
    }

    else
    {
      v22 = v16;
    }

    if (v22)
    {
      if (cGColor)
      {
        CopyWithAlpha = CGColorCreateCopyWithAlpha(cGColor, 1.0);
        cGColor = CFAutorelease(CopyWithAlpha);
      }

      else
      {
        v26 = +[CRLColor blackColor];
        cGColor = [v26 CGColor];
      }
    }

LABEL_43:
    v25 = 0;
    if (cGColor)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v17)
  {
    if (!v31 && !v15)
    {
      goto LABEL_43;
    }

    if (v31 || !v15 || v34)
    {
      if (cGColor)
      {
        v24 = CGColorCreateCopyWithAlpha(cGColor, 0.0);
        cGColor = CFAutorelease(v24);
      }

      else
      {
        v27 = +[CRLColor clearColor];
        cGColor = [v27 CGColor];
      }

      CGContextSetTextDrawingMode(self->_context, kCGTextInvisible);
      goto LABEL_43;
    }
  }

  else if (!v16)
  {
    v25 = v15 & bOOLValue & (v30 ^ 1);
    if (cGColor)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v25 = 1;
  if (cGColor)
  {
    goto LABEL_45;
  }

LABEL_44:
  v28 = +[CRLColor blackColor];
  cGColor = [v28 CGColor];

LABEL_45:
  CGContextSetFillColorWithColor(self->_context, cGColor);
  if ((v25 & 1) == 0)
  {
    CTRunDraw(run, self->_context, range);
  }

  CGContextRestoreGState(self->_context);
}

- (void)p_drawTextInRunsForLine:(CRLWPLineRef *)line fragment:(const void *)fragment state:(const CRLWPDrawingState *)state listLabel:(BOOL)label tateChuYoko:(BOOL)yoko ruby:(BOOL)ruby baseRange:(_NSRange)range isFirstLineRef:(BOOL)self0
{
  rubyCopy = ruby;
  yokoCopy = yoko;
  v83 = sub_10050FEFC(self->_context);
  v11 = sub_10026ECB4(line);
  v88 = CTLineGetGlyphRuns(v11);
  v91 = 0;
  location = range.location;
  length = range.length;
  v85 = ref & ~(yokoCopy || rubyCopy);
  if (v83)
  {
    labelCopy = label;
  }

  else
  {
    labelCopy = 1;
  }

  v81 = labelCopy;
  *&v12 = 67109378;
  v77 = v12;
  while (1)
  {
    if (v91 >= [v88 count])
    {
      goto LABEL_106;
    }

    v14 = [v88 objectAtIndexedSubscript:?];

    GlyphCount = CTRunGetGlyphCount(v14);
    if ((GlyphCount - 65537) <= 0xFFFFFFFFFFFEFFFFLL)
    {
      break;
    }

    v16 = CTRunGetAttributes(v14);
    v17 = [v16 objectForKeyedSubscript:@"CRLWPRubySpacingRunAttribute"];
    v86 = v17;
    if (v17)
    {
      bOOLValue = [v17 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v19 = [v16 objectForKeyedSubscript:@"__wpAttachmentMap"];

    StringRange = CTRunGetStringRange(v14);
    v21 = StringRange.location;
    v22 = StringRange.length;
    if (v85)
    {
      v23 = sub_10020B5E0(fragment);
      v21 = [v23 charRangeMappedToStorage:{StringRange.location, StringRange.length}];
      v22 = v24;
    }

    if (yokoCopy)
    {
      v25 = sub_10020B5E0(fragment);
      location = [v25 charRangeMappedToStorage:{location, length}];
      length = v26;
    }

    if (v19)
    {
      v27 = 1;
    }

    else
    {
      v27 = bOOLValue;
    }

    if (v27 == 1)
    {
      if (v19)
      {
        [v83 beginPrimaryTextRunWithRange:v21 hasActualContents:{v22, 0}];
        [v83 endPrimaryTextRunWithRange:v21 hasActualContents:{v22, 0}];
      }

      goto LABEL_69;
    }

    if (!v81)
    {
      if (v85)
      {
        [v83 beginPrimaryTextRunWithRange:v21 hasActualContents:{v22, 1}];
      }

      else if (rubyCopy)
      {
        [v83 beginRubyRunWithRange:v21 baseTextRange:{v22, location, length}];
      }

      else if (yokoCopy)
      {
        [v83 beginTateChuYokoRunWithRange:v21 baseTextRange:{v22, location, length}];
      }

      else
      {
        [v83 beginAncillaryTextRunWithRange:v21 baseTextRange:{v22, location, length}];
      }
    }

    CGContextSaveGState(self->_context);
    v28 = sub_10020BDE8(v16);
    memset(&v99, 0, sizeof(v99));
    CTRunGetTextMatrix(&v99, v14);
    Status = CTRunGetStatus(v14);
    v30 = 0.0;
    if ((*(fragment + 25) & 0x20) != 0)
    {
      if (yokoCopy)
      {
        selfCopy2 = self;
        CGContextRotateCTM(self->_context, -1.57079633);
        v31 = 0.0;
        goto LABEL_33;
      }

      v49 = Status;
      ascent[0] = 0.0;
      leading = 0.0;
      descent = 0.0;
      v100.location = 0;
      v100.length = 0;
      TypographicBounds = CTRunGetTypographicBounds(v14, v100, ascent, &descent, &leading);
      if ((v49 & 4) != 0)
      {
        v51 = [v16 objectForKeyedSubscript:{kCTHorizontalInVerticalFormsAttributeName, TypographicBounds}];
        v52 = v51 == 0;

        context = self->_context;
        if (v52)
        {
          CGContextRotateCTM(self->_context, -1.57079633);
        }

        else
        {
          CGAffineTransformMakeRotation(&transform, 1.57079633);
          CGContextSetTextMatrix(context, &transform);
        }

        v31 = 0.0;
        goto LABEL_30;
      }

      v30 = (ascent[0] - descent) * -0.5;
    }

    v31 = v28;
    v28 = 0.0;
LABEL_30:
    selfCopy2 = self;
LABEL_33:
    v99.tx = v28 + v99.tx;
    v99.ty = v31 + v99.ty;
    CGContextSetTextPosition(selfCopy2->_context, v99.tx, v30 + v99.ty);
    v33 = selfCopy2->_context;
    CGAffineTransformMakeScale(&transform, 1.0, -1.0);
    CGContextConcatCTM(v33, &transform);
    v34 = selfCopy2->_context;
    v35 = *&line->var4.c;
    *&transform.a = *&line->var4.a;
    *&transform.c = v35;
    *&transform.tx = *&line->var4.tx;
    CGContextConcatCTM(v34, &transform);
    if (state->var9 || ([v16 objectForKeyedSubscript:@"CRLWPShadow"], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v80 = 0;
    }

    else
    {
      v80 = v36;
      [v36 applyToContext:self->_context viewScale:self->_flipShadows flipped:self->_viewScale];
    }

    var4 = state->var4;
    if (var4)
    {
      superRange = [var4 superRange];
      v40 = v39;
      var4 = state->var4;
    }

    else
    {
      superRange = 0x7FFFFFFFFFFFFFFFLL;
      v40 = 0;
    }

    type = [var4 type];
    v42 = state->var4;
    if (!v42)
    {
LABEL_51:
      var23 = state->var23;
      if (var23 == 0x7FFFFFFFFFFFFFFFuLL)
      {
        v45 = 0;
      }

      else
      {
        v102.location = 0;
        v102.length = GlyphCount;
        v46 = NSIntersectionRange(var23, v102);
        v45 = v46.location;
        GlyphCount = v46.length;
      }

      [(CRLWPRenderer *)self p_drawRun:v14 range:v45 attributes:GlyphCount canvasIsInteractive:v16, state->var10];
      goto LABEL_55;
    }

    if (yokoCopy)
    {
      if ((type - 1) <= 1)
      {
        goto LABEL_51;
      }
    }

    else if (location >= superRange && &location[-superRange] < v40 || location == superRange && v40 == length)
    {
      goto LABEL_51;
    }

    if (state->var23.location == 0x7FFFFFFFFFFFFFFFLL && !state->var23.length)
    {
      if ([v42 visualRangeCount] < 2)
      {
        v78 = [[CRLWPRangeArray alloc] initWithRange:superRange, v40];
      }

      else
      {
        visualRanges = [state->var4 visualRanges];
        v78 = [visualRanges copy];
      }

      sub_1000E7C60(ascent, GlyphCount);
      v101.location = 0;
      v101.length = GlyphCount;
      CTRunGetStringIndices(v14, v101, *&ascent[0]);
      v89 = objc_alloc_init(NSMutableIndexSet);
      fragmentCopy = &xmmword_101464828;
      if (*(fragment + 3) >= 0)
      {
        fragmentCopy = fragment;
      }

      v55 = [(CRLWPRangeArray *)v78 intersection:*fragmentCopy, *(fragmentCopy + 1)];
      v56 = [v55 mutableCopy];

      for (i = 0; [v56 rangeCount] > i; ++i)
      {
        v58 = sub_10020B5E0(fragment);
        v59 = [v56 rangeAtIndex:i];
        v61 = [v58 charRangeMappedFromStorage:{v59, v60}];
        [v56 replaceRangeAtIndex:i withRange:{v61, v62}];
      }

      if (GlyphCount >= 1)
      {
        v63 = 0;
        while (1)
        {
          if (!yokoCopy)
          {
            goto LABEL_89;
          }

          var3 = line->var3;
          v65 = location >= var3;
          v66 = &location[-var3];
          if (!v65)
          {
            break;
          }

LABEL_90:
          if ([v56 containsCharacterAtIndex:&v66[*(*&ascent[0] + 8 * v63)]])
          {
            [v89 addIndex:v63];
          }

          if (GlyphCount == ++v63)
          {
            goto LABEL_93;
          }
        }

        v67 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101311134();
        }

        v68 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          LODWORD(transform.a) = 67109890;
          HIDWORD(transform.a) = v67;
          LOWORD(transform.b) = 2082;
          *(&transform.b + 2) = "[CRLWPRenderer p_drawTextInRunsForLine:fragment:state:listLabel:tateChuYoko:ruby:baseRange:isFirstLineRef:]";
          WORD1(transform.c) = 2082;
          *(&transform.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm";
          WORD2(transform.d) = 1024;
          *(&transform.d + 6) = 1592;
          _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected string offset for tate chu yoko run", &transform, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131115C();
        }

        v69 = off_1019EDA68;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v72 = +[CRLAssertionHandler packedBacktraceString];
          *&transform.a = __PAIR64__(v67, v77);
          LOWORD(transform.b) = 2114;
          *(&transform.b + 2) = v72;
          _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &transform, 0x12u);
        }

        v70 = [NSString stringWithUTF8String:"[CRLWPRenderer p_drawTextInRunsForLine:fragment:state:listLabel:tateChuYoko:ruby:baseRange:isFirstLineRef:]"];
        v71 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
        [CRLAssertionHandler handleFailureInFunction:v70 file:v71 lineNumber:1592 isFatal:0 description:"unexpected string offset for tate chu yoko run"];

LABEL_89:
        v66 = 0;
        goto LABEL_90;
      }

LABEL_93:
      firstIndex = [v89 firstIndex];
      v74 = 0;
      v75 = firstIndex;
      do
      {
        if (v75 == &firstIndex[v74])
        {
          ++v74;
        }

        else
        {
          CGContextSaveGState(self->_context);
          [(CRLWPRenderer *)self p_drawRun:v14 range:firstIndex attributes:v74 canvasIsInteractive:v16, state->var10];
          CGContextRestoreGState(self->_context);
          firstIndex = v75;
          v74 = 1;
        }

        v75 = [v89 indexGreaterThanIndex:v75];
      }

      while (firstIndex != 0x7FFFFFFFFFFFFFFFLL);

      if (*&ascent[0])
      {
        ascent[1] = ascent[0];
        operator delete(*&ascent[0]);
      }
    }

LABEL_55:
    CGContextRestoreGState(self->_context);
    v47 = self->_context;
    v48 = *&CGAffineTransformIdentity.c;
    *&transform.a = *&CGAffineTransformIdentity.a;
    *&transform.c = v48;
    *&transform.tx = *&CGAffineTransformIdentity.tx;
    CGContextSetTextMatrix(v47, &transform);
    if (!v81)
    {
      if (v85)
      {
        [v83 endPrimaryTextRunWithRange:v21 hasActualContents:{v22, 1}];
      }

      else if (rubyCopy)
      {
        [v83 endRubyRunWithRange:v21 baseTextRange:{v22, location, length}];
      }

      else if (yokoCopy)
      {
        [v83 endTateChuYokoRunWithRange:v21 baseTextRange:{v22, location, length}];
      }

      else
      {
        [v83 endAncillaryTextRunWithRange:v21 baseTextRange:{v22, location, length}];
      }
    }

LABEL_69:
    ++v91;
  }

  if (qword_101AD5A08 != -1)
  {
    sub_101311184();
  }

  v76 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    LODWORD(v99.a) = 134217984;
    *(&v99.a + 4) = GlyphCount;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "bad glyph count: %ld", &v99, 0xCu);
  }

LABEL_106:
}

- (void)p_drawAttachmentGlyphAtPosition:(id)position fragment:(const void *)fragment
{
  v5 = floor(position.var1) + 0.5;
  v6 = -*(fragment + 15) - *(fragment + 18);
  v7 = v5 - 4.80000019 * 0.5;
  [(CRLWPRenderer *)self p_strokeLineFromPoint:position.var0 toPoint:v5 width:v6, v5, *(fragment + 17) + *(fragment + 19) + *(fragment + 20), 1.0];
  context = self->_context;
  v9 = v7;
  v10 = v6;
  v11 = 0x4013333340000000;
  v12 = 0x4013333340000000;

  CGContextFillEllipseInRect(context, *&v9);
}

- (void)p_drawInvisiblesAdornments:(id)adornments lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state
{
  adornmentsCopy = adornments;
  var12 = state->var12;
  font = [adornmentsCopy font];
  flippedFont = [adornmentsCopy flippedFont];
  v11 = *(fragment + 4);
  v12 = *(fragment + 5);
  CGContextSaveGState(self->_context);
  context = self->_context;
  if ((*(fragment + 25) & 0x20) != 0)
  {
    v17 = sub_10020BC98(fragment, 0);
    CGContextTranslateCTM(context, v12 + *(v17 + 8), v11);
  }

  else
  {
    v14 = *(fragment + 15);
    v15 = *(fragment + 17);
    v16 = sub_10020BC98(fragment, 0);
    CGContextTranslateCTM(context, v12 + *(v16 + 8), v11 + (v15 - v14 + *&qword_1019EFFF0) * 0.5);
  }

  v37 = var12;
  CGContextSetTextPosition(self->_context, 0.0, 0.0);
  CGContextSetFillColorWithColor(self->_context, state->var6);
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = &xmmword_101464828;
  }

  else
  {
    fragmentCopy = fragment;
  }

  v35 = *fragmentCopy;
  v36 = *(fragmentCopy + 1);
  positionCount = [adornmentsCopy positionCount];
  count = [adornmentsCopy flippedPositionCount];
  if ([adornmentsCopy positionCount] != positionCount || objc_msgSend(adornmentsCopy, "flippedPositionCount") != count)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013111AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013111C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311248();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v21 = [NSString stringWithUTF8String:"[CRLWPRenderer p_drawInvisiblesAdornments:lineFragment:state:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1693 isFatal:0 description:"Invisibles mismatch"];
  }

  if ([adornmentsCopy positionCount] == positionCount && objc_msgSend(adornmentsCopy, "flippedPositionCount") == count)
  {
    if (!v37)
    {
      v24 = state->var3;
      v25 = v24;
      if (!v36 || ![v24 isValid] || !objc_msgSend(v25, "containsCharacterAtIndex:", v36 + v35 - 1))
      {

        goto LABEL_33;
      }

      v26 = [adornmentsCopy type] == 2;

      if (!v26)
      {
        goto LABEL_33;
      }
    }

    if (positionCount | count)
    {
      v23 = self->_context;
      CGAffineTransformMakeScale(&transform, 1.0, -1.0);
      CGContextConcatCTM(v23, &transform);
      if ((*(fragment + 25) & 0x20) != 0)
      {
        if (positionCount)
        {
          sub_1000E7D5C(&transform, positionCount);
          v27 = 0;
          v28 = positionCount;
          do
          {
            BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(font, kCTFontOrientationHorizontal, ([adornmentsCopy glyphs] + v27), 0, 1);
            y = BoundingRectsForGlyphs.origin.y;
            height = BoundingRectsForGlyphs.size.height;
            positions = [adornmentsCopy positions];
            v32 = *&transform.a + 8 * v27;
            *v32 = positions[v27];
            *(v32 + 8) = -(y - height * -0.5);
            v27 += 2;
            --v28;
          }

          while (v28);
          glyphs = [adornmentsCopy glyphs];
          CTFontDrawGlyphs(font, glyphs, *&transform.a, positionCount, self->_context);
          if (*&transform.a)
          {
            transform.b = transform.a;
            operator delete(*&transform.a);
          }
        }
      }

      else
      {
        if (positionCount)
        {
          CTFontDrawGlyphs(font, [adornmentsCopy glyphs], objc_msgSend(adornmentsCopy, "positions"), positionCount, self->_context);
        }

        if (count)
        {
          CTFontDrawGlyphs(v34, [adornmentsCopy flippedGlyphs], objc_msgSend(adornmentsCopy, "flippedPositions"), count, self->_context);
        }
      }
    }
  }

LABEL_33:
  CGContextRestoreGState(self->_context);
}

- (void)p_drawHiddenDeletionsAdornments:(id)adornments lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state
{
  adornmentsCopy = adornments;
  font = [adornmentsCopy font];
  v9 = *(fragment + 4);
  v10 = *(fragment + 5);
  CGContextSaveGState(self->_context);
  context = self->_context;
  v12 = sub_10020BC98(fragment, 0);
  CGContextTranslateCTM(context, v10 + *(v12 + 8), v9);
  CGContextSetTextPosition(self->_context, 0.0, 0.0);
  CGContextSetFillColorWithColor(self->_context, [adornmentsCopy color]);
  positionCount = [adornmentsCopy positionCount];
  if (positionCount == [adornmentsCopy glyphCount])
  {
    positionCount2 = [adornmentsCopy positionCount];
    if (positionCount2)
    {
      v15 = self->_context;
      CGAffineTransformMakeScale(&v16, 1.0, -1.0);
      CGContextConcatCTM(v15, &v16);
      CTFontDrawGlyphs(font, [adornmentsCopy glyphs], objc_msgSend(adornmentsCopy, "positions"), positionCount2, self->_context);
    }
  }

  CGContextRestoreGState(self->_context);
}

- (void)p_drawAttachmentAdornments:(id)adornments lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state
{
  adornmentsCopy = adornments;
  var12 = state->var12;
  var11 = state->var11;
  v10 = *(fragment + 4);
  v11 = *(fragment + 5);
  CGContextSaveGState(self->_context);
  context = self->_context;
  v13 = sub_10020BC98(fragment, 0);
  CGContextTranslateCTM(context, v11 + *(v13 + 8), v10);
  CGContextSetFillColorWithColor(self->_context, state->var6);
  CGContextSetStrokeColorWithColor(self->_context, state->var6);
  attachmentPositionCount = [adornmentsCopy attachmentPositionCount];
  attachmentPositions = [adornmentsCopy attachmentPositions];
  for (i = state->var3; attachmentPositionCount; --attachmentPositionCount)
  {
    if (var12 || ([i containsCharacterAtIndex:*attachmentPositions], !var11) && -[CRLWPRenderer p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:state:](self, "p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:state:", *attachmentPositions, state))
    {
      [(CRLWPRenderer *)self p_drawAttachmentGlyphAtPosition:*attachmentPositions fragment:attachmentPositions[1], fragment];
    }

    attachmentPositions += 2;
  }

  CGContextRestoreGState(self->_context);
}

- (void)p_drawAdornmentGlyphs:(id)glyphs lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state
{
  glyphsCopy = glyphs;
  v43 = glyphsCopy;
  font = [glyphsCopy font];
  color = [glyphsCopy color];
  positionCount = [glyphsCopy positionCount];
  positions = [glyphsCopy positions];
  glyphCount = [glyphsCopy glyphCount];
  glyphs = [glyphsCopy glyphs];
  if (positionCount == glyphCount)
  {
    v14 = glyphs;
    v15 = *(fragment + 4);
    v44 = *(fragment + 5);
    [glyphsCopy textPosition];
    v17 = v16;
    v19 = v18;
    if ([glyphsCopy shouldRotate])
    {
      [glyphsCopy ascent];
      v21 = v20;
      [glyphsCopy descent];
      v23 = v22;
      [glyphsCopy ascent];
      [glyphsCopy advance];
      if (positionCount)
      {
        v25 = v24;
        v26 = 0;
        v27 = v21 + v23;
        v28 = v15 + v19;
        v29 = 1;
        do
        {
          CGContextSaveGState(self->_context);
          CGContextSetFillColorWithColor(self->_context, color);
          p_x = &positions[v26].x;
          v32 = *p_x;
          v31 = p_x[1];
          v33 = sub_10020BC98(fragment, 0);
          CGContextTranslateCTM(self->_context, v32 + v17 + v44 + *(v33 + 8), v28 + v31 - v27);
          CGContextSetTextPosition(self->_context, 0.0, 0.0);
          context = self->_context;
          CGAffineTransformMakeScale(&transform, 1.0, -1.0);
          CGContextConcatCTM(context, &transform);
          v35 = self->_context;
          CGAffineTransformMakeTranslation(&transform, v25, -v27);
          CGContextConcatCTM(v35, &transform);
          v36 = self->_context;
          CGAffineTransformMakeRotation(&transform, 1.57079633);
          CGContextConcatCTM(v36, &transform);
          *&transform.a = CGPointZero;
          CTFontDrawGlyphs(font, &v14[v26], &transform, 1uLL, self->_context);
          CGContextRestoreGState(self->_context);
          v26 = v29;
        }

        while (positionCount > v29++);
      }
    }

    else
    {
      CGContextSaveGState(self->_context);
      CGContextSetFillColorWithColor(self->_context, color);
      v41 = sub_10020BC98(fragment, 0);
      CGContextTranslateCTM(self->_context, v17 + v44 + *(v41 + 8), v15 + v19);
      v42 = self->_context;
      CGAffineTransformMakeScale(&transform, 1.0, -1.0);
      CGContextConcatCTM(v42, &transform);
      CGContextSetTextPosition(self->_context, 0.0, 0.0);
      CTFontDrawGlyphs(font, v14, positions, positionCount, self->_context);
      CGContextRestoreGState(self->_context);
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101311270();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101311284();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131130C();
    }

    v38 = off_1019EDA68;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v39 = [NSString stringWithUTF8String:"[CRLWPRenderer p_drawAdornmentGlyphs:lineFragment:state:]"];
    v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRenderer.mm"];
    [CRLAssertionHandler handleFailureInFunction:v39 file:v40 lineNumber:1834 isFatal:0 description:"mismatched adornment counts"];
  }
}

- (void)p_drawAdornments:(id)adornments lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state
{
  adornmentsCopy = adornments;
  type = [adornmentsCopy type];
  if (type - 1 < 2)
  {
    if (!state->var8 && state->var10 && sub_100211DF4(fragment))
    {
      [(CRLWPRenderer *)self p_drawInvisiblesAdornments:adornmentsCopy lineFragment:fragment state:state];
    }
  }

  else if (type == 3)
  {
    if (!state->var8 && state->var10 && sub_100211DF4(fragment))
    {
      [(CRLWPRenderer *)self p_drawAttachmentAdornments:adornmentsCopy lineFragment:fragment state:state];
    }
  }

  else if (type == 6)
  {
    if (!state->var8 && state->var10)
    {
      [(CRLWPRenderer *)self p_drawHiddenDeletionsAdornments:adornmentsCopy lineFragment:fragment state:state];
    }
  }

  else
  {
    [(CRLWPRenderer *)self p_drawAdornmentGlyphs:adornmentsCopy lineFragment:fragment state:state];
  }
}

- (void)p_drawInvisiblesBreakLine:(id)line lineFragment:(const void *)fragment state:(const CRLWPDrawingState *)state
{
  lineCopy = line;
  var12 = state->var12;
  fragmentCopy = &xmmword_101464828;
  if (*(fragment + 3) >= 0)
  {
    fragmentCopy = fragment;
  }

  v11 = *fragmentCopy;
  v10 = *(fragmentCopy + 1);
  v12 = state->var3;
  v13 = v10 != 0;
  if (!var12 && v10)
  {
    if (![v12 isValid])
    {
      goto LABEL_12;
    }

    v13 = [v12 containsCharacterAtIndex:v10 + v11 - 1];
  }

  if (lineCopy && v13)
  {
    v15 = *(fragment + 4);
    v14 = *(fragment + 5);
    CGContextSaveGState(self->_context);
    CGContextTranslateCTM(self->_context, v14, v15);
    v16 = sub_10020BD48(fragment);
    v17 = v16;
    if (v16)
    {
      v18 = [v16 copyWithColor:state->var6];
      [(CRLWPRenderer *)self p_drawAdornmentLine:v18 drawingState:state lineFragment:fragment lineFragmentStart:0 vertical:CGPointZero.x, CGPointZero.y];
    }

    CGContextRestoreGState(self->_context);
  }

LABEL_12:
}

- (void)p_drawListLabelForFragment:(const void *)fragment drawingState:(const CRLWPDrawingState *)state lineDrawFlags:(unint64_t)flags
{
  flagsCopy = flags;
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = &xmmword_101464828;
  }

  else
  {
    fragmentCopy = fragment;
  }

  v10 = *fragmentCopy;
  v11 = *(fragmentCopy + 1);
  v12 = sub_10020BCF4(fragment);
  type = [state->var4 type];
  if ([state->var4 isValid] && ((v14 = objc_msgSend(state->var4, "containsCharacterAtIndex:", v10), type == 2) ? (v15 = v14) : (v15 = 0), (v15 & 1) == 0))
  {
    if ([state->var4 start] != v10)
    {
      goto LABEL_26;
    }

    v16 = (type - 3) < 0xFFFFFFFFFFFFFFFELL;
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    if (!v12)
    {
      goto LABEL_26;
    }
  }

  if (!v16 && (!state->var14 || (flagsCopy & 0x100) != 0 || v11 != 1 || (sub_10027E2F0([state->var0 characterAtIndex:v10]) & 1) == 0))
  {
    v17 = sub_10050FEFC(self->_context);
    [v17 beginListLabel];
    CGContextSaveGState(self->_context);
    if (state->var9)
    {
      v18 = 0;
    }

    else
    {
      shadow = [v12 shadow];
      v18 = shadow;
      if (shadow && [shadow isEnabled])
      {
        [v18 applyToContext:self->_context viewScale:self->_flipShadows flipped:self->_viewScale];
      }
    }

    textLine = [v12 textLine];
    if (textLine)
    {
      v21 = sub_100210FD0(fragment);
      CGContextTranslateCTM(self->_context, v21, v22);
      [(CRLWPRenderer *)self p_setCTMAndTextPositionForFragment:fragment state:state];
      sub_10026EB3C(v24, textLine, 0x7FFFFFFFFFFFFFFFLL, 0, 0, CGPointZero.x, CGPointZero.y);
      LOBYTE(v23) = 0;
      -[CRLWPRenderer p_drawTextInRunsForLine:fragment:state:listLabel:tateChuYoko:ruby:baseRange:isFirstLineRef:](self, "p_drawTextInRunsForLine:fragment:state:listLabel:tateChuYoko:ruby:baseRange:isFirstLineRef:", v24, fragment, state, 1, [v12 isLabelTateChuYoko], 0, v10, 0, v23);
      sub_10026EC38(v24);
    }

    CGContextRestoreGState(self->_context);
    [v17 endListLabel];
  }

LABEL_26:
}

- (void)p_setCTMAndTextPositionForFragment:(const void *)fragment state:(const CRLWPDrawingState *)state
{
  if (state->var10 && (*(fragment + 13) & 0x880) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    CGContextGetCTM(&v11, self->_context);
    v10 = v11;
    if (sub_100139B5C(&v10.a))
    {
      memset(&v10, 0, sizeof(v10));
      v6 = vrndxq_f64(*&v11.tx);
      transform = v11;
      CGAffineTransformInvert(&v10, &transform);
      context = self->_context;
      *&t1.a = *&v11.a;
      *&t1.c = *&v11.c;
      *&t1.tx = v6;
      t2 = v10;
      CGAffineTransformConcat(&transform, &t1, &t2);
      CGContextConcatCTM(context, &transform);
    }
  }

  CGContextSetTextPosition(self->_context, 0.0, 0.0);
}

@end