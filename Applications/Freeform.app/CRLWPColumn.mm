@interface CRLWPColumn
+ (BOOL)partitionedAttachmentStartsAtCharIndex:(unint64_t)a3 withColumns:(id)a4;
+ (CGPoint)connectionLinePointForChangeRange:(_NSRange)a3 withColumns:(id)a4 layoutTarget:(id)a5;
+ (CGPoint)p_pinPoint:(CGPoint)a3 toRect:(CGRect)a4;
+ (CGPoint)pinPoint:(CGPoint)a3 toBottomOfLineFragmentInColumns:(id)a4;
+ (CGPoint)pinToNaturalBounds:(CGPoint)a3 andLastLineFragment:(BOOL)a4 inLayoutTarget:(id)a5;
+ (CGRect)boundsRectForSelection:(id)a3 columnArray:(id)a4 includeRuby:(BOOL)a5 includePaginatedAttachments:(BOOL)a6;
+ (CGRect)caretRectForInsertionPoint:(id)a3 withColumns:(id)a4;
+ (CGRect)columnRectForRange:(_NSRange)a3 withColumns:(id)a4;
+ (CGRect)frameBoundsOfColumns:(id)a3;
+ (CGRect)labelRectForCharIndex:(unint64_t)a3 withColumns:(id)a4;
+ (CGRect)rectForSelection:(id)a3 withColumns:(id)a4;
+ (CGRect)rectForSelection:(id)a3 withColumns:(id)a4 useParagraphModeRects:(BOOL)a5;
+ (_NSRange)charRangeForPencilAnnotationStartPoint:(CGPoint)a3 toEndPoint:(CGPoint)a4 inLayoutTarget:(id)a5 onSingleLineFragment:(BOOL)a6;
+ (_NSRange)rangeOfColumns:(id)a3;
+ (id)closestColumnInColumnsArray:(id)a3 forPoint:(CGPoint)a4 ignoreEmptyColumns:(BOOL)a5 ignoreDrawableOnlyColumns:(BOOL)a6;
+ (id)columnForCharIndex:(unint64_t)a3 allowEndOfColumn:(BOOL)a4 withColumns:(id)a5;
+ (id)commentKnobBaseOriginForHighlightAtTextRange:(_NSRange)a3 withColumns:(id)a4 positionForRTL:(BOOL)a5;
+ (id)contentRectsToAvoidPencilAnnotationOverlapWithColumns:(id)a3;
+ (id)pathForHighlightWithRange:(_NSRange)a3 columnArray:(id)a4 pathStyle:(int)a5;
+ (id)selectionRectsforColumns:(id)a3 forSelection:(id)a4;
+ (id)smartFieldWithAttributeKind:(unint64_t)a3 inColumnArray:(id)a4 atPoint:(CGPoint)a5;
+ (unint64_t)charIndexForPoint:(CGPoint)a3 inColumnsArray:(id)a4 allowPastBreak:(BOOL)a5 allowNotFound:(BOOL)a6 pastCenterGoesToNextChar:(BOOL)a7 constrainToAscentAndDescent:(BOOL)a8 ignoreEmptyColumns:(BOOL)a9 isAtEndOfLine:(BOOL *)a10 leadingEdge:(BOOL *)a11;
+ (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 inLayoutTarget:(id)a4;
+ (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 isTail:(BOOL)a4 selectionType:(unint64_t)a5 inLayoutTarget:(id)a6;
+ (unint64_t)charIndexFromPoint:(CGPoint)a3 allowPastBreak:(BOOL)a4 allowNotFound:(BOOL)a5 pastCenterGoesToNextChar:(BOOL)a6 constrainToAscentAndDescent:(BOOL)a7 isAtEndOfLine:(BOOL *)a8 leadingEdge:(BOOL *)a9 ignoreEmptyColumns:(BOOL)a10 inLayoutTarget:(id)a11;
+ (void)calculateSelectionPinRectsForSelection:(id)a3 inColumns:(id)a4 outSelectionPinRect:(CGRect *)a5 outSelectionTailPinRect:(CGRect *)a6;
+ (void)populateHeadAndTailCharIndicesInSelection:(id)a3 forColumns:(id)a4;
- ($D12B6492C59FD4124ECBBA05678185BF)lineMetricsAtCharIndex:(SEL)a3 allowEndOfLine:(unint64_t)a4;
- (BOOL)lastLineIsEmptyAndHasListLabel;
- (BOOL)p_isFirstPartitionForCharIndex:(unint64_t)a3;
- (BOOL)requiresGlyphVectorsForHeightMeasurement;
- (CGAffineTransform)transformFromWP;
- (CGRect)boundsOfLineFragmentAtIndex:(unint64_t)a3;
- (CGRect)caretRectForSelection:(id)a3;
- (CGRect)columnRectForRange:(_NSRange)a3;
- (CGRect)erasableBounds:(unint64_t)a3;
- (CGRect)erasableRectForSelectionRange:(_NSRange)a3;
- (CGRect)firstRectForSelection:(id)a3 includeSpaceAfter:(BOOL)a4 includeSpaceBefore:(BOOL)a5 includeLeading:(BOOL)a6;
- (CGRect)frameBounds;
- (CGRect)glyphRectForRange:(_NSRange)a3 includingLabel:(BOOL)a4;
- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)a3 glyphRange:(_NSRange)a4;
- (CGRect)rawGlyphRectOfRange:(_NSRange)a3;
- (CGRect)typographicBounds;
- (CGSize)maxSize;
- (CRLWPColumn)initWithStorage:(id)a3 frameBounds:(CGRect)a4;
- (CRLWPFontHeightInfo)fontHeightInfoAtCharIndex:(SEL)a3;
- (CRLWPStyleProvider)styleProvider;
- (_NSRange)anchoredRange;
- (_NSRange)range;
- (_NSRange)rangeOfLineFragmentAtIndex:(unint64_t)a3;
- (const)lineFragmentClosestToPoint:(CGPoint)a3 knobTag:(unint64_t)a4;
- (const)lineFragmentForCharIndex:(unint64_t)a3 knobTag:(unint64_t)a4 selectionType:(unint64_t)a5;
- (const)nearestLineFragmentWithSameVerticalPositionAs:(unint64_t)a3 xPos:(double)a4;
- (const)pColumnEndingPartitionedLineFragmentInSelectionRange:(_NSRange)a3;
- (double)horizontalOffsetForCharIndex:(unint64_t)a3 lineFragmentIndex:(unint64_t)a4 bumpPastHyphen:(BOOL)a5 allowPastLineBounds:(BOOL)a6;
- (double)minimumHeightForLayoutOnPage;
- (double)textBlockBottom;
- (double)textHeight;
- (id).cxx_construct;
- (id)drawableIntersectionRectsForSelection:(id)a3 inTarget:(id)a4;
- (id)initForTestingWithStorage:(id)a3 frameBounds:(CGRect)a4;
- (id)lineSelectionsForSelection:(id)a3;
- (id)naturalRectsForSelection:(id)a3 ranges:(id *)a4;
- (id)pMutableRectsForSelectionRange:(_NSRange)a3 selectionType:(unint64_t)a4 includeSpaceAfter:(BOOL)a5 includeSpaceBefore:(BOOL)a6 includeLeading:(BOOL)a7 forParagraphMode:(BOOL)a8 includeRuby:(BOOL)a9 includePaginatedAttachments:(BOOL)a10 inranges:(id)a11 outranges:(id *)a12;
- (id)pTransformReturnRects:(id)a3;
- (id)partitionedLayoutOfLineFragmentAtIndex:(unint64_t)a3;
- (id)rectsForSelection:(id)a3 ranges:(id *)a4;
- (id)rectsForSelection:(id)a3 ranges:(id *)a4 includePaginatedAttachments:(BOOL)a5;
- (id)rectsForSelectionRange:(_NSRange)a3 selectionType:(unint64_t)a4 forParagraphMode:(BOOL)a5 includeRuby:(BOOL)a6 includePaginatedAttachments:(BOOL)a7;
- (id)rectsForSelectionRanges:(id)a3 selectionType:(unint64_t)a4;
- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unint64_t)a4;
- (unint64_t)charIndexForSelectionFromPoint:(CGPoint)a3 isTail:(BOOL)a4;
- (unint64_t)charIndexFromPoint:(CGPoint)a3 allowPastBreak:(BOOL)a4 pastCenterGoesToNextChar:(BOOL)a5 allowNotFound:(BOOL)a6 constrainToAscentAndDescent:(BOOL)a7 isAtEndOfLine:(BOOL *)a8 outFragment:(const CRLWPLineFragment *)a9 leadingEdge:(BOOL *)a10;
- (unint64_t)charIndexFromWPPoint:(CGPoint)a3 pastCenterGoesToNextChar:(BOOL)a4 allowNotFound:(BOOL)a5 constrainToAscentAndDescent:(BOOL)a6 outFragment:(const CRLWPLineFragment *)a7 leadingEdge:(BOOL *)a8;
- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)a3;
- (unint64_t)lineIndexForCharIndex:(unint64_t)a3 eol:(BOOL)a4;
- (unint64_t)pRemapCharIndex:(unint64_t)a3 outIsAfterBreak:(BOOL *)a4 outWithTextSource:(id *)a5;
- (unint64_t)p_charIndexWithTextClosestToWPPoint:(CGPoint)a3 pastCenterGoesToNextChar:(BOOL)a4 outFragment:(const CRLWPLineFragment *)a5 leadingEdge:(BOOL *)a6;
- (unsigned)fontTraitsForRange:(_NSRange)a3 includingLabel:(BOOL)a4;
- (unsigned)hyphenCharOfLineFragmentAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)enumerateParagraphAdornmentsUsingBlock:(id)a3;
- (void)makeEmpty:(unint64_t)a3 anchoredRange:(_NSRange)a4 layoutResultFlags:(unint64_t)a5;
- (void)offsetLineFragmentsBy:(CGSize)a3;
- (void)pInfoForCharIndex:(unint64_t)a3 isAtStart:(BOOL *)a4 isAtEnd:(BOOL *)a5;
- (void)renderWithRenderer:(id)a3 currentSelection:(id)a4 limitSelection:(id)a5 listRange:(_NSRange)a6 rubyGlyphRange:(_NSRange)a7 isCanvasInteractive:(BOOL)a8 isInDrawingMode:(BOOL)a9 spellChecker:(id)a10 suppressedMisspellingRange:(_NSRange)a11 blackAndWhite:(BOOL)a12 dictationInterpretations:(id)a13 autocorrections:(id)a14 markedRange:(_NSRange)a15 markedText:(id)a16 renderMode:(unint64_t)a17 pageCount:(unint64_t)a18 suppressInvisibles:(BOOL)a19 currentCanvasSelection:(id)a20;
- (void)setAnchoredRange:(_NSRange)a3;
- (void)setLineFragmentArray:(const void *)a3;
- (void)setRange:(_NSRange)a3;
- (void)setTransformFromWP:(CGAffineTransform *)a3;
@end

@implementation CRLWPColumn

- (BOOL)lastLineIsEmptyAndHasListLabel
{
  ptr = self->_lineFragmentArray.__ptr_;
  if (ptr)
  {
    ptr = sub_1000F4FD8(ptr);
    if (ptr)
    {
      LOBYTE(ptr) = (*(sub_1000F4FE8(self->_lineFragmentArray.__ptr_, ptr - 1) + 24) & 0x2004800) == 33570816;
    }
  }

  return ptr;
}

+ (id)contentRectsToAvoidPencilAnnotationOverlapWithColumns:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 range];
          [v9 columnRectForRange:{v10, v11}];
          v12 = [NSValue valueWithCGRect:?];
          [v4 addObject:v12];
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v13 = [v4 copy];

  return v13;
}

+ (CGRect)frameBoundsOfColumns:(id)a3
{
  v3 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v20 + 1) + 8 * v11) frameBounds];
        v28.origin.x = v12;
        v28.origin.y = v13;
        v28.size.width = v14;
        v28.size.height = v15;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v28);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (CGRect)caretRectForInsertionPoint:(id)a3 withColumns:(id)a4
{
  v5 = a3;
  v6 = a4;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v12)
  {
    v13 = *v53;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        [v15 caretRectForSelection:v5];
        x = v16;
        y = v17;
        width = v18;
        height = v19;
        if ([v15 textIsVertical])
        {
          if (width > 0.0)
          {
            height = fmax(height, 1.0);
            goto LABEL_14;
          }
        }

        else if (height > 0.0)
        {
          width = fmax(width, 1.0);
          goto LABEL_14;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v64.origin.x = CGRectNull.origin.x;
  v64.origin.y = CGRectNull.origin.y;
  v64.size.width = CGRectNull.size.width;
  v64.size.height = CGRectNull.size.height;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  if (!CGRectEqualToRect(v57, v64))
  {
    v20 = [v5 caretAffinity];
    v21 = +[CRLWPColumn columnForCharIndex:allowEndOfColumn:withColumns:](CRLWPColumn, "columnForCharIndex:allowEndOfColumn:withColumns:", [v5 start], v20 == 1, v11);
    if (v21)
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      [v21 lineMetricsAtCharIndex:objc_msgSend(v5 allowEndOfLine:{"start"), v20 == 1}];
      v58.origin = 0u;
      v58.size = 0u;
      if (!CGRectIsNull(v58))
      {
        [v21 transformToWP];
        v59.origin.x = x;
        v59.origin.y = y;
        v59.size.width = width;
        v59.size.height = height;
        v60 = CGRectApplyAffineTransform(v59, &v30);
        v22 = v60.origin.x;
        v23 = v60.size.width;
        v24 = v60.size.height;
        v25 = *(&v31 + 1);
        [v21 transformFromWP];
        v61.origin.x = v22;
        v61.origin.y = v25;
        v61.size.width = v23;
        v61.size.height = v24;
        v62 = CGRectApplyAffineTransform(v61, &v30);
        x = v62.origin.x;
        y = v62.origin.y;
        width = v62.size.width;
        height = v62.size.height;
      }
    }
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

+ (CGRect)rectForSelection:(id)a3 withColumns:(id)a4
{
  [a1 rectForSelection:a3 withColumns:a4 useParagraphModeRects:1];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)rectForSelection:(id)a3 withColumns:(id)a4 useParagraphModeRects:(BOOL)a5
{
  v6 = a3;
  v59 = a4;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if ([v6 isValid])
  {
    v11 = [v59 firstObject];

    if (v11)
    {
      v12 = [v59 firstObject];
      v13 = [v12 storage];

      if (v13)
      {
        v58 = v13;
        v14 = [v6 insertionChar];
        if (v14 > [v13 length])
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10134BA70();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10134BA84();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134BB0C();
          }

          v15 = off_1019EDA68;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            +[CRLAssertionHandler packedBacktraceString];
            objc_claimAutoreleasedReturnValue();
            sub_10130E89C();
          }

          v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPColumn rectForSelection:withColumns:useParagraphModeRects:]");
          v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
          [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:333 isFatal:0 description:"selection is past the end of storage"];
        }

        if ([v6 isInsertionPoint])
        {
          v18 = [v6 insertionChar];
          if (v18 <= [v13 length])
          {
            v20 = [v13 wordAtCharIndex:objc_msgSend(v6 includePreviousWord:{"range"), 1}];
            if (v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = v19;
              v22 = +[CRLWPColumn columnForCharIndex:allowEndOfColumn:withColumns:](CRLWPColumn, "columnForCharIndex:allowEndOfColumn:withColumns:", [v6 range], objc_msgSend(v6, "isAtEndOfLine"), v59);
              if (v22)
              {
                v23 = [v22 lineIndexForCharIndex:objc_msgSend(v6 eol:{"range"), objc_msgSend(v6, "isAtEndOfLine")}];
                if (v23 == [v22 lineIndexForCharIndex:v20 eol:0] && v23 == objc_msgSend(v22, "lineIndexForCharIndex:eol:", &v20[v21], objc_msgSend(v6, "isAtEndOfLine")))
                {
                  v24 = [v6 copyWithNewRange:{v20, v21}];

                  v6 = v24;
                }
              }
            }
          }
        }

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v25 = v59;
        v26 = [v25 countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v26)
        {
          v27 = *v65;
          while (2)
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v65 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v64 + 1) + 8 * i);
              if ([v6 isInsertionPoint])
              {
                [v29 caretRectForSelection:v6];
                x = v30;
                y = v31;
                width = v32;
                height = v33;
                if ([v29 textIsVertical])
                {
                  if (width > 0.0)
                  {
                    height = fmax(height, 1.0);
                    goto LABEL_51;
                  }
                }

                else if (height > 0.0)
                {
                  width = fmax(width, 1.0);
                  goto LABEL_51;
                }
              }

              else
              {
                v34 = [v29 range];
                v36 = v35;
                v37 = [v29 lineCount];
                if (v37 && (*([v29 lineFragmentAtIndex:v37 - 1] + 3) & 0x101) == 1)
                {
                  ++v36;
                }

                v70.location = [v6 range];
                v71.location = v34;
                v71.length = v36;
                if (NSIntersectionRange(v70, v71).length)
                {
                  v38 = [v6 range];
                  v40 = [v29 rectsForSelectionRange:v38 selectionType:v39 forParagraphMode:objc_msgSend(v6 includeRuby:"type") includePaginatedAttachments:{0, 0, 0}];
                  [v29 frameBounds];
                  v62 = 0u;
                  v63 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v41 = v40;
                  v42 = [v41 countByEnumeratingWithState:&v60 objects:v68 count:16];
                  if (v42)
                  {
                    v43 = *v61;
                    do
                    {
                      for (j = 0; j != v42; j = j + 1)
                      {
                        if (*v61 != v43)
                        {
                          objc_enumerationMutation(v41);
                        }

                        [*(*(&v60 + 1) + 8 * j) CGRectValue];
                        v47 = v46;
                        v49 = v48;
                        v51 = v50;
                        v52 = fmax(v45, 1.0);
                        if (v50 <= 0.0)
                        {
                          v53 = v45;
                        }

                        else
                        {
                          v53 = v52;
                        }

                        v72.origin.x = x;
                        v72.origin.y = y;
                        v72.size.width = width;
                        v72.size.height = height;
                        v73 = CGRectUnion(v72, *&v47);
                        x = v73.origin.x;
                        y = v73.origin.y;
                        width = v73.size.width;
                        height = v73.size.height;
                      }

                      v42 = [v41 countByEnumeratingWithState:&v60 objects:v68 count:16];
                    }

                    while (v42);
                  }
                }
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v64 objects:v69 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

LABEL_51:

        v13 = v58;
      }
    }
  }

  v54 = x;
  v55 = y;
  v56 = width;
  v57 = height;
  result.size.height = v57;
  result.size.width = v56;
  result.origin.y = v55;
  result.origin.x = v54;
  return result;
}

+ (void)calculateSelectionPinRectsForSelection:(id)a3 inColumns:(id)a4 outSelectionPinRect:(CGRect *)a5 outSelectionTailPinRect:(CGRect *)a6
{
  v9 = a3;
  v153 = a4;
  v160 = v9;
  v10 = [v9 type];
  v161 = [v9 range];
  v155 = v11;
  v12 = [v153 firstObject];
  v163 = [v12 textIsVertical];

  if (!a5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134BBF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134BC0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134BC94();
    }

    v129 = off_1019EDA68;
    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d illegal nil parameter", v130, v131, v132, v133, v134, v135, v136, "+[CRLWPColumn calculateSelectionPinRectsForSelection:inColumns:outSelectionPinRect:outSelectionTailPinRect:]");
    v137 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPColumn calculateSelectionPinRectsForSelection:inColumns:outSelectionPinRect:outSelectionTailPinRect:]");
    v138 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
    [CRLAssertionHandler handleFailureInFunction:v137 file:v138 lineNumber:431 isFatal:1 description:"illegal nil parameter"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v139, v140);
