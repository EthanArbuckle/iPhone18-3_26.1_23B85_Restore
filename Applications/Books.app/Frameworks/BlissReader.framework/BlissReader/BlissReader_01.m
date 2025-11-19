id sub_111280(uint64_t a1)
{
  +[CATransaction begin];
  [*(a1 + 32) setWindowLevel:*(a1 + 72)];
  [*(a1 + 32) setBackgroundColor:*(a1 + 40)];
  [*(a1 + 48) setCenter:{*(a1 + 80), *(a1 + 88)}];
  v2 = *(a1 + 112);
  v4[0] = *(a1 + 96);
  v4[1] = v2;
  v4[2] = *(a1 + 128);
  [*(a1 + 48) setTransform:v4];
  [*(a1 + 32) addSubview:*(a1 + 48)];
  if ([objc_msgSend(*(a1 + 56) "subviews")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([objc_msgSend(*(a1 + 64) "subviews")] != &dword_0 + 1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [*(a1 + 64) removeFromSuperview];
  return +[CATransaction commit];
}

id sub_114D10(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 120))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v2 = 0;
  }

  return [*(v1 + 112) performSelector:v2 withObject:?];
}

id sub_114E58(uint64_t a1)
{
  if (*(*(a1 + 32) + 120))
  {
    v1 = *(*(a1 + 32) + 120);
  }

  else
  {
    v1 = 0;
  }

  return [*(*(a1 + 32) + 112) performSelector:v1 withObject:*(a1 + 40) afterDelay:?];
}

id sub_115AC8(uint64_t a1, void *a2)
{
  if ([objc_msgSend(a2 "layoutController")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v4 = [*(a1 + 32) bodyIndex];
  [*(a1 + 32) offsetFromBodyTop];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);

  return [a2 layoutContentAtBodyIndex:v4 offsetFromTop:v5 padAbove:v6 padBelow:?];
}

void sub_116158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  objc_sync_exit(v19);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

__n128 sub_116178(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

id sub_116188(uint64_t a1, void *a2)
{
  result = [a2 firstLineInRect:*(a1 + 72) fromCharIndex:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 48) = result;
  *(v4 + 56) = v5;
  return result;
}

void sub_11679C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_1167BC(uint64_t a1, void *a2)
{
  result = [a2 firstBodyCharacterIndexOverlappingPageRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id sub_1167F8(uint64_t a1, void *a2)
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [a2 bodyLayouts];
  result = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (result)
  {
    v8 = result;
    x = CGRectZero.origin.x;
    v9 = 0;
    v10 = *v29;
    v11 = 1.79769313e308;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        [objc_msgSend(v13 parent];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        TSDDistanceToRectFromRect();
        if (v22 < v11)
        {
          x = v15;
          y = v17;
          width = v19;
          height = v21;
          v9 = v13;
          v11 = v22;
        }

        v12 = v12 + 1;
      }

      while (v8 != v12);
      result = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v8 = result;
    }

    while (result);
    if (v9)
    {
      v27 = 0;
      MidY = CGRectGetMidY(*(a1 + 40));
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      if (MidY <= CGRectGetMidY(v33))
      {
        v24 = CGPointZero.x;
        v25 = CGPointZero.y;
      }

      else
      {
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        v24 = CGRectGetWidth(v34);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        v25 = CGRectGetHeight(v35);
      }

      result = +[TSWPColumn charIndexForPoint:inColumnsArray:allowPastBreak:allowNotFound:pastCenterGoesToNextChar:isAtEndOfLine:leadingEdge:](TSWPColumn, "charIndexForPoint:inColumnsArray:allowPastBreak:allowNotFound:pastCenterGoesToNextChar:isAtEndOfLine:leadingEdge:", [v9 columns], 0, 0, 0, &v27 + 1, &v27, v24, v25);
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

void sub_116B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

__n128 sub_116B5C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

id sub_116B6C(uint64_t a1, void *a2)
{
  result = [a2 originOfCharacterIndex:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  return result;
}

void sub_118220(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_3A698();
}

uint64_t KNAnimationTypeFromKPFAnimationType(void *a1)
{
  if ([a1 isEqualToString:@"none"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"buildIn"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"buildOut"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"transition"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"actionBuild"])
  {
    return 4;
  }

  return 0;
}

id sub_11C200(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR___TSDRep_mCanvas;
  v5 = [*(*(a1 + 32) + OBJC_IVAR___TSDRep_mCanvas) repForLayout:a2];
  if (!v5)
  {
    v5 = [objc_alloc(objc_msgSend(a2 "repClassOverride"))];
  }

  [v5 setParentRep:*(a1 + 32)];

  return v5;
}

uint64_t sub_11C52C(uint64_t a1, void *a2, void *a3)
{
  v5 = [*(a1 + 32) indexOfObject:{objc_msgSend(objc_msgSend(a2, "pageController"), "contentNode")}];
  v6 = v5 - [*(a1 + 32) indexOfObject:{objc_msgSend(objc_msgSend(a3, "pageController"), "contentNode")}];

  return THNSComparisonResultFromInteger(v6);
}

void sub_11DA44(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  qword_567888 = v1;

  [v1 setMaxConcurrentOperationCount:1];
}

void sub_11F588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_11F5D0(uint64_t a1)
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return [result accumulateDisplayPageNumbersIntoAbsolutePageIndexMap:v3 AndDisplayPageNumberArray:v4];
  }

  return result;
}

void *sub_1202B4(NSRange *a1)
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v3.location = [result range];
    return (NSIntersectionRange(v3, a1[32]).length != 0);
  }

  return result;
}

unint64_t THMinIndex(unint64_t a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a1;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

unint64_t THMaxIndex(unint64_t a1, unint64_t a2)
{
  if (a1 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = a1;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

uint64_t THBundle()
{
  if (qword_5678C0 != -1)
  {
    sub_29D290();
  }

  return qword_5678B8;
}

BOOL sub_127CB0(NSRange *a1, void *a2)
{
  v5.location = [a2 annotationStorageRange];
  v5.length = v3;
  return NSIntersectionRange(a1[32], v5).length != 0;
}

id sub_1283B8(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "view")];
  result = [objc_msgSend(*(a1 + 32) "closeButton")];
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) scrimView];

    return [v3 setAlpha:0.5];
  }

  return result;
}

id sub_128E10(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "view")];
  [objc_msgSend(*(a1 + 32) "scrimView")];
  v2 = [*(a1 + 32) closeButton];

  return [v2 setAlpha:0.0];
}

id sub_128E6C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "view")];
  [objc_msgSend(*(a1 + 32) "view")];
  [*(a1 + 32) setView:0];
  [objc_msgSend(*(a1 + 32) "scrimView")];
  [*(a1 + 32) setScrimView:0];
  [objc_msgSend(*(a1 + 32) "closeButton")];
  [*(a1 + 32) setCloseButton:0];
  [*(a1 + 32) p_didFade];
  v2 = *(a1 + 32);

  return [v2 setIsDismissing:0];
}

id sub_12CD6C(uint64_t a1)
{
  [*(a1 + 32) p_performRenderJob:*(a1 + 40) accessController:*(a1 + 48) location:*(a1 + 56) width:*(a1 + 64) editingWidth:*(a1 + 88) text:*(a1 + 96) range:*(a1 + 72) interfaceStyle:{*(a1 + 80), *(a1 + 104)}];
  [*(a1 + 40) didFinish];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 performSelectorOnMainThread:"p_finishedRenderJob:" withObject:v3 waitUntilDone:0];
}

void sub_12CECC(uint64_t a1)
{
  v4 = objc_alloc_init(THNotesViewRenderedAnnotation);
  v2 = [*(a1 + 32) p_newHighlightLayerForAnnotation:objc_msgSend(*(a1 + 40) width:"annotation") storage:*(a1 + 48) text:*(a1 + 56) range:*(a1 + 72) interfaceStyle:*(a1 + 80) maxLines:*(a1 + 88) documentRoot:{*(a1 + 64), objc_msgSend(*(a1 + 40), "maxLines"), objc_msgSend(objc_msgSend(*(a1 + 40), "contentNode"), "documentRoot")}];
  [(THNotesViewRenderedAnnotation *)v4 setHighlightLayer:v2];
  [v2 textFrame];
  [(THNotesViewRenderedAnnotation *)v4 setHighlightTextFrame:?];
  v3 = [*(a1 + 32) p_newHighlightLayerForAnnotation:objc_msgSend(*(a1 + 40) width:"annotation") storage:*(a1 + 48) text:*(a1 + 56) range:*(a1 + 72) interfaceStyle:*(a1 + 80) maxLines:*(a1 + 88) documentRoot:{*(a1 + 96), objc_msgSend(v2, "numberOfLines"), objc_msgSend(objc_msgSend(*(a1 + 40), "contentNode"), "documentRoot")}];
  [(THNotesViewRenderedAnnotation *)v4 setEditingHighlightLayer:v3];

  +[CATransaction flush];
  [*(a1 + 40) setRenderedAnnotation:v4];
}

void sub_12D9B8(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 24);
  if (v7 < *(*(a1 + 32) + 104))
  {
    v14 = objc_alloc_init(AEHighlightLine);
    v15 = a3 + 1.0;
    [v14 setFullLineRect:{a2, v15, a4, a5}];
    [v14 setCurrentLineRect:{a2, v15, a4, a5}];
    [v14 setUnderlinePosition:a6];
    [*(a1 + 40) addObject:v14];

    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 24);
  }

  *(v6 + 24) = v7 + 1;
}

void sub_12F474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_12F48C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v21 = *(a2 + 256);
  v18 = *(a2 + 208);
  v19 = *(a2 + 224);
  v20 = *(a2 + 240);
  v16 = *(a2 + 176);
  v17 = *(a2 + 192);
  do
  {
    v4 = v3;
    [*(a1 + 32) p_angleFromQuadrant:v3++ inRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), v10, v11, v12, v13, v14, v15}];
    result = [*(a1 + 32) p_angleFromQuadrant:v3 & 3 inRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    if (v4 == 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(*(a1 + 32) + 704);
      if (!v6)
      {
        continue;
      }
    }

    for (i = 0; i != v6; ++i)
    {
      TSDMixAnglesInRadians();
      TSDDeltaFromAngle();
      if (*(a1 + 104))
      {
        TSDMultiplyPointScalar();
        TSDCenterOfRect();
        TSDGPUUpdateDataSetMetalPoint2DAtIndex();
        TSDGPUUpdateDataSetMetalPoint2DAtIndex();
        TSDGPUUpdateDataSetMetalFloatAtIndex();
        ++*(*(*(a1 + 40) + 8) + 24);
        TSDGPUUpdateDataSetMetalPoint2DAtIndex();
        TSDGPUUpdateDataSetMetalPoint2DAtIndex();
        v12 = v18;
        v13 = v19;
        v14 = v20;
        v15 = v21;
        v10 = v16;
        v11 = v17;
        result = TSDGPUUpdateDataSetMetalFloatAtIndex();
        ++*(*(*(a1 + 40) + 8) + 24);
      }

      else
      {
        TSDMultiplyPointScalar();
        v8 = 1;
        do
        {
          v9 = v8;
          TSDGPUUpdateDataSetMetalPoint2DAtIndex();
          TSDGPUUpdateDataSetMetalPoint2DAtIndex();
          v12 = v18;
          v13 = v19;
          v14 = v20;
          v15 = v21;
          v10 = v16;
          v11 = v17;
          result = TSDGPUUpdateDataSetMetalFloatAtIndex();
          v8 = 0;
          ++*(*(*(a1 + 40) + 8) + 24);
        }

        while ((v9 & 1) != 0);
      }
    }
  }

  while (v3 != 5);
  return result;
}

void sub_12FA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_12FA30(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v21 = *(a2 + 256);
  v18 = *(a2 + 208);
  v19 = *(a2 + 224);
  v20 = *(a2 + 240);
  v16 = *(a2 + 176);
  v17 = *(a2 + 192);
  do
  {
    v4 = v3;
    [*(a1 + 32) p_angleFromQuadrant:v3++ inRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), v10, v11, v12, v13, v14, v15}];
    result = [*(a1 + 32) p_angleFromQuadrant:v3 & 3 inRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    if (v4 == 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(*(a1 + 32) + 704);
      if (!v6)
      {
        continue;
      }
    }

    for (i = 0; i != v6; ++i)
    {
      TSDMixAnglesInRadians();
      TSDDeltaFromAngle();
      TSDMultiplyPointScalar();
      v8 = 1;
      do
      {
        v9 = v8;
        TSDGPUUpdateDataSetMetalPoint2DAtIndex();
        TSDGPUUpdateDataSetMetalPoint2DAtIndex();
        v12 = v18;
        v13 = v19;
        v14 = v20;
        v15 = v21;
        v10 = v16;
        v11 = v17;
        result = TSDGPUUpdateDataSetMetalFloatAtIndex();
        v8 = 0;
        ++*(*(*(a1 + 40) + 8) + 24);
      }

      while ((v9 & 1) != 0);
    }
  }

  while (v3 != 5);
  return result;
}

uint64_t sub_130B80(uint64_t result)
{
  if (result > 110)
  {
    v1 = 114;
    v2 = 122;
    v3 = 121;
    if (result != 122)
    {
      v3 = result;
    }

    if (result != 121)
    {
      v2 = v3;
    }

    if (result != 115)
    {
      v1 = v2;
    }

    v4 = 112;
    v5 = 111;
    v6 = 115;
    if (result != 114)
    {
      v6 = result;
    }

    if (result != 112)
    {
      v5 = v6;
    }

    if (result != 111)
    {
      v4 = v5;
    }

    if (result <= 114)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    switch(result)
    {
      case 11:
        result = 12;
        break;
      case 12:
        result = 11;
        break;
      case 13:
        result = 14;
        break;
      case 14:
        result = 13;
        break;
      case 21:
        result = 24;
        break;
      case 22:
        result = 23;
        break;
      case 23:
        result = 22;
        break;
      case 24:
        result = 21;
        break;
      case 31:
        result = 32;
        break;
      case 32:
        result = 31;
        break;
      case 41:
        result = 42;
        break;
      case 42:
        result = 41;
        break;
      case 43:
        result = 44;
        break;
      case 44:
        result = 43;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1370E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_13A8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_13AC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_13B854(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13B8D8;
  block[3] = &unk_45AE00;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

id sub_13B8D8(uint64_t a1)
{
  [*(a1 + 32) setReceivedPreRoll:1];
  result = [*(a1 + 32) presentCompletionBlock];
  if (result)
  {
    (*([*(a1 + 32) presentCompletionBlock] + 2))();
    v3 = *(a1 + 32);

    return [v3 setPresentCompletionBlock:0];
  }

  return result;
}

id *sub_13BE80(id *result, uint64_t a2)
{
  if (*(*(result[5] + 1) + 24) == 1 && *(result + 64) == 1)
  {
    return [result[4] bookViewWillAnimateRotationToSize:a2 withContext:{*(result + 6), *(result + 7)}];
  }

  return result;
}

id sub_13BEB8(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(a1 + 64) == 1)
  {
    [*(a1 + 32) bookViewDidAnimateRotationToSize:a2 withContext:{*(a1 + 48), *(a1 + 56)}];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {

    return [v4 bookViewDidRotateTransitionToSize:a2 withContext:{v5, v6}];
  }

  else
  {

    return [v4 bookViewDidTransitionToSize:a2 withContext:{v5, v6}];
  }
}

uint64_t sub_13CEF8(uint64_t a1)
{
  [*(a1 + 32) p_setMoviePlayerBackgroundColor:objc_msgSend(objc_msgSend(*(a1 + 32) animated:{"p_curtainColor"), "UIColor"), 0}];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_13D0CC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) moviePlayerViewController];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) setBackgroundColor:*(a1 + 40)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [objc_msgSend(objc_msgSend(*(a1 + 32) "moviePlayerViewController")];
}

uint64_t sub_13D420(uint64_t a1)
{
  [*(a1 + 32) p_setMoviePlayerBackgroundColor:objc_msgSend(objc_msgSend(*(a1 + 32) animated:{"p_curtainColor"), "UIColor"), 0}];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_13D48C(uint64_t a1)
{
  [*(a1 + 32) p_setMoviePlayerBackgroundColor:objc_msgSend(objc_msgSend(*(a1 + 32) animated:{"p_curtainColor"), "UIColor"), 0}];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_13D4F8(uint64_t a1)
{
  [+[BCAudioMuxingCoordinator sharedInstance](BCAudioMuxingCoordinator notifyPlaybackWillStart:"notifyPlaybackWillStart:", *(a1 + 32)];
  [objc_msgSend(*(a1 + 32) "moviePlayerViewController")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "moviePlayerViewController")];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_13FAB0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = 0.0;
  }

  else
  {
    [v3 setHidden:0];
    v3 = *(a1 + 32);
    v4 = 1.0;
  }

  return [v3 setAlpha:v4];
}

id sub_140C00(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [objc_msgSend(*(a1 + 40) "contentContainerView")];
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  [objc_msgSend(v2 "view")];
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = [*(a1 + 48) view];

  return [v7 setFrame:{v3, v4, v5, v6}];
}

uint64_t sub_140CB4(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "view")];
  [*(a1 + 32) removeFromParentViewController];
  [objc_msgSend(*(a1 + 32) "view")];
  [*(a1 + 40) didMoveToParentViewController:*(a1 + 48)];
  *(*(a1 + 48) + 16) &= 0xFCu;
  [*(a1 + 48) didPresentViewController:*(a1 + 40)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

int64_t sub_1441F4(id a1, id a2, id a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_146094(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) expandableExpandedPresentationDidEnd];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1465CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_1465F0(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(a1 + 72) == 1)
  {
    [*(a1 + 32) bookViewWillAnimateRotationToSize:a2 withContext:{*(a1 + 56), *(a1 + 64)}];
    v3 = *(*(a1 + 48) + 8);
    v3[2] = v5;
    v3[3] = v6;
    v3[4] = v7;
  }

  return [*(a1 + 32) p_updateScrollViewLayout];
}

id sub_14666C(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(a1 + 72) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = v5[3];
    v13[0] = v5[2];
    v13[1] = v8;
    v13[2] = v5[4];
    [v4 bookViewDidAnimateRotationToSize:a2 withContext:v13 transform:{v6, v7}];
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    return [v9 bookViewDidRotateTransitionToSize:a2 withContext:{v10, v11}];
  }

  else
  {
    return [v9 bookViewDidTransitionToSize:a2 withContext:{v10, v11}];
  }
}

uint64_t sub_1495B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_14B820(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 80))
    {
      result = [*(v3 + 32) expandedPanel:0 willChangeToVisible:*(a1 + 40)];
      v3 = *(a1 + 32);
    }

    if (*(v3 + 88))
    {
      result = [*(v3 + 32) expandedPanel:1 willChangeToVisible:*(a1 + 40)];
      v3 = *(a1 + 32);
    }

    if (*(v3 + 96))
    {
      v4 = *(v3 + 32);
      v5 = *(a1 + 40);

      return [v4 expandedPanel:2 willChangeToVisible:v5];
    }
  }

  return result;
}

