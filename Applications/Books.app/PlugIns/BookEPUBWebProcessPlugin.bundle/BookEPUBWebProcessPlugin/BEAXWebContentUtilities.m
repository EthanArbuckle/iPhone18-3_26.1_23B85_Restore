@interface BEAXWebContentUtilities
+ (BOOL)checkIfCurrentSelection;
+ (CGPoint)offset;
+ (CGRect)frameForLineNumber:(int64_t)a3 forBookContentElement:(id)a4;
+ (CGRect)frameForRange:(_NSRange)a3 forBookContentElement:(id)a4;
+ (_NSRange)_visibleRangeWithRect:(CGRect)a3 withLineInfos:(id)a4;
+ (_NSRange)chapterRangeForRange:(_NSRange)a3 forBookContentElement:(id)a4;
+ (_NSRange)lineRangeForCharacterPosition:(int64_t)a3 forBookContentElement:(id)a4;
+ (_NSRange)lineRangeForLineNumber:(int64_t)a3 forBookContentElement:(id)a4;
+ (_NSRange)rangeFromBookContentElement:(id)a3;
+ (_NSRange)selectedTextRangeForBookContentElement:(id)a3;
+ (_NSRange)visibleLinesForBookContentElement:(id)a3;
+ (_NSRange)visibleTextRangeInChapterForBookContentElement:(id)a3;
+ (id)attributedStringForLineNumber:(int64_t)a3 forBookContentElement:(id)a4;
+ (id)attributedStringWithFixedAttachments:(id)a3;
+ (id)attributedValueForBookContentElement:(id)a3;
+ (id)attributedValueForRange:(_NSRange)a3 forBookContentElement:(id)a4;
+ (id)childElementForRange:(_NSRange)a3 forBookContentElement:(id)a4;
+ (id)jsContext;
+ (id)sharedUtilities;
+ (id)stringForRange:(_NSRange)a3 forBookContentElement:(id)a4;
+ (id)visiblePageContentForBookContentElement:(id)a3;
+ (int64_t)lineNumberForPoint:(CGPoint)a3 forBookContentElement:(id)a4;
+ (void)checkCanPerformActions;
+ (void)jsSetSelectionWithFrame:(CGRect)a3;
+ (void)performNativeAction:(id)a3;
+ (void)setSelectedTextRange:(_NSRange)a3 forBookContentElement:(id)a4;
+ (void)setWebProcessPlugin:(id)a3;
+ (void)toggleBookmark;
+ (void)toggleControlsVisibility;
+ (void)turnPageWithDirection:(id)a3;
- (BookEPUBWebProcessPlugin)webProcessPlugin;
@end

@implementation BEAXWebContentUtilities

+ (id)sharedUtilities
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C3A4;
  block[3] = &unk_208C0;
  block[4] = a1;
  if (qword_26D88 != -1)
  {
    dispatch_once(&qword_26D88, block);
  }

  v2 = qword_26D90;

  return v2;
}

+ (void)setWebProcessPlugin:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedUtilities];
  [v5 setWebProcessPlugin:v4];
}

+ (_NSRange)lineRangeForCharacterPosition:(int64_t)a3 forBookContentElement:(id)a4
{
  v6 = a4;
  v7 = [BEAXLineInfo chapterLineInfosForElement:v6];
  v8 = [a1 visibleTextRangeInChapterForBookContentElement:v6];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = &v8[a3];
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v15 rangeInChapter];
        if (v13 <= &v16[v17])
        {
          v20 = [v15 rangeInChapter];
          v18 = v21;
          v19 = v20 - v8;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
  v19 = 0;
LABEL_11:

  v22 = v19;
  v23 = v18;
  result.length = v23;
  result.location = v22;
  return result;
}

+ (_NSRange)lineRangeForLineNumber:(int64_t)a3 forBookContentElement:(id)a4
{
  v6 = a4;
  v7 = [BEAXLineInfo chapterLineInfosForElement:v6];
  v8 = [a1 visibleTextRangeInChapterForBookContentElement:v6];
  v9 = [a1 visibleLinesForBookContentElement:v6];

  v10 = v9 + a3;
  if (v10 >= [v7 count])
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v11 = [v7 objectAtIndexedSubscript:v10];
    v12 = [v11 rangeInChapter];
    v14 = v13;

    v15 = v12 - v8;
  }

  v16 = v15;
  v17 = v14;
  result.length = v17;
  result.location = v16;
  return result;
}

+ (_NSRange)selectedTextRangeForBookContentElement:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 elementTextRange];
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