LABEL_168:
    abort();
  }

  if (!a6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134BB34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134BB48();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134BBD0();
    }

    v141 = off_1019EDA68;
    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d illegal nil parameter", v142, v143, v144, v145, v146, v147, v148, "+[CRLWPColumn calculateSelectionPinRectsForSelection:inColumns:outSelectionPinRect:outSelectionTailPinRect:]");
    v149 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPColumn calculateSelectionPinRectsForSelection:inColumns:outSelectionPinRect:outSelectionTailPinRect:]");
    v150 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
    [CRLAssertionHandler handleFailureInFunction:v149 file:v150 lineNumber:432 isFatal:1 description:"illegal nil parameter"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v151, v152);
    goto LABEL_168;
  }

  if (v10 == 7)
  {
    v13 = [v9 headCharIndex];
    v14 = [v9 tailCharIndex];
    if (v14 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v160 headCharIndex];
    v17 = [v160 tailCharIndex];
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = v161;
    }

    else
    {
      v19 = v15;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = &v161[v155];
    }

    else
    {
      v20 = v18 + 1;
    }

    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    if (v19 < v20)
    {
      v20 = v19;
    }

    v161 = v20;
    v155 = v21 - v20;
  }

  size = CGRectNull.size;
  a5->origin = CGRectNull.origin;
  a5->size = size;
  v23 = CGRectNull.size;
  a6->origin = CGRectNull.origin;
  a6->size = v23;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  obj = v153;
  v24 = [obj countByEnumeratingWithState:&v182 objects:v189 count:16];
  if (v24)
  {
    v156 = *v183;
    v164 = &v161[v155];
    do
    {
      v25 = 0;
      v157 = v24;
      do
      {
        if (*v183 != v156)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v182 + 1) + 8 * v25);
        [v26 frameBounds];
        v175 = v28;
        v176 = v27;
        v173 = v30;
        v174 = v29;
        v31 = [v160 headCharIndex];
        v32 = v161;
        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = [v160 headCharIndex];
        }

        v33 = [v26 lineFragmentForCharIndex:v32 knobTag:11 selectionType:v10];
        v34 = [v160 tailCharIndex];
        v35 = &v161[v155];
        if (v34 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = [v160 tailCharIndex];
        }

        v36 = [v26 lineFragmentForCharIndex:v35 knobTag:10 selectionType:v10];
        v37 = v36;
        p_y = &CGRectNull.origin.y;
        p_size = &CGRectNull.size;
        p_height = &CGRectNull.size.height;
        if (v33)
        {
          v41 = (v33 + 40);
          v42 = (v33 + 48);
          v43 = (v33 + 56);
          v44 = (v33 + 64);
          if (!v36)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v44 = &CGRectNull.size.height;
          v43 = &CGRectNull.size;
          v42 = &CGRectNull.origin.y;
          v41 = &CGRectNull;
          if (!v36)
          {
LABEL_35:
            v45 = &CGRectNull;
            goto LABEL_36;
          }
        }

        v45 = (v36 + 40);
        p_y = (v36 + 48);
        p_size = (v36 + 56);
        p_height = (v36 + 64);
LABEL_36:
        v171 = *v42;
        x = v41->origin.x;
        v169 = *v44;
        width = v43->width;
        v167 = *p_y;
        v168 = v45->origin.x;
        v165 = *p_height;
        v166 = p_size->width;
        if (v10 == 7 && [v160 validVisualRanges])
        {
          v159 = [v160 visualRangesArray];
        }

        else
        {
          v46 = [NSValue valueWithRange:v161, v155];
          v188 = v46;
          v159 = [NSArray arrayWithObjects:&v188 count:1];
        }

        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v47 = [v26 rectsForSelectionRanges:v159 selectionType:v10];
        v48 = [v47 countByEnumeratingWithState:&v178 objects:v187 count:16];
        v158 = v25;
        if (v48)
        {
          v49 = *v179;
          do
          {
            for (i = 0; i != v48; i = i + 1)
            {
              if (*v179 != v49)
              {
                objc_enumerationMutation(v47);
              }

              [*(*(&v178 + 1) + 8 * i) CGRectValue];
              v228.origin.y = v175;
              v228.origin.x = v176;
              v228.size.height = v173;
              v228.size.width = v174;
              v191 = CGRectIntersection(v190, v228);
              v51 = v191.origin.x;
              y = v191.origin.y;
              v53 = v191.size.width;
              height = v191.size.height;
              if (v26)
              {
                [v26 transformToWP];
              }

              else
              {
                memset(&v186, 0, sizeof(v186));
              }

              v192.origin.x = v51;
              v192.origin.y = y;
              v192.size.width = v53;
              v192.size.height = height;
              v193 = CGRectApplyAffineTransform(v192, &v186);
              v55 = v193.origin.x;
              v56 = v193.origin.y;
              v57 = v193.size.width;
              rect2 = v193.size.height;
              if (v10 == 7)
              {
                if (v33)
                {
                  v194.origin.y = v171;
                  v194.origin.x = x;
                  v194.size.height = v169;
                  v194.size.width = width;
                  v229.origin.x = v55;
                  v229.origin.y = v56;
                  v229.size.width = v57;
                  v229.size.height = rect2;
                  if (CGRectIntersectsRect(v194, v229))
                  {
                    v195.origin.y = v171;
                    v195.origin.x = x;
                    v195.size.height = v169;
                    v195.size.width = width;
                    MinY = CGRectGetMinY(v195);
                    v196.origin.x = v55;
                    v196.origin.y = v56;
                    v196.size.width = v57;
                    v196.size.height = rect2;
                    v59 = CGRectGetMinY(v196);
                    v60 = MinY < v59 || MinY == v59;
                    if (v60 || vabdd_f64(MinY, v59) < 0.01)
                    {
                      v197.origin.x = v55;
                      v197.origin.y = v56;
                      v197.size.width = v57;
                      v197.size.height = rect2;
                      MaxY = CGRectGetMaxY(v197);
                      v198.origin.y = v171;
                      v198.origin.x = x;
                      v198.size.height = v169;
                      v198.size.width = width;
                      v62 = CGRectGetMaxY(v198);
                      if (MaxY <= v62 || vabdd_f64(MaxY, v62) < 0.01)
                      {
                        v63 = a5->origin.x;
                        v64 = a5->origin.y;
                        v65 = a5->size.width;
                        v66 = a5->size.height;
                        if ((v33[25] & 0x10) != 0)
                        {
                          if (CGRectIsEmpty(*&v63) || (MaxX = CGRectGetMaxX(*a5), v205.origin.x = v51, v205.origin.y = y, v205.size.width = v53, v205.size.height = height, MaxX < CGRectGetMaxX(v205)))
                          {
                            v85 = v51;
                            v86 = y;
                            v87 = v53;
                            v88 = height;
                            if (v163)
                            {
                              MinX = CGRectGetMinX(*&v85);
                              v206.origin.x = v51;
                              v206.origin.y = y;
                              v206.size.width = v53;
                              v206.size.height = height;
                              v162 = CGRectGetMaxY(v206);
                              v207.origin.x = v51;
                              v207.origin.y = y;
                              v207.size.width = v53;
                              v207.size.height = height;
                              v70 = CGRectGetWidth(v207);
                              v71 = 1.0;
                            }

                            else
                            {
                              MinX = CGRectGetMaxX(*&v85);
                              v208.origin.x = v51;
                              v208.origin.y = y;
                              v208.size.width = v53;
                              v208.size.height = height;
                              v162 = CGRectGetMinY(v208);
                              v209.origin.x = v51;
                              v209.origin.y = y;
                              v209.size.width = v53;
                              v209.size.height = height;
                              v71 = CGRectGetHeight(v209);
                              v70 = 1.0;
                            }

                            v69 = v162;
LABEL_89:
                            a5->origin.x = MinX;
                            a5->origin.y = v69;
                            a5->size.width = v70;
                            a5->size.height = v71;
                          }
                        }

                        else
                        {
                          IsEmpty = CGRectIsEmpty(*&v63);
                          MinX = v51;
                          v69 = y;
                          v70 = v53;
                          v71 = height;
                          if (IsEmpty)
                          {
                            goto LABEL_89;
                          }

                          v72 = CGRectGetMinX(*a5);
                          v199.origin.x = v51;
                          v199.origin.y = y;
                          v199.size.width = v53;
                          v199.size.height = height;
                          v73 = v72 <= CGRectGetMinX(v199);
                          MinX = v51;
                          v69 = y;
                          v70 = v53;
                          v71 = height;
                          if (!v73)
                          {
                            goto LABEL_89;
                          }
                        }
                      }
                    }
                  }
                }

                if (v37)
                {
                  v210.origin.y = v167;
                  v210.origin.x = v168;
                  v210.size.height = v165;
                  v210.size.width = v166;
                  v231.origin.x = v55;
                  v231.origin.y = v56;
                  v231.size.width = v57;
                  v231.size.height = rect2;
                  if (CGRectIntersectsRect(v210, v231))
                  {
                    v211.origin.y = v167;
                    v211.origin.x = v168;
                    v211.size.height = v165;
                    v211.size.width = v166;
                    v89 = CGRectGetMinY(v211);
                    v212.origin.x = v55;
                    v212.origin.y = v56;
                    v212.size.width = v57;
                    v212.size.height = rect2;
                    v90 = CGRectGetMinY(v212);
                    v91 = v89 < v90 || v89 == v90;
                    if (v91 || vabdd_f64(v89, v90) < 0.01)
                    {
                      v213.origin.x = v55;
                      v213.origin.y = v56;
                      v213.size.width = v57;
                      v213.size.height = rect2;
                      v92 = CGRectGetMaxY(v213);
                      v214.origin.y = v167;
                      v214.origin.x = v168;
                      v214.size.height = v165;
                      v214.size.width = v166;
                      v93 = CGRectGetMaxY(v214);
                      if (v92 <= v93 || vabdd_f64(v92, v93) < 0.01)
                      {
                        v94 = a6->origin.x;
                        v95 = a6->origin.y;
                        v96 = a6->size.width;
                        v97 = a6->size.height;
                        if ((*(v37 + 25) & 0x10) != 0)
                        {
                          if (CGRectIsEmpty(*&v94) || (v106 = CGRectGetMinX(*a6), v218.origin.x = v51, v218.origin.y = y, v218.size.width = v53, v218.size.height = height, v106 > CGRectGetMinX(v218)))
                          {
                            a6->origin.x = v51;
                            a6->origin.y = y;
                            a6->size.width = v53;
                            a6->size.height = height;
                            if (!v163)
                            {
                              v111 = v51 + -1.0;
LABEL_132:
                              a6->origin.x = v111;
                              continue;
                            }

                            v107 = y + -1.0;
LABEL_135:
                            a6->origin.y = v107;
                            continue;
                          }
                        }

                        else if (CGRectIsEmpty(*&v94) || (v98 = CGRectGetMaxX(*a6), v215.origin.x = v51, v215.origin.y = y, v215.size.width = v53, v215.size.height = height, v98 < CGRectGetMaxX(v215)))
                        {
                          v99 = v51;
                          v100 = y;
                          v101 = v53;
                          v102 = height;
                          if (v163)
                          {
                            v103 = CGRectGetMinX(*&v99);
                            v216.origin.x = v51;
                            v216.origin.y = y;
                            v216.size.width = v53;
                            v216.size.height = height;
                            v104 = CGRectGetMaxY(v216);
                            v217.origin.x = v51;
                            v217.origin.y = y;
                            v217.size.width = v53;
                            v217.size.height = height;
                            v105 = CGRectGetWidth(v217);
                            a6->origin.x = v103;
                            a6->origin.y = v104 + -1.0;
                            a6->size.width = v105;
                            a6->size.height = 1.0;
                          }

                          else
                          {
                            v108 = CGRectGetMaxX(*&v99);
                            v219.origin.x = v51;
                            v219.origin.y = y;
                            v219.size.width = v53;
                            v219.size.height = height;
                            v109 = CGRectGetMinY(v219);
                            v220.origin.x = v51;
                            v220.origin.y = y;
                            v220.size.width = v53;
                            v220.size.height = height;
                            v110 = CGRectGetHeight(v220);
                            a6->origin.x = v108 + -1.0;
                            a6->origin.y = v109;
                            a6->size.width = 1.0;
                            a6->size.height = v110;
                          }
                        }
                      }
                    }
                  }
                }

                continue;
              }

              if ((v10 & 0xFFFFFFFFFFFFFFFBLL) != 0)
              {
                continue;
              }

              if (v33)
              {
                v200.origin.y = v171;
                v200.origin.x = x;
                v200.size.height = v169;
                v200.size.width = width;
                v230.origin.x = v55;
                v230.origin.y = v56;
                v230.size.width = v57;
                v230.size.height = rect2;
                if (CGRectIntersectsRect(v200, v230))
                {
                  v201.origin.y = v171;
                  v201.origin.x = x;
                  v201.size.height = v169;
                  v201.size.width = width;
                  v74 = CGRectGetMinY(v201);
                  v202.origin.x = v55;
                  v202.origin.y = v56;
                  v202.size.width = v57;
                  v202.size.height = rect2;
                  v75 = CGRectGetMinY(v202);
                  v76 = v74 < v75 || v74 == v75;
                  if (v76 || vabdd_f64(v74, v75) < 0.01)
                  {
                    v203.origin.x = v55;
                    v203.origin.y = v56;
                    v203.size.width = v57;
                    v203.size.height = rect2;
                    v77 = CGRectGetMaxY(v203);
                    v204.origin.y = v171;
                    v204.origin.x = x;
                    v204.size.height = v169;
                    v204.size.width = width;
                    v78 = CGRectGetMaxY(v204);
                    if (v77 <= v78 || vabdd_f64(v77, v78) < 0.01)
                    {
                      a5->origin.x = v51;
                      a5->origin.y = y;
                      a5->size.width = v53;
                      a5->size.height = height;
                      v79 = sub_100211E30(v33, v161, 1);
                      v80 = v79;
                      if (v163)
                      {
                        if (v26)
                        {
                          [v26 transformFromWP];
                          b = v186.b;
                          ty = v186.ty;
                          v83 = v186.d * 0.0;
                        }

                        else
                        {
                          ty = 0.0;
                          v83 = 0.0;
                          b = 0.0;
                        }

                        a5->origin.y = ty + v83 + b * v80;
                      }

                      else
                      {
                        a5->origin.x = v79;
                      }
                    }
                  }
                }
              }

              v112 = [v26 range];
              if (v164 < v112 || v164 - v112 >= v113)
              {
                if (!v37 || v164 != &v112[v113])
                {
                  continue;
                }
              }

              else if (!v37)
              {
                continue;
              }

              v221.origin.y = v167;
              v221.origin.x = v168;
              v221.size.height = v165;
              v221.size.width = v166;
              v232.origin.x = v55;
              v232.origin.y = v56;
              v232.size.width = v57;
              v232.size.height = rect2;
              if (CGRectIntersectsRect(v221, v232))
              {
                v222.origin.y = v167;
                v222.origin.x = v168;
                v222.size.height = v165;
                v222.size.width = v166;
                v114 = CGRectGetMinY(v222);
                v223.origin.x = v55;
                v223.origin.y = v56;
                v223.size.width = v57;
                v223.size.height = rect2;
                v115 = CGRectGetMinY(v223);
                if (v114 <= v115 || vabdd_f64(v114, v115) < 0.01)
                {
                  v224.origin.x = v55;
                  v224.origin.y = v56;
                  v224.size.width = v57;
                  v224.size.height = rect2;
                  v116 = CGRectGetMaxY(v224);
                  v225.origin.y = v167;
                  v225.origin.x = v168;
                  v225.size.height = v165;
                  v225.size.width = v166;
                  v117 = CGRectGetMaxY(v225);
                  if (v116 <= v117 || vabdd_f64(v116, v117) < 0.01)
                  {
                    v118 = sub_100211E30(v37, v164, 0);
                    v119 = v118;
                    a6->origin.x = v51;
                    a6->origin.y = y;
                    a6->size.width = v53;
                    a6->size.height = height;
                    if (!v163)
                    {
                      v111 = v118 + -1.0;
                      goto LABEL_132;
                    }

                    if (v26)
                    {
                      [v26 transformFromWP];
                      v120 = v186.b;
                      v121 = v186.ty;
                      v122 = v186.d * 0.0;
                    }

                    else
                    {
                      v121 = 0.0;
                      v122 = 0.0;
                      v120 = 0.0;
                    }

                    v107 = v121 + v122 + v120 * v119 + -1.0;
                    goto LABEL_135;
                  }
                }
              }
            }

            v48 = [v47 countByEnumeratingWithState:&v178 objects:v187 count:16];
          }

          while (v48);
        }

        v25 = v158 + 1;
      }

      while ((v158 + 1) != v157);
      v24 = [obj countByEnumeratingWithState:&v182 objects:v189 count:16];
    }

    while (v24);
  }

  v123 = a5->origin.x;
  v124 = a5->origin.y;
  v125 = a5->size.width;
  v126 = a5->size.height;
  if (v163)
  {
    if (!CGRectIsNull(*&v123))
    {
      a5->size.height = 1.0;
    }

    v226.origin.x = a6->origin.x;
    v226.origin.y = a6->origin.y;
    v226.size.width = a6->size.width;
    v128 = a6->size.height;
    v127 = &a6->size.height;
    v226.size.height = v128;
    if (!CGRectIsNull(v226))
    {
LABEL_144:
      v127->width = 1.0;
    }
  }

  else
  {
    if (!CGRectIsNull(*&v123))
    {
      a5->size.width = 1.0;
    }

    v227 = *a6;
    v127 = &a6->size;
    if (!CGRectIsNull(v227))
    {
      goto LABEL_144;
    }
  }
}