id sub_14B8C4(uint64_t a1)
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  --*(*(a1 + 32) + 72);
  v2 = *(a1 + 32);
  if (!v2[9])
  {
    [objc_msgSend(v2 "closeButton")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "topPanel")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "bottomPanel")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "controlPanel")];
    [objc_msgSend(*(a1 + 32) "closeButton")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "topPanel")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "bottomPanel")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "controlPanel")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "topPanel")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "bottomPanel")];
    [objc_msgSend(objc_msgSend(*(a1 + 32) "controlPanel")];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return +[CATransaction commit];
}

void sub_154F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

char *sub_154F74(void *a1, void *a2)
{
  v3 = [a2 layoutForInfo:a1[4]];
  [objc_msgSend(v3 "geometry")];
  *(*(a1[5] + 8) + 24) = v4;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v5 = [v3 children];
  result = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        if (!v10)
        {
          sub_29D2A4();
        }

        v11 = *(*(a1[6] + 8) + 24);
        [v10 textWidth];
        if (v11 >= v12)
        {
          v12 = v11;
        }

        *(*(a1[6] + 8) + 24) = v12;
        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

id sub_15790C(uint64_t a1)
{
  +[CATransaction begin];
  [objc_msgSend(*(*(a1 + 40) + 64) "canvas")];
  [*(a1 + 32) setRasterizationScale:?];
  [*(a1 + 32) setShouldRasterize:*(a1 + 48)];
  [*(a1 + 32) spi_setPreloadsCache:*(a1 + 48)];
  +[CATransaction commit];

  return +[CATransaction flush];
}

id sub_159150(uint64_t a1)
{
  +[CATransaction begin];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  [objc_msgSend(*(a1 + 32) p_objectForLayer:objc_msgSend(*(a1 + 32) key:{"targetLayer"), @"opacity", "floatValue"}];
  v3 = v2;
  [*(a1 + 32) teardownTarget];
  v4 = [*(a1 + 32) targetLayer];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }

  [*(a1 + 32) didAnimate];
  if (v4)
  {
    [v4 setHidden:0];
    LODWORD(v6) = v3;
    [v4 setOpacity:v6];
  }

  +[CATransaction commit];
  [*(a1 + 32) didAnimatePostCommit];
  v7 = +[UIWindow keyWindow];

  return [v7 endDisablingInterfaceAutorotation];
}

id sub_15D6A8(uint64_t a1)
{
  [*(a1 + 32) p_stop];
  objc_opt_class();
  [objc_msgSend(*(a1 + 32) "movieLayout")];
  v2 = TSUDynamicCast();
  v3 = +[THWAVController sharedController];

  return [v3 transportControllerDidStopPlaying:v2];
}

id sub_15DA0C(uint64_t a1)
{
  result = [*(a1 + 32) isPlaying];
  if (result)
  {
    [*(a1 + 32) stop];
    [objc_msgSend(*(a1 + 32) "movieInfo")];
    v3 = *(a1 + 32);

    return [v3 setTimeToBeginPlaybackAt:?];
  }

  return result;
}

id sub_15DFE0(uint64_t a1)
{
  result = [*(a1 + 32) isPlaying];
  if (result)
  {
    [*(a1 + 32) changeCurrentTimeTo:0.0];
    [*(a1 + 32) p_stop];
    objc_opt_class();
    [objc_msgSend(*(a1 + 32) "movieLayout")];
    v3 = TSUDynamicCast();
    v4 = +[THWAVController sharedController];

    return [v4 transportControllerDidStartAutoplaying:v3];
  }

  return result;
}

void sub_15F358(uint64_t a1)
{
  v2 = [*(a1 + 32) p_largeThumbnail];
  if (v2)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_15F3E8;
    v3[3] = &unk_45AE58;
    v3[4] = *(a1 + 32);
    v3[5] = v2;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

id sub_15F3E8(id result)
{
  v2 = *(result + 4);
  if (*(v2 + 80) == 1)
  {
    v3 = result;
    *(v2 + 80) = 2;
    [*(*(result + 4) + 64) setContents:{objc_msgSend(*(result + 5), "CGImage")}];
    LODWORD(v4) = 1.0;
    [*(v3[4] + 64) setOpacity:v4];
    LODWORD(v5) = 1.0;
    [*(v3[4] + 72) setOpacity:v5];
    [*(v3[4] + 64) setHidden:0];
    v6 = *(v3[4] + 72);

    return [v6 setHidden:0];
  }

  return result;
}

void *sub_15F694(void *result)
{
  v2 = result[4];
  if (*(v2 + 80) == 3)
  {
    v3 = result;
    *(v2 + 80) = 0;
    [*(result[4] + 64) setContents:0];
    [*(v3[4] + 64) setHidden:1];
    v4 = *(v3[4] + 72);

    return [v4 setHidden:1];
  }

  return result;
}

id sub_15FAAC(uint64_t a1)
{
  if ([*(a1 + 32) parentRep])
  {
    [objc_msgSend(*(a1 + 32) "parentRep")];
    x = v2;
    y = v4;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v6 = *(a1 + 32);
  v7 = v6[39];
  [v6 frameInUnscaledCanvas];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [objc_msgSend(*(a1 + 32) "interactiveCanvasController")];

  return [v7 setUnscaledFrame:v9 unscaledLayerOffset:v11 viewScale:{v13, v15, x, y, v16}];
}

id sub_160DC0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [*(a1 + 32) p_layerForState:*(*(a1 + 32) + 297) == a3 pageIndex:a3];

  return [a2 setLayer:v4];
}

id sub_1620D0(uint64_t a1)
{
  [*(a1 + 32) setIsPressableAtPoint:0];
  [objc_msgSend(*(a1 + 32) "pressableRep")];
  v2 = *(a1 + 32);

  return [v2 p_invokeAction];
}

id sub_162120(uint64_t a1)
{
  [*(a1 + 32) setIsPressableAtPoint:0];
  [objc_msgSend(*(a1 + 32) "pressableRep")];
  v2 = *(a1 + 32);

  return [v2 p_invokeAction];
}

id sub_1621DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_16224C;
  v3[3] = &unk_45AE00;
  v3[4] = v1;
  return [v1 p_recoilAnimationWithCompletionBlock:v3];
}

id sub_169714(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) movieUIView];

  return [v2 setAlpha:v1];
}

id sub_169760(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) movieUIView];

  return [v2 setHidden:v1];
}

id sub_1698A0(uint64_t a1)
{
  v1 = [*(a1 + 32) transportController];

  return [v1 play];
}

id sub_16994C(uint64_t a1)
{
  v1 = [*(a1 + 32) transportController];

  return [v1 pause];
}

id sub_169A20(uint64_t a1)
{
  v2 = [*(a1 + 32) movieIsPlaying];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 pause];
  }

  else
  {

    return [v3 play];
  }
}

id sub_169F24(id *a1)
{
  [a1[4] notifyPlaybackWillStart:a1[5]];
  result = [a1[5] playingTransportController];
  if (result != a1[6])
  {
    v3 = [objc_msgSend(objc_msgSend(a1[5] "playingTransportController")];
    if (v3 != [objc_msgSend(a1[6] "movieLayout")])
    {
      [objc_msgSend(a1[5] "playingTransportController")];
    }

    [a1[5] setPlayingTransportController:a1[6]];
    v4 = [objc_msgSend(a1[5] "autoplayingTransportControllers")];
    [objc_msgSend(a1[5] "autoplayingTransportControllers")];

    return [v4 makeObjectsPerformSelector:"stop"];
  }

  return result;
}

id sub_16A160(uint64_t a1)
{
  [*(a1 + 32) notifyPlaybackWillStart:*(a1 + 40)];
  v2 = [*(a1 + 40) autoplayingTransportControllers];
  v3 = *(a1 + 48);

  return [v2 addObject:v3];
}

id sub_16D7E8(uint64_t a1)
{
  [*(a1 + 32) pConfigureScrubberVisibility];
  v2 = *(a1 + 32);

  return [v2 pConfigureHUDVisibility];
}

id sub_170E94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  TSDRectWithSize();

  return [v3 paintRect:a2 inContext:?];
}

id sub_17161C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 != v2)
  {
    [v2 setCalloutsVisible:1 animated:0];
    v2 = *(a1 + 32);
  }

  return [v2 setCalloutsVisible:1 animated:1];
}