+ (id)attributedValueForRange:(_NSRange)a3 forBookContentElement:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 attributedStringForRange:{objc_msgSend(a1, "visibleTextRangeInChapterForBookContentElement:", v7) + location, length}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)stringForRange:(_NSRange)a3 forBookContentElement:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 stringForRange:{objc_msgSend(a1, "visibleTextRangeInChapterForBookContentElement:", v7) + location, length}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)attributedValueForBookContentElement:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 attributedStringForElement];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (CGRect)frameForLineNumber:(int64_t)a3 forBookContentElement:(id)a4
{
  v6 = a4;
  v7 = [a1 visibleLinesForBookContentElement:v6] + a3;
  v8 = [BEAXLineInfo chapterLineInfosForElement:v6];

  if (v7 >= [v8 count])
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:v7];
    [v9 frameInScreenCoordinates];
    x = v10;
    y = v12;
    width = v14;
    height = v16;
  }

  [BEAXLineInfo subtractOffsetForPoint:x, y];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGRect)frameForRange:(_NSRange)a3 forBookContentElement:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  [v7 baxBoundsForRange:{objc_msgSend(a1, "visibleTextRangeInChapterForBookContentElement:", v7) + location, length}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (_NSRange)chapterRangeForRange:(_NSRange)a3 forBookContentElement:(id)a4
{
  length = a3.length;
  v5 = [a1 visibleTextRangeInChapterForBookContentElement:a4] + a3.location;
  v6 = length;
  result.length = v6;
  result.location = v5;
  return result;
}

+ (int64_t)lineNumberForPoint:(CGPoint)a3 forBookContentElement:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [BEAXLineInfo addOffsetForPoint:x, y];
  v9 = v8;
  v11 = v10;
  v12 = [BEAXLineInfo chapterLineInfosForElement:v7];
  v13 = [a1 visibleLinesForBookContentElement:v7];
  v44 = v14;
  v15 = +[NSMutableIndexSet indexSet];
  v45 = v13;
  if (![v12 count])
  {
    v18 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:
    v33 = +[BEAccessibilityReadingState currentReadingState];
    [v33 primaryVisibleContentRect];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0x7FFFFFFFFFFFFFFFLL;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_CDB0;
    v48[3] = &unk_208E8;
    v51 = v9;
    v52 = v11;
    v53 = v35;
    v54 = v37;
    v55 = v39;
    v56 = v41;
    v49 = v12;
    v50 = &v59;
    v57 = v45;
    v58 = v44;
    [v15 enumerateIndexesUsingBlock:v48];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = 0;
    }

    else
    {
      v42 = v18;
    }

    if (v60[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v42;
    }

    else
    {
      v17 = v60[3];
    }

    _Block_object_dispose(&v59, 8);
    goto LABEL_30;
  }

  v16 = 0;
  v17 = -v13;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 1.79769313e308;
  v46 = v9;
  v47 = v11;
  while (1)
  {
    v20 = [v12 objectAtIndexedSubscript:v16];
    [v20 frameInScreenCoordinates];
    v21 = v64.origin.x;
    v22 = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v63.x = v9;
    v63.y = v11;
    if (CGRectContainsPoint(v64, v63))
    {
      break;
    }

    [v20 frameInScreenCoordinates];
    MidX = CGRectGetMidX(v65);
    [v20 frameInScreenCoordinates];
    MidY = CGRectGetMidY(v66);
    [v20 frameInScreenCoordinates];
    MinY = CGRectGetMinY(v67);
    v28 = +[BEAccessibilityReadingState currentReadingState];
    v29 = [v28 bookLayout];

    if (v29 == &dword_0 + 3)
    {
      v68.origin.x = v21;
      v68.origin.y = v22;
      v68.size.width = width;
      v68.size.height = height;
      if (CGRectGetMinY(v68) <= v47)
      {
        v69.origin.x = v21;
        v69.origin.y = v22;
        v69.size.width = width;
        v69.size.height = height;
        if (v47 <= CGRectGetMaxY(v69))
        {
          [v15 addIndex:v16];
        }
      }

      v30 = vabdd_f64(v47, MidY);
      [v20 frameInScreenCoordinates];
      MinY = CGRectGetMinX(v70);
      v9 = v46;
      v31 = v46;
    }

    else
    {
      v9 = v46;
      v30 = vabdd_f64(v46, MidX);
      v71.origin.x = v21;
      v71.origin.y = v22;
      v71.size.width = width;
      v71.size.height = height;
      if (CGRectGetMinX(v71) <= v46)
      {
        v72.origin.x = v21;
        v72.origin.y = v22;
        v72.size.width = width;
        v72.size.height = height;
        if (v46 <= CGRectGetMaxX(v72))
        {
          [v15 addIndex:v16];
        }
      }

      v31 = v47;
    }

    v32 = v30 >= v19;
    if (MinY < 0.0)
    {
      v32 = 1;
    }

    if (MinY > v31)
    {
      v32 = 1;
    }

    if (!v32)
    {
      v18 = v17;
      v19 = v30;
    }

    ++v16;
    ++v17;
    v11 = v47;
    if (v16 >= [v12 count])
    {
      goto LABEL_23;
    }
  }

  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

LABEL_30:

  return v17;
}