+ (id)selectionRectsforColumns:(id)a3 forSelection:(id)a4
{
  v32 = a3;
  v36 = a4;
  v5 = objc_opt_new();
  v6 = [v36 type];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v32;
  v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v34 = *v42;
    do
    {
      v35 = v7;
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        [v9 boundsIncludingDropCapRectsForSelectionType:v6];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        if (v6 == 7 && [v36 validVisualRanges])
        {
          v18 = [v36 visualRangesArray];
        }

        else
        {
          v19 = [v36 range];
          v21 = [NSValue valueWithRange:v19, v20];
          v46 = v21;
          v18 = [NSArray arrayWithObjects:&v46 count:1];
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v22 = [v9 rectsForSelectionRanges:v18 selectionType:v6];
        v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v23)
        {
          v24 = *v38;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v38 != v24)
              {
                objc_enumerationMutation(v22);
              }

              [*(*(&v37 + 1) + 8 * j) CGRectValue];
              v51.origin.x = v11;
              v51.origin.y = v13;
              v51.size.width = v15;
              v51.size.height = v17;
              v50 = CGRectIntersection(v49, v51);
              x = v50.origin.x;
              y = v50.origin.y;
              width = v50.size.width;
              height = v50.size.height;
              if (!CGRectIsNull(v50))
              {
                v30 = [NSValue valueWithCGRect:x, y, width, height];
                [v5 addObject:v30];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v23);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (void)populateHeadAndTailCharIndicesInSelection:(id)a3 forColumns:(id)a4
{
  v5 = a3;
  v53 = a4;
  v57 = [v5 type];
  if ([v5 type] == 7 && (objc_msgSend(v5, "headCharIndex") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "tailCharIndex") == 0x7FFFFFFFFFFFFFFFLL))
  {
    v59 = [v5 range];
    v54 = v6;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v53;
    v7 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v7)
    {
      v56 = *v72;
      do
      {
        v8 = 0;
        v58 = v7;
        do
        {
          if (*v72 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v71 + 1) + 8 * v8);
          v10 = [v9 lineFragmentForCharIndex:v59 knobTag:11 selectionType:7];
          v11 = [v9 lineFragmentForCharIndex:&v59[v54 - 1] knobTag:10 selectionType:v57];
          v12 = v11;
          p_y = &CGRectNull.origin.y;
          v14 = (v10 + 40);
          v15 = (v10 + 48);
          p_size = (v10 + 56);
          p_height = (v10 + 64);
          if (!v10)
          {
            p_height = &CGRectNull.size.height;
            p_size = &CGRectNull.size;
            v15 = &CGRectNull.origin.y;
            v14 = &CGRectNull;
          }

          rect_24 = *v15;
          x = v14->origin.x;
          rect_8 = *p_height;
          rect_16 = p_size->width;
          v18 = (v11 + 40);
          if (!v11)
          {
            v18 = &CGRectNull;
          }

          rect = v18->origin.x;
          if (v11)
          {
            p_y = (v11 + 48);
          }

          v19 = *p_y;
          v20 = (v11 + 56);
          if (!v11)
          {
            v20 = &CGRectNull.size;
          }

          width = v20->width;
          v22 = (v11 + 64);
          if (!v11)
          {
            v22 = &CGRectNull.size.height;
          }

          v23 = *v22;
          if ([v5 validVisualRanges])
          {
            v60 = [v5 visualRangesArray];
          }

          else
          {
            v24 = [NSValue valueWithRange:v59, v54];
            v76 = v24;
            v60 = [NSArray arrayWithObjects:&v76 count:1];
          }

          v25 = [v5 superRange];
          BYTE2(v52) = 0;
          LOWORD(v52) = 0;
          v27 = [v9 pMutableRectsForSelectionRange:v25 selectionType:v26 includeSpaceAfter:7 includeSpaceBefore:1 includeLeading:1 forParagraphMode:0 includeRuby:v52 includePaginatedAttachments:v60 inranges:0 outranges:?];
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v67 objects:v75 count:16];
          if (v29)
          {
            v30 = *v68;
            do
            {
              for (i = 0; i != v29; i = i + 1)
              {
                if (*v68 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                [*(*(&v67 + 1) + 8 * i) CGRectValue];
                v79 = CGRectIntersection(v78, *(v9 + 16));
                v32 = v79.origin.x;
                y = v79.origin.y;
                v34 = v79.size.width;
                height = v79.size.height;
                v36 = [v5 headCharIndex];
                if (v10)
                {
                  if (v36 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v80.origin.x = v32;
                    v80.origin.y = y;
                    v80.size.width = v34;
                    v80.size.height = height;
                    MinY = CGRectGetMinY(v80);
                    v81.origin.y = rect_24;
                    v81.origin.x = x;
                    v81.size.height = rect_8;
                    v81.size.width = rect_16;
                    if (MinY >= CGRectGetMinY(v81))
                    {
                      v82.origin.x = v32;
                      v82.origin.y = y;
                      v82.size.width = v34;
                      v82.size.height = height;
                      MaxY = CGRectGetMaxY(v82);
                      v83.origin.y = rect_24;
                      v83.origin.x = x;
                      v83.size.height = rect_8;
                      v83.size.width = rect_16;
                      if (MaxY <= CGRectGetMaxY(v83))
                      {
                        v66 = 0;
                        v39 = v32;
                        v40 = y;
                        v41 = v34;
                        v42 = height;
                        if ((v10[25] & 0x10) != 0)
                        {
                          MinX = CGRectGetMaxX(*&v39) + -1.0;
                        }

                        else
                        {
                          MinX = CGRectGetMinX(*&v39);
                        }

                        [v5 setHeadCharIndex:{sub_100213314(v10, 0, 0, &v66, 0, MinX)}];
                      }
                    }
                  }
                }

                v44 = [v5 tailCharIndex];
                if (v12)
                {
                  if (v44 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v84.origin.x = v32;
                    v84.origin.y = y;
                    v84.size.width = v34;
                    v84.size.height = height;
                    v45 = CGRectGetMinY(v84);
                    v85.origin.x = rect;
                    v85.origin.y = v19;
                    v85.size.width = width;
                    v85.size.height = v23;
                    if (v45 >= CGRectGetMinY(v85))
                    {
                      v86.origin.x = v32;
                      v86.origin.y = y;
                      v86.size.width = v34;
                      v86.size.height = height;
                      v46 = CGRectGetMaxY(v86);
                      v87.origin.x = rect;
                      v87.origin.y = v19;
                      v87.size.width = width;
                      v87.size.height = v23;
                      if (v46 <= CGRectGetMaxY(v87))
                      {
                        v66 = 0;
                        v47 = v32;
                        v48 = y;
                        v49 = v34;
                        v50 = height;
                        if ((*(v12 + 25) & 0x10) != 0)
                        {
                          v51 = CGRectGetMinX(*&v47);
                        }

                        else
                        {
                          v51 = CGRectGetMaxX(*&v47) + -1.0;
                        }

                        [v5 setTailCharIndex:{sub_100213314(v12, 0, 0, &v66, 0, v51)}];
                      }
                    }
                  }
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v67 objects:v75 count:16];
            }

            while (v29);
          }

          v8 = v8 + 1;
        }

        while (v8 != v58);
        v7 = [obj countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v7);
    }
  }
}

+ (id)commentKnobBaseOriginForHighlightAtTextRange:(_NSRange)a3 withColumns:(id)a4 positionForRTL:(BOOL)a5
{
  v5 = a5;
  location = a3.location;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = *v37;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v42.location = [v11 range];
        v43.location = location;
        v43.length = 1;
        if (NSIntersectionRange(v42, v43).length)
        {
          v12 = [v11 lineFragmentForCharIndex:location knobTag:11 selectionType:0];
          if (v12)
          {
            if (v5)
            {
              v14 = [v11 textIsVertical] ^ 1;
            }

            else
            {
              v14 = 0;
            }

            v15 = v12[15];
            v16 = v12[17];
            v17 = [v11 textIsVertical];
            v18 = v12[4];
            [v11 frameBounds];
            if (v17)
            {
              v21 = v18;
            }

            else
            {
              v21 = v16 + v18 + (v15 + v16) * -0.5;
            }

            if (v14)
            {
              v22 = v19 + v20;
            }

            else
            {
              v22 = v19;
            }

            if (v11)
            {
              [v11 transformFromWP];
              v23 = v30;
              v24 = v31;
              v26 = v32;
              v25 = v33;
              v28 = v34;
              v27 = v35;
            }

            else
            {
              v27 = 0.0;
              v25 = 0.0;
              v24 = 0.0;
              v28 = 0.0;
              v26 = 0.0;
              v23 = 0.0;
            }

            v13 = [NSValue valueWithCGPoint:v28 + v21 * v26 + v23 * v22, v27 + v21 * v25 + v24 * v22];
            goto LABEL_24;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_24:

  return v13;
}

+ (CGPoint)connectionLinePointForChangeRange:(_NSRange)a3 withColumns:(id)a4 layoutTarget:(id)a5
{
  location = a3.location;
  v7 = a4;
  v29 = v7;
  if (a5)
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v9)
    {
      v10 = *v32;
      do
      {
        v11 = 0;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          v46.location = [v12 range];
          v47.location = location;
          v47.length = 1;
          if (NSIntersectionRange(v46, v47).length)
          {
            v30 = 0;
            v13 = [v12 pRemapCharIndex:location outIsAfterBreak:0 outWithTextSource:&v30];
            v14 = v30;
            v15 = [v12 range];
            if (v13 == &v15[v16])
            {
              v17 = 0;
            }

            else
            {
              v17 = 11;
            }

            if (![v12 lineFragmentForCharIndex:location knobTag:v17 selectionType:0])
            {
              v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10134BCBC();
              }

              v19 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67110146;
                v36 = v18;
                v37 = 2082;
                v38 = "+[CRLWPColumn connectionLinePointForChangeRange:withColumns:layoutTarget:]";
                v39 = 2082;
                v40 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm";
                v41 = 1024;
                v42 = 684;
                v43 = 2082;
                v44 = "lineFragment";
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10134BCE4();
              }

              v20 = off_1019EDA68;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v23 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                v36 = v18;
                v37 = 2114;
                v38 = v23;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPColumn connectionLinePointForChangeRange:withColumns:layoutTarget:]");
              v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
              [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:684 isFatal:0 description:"invalid nil value for '%{public}s'", "lineFragment", v29];
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v9);
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134BD0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134BD20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134BDBC();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v25 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPColumn connectionLinePointForChangeRange:withColumns:layoutTarget:]");
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:667 isFatal:0 description:"invalid nil value for '%{public}s'", "layoutTarget", v29];
  }

  v27 = INFINITY;
  v28 = INFINITY;
  result.y = v28;
  result.x = v27;
  return result;
}

+ (id)closestColumnInColumnsArray:(id)a3 forPoint:(CGPoint)a4 ignoreEmptyColumns:(BOOL)a5 ignoreDrawableOnlyColumns:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = a3;
  v11 = 0;
  v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = *v33;
    v14 = INFINITY;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        [v16 frameBounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        if ((!v7 || [v16 lineCount]) && (!v6 || objc_msgSend(v16, "lineCount") != 1 || (*(objc_msgSend(v16, "lineFragmentAtIndex:", 0) + 24) & 0x40) == 0))
        {
          v39.origin.x = v18;
          v39.origin.y = v20;
          v39.size.width = v22;
          v39.size.height = v24;
          v38.x = x;
          v38.y = y;
          if (CGRectContainsPoint(v39, v38))
          {
            v30 = v16;

            v11 = v30;
            goto LABEL_18;
          }

          v25 = sub_1001203B8(x, y, v18, v20, v22, v24);
          v27 = sub_10011F068(x, y, v25, v26);
          if (v27 < v14)
          {
            v28 = v27;
            v29 = v16;

            v11 = v29;
            v14 = v28;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v11;
}

+ (_NSRange)charRangeForPencilAnnotationStartPoint:(CGPoint)a3 toEndPoint:(CGPoint)a4 inLayoutTarget:(id)a5 onSingleLineFragment:(BOOL)a6
{
  v6 = a6;
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v10 = [a5 columns];
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v11 = [v10 firstObject];
  v12 = v11;
  if (v11)
  {
    [v11 transformToWP];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
  }

  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = [a1 closestColumnInColumnsArray:v10 forPoint:1 ignoreEmptyColumns:0 ignoreDrawableOnlyColumns:{sub_100120ABC(v8, v7, x, y, 0.5)}];
  v27 = 0;
  v17 = [v16 p_charIndexWithTextClosestToWPPoint:1 pastCenterGoesToNextChar:&v27 outFragment:0 leadingEdge:{*&v15 + v7 * *&v14 + *&v13 * v8, *(&v15 + 1) + v7 * *(&v14 + 1) + *(&v13 + 1) * v8}];
  v18 = *&v15 + y * *&v14 + *&v13 * x;
  if (v6 && v16 && v27)
  {
    v19 = sub_100213314(v27, 1, 0, 0, 1, v18);
  }

  else
  {
    v19 = [v16 p_charIndexWithTextClosestToWPPoint:1 pastCenterGoesToNextChar:0 outFragment:0 leadingEdge:{v18, *(&v15 + 1) + y * *(&v14 + 1) + *(&v13 + 1) * x}];
  }

  if (v17 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  if (v17 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  v22 = v20 - v21;

  v23 = v21;
  v24 = v22;
  result.length = v24;
  result.location = v23;
  return result;
}

+ (unint64_t)charIndexForPoint:(CGPoint)a3 inColumnsArray:(id)a4 allowPastBreak:(BOOL)a5 allowNotFound:(BOOL)a6 pastCenterGoesToNextChar:(BOOL)a7 constrainToAscentAndDescent:(BOOL)a8 ignoreEmptyColumns:(BOOL)a9 isAtEndOfLine:(BOOL *)a10 leadingEdge:(BOOL *)a11
{
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  y = a3.y;
  x = a3.x;
  v17 = [a1 closestColumnInColumnsArray:a4 forPoint:a9 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:?];
  v18 = v17;
  if (v13 && ([v17 frameBounds], v21.x = x, v21.y = y, !CGRectContainsPoint(v22, v21)))
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = [v18 charIndexFromPoint:v14 allowPastBreak:v12 pastCenterGoesToNextChar:v13 allowNotFound:v11 constrainToAscentAndDescent:a10 isAtEndOfLine:a11 leadingEdge:{x, y}];
  }

  return v19;
}

+ (CGPoint)p_pinPoint:(CGPoint)a3 toRect:(CGRect)a4
{
  v4 = sub_1001203B8(a3.x, a3.y, a4.origin.x, a4.origin.y, a4.size.width + -1.0, a4.size.height + -1.0);
  result.y = v5;
  result.x = v4;
  return result;
}

+ (CGPoint)pinToNaturalBounds:(CGPoint)a3 andLastLineFragment:(BOOL)a4 inLayoutTarget:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = [v9 geometry];
  [v10 size];
  v11 = sub_10011ECB4();
  [a1 p_pinPoint:x toRect:{y, v11, v12, v13, v14}];
  v45 = v16;
  v46 = v15;

  v17.f64[0] = v46;
  v17.f64[1] = v45;
  v44 = v17;
  if (v5)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v18 = [v9 columns];
    v19 = [v18 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v19)
    {
      v20 = *v51;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          [v22 frameBounds];
          v56.y = v45;
          v56.x = v46;
          if (CGRectContainsPoint(v57, v56))
          {
            v23 = [v22 lineCount];
            if (v23)
            {
              [v22 boundsOfLineFragmentAtIndex:v23 - 1];
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;
              if (v22)
              {
                [v22 transformToWP];
                v32 = v47.f64[1];
                v33 = v48.f64[1];
                v34 = v48.f64[0];
                v35 = v49.f64[1];
                v42 = v49.f64[0];
                v43 = v47.f64[0];
              }

              else
              {
                v35 = 0.0;
                v33 = 0.0;
                v32 = 0.0;
                v42 = 0.0;
                v43 = 0.0;
                v34 = 0.0;
              }

              v58.origin.x = v25;
              v58.origin.y = v27;
              v58.size.width = v29;
              v58.size.height = v31;
              MaxY = CGRectGetMaxY(v58);
              if (v35 + v45 * v33 + v32 * v46 > MaxY)
              {
                if (v22)
                {
                  [v22 transformFromWP];
                  v36 = v47;
                  v37 = v48;
                  v38 = v49;
                }

                else
                {
                  v38 = 0uLL;
                  v36 = 0uLL;
                  v37 = 0uLL;
                }

                v44 = vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, MaxY), v36, v42 + v45 * v34 + v43 * v46));
              }
            }

            goto LABEL_20;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  v40 = v44.f64[1];
  v39 = v44.f64[0];
  result.y = v40;
  result.x = v39;
  return result;
}

+ (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 inLayoutTarget:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [a1 pinToNaturalBounds:1 andLastLineFragment:v7 inLayoutTarget:{x, y}];
  v8 = [a1 charIndexFromPoint:1 allowPastBreak:0 constrainToAscentAndDescent:0 isAtEndOfLine:v7 inLayoutTarget:?];

  return v8;
}

+ (unint64_t)charIndexForPointWithPinning:(CGPoint)a3 isTail:(BOOL)a4 selectionType:(unint64_t)a5 inLayoutTarget:(id)a6
{
  v7 = a4;
  y = a3.y;
  x = a3.x;
  v11 = a6;
  [a1 pinToNaturalBounds:1 andLastLineFragment:v11 inLayoutTarget:{x, y}];
  v13 = v12;
  v15 = v14;
  v16 = [v11 columns];
  v17 = [CRLWPColumn closestColumnInColumnsArray:v16 forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:v13, v15];

  if (v17)
  {
    v18 = [v17 charIndexForSelectionFromPoint:v7 isTail:{x, y}];
    v19 = v18;
    if (a5 != 7 && v7 && v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [v11 storage];
      v19 = [v20 nextCharacterIndex:v19];
    }
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v19;
}

+ (unint64_t)charIndexFromPoint:(CGPoint)a3 allowPastBreak:(BOOL)a4 allowNotFound:(BOOL)a5 pastCenterGoesToNextChar:(BOOL)a6 constrainToAscentAndDescent:(BOOL)a7 isAtEndOfLine:(BOOL *)a8 leadingEdge:(BOOL *)a9 ignoreEmptyColumns:(BOOL)a10 inLayoutTarget:(id)a11
{
  v29 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  y = a3.y;
  x = a3.x;
  v18 = a11;
  v19 = v18;
  if (!v14 && ([v18 layoutIsValid] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134BDE4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134BDF8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134BE80();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPColumn charIndexFromPoint:allowPastBreak:allowNotFound:pastCenterGoesToNextChar:constrainToAscentAndDescent:isAtEndOfLine:leadingEdge:ignoreEmptyColumns:inLayoutTarget:]");
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:874 isFatal:0 description:"Should not call when layout has not been validated"];
  }

  if ([v19 layoutIsValid])
  {
    v23 = [v19 columns];
    if ([v23 count] || v14 || (objc_msgSend(v19, "geometry"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "frame"), v30.x = x, v30.y = y, v25 = CGRectContainsPoint(v31, v30), v24, !v25))
    {
      v27 = [CRLWPColumn charIndexForPoint:v23 inColumnsArray:v15 allowPastBreak:v14 allowNotFound:v13 pastCenterGoesToNextChar:v29 constrainToAscentAndDescent:a10 ignoreEmptyColumns:x isAtEndOfLine:y leadingEdge:a8, a9];
    }

    else
    {
      v26 = [v19 storage];
      v27 = [v26 length];

      if (a8)
      {
        *a8 = 0;
      }

      if (a9)
      {
        *a9 = 1;
      }
    }
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v27;
}

+ (id)smartFieldWithAttributeKind:(unint64_t)a3 inColumnArray:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = [CRLWPColumn closestColumnInColumnsArray:a4 forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:?];
  v9 = v8;
  if (v8 && ([v8 frameBounds], v14.x = x, v14.y = y, CGRectContainsPoint(v15, v14)) && (v10 = objc_msgSend(v9, "charIndexFromPoint:allowPastBreak:pastCenterGoesToNextChar:allowNotFound:isAtEndOfLine:leadingEdge:", 0, 0, 1, 0, 0, x, y), v10 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v11 = [v9 smartFieldAtCharIndex:v10 attributeKind:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)pathForHighlightWithRange:(_NSRange)a3 columnArray:(id)a4 pathStyle:(int)a5
{
  v17 = a4;
  v6 = +[CRLBezierPath bezierPath];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v17;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v19 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = [v9 rectsForSelectionRange:a3.location selectionType:a3.length forParagraphMode:0 includeRuby:0 includePaginatedAttachments:{a5 == 1, 0}];
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = *v22;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              [v14 CGRectValue];
              if (a5 == 2)
              {
                [v14 CGRectValue];
                v33 = CGRectInset(v32, -3.0, -3.0);
                v15 = [CRLBezierPath bezierPathWithLegacyRoundedRect:v33.origin.x cornerRadius:v33.origin.y, v33.size.width, v33.size.height, 3.0];
                [v6 appendBezierPath:v15];
              }

              else
              {
                [v6 appendBezierPathWithRect:?];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v11);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  return v6;
}

+ (CGRect)boundsRectForSelection:(id)a3 columnArray:(id)a4 includeRuby:(BOOL)a5 includePaginatedAttachments:(BOOL)a6
{
  v34 = a6;
  v6 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (v8)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v15)
    {
      v16 = *v40;
      do
      {
        v17 = 0;
        do
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v39 + 1) + 8 * v17);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v19 = [v8 range];
          v21 = [v18 rectsForSelectionRange:v19 selectionType:v20 forParagraphMode:objc_msgSend(v8 includeRuby:"type") includePaginatedAttachments:{0, v6, v34}];
          v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v22)
          {
            v23 = *v36;
            do
            {
              v24 = 0;
              do
              {
                if (*v36 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                [*(*(&v35 + 1) + 8 * v24) CGRectValue];
                v48.origin.x = v25;
                v48.origin.y = v26;
                v48.size.width = v27;
                v48.size.height = v28;
                v45.origin.x = x;
                v45.origin.y = y;
                v45.size.width = width;
                v45.size.height = height;
                v46 = CGRectUnion(v45, v48);
                x = v46.origin.x;
                y = v46.origin.y;
                width = v46.size.width;
                height = v46.size.height;
                v24 = v24 + 1;
              }

              while (v22 != v24);
              v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v22);
          }

          v17 = v17 + 1;
        }

        while (v17 != v15);
        v15 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v15);
    }
  }

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (id)columnForCharIndex:(unint64_t)a3 allowEndOfColumn:(BOOL)a4 withColumns:(id)a5
{
  v5 = a4;
  v7 = a5;
  v26 = [v7 firstObject];
  v8 = [v26 storage];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v9)
  {
    v10 = v5;
    v11 = *v29;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        v14 = [v13 storage];
        v15 = v8 == v14;

        if (!v15)
        {
          v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10134BEA8();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v33 = v16;
            v34 = 2082;
            v35 = "+[CRLWPColumn columnForCharIndex:allowEndOfColumn:withColumns:]";
            v36 = 2082;
            v37 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm";
            v38 = 1024;
            v39 = 1068;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d unexpected column storage", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134BED0();
          }

          v18 = off_1019EDA68;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v23 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v33 = v16;
            v34 = 2114;
            v35 = v23;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v19 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPColumn columnForCharIndex:allowEndOfColumn:withColumns:]");
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
          [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1068 isFatal:0 description:"unexpected column storage"];
        }

        v21 = [v13 range];
        if (v21 + v22 + v10 > a3)
        {
          v24 = v13;
          goto LABEL_21;
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_21:

  return v24;
}