uint64_t sub_174D1C(uint64_t a1)
{
  [*(a1 + 32) p_adjustScrollViewContentInsets];
  [objc_msgSend(*(a1 + 40) "trackingController")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "interactiveCanvasController")];
  [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "stageCanvasController")];
  [*(a1 + 40) invalidateReps];
  [objc_msgSend(*(a1 + 32) "interactiveCanvasController")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "stageCanvasController")];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "layout")];
  if (*(a1 + 56))
  {
    [*(a1 + 40) invalidateLayers];
  }

  [objc_msgSend(objc_msgSend(*(a1 + 32) "stageCanvasController")];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_175038(uint64_t a1)
{
  [*(a1 + 32) applyScrollingPolicy];
  v2 = *(a1 + 32);

  return [v2 setUserInteractionEnabled:1];
}

id sub_177DF4(uint64_t a1)
{
  [*(*(a1 + 32) + 32) autosizedCanvasControllerDidLayout:?];
  [objc_msgSend(*(*(a1 + 32) + 16) "layoutController")];
  [*(*(a1 + 32) + 32) autosizedCanvasController:? adjustedBoundsRectForTopLevelBoundsRect:?];
  v4 = *(a1 + 32);
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  if (v2 <= 0.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = v2;
  }

  if (v3 <= 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v3;
  }

  [objc_msgSend(*(*(a1 + 32) + 24) "canvasLayer")];
  v7 = *(*(a1 + 32) + 32);

  return [v7 autosizedCanvasControllerDidResize:?];
}

void sub_1782FC(id a1, THPageLayerViewProvider *a2)
{
  [objc_msgSend(-[THPageLayerViewProvider view](a2 "view")];
  v3 = [-[THPageLayerViewProvider borderView](a2 "borderView")];

  [v3 removeAnimationForKey:@"displacement"];
}

void sub_17836C(id a1, THPageLayerViewProvider *a2)
{
  [objc_msgSend(-[THPageLayerViewProvider view](a2 "view")];
  [objc_msgSend(-[THPageLayerViewProvider borderView](a2 "borderView")];
  [objc_msgSend(-[THPageLayerViewProvider view](a2 "view")];
  [objc_msgSend(-[THPageLayerViewProvider borderView](a2 "borderView")];

  [(THPageLayerViewProvider *)a2 setVisible:1];
}

void sub_178418(id a1, THPageLayerViewProvider *a2)
{
  v3 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v3 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v3 setDuration:0.1];
  [(CABasicAnimation *)v3 setBeginTime:0.0];
  [(CABasicAnimation *)v3 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v3 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v3 setToValue:[NSNumber numberWithFloat:0.0]];
  [(CABasicAnimation *)v3 setFromValue:[NSNumber numberWithFloat:0.0]];
  [objc_msgSend(-[THPageLayerViewProvider view](a2 "view")];
  [objc_msgSend(-[THPageLayerViewProvider borderView](a2 "borderView")];

  [(THPageLayerViewProvider *)a2 setVisible:0];
}

id sub_1785EC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40) == a3)
  {
    [objc_msgSend(objc_msgSend(a2 "view")];
    [objc_msgSend(objc_msgSend(a2 "borderView")];
    v4 = 1;
  }

  else
  {
    v6 = fmin(fmax(1.0 / (*(a1 + 48) - *(a1 + 56)) * (*(a1 + 64) - *(a1 + 56)), 0.0), 1.0);
    *&v6 = v6;
    *&v6 = fabsf(*&v6);
    [*(a1 + 32) _solveForInput:v6];
    v8 = v7;
    v9 = v7;
    [objc_msgSend(objc_msgSend(a2 "view")];
    v10 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [(CABasicAnimation *)v10 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v10 setDuration:*(a1 + 72)];
    [(CABasicAnimation *)v10 setBeginTime:0.0];
    [(CABasicAnimation *)v10 setBeginTimeMode:kCAAnimationRelative];
    [(CABasicAnimation *)v10 setFillMode:kCAFillModeBoth];
    *&v11 = v8;
    [(CABasicAnimation *)v10 setToValue:[NSNumber numberWithFloat:v11]];
    -[CABasicAnimation setFromValue:](v10, "setFromValue:", [objc_msgSend(objc_msgSend(objc_msgSend(a2 "view")]);
    [objc_msgSend(objc_msgSend(a2 "view")];
    [objc_msgSend(objc_msgSend(a2 "borderView")];
    v4 = fabs(v9 + -1.0) < 0.00999999978;
  }

  return [a2 setVisible:v4];
}

id sub_178880(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = 0.0;
  if (*(a1 + 40) != a3)
  {
    v5 = *(a1 + 48);
    *&v5 = v5;
  }

  *&v5 = fabsf(*&v5);
  [*(a1 + 32) _solveForInput:v5];
  v7 = 1.0 - v6;
  v8 = (1.0 - v6);
  v9 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v9 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v9 setDuration:*(a1 + 56)];
  [(CABasicAnimation *)v9 setBeginTime:*(a1 + 64)];
  [(CABasicAnimation *)v9 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v9 setFillMode:kCAFillModeBoth];
  *&v10 = v7;
  [(CABasicAnimation *)v9 setToValue:[NSNumber numberWithFloat:v10]];
  -[CABasicAnimation setFromValue:](v9, "setFromValue:", [objc_msgSend(objc_msgSend(objc_msgSend(a2 "view")]);
  [objc_msgSend(objc_msgSend(a2 "view")];
  [objc_msgSend(objc_msgSend(a2 "borderView")];
  [objc_msgSend(objc_msgSend(a2 "view")];
  [objc_msgSend(objc_msgSend(a2 "borderView")];
  v11 = fabs(v8 + -1.0) < 0.00999999978;

  return [a2 setVisible:v11];
}

id sub_178ADC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40) == a3)
  {
    [objc_msgSend(objc_msgSend(a2 "view")];
    [objc_msgSend(objc_msgSend(a2 "borderView")];
    v4 = 1;
  }

  else
  {
    v5 = fmin(fmax(1.0 / (*(a1 + 48) - *(a1 + 56)) * (*(a1 + 64) - *(a1 + 56)), 0.0), 1.0);
    *&v5 = v5;
    *&v5 = fabsf(*&v5);
    [*(a1 + 32) _solveForInput:v5];
    v7 = v6;
    v8 = v6;
    [objc_msgSend(objc_msgSend(a2 "view")];
    v9 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [(CABasicAnimation *)v9 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v9 setDuration:0.25];
    [(CABasicAnimation *)v9 setBeginTime:0.0];
    [(CABasicAnimation *)v9 setBeginTimeMode:kCAAnimationRelative];
    [(CABasicAnimation *)v9 setFillMode:kCAFillModeBoth];
    *&v10 = v7;
    [(CABasicAnimation *)v9 setToValue:[NSNumber numberWithFloat:v10]];
    *&v11 = v7;
    [(CABasicAnimation *)v9 setFromValue:[NSNumber numberWithFloat:v11]];
    [objc_msgSend(objc_msgSend(a2 "view")];
    [objc_msgSend(objc_msgSend(a2 "borderView")];
    v4 = fabs(v8 + -1.0) < 0.00999999978;
  }

  return [a2 setVisible:v4];
}

id sub_178D18(uint64_t a1, void *a2, uint64_t a3)
{
  [objc_msgSend(objc_msgSend(a2 "view")];
  [objc_msgSend(objc_msgSend(a2 "borderView")];
  v6 = *(a1 + 32);
  v7 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v7 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v7 setDuration:*(a1 + 40)];
  [(CABasicAnimation *)v7 setBeginTime:0.0];
  [(CABasicAnimation *)v7 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v7 setFillMode:kCAFillModeBoth];
  v8 = v6 == a3;
  v9 = v6 == a3;
  v10 = 0.0;
  if (v8)
  {
    *&v10 = 1.0;
  }

  [(CABasicAnimation *)v7 setToValue:[NSNumber numberWithFloat:v10]];
  -[CABasicAnimation setFromValue:](v7, "setFromValue:", [objc_msgSend(objc_msgSend(objc_msgSend(a2 "view")]);
  [objc_msgSend(objc_msgSend(a2 "view")];
  [objc_msgSend(objc_msgSend(a2 "borderView")];

  return [a2 setVisible:v9];
}

id sub_178EFC(uint64_t a1, void *a2, uint64_t a3)
{
  [objc_msgSend(objc_msgSend(a2 "view")];
  result = [objc_msgSend(objc_msgSend(a2 "borderView")];
  if (*(a1 + 32) != a3)
  {
    v7 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [(CABasicAnimation *)v7 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v7 setDuration:*(a1 + 40)];
    [(CABasicAnimation *)v7 setBeginTime:0.0];
    [(CABasicAnimation *)v7 setBeginTimeMode:kCAAnimationRelative];
    [(CABasicAnimation *)v7 setFillMode:kCAFillModeBoth];
    LODWORD(v8) = 1.0;
    [(CABasicAnimation *)v7 setToValue:[NSNumber numberWithFloat:v8]];
    -[CABasicAnimation setFromValue:](v7, "setFromValue:", [objc_msgSend(objc_msgSend(objc_msgSend(a2 "view")]);
    [objc_msgSend(objc_msgSend(a2 "view")];
    [objc_msgSend(objc_msgSend(a2 "borderView")];

    return [a2 setVisible:0];
  }

  return result;
}

id sub_1790DC(uint64_t a1, void *a2)
{
  v4 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [(CABasicAnimation *)v4 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v4 setDuration:*(a1 + 32)];
  [(CABasicAnimation *)v4 setBeginTime:0.0];
  [(CABasicAnimation *)v4 setBeginTimeMode:kCAAnimationRelative];
  [(CABasicAnimation *)v4 setFillMode:kCAFillModeForwards];
  [(CABasicAnimation *)v4 setToValue:[NSNumber numberWithFloat:0.0]];
  -[CABasicAnimation setFromValue:](v4, "setFromValue:", [objc_msgSend(objc_msgSend(objc_msgSend(a2 "view")]);
  [objc_msgSend(objc_msgSend(a2 "view")];
  [objc_msgSend(objc_msgSend(a2 "borderView")];

  return [a2 setVisible:0];
}

id sub_179270(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [objc_msgSend(a2 "view")];
  if (v5 == a3)
  {
    [v6 removeAnimationForKey:@"opacity"];
    [objc_msgSend(objc_msgSend(a2 "borderView")];
  }

  else
  {
    [v6 setOpaque:0];
    v7 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [(CABasicAnimation *)v7 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v7 setDuration:0.1];
    [(CABasicAnimation *)v7 setBeginTime:0.0];
    [(CABasicAnimation *)v7 setBeginTimeMode:kCAAnimationRelative];
    [(CABasicAnimation *)v7 setFillMode:kCAFillModeBoth];
    [(CABasicAnimation *)v7 setToValue:[NSNumber numberWithFloat:0.0]];
    -[CABasicAnimation setFromValue:](v7, "setFromValue:", [objc_msgSend(objc_msgSend(objc_msgSend(a2 "view")]);
    [objc_msgSend(objc_msgSend(a2 "view")];
    [objc_msgSend(objc_msgSend(a2 "borderView")];
  }

  return [a2 setVisible:v5 == a3];
}

void sub_1793F4(id a1, THPageLayerViewProvider *a2, int64_t a3)
{
  [objc_msgSend(-[THPageLayerViewProvider view](a2 view];
  [objc_msgSend(-[THPageLayerViewProvider borderView](a2 "borderView")];

  [(THPageLayerViewProvider *)a2 setVisible:1];
}

id sub_17965C(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    v6 = [a2 view];
    [a2 canvasBoundsFrame];
    [objc_msgSend(a2 "view")];
    TSDRectWithOriginAndSize();
    [v6 setFrame:?];
  }

  v7 = a3 - *(a1 + 40);
  v8 = (*(a1 + 48) - 1);
  v9 = v8 + 0.5;
  v10 = 0.0;
  v11 = v7 < -0.5 || v9 < v7;
  v12 = 0.0;
  if (v11)
  {
    v12 = -1.0;
    if (v7 >= -0.5 || v7 <= -1.0)
    {
      if (v7 <= -1.0)
      {
        goto LABEL_23;
      }

      v14 = v8 + 1.0;
      if (v9 >= v7 || v14 <= v7)
      {
        if (v9 <= v7)
        {
          v12 = 1.0;
        }

        else
        {
          v12 = 0.0;
        }

        goto LABEL_23;
      }

      v16 = v7 - v9;
    }

    else
    {
      v16 = v7 + 0.5;
    }

    v12 = v16 + v16;
  }

LABEL_23:
  [objc_msgSend(objc_msgSend(a2 "view")];
  v17 = fabs(v12);
  if (v17 < 1.0)
  {
    if (v12 < 0.0 || (v10 = 1.0, v17 = v12, v12 > 0.0))
    {
      *&v17 = v17;
      [*(a1 + 32) _solveForInput:v17];
      v10 = 1.0 - v18 * *(a1 + 56);
    }
  }

  v19 = fabs(v10 + -1.0);
  if (v19 >= 0.00999999978)
  {
    v20 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [(CABasicAnimation *)v20 setRemovedOnCompletion:0];
    [(CABasicAnimation *)v20 setDuration:0.1];
    [(CABasicAnimation *)v20 setBeginTime:0.0];
    [(CABasicAnimation *)v20 setBeginTimeMode:kCAAnimationRelative];
    [(CABasicAnimation *)v20 setFillMode:kCAFillModeBoth];
    v21 = v10;
    *&v22 = v21;
    [(CABasicAnimation *)v20 setToValue:[NSNumber numberWithFloat:v22]];
    *&v23 = v21;
    [(CABasicAnimation *)v20 setFromValue:[NSNumber numberWithFloat:v23]];
    [objc_msgSend(objc_msgSend(a2 "view")];
    [objc_msgSend(objc_msgSend(a2 "borderView")];
  }

  else
  {
    [objc_msgSend(objc_msgSend(a2 "view")];
    [objc_msgSend(objc_msgSend(a2 "borderView")];
  }

  return [a2 setVisible:v19 < 0.00999999978];
}

THGuidedPanRectWell *sub_179AA4(void *a1, int a2, double a3, double a4, double a5, double a6, double a7)
{
  [a1 guidedPanTargetUnscaledRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [[THGuidedPanRectWell alloc] initWithUnscaledRect:a1 wellRect:v13 target:v15, v17, v19, a3, a4, a5, a6];
  [(THGuidedPanRectWell *)v21 setSmoothWeight:0.1];
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  MidX = CGRectGetMidX(v33);
  v23 = v14;
  v24 = v16;
  v25 = v18;
  v26 = v20;
  if (a2)
  {
    MaxY = CGRectGetMaxY(*&v23);
  }

  else
  {
    MaxY = CGRectGetMinY(*&v23);
  }

  [(THGuidedPanRectWell *)v21 setFocalPoint:MidX, MaxY];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_17A810;
  v32[3] = &unk_45E360;
  *&v32[4] = a7;
  [(THGuidedPanRectWell *)v21 setWeightBlock:v32];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_17A884;
  v30[3] = &unk_45E388;
  v30[4] = v21;
  v31 = a2;
  [(THGuidedPanRectWell *)v21 setRatingBlock:v30];
  return v21;
}

double sub_17A028(uint64_t a1, double a2, double a3, double a4, double a5)
{
  [*(a1 + 32) unconsumedMovementWithMovement:*(a1 + 40) controller:{a4, a5}];
  TSDPointLength();
  v7 = v6 / *(a1 + 48);
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = (1.0 - v7 + -1.0) * 3.14159265;
  return (cosf(v8) + 1.0) * 0.5;
}

uint64_t sub_17A0B8(uint64_t a1)
{
  [*(a1 + 32) currentBlendedWeight];
  if (v2 > 0.7)
  {
    TSDNormalizePoint();
    if (fabs(v3) >= 0.5)
    {
      return 5;
    }
  }

  [*(a1 + 32) currentBlendedWeight];
  if (v4 > 0.7)
  {
    return 3;
  }

  [*(a1 + 32) currentBlendedWeight];
  v7 = v6;
  [*(a1 + 32) previousBlendedWeight];
  return v7 <= v8;
}

double sub_17A810(uint64_t a1)
{
  TSDPointLength();
  v3 = v2 / *(a1 + 32);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = ((1.0 - v3) * 0.7 + -1.0) * 3.14159265;
  return (cosf(v4) + 1.0) * 0.5;
}

uint64_t sub_17A884(uint64_t a1, double a2, double a3, double a4)
{
  TSDPointLength();
  v7 = v6;
  TSDNormalizePoint();
  v9 = v8;
  [*(a1 + 32) currentBlendedWeight];
  if (v10 > 0.25)
  {
    [*(a1 + 32) currentBlendedWeight];
    v12 = v11;
    [*(a1 + 32) previousBlendedWeight];
    if (v12 > v13 * 0.9)
    {
      return 4;
    }
  }

  v15 = fabs(v9);
  v16 = *(a1 + 40);
  result = 6;
  v17 = v16 != 1 || v15 <= 0.5;
  if (v17 || v7 <= 300.0 || a4 <= 0.0)
  {
    v18 = (v15 > 0.5) & ~v16;
    if (v7 <= 300.0)
    {
      v18 = 0;
    }

    if ((v18 & (a4 < 0.0)) != 0)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

TSDContentLocation *sub_17AB2C(uint64_t a1, double a2, double a3)
{
  *(*(a1 + 32) + 16) = 0;
  if (a2 != 0.0)
  {
    v4 = a3 * 1000.0;
    v5 = *(a1 + 32);
    if (*(v5 + 104) == 1)
    {
      [v5 _getBouncingDecelerationOffset:v5 + 96 forTimeInterval:v5 + 24 lastUpdateOffset:v4 min:*(v5 + 96) max:*(v5 + 40) decelerationFactor:*(v5 + 56) decelerationLnFactor:*(a1 + 40) velocity:*(a1 + 48)];
    }

    else if (*(v5 + 24) != 0.0)
    {
      [v5 _getStandardDecelerationOffset:v5 + 96 forTimeInterval:v5 + 24 min:v4 max:*(v5 + 40) decelerationFactor:*(v5 + 56) decelerationLnFactor:*(a1 + 40) velocity:*(a1 + 48)];
    }
  }

  v6 = [TSDContentLocation contentLocationWithUnscaledPoint:*(*(a1 + 32) + 88) viewScale:*(*(a1 + 32) + 96), *(*(a1 + 32) + 8)];
  TSDInterpolateFloats();
  *(*(a1 + 32) + 8) = v7;
  return v6;
}

BOOL sub_17AC00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24) * *(v1 + 24);
  if (v2 < 0.0001)
  {

    *(*(a1 + 32) + 112) = 0;
  }

  return v2 < 0.0001;
}

uint64_t sub_17E9F0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 1);
  }

  return result;
}

uint64_t sub_17EA0C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 2);
  }

  return result;
}

uint64_t sub_17EA28(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 3);
  }

  return result;
}

id sub_17EA44(uint64_t a1)
{
  [*(a1 + 32) setLastTimeScore:{objc_msgSend(*(a1 + 40), "score")}];
  result = [*(a1 + 32) firstTimeScore];
  if (!result)
  {
    v3 = [*(a1 + 40) score];
    v4 = *(a1 + 32);

    return [v4 setFirstTimeScore:v3];
  }

  return result;
}

id sub_1838D0(uint64_t a1)
{
  [*(a1 + 32) setAnswerState:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setUserHasCheckedAnswer:0];
}

id sub_183C58(uint64_t a1)
{
  [*(a1 + 32) setAnswerState:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setUserHasCheckedAnswer:0];
}

id sub_183E78(uint64_t a1)
{
  [*(a1 + 32) setAnswerState:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setUserHasCheckedAnswer:0];
}

id sub_184870(uint64_t a1)
{
  [*(a1 + 32) setAnswerState:0];
  [*(a1 + 32) setLastTimeScore:{+[NSDecimalNumber zero](NSDecimalNumber, "zero")}];
  v2 = *(a1 + 32);

  return [v2 setUserHasCheckedAnswer:0];
}

id sub_186D38(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 8) & 1) == 0 && *(a1 + 40) == *(result + 6))
  {
    return [result p_autoplayStart];
  }

  return result;
}

id THCanvasCreateWithClass(id result, id *a2, void *a3, void *a4, void *a5)
{
  if (!a2 || !a3)
  {
    return result;
  }

  v6 = a5;
  v7 = a4;
  v9 = result;
  if (!a4)
  {
    v7 = objc_opt_class();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_14:
    v6 = objc_opt_class();
    goto LABEL_5;
  }

  if (!a5)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (([v7 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (([v6 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v10 = *a2;
  if (!*a2)
  {
    v10 = objc_alloc_init(v7);
    [v10 setDelegate:v9];
    v11 = [[THCanvasEditor alloc] initWithInteractiveCanvasController:v10];
    [v10 setCanvasEditor:v11];
  }

  v12 = objc_alloc_init(v6);
  [v10 setLayerHost:v12];
  result = [v12 setInteractiveCanvasController:v10];
  *a2 = v10;
  *a3 = v12;
  return result;
}

id THCanvasAndScrollViewCreateWithClass(id result, id *a2, id *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2 && a3 && a4)
  {
    THCanvasCreateWithClass(result, a2, a3, a5, a6);
    if (!a7)
    {
      a7 = objc_opt_class();
    }

    if (([a7 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v11 = objc_alloc_init(a7);
    [v11 addSubview:{objc_msgSend(*a3, "canvasView")}];
    result = [v11 setDelegate:*a2];
    *a4 = v11;
  }

  return result;
}

id THCanvasAndClippingLayerHostCreateWithClass(id result, id *a2, THWClippingLayerHost **a3, void *a4)
{
  if (a2 && a3)
  {
    v5 = a4;
    v7 = result;
    if (!a4)
    {
      v5 = objc_opt_class();
    }

    if (([v5 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v8 = *a2;
    if (!*a2)
    {
      v8 = objc_alloc_init(v5);
      [v8 setDelegate:v7];
      v9 = [[THCanvasEditor alloc] initWithInteractiveCanvasController:v8];
      [v8 setCanvasEditor:v9];
    }

    v10 = objc_alloc_init(THWClippingLayerHost);
    [v8 setLayerHost:v10];
    result = [(THWClippingLayerHost *)v10 setInteractiveCanvasController:v8];
    *a2 = v8;
    *a3 = v10;
  }

  return result;
}

uint64_t sub_189F34(uint64_t a1)
{
  [*(a1 + 32) handler];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "handler")];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_18ED18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_190E40(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "showRep")];
  v2 = [*(a1 + 32) layout];

  return [v2 hidePlayButton];
}

id sub_190F04(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "showRep")];
  v2 = [*(a1 + 32) layout];

  return [v2 showPlayButton];
}

void sub_198838(id a1)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  qword_5678D8 = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 4uLL, DeviceRGB, 5u);

  CGColorSpaceRelease(DeviceRGB);
}

id sub_19D2FC(uint64_t a1)
{
  if ([*(a1 + 40) pressableHandler])
  {
    v2 = [objc_msgSend(*(a1 + 40) "pressableHandler")];
  }

  else
  {
    v2 = &dword_0 + 1;
  }

  v3 = *(a1 + 32);

  return [v3 setUserInteractionEnabled:v2];
}

const __CFString *THUniqueIdForPath(void *a1)
{
  v2 = objc_alloc_init(NSFileManager);
  v26 = 0;
  if ([v2 fileExistsAtPath:a1 isDirectory:&v26])
  {
    if (v26 == 1)
    {
      v3 = [a1 stringByAppendingPathComponent:@"OPS"];
      if (![v2 fileExistsAtPath:a1 isDirectory:&v26] || (v26 & 1) == 0)
      {
        v3 = a1;
      }

      v20 = v2;
      v4 = [v2 enumeratorAtPath:v3];
      memset(&c, 0, sizeof(c));
      CC_MD5_Init(&c);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v22;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [*(*(&v21 + 1) + 8 * i) UTF8String];
            v10 = strlen(v9);
            CC_MD5_Update(&c, v9, v10);
            v11 = [v4 fileAttributes];
            v12 = [v11 valueForKey:NSFileType];
            if (v12 == NSFileTypeRegular)
            {
              *data = [objc_msgSend(v11 valueForKey:{NSFileSize), "unsignedIntValue"}];
              CC_MD5_Update(&c, data, 4u);
              v13 = [v11 valueForKey:NSFileModificationDate];
              if (v13)
              {
                [v13 timeIntervalSinceReferenceDate];
                *bytes = v14;
                CC_MD5_Update(&c, bytes, 8u);
              }
            }

            else if ([(NSString *)v12 isEqualToString:NSFileTypeDirectory])
            {
              [v4 skipDescendents];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v21 objects:v30 count:16];
        }

        while (v6);
      }

      CC_MD5_Final(data, &c);
      v15 = 0;
      v29 = 0;
      *bytes = 0u;
      v28 = 0u;
      v16 = &bytes[1];
      do
      {
        v17 = data[v15];
        *(v16 - 1) = a0123456789abcd[v17 >> 4];
        *v16 = a0123456789abcd[v17 & 0xF];
        v16 += 2;
        ++v15;
      }

      while (v15 != 16);
      v18 = CFStringCreateWithBytes(0, bytes, 32, 0x600u, 0);
      v2 = v20;
    }

    else
    {
      v18 = [NSString md5StringWithContentsOfFile:a1];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t THIsApplePubAtPath(void *a1)
{
  v2 = +[NSFileManager defaultManager];
  v13 = 0;
  if (![(NSFileManager *)v2 fileExistsAtPath:a1 isDirectory:&v13])
  {
    goto LABEL_9;
  }

  if (v13 == 1)
  {
    v3 = [a1 stringByAppendingPathComponent:@"mimetype"];
    v12 = 0;
    if ([(NSFileManager *)v2 fileExistsAtPath:v3 isDirectory:&v12])
    {
      if ((v12 & 1) == 0)
      {
        v4 = [(NSFileManager *)v2 attributesOfItemAtPath:v3 error:0];
        if (v4)
        {
          if ([(NSDictionary *)v4 fileSize]<= 0x3FF)
          {
            v11 = 0;
            v5 = [NSString stringWithContentsOfFile:v3 usedEncoding:&v11 error:0];
            v6 = [(NSString *)v5 rangeOfString:@"ibooks" options:1];
            v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
            v8 = v6 == 0x7FFFFFFFFFFFFFFFLL && [(NSString *)v5 rangeOfString:@"epub" options:1]!= 0x7FFFFFFFFFFFFFFFLL;
            return v8 | v7;
          }
        }
      }
    }

LABEL_9:
    v8 = 0;
    v7 = 0;
    return v8 | v7;
  }

  v10 = [a1 pathExtension];
  if ([v10 caseInsensitiveCompare:@"ibooks"])
  {
    v7 = 0;
    v8 = [v10 caseInsensitiveCompare:@"epub"] == 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  return v8 | v7;
}

id sub_19EA60(uint64_t a1)
{
  *(*(a1 + 32) + 281) = *(a1 + 40);
  result = [*(a1 + 32) hasBeenRemoved];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 p_updateWantsSpinner];
  }

  return result;
}

uint64_t sub_1A44B0()
{
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  return TSDGPUUpdateDataSetMetalPoint2DAtIndex();
}

void sub_1A4B48(id a1)
{
  v1 = objc_alloc_init(THApplicationDelegate);

  [TSKApplicationDelegate setSurrogateDelegate:v1];
}

id sub_1A4E84(uint64_t a1)
{
  v2 = [objc_msgSend(-[NSArray objectAtIndex:](NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory 1uLL];
  result = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v2];
  if (result)
  {
    v7 = 0;
    result = [+[NSFileManager defaultManager](NSFileManager moveItemAtPath:"moveItemAtPath:toPath:error:" toPath:v2 error:*(a1 + 40), &v7];
    if ((result & 1) == 0)
    {
      v4 = +[TSUAssertionHandler currentHandler];
      v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[THApplicationDelegate p_upgradeContextDirectoryForAsset:newPath:]_block_invoke");
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THApplicationDelegate.m"];
      return [v4 handleFailureInFunction:v5 file:v6 lineNumber:129 description:{@"failed to move old context directory to new path with error: %@", v7}];
    }
  }

  return result;
}

id sub_1A5560(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 5);
    v3 = *(result + 4);
    v4.receiver = *(result + 6);
    v4.super_class = THApplicationDelegate;
    return objc_msgSendSuper2(&v4, "openURL:sourceDocumentRoot:", v3, v2);
  }

  return result;
}

void sub_1A55E0(id a1)
{
  v1 = [+[NSURL supportediBooksURLSchemes](NSURL "supportediBooksURLSchemes")];
  v2 = [NSSet setWithArray:&off_49DAD0];
  [v1 unionSet:{+[NSSet setWithArray:](NSSet, "setWithArray:", &off_49DAE8)}];
  [v1 minusSet:v2];
  qword_567918 = v1;
}

void RandGenerator::RandGenerator(RandGenerator *this)
{
  SP_InitRand(this);
}

{
  SP_InitRand(this);
}

void RandGenerator::randomDouble(RandGenerator *this)
{
    ;
  }
}

void RandGenerator::randWithMinMax(RandGenerator *this, double a2, double a3)
{
  if (a2 <= a3)
  {
    RandGenerator::randomDouble(this);
  }
}

void sub_1AA720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AA740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1ABFFC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) p_cacheLoadExternalContentApproval:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1AC198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE0CC(uint64_t a1)
{
  v2 = [*(a1 + 32) info];
  v3 = [v2 autoplayConfig];
  v4 = [v3 enabled];
  v5 = @"manual.";
  if (v4)
  {
    v5 = @"autoplay.";
  }

  v6 = v5;

  v7 = [*(a1 + 32) info];
  v8 = [v7 bookID];
  v19 = [(__CFString *)v6 stringByAppendingString:v8];

  v9 = objc_alloc_init(NSURLComponents);
  [v9 setScheme:@"x-ibooks-th"];
  [v9 setHost:v19];
  v10 = [*(a1 + 40) path];
  v11 = [*(a1 + 32) info];
  v12 = [v11 bookBundleURL];
  v13 = [v12 path];
  v14 = [v10 im_stringWithPathRelativeTo:v13 allowBacktracking:0];

  if (([v14 hasPrefix:@"/"] & 1) == 0)
  {
    v15 = [@"/" stringByAppendingString:v14];

    v14 = v15;
  }

  [v9 setPath:v14];
  v16 = [v9 URL];
  v17 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  [v17 setCookieAcceptPolicy:0];

  v18 = [*(a1 + 32) webView];
  [v18 loadURL:v16];
}

id sub_1AE460(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 336);
  if (result)
  {
    result = [result removeFromSuperlayer];
    v2 = *(a1 + 32);
  }

  *(v2 + 282) = 1;
  return result;
}

void sub_1AE52C(uint64_t a1)
{
  *(*(a1 + 32) + 283) = 1;
  v2 = [*(a1 + 32) layout];
  [v2 hidePlayButton];

  v3 = *(a1 + 32);
  if (v3[43])
  {
    [v3[43] removeFromSuperlayer];
    v4 = *(a1 + 32);
    v5 = *(v4 + 344);
    *(v4 + 344) = 0;

    v3 = *(a1 + 32);
  }

  v6 = [v3 interactiveCanvasController];
  [v6 layoutInvalidated];
}

id sub_1B1930(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1B19A0;
  v3[3] = &unk_45AE00;
  v3[4] = v1;
  return [v1 p_addDropAnimationWithCompletion:v3];
}

id sub_1B19A0(uint64_t a1)
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [objc_msgSend(*(*(a1 + 32) + 288) "layer")];
  [*(*(a1 + 32) + 296) resumeLayerUpdatesAndLayoutImmediately];
  [*(*(a1 + 32) + 288) teardown];

  *(*(a1 + 32) + 288) = 0;
  *(*(a1 + 32) + 296) = 0;

  return +[CATransaction commit];
}

id sub_1B214C(uint64_t a1)
{
  [*(a1 + 32) beginAnimations:@"scale" context:0];
  [*(a1 + 32) setAnimationDuration:0.15];
  CGAffineTransformMakeScale(&v5, 1.1, 1.1);
  v2 = *(a1 + 40);
  v4 = v5;
  [v2 setAffineTransform:&v4];
  return [*(a1 + 32) commitAnimations];
}

id sub_1B6644(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];

  return [v1 setMasksToBounds:0];
}

uint64_t sub_1B7E4C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1B7F50(uint64_t a1)
{
  [*(a1 + 32) setOpacity:0.0];
  [*(a1 + 32) setHidden:1];
  [*(a1 + 40) p_setupGestureRecognizers];
  v2 = [objc_msgSend(*(a1 + 40) "sceneView")];
  LODWORD(v3) = 1.0;
  [v2 setOpacity:v3];
  v4 = *(a1 + 40);

  return [v4 resumeIdleAnimationIfNecessary];
}

id sub_1B8298(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1B830C;
  v3[3] = &unk_45AE00;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performRead:v3];
}

void sub_1B830C(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneInfo];
  if (v2)
  {
    v2 = [*(a1 + 32) p_loadSceneFromURL:{objc_msgSend(v2, "sourceURL")}];
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1B83B0;
  v3[3] = &unk_45AE58;
  v3[4] = *(a1 + 32);
  v3[5] = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

id sub_1B83B0(uint64_t a1)
{
  [*(a1 + 32) setIsLoading:0];
  [*(a1 + 32) setIsLoaded:1];
  [*(a1 + 32) setScene:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 sceneDidLoadForSceneController:v3];
}

void sub_1B88B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

id sub_1B88F8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 40) = a3;
  result = [*(a1 + 32) shouldStopLoading];
  *a4 = result;
  return result;
}

void sub_1B9440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B9564(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 pageNumberStringForAbsolutePageIndex:a2 presentationType:{objc_msgSend(objc_msgSend(*(a1 + 32), "sectionController"), "presentationType")}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_1BB658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1BB670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  v7 = [objc_msgSend(*(a1 + 32) "documentRoot")];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 delegate];
    v10 = *(a1 + 32);

    return [v9 documentNavigatorBookIsCorrupt:v10];
  }

  else
  {
    result = [objc_msgSend(v8 "documentLinkResolver")];
    *(*(*(a1 + 48) + 8) + 40) = result;
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      result = +[THContentLinkResolver navigableAnchorFromLink:withContentNode:presentationType:](THContentLinkResolver, "navigableAnchorFromLink:withContentNode:presentationType:", a4, a3, [objc_msgSend(*(a1 + 32) "sectionController")]);
      *(*(*(a1 + 48) + 8) + 40) = result;
    }
  }

  return result;
}

id sub_1BBF30(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "sectionController")];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [objc_msgSend(*(a1 + 32) "sectionController")];
  v11 = [*(a1 + 32) delegate];
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);

  return [v11 documentNavigator:v12 scrollToAbsolutePageIndex:v10 specificUnscaledCanvasRect:0 animated:v13 willPulse:{v3, v5, v7, v9}];
}

id sub_1BBFCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 drawable];
  if (result == *(a1 + 32))
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
    *a5 = 1;
  }

  return result;
}

id sub_1BC024(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) absolutePageIndex];
  v5 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);

  return [v2 documentNavigator:v3 scrollToAbsolutePageIndex:v4 specificUnscaledCanvasRect:1 animated:v5 willPulse:{v6, v7, v8, v9}];
}

void sub_1BC4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1BC4EC(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) delegate];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[7];
  v6 = a1[8];

  return [v2 documentNavigator:v3 editAnnotation:v4 noteSelectionRange:{v5, v6}];
}

void sub_1BCA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1BCA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  [v7 drawable];
  result = TSUDynamicCast();
  if (result)
  {
    result = [result widgetInfo];
    if (result == *(a1 + 32))
    {
      result = [v7 findCharIndex];
      v9 = *(*(a1 + 40) + 8);
      *(v9 + 32) = result;
      *(v9 + 40) = 1;
      *a5 = 1;
    }
  }

  return result;
}

id sub_1BD290(uint64_t a1)
{
  [*(a1 + 32) setIsScrollingAcrossSections:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setVisibleAbsolutePhysicalPageIndex:v3 animated:0];
}

id sub_1BD3B4(uint64_t a1)
{
  [*(a1 + 32) setIsScrollingAcrossSections:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setVisibleAbsolutePhysicalPageIndex:v3 animated:0];
}

double SP_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 20;
  return result;
}

uint64_t SP_InitSeed(uint64_t a1, const void *a2, CC_LONG a3)
{
  if (a3 >= 0x14)
  {
    v4 = 20;
  }

  else
  {
    v4 = a3;
  }

  v5 = a1 + 96;
  if (a3)
  {
    memmove((a1 + 96), a2, v4);
    if (a3 <= 0x13)
    {
      bzero((v5 + v4), (20 - v4));
    }

    CC_SHA1_Init(a1);
    CC_SHA1_Update(a1, a2, a3);
  }

  else
  {
    bzero((v5 + v4), (20 - v4));
    CC_SHA1_Init(a1);
  }

  result = CC_SHA1_Final((a1 + 116), a1);
  *(a1 + 136) = 0;
  return result;
}

uint64_t SP_InitRand(uint64_t a1)
{
  v2 = open("/dev/random", 0);
  read(v2, v4, 0x14uLL);
  close(v2);
  return SP_InitSeed(a1, v4, 0x14u);
}

CC_SHA1_CTX *SP_Random(CC_SHA1_CTX *c, char *__dst, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = c;
    p_Nl = &c[1].Nl;
    for (i = c[1].data[3]; ; i = 0)
    {
      if (i != 20)
      {
        if (v3 >= 20 - i)
        {
          v8 = 20 - i;
        }

        else
        {
          v8 = v3;
        }

        c = memmove(__dst, p_Nl + i, v8);
        v5[1].data[3] += v8;
        v3 -= v8;
        if (!v3)
        {
          return c;
        }

        __dst += v8;
      }

      CC_SHA1_Init(v5);
      CC_SHA1_Update(v5, p_Nl, 0x14u);
      CC_SHA1_Update(v5, &v5[1], 0x14u);
      CC_SHA1_Final(p_Nl, v5);
      v5[1].data[3] = 0;
    }
  }

  return c;
}

uint64_t SP_RandInt64(CC_SHA1_CTX *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a3 - a2;
  if (a3 != a2)
  {
    __dst = 0;
    SP_Random(a1, &__dst, 8u);
    v3 += __dst % (v4 + 1);
  }

  return v3;
}

uint64_t SP_RandInt32(CC_SHA1_CTX *a1)
{
  __dst = 0;
  SP_Random(a1, &__dst, 4u);
  return __dst;
}

uint64_t SP_RandSize(CC_SHA1_CTX *a1)
{
  __dst = 0;
  SP_Random(a1, &__dst, 8u);
  return __dst;
}

double SP_RandDouble(CC_SHA1_CTX *a1)
{
  __dst = 0;
  SP_Random(a1, &__dst, 8u);
  return __dst * 5.42101086e-20;
}

id sub_1BF21C(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "documentRoot")];
  v3 = *(a1 + 40);

  return [v2 addStyle:v3];
}

id sub_1BF25C(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "documentRoot")];
  v3 = *(a1 + 40);

  return [v2 addStyle:v3];
}

uint64_t _THSearchModelForString(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = [[TSKDocumentModelEnumerator alloc] initWithRootModelObject:a1 filter:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = *v25;
    v15 = v19;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v24 + 1) + 8 * v9) != a1 || (a4 & 1) == 0)
        {
          v10 = TSUProtocolCast();
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            v20 = 0;
            v21 = &v20;
            v22 = 0x2020000000;
            v23 = 0;
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v19[0] = sub_1BF7B8;
            v19[1] = &unk_45EAF0;
            v19[2] = &v20;
            v11 = [v10 searchForString:a2 options:a3 onHit:{v18, v15}];
            if (v11)
            {
              while ((v21[3] & 1) == 0 && ([v11 isComplete] & 1) == 0)
              {
                [v10 continueSearch:v11];
              }
            }

            v12 = *(v21 + 24);
            _Block_object_dispose(&v20, 8);
            if (v12)
            {
              v13 = 1;
              goto LABEL_19;
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_19:

  return v13;
}

void sub_1BF794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id THSearchModelsForString(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v11;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(a1);
        }

        if (_THSearchModelForString(*(*(&v10 + 1) + 8 * v9), a2, a3, 0))
        {
          return &dword_0 + 1;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id sub_1BFBD8(uint64_t a1, void *a2)
{
  [a2 setValue:*(a1 + 32) forProperty:16];
  v4 = *(a1 + 40);

  return [a2 setValue:v4 forProperty:18];
}

id sub_1BFC28(uint64_t a1, void *a2)
{
  [a2 setValue:*(a1 + 32) forProperty:16];
  v4 = *(a1 + 40);

  return [a2 setValue:v4 forProperty:18];
}

id sub_1BFE3C(uint64_t a1, void *a2)
{
  [a2 setValue:*(a1 + 32) forProperty:16];
  [a2 setCGFloatValue:17 forProperty:*(a1 + 48)];
  v4 = *(a1 + 40);

  return [a2 setValue:v4 forProperty:18];
}

id sub_1BFE9C(uint64_t a1, void *a2)
{
  [a2 setValue:*(a1 + 32) forProperty:16];
  [a2 setCGFloatValue:17 forProperty:*(a1 + 48)];
  v4 = *(a1 + 40);

  return [a2 setValue:v4 forProperty:18];
}

id sub_1C00F4(uint64_t a1, void *a2)
{
  [a2 setValue:*(a1 + 32) forProperty:16];
  [a2 setCGFloatValue:17 forProperty:*(a1 + 56)];
  result = [a2 setValue:*(a1 + 40) forProperty:18];
  if (*(a1 + 64) == 1)
  {
    v5 = *(a1 + 48);

    return [v5 p_removeBackgroundFillFromStyle:a2];
  }

  return result;
}

id sub_1C0178(uint64_t a1, void *a2)
{
  [a2 setValue:*(a1 + 32) forProperty:16];
  [a2 setCGFloatValue:17 forProperty:*(a1 + 56)];
  [a2 setValue:*(a1 + 40) forProperty:18];
  result = [a2 setIntValue:*(a1 + 64) forProperty:86];
  if (*(a1 + 68) == 1)
  {
    result = [*(a1 + 48) p_removeBackgroundFillFromStyle:a2];
  }

  if (*(a1 + 69) == 1)
  {
    [a2 setFloatValue:81 forProperty:0.0];
    [a2 setFloatValue:80 forProperty:0.0];
    [a2 setFloatValue:87 forProperty:0.0];

    return [a2 setFloatValue:88 forProperty:0.0];
  }

  return result;
}

void sub_1C05BC(id a1, TSWPListStyle *a2)
{
  if ([(TSWPListStyle *)a2 definesProperty:180])
  {
    v3 = [(TSWPListStyle *)a2 valueForProperty:180];
    v4 = [(TSWPListStyle *)a2 valueForProperty:183];
    v5 = [NSNumber numberWithInt:2];
    v6 = +[TSWPListStyle defaultLabelString];
    v12 = +[TSWPListStyle defaultLabelIndents];
    v7 = [NSMutableArray arrayWithArray:v3];
    v8 = [NSMutableArray arrayWithArray:v4];
    v9 = [(TSWPListStyle *)a2 valueForProperty:177];
    if (![(NSMutableArray *)v8 count])
    {
      while (1)
      {
        v10 = [(NSMutableArray *)v8 count];
        if (v10 >= [(NSMutableArray *)v7 count])
        {
          break;
        }

        [(NSMutableArray *)v8 addObject:v6];
      }
    }

    if (![(NSMutableArray *)v9 count])
    {
      v9 = [NSMutableArray arrayWithArray:v12];
    }

    if ([v3 count])
    {
      v11 = 0;
      do
      {
        objc_opt_class();
        [v3 objectAtIndex:v11];
        if ([TSUDynamicCast() intValue] == 3)
        {
          [(NSMutableArray *)v7 replaceObjectAtIndex:v11 withObject:v5];
          if (v11 >= [(NSMutableArray *)v8 count])
          {
            [(NSMutableArray *)v8 addObject:v6];
          }

          else
          {
            [(NSMutableArray *)v8 replaceObjectAtIndex:v11 withObject:v6];
          }
        }

        ++v11;
      }

      while (v11 < [v3 count]);
    }

    [(TSWPListStyle *)a2 setValue:v9 forProperty:177];
    [(TSWPListStyle *)a2 setValue:v7 forProperty:180];

    [(TSWPListStyle *)a2 setValue:v8 forProperty:183];
  }
}

void sub_1C0894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_1C0978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

void sub_1C0A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(va);
  _Unwind_Resume(a1);
}

int64_t sub_1C103C(id a1, THAnnotation *a2, THAnnotation *a3)
{
  v4 = [(THAnnotation *)a2 annotationStorageRange];
  v5 = [(THAnnotation *)a3 annotationStorageRange];
  v6 = 1;
  if (v4 <= v5)
  {
    v6 = -1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

int64_t sub_1C1080(id a1, THAnnotation *a2, THAnnotation *a3)
{
  v4 = [(THAnnotation *)a2 annotationAbsolutePhysicalPageIndex];
  v5 = [(THAnnotation *)a3 annotationAbsolutePhysicalPageIndex];
  v6 = 1;
  if (v4 <= v5)
  {
    v6 = -1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_1C187C(NSRange *a1, void *a2)
{
  v5.location = [a2 annotationStorageRange];
  v5.length = v3;
  return NSIntersectionRange(a1[32], v5).length != 0;
}

id sub_1C1960(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = a1;
  v3 = [*(*(a1 + 32) + 16) objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v2 setObject:*(*(&v32 + 1) + 8 * j) forKey:{objc_msgSend(*(*(&v32 + 1) + 8 * j), "annotationUuid")}];
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v42 count:16];
          }

          while (v10);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v5);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = *(*(v23 + 32) + 80);
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (k = 0; k != v15; k = k + 1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v2 setObject:*(*(&v28 + 1) + 8 * k) forKey:{objc_msgSend(*(*(&v28 + 1) + 8 * k), "annotationUuid")}];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v41 count:16];
    }

    while (v15);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = *(*(v23 + 32) + 88);
  result = [v18 countByEnumeratingWithState:&v24 objects:v40 count:16];
  if (result)
  {
    v20 = result;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v2 setObject:*(*(&v24 + 1) + 8 * v22) forKey:{objc_msgSend(*(*(&v24 + 1) + 8 * v22), "annotationUuid")}];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      result = [v18 countByEnumeratingWithState:&v24 objects:v40 count:16];
      v20 = result;
    }

    while (result);
  }

  *(*(v23 + 32) + 24) = v2;
  return result;
}

int64_t sub_1C1E5C(id a1, THAnnotation *a2, THAnnotation *a3)
{
  v4 = [(THAnnotation *)a2 annotationAbsolutePhysicalPageIndex];
  v5 = [(THAnnotation *)a3 annotationAbsolutePhysicalPageIndex];
  v6 = 1;
  if (v4 <= v5)
  {
    v6 = -1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

int64_t sub_1C2170(id a1, THAnnotation *a2, THAnnotation *a3)
{
  v4 = [(THAnnotation *)a2 annotationAbsolutePhysicalPageIndex];
  v5 = [(THAnnotation *)a3 annotationAbsolutePhysicalPageIndex];
  v6 = 1;
  if (v4 <= v5)
  {
    v6 = -1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

int64_t sub_1C227C(id a1, THAnnotation *a2, THAnnotation *a3)
{
  v4 = [(THAnnotation *)a2 annotationStorageRange];
  v5 = [(THAnnotation *)a3 annotationStorageRange];
  v6 = 1;
  if (v4 <= v5)
  {
    v6 = -1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

int64_t sub_1C2434(id a1, THAnnotation *a2, THAnnotation *a3)
{
  v4 = [(THAnnotation *)a2 annotationStorageRange];
  v5 = [(THAnnotation *)a3 annotationStorageRange];
  v6 = 1;
  if (v4 <= v5)
  {
    v6 = -1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id sub_1C2988(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return &dword_0 + 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = [a1 annotationStorageRange];
      v7 = v6;
      v9 = [a2 annotationStorageRange];
      result = 0;
      if (v5 == v9 && v7 == v8)
      {
        v10 = [a1 annotationStyle];
        if (v10 == [a2 annotationStyle])
        {
          v11 = [a1 annotationNote];
          v12 = [a2 annotationNote];
          if (v11 == v12)
          {
            return &dword_0 + 1;
          }

          result = [v11 isEqualToString:v12];
          if (result)
          {
            return &dword_0 + 1;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_1C303C(NSRange *a1, void *a2)
{
  v12.location = [a2 annotationStorageRange];
  location = v12.location;
  length = v12.length;
  v5 = NSIntersectionRange(v12, a1[2]);
  v6 = a1[2].location;
  v7 = a1[2].length;
  v9 = location != v6 || length != v7;
  return v5.location == v6 && v5.length == v7 && v9;
}

BOOL sub_1C31B8(uint64_t a1, void *a2)
{
  v7.location = [a2 annotationStorageRange];
  v4 = NSIntersectionRange(v7, *(a1 + 32));
  return v4.location == *(a1 + 32) && v4.length == *(a1 + 40) && [a2 annotationStyle] == *(a1 + 48);
}

void sub_1C32F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1C330C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  location = v3[2].location;
  result = [a2 annotationStorageRange];
  v7.location = result;
  v7.length = v6;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = NSUnionRange(v3[2], v7);
    result = v8.location;
    v7 = v8;
  }

  *(*(*(a1 + 32) + 8) + 32) = v7;
  return result;
}

int64_t sub_1C34A0(id a1, THAnnotation *a2, THAnnotation *a3)
{
  v4 = [(THAnnotation *)a2 annotationStorageRange];
  v5 = [(THAnnotation *)a3 annotationStorageRange];
  v6 = 1;
  if (v4 <= v5)
  {
    v6 = -1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

int64_t sub_1C34F4(id a1, THAnnotation *a2, THAnnotation *a3)
{
  if ([(THAnnotation *)a2 annotationIsUnderline]&& ![(THAnnotation *)a3 annotationIsUnderline])
  {
    return 1;
  }

  if (([(THAnnotation *)a2 annotationIsUnderline]& 1) == 0 && ([(THAnnotation *)a3 annotationIsUnderline]& 1) != 0)
  {
    return -1;
  }

  v6 = [(THAnnotation *)a2 annotationCreationDate];
  v7 = [(THAnnotation *)a3 annotationCreationDate];

  return [v6 compare:v7];
}

int64_t sub_1C35A0(id a1, THAnnotation *a2, THAnnotation *a3)
{
  v5 = [(THAnnotation *)a2 annotationAbsolutePhysicalPageIndex];
  v6 = [(THAnnotation *)a3 annotationAbsolutePhysicalPageIndex];
  if (v5 == v6)
  {
    result = [-[THAnnotation annotationStorageUID](a2 "annotationStorageUID")];
    if (result != 1)
    {
      if (result)
      {
        return -1;
      }

      else
      {
        v8 = [(THAnnotation *)a2 annotationStorageRange];
        v10 = v9;
        v11 = [(THAnnotation *)a3 annotationStorageRange];
        v13 = 1;
        if (v8 <= v11)
        {
          v13 = -1;
        }

        v14 = 1;
        if (v10 <= v12)
        {
          v14 = -1;
        }

        if (v10 == v12)
        {
          v14 = 0;
        }

        if (v8 == v11)
        {
          return v14;
        }

        else
        {
          return v13;
        }
      }
    }
  }

  else if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }

  return result;
}

NSNumber *sub_1C3F00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 32) bookDescription];
  v6 = [*(a1 + 32) bookMetadata];
  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyAssetId])
  {
    v7 = [objc_msgSend(*(a1 + 32) "bookDescription")];

    return [v7 assetID];
  }

  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyStoreId])
  {
    v9 = [*(a1 + 32) bookDescription];

    return [v9 storeID];
  }

  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyStoreUrl])
  {
    v10 = [*(a1 + 32) bookDescription];

    return [v10 storeURL];
  }

  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyAssetCover])
  {
    v11 = [objc_msgSend(objc_msgSend(*(a1 + 32) "bookDescription")];
    v12 = [-[AEPluginRegistry pluginForURL:](+[AEPluginRegistry sharedInstance](AEPluginRegistry "sharedInstance")];

    return [v12 helperCoverImage];
  }

  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyTitle])
  {
    result = [v6 objectForKey:@"itemName"];
    if (!result)
    {

      return [v5 bookTitle];
    }

    return result;
  }

  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyAuthor])
  {
    result = [v6 objectForKey:@"artistName"];
    if (!result)
    {

      return [v5 bookAuthor];
    }

    return result;
  }

  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyVersion])
  {

    return [v5 bookVersionString];
  }

  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyPublisherLocation])
  {
    return 0;
  }

  if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyPublisherName])
  {

    return [v6 objectForKey:@"publisher"];
  }

  else if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyPublisherYear])
  {
    v13 = *(a1 + 32);

    return [v13 yearFromReleaseDate];
  }

  else if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyIsContentProtected])
  {
    v14 = [objc_msgSend(v5 "drmContext")];

    return [NSNumber numberWithBool:v14];
  }

  else if ([a3 isEqualToString:AEAssetActivityItemProviderPropertyAssetType])
  {
    v15 = [v5 asset];

    return [v15 assetType];
  }

  else
  {
    if (![a3 isEqualToString:AEAssetActivityItemProviderPropertyBookDescription])
    {
      return 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"description"];
    if (![v16 length])
    {
      v16 = [v6 objectForKeyedSubscript:@"bookDescription"];
    }

    if (![v16 length])
    {
      v16 = [v6 objectForKeyedSubscript:@"longDescription"];
    }

    result = [v16 length];
    if (result)
    {

      return [v16 im_stringByStrippingHTML];
    }
  }

  return result;
}