+ (id)attributedStringForLineNumber:(int64_t)a3 forBookContentElement:(id)a4
{
  v6 = a4;
  v7 = [BEAXLineInfo chapterLineInfosForElement:v6];
  v8 = [a1 visibleLinesForBookContentElement:v6];

  v9 = v8 + a3;
  if (v9 >= [v7 count])
  {
    v11 = 0;
  }

  else
  {
    v10 = [v7 objectAtIndexedSubscript:v9];
    v11 = [v10 attributedText];
  }

  return v11;
}

+ (id)jsContext
{
  v2 = [a1 sharedUtilities];
  v3 = [v2 webProcessPlugin];
  v4 = [v3 defaultJSContext];

  return v4;
}

+ (CGPoint)offset
{
  v3 = [NSString stringWithFormat:@"__ibooks_content_support.pageOffset()"];
  v4 = [a1 jsContext];
  v5 = [v4 evaluateScript:v3];

  v6 = [v5 toDictionary];
  v7 = [v6 objectForKeyedSubscript:@"xOffset"];
  v8 = [v6 objectForKeyedSubscript:@"yOffset"];
  [v7 floatValue];
  v10 = v9;
  [v8 floatValue];
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

+ (_NSRange)rangeFromBookContentElement:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 elementTextRange];
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

+ (void)setSelectedTextRange:(_NSRange)a3 forBookContentElement:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v6 _accessibilitySetSelectedTextRange:{location, length}];
  }
}

+ (id)visiblePageContentForBookContentElement:(id)a3
{
  v4 = a3;
  v5 = [v4 baxStoredAttributedPageContent];
  if (!v5 || (v6 = v5, [v4 baxStoredAttributedPageContent], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, !v8))
  {
    v9 = [v4 attributedStringForElement];
    v10 = [a1 visibleTextRangeInChapterForBookContentElement:v4];
    v12 = v11;
    if (&v10[v11] <= [v9 length])
    {
      v13 = [v9 attributedSubstringFromRange:{v10, v12}];
      [v4 baxSetStoredAttributedPageContent:v13];
    }

    else
    {
      [v4 baxSetStoredAttributedPageContent:0];
    }
  }

  v14 = [v4 baxStoredAttributedPageContent];

  return v14;
}

+ (void)toggleBookmark
{
  v3 = [a1 jsContext];
  v2 = [v3 evaluateScript:@"__ibooks_content_support.notifyNativeOfBookmarkPage()"];
}

+ (void)toggleControlsVisibility
{
  v3 = [a1 jsContext];
  v2 = [v3 evaluateScript:@"__ibooks_content_support.notifyNativeOfToggleControlsVisibility()"];
}

+ (void)turnPageWithDirection:(id)a3
{
  v6 = [NSString stringWithFormat:@"__ibooks_content_support.notifyNativeOfPageTurn('%@')", a3];
  v4 = [a1 jsContext];
  v5 = [v4 evaluateScript:v6];
}

+ (void)checkCanPerformActions
{
  v5 = [NSString stringWithFormat:@"__ibooks_content_support.checkNativeForOperations()"];
  v3 = [a1 jsContext];
  v4 = [v3 evaluateScript:v5];
}

+ (void)performNativeAction:(id)a3
{
  v6 = [NSString stringWithFormat:@"__ibooks_content_support.performNativeOperation('%@')", a3];
  v4 = [a1 jsContext];
  v5 = [v4 evaluateScript:v6];
}

+ (BOOL)checkIfCurrentSelection
{
  v3 = [NSString stringWithFormat:@"__ibooks_content_support.checkIfCurrentSelection()"];
  v4 = [a1 jsContext];
  v5 = [v4 evaluateScript:v3];
  v6 = [v5 toBool];

  return v6;
}