+ (_NSRange)rangeOfColumns:(id)a3
{
  v3 = a3;
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = 0;
  if ([v3 count])
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    v4 = [v6 range];
    v5 = v7;
  }

  if ([v3 count] >= 2)
  {
    v8 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
    v9 = [v8 range];
    if (v4 <= &v9[v10])
    {
      v11 = &v9[v10];
    }

    else
    {
      v11 = v4;
    }

    if (v4 >= &v9[v10])
    {
      v4 = &v9[v10];
    }

    v5 = &v11[-v4];
  }

  v12 = v4;
  v13 = v5;
  result.length = v13;
  result.location = v12;
  return result;
}

- (CRLWPColumn)initWithStorage:(id)a3 frameBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = CRLWPColumn;
  v11 = [(CRLWPColumn *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_storage, a3);
    v12->_frameBounds.origin.x = x;
    v12->_frameBounds.origin.y = y;
    v12->_frameBounds.size.width = width;
    v12->_frameBounds.size.height = height;
    v13 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v12->_transformFromWP.a = v13;
    *&v12->_transformFromWP.c = v13;
    *&v12->_transformFromWP.tx = v13;
    v12->_anchoredAttachmentRange = xmmword_101464828;
    v12->_scaleTextPercent = 100;
    v12->_nextLinePosition = NAN;
    operator new();
  }

  return 0;
}

- (id)initForTestingWithStorage:(id)a3 frameBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(CRLWPColumn *)self initWithStorage:v9 frameBounds:x, y, width, height];
  v11 = *&CGAffineTransformIdentity.c;
  v13[0] = *&CGAffineTransformIdentity.a;
  v13[1] = v11;
  v13[2] = *&CGAffineTransformIdentity.tx;
  [(CRLWPColumn *)v10 setTransformFromWP:v13];

  return v10;
}

- (void)dealloc
{
  cntrl = self->_lineFragmentArray.__cntrl_;
  self->_lineFragmentArray.__ptr_ = 0;
  self->_lineFragmentArray.__cntrl_ = 0;
  if (cntrl)
  {
    sub_1000F532C(cntrl);
  }

  v4.receiver = self;
  v4.super_class = CRLWPColumn;
  [(CRLWPColumn *)&v4 dealloc];
}

- (_NSRange)range
{
  v3 = [(CRLWPColumn *)self startCharIndex];
  v4 = [(CRLWPColumn *)self characterCount];
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (void)setRange:(_NSRange)a3
{
  length = a3.length;
  [(CRLWPColumn *)self setStartCharIndex:a3.location];

  [(CRLWPColumn *)self setCharacterCount:length];
}

- (_NSRange)anchoredRange
{
  length = self->_anchoredAttachmentRange.length;
  location = self->_anchoredAttachmentRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setAnchoredRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.length >= 0x7FFFFFFFFFFFFFFFLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134BEF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134BF0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134BF94();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLWPColumn setAnchoredRange:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1235 isFatal:0 description:"Illegal anchored range"];
  }

  self->_anchoredAttachmentRange.location = location;
  self->_anchoredAttachmentRange.length = length;
}

- (CGSize)maxSize
{
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)transformFromWP
{
  result = &self->_transformFromWP;
  v4 = *&result->c;
  *&retstr->a = *&result->a;
  *&retstr->c = v4;
  *&retstr->tx = *&result->tx;
  return result;
}

- (double)minimumHeightForLayoutOnPage
{
  if ([(CRLWPColumn *)self lineCount])
  {
    v3 = sub_1000F4FE8(self->_lineFragmentArray.__ptr_, 0);
    MinY = CGRectGetMinY(*(v3 + 40));
    [(CRLWPColumn *)self logicalBoundsTop];
    v6 = v5;
    result = 0.0;
    if (MinY > v6)
    {
      return result;
    }

    v8 = 0.0;
    if (*(v3 + 488) == 1)
    {
      v8 = *(v3 + 160);
    }

    contentBottom = *(v3 + 32) + *(v3 + 136) + v8;
  }

  else
  {
    contentBottom = self->_contentBottom;
  }

  [(CRLWPColumn *)self logicalBoundsTop];
  return contentBottom - v10;
}

- (CGRect)erasableBounds:(unint64_t)a3
{
  x = self->_frameBounds.origin.x;
  y = self->_frameBounds.origin.y;
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  v36.origin.x = sub_1000F51AC(self->_lineFragmentArray.__ptr_, a3).n64_f64[0];
  v36.origin.y = v8;
  v36.size.width = v9;
  v36.size.height = v10;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v31 = CGRectUnion(v30, v36);
  v11 = v31.origin.x;
  v12 = v31.origin.y;
  v13 = v31.size.width;
  v14 = v31.size.height;
  paragraphAdornments = self->_paragraphAdornments;
  if (paragraphAdornments && [(NSMutableArray *)paragraphAdornments count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = self->_paragraphAdornments;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v25 + 1) + 8 * v19) rect];
          v37.origin.x = v20;
          v37.origin.y = v21;
          v37.size.width = v22;
          v37.size.height = v23;
          v32.origin.x = v11;
          v32.origin.y = v12;
          v32.size.width = v13;
          v32.size.height = v14;
          v33 = CGRectUnion(v32, v37);
          v11 = v33.origin.x;
          v12 = v33.origin.y;
          v13 = v33.size.width;
          v14 = v33.size.height;
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }
  }

  [(CRLWPColumn *)self transformFromWP];
  v34.origin.x = v11;
  v34.origin.y = v12;
  v34.size.width = v13;
  v34.size.height = v14;
  return CGRectApplyAffineTransform(v34, &v24);
}

- (double)textBlockBottom
{
  [(CRLWPColumn *)self logicalBoundsTop];
  v4 = v3;
  v5 = sub_1000F500C(self->_lineFragmentArray.__ptr_);
  if (!v5)
  {
    return v4;
  }

  v6 = v5[5];
  v7 = v5[6];
  v8 = v5[7];
  v9 = v5[8];

  return CGRectGetMaxY(*&v6);
}

- (double)textHeight
{
  [(CRLWPColumn *)self textBlockBottom];
  v4 = v3;
  [(CRLWPColumn *)self logicalBoundsTop];
  return v4 - v5;
}

- (BOOL)requiresGlyphVectorsForHeightMeasurement
{
  v2 = [(CRLWPColumn *)self lineFragmentArray];
  v3 = sub_1000F4FD8(*v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000F4FE8(*v2, 0);
    if (sub_100210CD0(v5))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v6 = 1;
      do
      {
        v7 = v6;
        if (v4 == v6)
        {
          break;
        }

        v8 = sub_1000F4FE8(*v2, v6);
        v9 = sub_100210CD0(v8);
        v6 = v7 + 1;
      }

      while (!v9);
      LOBYTE(v3) = v7 < v4;
    }
  }

  return v3;
}

- (CGRect)frameBounds
{
  x = self->_frameBounds.origin.x;
  y = self->_frameBounds.origin.y;
  width = self->_frameBounds.size.width;
  height = self->_frameBounds.size.height;
  [(CRLWPColumn *)self transformFromWP];
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  return CGRectApplyAffineTransform(v7, &v6);
}

+ (CGPoint)pinPoint:(CGPoint)a3 toBottomOfLineFragmentInColumns:(id)a4
{
  x = a3.x;
  y = a3.y;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = a4;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v6.f64[0] = x;
  v6.f64[1] = y;
  v31 = v6;
  if (v5)
  {
    v7 = *v38;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        [v9 frameBounds];
        v43.x = x;
        v43.y = y;
        if (CGRectContainsPoint(v44, v43))
        {
          v10 = [v9 lineCount];
          if (v10)
          {
            [v9 boundsOfLineFragmentAtIndex:v10 - 1];
            v12 = v11;
            v14 = v13;
            v16 = v15;
            v18 = v17;
            if (v9)
            {
              [v9 transformToWP];
              v19 = v34.f64[1];
              v20 = v35.f64[1];
              v21 = v35.f64[0];
              v22 = v36.f64[1];
              v29 = v36.f64[0];
              v30 = v34.f64[0];
            }

            else
            {
              v22 = 0.0;
              v20 = 0.0;
              v19 = 0.0;
              v29 = 0.0;
              v30 = 0.0;
              v21 = 0.0;
            }

            v45.origin.x = v12;
            v45.origin.y = v14;
            v45.size.width = v16;
            v45.size.height = v18;
            MaxY = CGRectGetMaxY(v45);
            if (v22 + y * v20 + v19 * x > MaxY)
            {
              if (v9)
              {
                [v9 transformFromWP];
                v23 = v34;
                v24 = v35;
                v25 = v36;
              }

              else
              {
                v25 = 0uLL;
                v23 = 0uLL;
                v24 = 0uLL;
              }

              v31 = vaddq_f64(v25, vmlaq_n_f64(vmulq_n_f64(v24, MaxY), v23, v29 + y * v21 + v30 * x));
            }
          }

          goto LABEL_19;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v27 = v31.f64[1];
  v26 = v31.f64[0];
  result.y = v27;
  result.x = v26;
  return result;
}

- (void)setLineFragmentArray:(const void *)a3
{
  v4 = *a3;
  v3 = *(a3 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_lineFragmentArray.__cntrl_;
  self->_lineFragmentArray.__ptr_ = v4;
  self->_lineFragmentArray.__cntrl_ = v3;
  if (cntrl)
  {
    sub_1000F532C(cntrl);
  }
}

- (void)offsetLineFragmentsBy:(CGSize)a3
{
  if (a3.width != 0.0 || a3.height != 0.0)
  {
    v4 = *&a3.height;
    sub_1000F522C(self->_lineFragmentArray.__ptr_, a3.width, *&a3.height);
    *&self->_contentBottom = vaddq_f64(vdupq_lane_s64(v4, 0), *&self->_contentBottom);
  }
}

- (void)makeEmpty:(unint64_t)a3 anchoredRange:(_NSRange)a4 layoutResultFlags:(unint64_t)a5
{
  length = a4.length;
  location = a4.location;
  [(CRLWPColumn *)self setStartCharIndex:?];
  [(CRLWPColumn *)self setCharacterCount:0];
  [(CRLWPColumn *)self setAnchoredRange:location, length];
  self->_contentBottom = 0.0;
  self->_erasableContentBottom = 0.0;
  self->_layoutResultFlags = a5;
  [(CRLWPColumn *)self setNextWidowPullsDownFromCharIndex:a3];
  sub_1000F515C(self->_lineFragmentArray.__ptr_);

  [(CRLWPColumn *)self clearAdornments];
}

- (CGRect)boundsOfLineFragmentAtIndex:(unint64_t)a3
{
  v4 = sub_1000F4FE8(self->_lineFragmentArray.__ptr_, a3);
  v5 = v4[5];
  v6 = v4[6];
  v7 = v4[7];
  v8 = v4[8];
  [(CRLWPColumn *)self transformFromWP];
  v10.origin.x = v5;
  v10.origin.y = v6;
  v10.size.width = v7;
  v10.size.height = v8;
  return CGRectApplyAffineTransform(v10, &v9);
}

- (id)partitionedLayoutOfLineFragmentAtIndex:(unint64_t)a3
{
  v3 = sub_1000F4FE8(self->_lineFragmentArray.__ptr_, a3);

  return sub_10020BCFC(v3);
}

- (CGRect)rawGlyphRectOfRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v10 = [(CRLWPColumn *)self lineIndexForCharIndex:a3.location eol:0];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(CRLWPColumn *)self lineFragmentAtIndex:v10];
    v12 = v11;
    if (v11[3] < 0)
    {
      v13 = &xmmword_101464828;
    }

    else
    {
      v13 = v11;
    }

    v23.location = location;
    v23.length = length;
    v14 = NSIntersectionRange(v23, *v13);
    if (location == v14.location && length == v14.length)
    {
      x = sub_10020F0DC(v12, location, length, self);
      y = v16;
      width = v17;
      height = v18;
    }
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CRLWPFontHeightInfo)fontHeightInfoAtCharIndex:(SEL)a3
{
  *retstr = *byte_101463CD0;
  result = [(CRLWPColumn *)self lineIndexForCharIndex:a4 eol:0];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(CRLWPColumn *)self lineFragmentAtIndex:result];

    sub_100210500(v8, a4, self, retstr);
  }

  return result;
}

- (_NSRange)rangeOfLineFragmentAtIndex:(unint64_t)a3
{
  v3 = sub_1000F4FE8(self->_lineFragmentArray.__ptr_, a3);
  if (*(v3 + 24) < 0)
  {
    v4 = &xmmword_101464828;
  }

  else
  {
    v4 = v3;
  }

  v5 = *v4;
  v6 = v4[1];
  result.length = v6;
  result.location = v5;
  return result;
}

- (unsigned)hyphenCharOfLineFragmentAtIndex:(unint64_t)a3
{
  v3 = sub_1000F4FE8(self->_lineFragmentArray.__ptr_, a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (!sub_10021168C(v3))
  {
    return 0;
  }

  return sub_1002163D4(v4);
}

- ($D12B6492C59FD4124ECBBA05678185BF)lineMetricsAtCharIndex:(SEL)a3 allowEndOfLine:(unint64_t)a4
{
  v5 = a5;
  memcpy(retstr, &unk_101465F68, sizeof($D12B6492C59FD4124ECBBA05678185BF));
  result = [(CRLWPColumn *)self lineIndexForCharIndex:a4 eol:v5];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(CRLWPColumn *)self lineFragmentAtIndex:result];
    v11 = v10;
    v35 = 0;
    size = CGRectNull.size;
    retstr->var0.origin = CGRectNull.origin;
    retstr->var0.size = size;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    if (v10[3] < 0)
    {
      v13 = &xmmword_101464828;
    }

    else
    {
      v13 = v10;
    }

    v14 = [(CRLWPColumn *)self rectsForSelectionRange:*v13 selectionType:*(v13 + 1) forParagraphMode:0 includeRuby:0 includePaginatedAttachments:0, 0, v31];
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v16 = *v32;
      x = retstr->var0.origin.x;
      y = retstr->var0.origin.y;
      width = retstr->var0.size.width;
      height = retstr->var0.size.height;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v31 + 1) + 8 * i) CGRectValue];
          v39.origin.x = v22;
          v39.origin.y = v23;
          v39.size.width = v24;
          v39.size.height = v25;
          v37.origin.x = x;
          v37.origin.y = y;
          v37.size.width = width;
          v37.size.height = height;
          v38 = CGRectUnion(v37, v39);
          x = v38.origin.x;
          y = v38.origin.y;
          width = v38.size.width;
          height = v38.size.height;
        }

        v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v15);
      retstr->var0.origin.x = x;
      retstr->var0.origin.y = y;
      retstr->var0.size.width = width;
      retstr->var0.size.height = height;
    }

    retstr->var1 = *(v11 + 32);
    v26 = *(v11 + 152);
    v27 = *(v11 + 168);
    v28 = *(v11 + 184);
    *&retstr->var2.descent = *(v11 + 136);
    *&retstr->var2.underlinePosition = v28;
    *&retstr->var2.verticalHeight = v27;
    *&retstr->var2.leadingBelow = v26;
    v29 = *(v11 + 104);
    *&retstr->var2.ascent = *(v11 + 120);
    *&retstr->var2.spaceBefore = v29;
    if (sub_10020BC74(v11))
    {
      v30 = sub_100212408(v11, a4, &v35);
      retstr->var3 = CTFontGetXHeight(v30);
    }

    return [(CRLWPColumn *)self transformToWP];
  }

  return result;
}

- (double)horizontalOffsetForCharIndex:(unint64_t)a3 lineFragmentIndex:(unint64_t)a4 bumpPastHyphen:(BOOL)a5 allowPastLineBounds:(BOOL)a6
{
  v7 = a5;
  v9 = sub_1000F4FE8(self->_lineFragmentArray.__ptr_, a4);

  return sub_10020CC28(v9, a3, v7, a6, 0);
}

- (const)lineFragmentClosestToPoint:(CGPoint)a3 knobTag:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  [(CRLWPColumn *)self transformToWP];
  v8 = [(CRLWPColumn *)self lineFragmentArray];
  v9 = sub_1000F4FD8(*v8);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = v21 + y * v20 + v19 * x;
  v14 = INFINITY;
  do
  {
    v15 = sub_1000F4FE8(*v8, v12);
    sub_100345F44(a4, v15[5], v15[6], v15[7], v15[8]);
    v17 = vabdd_f64(v13, v16);
    if (v17 < v14)
    {
      v11 = v15;
      v14 = v17;
    }

    ++v12;
  }

  while (v10 != v12);
  return v11;
}

- (const)lineFragmentForCharIndex:(unint64_t)a3 knobTag:(unint64_t)a4 selectionType:(unint64_t)a5
{
  v50 = 0;
  v7 = [(CRLWPColumn *)self range];
  if (a3 >= v7 && a3 - v7 < v8 || (v9 = [(CRLWPColumn *)self range], &v9[v10] == a3))
  {
    v49 = 0;
    v11 = [(CRLWPColumn *)self pRemapCharIndex:a3 outIsAfterBreak:&v50 outWithTextSource:&v49];
    v12 = v49;
    buf[0] = 0;
    v48 = 0;
    [(CRLWPColumn *)self pInfoForCharIndex:v11 isAtStart:&v48 isAtEnd:buf];
    v13 = [(CRLWPColumn *)self lineFragmentArray];
    v14 = sub_1000F4FD8(*v13);
    if (v14)
    {
      v15 = 0;
      v45 = v12;
      do
      {
        v16 = sub_1000F4FE8(*v13, v15);
        v17 = v16;
        v18 = *(v16 + 24);
        if ((v18 & 0x40) == 0)
        {
          v19 = v11;
          v20 = (v18 & 0x1000) != 0 && a5 == 7;
          v21 = !v20;
          v22 = v18 < 0;
          v23 = &xmmword_101464828;
          if (!v22)
          {
            v23 = v16;
          }

          v25 = *v23;
          v24 = *(v23 + 1);
          v26 = [v12 charIndexRemappedFromStorage:*v23];
          v27 = [v12 charIndexRemappedFromStorage:&v24[v25]];
          v28 = v19 < v25 || &v19[-v25] >= v24;
          if (!v28 || (v29 = 0, buf[0] == 1) && v19 == v26)
          {
            v29 = 1;
            if (a4 == 11 && v19 == v26)
            {
              v30 = *(v17 + 24);
              if (v30)
              {
                v29 = (v30 >> 9) & 1;
              }

              else
              {
                v29 = 1;
              }
            }
          }

          if (a5 == 7)
          {
            v26 = sub_100211708(v17);
            v27 = sub_10021173C(v17);
            v31 = (a4 == 11) ^ v21 ^ 1;
          }

          else
          {
            v31 = a4 == 11;
          }

          v32 = v19 == v27;
          if (v19 == v27 && v31 != 0)
          {
            if (buf[0] == 1)
            {
              v32 = (v14 == 1) & ~v50;
            }

            else
            {
              v32 = 0;
            }
          }

          v20 = v19 == v26;
          v11 = v19;
          v34 = v31 ^ 1;
          if (!v20)
          {
            v34 = 1;
          }

          if (v34)
          {
            LOBYTE(v35) = 0;
          }

          else
          {
            v35 = (*(v17 + 25) >> 1) & 1;
          }

          v12 = v45;
          if ((v29 | v32) & 1) != 0 || (v35)
          {
            goto LABEL_57;
          }
        }

        ++v15;
      }

      while (--v14);
    }
  }

  else
  {
    v36 = [(CRLWPColumn *)self storage];
    v37 = [v36 length];

    if (v37 >= a3)
    {
      return 0;
    }

    v38 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134C080();
    }

    v39 = off_1019EDA68;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v44 = [(CRLWPColumn *)self storage];
      *buf = 67110402;
      v52 = v38;
      v53 = 2082;
      v54 = "[CRLWPColumn lineFragmentForCharIndex:knobTag:selectionType:]";
      v55 = 2082;
      v56 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm";
      v57 = 1024;
      v58 = 1670;
      v59 = 2048;
      v60 = a3;
      v61 = 2048;
      v62 = [v44 length];
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d charIndex %lu beyond storage length: %lu", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134C094();
    }

    v40 = off_1019EDA68;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v12 = [NSString stringWithUTF8String:"[CRLWPColumn lineFragmentForCharIndex:knobTag:selectionType:]"];
    v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
    v42 = [(CRLWPColumn *)self storage];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, v41, 1670, 0, "charIndex %lu beyond storage length: %lu", a3, [v42 length]);
  }

  v17 = 0;