void sub_1C54F4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C551C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 88 * *(a1 + 48));
  v27 = *(v3 + 10);
  v24 = v3[2];
  v25 = v3[3];
  v26 = v3[4];
  v22 = *v3;
  v23 = v3[1];
  v4 = *(a1 + 160);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 != 1)
  {
    [*(a1 + 32) p_texCoordFromX:v6 y:v5];
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    ++*(*(*(a1 + 40) + 8) + 24);
    CGRectGetMinX(*(a1 + 112));
    CGRectGetMaxX(*(a1 + 112));
    TSUClamp();
    [*(a1 + 32) p_texCoordFromX:v22 y:{v23, v24, v25, v26, v27}];
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    ++*(*(*(a1 + 40) + 8) + 24);
    v14 = *(a1 + 64);
    CGRectGetMinY(*(a1 + 112));
    CGRectGetMaxY(*(a1 + 112));
    TSUClamp();
    [*(a1 + 32) p_texCoordFromX:v14 y:{v15, v22, v23, v24, v25, v26, v27}];
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    ++*(*(*(a1 + 40) + 8) + 24);
    CGRectGetMinX(*(a1 + 112));
    CGRectGetMaxX(*(a1 + 112));
    TSUClamp();
    [*(a1 + 32) p_texCoordFromX:v22 y:{v23, v24, v25, v26, v27}];
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    goto LABEL_7;
  }

  do
  {
    v7 = v4;
    [*(a1 + 32) p_texCoordFromX:v6 y:{v5, v16, v17, v18, v19, v20, v21}];
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    LOBYTE(v4) = 0;
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  while ((v7 & 1) != 0);
  CGRectGetMinX(*(a1 + 112));
  CGRectGetMaxX(*(a1 + 112));
  TSUClamp();
  [*(a1 + 32) p_texCoordFromX:v22 y:{v23, v24, v25, v26, v27}];
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  ++*(*(*(a1 + 40) + 8) + 24);
  v8 = *(a1 + 64);
  CGRectGetMinY(*(a1 + 112));
  CGRectGetMaxY(*(a1 + 112));
  TSUClamp();
  [*(a1 + 32) p_texCoordFromX:v8 y:{v9, v22, v23, v24, v25, v26, v27}];
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  result = TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 144) > 0.0 || *(a1 + 152) > 0.0)
  {
    v11 = *(a1 + 64);
    v12 = v11 + CGRectGetWidth(*(a1 + 112)) * *(a1 + 96);
    CGRectGetMinY(*(a1 + 112));
    CGRectGetMaxY(*(a1 + 112));
    TSUClamp();
    [*(a1 + 32) p_texCoordFromX:v12 y:{v13, v22, v23, v24, v25, v26, v27}];
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    ++*(*(*(a1 + 40) + 8) + 24);
    CGRectGetHeight(*(a1 + 112));
    CGRectGetMinX(*(a1 + 112));
    CGRectGetMaxX(*(a1 + 112));
    TSUClamp();
    [*(a1 + 32) p_texCoordFromX:v22 y:{v23, v24, v25, v26, v27}];
    TSDGPUUpdateDataSetMetalPoint2DAtIndex();
LABEL_7:
    result = TSDGPUUpdateDataSetMetalPoint2DAtIndex();
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

uint64_t sub_1C5D00(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 88 * *(a1 + 64));
  v36 = *(v3 + 10);
  v33 = v3[2];
  v34 = v3[3];
  v35 = v3[4];
  v31 = *v3;
  v32 = v3[1];
  if (*(a1 + 216) == 1 && *(a1 + 144) > 0.0)
  {
    CGRectGetHeight(*(a1 + 152));
  }

  CGRectGetMinX(*(a1 + 152));
  CGRectGetMaxX(*(a1 + 152));
  TSUClamp();
  v5 = v4;
  CGRectGetMinY(*(a1 + 152));
  CGRectGetMaxY(*(a1 + 152));
  TSUClamp();
  v7 = v6;
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  [*(a1 + 32) p_texCoordFromX:v5 y:{v7, v31, v32, v33, v34, v35, v36}];
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalFloatAtIndex();
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 216) == 1 && *(a1 + 104) > 0.0)
  {
    CGRectGetWidth(*(a1 + 152));
  }

  CGRectGetMinX(*(a1 + 152));
  CGRectGetMaxX(*(a1 + 152));
  TSUClamp();
  v9 = v8;
  CGRectGetMinY(*(a1 + 152));
  CGRectGetMaxY(*(a1 + 152));
  TSUClamp();
  v11 = v10;
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  [*(a1 + 32) p_texCoordFromX:v9 y:{v11, v31, v32, v33, v34, v35, v36}];
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalFloatAtIndex();
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 216) == 1 && *(a1 + 144) > 0.0)
  {
    CGRectGetHeight(*(a1 + 152));
  }

  CGRectGetMinX(*(a1 + 152));
  CGRectGetMaxX(*(a1 + 152));
  TSUClamp();
  v13 = v12;
  CGRectGetMinY(*(a1 + 152));
  CGRectGetMaxY(*(a1 + 152));
  TSUClamp();
  v15 = v14;
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  [*(a1 + 32) p_texCoordFromX:v13 y:{v15, v31, v32, v33, v34, v35, v36}];
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalFloatAtIndex();
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 216) == 1 && *(a1 + 104) > 0.0)
  {
    CGRectGetWidth(*(a1 + 152));
  }

  CGRectGetMinX(*(a1 + 152));
  CGRectGetMaxX(*(a1 + 152));
  TSUClamp();
  v17 = v16;
  CGRectGetMinY(*(a1 + 152));
  CGRectGetMaxY(*(a1 + 152));
  TSUClamp();
  v19 = v18;
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  [*(a1 + 32) p_texCoordFromX:v17 y:{v19, v31, v32, v33, v34, v35, v36}];
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  result = TSDGPUUpdateDataSetMetalFloatAtIndex();
  ++*(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 216) == 1)
  {
    v21 = *(a1 + 200);
    if (v21 > 0.0 && *(a1 + 104) == 0.0)
    {
      v22 = *(a1 + 88);
      v23 = v22 + CGRectGetWidth(*(a1 + 152)) * *(a1 + 128);
      v24 = *(a1 + 96) + *(a1 + 208) * *(a1 + 136);
      MaxY = CGRectGetMaxY(*(a1 + 152));
      MinY = CGRectGetMinY(*(a1 + 152));
      if (MinY < v24)
      {
        MinY = v24;
      }

      if (MaxY >= MinY)
      {
        MaxY = MinY;
      }

      TSDGPUUpdateDataSetMetalPoint2DAtIndex();
      [*(a1 + 32) p_texCoordFromX:v23 y:{MaxY, v31, v32, v33, v34, v35, v36}];
      TSDGPUUpdateDataSetMetalPoint2DAtIndex();
      TSDGPUUpdateDataSetMetalFloatAtIndex();
      ++*(*(*(a1 + 40) + 8) + 24);
      v27 = *(a1 + 96);
      v28 = v27 + CGRectGetHeight(*(a1 + 152)) * *(a1 + 136);
      CGRectGetMinX(*(a1 + 152));
      CGRectGetMaxX(*(a1 + 152));
      TSUClamp();
      v30 = v29;
      TSDGPUUpdateDataSetMetalPoint2DAtIndex();
      [*(a1 + 32) p_texCoordFromX:v30 y:{v28, v31, v32, v33, v34, v35, v36}];
      TSDGPUUpdateDataSetMetalPoint2DAtIndex();
      result = TSDGPUUpdateDataSetMetalFloatAtIndex();
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  return result;
}

TSUColor *THNoteCardBackgroundColor(int a1)
{
  if (a1)
  {
    return [TSUColor colorWithWhite:0.31372549 alpha:1.0];
  }

  else
  {
    return +[TSUColor whiteColor];
  }
}

TSUColor *THNoteDarkenBackgroundColor(int a1)
{
  v1 = 0.945098039;
  if (a1)
  {
    v1 = 0.254901961;
  }

  return [TSUColor colorWithWhite:v1 alpha:1.0];
}

TSUColor *THNoteDarkerBackgroundColor(int a1)
{
  v1 = 0.85;
  if (a1)
  {
    v1 = 0.196078431;
  }

  return [TSUColor colorWithWhite:v1 alpha:1.0];
}

TSUColor *THNoteCardBorderColor(int a1, int a2)
{
  if (a1)
  {
    return sub_1CA010(1, &stru_45EF00);
  }

  v3 = 0.05;
  if (!a2)
  {
    v3 = 0.012;
  }

  return [TSUColor colorWithWhite:0.0 alpha:v3];
}

TSUColor *sub_1CA010(int a1, uint64_t a2)
{
  v4 = +[UITraitCollection _currentTraitCollection];
  if (a1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [UITraitCollection _setCurrentTraitCollection:[UITraitCollection traitCollectionWithUserInterfaceStyle:v5]];
  v6 = [TSUColor colorWithUIColor:(*(a2 + 16))(a2)];
  [UITraitCollection _setCurrentTraitCollection:v4];
  return v6;
}

double sub_1CA184()
{
  kTHNoteCardOffset = CGSizeZero;
  kTHNoteCardBodyLeftMargin = 0x404D800000000000;
  kTHNoteCardBodyWidth = 0x4088580000000000;
  result = 0.0;
  kTHNoteCardShadowOffset = xmmword_34AF30;
  kTHNoteCardShadowOffsetRetina = xmmword_34AF30;
  return result;
}

id sub_1CBF8C(uint64_t a1)
{
  *(*(a1 + 32) + 161) = 0;
  v2 = *(a1 + 48);
  result = [objc_msgSend(*(a1 + 32) "studyOptions")];
  if (v2 != result)
  {
    [*(a1 + 32) studyOptionsWillChangeShuffle:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 studyOptionsDidChangeShuffle:v5];
  }

  return result;
}

void sub_1CC40C(uint64_t a1, void *a2)
{
  if (([a2 annotationIsOrphan] & 1) == 0)
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 32) bodyStorageForPresentationType:{+[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", objc_msgSend(*(a1 + 32), "context"))}];
    }

    v4 = [*(*(a1 + 40) + 8) storageForAnnotation:a2];
    if (v4)
    {
      v5 = v4;
      v7 = objc_alloc_init(THAnnotationNoteCardInfo);
      [(THAnnotationNoteCardInfo *)v7 setStorage:v5];
      [(THAnnotationNoteCardInfo *)v7 setAnnotation:a2];
      [(THAnnotationNoteCardInfo *)v7 setTitle:*(a1 + 48)];
      -[THAnnotationNoteCardInfo setPageIndex:](v7, "setPageIndex:", [*(*(a1 + 40) + 8) absolutePageIndexForAnnotation:a2]);
      if ([(THAnnotationNoteCardInfo *)v7 storage]== *(*(*(a1 + 64) + 8) + 40))
      {
        v6 = [a2 annotationStorageRange];
      }

      else
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(THAnnotationNoteCardInfo *)v7 setBodyPosition:v6];
      -[THAnnotationNoteCardInfo setPageNumberString:](v7, "setPageNumberString:", [*(*(a1 + 40) + 8) pageNumberStringForAnnotation:a2]);
      [*(a1 + 56) addObject:v7];
    }
  }
}