+ (void)jsSetSelectionWithFrame:(CGRect)a3
{
  v6 = [NSString stringWithFormat:@"__ibooks_content_support.setSelectionForRange('%f, %f')", a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, *&a3.origin.x, *&a3.origin.y];
  v4 = [a1 jsContext];
  v5 = [v4 evaluateScript:v6];
}

+ (_NSRange)visibleLinesForBookContentElement:(id)a3
{
  v3 = a3;
  v4 = [BEAXLineInfo chapterLineInfosForElement:v3];
  v5 = +[BEAccessibilityReadingState currentReadingState];
  if ([v5 isFixedLayoutBook])
  {
    [v3 accessibilityVisibleContentRect];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = +[BEAccessibilityReadingState currentReadingState];
    [v10 primaryVisibleContentRect];
    v7 = v11;
    v9 = v12;
  }

  [BEAXLineInfo addOffsetForPoint:v7, v9];
  v13 = [BEAXWebContentUtilities _visibleRangeWithRect:v4 withLineInfos:?];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = +[BEAccessibilityReadingState currentReadingState];
    if ([v15 isFixedLayoutBook])
    {
      [v3 accessibilityVisibleContentRect];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
    }

    else
    {
      v24 = +[BEAccessibilityReadingState currentReadingState];
      [v24 secondaryVisibleContentRect];
      v17 = v25;
      v19 = v26;
      v21 = v27;
      v23 = v28;
    }

    v13 = [BEAXWebContentUtilities _visibleRangeWithRect:v4 withLineInfos:v17, v19, v21, v23];
  }

  v29 = v13;
  v30 = v14;

  v31 = v29;
  v32 = v30;
  result.length = v32;
  result.location = v31;
  return result;
}

+ (_NSRange)_visibleRangeWithRect:(CGRect)a3 withLineInfos:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = 0;
  if ([v8 count])
  {
    v10 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v12 = [v8 objectAtIndexedSubscript:v10];
      [v12 frameInScreenCoordinates];
      v22.origin.x = v13;
      v22.origin.y = v14;
      v22.size.width = v15;
      v22.size.height = v16;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      if (CGRectIntersectsRect(v21, v22))
      {
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v10;
        }

        else
        {
          v17 = v11;
        }
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = &v10[-v11];

          v17 = v11;
          goto LABEL_14;
        }
      }

      if (v10 == [v8 count] - 1)
      {
        v9 = [v8 count] - v17;
      }

      ++v10;
      v11 = v17;
      if (v10 >= [v8 count])
      {
        goto LABEL_14;
      }
    }
  }

  v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  v18 = v17;
  v19 = v9;
  result.length = v19;
  result.location = v18;
  return result;
}

+ (_NSRange)visibleTextRangeInChapterForBookContentElement:(id)a3
{
  v4 = a3;
  v5 = [a1 visibleLinesForBookContentElement:v4];
  v7 = v6;
  v8 = [BEAXLineInfo chapterLineInfosForElement:v4];

  if (v5 < [v8 count] && (v9 = &v5[v7], &v5[v7] <= objc_msgSend(v8, "count")))
  {
    v12 = [v8 objectAtIndexedSubscript:v5];
    v10 = [v12 rangeInChapter];

    v13 = [v8 objectAtIndexedSubscript:v9 - 1];
    v14 = [v13 rangeInChapter];
    v16 = v15;

    v11 = &v14[v16 - v10];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v17 = v10;
  v18 = v11;
  result.length = v18;
  result.location = v17;
  return result;
}

+ (id)childElementForRange:(_NSRange)a3 forBookContentElement:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [a1 visibleTextRangeInChapterForBookContentElement:v7];
  v9 = [v7 accessibilityElementCount];
  v10 = 0;
  v11 = v9 - 1;
  if (v9 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = v10;
      v10 = [v7 accessibilityElementAtIndex:v12];

      v19.location = [v10 elementTextRange];
      v19.length = v14;
      v18.location = v8 + location;
      v18.length = length;
      if (NSIntersectionRange(v18, v19).length)
      {
        break;
      }
    }

    while (v11 != v12++);
  }

  return v10;
}

+ (id)attributedStringWithFixedAttachments:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = UIAccessibilityTokenAttachment;
  v6 = [v4 length];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_DB04;
  v13 = &unk_20910;
  v14 = v4;
  v15 = a1;
  v7 = v4;
  [v7 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0x100000, &v10}];
  v8 = [v7 copy];

  return v8;
}

- (BookEPUBWebProcessPlugin)webProcessPlugin
{
  WeakRetained = objc_loadWeakRetained(&self->_webProcessPlugin);

  return WeakRetained;
}

@end