LABEL_57:

  return v17;
}

- (const)nearestLineFragmentWithSameVerticalPositionAs:(unint64_t)a3 xPos:(double)a4
{
  v5 = a3;
  v22 = *(sub_1000F4FE8(self->_lineFragmentArray.__ptr_, a3) + 40);
  MinY = CGRectGetMinY(v22);
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    v23 = *(sub_1000F4FE8(self->_lineFragmentArray.__ptr_, v8 - 1) + 40);
  }

  while (CGRectGetMinY(v23) >= MinY);
  v9 = [(CRLWPColumn *)self lineCount];
  if (v8 < v9)
  {
    v10 = v9;
    v11 = INFINITY;
    v12 = v8;
    do
    {
      v13 = sub_1000F4FE8(self->_lineFragmentArray.__ptr_, v12);
      v14 = v13[5];
      v15 = v13[6];
      v16 = v13[7];
      v17 = v13[8];
      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v16;
      v24.size.height = v17;
      if (MinY != CGRectGetMinY(v24))
      {
        break;
      }

      v25.origin.x = v14;
      v25.origin.y = v15;
      v25.size.width = v16;
      v25.size.height = v17;
      v18 = vabdd_f64(a4, CGRectGetMinX(v25));
      v26.origin.x = v14;
      v26.origin.y = v15;
      v26.size.width = v16;
      v26.size.height = v17;
      v19 = vabdd_f64(a4, CGRectGetMaxX(v26));
      if (v19 >= v18)
      {
        v19 = v18;
      }

      if (v19 < v11)
      {
        v11 = v19;
        v8 = v12;
      }

      ++v12;
    }

    while (v12 < v10);
  }

  return [(CRLWPColumn *)self lineFragmentAtIndex:v8];
}

- (void)pInfoForCharIndex:(unint64_t)a3 isAtStart:(BOOL *)a4 isAtEnd:(BOOL *)a5
{
  v8 = [(CRLWPStorage *)self->_storage length];
  *a4 = a3 == 0;
  *a5 = v8 == a3;
}

- (unint64_t)pRemapCharIndex:(unint64_t)a3 outIsAfterBreak:(BOOL *)a4 outWithTextSource:(id *)a5
{
  v9 = self->_storage;
  v10 = [(CRLWPStorage *)v9 charIndexMappedFromStorage:a3];
  v11 = a3;
  if (v10)
  {
    v11 = sub_10027EB4C(a3, v9);
  }

  if (a4)
  {
    if (v11 == a3)
    {
      v12 = 0;
    }

    else
    {
      v13 = [(CRLWPStorage *)self->_storage characterAtIndex:?];
      v14 = v13;
      v15 = sub_10027E2F0(v13);
      if (v14 == 8232)
      {
        v12 = 1;
      }

      else
      {
        v12 = v15;
      }
    }

    *a4 = v12;
  }

  if (a5)
  {
    v16 = v9;
    *a5 = v9;
  }

  v17 = [(CRLWPStorage *)v9 charIndexRemappedFromStorage:a3];

  return v17;
}

- (unint64_t)lineIndexForCharIndex:(unint64_t)a3 eol:(BOOL)a4
{
  v4 = a4;
  v24 = 0;
  v23 = 0;
  v6 = [(CRLWPColumn *)self pRemapCharIndex:a3 outIsAfterBreak:&v24 outWithTextSource:&v23];
  v7 = v23;
  v22 = 0;
  [(CRLWPColumn *)self pInfoForCharIndex:v6 isAtStart:&v22 isAtEnd:&v22 + 1];
  v8 = [(CRLWPColumn *)self lineFragmentArray];
  v9 = sub_1000F4FD8(*v8);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = sub_1000F4FE8(*v8, v10);
      v12 = v11;
      v13 = *(v11 + 3) < 0 ? &xmmword_101464828 : v11;
      v15 = *v13;
      v14 = *(v13 + 1);
      v16 = [v7 charRangeRemappedFromStorage:{*v13, v14}];
      v17 = 0;
      v18 = v6 < v15 || v6 - v15 >= v14;
      v19 = !v18;
      v20 = v6 == v16 ? HIBYTE(v22) : 0;
      if (v6 == v15 + v14 && ((v4 | HIBYTE(v22)) & 1) != 0)
      {
        v17 = ((*(v12 + 3) & 0x100000100) == 0) & ~v24;
      }

      if ((v19 | v20) & 1) != 0 || (v17)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (CGRect)caretRectForSelection:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134C0BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134C0D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134C16C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLWPColumn caretRectForSelection:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1856 isFatal:0 description:"invalid nil value for '%{public}s'", "selection"];
  }

  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v12 = [v4 range];
  v13 = [v4 caretAffinity];
  v14 = [(CRLWPColumn *)self range];
  v16 = v15;
  v17 = [(CRLWPStorage *)self->_storage range];
  if (v12 <= &v17[v18])
  {
    v83 = 0;
    v82 = 0;
    v19 = [(CRLWPColumn *)self pRemapCharIndex:v12 outIsAfterBreak:&v83 outWithTextSource:&v82];
    v71 = v82;
    v81 = 0;
    [(CRLWPColumn *)self pInfoForCharIndex:v19 isAtStart:&v81 isAtEnd:&v81 + 1];
    if (v19 == &v14[v16])
    {
      v21 = 1;
    }

    else
    {
      v21 = v13;
    }

    if (v19 == v12)
    {
      v22 = v13;
    }

    else
    {
      v22 = v21;
    }

    if ((v19 < v14 || v19 - v14 >= v16 || v19 <= v14 && (v81 & 1) == 0 && v22 == 1 && (v83 & 1) == 0) && (v19 != &v14[v16] || ((v83 & 1) != 0 || v22 != 1) && HIBYTE(v81) != 1))
    {
      goto LABEL_102;
    }

    v23 = [(CRLWPColumn *)self lineIndexForCharIndex:v12 eol:v22 == 1];
    if (v23 >= [(CRLWPColumn *)self lineCount])
    {
      goto LABEL_102;
    }

    v24 = [(CRLWPColumn *)self lineFragmentAtIndex:v23];
    if (!v24)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134C194();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134C1BC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134C258();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v26 = [NSString stringWithUTF8String:"[CRLWPColumn caretRectForSelection:]"];
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
      [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:1898 isFatal:0 description:"invalid nil value for '%{public}s'", "lineFragment"];
    }

    if (!sub_10020BC74(v24))
    {
      v20 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(0, *&v28);
      x = v33;
      y = v34;
      width = v35;
      height = v36;
      v37 = *(v24 + 3);
      if (v37 < 0)
      {
        v38 = &xmmword_101464828;
      }

      else
      {
        v38 = v24;
      }

      v39 = *(v38 + 1);
      if (v39)
      {
        if (v37 < 0)
        {
          v40 = &xmmword_101464828;
        }

        else
        {
          v40 = v24;
        }

        x = v33 + (v19 - *v40) / v39;
      }

      goto LABEL_102;
    }

    v80 = 0;
    v30 = v83 ^ 1;
    if (v19 <= v17)
    {
      v30 = 0;
    }

    v31 = sub_100212408(v24, v19 - v30, &v80);
    v69 = [(CRLWPStorage *)self->_storage characterStyleAtCharIndex:v19 before:(v83 & 1) == 0 effectiveRange:0];
    v70 = [(CRLWPStorage *)self->_storage paragraphStyleAtCharIndex:v19];
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_10028186C(v69, v70, self->_scaleTextPercent);
      v31 = v32;
      if (!v32)
      {
LABEL_101:

LABEL_102:
        [(CRLWPColumn *)self transformFromWP];
        v85.origin.x = x;
        v85.origin.y = y;
        v85.size.width = width;
        v85.size.height = height;
        v86 = CGRectApplyAffineTransform(v85, &v76);
        x = v86.origin.x;
        y = v86.origin.y;
        width = v86.size.width;
        height = v86.size.height;

        goto LABEL_103;
      }
    }

    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    memset(&v76, 0, sizeof(v76));
    sub_10028234C(v31, &v76);
    v41 = sub_1002812E4(v69, v70, 0);
    v68 = v41;
    if (v41)
    {
      [v41 doubleValue];
      v43 = v42;
    }

    else
    {
      v43 = 0.0;
    }

    v44 = [v71 charIndexRemappedFromStorage:{objc_msgSend(v4, "insertionChar")}];
    v45 = [v4 leadingEdge];
    v46 = -[CRLWPColumn lineIndexForCharIndex:eol:](self, "lineIndexForCharIndex:eol:", [v4 insertionChar], v22 == 1);
    if (v46 == v23 || v46 >= [(CRLWPColumn *)self lineCount])
    {
      v47 = 0;
      if (v45)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v47 = *([(CRLWPColumn *)self lineFragmentAtIndex:v46]+ 28) & 1;
      if (v45)
      {
        goto LABEL_65;
      }
    }

    v48 = [v4 isAtEndOfLine];
    if (v44 >= v19)
    {
      v49 = 1;
    }

    else
    {
      v49 = v48;
    }

    if ((v49 & 1) == 0)
    {
      if (!((v19 == *v24) | v47 & 1))
      {
        v45 = 0;
        goto LABEL_69;
      }

LABEL_68:
      v45 = 1;
      v44 = v19;
      goto LABEL_69;
    }

LABEL_65:
    if (!v47)
    {
LABEL_69:
      v50 = &xmmword_101464828;
      if (*(v24 + 3) >= 0)
      {
        v50 = v24;
      }

      v53 = v50;
      v52 = *v50;
      v51 = *(v53 + 1);
      v54 = &v44[-v52] < v51 && v44 >= v52;
      if (v54 || v44 == &v51[v52])
      {
        sub_1002127A8(v24, v44, v45, [v4 isVisual], 0);
        x = v58;
        v59 = v24[4];
        v84[0] = 0.0;
        v74 = 0.0;
        v75 = 0.0;
        v72 = 0.0;
        v73 = 0.0;
        v60 = v59 - v43;
        if (sub_100215308(v24, v19, v84, &v75, &v74, &v73, &v72))
        {
          v61 = floor(v60 + v75 * 0.5 - v84[0]);
          width = v74 + v73 + v72;
          x = x - width;
          v62 = 0.0;
        }

        else
        {
          if ([(CRLWPColumn *)self textIsVertical]&& !v80)
          {
            v76.tx = (v76.c + v76.tx) * 0.5;
            v76.c = v76.tx;
          }

          v61 = floor(v60 - v76.c - v76.ty);
          v62 = ceil(v60 + v76.tx) - v61;
          width = 0.0;
        }

        v63 = *(v24 + 3);
        if (v63)
        {
          height = v24[8];
        }

        else
        {
          height = v62;
        }

        if (v63)
        {
          y = v24[6];
        }

        else
        {
          y = v61;
        }

        if (!v32)
        {
          goto LABEL_100;
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10134C280();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134C2A8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10134C330();
        }

        v55 = off_1019EDA68;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v56 = [NSString stringWithUTF8String:"[CRLWPColumn caretRectForSelection:]"];
        v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
        [CRLAssertionHandler handleFailureInFunction:v56 file:v57 lineNumber:1948 isFatal:0 description:"invalid charIndex for line fragment"];

        if (!v32)
        {
          goto LABEL_100;
        }
      }

      CFRelease(v32);
LABEL_100:

      goto LABEL_101;
    }

    goto LABEL_68;
  }

LABEL_103:

  v64 = x;
  v65 = y;
  v66 = width;
  v67 = height;
  result.size.height = v67;
  result.size.width = v66;
  result.origin.y = v65;
  result.origin.x = v64;
  return result;
}

- (CGRect)glyphRectForRange:(_NSRange)a3 includingLabel:(BOOL)a4
{
  length = a3.length;
  location = a3.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v84.location = [(CRLWPColumn *)self range];
  v84.length = v12;
  range2.location = location;
  v80.location = location;
  v80.length = length;
  v13 = sub_1002BC848(v80, v84, length == 0);
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v16 = *ptr;
    v17 = *(ptr + 1);
    if (*ptr != v17)
    {
      v18 = v13;
      v19 = v14;
      v74 = v13 + v14;
      v20 = location + length;
      do
      {
        v21 = *v16;
        if (*(*v16 + 24) < 0)
        {
          v21 = &xmmword_101464828;
        }

        v23 = *v21;
        v22 = v21[1];
        v81.location = *v21;
        v81.length = v22;
        v85.location = v18;
        v85.length = v19;
        v24.location = sub_1002BC848(v81, v85, v19 == 0);
        if (v24.location != 0x7FFFFFFFFFFFFFFFLL || (!v22 ? (v25 = v23 == v74) : (v25 = 0), v25))
        {
          v26 = v24.location + v24.length;
          if (v24.location + v24.length >= v20)
          {
            v26 = v20;
          }

          if (v24.location < v26)
          {
            v82 = NSIntersectionRange(v24, v24);
            v86.location = range2.location;
            v86.length = length;
            v27 = NSIntersectionRange(v82, v86);
            if (v27.length)
            {
              v75 = height;
              v77 = width;
              v72 = y;
              v73 = x;
              v28 = sub_100210438(*v16, v27.location, v27.length, self);
              v30 = v29;
              v32 = v31;
              v34 = v33;
              v88.origin.x = sub_100210A04(*v16, v27.location, v27.length);
              v35 = v88.origin.x;
              v36 = v88.origin.y;
              v37 = v88.size.width;
              v38 = v88.size.height;
              if (!CGRectIsEmpty(v88))
              {
                v89.origin.x = v28;
                v89.origin.y = v30;
                v89.size.width = v32;
                v89.size.height = v34;
                v107.origin.x = v35;
                v107.origin.y = v36;
                v107.size.width = v37;
                v107.size.height = v38;
                v90 = CGRectUnion(v89, v107);
                v28 = v90.origin.x;
                v30 = v90.origin.y;
                v32 = v90.size.width;
                v34 = v90.size.height;
              }

              v91.origin.x = v28;
              v91.origin.y = v30;
              v91.size.width = v32;
              v91.size.height = v34;
              if (!CGRectIsEmpty(v91))
              {
                v92.origin.x = v28;
                v92.origin.y = v30;
                v92.size.width = v32;
                v92.size.height = v34;
                v93 = CGRectIntegral(v92);
                v28 = v93.origin.x;
                v30 = v93.origin.y;
                v32 = v93.size.width;
                v34 = v93.size.height;
                MaxX = CGRectGetMaxX(v93);
                if (MaxX == rint(CGRectGetMaxX(self->_frameBounds)) + -1.0)
                {
                  v32 = v32 + 1.0;
                }
              }

              v108.size.height = v75;
              v108.size.width = v77;
              v94.origin.x = v28;
              v94.origin.y = v30;
              v94.size.width = v32;
              v94.size.height = v34;
              v108.origin.x = v73;
              v108.origin.y = v72;
              v95 = CGRectUnion(v94, v108);
              x = v95.origin.x;
              y = v95.origin.y;
              width = v95.size.width;
              height = v95.size.height;
            }
          }

          v40 = *v16;
          if ((*(*v16 + 25) & 0x10) != 0)
          {
            v41 = sub_10021173C(v40);
          }

          else
          {
            v41 = sub_100211708(v40);
          }

          v42 = v41;
          if (a4)
          {
            v43 = sub_10020BCF4(*v16);
            if (v43)
            {
              v44 = v43;
              v83.location = v42;
              v83.length = 0;
              v87.location = range2.location;
              v87.length = length;
              v45 = sub_1002BC848(v83, v87, 1);

              if (v45 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v46 = sub_100210E0C(*v16);
                v48 = v47;
                v50 = v49;
                v52 = v51;
                v53 = sub_10020BCF4(*v16);
                v54 = [v53 textLine];
                if (v54)
                {
                  v76 = height;
                  v78 = width;
                  v55 = sub_10020F064();
                  ImageBounds = CTLineGetImageBounds(v54, v55);
                  v56 = ImageBounds.origin.x;
                  v57 = ImageBounds.origin.y;
                  v58 = ImageBounds.size.width;
                  v59 = ImageBounds.size.height;
                  v60 = sub_100210FD0(*v16);
                  v62 = v61;
                  if ([v53 isLabelTateChuYoko])
                  {
                    CGAffineTransformMakeRotation(&range2.length, 1.57079633);
                    v97.origin.x = v56;
                    v97.origin.y = v57;
                    v97.size.width = v58;
                    v97.size.height = v59;
                    v98 = CGRectApplyAffineTransform(v97, &range2.length);
                    v56 = v98.origin.x;
                    v57 = v98.origin.y;
                    v58 = v98.size.width;
                    v59 = v98.size.height;
                  }

                  v99.origin.x = v60 + v56;
                  v99.origin.y = v62 - v57 - v59;
                  v99.size.width = v58;
                  v99.size.height = v59;
                  v100 = CGRectIntegral(v99);
                  v46 = v100.origin.x;
                  v48 = v100.origin.y;
                  v50 = v100.size.width;
                  v52 = v100.size.height;
                  height = v76;
                  width = v78;
                }

                v63 = [v53 shadow];
                if ([v63 isEnabled])
                {
                  [v63 shadowBoundsForRect:{v46, v48, v50, v52}];
                  v46 = v64;
                  v48 = v65;
                  v50 = v66;
                  v52 = v67;
                }

                v101.origin.x = x;
                v101.origin.y = y;
                v101.size.width = width;
                v101.size.height = height;
                v109.origin.x = v46;
                v109.origin.y = v48;
                v109.size.width = v50;
                v109.size.height = v52;
                v102 = CGRectUnion(v101, v109);
                x = v102.origin.x;
                y = v102.origin.y;
                width = v102.size.width;
                height = v102.size.height;
              }
            }
          }
        }

        v16 += 2;
      }

      while (v16 != v17);
    }

    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = width;
    v103.size.height = height;
    if (!CGRectIsNull(v103))
    {
      [(CRLWPColumn *)self transformFromWP];
      v104.origin.x = x;
      v104.origin.y = y;
      v104.size.width = width;
      v104.size.height = height;
      v105 = CGRectApplyAffineTransform(v104, &range2.length);
      x = v105.origin.x;
      y = v105.origin.y;
      width = v105.size.width;
      height = v105.size.height;
    }
  }

  v68 = x;
  v69 = y;
  v70 = width;
  v71 = height;
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

- (unsigned)fontTraitsForRange:(_NSRange)a3 includingLabel:(BOOL)a4
{
  range2 = a3.length;
  location = a3.location;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1002DB7BC;
  v40[3] = &unk_101852FF0;
  v40[4] = &v41;
  v6 = objc_retainBlock(v40);
  v49.location = [(CRLWPColumn *)self range];
  v49.length = v7;
  v46.length = range2;
  v46.location = location;
  v8 = sub_1002BC848(v46, v49, range2 == 0);
  v33.length = v9;
  v33.location = v8;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v11 = *ptr;
    v32 = *(ptr + 1);
    if (*ptr != v32)
    {
      v31 = v8 + v9;
      do
      {
        v12 = v33;
        v13 = *v11;
        if (*(*v11 + 24) < 0)
        {
          v13 = &xmmword_101464828;
        }

        v15 = *v13;
        v14 = v13[1];
        v47.location = *v13;
        v47.length = v14;
        if (sub_1002BC848(v47, v12, v33.length == 0) != 0x7FFFFFFFFFFFFFFFLL || (!v14 ? (v16 = v15 == v31) : (v16 = 0), v16))
        {
          if (sub_10020BC74(*v11))
          {
            v17 = sub_10020BC98(*v11, 0);
            v18 = sub_10026ECB4(v17);
            if (v18)
            {
              v19 = CTLineGetGlyphRuns(v18);
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              obj = v19;
              v20 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
              if (v20)
              {
                v21 = *v37;
                do
                {
                  for (i = 0; i != v20; i = i + 1)
                  {
                    if (*v37 != v21)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v23 = *(*(&v36 + 1) + 8 * i);
                    StringRange = CTRunGetStringRange(v23);
                    v25 = sub_10020B5E0(*v11);
                    v26 = [v25 charRangeMappedToStorage:{StringRange.location, StringRange.length}];
                    v28 = v27;

                    v48.location = v26;
                    v48.length = v28;
                    v50.location = location;
                    v50.length = range2;
                    if (NSIntersectionRange(v48, v50).length)
                    {
                      (v6[2])(v6, v23);
                    }
                  }

                  v20 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
                }

                while (v20);
              }
            }
          }
        }

        v11 += 2;
      }

      while (v11 != v32);
    }
  }

  v29 = *(v42 + 6);

  _Block_object_dispose(&v41, 8);
  return v29;
}

- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)a3 glyphRange:(_NSRange)a4
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  ptr = self->_lineFragmentArray.__ptr_;
  v9 = *ptr;
  v10 = *(ptr + 1);
  if (v9 != v10)
  {
    while (1)
    {
      v12 = *(*v9 + 24) < 0 ? &xmmword_101464828 : *v9;
      v15 = v12;
      v13 = *v12;
      v14 = v15[1];
      v17 = a3 >= v13;
      v16 = a3 - v13;
      v17 = !v17 || v16 >= v14;
      if (!v17)
      {
        break;
      }

      v9 += 2;
      if (v9 == v10)
      {
        goto LABEL_14;
      }
    }

    v18 = sub_1002107B0(*v9, a3, a4.location, a4.length);
    x = v18;
    y = v19;
    width = v20;
    height = v21;
    if (!CGRectIsNull(*&v18))
    {
      [(CRLWPColumn *)self transformFromWP];
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v28 = CGRectApplyAffineTransform(v27, &v26);
      x = v28.origin.x;
      y = v28.origin.y;
      width = v28.size.width;
      height = v28.size.height;
    }
  }

LABEL_14:
  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)a3
{
  ptr = self->_lineFragmentArray.__ptr_;
  v5 = *ptr;
  v4 = *(ptr + 1);
  if (v5 != v4)
  {
    while (1)
    {
      v7 = *(*v5 + 24) < 0 ? &xmmword_101464828 : *v5;
      v10 = v7;
      v8 = *v7;
      v9 = v10[1];
      v12 = a3 >= v8;
      v11 = a3 - v8;
      v12 = !v12 || v11 >= v9;
      if (!v12)
      {
        break;
      }

      v5 += 2;
      if (v5 == v4)
      {
        return 0;
      }
    }

    v14 = *sub_10020BCB0(*v5);
    v15 = *(sub_10020BCB0(*v5) + 8);
    while (v14 != v15)
    {
      if (*(v14 + 24) == a3)
      {
        v16 = sub_10026ECB4(v14);

        return CTLineGetGlyphCount(v16);
      }

      v14 += 104;
    }
  }

  return 0;
}

+ (CGRect)columnRectForRange:(_NSRange)a3 withColumns:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v30.location = [v15 range];
        v31.location = location;
        v31.length = length;
        v16 = NSIntersectionRange(v30, v31);
        if (v16.length)
        {
          [v15 columnRectForRange:{v16.location, v16.length}];
          v35.origin.x = v17;
          v35.origin.y = v18;
          v35.size.width = v19;
          v35.size.height = v20;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v35);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (CGRect)labelRectForCharIndex:(unint64_t)a3 withColumns:(id)a4
{
  v5 = a4;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v59 count:16];
  if (v11)
  {
    v12 = *v35;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v14 range];
        v17 = a3 - v15 < v16 && a3 >= v15;
        if (a3 == v15 || v17)
        {
          v19 = [v14 lineIndexForCharIndex:a3 eol:0];
          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v20 = [v14 lineFragmentAtIndex:v19];
            if (v20)
            {
              if (*(v20 + 3) < 0)
              {
                v21 = &xmmword_101464828;
              }

              else
              {
                v21 = v20;
              }

              if (*v21 == a3)
              {
                v58 = 0;
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                if (v14)
                {
                  [v14 lineMetricsAtCharIndex:a3 allowEndOfLine:0];
                  v22 = *(&v47 + 1);
                  v23 = *&v47;
                  v24 = *(&v48 + 1);
                  v25 = *&v48;
                  [v14 transformFromWP];
                }

                else
                {
                  v24 = 0.0;
                  v25 = 0.0;
                  v22 = 0.0;
                  v23 = 0.0;
                  memset(&v33, 0, sizeof(v33));
                }

                v60.origin.x = v23;
                v60.origin.y = v22;
                v60.size.width = v25;
                v60.size.height = v24;
                v61 = CGRectApplyAffineTransform(v60, &v33);
                x = v61.origin.x;
                y = v61.origin.y;
                width = v61.size.width;
                height = v61.size.height;
              }
            }

            else
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10134C358();
              }

              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                sub_10134C380();
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10134C41C();
              }

              v26 = off_1019EDA68;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                +[CRLAssertionHandler packedBacktraceString];
                objc_claimAutoreleasedReturnValue();
                sub_10130E89C();
              }

              v27 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPColumn labelRectForCharIndex:withColumns:]");
              v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
              [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:2304 isFatal:0 description:"invalid nil value for '%{public}s'", "lf"];
            }
          }

          goto LABEL_36;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v34 objects:v59 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)columnRectForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v29.location = [(CRLWPColumn *)self range];
  v29.length = v10;
  v27.location = location;
  v27.length = length;
  if (NSIntersectionRange(v27, v29).length)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v12 = *ptr;
    v13 = *(ptr + 1);
    if (*ptr != v13)
    {
      do
      {
        v14 = *v12;
        if (((*v12)[3] & 0x8000000000000000) != 0)
        {
          v14 = &xmmword_101464828;
        }

        v28.location = location;
        v28.length = length;
        v15 = NSIntersectionRange(v28, *v14);
        if (v15.length)
        {
          sub_10020BF7C(*v12, v15.location, v15.length, 1, 1, 0, 0, &__p);
          sub_100282B74(&__p);
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          if (*&__p.a)
          {
            __p.b = __p.a;
            operator delete(*&__p.a);
          }

          v30.origin.x = x;
          v30.origin.y = y;
          v30.size.width = width;
          v30.size.height = height;
          v34.origin.x = v17;
          v34.origin.y = v19;
          v34.size.width = v21;
          v34.size.height = v23;
          v31 = CGRectUnion(v30, v34);
          x = v31.origin.x;
          y = v31.origin.y;
          width = v31.size.width;
          height = v31.size.height;
        }

        v12 += 2;
      }

      while (v12 != v13);
    }
  }

  v24 = self->_frameBounds.origin.x;
  v25 = self->_frameBounds.size.width;
  [(CRLWPColumn *)self transformFromWP];
  v32.origin.x = v24;
  v32.origin.y = y;
  v32.size.width = v25;
  v32.size.height = height;
  return CGRectApplyAffineTransform(v32, &__p);
}

- (CGRect)typographicBounds
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  ptr = self->_lineFragmentArray.__ptr_;
  v8 = *ptr;
  v9 = *(ptr + 1);
  while (v8 != v9)
  {
    v10 = *v8;
    v8 += 2;
    v12.origin.x = sub_100211698(v10);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v13 = CGRectUnion(v12, v16);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
  }

  [(CRLWPColumn *)self transformFromWP];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  return CGRectApplyAffineTransform(v14, &v11);
}

- (id)lineSelectionsForSelection:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithCapacity:1];
  v6 = [(CRLWPColumn *)self range];
  v8 = v7;
  v28.location = [(CRLWPSelection *)v4 range];
  v29.location = v6;
  v29.length = v8;
  v9 = NSIntersectionRange(v28, v29);
  if (v9.length)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v11 = *ptr;
    v12 = *(ptr + 1);
    if (*ptr != v12)
    {
      v13 = v9.length + v9.location - 1;
      while (1)
      {
        v14 = *v11;
        if (((*v11)[3] & 0x8000000000000000) != 0)
        {
          v14 = &xmmword_101464828;
        }

        v16 = *v14;
        v15 = v14[1];
        v18 = v9.location >= *v14;
        v17 = v9.location - *v14;
        v18 = !v18 || v17 >= v15;
        if (v18)
        {
          if (v13 >= v16 && v13 - v16 < v15)
          {
            v25 = [CRLWPSelection alloc];
            v32.location = v16;
            v32.length = v15;
            v26 = NSIntersectionRange(v9, v32);
            v22 = [(CRLWPSelection *)v25 initWithRange:v26.location, v26.length];

            [v5 addObject:v22];
            goto LABEL_27;
          }

          v30.location = v16;
          v30.length = v15;
          if (NSIntersectionRange(v9, v30).length)
          {
            v22 = [[CRLWPSelection alloc] initWithRange:v16, v15];

            [v5 addObject:v22];
          }

          else
          {
            v22 = v4;
          }
        }

        else
        {
          v20 = [CRLWPSelection alloc];
          v31.location = v16;
          v31.length = v15;
          v21 = NSIntersectionRange(v9, v31);
          v22 = [(CRLWPSelection *)v20 initWithRange:v21.location, v21.length];

          [v5 addObject:v22];
          if (v13 >= v16 && v13 - v16 < v15)
          {
            goto LABEL_27;
          }
        }

        v11 += 2;
        v4 = v22;
        if (v11 == v12)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v22 = v4;
LABEL_27:

  return v5;
}

+ (BOOL)partitionedAttachmentStartsAtCharIndex:(unint64_t)a3 withColumns:(id)a4
{
  v4 = a3;
  v5 = [CRLWPColumn columnForCharIndex:a3 allowEndOfColumn:1 withColumns:a4];
  LOBYTE(v4) = [v5 p_isFirstPartitionForCharIndex:v4];

  return v4;
}

- (BOOL)p_isFirstPartitionForCharIndex:(unint64_t)a3
{
  ptr = self->_lineFragmentArray.__ptr_;
  v4 = *ptr;
  v5 = *(ptr + 1);
  if (v4 == v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = *v4;
    v7 = *(*v4 + 3);
    if ((v7 & 0x200) != 0)
    {
      if (v7 < 0)
      {
        v6 = &xmmword_101464828;
      }

      v10 = v6;
      v8 = *v6;
      v9 = *(v10 + 1);
      v11 = a3 - v8 < v9 && a3 >= v8;
      v12 = v8 + v9;
      if (v11 || v12 == a3)
      {
        break;
      }
    }

    v4 += 2;
    if (v4 == v5)
    {
      return 0;
    }
  }

  return 1;
}

- (CGRect)firstRectForSelection:(id)a3 includeSpaceAfter:(BOOL)a4 includeSpaceBefore:(BOOL)a5 includeLeading:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v15 = [v10 range];
  BYTE2(v28) = 0;
  LOWORD(v28) = 0;
  v17 = -[CRLWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:](self, "pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:", v15, v16, [v10 type], v8, v7, v6, v28, 0, 0);
  v18 = [(CRLWPColumn *)self pTransformReturnRects:v17];

  if ([v18 count])
  {
    v19 = [v18 firstObject];
    [v19 CGRectValue];
    x = v20;
    y = v21;
    width = v22;
    height = v23;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (const)pColumnEndingPartitionedLineFragmentInSelectionRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  result = [(CRLWPColumn *)self lineCount];
  if (result)
  {
    result = [(CRLWPColumn *)self lineFragmentAtIndex:result - 1];
    if ((*(result + 3) & 0x101) == 1)
    {
      if (*result - location >= length || *result < location)
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)pMutableRectsForSelectionRange:(_NSRange)a3 selectionType:(unint64_t)a4 includeSpaceAfter:(BOOL)a5 includeSpaceBefore:(BOOL)a6 includeLeading:(BOOL)a7 forParagraphMode:(BOOL)a8 includeRuby:(BOOL)a9 includePaginatedAttachments:(BOOL)a10 inranges:(id)a11 outranges:(id *)a12
{
  v141 = a6;
  v142 = a5;
  range1 = a3.length;
  location = a3.location;
  v14 = a11;
  v130 = self;
  v15 = [(CRLWPStorage *)self->_storage length];
  if (a12)
  {
    v16 = [NSMutableArray arrayWithCapacity:1];
    *a12 = v16;
    v138 = v16;
  }

  else
  {
    v138 = 0;
  }

  if (v15 < location + range1 || (v17 = [(CRLWPColumn *)v130 range], v15 < v17 + v18))
  {
    v137 = +[NSMutableArray array];
    goto LABEL_7;
  }

  v137 = [NSMutableArray arrayWithCapacity:1];
  v163.location = [(CRLWPColumn *)v130 range];
  v163.length = v20;
  v161.location = location;
  v161.length = range1;
  v22 = NSIntersectionRange(v161, v163);
  length = v22.length;
  if (v22.length)
  {
    if (v14)
    {
      if (a4 == 7)
      {
        a4 = 0;
      }
    }

    else
    {
      v24 = [NSValue valueWithRange:location, range1];
      v14 = [NSArray arrayWithObject:v24];
    }

    ptr = v130->_lineFragmentArray.__ptr_;
    v26 = *ptr;
    v131 = *(ptr + 1);
    if (*ptr != v131)
    {
      v27 = 0;
      v139 = location + range1 - 1;
      v127 = v22.length + v22.location - 1;
      v135 = -1.0;
      v129 = 0.0;
      v126 = 0.0;
      v124 = v14;
      while (1)
      {
        while (1)
        {
          v28 = &xmmword_101464828;
          if (((*v26)[3] & 0x8000000000000000) == 0)
          {
            v28 = *v26;
          }

          v30 = *v28;
          v29 = v28[1];
          if (*(*v26 + 4) != v135)
          {
            v27 = [v137 count];
            MaxY = CGRectGetMaxY(*(*v26 + 5));
            v135 = *(*v26 + 4);
            v126 = *(*v26 + 17);
            v32 = MaxY - (v135 + v126);
            if (*(*v26 + 19) < v32)
            {
              v32 = *(*v26 + 19);
            }

            v129 = fmax(v32, 0.0);
          }

          v162.location = v22.location;
          v162.length = length;
          v164.location = v30;
          v164.length = v29;
          v33 = NSIntersectionRange(v162, v164);
          if (v33.length)
          {
            break;
          }

          v26 += 2;
          if (v26 == v131)
          {
            goto LABEL_104;
          }
        }

        if (v33.length == 1)
        {
          v34 = [(CRLWPStorage *)v130->_storage characterAtIndex:v33.location];
          v35 = v34;
          v36 = sub_10027E2F0(v34);
          if (v35 == 8232)
          {
            v37 = 1;
          }

          else
          {
            v37 = v36;
          }
        }

        else
        {
          v37 = 0;
        }

        v133 = v29;
        v134 = v27;
        v132 = v30;
        if (a8)
        {
          v38 = *v26;
        }

        else if (!a10 || (v38 = *v26, (((*v26)[3] & 1) == 0) | v37 & 1))
        {
          if (v138)
          {
            v41 = +[NSMutableArray array];
          }

          else
          {
            v41 = 0;
          }

          __p = 0;
          __dst = 0;
          v149 = 0;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v42 = v14;
          v43 = [v42 countByEnumeratingWithState:&v143 objects:v159 count:16];
          if (v43)
          {
            v44 = *v144;
            do
            {
              for (i = 0; i != v43; i = i + 1)
              {
                if (*v144 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                v165.location = [*(*(&v143 + 1) + 8 * i) rangeValue];
                v165.length = v46;
                v47 = NSIntersectionRange(v33, v165);
                if (v47.length)
                {
                  if (a4 != 7 || (location >= v47.location ? (v48 = location - v47.location >= v47.length) : (v48 = 1), v48 && (v139 >= v47.location ? (v49 = v139 - v47.location >= v47.length) : (v49 = 1), v49)))
                  {
                    sub_10020BF7C(*v26, v47.location, v47.length, v142, v141, a9, v41, buf);
                  }

                  else
                  {
                    sub_10020E9F4(*v26, v47.location, v47.length, location, v139, v142, v141, a9, buf, v41);
                  }

                  v50 = *buf;
                  sub_100201988(&__p, __dst, *buf, *&buf[8], (*&buf[8] - *buf) >> 5);
                  if (v50)
                  {
                    operator delete(v50);
                  }
                }
              }

              v43 = [v42 countByEnumeratingWithState:&v143 objects:v159 count:16];
            }

            while (v43);
          }

          v14 = v124;
          v125 = [v137 count];
          if (v138)
          {
            v52 = __p;
            v51 = __dst;
            if ([v41 count] != ((v51 - v52) >> 5))
            {
              v53 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10134C444();
              }

              v54 = off_1019EDA68;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v96 = __p;
                v95 = __dst;
                v97 = [v41 count];
                *buf = 67110402;
                *&buf[4] = v53;
                *&buf[8] = 2082;
                *&buf[10] = "[CRLWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:]";
                v151 = 2082;
                v152 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm";
                v153 = 1024;
                v154 = 2541;
                v155 = 2048;
                v156 = (v95 - v96) >> 5;
                v157 = 2048;
                v158 = v97;
                _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Mismatch between rect & range count: %lu vs. %lu", buf, 0x36u);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10134C46C();
              }

              v55 = off_1019EDA68;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                v98 = +[CRLAssertionHandler packedBacktraceString];
                *buf = 67109378;
                *&buf[4] = v53;
                *&buf[8] = 2114;
                *&buf[10] = v98;
                _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v56 = [NSString stringWithUTF8String:"[CRLWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:]"];
              v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
              +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v56, v57, 2541, 0, "Mismatch between rect & range count: %lu vs. %lu", (__dst - __p) >> 5, [v41 count]);
            }
          }

          v58 = __p;
          v59 = __dst;
          if (__p != __dst)
          {
            v60 = 0;
            do
            {
              v61 = *v58;
              v62 = v58[1];
              v64 = v58[2];
              v63 = v58[3];
              if (a7)
              {
                v65 = *(*v26 + 4);
                v66 = *(*v26 + 17);
                v67 = *(*v26 + 19);
                v68 = *v58;
                v69 = *(v58 + 1);
                v70 = *(v58 + 2);
                v71 = CGRectGetMaxY(*(&v63 - 3));
                if (v71 < v65 + v66 + v67)
                {
                  v71 = v65 + v66 + v67;
                }

                v63 = v71 - v62;
              }

              v72 = [NSValue valueWithCGRect:v61, v62, v64, v63];
              [v137 addObject:v72];

              if (v138)
              {
                v74 = __p;
                v73 = __dst;
                if ([v41 count] == ((v73 - v74) >> 5))
                {
                  v75 = [v41 objectAtIndexedSubscript:v60];
                  [v138 addObject:v75];

                  ++v60;
                }
              }

              v58 += 4;
            }

            while (v58 != v59);
          }

          if (a4 == 2)
          {
            x = sub_100210E0C(*v26);
            y = v77;
            width = v79;
            height = v81;
          }

          else
          {
            x = CGRectNull.origin.x;
            y = CGRectNull.origin.y;
            width = CGRectNull.size.width;
            height = CGRectNull.size.height;
          }

          v166.origin.x = x;
          v166.origin.y = y;
          v166.size.width = width;
          v166.size.height = height;
          if (!CGRectIsEmpty(v166) && v125 < [v137 count])
          {
            v83 = [v137 objectAtIndexedSubscript:v125];
            [v83 CGRectValue];
            v85 = v84;
            v87 = v86;
            v89 = v88;
            v91 = v90;

            v167.origin.x = v85;
            v167.origin.y = v87;
            v167.size.width = v89;
            v167.size.height = v91;
            v170.origin.x = x;
            v170.origin.y = y;
            v170.size.width = width;
            v170.size.height = height;
            v168 = CGRectUnion(v167, v170);
            v92 = [NSValue valueWithCGRect:v168.origin.x, v87, v168.size.width, v91];
            [v137 setObject:v92 atIndexedSubscript:v125];
          }

          if (__p)
          {
            __dst = __p;
            operator delete(__p);
          }

          goto LABEL_95;
        }

        v39 = [NSValue valueWithCGRect:v38[5], v38[6], v38[7], v38[8]];
        [v137 addObject:v39];

        if (v138)
        {
          v40 = *v26;
          if (((*v26)[3] & 0x8000000000000000) != 0)
          {
            v40 = &xmmword_101464828;
          }

          v41 = [NSValue valueWithRange:*v40, v40[1]];
          [v138 addObject:v41];
LABEL_95:
        }

        length = v22.length;
        v93 = v127 - v132 < v133 && v127 >= v132;
        v26 += 2;
        v94 = v93 || v26 == v131;
        v27 = v134;
        if (v94)
        {
LABEL_104:
          v21 = v129;
          if (v129 > 0.0 && v142)
          {
            v99 = v135 + v126 + v129;
            while (v27 < [v137 count])
            {
              v100 = [v137 objectAtIndexedSubscript:v27];
              [v100 CGRectValue];
              v102 = v101;
              v104 = v103;
              v106 = v105;
              v108 = v107;

              v169.origin.x = v102;
              v169.origin.y = v104;
              v169.size.width = v106;
              v169.size.height = v108;
              v109 = CGRectGetMaxY(v169);
              if (v99 == v109 || vabdd_f64(v99, v109) < 0.00999999978)
              {
                v110 = [NSValue valueWithCGRect:v102, v104, v106, v108 - v129];
                [v137 setObject:v110 atIndexedSubscript:v27];
              }

              ++v27;
            }
          }

          break;
        }
      }
    }
  }

  v111 = [(CRLWPColumn *)v130 pColumnEndingPartitionedLineFragmentInSelectionRange:location, range1, v21];
  v112 = v111;
  if (v111)
  {
    v113 = v111[6];
    v114 = v111[8];
    if (a8)
    {
      v115 = v111[5];
      v116 = v111[7];
    }

    else
    {
      v117 = v111[13];
      if (!v142)
      {
        v114 = v111[17] + v117 + v111[18] + v111[15];
      }

      v118 = v113 + v117;
      v119 = v114 - v117;
      if (!v141)
      {
        v113 = v118;
        v114 = v119;
      }

      v120 = *v111;
      v115 = sub_10020CC28(v111, *v111, 1, 1, 0);
      v116 = sub_10020CC28(v112, v120 + 1, 1, 1, 0) - v115;
    }

    v121 = [NSValue valueWithCGRect:v115, v113, v116, v114];
    [v137 addObject:v121];

    if (v138)
    {
      if (*(v112 + 24) < 0)
      {
        v122 = &xmmword_101464828;
      }

      else
      {
        v122 = v112;
      }

      v123 = [NSValue valueWithRange:*v122, *(v122 + 1)];
      [v138 addObject:v123];
    }
  }

LABEL_7:

  return v137;
}

- (id)pTransformReturnRects:(id)a3
{
  v4 = a3;
  if ([(CRLWPColumn *)self textIsVertical])
  {
    v5 = [v4 count];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = [v4 objectAtIndexedSubscript:i];
        [v7 CGRectValue];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [(CRLWPColumn *)self transformFromWP];
        v20.origin.x = v9;
        v20.origin.y = v11;
        v20.size.width = v13;
        v20.size.height = v15;
        v21 = CGRectApplyAffineTransform(v20, &v18);
        v16 = [NSValue valueWithCGRect:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
        [v4 setObject:v16 atIndexedSubscript:i];
      }
    }
  }

  return v4;
}