int64_t sub_1CC6C0(id a1, THNoteCardInfo *a2, THNoteCardInfo *a3)
{
  v5 = [(THNoteCardInfo *)a2 noteCardTypeSortOrder];
  v6 = [(THNoteCardInfo *)a3 noteCardTypeSortOrder];
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return -1;
  }

  return [(THNoteCardInfo *)a2 compareToNoteCard:a3];
}

id sub_1CDB74(uint64_t a1)
{
  [*(a1 + 32) p_handleDelayedCardUpdate];
  v2 = *(a1 + 32);

  return [v2 p_resetFlipOnBelowTopCard];
}

uint64_t sub_1CEA90(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = [*(*(a1 + 32) + 32) indexOfObject:{objc_msgSend(v2, "noteCardInfo")}];
  v5 = [*(*(a1 + 32) + 32) indexOfObject:{objc_msgSend(v3, "noteCardInfo")}];
  if (v4 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void sub_1CEF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1CEFDC(uint64_t result)
{
  if (++*(*(*(result + 48) + 8) + 24) == *(*(*(result + 56) + 8) + 24))
  {
    v1 = result;
    [*(result + 32) p_recreateNoteCardLayers];
    result = *(v1 + 40);
    if (result)
    {
      v2 = *(result + 16);

      return v2();
    }
  }

  return result;
}

id sub_1CF64C(uint64_t a1, void *a2)
{
  result = [a2 flashScrollIndicators];
  *(*(a1 + 32) + 88) = a2;
  return result;
}

id sub_1D0BCC(uint64_t a1, CGContextRef c)
{
  CGContextScaleCTM(c, *(*(a1 + 32) + 80), *(*(a1 + 32) + 80));
  [*(a1 + 40) drawInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  CGContextSetShadowWithColor(c, *(*(a1 + 32) + 56), *(*(a1 + 32) + 72), [*(*(a1 + 32) + 48) CGColor]);
  [*(*(a1 + 32) + 24) tsu_boundingSizeWithFont:*(*(a1 + 32) + 32)];
  TSDRectWithSize();
  TSDCenterRectOverRect();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(*(a1 + 32) + 32) pointSize];
  v13 = v7 + (v11 - v12) * -0.5;
  v14 = +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", [*(*(a1 + 32) + 32) platformFont], NSFontAttributeName, objc_msgSend(*(*(a1 + 32) + 40), "platformColor"), NSForegroundColorAttributeName, 0);
  v15 = *(*(a1 + 32) + 24);

  return [v15 drawInRect:v14 withAttributes:{v5, v13, v9, v11}];
}

void sub_1D110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1D1148(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  result = [objc_msgSend(v2 "stem")];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = v2;
  }

  return result;
}

id sub_1D11A0(uint64_t a1)
{
  objc_opt_class();
  v2 = [TSUDynamicCast() inflection];
  v3 = *(a1 + 32);

  return [v2 isEqualToString:v3];
}

void sub_1D1824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1D1858(uint64_t a1, void *a2)
{
  result = [a2 objectForKey:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id sub_1D1C0C(uint64_t a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (![a2 objectForKey:v9])
        {
          [a2 setObject:objc_msgSend(*(a1 + 32) forKey:{"objectForKey:", v9), v9}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_1D1EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1D1ED0(uint64_t a1, void *a2)
{
  result = [a2 mutableCopy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t sub_1D2500(uint64_t result)
{
  v1 = result;
  v2 = *(result + 64);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      if (v2 >= 1)
      {
        for (j = 0; j < v2; ++j)
        {
          TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          if (*(v1 + 104) == 1)
          {
            TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          }

          TSDGPUUpdateDataSetMetalPoint2DAtIndex();
          result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          v2 = *(v1 + 64);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D2A3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4 >= 1)
  {
    v5 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    do
    {
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = (v5 + v5) / (v4 - 1) + -1.0;
        v17 = v12;
        do
        {
          if (*(v3 + 177))
          {
            v13 = -((v11 + v11) / (v4 - 1) + -1.0);
          }

          else
          {
            v13 = (v11 + v11) / (v4 - 1) + -1.0;
          }

          v14 = *(v3 + 64);
          v15 = *(v3 + 72);
          if (*(v3 + 176) == 1)
          {
            TSDGPUUpdateDataMetalPoint3DAtIndex();
          }

          v16 = v12 * v15 + v13 * v14 - *(v3 + 80);
          if (v16 >= 0.0 && v16 < *(v3 + 88))
          {
            __sincos_stret(v16 * *(v3 + 96));
          }

          TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          if (*(v3 + 176) == 1 && *(v3 + 178) == 1)
          {
            result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          }

          ++v11;
          v4 = *(v3 + 56);
          v12 = v17;
        }

        while (v11 < v4);
      }

      ++v5;
    }

    while (v5 < v4);
  }

  *(a2 + 88 * *(v3 + 168) + 56) = 0;
  return result;
}

void sub_1D5480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    objc_end_catch();
    JUMPOUT(0x1D5454);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D55C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    objc_end_catch();
    JUMPOUT(0x1D5598);
  }

  _Unwind_Resume(exception_object);
}

id sub_1D6D34(uint64_t a1)
{
  v2 = [*(a1 + 32) transportUI];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 transportUI];

    return [v4 mediaWasPressed];
  }

  else
  {

    return [v3 togglePlayPause];
  }
}

id sub_1D7120(uint64_t a1)
{
  v1 = [*(a1 + 32) audioRep];

  return [v1 play];
}

id sub_1D71E0(uint64_t a1)
{
  v1 = [*(a1 + 32) audioRep];

  return [v1 pause];
}

id sub_1D7318(uint64_t a1)
{
  v1 = [*(a1 + 32) audioRep];

  return [v1 stop];
}

id sub_1D7344(uint64_t a1)
{
  v1 = [*(a1 + 32) movieRep];

  return [v1 stop];
}

id sub_1D73F0(uint64_t a1)
{
  if ([*(a1 + 32) audioRep])
  {
    v2 = [*(a1 + 32) movieIsPlaying];
    v3 = *(a1 + 32);
    if (v2)
    {
      [v3 pause];
    }

    else
    {
      [v3 play];
    }
  }

  result = [*(a1 + 32) movieRep];
  if (result)
  {
    v5 = result;
    if ([result isPlaying])
    {

      return [v5 stop];
    }

    else
    {

      return [v5 play];
    }
  }

  return result;
}

void sub_1DB910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1DB928(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 valueForKey:{TSWReviewChoiceDescriptionFractionKey), "floatValue"}];
  if (v3 > 0.0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v5 = a1 + 32;
  v4 = *(a1 + 32);
  if (*(*(*(v5 + 8) + 8) + 24) <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [NSNumber numberWithInteger:v6];
  v8 = TSWReviewQuestionDescriptionCardinalityKey;

  return [v4 setValue:v7 forKey:v8];
}

void sub_1DC600(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1DC678;
  v1[3] = &unk_45AE58;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v1);
}

id sub_1DC678(uint64_t a1)
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 8), "isClosing") & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          (*(*(*(&v8 + 1) + 8 * i) + 16))();
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  [*(a1 + 40) removeAllObjects];
  return [*(a1 + 32) setCompletionBlock:0];
}

void sub_1DD148(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exc_buf);
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exc_buf);
    }

    JUMPOUT(0x1DD0E0);
  }

  _Unwind_Resume(exc_buf);
}

id sub_1DDDFC(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) definesProperty:a2];
  if ((result & 1) == 0)
  {
    v5 = [TSWPParagraphStyle boxedDefaultValueForProperty:a2];
    v6 = *(a1 + 32);

    return [v6 setBoxedValue:v5 forProperty:a2];
  }

  return result;
}

void sub_1DFDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DFDF8(void *a1, void *a2)
{
  v4 = a2;
  if (a1[4])
  {
    v3 = [[PFDUrlHandlerAssetInfo alloc] initWithContext:a1[5] bookRootURL:a1[6]];
    [v4 setObject:v3 forKeyedSubscript:a1[4]];
  }

  *(*(a1[7] + 8) + 24) = [v4 count];
}

void sub_1DFF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DFF68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 removeObjectForKey:?];
    v3 = v4;
  }

  *(*(*(a1 + 40) + 8) + 24) = [v3 count];
}

void sub_1E00E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E0100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E0118(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v6 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1E06A4(uint64_t a1)
{
  [*(a1 + 32) _resetForNewLoad];
  v13 = [*(a1 + 40) URL];
  v2 = [objc_opt_class() _assetInfoForURL:v13];
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v4 = [v3 hosts];
    v5 = [v13 host];
    v6 = [v4 containsObject:v5];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1003;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v2 path];
  v9 = [v8 length];

  if (!v9)
  {
    v7 = -1100;
    goto LABEL_15;
  }

  if (![v2 fileSize])
  {
    v7 = -1014;
    goto LABEL_15;
  }

  if (![v2 assetIsInsideBookRootPath])
  {
    v7 = -1102;
    goto LABEL_15;
  }

  if (v7)
  {
LABEL_15:
    [*(a1 + 32) _sendErrorForErrorCode:v7];
    goto LABEL_16;
  }

  v10 = +[BuLr3rwnVU31zt9OioJ56 dataChunkSize];
  v11 = [v2 fileSize];
  v12 = *(a1 + 32);
  if (v10 >= v11)
  {
    [v12 _sendSmallFileForAsset:v2];
  }

  else
  {
    [v12 _sendLargeFileForAsset:v2];
  }

LABEL_16:
}

void sub_1E0ED4(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    if (a4 == 89)
    {
      v9 = -999;
    }

    else
    {
      v9 = -3001;
    }

    [*(a1 + 32) _sendErrorForErrorCode:v9];
  }

  else
  {
    if (v7 && v7 != &_dispatch_data_empty)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1E0FE0;
      v13[3] = &unk_45F3F8;
      v10 = *(a1 + 40);
      v13[4] = *(a1 + 32);
      v14 = v10;
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v15 = v11;
      v16 = v12;
      dispatch_data_apply(v8, v13);
    }

    if (a2)
    {
      [*(a1 + 32) _cleanupDispatchIO];
      [*(a1 + 32) _sendDidFinish];
    }
  }
}

BOOL sub_1E0FE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  if (a5)
  {
    [v10 _maybeSendDidReceiveResponse:*(a1 + 40)];
    if (*(a1 + 48))
    {
      v11 = [NSMutableData dataWithLength:*(a1 + 56)];
      v12 = *(a1 + 48);
      v17 = 0;
      v13 = [v12 BaSrRpzcWCyAjSdjbc8j:a4 withSize:a5 into:objc_msgSend(v11 error:{"mutableBytes"), &v17}];
      v14 = 0;
      if (v13)
      {
        v15 = v17 == 0;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        [v11 setLength:a5];
        v14 = v11;
      }
    }

    else
    {
      v14 = [[NSData alloc] initWithBytes:a4 length:a5];
    }

    [*(a1 + 32) _sendDidReceiveData:v14];
  }

  else
  {
    [v10 _sendErrorForErrorCode:-1014];
  }

  objc_autoreleasePoolPop(v9);

  return a5 != 0;
}

__CFDictionary *sub_1E2E94(const void **a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (CFDictionaryGetCount(a1[17]) >= 1)
  {
    CFDictionaryAddValue(Mutable, PFDEpubEncryptionParserFairplayInfoKey, a1[17]);
  }

  if (CFArrayGetCount(a1[19]) >= 1)
  {
    CFDictionaryAddValue(Mutable, PFDEpubEncryptionParserFontObfuscationInfoKey, a1[19]);
  }

  if (CFDictionaryGetCount(a1[18]) >= 1)
  {
    CFDictionaryAddValue(Mutable, PFDEpubEncryptionParserEncryptionInfoKey, a1[18]);
  }

  return Mutable;
}

void sub_1E4298(void *a1, int a2)
{
  sub_1E4558(v2 - 112, *(v2 - 104));
  if (a2 == 2)
  {
    v5 = objc_begin_catch(a1);
    objc_end_catch();
  }

  else
  {
    objc_begin_catch(a1);
  }

  JUMPOUT(0x1E4230);
}

void sub_1E4558(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1E4558(a1, *a2);
    sub_1E4558(a1, a2[1]);
    sub_1E45B4((a2 + 4));

    operator delete(a2);
  }
}

void sub_1E45B4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

id sub_1E47F4(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) definesProperty:a2];
  if ((result & 1) == 0)
  {
    v5 = [TSWPParagraphStyle boxedDefaultValueForProperty:a2];
    v6 = *(a1 + 32);

    return [v6 setBoxedValue:v5 forProperty:a2];
  }

  return result;
}

void sub_1E4D30(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x1E4CD0);
  }

  JUMPOUT(0x1E4CD8);
}

_xmlNode *CXFirstChildNamed(_xmlNode *a1, xmlChar *str1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->children; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE && xmlStrEqual(str1, i->name))
    {
      break;
    }
  }

  return i;
}

_xmlNode *CXNextSiblingNamed(_xmlNode *a1, xmlChar *str1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->next; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE && xmlStrEqual(str1, i->name))
    {
      break;
    }
  }

  return i;
}

uint64_t CXFirstNodeMatchingXPathQuery(_xmlNode *a1, const xmlChar *a2)
{
  v4 = xmlXPathNewContext(a1->doc);
  v5 = v4;
  if (v4 && (v4->node = a1, (v4 = xmlXPathEvalExpression(a2, v4)) != 0) && (node = v4->node) != 0 && SLODWORD(node->_private) >= 1)
  {
    v7 = **&node->type;
  }

  else
  {
    v7 = 0;
  }

  xmlXPathFreeObject(v4);
  xmlXPathFreeContext(v5);
  return v7;
}

_xmlNode *pCXFindChild(_xmlNode *a1, CXNamespace *a2, xmlChar *str1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->children; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE && xmlStrEqual(str1, i->name) && [(CXNamespace *)a2 containsNode:i])
    {
      break;
    }
  }

  return i;
}

_xmlNode *pCXFindChildWithAttributeValue(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, const xmlChar *a4, const xmlChar *a5)
{
  for (i = pCXFindChild(a1, a2, a3); ; i = CXFindNextChild(v10, a2, a3))
  {
    v10 = i;
    if (!i)
    {
      break;
    }

    properties = i->properties;
    if (properties)
    {
      while (!xmlStrEqual(a4, properties->name))
      {
        properties = properties->next;
        if (!properties)
        {
          goto LABEL_9;
        }
      }

      children = properties->children;
      if (children)
      {
        if (xmlStrEqual(a5, children->content))
        {
          break;
        }
      }
    }

LABEL_9:
    ;
  }

  return v10;
}

_xmlNode *CXFindNextChild(_xmlNode *a1, CXNamespace *a2, xmlChar *str1)
{
  for (i = a1->next; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE && xmlStrEqual(str1, i->name) && [(CXNamespace *)a2 containsNode:i])
    {
      break;
    }
  }

  return i;
}

_xmlNode *CXFindRequiredChild(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v4 = pCXFindChild(a1, a2, a3);
  if (!v4)
  {
    [NSException raise:@"TCXmlException" format:@"Could not find node: %s", a3];
  }

  return v4;
}