- (id)rectsForSelectionRanges:(id)a3 selectionType:(unint64_t)a4
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 == 0)
        {
          location = [v12 rangeValue];
        }

        else
        {
          v29.location = [v12 rangeValue];
          v29.length = v14;
          v28.location = v6;
          v28.length = v7;
          v17 = NSUnionRange(v28, v29);
          length = v17.length;
          location = v17.location;
        }

        v6 = location;
        v7 = length;
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  BYTE2(v21) = 0;
  LOWORD(v21) = 0;
  v18 = [(CRLWPColumn *)self pMutableRectsForSelectionRange:v6 selectionType:v7 includeSpaceAfter:a4 includeSpaceBefore:1 includeLeading:1 forParagraphMode:0 includeRuby:v21 includePaginatedAttachments:v8 inranges:0 outranges:?];
  v19 = [(CRLWPColumn *)self pTransformReturnRects:v18];

  return v19;
}

- (id)rectsForSelectionRange:(_NSRange)a3 selectionType:(unint64_t)a4 forParagraphMode:(BOOL)a5 includeRuby:(BOOL)a6 includePaginatedAttachments:(BOOL)a7
{
  BYTE2(v11) = a7;
  BYTE1(v11) = a6;
  LOBYTE(v11) = a5;
  v8 = [(CRLWPColumn *)self pMutableRectsForSelectionRange:a3.location selectionType:a3.length includeSpaceAfter:a4 includeSpaceBefore:1 includeLeading:1 forParagraphMode:0 includeRuby:v11 includePaginatedAttachments:0 inranges:0 outranges:?];
  v9 = [(CRLWPColumn *)self pTransformReturnRects:v8];

  return v9;
}

- (id)rectsForSelection:(id)a3 ranges:(id *)a4
{
  v4 = [(CRLWPColumn *)self rectsForSelection:a3 ranges:a4 includePaginatedAttachments:0];

  return v4;
}

- (id)naturalRectsForSelection:(id)a3 ranges:(id *)a4
{
  v6 = a3;
  v7 = [v6 range];
  BYTE2(v11) = 0;
  LOWORD(v11) = 0;
  v9 = -[CRLWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:](self, "pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:", v7, v8, [v6 type], 1, 1, 0, v11, 0, a4);

  return v9;
}

- (id)rectsForSelection:(id)a3 ranges:(id *)a4 includePaginatedAttachments:(BOOL)a5
{
  v8 = a3;
  v9 = [v8 range];
  BYTE2(v14) = a5;
  LOWORD(v14) = 0;
  v11 = -[CRLWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:](self, "pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:", v9, v10, [v8 type], 1, 1, 0, v14, 0, a4);
  v12 = [(CRLWPColumn *)self pTransformReturnRects:v11];

  return v12;
}

- (CGRect)erasableRectForSelectionRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v18.location = [(CRLWPColumn *)self range];
  v18.length = v10;
  v17.location = location;
  v17.length = length;
  v11 = NSIntersectionRange(v17, v18);
  if (v11.length)
  {
    ptr = self->_lineFragmentArray.__ptr_;
    v13 = *ptr;
    v14 = *(ptr + 1);
    if (*ptr != v14)
    {
      do
      {
        v15 = *v13;
        if (((*v13)[1].length & 0x8000000000000000) != 0)
        {
          v15 = &xmmword_101464828;
        }

        if (NSIntersectionRange(v11, *v15).length)
        {
          v22.origin.x = x;
          v22.origin.y = y;
          v22.size.width = width;
          v22.size.height = height;
          v19 = CGRectUnion(*&(*v13)[4].length, v22);
          x = v19.origin.x;
          y = v19.origin.y;
          width = v19.size.width;
          height = v19.size.height;
        }

        v13 += 2;
      }

      while (v13 != v14);
    }
  }

  [(CRLWPColumn *)self transformFromWP];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  return CGRectApplyAffineTransform(v20, &v16);
}

- (id)drawableIntersectionRectsForSelection:(id)a3 inTarget:(id)a4
{
  v80 = a3;
  v81 = a4;
  v6 = [v80 range];
  BYTE2(v75) = 0;
  LOWORD(v75) = 0;
  v8 = -[CRLWPColumn pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:](self, "pMutableRectsForSelectionRange:selectionType:includeSpaceAfter:includeSpaceBefore:includeLeading:forParagraphMode:includeRuby:includePaginatedAttachments:inranges:outranges:", v6, v7, [v80 type], 1, 1, 0, v75, 0, 0);
  v9 = [v8 count];
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [v8 objectAtIndexedSubscript:v10];
      [v12 CGRectValue];
      rect = v13;
      x = v14;
      width = v16;
      height = v18;

      if (v10 || [v80 start] < self->_startCharIndex)
      {
        v91.origin.x = x;
        v91.origin.y = rect;
        v91.size.width = width;
        v91.size.height = height;
        MinX = CGRectGetMinX(v91);
        v21 = MinX - CGRectGetMinX(self->_frameBounds);
        x = x - v21;
        width = width + v21;
      }

      v22 = (v10 + 1);
      if (v10 + 1 < v9)
      {
        while (1)
        {
          v23 = [v8 objectAtIndexedSubscript:v10 + 1];
          [v23 CGRectValue];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          v92.origin.x = v25;
          v92.origin.y = v27;
          v92.size.width = v29;
          v92.size.height = v31;
          MinY = CGRectGetMinY(v92);
          v93.origin.x = x;
          v93.origin.y = rect;
          v93.size.width = width;
          v93.size.height = height;
          if (MinY != CGRectGetMinY(v93))
          {
            break;
          }

          v94.origin.x = x;
          v94.origin.y = rect;
          v94.size.width = width;
          v94.size.height = height;
          v102.origin.x = v25;
          v102.origin.y = v27;
          v102.size.width = v29;
          v102.size.height = v31;
          v95 = CGRectUnion(v94, v102);
          rect = v95.origin.y;
          x = v95.origin.x;
          width = v95.size.width;
          height = v95.size.height;
          [v8 removeObjectAtIndex:v10 + 1];
          if (v22 >= --v9)
          {
            v9 = v11;
            break;
          }
        }
      }

      if (v10 != v9 - 1 || (startCharIndex = self->_startCharIndex, characterCount = self->_characterCount, characterCount + startCharIndex <= [v80 end]))
      {
        MaxX = CGRectGetMaxX(self->_frameBounds);
        v96.origin.x = x;
        v96.origin.y = rect;
        v96.size.width = width;
        v96.size.height = height;
        width = width + MaxX - CGRectGetMaxX(v96);
      }

      *v89 = x;
      *&v89[1] = rect;
      *&v89[2] = width;
      *&v89[3] = height;
      v36 = [NSValue valueWithBytes:v89 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [v8 setObject:v36 atIndexedSubscript:v10];

      ++v11;
      ++v10;
    }

    while (v22 < v9);
  }

  if ([v8 count] >= 2)
  {
    v37 = [v8 firstObject];
    [v37 CGRectValue];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = [v8 lastObject];
    [v46 CGRectValue];
    recta = v47;
    v78 = v49;
    v79 = v48;
    v77 = v50;

    v76 = CGRectGetMinX(self->_frameBounds);
    v97.origin.x = v39;
    v97.origin.y = v41;
    v97.size.width = v43;
    v97.size.height = v45;
    MaxY = CGRectGetMaxY(v97);
    v52 = CGRectGetWidth(self->_frameBounds);
    v98.origin.x = recta;
    v98.size.width = v78;
    v98.origin.y = v79;
    v98.size.height = v77;
    v53 = CGRectGetMinY(v98);
    v99.origin.x = v39;
    v99.origin.y = v41;
    v99.size.width = v43;
    v99.size.height = v45;
    v54 = CGRectGetMaxY(v99);
    [v8 removeAllObjects];
    *v88 = v39;
    *&v88[1] = v41;
    *&v88[2] = v43;
    *&v88[3] = v45;
    v55 = [NSValue valueWithBytes:v88 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v8 addObject:v55];

    *v87 = v76;
    *&v87[1] = MaxY;
    *&v87[2] = v52;
    *&v87[3] = v53 - v54;
    v56 = [NSValue valueWithBytes:v87 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v8 addObject:v56];

    *v86 = recta;
    *&v86[1] = v79;
    *&v86[2] = v78;
    *&v86[3] = v77;
    v57 = [NSValue valueWithBytes:v86 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v8 addObject:v57];
  }

  v58 = [v8 count];
  if (v58)
  {
    for (i = 0; i != v58; ++i)
    {
      v60 = [v8 objectAtIndexedSubscript:i];
      [v60 CGRectValue];
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;

      [(CRLWPColumn *)self transformFromWP];
      v100.origin.x = v62;
      v100.origin.y = v64;
      v100.size.width = v66;
      v100.size.height = v68;
      v101 = CGRectApplyAffineTransform(v100, &v85);
      [v81 rectInRoot:{v101.origin.x, v101.origin.y, v101.size.width, v101.size.height}];
      v84[0] = v69;
      v84[1] = v70;
      v84[2] = v71;
      v84[3] = v72;
      v73 = [NSValue valueWithBytes:v84 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      [v8 setObject:v73 atIndexedSubscript:i];
    }
  }

  return v8;
}

- (unint64_t)charIndexFromPoint:(CGPoint)a3 allowPastBreak:(BOOL)a4 pastCenterGoesToNextChar:(BOOL)a5 allowNotFound:(BOOL)a6 constrainToAscentAndDescent:(BOOL)a7 isAtEndOfLine:(BOOL *)a8 outFragment:(const CRLWPLineFragment *)a9 leadingEdge:(BOOL *)a10
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  y = a3.y;
  x = a3.x;
  v45 = 1;
  [(CRLWPColumn *)self transformToWP];
  v17 = vaddq_f64(*&buf[32], vmlaq_n_f64(vmulq_n_f64(*&buf[16], y), *buf, x));
  v44 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  v18 = [(CRLWPColumn *)self charIndexFromWPPoint:v14 pastCenterGoesToNextChar:v13 allowNotFound:v12 constrainToAscentAndDescent:&v44 outFragment:&v45 leadingEdge:*&v17];
  if (v44 && v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(v44 + 3) < 0)
    {
      v19 = &xmmword_101464828;
    }

    else
    {
      v19 = v44;
    }

    v21 = *v19;
    v20 = *(v19 + 1);
    v22 = v18;
    if (!v45)
    {
      v23 = sub_10020B5E0(v44);
      v22 = sub_10027F35C(v18, v23);
    }

    if (v20 && v22 == v21 + v20)
    {
      v24 = [(CRLWPStorage *)self->_storage length];
      if (v22 <= v24)
      {
        v30 = v22 - 1;
        v31 = [(CRLWPStorage *)self->_storage characterAtIndex:v30];
        v32 = v31;
        v33 = sub_10027E2F0(v31);
        if (v32 == 8232)
        {
          v34 = 1;
        }

        else
        {
          v34 = v33;
        }

        if (v34 != 1 || a4)
        {
          if (a8)
          {
            *a8 = 1;
          }
        }

        else
        {
          v45 = 1;
          v18 = v30;
        }
      }

      else
      {
        v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10134C494();
        }

        v26 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110402;
          *&buf[4] = v25;
          *&buf[8] = 2082;
          *&buf[10] = "[CRLWPColumn charIndexFromPoint:allowPastBreak:pastCenterGoesToNextChar:allowNotFound:constrainToAscentAndDescent:isAtEndOfLine:outFragment:leadingEdge:]";
          *&buf[18] = 2082;
          *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm";
          *&buf[28] = 1024;
          *&buf[30] = 2801;
          *&buf[34] = 2048;
          *&buf[36] = v22;
          *&buf[44] = 2048;
          *&buf[46] = v24;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bad charIndex %lu <= %lu", buf, 0x36u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10134C4BC();
        }

        v27 = off_1019EDA68;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v28 = [NSString stringWithUTF8String:"[CRLWPColumn charIndexFromPoint:allowPastBreak:pastCenterGoesToNextChar:allowNotFound:constrainToAscentAndDescent:isAtEndOfLine:outFragment:leadingEdge:]"];
        v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
        [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:2801 isFatal:0 description:"Bad charIndex %lu <= %lu", v22, v24];

        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if (a9)
    {
      *a9 = v44;
    }
  }

  if (a10)
  {
    *a10 = v45;
    return v18;
  }

  if (!v45 && v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v44)
    {
      v35 = sub_1002117DC(v44, v18);
      v36 = v44;
      if (!a4)
      {
        v37 = (*(v44 + 25) & 0x10) != 0 ? sub_10021173C(v44) : sub_100211708(v44);
        v39 = v37;
        v36 = v44;
        if (v18 == v39 && (v35 != 1) == (*(v44 + 25) & 0x10) >> 4)
        {
          v40 = 0;
LABEL_47:

          return v18;
        }
      }

      v38 = sub_10020B5E0(v36);
    }

    else
    {
      v38 = self->_storage;
    }

    v40 = v38;
    if (v38)
    {
      v18 = sub_10027F35C(v18, v38);
    }

    goto LABEL_47;
  }

  return v18;
}

- (unint64_t)charIndexForSelectionFromPoint:(CGPoint)a3 isTail:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  [(CRLWPColumn *)self transformToWP];
  v46 = v53;
  v47 = v54;
  v48 = v52;
  v51 = vaddq_f64(v54, vmlaq_n_f64(vmulq_n_f64(v53, y), v52, x));
  if (v51.f64[1] < CGRectGetMinY(self->_frameBounds))
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (!v4)
    {
      result = self->_startCharIndex;
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10134C4E4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134C50C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10134C594();
        }

        v7 = off_1019EDA68;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v8 = [NSString stringWithUTF8String:"[CRLWPColumn charIndexForSelectionFromPoint:isTail:]"];
        v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
        [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2860 isFatal:0 description:"column has unexpected start"];

        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    return result;
  }

  ptr = self->_lineFragmentArray.__ptr_;
  v11 = *ptr;
  if (*ptr == *(ptr + 1))
  {
    startCharIndex = self->_startCharIndex;
    characterCount = self->_characterCount;
    return characterCount + startCharIndex;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v13 = *v11;
    v14 = *(*v11 + 40);
    v15 = *(*v11 + 48);
    v16 = *(*v11 + 56);
    v17 = *(*v11 + 64);
    v55.origin.x = v14;
    v55.origin.y = v15;
    v55.size.width = v16;
    v55.size.height = v17;
    if (v51.f64[1] < CGRectGetMinY(v55))
    {
      goto LABEL_64;
    }

    if (*(v13 + 28))
    {
      v18 = sub_1001200A8(v51.f64[0], v51.f64[1], v14, v15, v16, v17);
      v12 = sub_100212F08(v13, -1, 0, v51.f64[0]);
      if (v18 == 0.0)
      {
        goto LABEL_64;
      }

      if (*(v13 + 28))
      {
        v11 += 2;
        if (v11 == *(self->_lineFragmentArray.__ptr_ + 1))
        {
          goto LABEL_64;
        }

        v13 = *v11;
        v14 = *(*v11 + 40);
        v15 = *(*v11 + 48);
        v16 = *(*v11 + 56);
        v17 = *(*v11 + 64);
      }
    }

    else
    {
      v18 = INFINITY;
    }

    v19 = v11 + 2;
    v20 = -16;
    do
    {
      v21 = v20;
      if (v19 == *(self->_lineFragmentArray.__ptr_ + 1))
      {
        break;
      }

      MinY = CGRectGetMinY(*(*v19 + 40));
      v56.origin.x = v14;
      v56.origin.y = v15;
      v56.size.width = v16;
      v56.size.height = v17;
      v23 = CGRectGetMinY(v56);
      v20 = v21 - 16;
      v19 += 2;
    }

    while (MinY == v23);
    v57.origin.x = v14;
    v57.origin.y = v15;
    v57.size.width = v16;
    v57.size.height = v17;
    if (v51.f64[1] <= CGRectGetMaxY(v57))
    {
      break;
    }

    if (*(v13 + 24) < 0)
    {
      v24 = &xmmword_101464828;
    }

    else
    {
      v24 = v13;
    }

    v25 = *v24 + *(v24 + 1);
    if (v12 <= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v12;
    }

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v25;
    }

    else
    {
      v12 = v26;
    }

    if (v4)
    {
      v12 = [(CRLWPStorage *)self->_storage previousCharacterIndex:v12];
    }

    v11 += 2;
    if (v11 == *(self->_lineFragmentArray.__ptr_ + 1))
    {
      goto LABEL_64;
    }
  }

  v29 = -v21;
  v30 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v13 = *v11;
    if ((*(*v11 + 24) & 0x40) == 0 && (*(*v11 + 24) & 0x201) != 1)
    {
      break;
    }

    v37 = v30;