_xmlNode *CXFirstChild(_xmlNode *a1)
{
  if (!a1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  for (result = a1->children; result; result = result->next)
  {
    if (result->type == XML_ELEMENT_NODE)
    {
      break;
    }
  }

  return result;
}

_xmlNode *CXNextSibling(_xmlNode *a1)
{
  v1 = a1;
  if (!a1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  do
  {
    v1 = v1->next;
  }

  while (v1 && v1->type != XML_ELEMENT_NODE);
  return v1;
}

_xmlNode *CXFirstChild(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v5 = CXFirstChild(a1);
  pTCXmlCheckName(v5, a2, a3);
  return v5;
}

uint64_t pTCXmlCheckName(_xmlNode *a1, CXNamespace *a2, xmlChar *str2)
{
  if (!a1)
  {
    return [NSException raise:@"TCXmlException" format:@"Could not find node: %s", str2];
  }

  if (!xmlStrEqual(a1->name, str2))
  {
    return [NSException raise:@"TCXmlException" format:@"Could not find node: %s", str2];
  }

  result = [(CXNamespace *)a2 containsNode:a1];
  if ((result & 1) == 0)
  {
    return [NSException raise:@"TCXmlException" format:@"Could not find node: %s", str2];
  }

  return result;
}

_xmlNode *CXNextSibling(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v5 = CXNextSibling(a1);
  pTCXmlCheckName(v5, a2, a3);
  return v5;
}

_xmlNode *CXRequiredLongChild(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, int a4)
{
  result = pCXFindChild(a1, a2, a3);
  if (result)
  {
    Content = xmlNodeGetContent(result);
    v7 = CXLongValueFromString(Content, Content, a4);
    free(Content);
    return v7;
  }

  return result;
}

uint64_t CXLongValueFromString(uint64_t a1, char *a2, int a3)
{
  v9 = 0.0;
  v8 = 0;
  CXSplitValueAndUnit([NSString stringWithXmlString:a2], &v9, &v8);
  if (v8)
  {
    if (a3)
    {
      v5 = CXUnitToPoint(v8);
      return (v9 * (v5 / CXUnitToPoint(a3)));
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v10 = 0;
    if (a2)
    {
      sfaxmlXmlCharToLong(a2, &v10);
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t CXCountChildren(_xmlNode *a1, CXNamespace *a2, xmlChar *str1)
{
  children = a1->children;
  if (!children)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    if (children->type == XML_ELEMENT_NODE && xmlStrEqual(str1, children->name))
    {
      v6 = v6 + [(CXNamespace *)a2 containsNode:children];
    }

    children = children->next;
  }

  while (children);
  return v6;
}

_xmlAttr *CXFindAttribute(_xmlNode *a1, xmlChar *str2)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->properties; i; i = i->next)
  {
    name = i->name;
    if (name && xmlStrEqual(name, str2))
    {
      break;
    }
  }

  return i;
}

_xmlAttr *CXFindAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *str2)
{
  if (!a1)
  {
    return 0;
  }

  for (i = a1->properties; i; i = i->next)
  {
    name = i->name;
    if (name && xmlStrEqual(name, str2) && [(CXNamespace *)a2 containsAttribute:i])
    {
      break;
    }
  }

  return i;
}

char *CXBoolValueFromString(unsigned __int8 *a1, char *a2)
{
  result = a2;
  v3 = 0;
  if (a2)
  {
    sfaxmlXmlCharToLong(a2, &v3);
    return (v3 != 0);
  }

  return result;
}

char *CXLongValueFromString(unsigned __int8 *a1, char *a2)
{
  result = a2;
  v3 = 0;
  if (a2)
  {
    sfaxmlXmlCharToLong(a2, &v3);
    return v3;
  }

  return result;
}

uint64_t CXLongValue(uint64_t a1, int a2)
{
  String = xmlNodeListGetString(*(a1 + 64), *(a1 + 24), 1);
  v4 = CXLongValueFromString(String, String, a2);
  if (String)
  {
    free(String);
  }

  return v4;
}

id CXSplitValueAndUnit(void *a1, void *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v5 = [a1 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  result = [v5 length];
  v7 = result;
  if (!result)
  {
    return result;
  }

  v8 = 0;
  v9 = (result << 32) - 0x100000000;
  do
  {
    v10 = [v5 characterAtIndex:v9 >> 32];
    v11 = v10;
    if (v10 <= 0x7F)
    {
      if ((_DefaultRuneLocale.__runetype[v10] & 0x100) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (__maskrune(v10, 0x100uLL))
    {
      goto LABEL_9;
    }

    if (v11 != 37 && v11)
    {
      goto LABEL_11;
    }

LABEL_9:
    ++v8;
    v9 -= 0x100000000;
  }

  while (v7 != v8);
  LODWORD(v8) = v7;
LABEL_11:
  v12 = v7 - v8;
  v13 = v7 - v8;
  result = [objc_msgSend(v5 substringToIndex:{v12), "doubleValue"}];
  *a2 = v14;
  if (v8)
  {
    result = CXUnitWithName([v5 substringFromIndex:v13]);
    *a3 = result;
  }

  return result;
}

double CXUnitToPoint(int a1)
{
  v7 = a1 - 6;
  if (a1 - 6) < 0xB && ((0x77Fu >> v7))
  {
    return dbl_34B518[v7];
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  return 1.0;
}

_xmlAttr *CXRequiredLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {

    return CXLongValue(result, 0);
  }

  return result;
}

_xmlAttr *CXRequiredLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, int a4)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {

    return CXLongValue(result, a4);
  }

  return result;
}

BOOL CXOptionalLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXLongValue(v5, 0);
  }

  return v6 != 0;
}

BOOL CXOptionalLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t *a4, int a5)
{
  v7 = CXFindAttribute(a1, a2, a3);
  v8 = v7;
  if (v7)
  {
    *a4 = CXLongValue(v7, a5);
  }

  return v8 != 0;
}

uint64_t CXDefaultLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXLongValue(v5, 0);
}

uint64_t CXDefaultLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4, int a5)
{
  v7 = CXFindAttribute(a1, a2, a3);
  if (!v7)
  {
    return a4;
  }

  return CXLongValue(v7, a5);
}

uint64_t CXDefaultLongAttributeFromStream(_xmlTextReader *a1, CXNamespace *a2, const xmlChar *a3, uint64_t a4)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, a3, [(CXNamespace *)a2 uri]);
  if (AttributeNs)
  {
    v6 = AttributeNs;
    v8 = 0;
    sfaxmlXmlCharToLong(AttributeNs, &v8);
    a4 = v8;
    free(v6);
  }

  return a4;
}

unint64_t CXUnsignedLongValue(_xmlAttr *a1)
{
  v5 = 0;
  String = xmlNodeListGetString(a1->doc, a1->children, 1);
  v2 = String;
  if (String)
  {
    sfaxmlXmlCharToUnsignedLong(String, &v5);
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  free(v2);
  return v3;
}

_xmlAttr *CXRequiredUnsignedLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {

    return CXUnsignedLongValue(result);
  }

  return result;
}

BOOL CXOptionalUnsignedLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, unint64_t *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXUnsignedLongValue(v5);
  }

  return v6 != 0;
}

unint64_t CXDefaultUnsignedLongAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXUnsignedLongValue(v5);
}

double CXFraction(NSString *a1)
{
  v5 = 0.0;
  v4 = 0;
  CXSplitValueAndUnit(a1, &v5, &v4);
  if (v4 == 13)
  {
    v2 = v5;
    v3 = 100.0;
  }

  else
  {
    result = 0.0;
    if (v4)
    {
      return result;
    }

    v2 = v5;
    v3 = 100000.0;
  }

  return v2 / v3;
}

double CXRequiredFractionAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v3 = CXRequiredStringAttribute(a1, a2, a3);
  if (!v3)
  {
    return 0.0;
  }

  return CXFraction(&v3->_private);
}

_xmlAttr *CXRequiredStringAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {
    v4 = [[NSString alloc] initWithValueOfXmlAttribute:result];

    return v4;
  }

  return result;
}

BOOL CXOptionalFractionAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double *a4)
{
  v7 = 0;
  CXOptionalStringAttribute(a1, a2, a3, &v7, 1);
  v5 = v7;
  if (v7)
  {
    *a4 = CXFraction(v7);
  }

  return v5 != 0;
}

double CXDefaultFractionAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double a4)
{
  v7 = 0;
  CXOptionalStringAttribute(a1, a2, a3, &v7, 1);
  v5 = v7;
  if (!v7)
  {
    return a4;
  }

  return CXFraction(v5);
}

double CXDoubleValue(_xmlAttr *a1)
{
  v5 = 0.0;
  String = xmlNodeListGetString(a1->doc, a1->children, 1);
  v2 = String;
  if (String)
  {
    sfaxmlXmlCharToDouble(String, &v5);
    v3 = v5;
  }

  else
  {
    v3 = 0.0;
  }

  free(v2);
  return v3;
}

double CXRequiredDoubleAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  v3 = CXFindAttribute(a1, a2, a3);
  if (!v3)
  {
    return 0.0;
  }

  return CXDoubleValue(v3);
}

BOOL CXOptionalDoubleAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXDoubleValue(v5);
  }

  return v6 != 0;
}

double CXDefaultDoubleAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXDoubleValue(v5);
}

uint64_t CXBoolValue(_xmlAttr *a1)
{
  v5 = 0;
  String = xmlNodeListGetString(a1->doc, a1->children, 1);
  v2 = String;
  if (String)
  {
    sfaxmlXmlCharToBool(String, &v5);
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  free(v2);
  return v3 & 1;
}

_xmlAttr *CXRequiredBoolAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXFindAttribute(a1, a2, a3);
  if (result)
  {

    return CXBoolValue(result);
  }

  return result;
}

BOOL CXOptionalBoolAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, BOOL *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXBoolValue(v5);
  }

  return v6 != 0;
}

BOOL CXOptionalBoolAttributeFromStream(_xmlTextReader *a1, CXNamespace *a2, const xmlChar *a3, BOOL *a4)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, a3, [(CXNamespace *)a2 uri]);
  v6 = AttributeNs;
  if (AttributeNs)
  {
    v8 = 0;
    sfaxmlXmlCharToLong(AttributeNs, &v8);
    *a4 = v8 != 0;
    free(v6);
  }

  return v6 != 0;
}

uint64_t CXDefaultBoolAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXBoolValue(v5);
}

BOOL CXDefaultBoolAttributeFromStream(_xmlTextReader *a1, CXNamespace *a2, const xmlChar *a3, _BOOL8 a4)
{
  AttributeNs = xmlTextReaderGetAttributeNs(a1, a3, [(CXNamespace *)a2 uri]);
  if (AttributeNs)
  {
    v6 = AttributeNs;
    v8 = 0;
    sfaxmlXmlCharToLong(AttributeNs, &v8);
    a4 = v8 != 0;
    free(v6);
  }

  return a4;
}

_xmlAttr *CXRequiredBase64DecodedDataAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3)
{
  result = CXRequiredStringAttribute(a1, a2, a3);
  if (result)
  {

    return decodeBase64(&result->_private);
  }

  return result;
}

uint64_t decodeBase64(NSString *a1)
{
  if (([(NSMutableString *)removeCRs(a1) length]& 3) == 0)
  {
    operator new[]();
  }

  return 0;
}

BOOL CXOptionalStringAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, NSString **a4, int a5)
{
  v7 = CXFindAttribute(a1, a2, a3);
  if (v7)
  {
    v8 = [[NSString alloc] initWithValueOfXmlAttribute:v7];
    if (a5)
    {
      v8 = v8;
    }

    *a4 = v8;
  }

  return v7 != 0;
}

NSString *CXDefaultStringAttribute(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, NSString *a4)
{
  v5 = CXFindAttribute(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  v6 = [[NSString alloc] initWithValueOfXmlAttribute:v5];

  return v6;
}

uint64_t CXBoolValue(_xmlNode *a1)
{
  v5 = 0;
  String = xmlNodeListGetString(a1->doc, a1->children, 1);
  v2 = String;
  if (String)
  {
    sfaxmlXmlCharToBool(String, &v5);
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  free(v2);
  return v3 & 1;
}

BOOL CXChildOptionalBoolContent(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, BOOL *a4)
{
  v5 = pCXFindChild(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXBoolValue(v5);
  }

  return v6 != 0;
}

uint64_t CXChildDefaultBoolContent(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, uint64_t a4)
{
  v5 = pCXFindChild(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXBoolValue(v5);
}

double CXDoubleValue(_xmlNode *a1)
{
  v5 = 0.0;
  String = xmlNodeListGetString(a1->doc, a1->children, 1);
  v2 = String;
  if (String)
  {
    sfaxmlXmlCharToDouble(String, &v5);
    v3 = v5;
  }

  else
  {
    v3 = 0.0;
  }

  free(v2);
  return v3;
}

BOOL CXChildOptionalDoubleContent(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double *a4)
{
  v5 = pCXFindChild(a1, a2, a3);
  v6 = v5;
  if (v5)
  {
    *a4 = CXDoubleValue(v5);
  }

  return v6 != 0;
}

double CXChildDefaultDoubleContent(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, double a4)
{
  v5 = pCXFindChild(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  return CXDoubleValue(v5);
}

NSString *CXChildDefaultStringContent(_xmlNode *a1, CXNamespace *a2, xmlChar *a3, NSString *a4)
{
  v5 = pCXFindChild(a1, a2, a3);
  if (!v5)
  {
    return a4;
  }

  v6 = [[NSString alloc] initWithContentOfXmlNode:v5];

  return v6;
}

NSString *CXDefaultStringContent(_xmlNode *a1, NSString *a2)
{
  if (!a1)
  {
    return a2;
  }

  v2 = [[NSString alloc] initWithContentOfXmlNode:a1];

  return v2;
}

xmlNode *CXNewTextNode(xmlChar *name, NSString *a2)
{
  v3 = xmlNewNode(0, name);
  if (a2)
  {
    v4 = [(NSString *)a2 xmlString];
  }

  else
  {
    v4 = "";
  }

  v5 = xmlNewText(v4);
  xmlAddChild(v3, v5);
  return v3;
}

xmlAttrPtr CXNewAttribute(_xmlNode *a1, const xmlChar *a2, NSString *a3)
{
  if (a3)
  {
    v5 = [(NSString *)a3 xmlString];
  }

  else
  {
    v5 = "";
  }

  return xmlNewProp(a1, a2, v5);
}

BOOL CXNodeHasName(_xmlNode *a1, CXNamespace *a2, xmlChar *str2)
{
  if (!a1 || !xmlStrEqual(a1->name, str2))
  {
    return 0;
  }

  return [(CXNamespace *)a2 containsNode:a1];
}

uint64_t decodeBase64Char(int a1)
{
  v1 = a1 - 65;
  if (a1 == 47)
  {
    v2 = 63;
  }

  else
  {
    v2 = -1;
  }

  if (a1 == 61)
  {
    v3 = 64;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 43)
  {
    v4 = 62;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 - 48) <= 9)
  {
    v5 = a1 + 4;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 - 97) <= 0x19)
  {
    v6 = a1 - 71;
  }

  else
  {
    v6 = v5;
  }

  if (v1 > 0x19)
  {
    LOBYTE(v1) = v6;
  }

  return v1;
}

NSMutableString *removeCRs(NSString *a1)
{
  v2 = [NSMutableString stringWithCapacity:[(NSString *)a1 length]];
  v3 = [(NSString *)a1 componentsSeparatedByString:@"\n"];
  v4 = [(NSArray *)v3 count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      [(NSMutableString *)v2 appendString:[(NSArray *)v3 objectAtIndex:i]];
    }
  }

  return v2;
}

id CXUnitWithName(NSString *a1)
{
  v2 = qword_567950;
  if (!qword_567950)
  {
    v2 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 1), @"f", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 2), @"fd", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 3), @"deg", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 5), @"rad", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4), @"grad", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 6), @"pt", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 7), @"in", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 8), @"cm", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 9), @"mm", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 10), @"px", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 11), @"pc", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 11), @"pi", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 12), @"emu", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 13), @"%", 0}];
    qword_567950 = v2;
  }

  v3 = [v2 objectForKey:{-[NSString lowercaseString](a1, "lowercaseString")}];

  return [v3 intValue];
}

const __CFString *TCXmlStringForBool(int a1)
{
  if (a1)
  {
    return @"1";
  }

  else
  {
    return @"0";
  }
}

uint64_t sub_1E8244(uint64_t a1, const xmlChar **a2)
{
  v2 = *sub_1E82DC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1E82DC(uint64_t a1, void *a2, const xmlChar **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((xmlStrcmp(*a3, v4[4]) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((xmlStrcmp(v7[4], *a3) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void TCTaggedMessageStructure::TCTaggedMessageStructure(TCTaggedMessageStructure *this, NSString *a2)
{
  v2 = dword_567960++;
  this->var0 = v2;
  this->var1 = a2;
}

{
  v2 = dword_567960++;
  this->var0 = v2;
  this->var1 = a2;
}

void TCTaggedMessageStructure::~TCTaggedMessageStructure(TCTaggedMessageStructure *this)
{
}

{
}

TCMessageEntry *sub_1E8B54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [a1 getEntry];
    v11 = v10;
  }

  else
  {
    v12 = TCUnknownProblemMessage;
    if ([objc_msgSend(a1 "name")])
    {
      v13 = TCOutOfMemoryMessage;
    }

    else
    {
      v13 = v12;
    }

    return [[TCMessageEntry alloc] initWithTag:*v13 affectedObject:0 text:*(v13 + 1) parameters:&a9];
  }

  return v10;
}

void sub_1E91E0(void *a1)
{
  v2 = *(a1[4] + 40);
  if (v2)
  {
    [v2 addWarning:{+[TSKWarning warningWithMessage:](TSKWarning, "warningWithMessage:", *(a1[6] + 8))}];
  }

  v3 = [[TCMessageEntry alloc] initWithTag:*a1[6] affectedObject:a1[5] text:*(a1[6] + 8) parameters:a1[7]];
  [*(a1[4] + 8) addMessageEntry:v3];
}

uint64_t sub_1E92F4(void *a1)
{
  result = *(a1[4] + 40);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = a1[5];
      v4 = *(a1[4] + 40);
      v5 = a1[6];

      return [v4 addIncompatibleMovieInfo:v3 withCompatibilityLevel:v5];
    }
  }

  return result;
}

uint64_t TCVerifyInputMeetsCondition(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  return result;
}

NSNull *sub_1E9FDC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 24) lastObject];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  result = +[NSNull null];
  if (v2 == result)
  {
    *(*(*(a1 + 40) + 8) + 40) = 0;
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v4 = *(*(*(a1 + 40) + 8) + 40);
        [v4 setInUse:1];
        result = [v4 key];
        *(*(*(a1 + 40) + 8) + 40) = result;
      }
    }
  }

  return result;
}

id sub_1EA220(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = +[NSNull null];
  }

  v3 = *(*(a1 + 40) + 24);

  return [v3 addObject:v2];
}

id sub_1EA2E4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    [*(*(a1 + 32) + 24) lastObject];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      +[NSNull null];
    }

    v3 = *(*(a1 + 32) + 24);

    return [v3 removeLastObject];
  }

  return result;
}

id sub_1EA430(uint64_t a1)
{
  v2 = objc_alloc_init(TCMessagePlaceholderInfo);
  [*(*(a1 + 32) + 24) addObject:v2];

  result = [(TCMessagePlaceholderInfo *)v2 key];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id sub_1EA4FC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    v3 = [*(*(a1 + 32) + 24) lastObject];
    if ([v3 isInUse])
    {
      [*(a1 + 32) setObject:*(a1 + 40) forPlaceholderKey:{objc_msgSend(v3, "key")}];
    }

    v4 = *(*(a1 + 32) + 24);

    return [v4 removeLastObject];
  }

  return result;
}

id sub_1EA608(void *a1)
{
  v2 = +[NSNull null];
  v3 = a1[4];
  if (v3)
  {
    v2 = kTCMessageContext_NullObjectThatMakesWarningUnremovable;
    if (v3 != kTCMessageContext_NullObjectThatMakesWarningUnremovable)
    {
      v2 = [(__CFString *)v3 identifier];
    }
  }

  v4 = a1[6];
  v5 = *(a1[5] + 32);

  return [v5 setObject:v2 forKey:v4];
}

id sub_1EA6E4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) count];
  if (!result)
  {
    return result;
  }

  v14 = [*(*(a1 + 32) + 8) copy];
  v3 = [v14 objectEnumerator];
  v4 = [v3 nextObject];
  if (!v4)
  {
    goto LABEL_17;
  }

  v5 = v4;
  do
  {
    v6 = [v5 affectedObjects];
    v7 = [v6 count];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = 0;
    v9 = v7 - 1;
    do
    {
      v10 = [v6 objectAtIndex:v9];
      if (v10 == kTCMessageContext_NullObjectThatMakesWarningUnremovable)
      {
        goto LABEL_11;
      }

      v11 = [*(*(a1 + 32) + 32) objectForKey:v10];
      if (!v11)
      {
        goto LABEL_13;
      }

      v12 = v11;
      if (v11 != +[NSNull null])
      {
        if (v12 != kTCMessageContext_NullObjectThatMakesWarningUnremovable)
        {
          [v6 replaceObjectAtIndex:v9 withObject:v12];
          goto LABEL_13;
        }

LABEL_11:
        [v6 removeObjectAtIndex:v9];
        v8 = 1;
        goto LABEL_13;
      }

      [v6 removeObjectAtIndex:v9];
LABEL_13:
      --v9;
    }

    while (v9 != -1);
    if (!(([v6 count] != 0) | v8 & 1))
    {
      [*(*(a1 + 32) + 8) removeObject:v5];
    }

LABEL_16:
    v5 = [v3 nextObject];
  }

  while (v5);
LABEL_17:

  v13 = *(*(a1 + 32) + 32);

  return [v13 removeAllObjects];
}

id sub_1EABEC(void *a1, void *a2)
{
  result = a2;
  if (*a1)
  {
    if (!a1[1])
    {
      operator new();
    }

    operator new();
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1EAF2C(uint64_t a1)
{
  *a1 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    while (1)
    {
      v2 = *(v2 + 8);
      if (v2 == *(a1 + 8))
      {
        break;
      }
    }

    if (v2)
    {
      sub_1EAFB4(*(a1 + 8));
      operator delete();
    }
  }

  return a1;
}

void *sub_1EAFB4(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_1EB018(uint64_t a1, const xmlChar **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = xmlStrcmp(*(v3 + 32), *a2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || xmlStrcmp(*a2, *(v5 + 32)) < 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1EB094(uint64_t a1, const xmlChar **a2)
{
  v2 = *sub_1E82DC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1EB1EC(const xmlChar *a1)
{
  v1 = a1;
  v2 = xmlStrlen(a1);
  if (v2 >= 0x11)
  {
    v6 = 0;
    v4 = v2;
    do
    {
      v4 = 257 * v4 + v1[v6++];
    }

    while (v6 != 8);
    v7 = -8;
    do
    {
      v4 = 257 * v4 + v1[v2 + v7++];
    }

    while (v7);
  }

  else if (v2)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v5 = *v1++;
      v4 = 257 * v4 + v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return ((v4 << v2) + v4);
}

void sub_1EB298()
{
  qword_568108 = 0;
  unk_568110 = 0;
  TCXmlStringKeyCallBacks = kCFTypeDictionaryKeyCallBacks.version;
  qword_568118 = sub_1EB19C;
  qword_568120 = sub_1EB1D0;
  qword_568128 = sub_1EB1EC;
  TCOwnedXmlStringKeyCallBacks = kCFTypeDictionaryKeyCallBacks.version;
  *algn_568138 = 0;
  qword_568140 = sub_1EB288;
  unk_568148 = sub_1EB19C;
  qword_568150 = sub_1EB1D0;
  unk_568158 = sub_1EB1EC;
  TCCStringKeyCallBacks = kCFTypeDictionaryKeyCallBacks.version;
  *algn_568168 = 0;
  qword_568170 = 0;
  unk_568178 = sub_1EB19C;
  qword_568180 = sub_1EB1D0;
  unk_568188 = sub_1EB1EC;
  TCOwnedXmlStringValueCallBacks = kCFTypeDictionaryValueCallBacks.version;
  *algn_568198 = 0;
  qword_5681A0 = sub_1EB288;
  unk_5681A8 = sub_1EB19C;
  qword_5681B0 = sub_1EB1D0;
  TCOwnedNonPooledXmlStringKeyCallBacks = kCFTypeDictionaryKeyCallBacks.version;
  unk_5681C0 = 0;
  qword_5681C8 = sub_1EB290;
  unk_5681D0 = sub_1EB19C;
  qword_5681D8 = sub_1EB1D0;
  unk_5681E0 = sub_1EB1EC;
  TCOwnedNonPooledXmlStringValueCallBacks = kCFTypeDictionaryValueCallBacks.version;
  unk_5681F0 = 0;
  qword_5681F8 = sub_1EB290;
  unk_568200 = sub_1EB19C;
  qword_568208 = sub_1EB1D0;
}

CGFloat createFlippingAboutPoint@<D0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  CGAffineTransformMakeTranslation(a3, a4, a5);
  v10 = *(a3 + 16);
  *&v17.a = *a3;
  *&v17.c = v10;
  *&v17.tx = *(a3 + 32);
  v11 = 1.0;
  if (a1)
  {
    v12 = -1.0;
  }

  else
  {
    v12 = 1.0;
  }

  if (a2)
  {
    v11 = -1.0;
  }

  CGAffineTransformScale(&v18, &v17, v12, v11);
  v13 = *&v18.c;
  *a3 = *&v18.a;
  *(a3 + 16) = v13;
  *(a3 + 32) = *&v18.tx;
  v14 = *(a3 + 16);
  *&v17.a = *a3;
  *&v17.c = v14;
  *&v17.tx = *(a3 + 32);
  CGAffineTransformTranslate(&v18, &v17, -a4, -a5);
  v15 = *&v18.c;
  *a3 = *&v18.a;
  *(a3 + 16) = v15;
  result = v18.tx;
  *(a3 + 32) = *&v18.tx;
  return result;
}

void getScaleFactorBetweenLengths(double a1, float a2)
{
  if (*&a1 == 0.0)
  {
    LODWORD(a1) = 1.0;
    if (a2 != 0.0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    }
  }
}

double getScaleFactorsBetweenRects(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = a5;
  Width = CGRectGetWidth(*&a1);
  v25.origin.x = v11;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  v16 = CGRectGetWidth(v25);
  v17 = v16;
  *&v16 = Width;
  getScaleFactorBetweenLengths(v16, v17);
  v19 = v18;
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  *&v11 = CGRectGetHeight(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  Height = CGRectGetHeight(v27);
  v21 = Height;
  LODWORD(Height) = LODWORD(v11);
  getScaleFactorBetweenLengths(Height, v21);
  return v19;
}

CGFloat mapSrcRectOntoDstRect@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  ScaleFactorsBetweenRects = getScaleFactorsBetweenRects(a2, a3, a4, a5, a6, a7, a8, a9);
  v31 = v18;
  v32 = ScaleFactorsBetweenRects;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v36.origin.x = a6;
  v36.origin.y = a7;
  v36.size.width = a8;
  v36.size.height = a9;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = a6;
  v37.origin.y = a7;
  v37.size.width = a8;
  v37.size.height = a9;
  MidY = CGRectGetMidY(v37);
  CGAffineTransformMakeTranslation(a1, MidX, MidY);
  v21 = *(a1 + 16);
  *&v34.a = *a1;
  *&v34.c = v21;
  *&v34.tx = *(a1 + 32);
  CGAffineTransformScale(&v35, &v34, v32, v31);
  v22 = *&v35.c;
  *a1 = *&v35.a;
  *(a1 + 16) = v22;
  *(a1 + 32) = *&v35.tx;
  v23 = *(a1 + 16);
  *&v34.a = *a1;
  *&v34.c = v23;
  *&v34.tx = *(a1 + 32);
  v24 = a2;
  *&v23 = a3;
  v25 = a4;
  v26 = a5;
  v27 = -CGRectGetMidX(*(&v23 - 8));
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  v28 = CGRectGetMidY(v38);
  CGAffineTransformTranslate(&v35, &v34, v27, -v28);
  v29 = *&v35.c;
  *a1 = *&v35.a;
  *(a1 + 16) = v29;
  result = v35.tx;
  *(a1 + 32) = *&v35.tx;
  return result;
}

CGFloat rotateRectAboutCenterDeg@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, float a6@<S4>)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  MidX = CGRectGetMidX(*&a2);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MidY = CGRectGetMidY(v26);
  CGAffineTransformMakeTranslation(a1, MidX, MidY);
  v14 = *(a1 + 16);
  *&v24.a = *a1;
  *&v24.c = v14;
  *&v24.tx = *(a1 + 32);
  CGAffineTransformRotate(&v25, &v24, a6 * 3.14159265 / 180.0);
  v15 = *&v25.c;
  *a1 = *&v25.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v25.tx;
  v16 = *(a1 + 16);
  *&v24.a = *a1;
  *&v24.c = v16;
  *&v24.tx = *(a1 + 32);
  v17 = a2;
  *&v16 = a3;
  v18 = a4;
  v19 = a5;
  v20 = -CGRectGetMidX(*(&v16 - 8));
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v21 = CGRectGetMidY(v27);
  CGAffineTransformTranslate(&v25, &v24, v20, -v21);
  v22 = *&v25.c;
  *a1 = *&v25.a;
  *(a1 + 16) = v22;
  result = v25.tx;
  *(a1 + 32) = *&v25.tx;
  return result;
}

double transformRect(double *a1, double a2, double a3)
{
  if (a1[1] != 0.0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v6 = a1[2];
  if (v6 != 0.0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v6 = a1[2];
  }

  return a1[4] + a3 * v6 + *a1 * a2;
}

double getTransformedSizeOf(double a1, double a2, float a3)
{
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeRotation(&v12, a3 * 3.14159265 / -180.0);
  v3 = vmulq_f64(*&v12.c, 0);
  v4 = vaddq_f64(*&v12.tx, vmlaq_f64(v3, 0, *&v12.a));
  v5 = vaddq_f64(*&v12.tx, vmlaq_n_f64(v3, *&v12.a, a1));
  v6 = vmulq_n_f64(*&v12.c, a2);
  v7 = vaddq_f64(*&v12.tx, vmlaq_n_f64(v6, *&v12.a, a1));
  v8 = vaddq_f64(*&v12.tx, vmlaq_f64(v6, 0, *&v12.a));
  *&result = *&vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmaxnmq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmaxnmq_f64(v4, v5))), v8))), v7)), vcvt_f32_f64(vminnmq_f64(vcvtq_f64_f32(vcvt_f32_f64(vminnmq_f64(vcvtq_f64_f32(vcvt_f32_f64(vminnmq_f64(v4, v5))), v8))), v7))));
  return result;
}

CGAffineTransform *getRotatedCorners(uint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, float a6)
{
  TransformedSizeOf = getTransformedSizeOf(a4, a5, a6);
  v14 = v13;
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeTranslation(&v48, a4 * -0.5, a5 * -0.5);
  memset(&v47, 0, sizeof(v47));
  CGAffineTransformMakeRotation(&v47, a6 * 3.14159265 / -180.0);
  memset(&v46, 0, sizeof(v46));
  CGAffineTransformMakeTranslation(&v46, TransformedSizeOf * 0.5, v14 * 0.5);
  memset(&v45, 0, sizeof(v45));
  result = CGAffineTransformMakeTranslation(&v45, a2, a3);
  v16 = 0;
  d = v48.d;
  v18 = *&v48.b;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = 0;
  *(a1 + 56) = a5;
  v19 = *&v45.c;
  c = v46.c;
  v21 = v46.d;
  v22 = v47.c;
  v23 = v47.d;
  v24 = v48.c;
  v25 = vdupq_lane_s64(*&v48.a, 0);
  v26 = vdupq_lane_s64(*&v48.tx, 0);
  v27 = vdupq_lane_s64(v18, 0);
  v28 = vdupq_lane_s64(*&v48.ty, 0);
  v29 = vdupq_lane_s64(*&v47.a, 0);
  v30 = vdupq_lane_s64(*&v47.tx, 0);
  v31 = vdupq_lane_s64(*&v47.b, 0);
  v32 = vdupq_lane_s64(*&v47.ty, 0);
  v33 = vdupq_lane_s64(*&v46.a, 0);
  v34 = vdupq_lane_s64(*&v46.tx, 0);
  v35 = vdupq_lane_s64(*&v46.b, 0);
  v36 = vdupq_lane_s64(*&v46.ty, 0);
  v37 = vdupq_lane_s64(*&v45.a, 0);
  v38 = vdupq_lane_s64(*&v45.tx, 0);
  v39 = vdupq_lane_s64(*&v45.b, 0);
  v40 = vdupq_lane_s64(*&v45.ty, 0);
  do
  {
    v41 = (a1 + v16);
    v49 = vld2q_f64(v41);
    v42 = vmlaq_f64(vmulq_n_f64(v49.val[1], v24), v49.val[0], v25);
    v49.val[0] = vaddq_f64(v28, vmlaq_f64(vmulq_n_f64(v49.val[1], d), v49.val[0], v27));
    v49.val[1] = vaddq_f64(v26, v42);
    v43 = vmlaq_f64(vmulq_n_f64(v49.val[0], v22), v49.val[1], v29);
    v49.val[0] = vaddq_f64(v32, vmlaq_f64(vmulq_n_f64(v49.val[0], v23), v49.val[1], v31));
    v49.val[1] = vaddq_f64(v30, v43);
    v44 = vmlaq_f64(vmulq_n_f64(v49.val[0], c), v49.val[1], v33);
    v49.val[0] = vaddq_f64(v36, vmlaq_f64(vmulq_n_f64(v49.val[0], v21), v49.val[1], v35));
    v49.val[1] = vaddq_f64(v34, v44);
    v50.val[0] = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(v49.val[0], *&v19), v49.val[1], v37));
    v50.val[1] = vaddq_f64(v40, vmlaq_f64(vmulq_n_f64(v49.val[0], *(&v19 + 1)), v49.val[1], v39));
    vst2q_f64(v41, v50);
    v16 += 32;
  }

  while (v16 != 64);
  return result;
}

uint64_t PFXHtmlStyleDisplayValue(PFSPropertySet *a1)
{
  v1 = [(PFSPropertySet *)a1 valueForProperty:"display"];
  if (v1 && (v2 = v1, [v1 count]) && (v3 = objc_msgSend(v2, "lastObject"), objc_msgSend(v3, "type") == &stru_108))
  {
    return [objc_msgSend(v3 "value")] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1ECA04(uint64_t a1, const xmlChar **a2)
{
  v2 = *sub_1E82DC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1ECAA0()
{
  if (__cxa_guard_acquire(&qword_567980))
  {
    byte_567978 = 1;

    __cxa_guard_release(&qword_567980);
  }
}

void sub_1ECAEC()
{
  if (__cxa_guard_acquire(&qword_567988))
  {
    qword_5679A0 = 0;
    qword_567998 = 0;
    qword_567990 = &qword_567998;

    __cxa_guard_release(&qword_567988);
  }
}

void sub_1ECF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

PFXString *PFXStringWithXmlString(const xmlChar *a1, uint64_t *a2)
{
  v8[0] = a1;
  if (!*a2)
  {
    operator new();
  }

  v3 = sub_1EB018(*a2, v8);
  if (*a2 + 8 != v3)
  {
    return *(v3 + 40);
  }

  v5 = [PFXString alloc];
  v4 = [(PFXString *)v5 initWithXmlString:v8[0]];
  [(PFXString *)v4 nsString];
  v6 = *a2;
  v8[2] = v8;
  *(sub_1E8244(v6, v8) + 40) = v4;
  return v4;
}

void sub_1EE28C()
{
  if (__cxa_guard_acquire(&qword_5679B8))
  {
    byte_5679B0 = 1;

    __cxa_guard_release(&qword_5679B8);
  }
}

uint64_t xmlCharToI(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 >= PFXCh0 && PFXCh9 >= v2)
  {
    a2 = 0;
    v4 = a1 + 1;
    do
    {
      a2 = 10 * a2 - PFXCh0 + v2;
      v5 = *v4++;
      v2 = v5;
    }

    while (v5 >= PFXCh0 && PFXCh9 >= v2);
  }

  return a2;
}

void sub_1EF0FC()
{
  if (__cxa_guard_acquire(&qword_5679D8))
  {
    qword_5679F0 = 0;
    qword_5679E8 = 0;
    qword_5679E0 = &qword_5679E8;

    __cxa_guard_release(&qword_5679D8);
  }
}