LABEL_60:
    v11 += 2;
    v30 = v37;
    v29 -= 16;
    if (!v29)
    {
      goto LABEL_63;
    }
  }

  v32 = *(v13 + 56);
  v31 = *(v13 + 64);
  v34 = *(v13 + 40);
  v33 = *(v13 + 48);
  v35 = sub_1001200A8(v51.f64[0], v51.f64[1], v34, v33, v32, v31);
  v36 = sub_100212F08(v13, !v4, 0, v51.f64[0]);
  v37 = v36;
  if (v35 != 0.0)
  {
    v38 = v35 < v18;
    if (v35 >= v18)
    {
      v39 = v30;
    }

    else
    {
      v18 = v35;
      v39 = v36;
    }

    if (!v38 || !v4)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v37 = v39;
    }

    else
    {
      v41 = v34;
      v42 = v33;
      v43 = v32;
      v44 = v31;
      if (v51.f64[0] <= CGRectGetMaxX(*&v41))
      {
        if (*(v13 + 24) < 0)
        {
          v45 = &xmmword_101464828;
        }

        else
        {
          v45 = v13;
        }

        v37 = [(CRLWPStorage *)self->_storage previousCharacterIndex:*v45, *&v46, *&v47, *&v48];
      }

      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v18 = v35;
    }

    goto LABEL_60;
  }

  v12 = v36;
LABEL_63:
  result = v12;
  v12 = v30;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_64:
    result = v12;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      startCharIndex = *v13;
      characterCount = *(v13 + 8);
      return characterCount + startCharIndex;
    }
  }

  return result;
}

- (unint64_t)charIndexFromWPPoint:(CGPoint)a3 pastCenterGoesToNextChar:(BOOL)a4 allowNotFound:(BOOL)a5 constrainToAscentAndDescent:(BOOL)a6 outFragment:(const CRLWPLineFragment *)a7 leadingEdge:(BOOL *)a8
{
  v8 = a8;
  v10 = a4;
  y = a3.y;
  x = a3.x;
  if (a6)
  {

    return [(CRLWPColumn *)self p_charIndexWithTextClosestToWPPoint:a4 pastCenterGoesToNextChar:a7 outFragment:a8 leadingEdge:?];
  }

  else
  {
    v15 = a5;
    if (a3.y >= CGRectGetMinY(self->_frameBounds))
    {
      ptr = self->_lineFragmentArray.__ptr_;
      v19 = *ptr;
      if (*ptr != *(ptr + 1))
      {
        v20 = v19 - 2;
        while (1)
        {
          v17 = *v19;
          if (![(CRLWPColumn *)self p_pencilAnnotationsShouldSkipLineFragment:*v19])
          {
            v21 = *(v17 + 40);
            v22 = *(v17 + 48);
            v23 = *(v17 + 56);
            v24 = *(v17 + 64);
            v53.origin.x = v21;
            v53.origin.y = v22;
            v53.size.width = v23;
            v53.size.height = v24;
            MinY = CGRectGetMinY(v53);
            v26 = MinY;
            if (v15 && y < MinY)
            {
              goto LABEL_24;
            }

            v54.origin.x = v21;
            v54.origin.y = v22;
            v54.size.width = v23;
            v54.size.height = v24;
            if (y <= CGRectGetMaxY(v54))
            {
              v30 = *(self->_lineFragmentArray.__ptr_ + 1);
              v48 = v8;
              startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
              if (*(v17 + 28))
              {
                if (v19 != v30)
                {
                  v40 = 0;
                  v41 = 0;
                  v42 = INFINITY;
                  while (1)
                  {
                    v31 = v19[v40];
                    v43 = *(v31 + 40);
                    v44 = *(v31 + 48);
                    v45 = *(v31 + 56);
                    v46 = *(v31 + 64);
                    v58.origin.x = v43;
                    v58.origin.y = v44;
                    v58.size.width = v45;
                    v58.size.height = v46;
                    if (y <= CGRectGetMinY(v58))
                    {
                      break;
                    }

                    if (!(v40 * 8))
                    {
                      if ((*(*v19 + 25) & 0x10) != 0)
                      {
                        v60.origin.x = v43;
                        v60.origin.y = v44;
                        v60.size.width = v45;
                        v60.size.height = v46;
                        if (x > CGRectGetMaxX(v60))
                        {
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        v59.origin.x = v43;
                        v59.origin.y = v44;
                        v59.size.width = v45;
                        v59.size.height = v46;
                        if (x < CGRectGetMinX(v59))
                        {
                          goto LABEL_68;
                        }
                      }
                    }

                    v61.origin.x = v43;
                    v61.origin.y = v44;
                    v61.size.width = v45;
                    v61.size.height = v46;
                    v52.x = x;
                    v52.y = y;
                    if (CGRectContainsPoint(v61, v52))
                    {
                      v49 = 1;
                      v38 = sub_100213314(v31, v10, 1, &v49, 1, x);
                      if (v48)
                      {
                        *v48 = v49;
                      }

                      if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v17 = v31;
                        goto LABEL_73;
                      }
                    }

                    if (v40 * 8)
                    {
                      v47 = sub_1001200A8(x, y, *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64));
                      if (v47 < v42)
                      {
                        v41 = v31;
                        v42 = v47;
                      }
                    }

                    v40 += 2;
                    v31 = v41;
                    if (&v19[v40] == *(self->_lineFragmentArray.__ptr_ + 1))
                    {
                      goto LABEL_68;
                    }
                  }

                  if (v40 * 8)
                  {
                    v31 = v41;
                    if (!v41)
                    {
                      v31 = *v19;
                    }
                  }

LABEL_68:
                  startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
                  v8 = v48;
                  if (!v15 && v31)
                  {
                    startCharIndex = sub_100213314(v31, v10, 0, v48, 1, x);
                    v17 = v31;
                  }
                }
              }

              else if (v19 != v30)
              {
                v31 = 0;
                v32 = INFINITY;
                while (1)
                {
                  v33 = *v19;
                  v34 = *(*v19 + 40);
                  v35 = *(*v19 + 48);
                  v36 = *(*v19 + 56);
                  v37 = *(*v19 + 64);
                  v56.origin.x = v34;
                  v56.origin.y = v35;
                  v56.size.width = v36;
                  v56.size.height = v37;
                  v51.x = x;
                  v51.y = y;
                  if (CGRectContainsPoint(v56, v51))
                  {
                    v38 = sub_100213314(v33, v10, 1, v8, 1, x);
                    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      break;
                    }
                  }

                  v39 = sub_1001200A8(x, y, *(v33 + 40), *(v33 + 48), *(v33 + 56), *(v33 + 64));
                  if (v39 < v32)
                  {
                    v31 = v33;
                  }

                  v57.origin.x = v34;
                  v57.origin.y = v35;
                  v57.size.width = v36;
                  v57.size.height = v37;
                  if (y > CGRectGetMinY(v57))
                  {
                    if (v39 < v32)
                    {
                      v32 = v39;
                    }

                    v19 += 2;
                    if (v19 != *(self->_lineFragmentArray.__ptr_ + 1))
                    {
                      continue;
                    }
                  }

                  goto LABEL_68;
                }

                v17 = v33;
LABEL_73:
                startCharIndex = v38;
                v8 = v48;
              }

              goto LABEL_25;
            }

            if (v19 != *self->_lineFragmentArray.__ptr_ && y < v26)
            {
              v17 = *v20;
              v55.origin.x = v21;
              v55.origin.y = v22;
              v55.size.width = v23;
              v55.size.height = v24;
              if (x > CGRectGetMaxX(v55))
              {
                startCharIndex = sub_100213314(v17, v10, v15, v8, 1, x);
                goto LABEL_25;
              }
            }
          }

          v19 += 2;
          v20 += 2;
          if (v19 == *(self->_lineFragmentArray.__ptr_ + 1))
          {
            goto LABEL_24;
          }
        }
      }
    }

    else if (!v15)
    {
      startCharIndex = self->_startCharIndex;
      if (sub_1000F4FD8(self->_lineFragmentArray.__ptr_))
      {
        v17 = sub_1000F4FE8(self->_lineFragmentArray.__ptr_, 0);
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_25;
    }

    v17 = 0;
LABEL_24:
    startCharIndex = 0x7FFFFFFFFFFFFFFFLL;
LABEL_25:
    if (a7)
    {
      *a7 = v17;
    }

    if (!v15 && startCharIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      p_startCharIndex = &self->_startCharIndex;
      p_characterCount = &self->_characterCount;
      if (v17)
      {
        p_characterCount = (v17 + 8);
        p_startCharIndex = v17;
      }

      startCharIndex = *p_characterCount + *p_startCharIndex;
      if (v8)
      {
        *v8 = 1;
      }
    }

    return startCharIndex;
  }
}

- (unint64_t)p_charIndexWithTextClosestToWPPoint:(CGPoint)a3 pastCenterGoesToNextChar:(BOOL)a4 outFragment:(const CRLWPLineFragment *)a5 leadingEdge:(BOOL *)a6
{
  ptr = self->_lineFragmentArray.__ptr_;
  v8 = *ptr;
  v9 = *(ptr + 1);
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (*ptr == v9)
  {
    v18 = 0;
    if (!a5)
    {
      return v10;
    }
  }

  else
  {
    v12 = a4;
    y = a3.y;
    x = a3.x;
    v16 = 0;
    v17 = INFINITY;
    do
    {
      v18 = *v8;
      if (![(CRLWPColumn *)self p_pencilAnnotationsShouldSkipLineFragment:*v8])
      {
        v19 = *(v18 + 4);
        v20 = *(v18 + 5);
        v21 = v19 - *(v18 + 15);
        v22 = *(v18 + 7);
        v23 = v19 + *(v18 + 17) - v21;
        v28.origin.x = v20;
        v28.origin.y = v21;
        v28.size.width = v22;
        v28.size.height = v23;
        v27.x = x;
        v27.y = y;
        if (CGRectContainsPoint(v28, v27))
        {
          v24 = sub_100213314(v18, v12, 1, a6, 1, x);
          if (v24 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = v24;
            if (a5)
            {
              goto LABEL_15;
            }

            return v10;
          }
        }

        v25 = sub_1001200A8(x, y, v20, v21, v22, v23);
        if (v25 < v17)
        {
          v17 = v25;
          v16 = v18;
        }
      }

      v8 += 2;
    }

    while (v8 != v9);
    if (v16)
    {
      v10 = sub_100213314(v16, v12, 0, a6, 1, x);
      v18 = v16;
      if (a5)
      {
        goto LABEL_15;
      }

      return v10;
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a5)
    {
      return v10;
    }
  }

LABEL_15:
  *a5 = v18;
  return v10;
}

- (void)renderWithRenderer:(id)a3 currentSelection:(id)a4 limitSelection:(id)a5 listRange:(_NSRange)a6 rubyGlyphRange:(_NSRange)a7 isCanvasInteractive:(BOOL)a8 isInDrawingMode:(BOOL)a9 spellChecker:(id)a10 suppressedMisspellingRange:(_NSRange)a11 blackAndWhite:(BOOL)a12 dictationInterpretations:(id)a13 autocorrections:(id)a14 markedRange:(_NSRange)a15 markedText:(id)a16 renderMode:(unint64_t)a17 pageCount:(unint64_t)a18 suppressInvisibles:(BOOL)a19 currentCanvasSelection:(id)a20
{
  length = a6.length;
  v20 = a6.location;
  v24 = a3;
  v99 = a4;
  obj = a5;
  v25 = a5;
  v103 = a10;
  v96 = a13;
  v97 = a14;
  v98 = a16;
  v94 = a20;
  v100 = v25;
  v101 = sub_10050FEFC([v24 context]);
  [v101 beginTextColumn:self limitSelection:v25];
  v129 = 0;
  v131 = 0;
  location = 0;
  v110[0] = 0;
  v111 = 0;
  v112[0] = 0;
  v121 = 0;
  v122 = 0;
  v124 = 0;
  v125[0] = 0;
  bzero(&location, 0xE8uLL);
  objc_storeStrong(&location, self->_storage);
  objc_storeStrong(v110, self);
  [(CRLWPColumn *)self frameBounds];
  v110[1] = v26;
  v110[2] = v27;
  v110[3] = v28;
  v110[4] = v29;
  v112[1] = self->_scaleTextPercent;
  objc_storeStrong(&v111, a4);
  objc_storeStrong(v112, obj);
  v125[1] = v20;
  v125[2] = length;
  v126 = a7;
  v117 = 0;
  v30 = +[CRLColor clearColor];
  v113 = CGColorRetain([v30 CGColor]);

  if (v103)
  {
    v31 = [v103 misspelledRanges];
    v32 = v121;
    v121 = v31;

    v33 = [v103 ungrammaticRanges];
    v34 = v122;
    v122 = v33;
  }

  v123 = a11;
  v114 = a12;
  objc_storeStrong(&v124, a13);
  objc_storeStrong(v125, a14);
  v128 = a15;
  objc_storeStrong(&v129, a16);
  v127 = a18;
  v35 = [(CRLWPStorage *)self->_storage parentInfo];
  if (objc_opt_respondsToSelector())
  {
    v36 = [(CRLWPStorage *)self->_storage parentInfo];
    v118 = [v36 shouldHideEmptyBullets];
  }

  else
  {
    v118 = 0;
  }

  v115 = a8;
  v116 = a9;
  v119 = 0;
  objc_storeStrong(&v131, a20);
  bzero(v105, 0xA0uLL);
  if (!v25 && (a7.location != 0x7FFFFFFFFFFFFFFFLL || a7.length))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134C5BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134C5D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134C658();
    }

    v37 = off_1019EDA68;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v38 = [NSString stringWithUTF8String:"[CRLWPColumn renderWithRenderer:currentSelection:limitSelection:listRange:rubyGlyphRange:isCanvasInteractive:isInDrawingMode:spellChecker:suppressedMisspellingRange:blackAndWhite:dictationInterpretations:autocorrections:markedRange:markedText:renderMode:pageCount:suppressInvisibles:currentCanvasSelection:]"];
    v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPColumn.mm"];
    [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:3510 isFatal:0 description:"ruby glyph range is meaningless without limitSelection"];
  }

  [v24 willRenderFragmentsWithDrawingState:&location];
  [v24 getClipBoundingBox];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [(CRLWPColumn *)self erasableBounds:0];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  [(CRLWPColumn *)self transformToWP];
  v132.origin.x = v49;
  v132.origin.y = v51;
  v132.size.width = v53;
  v132.size.height = v55;
  v137 = CGRectApplyAffineTransform(v132, &v104);
  v133.origin.x = v41;
  v133.origin.y = v43;
  v133.size.width = v45;
  v133.size.height = v47;
  v134 = CGRectIntersection(v133, v137);
  x = v134.origin.x;
  y = v134.origin.y;
  width = v134.size.width;
  height = v134.size.height;
  if (v118 == 1 && [v99 isInsertionPoint])
  {
    v60 = [v99 start];
  }

  else
  {
    v60 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((a17 & 2) != 0)
  {
    [v24 drawAdornmentRects:self->_paragraphAdornments forColumn:self foreground:0 drawingState:&location];
    v120 = 0;
    ptr = self->_lineFragmentArray.__ptr_;
    v62 = *ptr;
    v63 = *(ptr + 1);
    if (*ptr != v63)
    {
      v64 = 0;
      do
      {
        v65 = *(*v62 + 3);
        if (v65 < 0)
        {
          v66 = &xmmword_101464828;
        }

        else
        {
          v66 = *v62;
        }

        v67 = *v66;
        if (v20 > v67 || (v65 < 0 ? (v68 = &xmmword_101464828) : (v68 = *v62), &length[v20] < *(v68 + 1) + v67))
        {
          [v24 drawFragment:x updateRect:y drawingState:width runState:height lineDrawFlags:?];
          v64 = v120;
        }

        v120 = ++v64;
        v62 += 2;
      }

      while (v62 != v63);
    }
  }

  if (a17)
  {
    v69 = [v96 rangeCount];
    v70 = [v97 rangeCount];
    v71 = 4098;
    if ((a17 & 4) == 0)
    {
      v71 = 2;
    }

    v72 = v71 & 0xFFFFFFFFFFFFDFFFLL | (((a17 >> 3) & 1) << 13);
    v73 = v72 | 0x18;
    if (!v103)
    {
      v73 = v72;
    }

    if (v69)
    {
      v73 |= 0x200uLL;
    }

    if (v70)
    {
      v73 |= 0x800uLL;
    }

    if (v98)
    {
      v74 = v73 | 0x400;
    }

    else
    {
      v74 = v73;
    }

    v130 = 0;
    v120 = 0;
    v75 = self->_lineFragmentArray.__ptr_;
    v76 = *v75;
    v77 = *(v75 + 1);
    if (*v75 != v77)
    {
      do
      {
        if (*(*v76 + 3) < 0)
        {
          v78 = &xmmword_101464828;
        }

        else
        {
          v78 = *v76;
        }

        v80 = v78;
        v79 = *v78;
        v81 = (v79 + *(v80 + 1));
        if (v20 > v79 || &length[v20] < v81)
        {
          v74 = v74 & 0xFFFFFFFFFFFFFEFFLL | ((v79 == v60) << 8);
          if (!v112[0] || [v112[0] intersectsRange:v79])
          {
            [v24 drawFragment:x updateRect:y drawingState:width runState:height lineDrawFlags:?];
          }
        }

        ++v120;
        v76 += 2;
      }

      while (v76 != v77);
    }

    v135.origin.x = x;
    v135.origin.y = y;
    v135.size.width = width;
    v135.size.height = height;
    if (!CGRectIsNull(v135))
    {
      size = CGRectZero.size;
      *&v104.a = CGRectZero.origin;
      *&v104.c = size;
      if (v130 == 1 && [v24 shouldClipFragment:0 drawingState:&location lineDrawFlags:v74 updateRect:&v104 outClipRect:{x, y, width, height}])
      {
        CGContextSaveGState([v24 context]);
        v84 = [v24 context];
        v136.origin.x = v104.a;
        v136.origin.y = v104.b;
        v136.size.width = v104.c;
        v136.size.height = v104.d;
        CGContextClipToRect(v84, v136);
        v85 = 1;
      }

      else
      {
        v85 = 0;
      }

      [v24 drawCharacterFillAdornmentRects:self->_paragraphAdornments forColumn:self excludeRange:v20 drawingState:{length, &location}];
      [v24 drawCharacterStrokeAdornmentRects:self->_paragraphAdornments forColumn:self excludeRange:v20 drawingState:{length, &location}];
      if (v85)
      {
        CGContextRestoreGState([v24 context]);
      }
    }

    v120 = 0;
    v86 = self->_lineFragmentArray.__ptr_;
    v87 = *v86;
    v88 = *(v86 + 1);
    if (*v86 != v88)
    {
      do
      {
        if (*(*v87 + 3) < 0)
        {
          v89 = &xmmword_101464828;
        }

        else
        {
          v89 = *v87;
        }

        v91 = v89;
        v90 = *v89;
        v92 = (v90 + *(v91 + 1));
        if (v20 > v90 || &length[v20] < v92)
        {
          v74 = v74 & 0xFFFFFFFFFFFFFEFFLL | ((v90 == v60) << 8);
          if (!v112[0] || [v112[0] intersectsRange:v90])
          {
            [v24 drawAdornmentsForFragment:x updateRect:y drawingState:width runState:height lineDrawFlags:?];
          }
        }

        ++v120;
        v87 += 2;
      }

      while (v87 != v88);
    }

    [v24 drawAdornmentRects:self->_paragraphAdornments forColumn:self foreground:1 drawingState:&location];
  }

  [v24 didRenderFragments];
  if (cf)
  {
    CFRelease(cf);
  }

  if (color)
  {
    CGColorRelease(color);
  }

  if (v108)
  {
    CGColorRelease(v108);
  }

  if (v113)
  {
    CGColorRelease(v113);
  }

  [v101 endTextColumn:self];
}

- (id)smartFieldAtCharIndex:(unint64_t)a3 attributeKind:(unint64_t)a4
{
  v6 = [(CRLWPColumn *)self storage];
  v7 = [v6 smartFieldAtCharIndex:a3 attributeKind:a4 effectiveRange:0];

  return v7;
}

- (void)enumerateParagraphAdornmentsUsingBlock:(id)a3
{
  v4 = a3;
  paragraphAdornments = self->_paragraphAdornments;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002DFD78;
  v7[3] = &unk_101853158;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)paragraphAdornments enumerateObjectsUsingBlock:v7];
}

- (void)setTransformFromWP:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transformFromWP.c = *&a3->c;
  *&self->_transformFromWP.tx = v4;
  *&self->_transformFromWP.a = v3;
}

- (CRLWPStyleProvider)styleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 25) = 0;
  return self;
}

@end