void sub_10046A2C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10046A304(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10046A9B0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) interactiveCanvasController];
  [v3 setNeedsDisplayOnLayer:v4];
}

void sub_10046AC10(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) interactiveCanvasController];
  [v3 setNeedsDisplayInRect:v4 onLayer:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void sub_10046AD44(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10046AEFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10046AF40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10046B9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_10046BF10(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v3 = sub_10046BFCC;
  v4 = &unk_10183F960;
  v5 = *(a1 + 32);
  v1 = v2;
  if (+[NSThread isMainThread])
  {
    v3(v1);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v1);
  }
}

void sub_10046BFCC(uint64_t a1)
{
  v1 = [*(a1 + 32) textEditor];
  [v1 showEditMenu];
}

void sub_10046C80C(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 bounds];
  if (!CGRectEqualToRect(v7, *(a1 + 40)))
  {
    [v5 setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    [*(a1 + 32) bounds];
    [v5 setPosition:{*(a1 + 40) - v3, *(a1 + 48) - v4}];
    [v5 setNeedsDisplay];
  }
}

void sub_10046CFC4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1004706FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100470740(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100470784(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004707C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100470DBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100470E00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100470E44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100470E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100470ECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100470F10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100471200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_10047123C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_10047124C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = v4[6];
  v6 = v4[7];
  v7 = v4[8];
  v8 = v4[9];
  [*(a1 + 32) glyphRectForRange:a2 includingLabel:{a3, 0}];
  v14.origin.x = v9;
  v14.origin.y = v10;
  v14.size.width = v11;
  v14.size.height = v12;
  v13.origin.x = v5;
  v13.origin.y = v6;
  v13.size.width = v7;
  v13.size.height = v8;
  *(*(*(a1 + 40) + 8) + 48) = CGRectUnion(v13, v14);
}

void sub_1004715A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[39];
  v4 = [v2 primaryFindResultSearchReference];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = [*(a1 + 32) canvas];
  [v6 contentsScale];
  v7 = [v3 buildHighlightsForSearchReferences:v5 contentsScaleForLayers:1 shouldCreateBackground:*(a1 + 40) backgroundColor:?];
}

void sub_100472A70(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  v3 = [v2 copyWithMarkedText];

  v4 = [*(a1 + 32) layout];
  if (v4)
  {
    v5 = [*(a1 + 32) canvas];

    if (v5)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      v6 = 0;
      v8 = [*(a1 + 40) range];
      v10 = v9;
      v12 = [*(a1 + 32) range];
      v13 = *(a1 + 32);
      if (!v13[43])
      {
        goto LABEL_20;
      }

      v14 = v11;
      v15 = [v13 p_spellCheckingEnabled];
      v16 = v12 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v15;
      if (v16 != 1 || !v14)
      {
        goto LABEL_20;
      }

      v17 = [v3 range];
      v39.length = v18;
      if (v17 > v12 || (v19 = &v12[v14], &v17[v18] < &v12[v14]))
      {
        v39.location = v17;
        v38 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10137A190();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v54.location = v12;
          v54.length = v14;
          v37 = NSStringFromRange(v54);
          NSStringFromRange(v39);
          *buf = 67110402;
          v42 = v38;
          v43 = 2082;
          v44 = "[CRLWPRep p_updateSuppressedSpellingRange]_block_invoke";
          v45 = 2082;
          v46 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm";
          v47 = 1024;
          v48 = 3005;
          v49 = 2114;
          v50 = v37;
          v52 = v51 = 2114;
          v36 = v52;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Rep's layout range should have been updated or removed (rep range: %{public}@, storage range: %{public}@)", buf, 0x36u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10137A1A4();
        }

        v21 = off_1019EDA68;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v22 = [NSString stringWithUTF8String:"[CRLWPRep p_updateSuppressedSpellingRange]_block_invoke"];
        v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPRep.mm"];
        v53.location = v12;
        v53.length = v14;
        v24 = NSStringFromRange(v53);
        v25 = NSStringFromRange(v39);
        [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:3005 isFatal:0 description:"Rep's layout range should have been updated or removed (rep range: %{public}@, storage range: %{public}@)", v24, v25];

        goto LABEL_20;
      }

      v40 = [v3 wordAtCharIndex:v8 includePreviousWord:1];
      v27 = v26;
      v28 = *(*(a1 + 32) + 560);
      if (v28 != [v3 changeCount])
      {
        if (v27 && ([*(a1 + 40) isInsertionPoint] & 1) != 0)
        {
          v6 = v27;
          v7 = v40;
        }

        else if (v40 <= v8 && &v40[v27] >= &v10[v8])
        {
          v6 = v27;
          v7 = v40;
        }

        goto LABEL_20;
      }

      if ((v29 = *(*(a1 + 32) + 368), v30 = *(*(a1 + 32) + 376), v8 == v29) && v30 == v10 || ((v31 = &v29[v30], v29 == v40) ? (v32 = v31 == v19) : (v32 = 0), v32 ? (v33 = 0) : (v33 = 1), v31 < &v10[v8] ? (v34 = v8 - v29 >= v30) : (v34 = 0), !v34 ? (v35 = v8 >= v29) : (v35 = 0), !v35 && v8 != v31 && v33))
      {
LABEL_20:
        [*(a1 + 32) p_setSuppressedMisspellingRange:{v7, v6}];
      }
    }
  }

  *(*(a1 + 32) + 560) = [v3 changeCount];
}

void sub_100472F4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100472F90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004734D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100473514(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100473A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_100473AE4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) storage];
  v7 = [v6 characterAtIndex:a2];

  if (v7 <= 0xD && ((1 << v7) & 0x3C30) != 0 || v7 - 8232 < 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }
}

void sub_100473B84(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) storage];
  v7 = [v6 characterAtIndex:a2];

  if (v7 <= 0xD && ((1 << v7) & 0x3C30) != 0 || v7 - 8232 < 2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }
}

void sub_100473C24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100473C68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100474E94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100474ED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100475414(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100475D20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100475D64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047616C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004761B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004763F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100476438(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100476708(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047674C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100477414(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_10047775C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 floatForKey:@"CRLWPCollaborativeCaretCursorOpacity"];
  v3 = v2;

  v4 = v3 > 1.0 || v3 <= 0.0;
  v5 = v3;
  if (v4)
  {
    v5 = 0.720000029;
  }

  qword_101A35008 = *&v5;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 floatForKey:@"CRLWPCollaborativeRangeCursorOpacity"];
  v8 = v7;

  v9 = v8 > 1.0 || v8 <= 0.0;
  v10 = v8;
  if (v9)
  {
    v10 = 0.300000012;
  }

  qword_101A35010 = *&v10;
}

void sub_100478094(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004780D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100478450(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_100478494(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_1004784D8(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = objc_alloc_init(CRLWPSelectionHighlightLayer);
  [(CRLWPSelectionHighlightLayer *)v10 setPath:a2];
  v11 = [v9 owner];
  v12 = v11;
  if (a5)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [v11 collaboratorColorForType:v13];

  [*(a1 + 32) collaborativeCursorOpacityForCaret:a5];
  v15 = [v14 colorWithAlphaComponent:?];
  -[CRLWPSelectionHighlightLayer setFillColor:](v10, "setFillColor:", [v15 CGColor]);

  [(CRLWPSelectionHighlightLayer *)v10 setStrokeColor:0];
  v16 = a3[1];
  v19[0] = *a3;
  v19[1] = v16;
  v19[2] = a3[2];
  [(CRLWPSelectionHighlightLayer *)v10 setAffineTransform:v19];
  v17 = *(a1 + 40);
  v18 = [CRLCanvasRenderable renderableFromLayer:v10];
  [v17 addSubrenderable:v18];
}

void sub_100478650(id a1)
{
  v1 = sub_1004BD804("CRLCollaboratorCursorCat");
  v2 = off_1019EDBE8;
  off_1019EDBE8 = v1;
}

void sub_100478CC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100478D08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100478E20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained spellChecker];

  if (v1)
  {
    [WeakRetained p_updateSuppressedSpellingRange];
    [WeakRetained setNeedsDisplay];
  }
}

void sub_1004797E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100479824(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100479B94(uint64_t a1)
{
  v4 = [*(a1 + 32) interactiveCanvasController];
  v2 = [v4 primaryFindResultSearchReference];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v5 = [*(a1 + 32) interactiveCanvasController];
    [v5 setPrimaryFindResultSearchReference:0];
  }
}

void sub_100479F2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100479F70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047AA9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047AAE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047AB24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047AB68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047AD88(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) searchReferences];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([*(a1 + 32) p_doesRepIntersectSearchReference:v6])
        {
          v7 = *(*(a1 + 32) + 320);
          v15 = v6;
          v8 = [NSArray arrayWithObjects:&v15 count:1];
          v9 = [*(a1 + 32) canvas];
          [v9 contentsScale];
          v10 = [v7 buildHighlightsForSearchReferences:v8 contentsScaleForLayers:1 shouldCreateBackground:*(a1 + 40) backgroundColor:?];

          [v6 setFindHighlights:v10];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v3);
  }
}

void sub_10047B3BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047B400(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047B754(uint64_t a1)
{
  v1 = [*(a1 + 32) textEditor];
}

void sub_10047B824(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) canvas];
  v22 = [v6 canvasController];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 32) parentRep];
  v15 = sub_1003035DC(v8, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLWPContainerTextEditingRep);

  [*(a1 + 32) beginEditing];
  if (v15)
  {
    v16 = [v15 containedRep];

    v17 = [v16 layout];
    [v17 validate];
  }

  else
  {
    v16 = v7;
  }

  v18 = [v22 editorController];
  v19 = [v18 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  v20 = [v19 storage];
  v21 = [v16 storage];

  if (v20 == v21)
  {
    [*(a1 + 32) scribbleSetSelectionForBeginEditingWithBoundsPoint:v16 tappedInRep:{a2, a3}];
  }
}

void sub_10047BED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047BF1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

unint64_t sub_10047C244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selection];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_24;
  }

  v6 = [v4 start];
  if ([v5 isRange])
  {
    v7 = [*(a1 + 32) selection];
    v8 = [v7 range];
    v10 = v9;

    if (v3 && [v3 isValid])
    {
      v11 = [v3 range];
    }

    else
    {
      v12 = 0;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v14 = &v8[v10];
    if (v6 != v11)
    {
      v14 = v6;
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v14;
    }

    v13 = v11 == v8 && v12 == v10;
  }

  else
  {
    v13 = 0;
  }

  v16 = [*(a1 + 32) range];
  if (v6 >= v16 && v6 - v16 < v17)
  {
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (&v16[v17] != v6 || v13)
  {
LABEL_24:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_25:

  return v6;
}

void sub_10047C3A0(uint64_t a1)
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v6 = (*(*(a1 + 48) + 16))();
  v22 = [*(a1 + 40) selection];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(a1 + 40) interactiveCanvasController];
    [v7 layoutIfNeeded];

    if ([v22 isInsertionPoint])
    {
      [*(a1 + 40) caretRectForSelection:v22];
    }

    else
    {
      [*(a1 + 40) caretRectForCharIndex:v6 caretAffinity:{objc_msgSend(v22, "caretAffinity")}];
    }

    x = v8;
    y = v9;
    if (v10 == 0.0)
    {
      width = 1.0;
    }

    else
    {
      width = v10;
    }

    if (v11 == 0.0)
    {
      height = 1.0;
    }

    else
    {
      height = v11;
    }
  }

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  if (!CGRectIsNull(v24))
  {
    [*(a1 + 40) p_convertRectIntoZoomCoordinates:{x, y, width, height}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [*(a1 + 40) interactiveCanvasController];
    v21 = [v20 canvasView];
    v25.origin.x = v13;
    v25.origin.y = v15;
    v25.size.width = v17;
    v25.size.height = v19;
    UIAccessibilityZoomFocusChanged(UIAccessibilityZoomTypeInsertionPoint, v25, v21);
  }
}

void sub_10047C754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10047C798(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10047C7B0(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 storage];
    v5 = *(a1 + 32);

    if (v4 == v5)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

void sub_10047CF8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047CFD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047D264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10047D2A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10047D2C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  if (v8 && *(v9 + 24))
  {
    *(v9 + 24) = 0;
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v8];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!*(v9 + 24))
  {
LABEL_12:
    v16 = v8;
    v14 = v7;
    goto LABEL_13;
  }

  v10 = *(*(*(a1 + 56) + 8) + 40);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    concat = dispatch_data_create_concat(v10, v7);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = concat;

    v10 = *(*(*(a1 + 56) + 8) + 40);
  }

  v14 = v10;

  size = dispatch_data_get_size(v14);
  if ((a2 & 1) != 0 || size >= 0x1E)
  {
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v33 = v8;
    v34 = 0;
    v19 = [*(a1 + 32) readFileHeaderFromData:v14 headerLength:&v34 error:&v33];
    v16 = v33;

    *(*(*(a1 + 48) + 8) + 24) = v19;
    v20 = v34;
    *(*(*(a1 + 64) + 8) + 24) = v34 != *(a1 + 80);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        [*(a1 + 32) readWithFileHeaderLength:v20 handler:*(a1 + 40)];
      }

      else
      {
        v21 = dispatch_data_get_size(v14);
        if (v21 >= v20)
        {
          subrange = dispatch_data_create_subrange(v14, v20, v21 - v20);

          v14 = subrange;
        }

        else
        {
          v22 = v21;
          if (qword_101AD5A08 != -1)
          {
            sub_10137AD78();
          }

          v23 = off_1019EDA60;
          if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
          {
            v30 = *(*(a1 + 32) + 8);
            v31 = v23;
            v32 = [v30 name];
            *buf = 138412802;
            v38 = v32;
            v39 = 2048;
            v40 = v22;
            v41 = 2048;
            v42 = v34;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Read was less than file header size for entry %@. dataSize=%zu, headerLength=%zu", buf, 0x20u);
          }

          v35[0] = @"CRLZipArchiveErrorDescription";
          v35[1] = @"CRLZipArchiveErrorEntryName";
          v36[0] = @"Entry is too small";
          v24 = [*(*(a1 + 32) + 8) name];
          v25 = v24;
          v26 = &stru_1018BCA28;
          if (v24)
          {
            v26 = v24;
          }

          v36[1] = v26;
          v27 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
          v28 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:v27];

          *(*(*(a1 + 48) + 8) + 24) = 0;
          v16 = v28;
        }
      }
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v16];
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v16 = v8;
  }

LABEL_13:
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v14 CRC:*(*(a1 + 72) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }
}

void sub_10047D698(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10047D928(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10047D96C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  if (v6 || (v7 = *(a1 + 32), v12 = 0, v8 = [v7 readFileHeaderFromData:v5 headerLength:&v13 error:&v12], v6 = v12, !v8))
  {
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v6];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    v11 = [*(v9 + 8) offset];
    [v10 readFromOffset:&v11[v13 + *(a1 + 48)] length:*(a1 + 56) handler:*(a1 + 40)];
  }
}

void sub_10047DE3C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10047DE80(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10047DEC4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10047E06C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(*(a1 + 48) + 8);
  if (!v7 || !*(v8 + 24))
  {
    if (!*(v8 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v8 + 24) = 0;
  [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v7];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v9 CRC:*(*(a1 + 56) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }

LABEL_7:
}

uint64_t sub_10047E34C(uint64_t a1, int a2, int a3, Bytef *buf, unint64_t len)
{
  v7 = **(a1 + 32);
  if (HIDWORD(len))
  {
    sub_10137B0F0();
    v8 = -1;
  }

  else
  {
    v8 = len;
  }

  **(a1 + 32) = crc32(v7, buf, v8);
  return 1;
}

void sub_10047E3B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047E3F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047E438(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10047E908(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047E94C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047E990(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047E9D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047EB60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047EBA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047ECF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([v1 conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilitySpecializer] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [objc_msgSend(v1 "specializedClass")];
  }

  v2 = objc_opt_new();
  v3 = qword_101A35020;
  qword_101A35020 = v2;
}

void sub_10047FA60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047FAA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047FE6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10047FEB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004800E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100480124(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100480E44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100480E88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100480ECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100480F10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100480F54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100480F98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100480FDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100481020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100481064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004810A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048167C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004816B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1004816D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10048176C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004817B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004817F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100481838(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048247C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004824C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100482504(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100482548(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048258C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004825D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100482614(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100482658(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004829CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100482A10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483098(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004830DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483164(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004831A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004831EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483230(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483274(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004832B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004832FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004834DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483520(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483D78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483DBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483E00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100483E44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100484354(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100484398(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004843DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100484420(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100484464(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004844A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100484F10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100484F54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100484F98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100484FDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485208(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048524C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004856E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485724(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485C30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485C74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485CB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485CFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485ED8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100485F1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100486270(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004862B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004862F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048633C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100487E04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100487E48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100487E8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100487ED0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100488038(uint64_t a1)
{
  result = [*(a1 + 32) p_crl_uncachedScreenClass];
  qword_101A35038 = result;
  return result;
}

void sub_1004887C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100488808(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048884C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100488890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004888D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100488918(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048895C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004889A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004889E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100488A28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100488BB4(id a1)
{
  v5 = +[UIScreen mainScreen];
  [v5 nativeScale];
  v2 = v1;
  v3 = +[UIScreen mainScreen];
  [v3 scale];
  *&qword_1019F0840 = v2 / v4;
}

void sub_100488C6C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1080.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35070 = v8;
}

void sub_100488D18(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1112.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35080 = v8;
}

void sub_100488DC4(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1180.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35090 = v8;
}

void sub_100488E70(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1194.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A350A0 = v8;
}

void sub_100488F1C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1366.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A350B0 = v8;
}

void sub_100488FC8(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_padUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= 1366.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A350C0 = v8;
}

void sub_100489074(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 568.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A350D0 = v8;
}

void sub_100489120(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= 568.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A350E0 = v8;
}

void sub_1004891CC(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 667.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A350F0 = v8;
}

void sub_100489278(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 <= 667.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35100 = v8;
}

void sub_100489324(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 693.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35110 = v8;
}

void sub_1004893D0(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 736.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35120 = v8;
}

void sub_10048947C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 812.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35130 = v8;
}

void sub_100489528(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 >= 812.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35140 = v8;
}

void sub_1004895D4(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 844.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35150 = v8;
}

void sub_100489680(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 896.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35160 = v8;
}

void sub_10048972C(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = +[UIDevice crl_phoneUI];
  if (v3 >= v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 926.0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  byte_101A35170 = v8;
}

void sub_1004899D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100489A14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100489C0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100489C50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048A784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10048A7F4(char **a1)
{
  v2 = *a1;
  result = isspace(**a1);
  if (result)
  {
    v4 = (v2 + 1);
    do
    {
      *a1 = v4;
      v5 = *v4++;
      result = isspace(v5);
    }

    while (result);
  }

  return result;
}

void sub_10048A864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048A8A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

int64_t sub_10048B2F8(id a1, id a2, id a3)
{
  v4 = a3;
  [a2 crlaxFrameInScreenSpace];
  v6 = v5;
  [v4 crlaxFrameInScreenSpace];
  v8 = v7;

  v9 = -1;
  if (v6 >= v8)
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_10048B71C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10048B734(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v14 = a2;
  v6 = NSClassFromString(@"Freeform.CRLWPEditor");
  v7 = __CRLAccessibilityCastAsClass(v6, v14, 0, 0);
  v8 = [v7 crlaxValueForKey:@"crlaxEditingRepWithCaret"];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!*(*(*(a1 + 48) + 8) + 40) && [v14 conformsToProtocol:*(a1 + 32)])
  {
    v11 = [*(a1 + 40) _crlaxFirstSelectedRepInCanvasEditor:v14 preferExplicitlyFocusedReps:1];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 40) != 0;
}

void sub_10048B98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10048B9A4(uint64_t a1)
{
  result = [*(a1 + 32) convertBoundsToUnscaledPoint:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

void sub_10048BAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10048BAD8(uint64_t a1)
{
  result = [*(a1 + 32) convertBoundsToUnscaledRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

void sub_10048BBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10048BBF8(uint64_t a1)
{
  result = [*(a1 + 32) convertUnscaledToBoundsPoint:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

void sub_10048BD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10048BD2C(uint64_t a1)
{
  result = [*(a1 + 32) convertUnscaledToBoundsRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

void sub_10048BEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048BEF8(uint64_t a1)
{
  v2 = [*(a1 + 32) repForInfo:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10048C0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048C0D4(uint64_t a1)
{
  v2 = [*(a1 + 32) repsForInfo:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10048C284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048C29C(uint64_t a1)
{
  v2 = [*(a1 + 32) repForLayout:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10048CBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048CC04(uint64_t a1)
{
  v5 = [*(a1 + 32) crlaxCanvasEditor];
  v2 = [v5 selectionPathWithInfos:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10048CF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048CF74(uint64_t a1)
{
  v2 = [*(a1 + 32) infosForSelectionPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10048D0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048D110(uint64_t a1)
{
  v2 = [*(a1 + 32) infosForCurrentSelectionPath];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10048D2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048D2D4(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutsForSelectionPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10048DA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10048DA44(uint64_t a1)
{
  result = [*(a1 + 32) convertPointsToRulerUnits:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void sub_10048DD84(uint64_t a1)
{
  v2 = [*(a1 + 32) _crlaxCollaborationModifiers];
  v3 = [v2 count];

  if (v3 <= 3)
  {
    v5 = [*(a1 + 32) _crlaxCollaborationModifiers];
    v6 = [v5 count];

    if (!v6)
    {
      goto LABEL_7;
    }

    v4 = @"collaborator.modified.context.names";
  }

  else
  {
    v4 = @"collaborator.modified.context.count";
  }

  v7 = CRLAccessibilitySpecializedLocalizedString(v4);
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) _crlaxCollaborationModifiers];
    v10 = [v9 allObjects];
    v11 = [v10 componentsJoinedByString:{@", "}];

    v12 = [NSString stringWithFormat:v8, v11];
    CRLAccessibilityPostAnnouncementNotification(*(a1 + 40), v12);
  }

LABEL_7:
  v13 = [*(a1 + 32) _crlaxCollaborationModifiers];
  [v13 removeAllObjects];
}

void sub_10048EA28(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v7 = [v2 localizedStringForKey:@"Current selection: %@" value:0 table:0];

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) crlaxInfos];
  v5 = [v4 mutableCopy];
  v6 = [v3 p_sentenceUsingFormat:v7 toDescribeRepSelectionOrDeltaWith:v5];

  UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v6);
}

void sub_10048ED80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10048EDA0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) crlaxRepForInfo:a2];
  v7 = [v5 crlaxTarget];

  v6 = [v7 accessibilityLabel];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a3 = *(*(*(a1 + 48) + 8) + 24);
}

void sub_10048F0B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048F0F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048F550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048F594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048F848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048F88C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048FD18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10048FD5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100490564(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004905A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004905EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100490630(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100490674(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004906B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100490A64(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] shapeFromSearchResult:v3];
  v5 = [v4 name];
  v6 = [v3 score];
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 priority]);
  if ([v3 priority] && objc_msgSend(v3, "priority") != 1)
  {
    v8 = [v3 matchingKeyword];
    v9 = [a1[5] p_locale];
    v10 = [CRLShapeLibraryHelper keywordByCapitalizingLowercasedKeyword:v8 locale:v9];

    v5 = v10;
  }

  [a1[6] setObject:v5 forKey:v4];
  v13[0] = @"CRLShapeSearchResultsCollectionShapeKey";
  v13[1] = @"CRLShapeSearchResultsCollectionScoreKey";
  v14[0] = v4;
  v14[1] = v6;
  v13[2] = @"CRLShapeSearchResultsCollectionPriorityKey";
  v13[3] = @"CRLShapeSearchResultsCollectionDisplayNameKey";
  v14[2] = v7;
  v14[3] = v5;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

id sub_100490CA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) displayNameForShape:v5];
  v8 = [*(a1 + 32) displayNameForShape:v6];
  v9 = [v7 localizedStandardCompare:v8];

  if (!v9)
  {
    v9 = [*(a1 + 32) p_comparePositionOfShape:v5 withOtherShape:v6];
  }

  return v9;
}

void sub_100491100(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100491144(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100491470(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004914B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100491EE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100491F24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100491F68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100491FAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100492260(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004922A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004922E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049232C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100492530(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100492574(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100492920(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100492964(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100493B80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 repForSelecting];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 repForSelecting];
    v7 = [v6 layout];
    v8 = [v5 p_isValidConnectionDestination:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100494DB0(uint64_t a1, void *a2)
{
  v3 = [a2 repForSelecting];
  v4 = [v3 layout];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v6 = [*(a1 + 40) rep];
    v7 = [v6 canConnectToRep:v3];
  }

  return v7;
}

void sub_100496410(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100496454(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100496FE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100497028(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004972D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049731C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004974E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100497528(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100497F18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100497F5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100497FA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100497FE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100498894(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004988D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049891C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100498960(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004989A4(uint64_t a1)
{
  v14 = [*(a1 + 32) editablePathSource];
  v2 = [v14 subpaths];
  v3 = [v2 objectAtIndex:{objc_msgSend(*(a1 + 40), "subpathIndex")}];

  v4 = [*(a1 + 40) nodeIndex];
  [*(a1 + 40) tValue];
  v5 = [v3 splitEdgeAtIndex:v4 atPercentage:?];
  if ([*(a1 + 40) hoveringSharp])
  {
    [v5 setType:1];
    v6 = [v3 nodes];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "nodeIndex")}];

    v8 = [v3 nodes];
    v9 = [*(a1 + 40) nodeIndex];
    v10 = [v3 nodes];
    v11 = [v8 objectAtIndexedSubscript:{(v9 + 2) % objc_msgSend(v10, "count")}];

    if ([v7 type] == 1)
    {
      [v7 nodePoint];
      [v7 setOutControlPoint:?];
      [v5 nodePoint];
      [v5 setInControlPoint:?];
    }

    if ([v11 type] == 1)
    {
      [v5 nodePoint];
      [v5 setOutControlPoint:?];
      [v11 nodePoint];
      [v11 setInControlPoint:?];
    }
  }

  else
  {
    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [v12 BOOLForKey:@"TSDCreateBezierNodesByDefault"];

    if (v13)
    {
      [v5 setType:2];
    }
  }
}

void sub_100498C1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100498C60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100499178(uint64_t a1)
{
  v2 = [*(a1 + 32) editablePathSource];
  v11 = v2;
  if (*(a1 + 56) == 1)
  {
    v3 = [v2 lastNode];
    [v3 setReflectedState:2];
    [v3 setType:1];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    [v3 setInControlPoint:{v4, v5}];
    [v3 setOutControlPoint:{v4, v5}];
    [v3 setNodePoint:{v4, v5}];
  }

  else
  {
    v3 = [CRLBezierNode bezierNodeWithPoint:*(a1 + 40), *(a1 + 48)];
    [v3 setReflectedState:2];
    [v3 setType:1];
    v6 = [[CRLEditableBezierPathSourceMorphInfo alloc] initWithEditableBezierPathSource:v11];
    if (*(a1 + 57) == 1)
    {
      v7 = [v11 subpaths];
      v8 = [v7 lastObject];

      v9 = [v8 nodes];
      v10 = [v9 mutableCopy];

      [v10 insertObject:v3 atIndex:0];
      [v8 setNodes:v10];
    }

    else
    {
      [v11 addNode:v3];
    }

    [v11 morphWithMorphInfo:v6];
  }
}

void sub_100499388(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004993CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049AC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v23 = v22;

  _Unwind_Resume(a1);
}

void sub_10049BA00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049BA44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049BFF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049C038(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049C07C(void *a1, void *a2, int a3, int a4, _DWORD *a5, void *a6)
{
  v20 = a1;
  v11 = a2;
  v12 = a6;
  *a5 = a4;
  LODWORD(v13) = a3;
  if (a3 >= 1)
  {
    v13 = a3;
    while (1)
    {
      v14 = v13 - 1;
      if (!sub_10049C674(v12, v13 - 1, a4))
      {
        if (sub_10049C674(v11, v13 - 1, a4) == 1)
        {
          break;
        }

        v15 = qword_101A35188;
        v16 = sub_10049C988(v20, v13 - 1, a4);
        if (!sub_10049C90C(v15, v16))
        {
          break;
        }
      }

      --v13;
      if ((v14 + 1) <= 1)
      {
        LODWORD(v13) = 0;
        break;
      }
    }
  }

  a5[1] = v13;
  if (v20[1] > a3 + 1)
  {
    v17 = a3 + 1;
    do
    {
      if (!sub_10049C674(v12, v17, a4))
      {
        if (sub_10049C674(v11, v17, a4) == 1)
        {
          break;
        }

        v18 = qword_101A35188;
        v19 = sub_10049C988(v20, v17, a4);
        if (!sub_10049C90C(v18, v19))
        {
          break;
        }
      }

      ++v17;
      ++a3;
    }

    while (v20[1] > v17);
  }

  a5[2] = a3;
}

void sub_10049C228(void *a1, int *a2)
{
  v3 = a1;
  v4 = a2[1];
  if (v4 <= a2[2])
  {
    v5 = &off_1019EDA68;
    do
    {
      v6 = *a2;
      v7 = v3;
      v8 = v7;
      if (v4 < 0 || (v6 & 0x80000000) != 0 || v7[1] <= v4 || v7[2] <= v6)
      {
        v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10137F3F4();
        }

        v11 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v17 = v8[1];
          v18 = v8[2];
          *buf = 67110914;
          v22 = v10;
          v23 = 2082;
          v24 = "void setBit(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, NSInteger, NSInteger, NSInteger)";
          v25 = 2082;
          v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h";
          v27 = 1024;
          v28 = 67;
          v29 = 2048;
          v30 = v4;
          v31 = 2048;
          v32 = v6;
          v33 = 2048;
          v34 = v17;
          v35 = 2048;
          v36 = v18;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for set bit value in IA: (%li, %li) for image of size (%li, %li)", buf, 0x4Au);
          if (qword_101AD5A10 != -1)
          {
            sub_10137F41C();
          }
        }

        v12 = v5;
        v13 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v19 = v13;
          v20 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          v22 = v10;
          v23 = 2114;
          v24 = v20;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v14 = [NSString stringWithUTF8String:"void setBit(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, NSInteger, NSInteger, NSInteger)"];
        v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h"];
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:67 isFatal:0 description:"bad request for set bit value in IA: (%li, %li) for image of size (%li, %li)", v4, v6, v8[1], v8[2]];

        v5 = v12;
      }

      else
      {
        v9 = v7[4] + v7[3] * v6;
        *(v9 + (v4 >> 3)) |= 0x80u >> (v4 & 7);
      }
    }

    while (v4++ < a2[2]);
  }
}

uint64_t sub_10049C590(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v5 - 16 >= 589)
  {
    v6 = *v5;
    if (!v6)
    {
      result = malloc_type_malloc(0x268uLL, 0x1020040F89E1A17uLL);
      v8 = *(a1 + 8);
      *v8 = result;
      if (!result)
      {
        return result;
      }

      *result = 0;
      v6 = *v8;
      *(*v8 + 8) = v8;
    }

    v4 = v6 + 16;
    *(a1 + 8) = v6;
    *(a1 + 16) = v6 + 16;
  }

  v9 = *a2;
  *(v4 + 8) = *(a2 + 2);
  *v4 = v9;
  *(a1 + 16) += 12;
  return 1;
}

void sub_10049C628(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

unint64_t sub_10049C674(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if ((a2 & 0x8000000000000000) != 0 || a3 < 0 || v5[1] <= a2 || v5[2] <= a3)
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137F444();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v14 = v6[1];
      v15 = v6[2];
      *buf = 67110914;
      v17 = v8;
      v18 = 2082;
      v19 = "NSInteger bitValue(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, const NSInteger, const NSInteger)";
      v20 = 2082;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h";
      v22 = 1024;
      v23 = 52;
      v24 = 2048;
      v25 = a2;
      v26 = 2048;
      v27 = a3;
      v28 = 2048;
      v29 = v14;
      v30 = 2048;
      v31 = v15;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for bit value in IA: (%li, %li) for image of size (%li, %li)", buf, 0x4Au);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137F458();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v10);
    }

    v11 = [NSString stringWithUTF8String:"NSInteger bitValue(CRLInstantAlphaBinaryBitmap * _Nonnull __strong, const NSInteger, const NSInteger)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaBinaryBitmap.h"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:52 isFatal:0 description:"bad request for bit value in IA: (%li, %li) for image of size (%li, %li)", a2, a3, v6[1], v6[2]];

    v7 = 0;
  }

  else
  {
    v7 = (*(v5[4] + v5[3] * a3 + (a2 >> 3)) << (a2 & 7)) & 0x80;
  }

  return v7;
}

BOOL sub_10049C90C(int *a1, unsigned int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  LODWORD(v4) = HIBYTE(a2) - HIBYTE(*a1);
  if (v4 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = HIBYTE(*a1) - HIBYTE(a2);
  }

  if (v3 < v4)
  {
    return 0;
  }

  LODWORD(v5) = BYTE1(a2) - BYTE1(v2);
  v5 = (v5 & 0x80000000) == 0 ? v5 : BYTE1(v2) - BYTE1(a2);
  if (v3 < v5)
  {
    return 0;
  }

  LODWORD(v6) = BYTE2(a2) - BYTE2(v2);
  v6 = (v6 & 0x80000000) == 0 ? v6 : BYTE2(v2) - BYTE2(a2);
  if (v3 < v6)
  {
    return 0;
  }

  LODWORD(v8) = a2 - v2;
  if ((v8 & 0x80000000) == 0)
  {
    v8 = v8;
  }

  else
  {
    v8 = -v8;
  }

  return v3 >= v8;
}

uint64_t sub_10049C988(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 < 0 || a3 < 0 || (v7 = v5[1], v7 <= a2) || v5[2] <= a3)
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137F480();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v15 = v6[1];
      v16 = v6[2];
      *buf = 67110914;
      v18 = v9;
      v19 = 2082;
      v20 = "CRLInstantAlphaPixel getPixel(CRLInstantAlphaImage *__strong, NSInteger, NSInteger)";
      v21 = 2082;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.h";
      v23 = 1024;
      v24 = 36;
      v25 = 2048;
      v26 = a2;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = v15;
      v31 = 2048;
      v32 = v16;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for get pixel in IA: (%li, %li) for image of size (%li, %li)", buf, 0x4Au);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137F494();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v11);
    }

    v12 = [NSString stringWithUTF8String:"CRLInstantAlphaPixel getPixel(CRLInstantAlphaImage *__strong, NSInteger, NSInteger)"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.h"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:36 isFatal:0 description:"bad request for get pixel in IA: (%li, %li) for image of size (%li, %li)", a2, a3, v6[1], v6[2]];

    v8 = 0;
  }

  else
  {
    v8 = *(v5[3] + 4 * v7 * a3 + 4 * a2);
  }

  return v8;
}

void sub_10049CC04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049CC48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049CC8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049CCD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049CD14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049CD58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_10049D10C(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = 0;
  if (([v2 isHidden] & 1) == 0)
  {
    [v2 accessibilityFrame];
    v4 = v3;
    [v2 accessibilityFrame];
    if (v4 * v5 != 0.0)
    {
      [v2 alpha];
      if (v6 != 0.0)
      {
        NSClassFromString(@"_UIRemoteView");
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 1;
        }
      }
    }
  }

  return v7;
}

void sub_10049E004(uint64_t a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  v3 = [*(a1 + 32) p_visibleCells];
  v2 = [v3 firstObject];
  UIAccessibilityPostNotification(v1, v2);
}

void sub_10049F934(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049F978(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049FD50(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137F5C8();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137F5DC(v3, v4, a2);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137F694();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v6, buf, v3, v5);
    }

    v7 = [NSString stringWithUTF8String:"void CRLPKInputSmoother::setSmoothingThresholdMultiplier(CGFloat)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKInputSmoother.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:27 isFatal:0 description:"Unexpected multiplier value < 0 (%f).", *&a2];
  }

  else
  {
    *(a1 + 112) = a2;
  }
}

void sub_10049FEFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10049FF40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_10049FF84(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 16))(v6, a2, a3);
  }

  *(a1 + 24) = v3;
  v7 = 8.0;
  if (a2 == 1)
  {
    v7 = 6.0;
  }

  result = *(a1 + 112) * v7;
  *(a1 + 104) = result;
  return result;
}

void sub_1004A0008(uint64_t a1)
{
  v1 = (a1 + 48);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 56) - *(a1 + 48)) >> 4) > *(a1 + 40))
  {
    sub_1004A053C((a1 + 120), 0);
    v3 = sub_1004A0578((a1 + 120), 8 * (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 56) - *(a1 + 48)) >> 4) - *(a1 + 40)));
    v4 = *(a1 + 40);
    if (v4 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 56) - *(a1 + 48)) >> 4) - 1)
    {
      v5 = 1.0 / *(a1 + 24);
      do
      {
        for (i = 0; i != 8; ++i)
        {
          v7 = vcvtd_n_f64_u64(i, 3uLL);
          v8 = sub_1003D6310(v1, v4, sub_1003D605C, v7);
          v10 = v9;
          v11 = sub_1003D6310(v1, v4, sub_1003D60E0, v7);
          v13 = v12;
          v14 = sub_1003D6310(v1, v4, sub_1003D61A4, v7);
          v16 = v15;
          v17 = pow(v13 * v13 + v11 * v11, 1.5);
          if (v17 <= 0.001)
          {
            v18 = 100.0;
          }

          else
          {
            v18 = fabs((v11 * v16 - v13 * v14) / v17);
          }

          v19 = v18 * *(a1 + 24);
          v20 = 0.0;
          if (v19 >= 0.0)
          {
            v21 = v19;
          }

          else
          {
            v21 = 0.0;
          }

          v22 = *(a1 + 120);
          v23 = *(a1 + 128);
          v24 = v23 - v22;
          if (v23 != v22)
          {
            v20 = sub_100120090(v8, v10, *(v23 - 6), *(v23 - 5));
          }

          v25 = sub_100120944(*(*(a1 + 48) + 80 * v4), *(*(a1 + 48) + 80 * v4 + 80), v7);
          v26 = v5 * v20;
          v27 = *(a1 + 136);
          if (v23 >= v27)
          {
            v29 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 4) + 1;
            if (v29 > 0x555555555555555)
            {
              sub_1000C1D48();
            }

            v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v22) >> 4);
            if (2 * v30 > v29)
            {
              v29 = 2 * v30;
            }

            if (v30 >= 0x2AAAAAAAAAAAAAALL)
            {
              v31 = 0x555555555555555;
            }

            else
            {
              v31 = v29;
            }

            if (v31)
            {
              sub_1004A0AF0(a1 + 120, v31);
            }

            v32 = 16 * (v24 >> 4);
            *v32 = v8;
            *(v32 + 8) = v10;
            *(v32 + 16) = v21;
            *(v32 + 24) = 0;
            *(v32 + 32) = v26;
            *(v32 + 40) = v25;
            v28 = v32 + 48;
            memcpy((v32 - v24), v22, v24);
            v3 = *(a1 + 120);
            *(a1 + 120) = 16 * (v24 >> 4) - v24;
            *(a1 + 128) = v28;
            *(a1 + 136) = 0;
            if (v3)
            {
              operator delete(v3);
            }
          }

          else
          {
            *v23 = v8;
            v23[1] = v10;
            v23[2] = v21;
            v23[3] = 0.0;
            v28 = (v23 + 6);
            v23[4] = v26;
            v23[5] = v25;
          }

          *(a1 + 128) = v28;
        }

        ++v4;
      }

      while (v4 < -1 - 0x3333333333333333 * ((*(a1 + 56) - *(a1 + 48)) >> 4));
    }

    sub_1004A0638(v3, (a1 + 120));
    v33 = *(a1 + 40);
    sub_1002246C8((a1 + 80), *(a1 + 72));
    if (*(a1 + 88) == *(a1 + 80))
    {
      sub_100392CE8(a1 + 80, *v1);
    }

    v34 = *(a1 + 120);
    v35 = *(a1 + 128) - v34;
    if (!v35 || v35 == 48)
    {
      v42 = v33;
    }

    else
    {
      v36 = 0;
      v37 = 0.0;
      v38 = v33;
      do
      {
        v39 = (v34 + 48 * v36);
        v40 = v39[10];
        v41 = (v39[11] - v39[5]) * 1000.0;
        if (v41 > 2.0)
        {
          v41 = 2.0;
        }

        if (v40 > v41)
        {
          v41 = v39[10];
        }

        v37 = v37 + v40 * 0.4 + (v39[3] + v39[9]) * 0.5 * v41;
        v42 = *(a1 + 40) + (v36 >> 3);
        if (v37 <= *(a1 + 104) || v38 >= v42)
        {
          v42 = v38;
        }

        else
        {
          sub_100392CE8(a1 + 80, (*(a1 + 48) + 80 * v42));
          v44 = *(a1 + 88);
          v45 = *(v44 - 8);
          v46 = *(v44 - 40);
          v47 = *(v44 - 56);
          v48 = (*(a1 + 48) + 80 * v38 + 40);
          do
          {
            if (v45 <= v48[4])
            {
              v45 = v48[4];
            }

            *(v44 - 8) = v45;
            if (v46 <= *v48)
            {
              v46 = *v48;
            }

            *(v44 - 40) = v46;
            v47 = vbslq_s8(vcgtq_f64(v47, *(v48 - 2)), v47, *(v48 - 2));
            *(v44 - 56) = v47;
            ++v38;
            v48 += 10;
          }

          while (v38 < v42);
          v37 = 0.0;
          if (v42 < *(a1 + 32))
          {
            *(a1 + 72) = 0xCCCCCCCCCCCCCCCDLL * ((v44 - *(a1 + 80)) >> 4);
            v33 = v42;
          }
        }

        ++v36;
        v34 = *(a1 + 120);
        v38 = v42;
      }

      while (v36 < -1 - 0x5555555555555555 * ((*(a1 + 128) - v34) >> 4));
    }

    *(a1 + 40) = v33;
    v49 = *(a1 + 56);
    if (v42 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((v49 - *(a1 + 48)) >> 4))
    {

      sub_100392CE8(a1 + 80, (v49 - 80));
    }
  }
}

void sub_1004A053C(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1004A097C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

void *sub_1004A0578(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1004A0AF0(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void sub_1004A0638(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 4);
    v6 = v2 + 80;
    v7 = v5 - 1;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v8 = v4 - 1;
      if (!v4)
      {
        v8 = 0;
      }

      if (v8 >= 1)
      {
        v9 = (v6 - 48 * (v4 != 0));
        v10 = 0.0;
        do
        {
          v11 = v8--;
          if (v11 < 2)
          {
            break;
          }

          v12 = *v9;
          v9 -= 6;
          v10 = v10 + v12;
        }

        while (v10 < 0.85);
      }

      if (v4 < v7)
      {
        v13 = v4 + 1;
      }

      else
      {
        v13 = v7;
      }

      if (v13 < v7)
      {
        v14 = (v2 + 32 + 48 * v13);
        v15 = 0.0;
        do
        {
          if (++v13 >= v7)
          {
            break;
          }

          v16 = *v14;
          v14 += 6;
          v15 = v15 + v16;
        }

        while (v15 < 0.85);
      }

      v17 = 0.0;
      if (v8 <= v13)
      {
        v18 = (v2 + 16 + 48 * v8);
        do
        {
          v19 = *v18;
          v18 += 6;
          v20 = v19;
          if (v17 <= v19)
          {
            v17 = v20;
          }

          ++v8;
        }

        while (v8 <= v13);
      }

      *(v2 + 48 * v4 + 24) = v17;
      v6 += 48;
      ++v4;
    }

    while (v4 != v5);
  }
}

uint64_t sub_1004A0734(uint64_t a1)
{
  *a1 = off_101867258;
  objc_destroyWeak((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  *a1 = off_10185ACC8;
  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  *a1 = off_10185AD30;
  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1004A07E0(uint64_t a1)
{
  *a1 = off_101867258;
  objc_destroyWeak((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  *a1 = off_10185ACC8;
  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  *a1 = off_10185AD30;
  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  operator delete();
}

uint64_t sub_1004A08AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 144));
  v7 = [WeakRetained isSnappedToRuler];

  if (v7)
  {
    v8 = *(**(a1 + 8) + 40);

    return v8();
  }

  else
  {

    return sub_100392ADC(a1, a2, a3);
  }
}

void sub_1004A097C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      sub_1000C1D48();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1004A0AF0(a1, v9);
    }

    v11 = 48 * v6;
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_1004A0AF0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_1004A0E88(id a1)
{
  v1 = objc_alloc_init(CRLPKImageRendererPool);
  v2 = qword_101A35198;
  qword_101A35198 = v1;
}

void sub_1004A11E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1004A1244(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1004A125C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A12A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004A12E4(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        if ([v7 isCandidateForSize:*(a1 + 64) sixChannelBlending:*(a1 + 65) transparentBlending:{*(a1 + 48), *(a1 + 56)}] && objc_msgSend(v7, "tryLockingRenderer"))
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [[CRLPKImageRendererContainer alloc] initWithSize:*(a1 + 64) sixChannelBlending:*(a1 + 65) transparentBlending:*(a1 + 48), *(a1 + 56)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (([*(*(*(a1 + 40) + 8) + 40) tryLockingRenderer] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137F7A8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137F7D0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137F858();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Should be able to lock new renderer.", v13, v14, v15, v16, v17, v18, v19, "[CRLPKImageRendererPool provideImageRendererOfMinimumSize:sixChannelBlending:transparentBlending:inBlock:]_block_invoke");
      v20 = [NSString stringWithUTF8String:"[CRLPKImageRendererPool provideImageRendererOfMinimumSize:sixChannelBlending:transparentBlending:inBlock:]_block_invoke"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPencilKitRenderer.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:228 isFatal:1 description:"Should be able to lock new renderer."];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v22, v23);
      abort();
    }

    [*(*(a1 + 32) + 8) addObject:*(*(*(a1 + 40) + 8) + 40)];
  }

  return [*(a1 + 32) p_flushUnlockedRenderersLeavingMaxCount:10];
}

void sub_1004A159C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A15E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A1B84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A1BC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A1C0C(uint64_t a1, void *a2)
{
  v3 = a2;
  CGContextSaveGState(*(a1 + 40));
  v4 = *(a1 + 40);
  sub_100139C04(0, 1, &transform, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  CGContextConcatCTM(v4, &transform);
  if (*(a1 + 88) == 1)
  {
    transform.a = 0.0;
    *&transform.b = &transform;
    *&transform.c = 0x2020000000;
    transform.d = 0.0;
    v5 = dispatch_semaphore_create(0);
    v6 = [*(a1 + 32) strokes];
    v7 = *(a1 + 80);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1004A1FE0;
    v28[3] = &unk_101867418;
    p_transform = &transform;
    v8 = v5;
    v29 = v8;
    [v3 renderCGStrokes:v6 clippedToStrokeSpaceRect:v28 scale:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64), *(a1 + 72), v7}];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    CGContextDrawImage(*(a1 + 40), *(a1 + 48), *(*&transform.b + 24));
    CGImageRelease(*(*&transform.b + 24));

LABEL_11:
    _Block_object_dispose(&transform, 8);
    goto LABEL_12;
  }

  if (*(a1 + 89) != 1)
  {
    transform.a = 0.0;
    *&transform.b = &transform;
    *&transform.c = 0x2020000000;
    transform.d = 0.0;
    v24 = 0;
    v25[0] = &v24;
    v25[1] = 0x2020000000;
    v25[2] = 0;
    v14 = dispatch_semaphore_create(0);
    v15 = [*(a1 + 32) strokes];
    v16 = *(a1 + 80);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1004A21B4;
    v20[3] = &unk_1018674C0;
    v22 = &transform;
    v23 = &v24;
    v17 = v14;
    v21 = v17;
    [v3 sixChannelCGRenderStrokes:v15 clippedToStrokeSpaceRect:v20 scale:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64), *(a1 + 72), v16}];

    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    if (*(a1 + 90) == 1)
    {
      CGContextSetBlendMode(*(a1 + 40), kCGBlendModeMultiply);
      p_b = &transform.b;
    }

    else
    {
      p_b = v25;
      v19 = *(a1 + 40);
      if (*(a1 + 91))
      {
LABEL_10:
        CGContextDrawImage(v19, *(a1 + 48), *(*p_b + 24));
        CGImageRelease(*(*&transform.b + 24));
        CGImageRelease(*(v25[0] + 24));

        _Block_object_dispose(&v24, 8);
        goto LABEL_11;
      }

      CGContextSetBlendMode(v19, kCGBlendModeMultiply);
      CGContextDrawImage(*(a1 + 40), *(a1 + 48), *(*&transform.b + 24));
      CGContextSetBlendMode(*(a1 + 40), kCGBlendModePlusLighter);
    }

    v19 = *(a1 + 40);
    goto LABEL_10;
  }

  v9 = dispatch_semaphore_create(0);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 80);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1004A21AC;
  v26[3] = &unk_10183AB38;
  v13 = v9;
  v27 = v13;
  [v3 sixChannelPDFRenderDrawing:v10 context:v11 clippedToStrokeSpaceRect:v26 scale:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64), *(a1 + 72), v12}];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

LABEL_12:
  CGContextRestoreGState(*(a1 + 40));
}

void sub_1004A1FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 128), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1004A1FE0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137F944();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137F958();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137F9E0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPencilKitRenderer drawStrokes:inContext:overTransparentCanvas:]_block_invoke");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPencilKitRenderer.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:406 isFatal:0 description:"renderedCGImage shouldn't be NULL"];
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1004A2124(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A2168(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

intptr_t sub_1004A21B4(uint64_t a1, CGImage *a2, CGImageRef image)
{
  if (image)
  {
    if (a2)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10137FA08();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10137FA1C();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10137FAA4();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v6);
  }

  v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPencilKitRenderer drawStrokes:inContext:overTransparentCanvas:]_block_invoke");
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPencilKitRenderer.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:436 isFatal:0 description:"completionMultiplyImage shouldn't be NULL"];

  if (!a2)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137FACC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137FAF4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137FB7C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPencilKitRenderer drawStrokes:inContext:overTransparentCanvas:]_block_invoke");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPencilKitRenderer.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:437 isFatal:0 description:"completionAddImage shouldn't be NULL"];
  }

LABEL_22:
  *(*(*(a1 + 40) + 8) + 24) = CGImageRetain(image);
  *(*(*(a1 + 48) + 8) + 24) = CGImageRetain(a2);
  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1004A2414(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A2458(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A249C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A24E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1004A262C(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v2 = uuid_compare(a1, a2);
  if (v2 < 0)
  {
    return -1;
  }

  else
  {
    return v2 != 0;
  }
}

id sub_1004A2F18()
{
  qword_101A351C8 = 3;
  v0 = [qword_101A351B8 objectAtIndex:qword_101A351C0];
  v1 = [v0 copyWithZone:0];

  return v1;
}

id sub_1004A2F80()
{
  if (qword_101A351C8 == 3)
  {
    v0 = qword_101A351C0--;
    if (v0 <= 0)
    {
      qword_101A351C0 = qword_1019F0AB0 - 1;
    }

    qword_101A351C8 = 3;
  }

  return sub_1004A2F18();
}

unint64_t sub_1004A43D8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_101A351E0 != -1)
  {
    sub_10137FBA4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  os_unfair_lock_lock(&dword_101A351D8);
  v3 = [qword_101A351D0 objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = [NSLocale characterDirectionForLanguage:v2]== 2;
    v6 = [NSNumber numberWithBool:v5];
    [qword_101A351D0 setObject:v6 forKeyedSubscript:v2];
  }

  os_unfair_lock_unlock(&dword_101A351D8);

LABEL_9:
  return v5;
}

void sub_1004A44C4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_101A351D0;
  qword_101A351D0 = v1;

  dword_101A351D8 = 0;
  __dmb(0xBu);
}

uint64_t sub_1004A4500(uint64_t a1)
{
  v1 = [NSLocale localeWithLocaleIdentifier:a1];
  v2 = [v1 objectForKey:NSLocaleExemplarCharacterSet];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 characterIsMember:97] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1004A457C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([(__CFString *)v3 isEqualToString:@"es-419"])
  {

    v3 = @"es";
  }

  if (v4)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1004A4710;
    v14[3] = &unk_101867548;
    v5 = v3;
    v15 = v5;
    if ([v4 indexOfObjectPassingTest:v14] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_1004A471C;
      v12 = &unk_101867548;
      v6 = v5;
      v13 = v6;
      v7 = [v4 indexOfObjectPassingTest:&v9];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 addObject:{v6, v9, v10, v11, v12}];
      }

      else
      {
        [v4 replaceObjectAtIndex:v7 withObject:{v6, v9, v10, v11, v12}];
      }
    }
  }

  else
  {
    v4 = [NSMutableArray arrayWithObject:v3];
  }

  return v4;
}

id sub_1004A4728(void *a1)
{
  v1 = a1;
  v2 = +[NSLocale preferredLanguages];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (v1[2](v1, v8))
        {
          v9 = sub_1004A457C(v8, v5);

          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_1004A4888(void *a1)
{
  v1 = sub_1004A4728(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 count] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1004A48FC()
{
  if (qword_101A351F0 != -1)
  {
    sub_100076BEC();
  }

  return byte_101A351E8;
}

void sub_1004A5488(uint64_t a1)
{
  [*(a1 + 32) updateMessageLabelWithProgress:*(a1 + 40)];
  if ([*(a1 + 40) isCancelled])
  {
    v2 = *(a1 + 32);
    if ((*(v2 + 17) & 1) == 0)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1004A5590;
      v6[3] = &unk_10183AB38;
      v6[4] = v2;
      v3 = objc_retainBlock(v6);
      *(*(a1 + 32) + 17) = 1;
      [*(a1 + 32) setCancelButtonEnabled:0];
      v4 = [*(a1 + 32) delegate];
      v5 = v4;
      if (v4)
      {
        [v4 determinateProgressViewControllerDidRequestToCancel:*(a1 + 32) completionHandler:v3];
      }

      else
      {
        (v3[2])(v3);
      }
    }
  }
}

void sub_1004A5E60(uint64_t a1)
{
  v1 = [*(a1 + 32) second];
  v1[2]();
}

void sub_1004A5FA8(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004A60A0;
  v5[3] = &unk_1018675D0;
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  v2 = objc_retainBlock(v5);
  v3 = [*(a1 + 32) delegate];
  v4 = v3;
  if (v3)
  {
    [v3 showCancelConfirmationAlertIfNeededForDeterminateProgressViewController:*(a1 + 32) animated:*(a1 + 56) completionHandler:v2];
  }

  else
  {
    (v2[2])(v2, 1);
  }
}

void sub_1004A60A0(void *a1, int a2)
{
  if (!a2)
  {
    v4 = a1[6];
    if (!v4)
    {
      return;
    }

    v7 = a1[5];
    if (v7)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1004A62E4;
      v19[3] = &unk_10183B230;
      v20 = v4;
      dispatch_async(v7, v19);
      v6 = v20;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v3 = a1[4];
  if (!v3[7])
  {
LABEL_5:
    [v3 runCancellationHandlers];
    v4 = a1[6];
    if (!v4)
    {
      return;
    }

    v5 = a1[5];
    if (v5)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1004A62D4;
      block[3] = &unk_10183B230;
      v22 = v4;
      dispatch_async(v5, block);
      v6 = v22;
LABEL_11:

      return;
    }

LABEL_13:
    v8 = v4[2];

    v8();
    return;
  }

  if ([v3[7] isCancelled])
  {
    v3 = a1[4];
    goto LABEL_5;
  }

  v9 = a1[6];
  if (v9)
  {
    v10 = [v9 copy];
    v11 = a1[5];
    v12 = objc_retainBlock(v10);
    v13 = [CRLPair pairWithFirst:v11 second:v12];

    v14 = *(a1[4] + 8);
    if (v14)
    {
      [v14 addObject:v13];
    }

    else
    {
      v15 = [[NSMutableArray alloc] initWithObjects:{v13, 0}];
      v16 = a1[4];
      v17 = *(v16 + 8);
      *(v16 + 8) = v15;
    }
  }

  v18 = *(a1[4] + 56);

  [v18 cancel];
}

id sub_1004A6740(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v3;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [v2 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

void sub_1004A67BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A6800(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A695C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1004A6978(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancelAnimated:1 completionQueue:0 completionHandler:0];
}

void sub_1004A7180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A71C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A7208(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A724C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A7B84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A7BC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A7D9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A7DE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A8984(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A89C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A8CF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004A8D38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004AE600(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004AE644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004AE688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004AE6CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004AFCF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004AFD3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004AFFF4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004B00C0(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004B05CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B0610(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B0770(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B07B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B09A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B09E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B0B60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B0BA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B0D04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B0D48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B0EA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B0EEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B10D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1118(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B14BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1500(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B16A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1808(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B184C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1A0C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1A50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1C58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B1C9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B28A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 9) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    if (!WeakRetained)
    {
      if ([*(a1 + 32) p_shouldSuppressSelectionHighlight])
      {
        return;
      }

      [*(*(a1 + 32) + 40) animationCycleForHide:1];
      v5 = +[NSTimer scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:](NSTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", *(a1 + 32), "p_caretTimerFired:", 0, [*(*(a1 + 32) + 40) caretShouldFade] ^ 1, v4);
      objc_storeWeak((*(a1 + 32) + 24), v5);
      WeakRetained = v5;
    }
  }
}

void sub_1004B2A80(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 0;
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1 && v2 == 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    objc_storeWeak((*(a1 + 32) + 24), 0);
    v2 = WeakRetained;
  }

  v5 = v2;
  [v2 invalidate];
  [*(a1 + 32) p_setCaretOn:(*(a1 + 56) & 1) == 0 forLayer:*(a1 + 48)];
}

void sub_1004B3228(uint64_t a1)
{
  v2 = [*(a1 + 32) _isCancelled];
  v3 = [*(a1 + 32) _dispatchTimer];

  if (v3)
  {
    v4 = [*(a1 + 32) automaticallyCancelPendingBlockUponSchedulingNewBlock];
    v5 = *(a1 + 32);
    if (!v4)
    {
      NSLog(@"[warning]: %@: Ignoring block scheduled for execution %.2f seconds from now.", v5, *(a1 + 48));
      return;
    }

    [v5 _reallyCancel];
  }

  if ((v2 & 1) == 0)
  {
    v6 = [*(a1 + 32) _dispatchQueue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

    v8 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1004B3394;
    handler[3] = &unk_101839D68;
    v9 = *(a1 + 40);
    handler[4] = *(a1 + 32);
    v11 = v9;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(v7);
    [*(a1 + 32) _setDispatchTimer:v7];
  }
}

id sub_1004B3394(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _reallyCancel];
}

void sub_1004B3730(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B3774(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B3904(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B3948(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B3D24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B3D68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B46B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B46F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_1004B4BF4(id a1, CRLCanvasLayout *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1004B4DE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B4E2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B5104(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B5148(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B5370(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B53B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B5878(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B58BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004B5A8C(_OWORD *a1, void *a2)
{
  v2 = a1[3];
  v5[0] = a1[2];
  v5[1] = v2;
  v5[2] = a1[4];
  v3 = [a2 _strokeByAppendingTransform:v5];

  return v3;
}

void sub_1004B6D64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B6DA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B6DEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B6E30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B839C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B83E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8424(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8468(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B84AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B84F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8534(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8578(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B85BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8600(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B86CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8710(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8754(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B87DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8820(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B88A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B88EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8B00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B8B44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B90BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B9100(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B9144(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B9188(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B91CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B9210(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B9254(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004B9298(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BA2B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BA2F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BA338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BA37C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BA3C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BA404(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BA448(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BA48C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004BA8FC(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = CRLShapeLayout;
  return objc_msgSendSuper2(&v2, "offsetGeometryBy:", *(a1 + 40), *(a1 + 48));
}

id sub_1004BA9D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CRLShapeLayout;
  return objc_msgSendSuper2(&v3, "setDynamicGeometry:", v1);
}

void sub_1004BAE88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BAECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BAF10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BAF54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BB10C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BB150(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BB988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BB9CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BBD20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BBD64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004BC34C(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = CRLShapeLayout;
  return objc_msgSendSuper2(&v2, "validate");
}

os_log_t sub_1004BD804(char *category)
{
  v1 = os_log_create("com.apple.freeform", category);

  return v1;
}

id sub_1004BDA08(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

id sub_1004BDAEC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1004BDC14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1004BDC2C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1004BDD6C(uint64_t a1)
{
  v2 = [NSSet setWithSet:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1004BDFFC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1004BE914(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BE958(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BE99C(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_1000C1D48();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_100200D24(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_1004BEDD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BEE14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BF0B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004BF0FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C0310(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C0354(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C0398(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C03DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C0420(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C0464(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1004C128C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] objectForKey:v3];
  if (!v4)
  {
    v4 = [v3 crl_newLayerForRepContentPileClone];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1[5] count])
      {
        do
        {
          v5 = objc_opt_class();
          v6 = [a1[5] objectAtIndex:0];
          v7 = sub_100014370(v5, v6);

          [a1[5] removeObjectAtIndex:0];
          if ([a1[5] count])
          {
            v8 = v7 == 0;
          }

          else
          {
            v8 = 0;
          }
        }

        while (v8);
        if (v7)
        {
          v7 = v7;

          v4 = v7;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    v9 = [v3 name];
    if (v9)
    {
      [v4 setName:v9];
    }

    else
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v4 setName:v11];
    }

    v12 = [v3 delegate];
    [v4 setDelegate:v12];

    [v3 bounds];
    [v4 setBounds:?];
    [v3 position];
    [v4 setPosition:?];
    [v3 anchorPoint];
    [v4 setAnchorPoint:?];
    if (v3)
    {
      [v3 transform];
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      v22 = v30;
      v23 = v31;
      v24 = v32;
      v25 = v33;
      [v4 setTransform:&v22];
      [v3 sublayerTransform];
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      [v4 setTransform:&v22];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
    }

    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    [v4 setSublayerTransform:{&v22, v14, v15, v16, v17, v18, v19, v20, v21}];
    [v4 setHidden:{objc_msgSend(v3, "isHidden")}];
    [v3 opacity];
    [v4 setOpacity:?];
    [v4 setMasksToBounds:{objc_msgSend(v3, "masksToBounds")}];
    [a1[4] setObject:v4 forKey:v3];
    [a1[6] addObject:v4];
  }

  return v4;
}

void sub_1004C155C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C15A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C15E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C1628(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C166C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C16B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C16F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C1738(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C177C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C17C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C1804(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C1848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C1B34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C1B78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C1F40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C1F84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1004C321C(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

double sub_1004C3240(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    a2 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return a2;
}

double sub_1004C32D4(double a1, double a2, double a3)
{
  if (a2 >= a3)
  {
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013835F8();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138360C(v6, v7);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013836B8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v8, v6);
    }

    v9 = [NSString stringWithUTF8String:"CGFloat CRLNormalize(CGFloat, CGFloat, CGFloat)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLMath.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:88 isFatal:0 description:"max >= min!"];
  }

  return (a1 - a2) / (a3 - a2);
}

void sub_1004C3420(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C3464(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1004C3FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1004C4000(uint64_t a1)
{
  result = [*(a1 + 32) getRGBAComponents:v4];
  v3 = fmax(v4[1] * 0.715200007 + v4[0] * 0.212599993 + v4[2] * 0.0722000003 * v4[3], 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void sub_1004C51F4(void *a1)
{
  v1 = a1;
  v2 = dispatch_queue_create("com.apple.freeform.CRLImageItemImporter", 0);
  v3 = v1[6];
  v1[6] = v2;

  v4 = [[CRLBasicProgress alloc] initWithMaxValue:1.0];
  v5 = v1[7];
  v1[7] = v4;
}

void sub_1004C554C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_1013836E0();
    }

    v8 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_1013836F4(v8, v7);
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004C5778;
    block[3] = &unk_10183FC10;
    block[4] = v10;
    v20 = v9;
    dispatch_async(v11, block);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    v12 = [CRLImageDataHelper alloc];
    v13 = [*(a1 + 32) boardItemFactory];
    v14 = [v13 assetOwner];
    v15 = [(CRLImageDataHelper *)v12 initWithImageData:v6 assetOwner:v14];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1004C5784;
    v17[3] = &unk_101868968;
    v16 = *(a1 + 40);
    v17[4] = *(a1 + 32);
    v18 = v16;
    [(CRLImageDataHelper *)v15 generateThumbnailImageDataWithCompletionHandler:v17];
  }
}

void sub_1004C5734(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1004C5784(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 72), a2);
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004C584C;
  v8[3] = &unk_10183FC10;
  v8[4] = v6;
  v9 = v5;
  dispatch_async(v7, v8);
}

void sub_1004C5A48(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004C5AFC;
  v8[3] = &unk_10185CC98;
  v8[4] = v3;
  v5 = v2;
  v7 = a1[6];
  v6 = a1[7];
  v9 = v5;
  v11 = v6;
  v10 = v7;
  dispatch_async(v4, v8);
}

void sub_1004C5AFC(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 88));
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 48);

    [v3 p_finishImportingWithInfo:0 error:0 completionHandler:v4];
  }

  else
  {
    v5 = [v3[12] error];
    v6 = *(a1 + 32);
    if (v5)
    {
      v15 = v5;
      [v6 p_finishImportingWithInfo:0 error:v5 completionHandler:*(a1 + 48)];
    }

    else
    {
      v7 = [v6[12] compatibilityLevel];
      v8 = *(a1 + 32);
      if (*(a1 + 40) && (v8[92] & 1) == 0 && (v11 = *(a1 + 56), v11 >= 4) && (v7 >= 3 ? (v12 = v7 < v11) : (v12 = 0), v12))
      {
        v8[92] = 1;
        v14 = *(a1 + 32);
        v13 = *(a1 + 40);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1004C5CBC;
        v16[3] = &unk_1018689B8;
        v16[4] = v14;
        v18 = v11;
        v19 = v7;
        v17 = *(a1 + 48);
        [v13 boardItemImporter:v14 needsMediaCompatibilityFeedbackWithReasons:2 forMediaType:2 usingBlock:v16];
      }

      else
      {
        v10 = *(a1 + 48);
        v9 = *(a1 + 56);

        [v8 p_importImageFromDataConvertingIfNeededToRequiredCompatibilityLevel:v9 fromCompatibilityLevel:v7 completionHandler:v10];
      }
    }
  }
}

void sub_1004C5CBC(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C5D60;
  block[3] = &unk_101868990;
  block[4] = v3;
  v8 = a2;
  v7 = *(a1 + 48);
  v6 = v2;
  dispatch_async(v4, block);
}

id sub_1004C5D60(uint64_t a1)
{
  if (atomic_load((*(a1 + 32) + 88)))
  {
    return [*(a1 + 32) p_finishImportingWithInfo:0 error:0 completionHandler:*(a1 + 40)];
  }

  if (*(a1 + 64) == 1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 3;
  }

  return [*(a1 + 32) p_importImageFromDataConvertingIfNeededToRequiredCompatibilityLevel:v3 fromCompatibilityLevel:*(a1 + 56) completionHandler:*(a1 + 40)];
}

void sub_1004C6134(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004C61CC;
  v4[3] = &unk_10183FC10;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_1004C61CC(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setValue:1.0];
  if (atomic_load((*(a1 + 32) + 88)))
  {
    v3 = 0;
LABEL_3:
    [*(a1 + 32) p_finishImportingWithInfo:0 error:v3 completionHandler:*(a1 + 40)];
    obj = 0;
    goto LABEL_6;
  }

  obj = [*(*(a1 + 32) + 104) convertedMediaData];
  v3 = [*(*(a1 + 32) + 104) error];
  if (!obj)
  {
    goto LABEL_3;
  }

  objc_storeStrong((*(a1 + 32) + 64), obj);
  [*(a1 + 32) p_importInfoFromDataWithCompletionHandler:*(a1 + 40)];
LABEL_6:
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  *(v4 + 104) = 0;
}

id sub_1004C6B08(uint64_t a1)
{
  atomic_fetch_add((*(a1 + 32) + 88), 1u);
  [*(*(a1 + 32) + 96) cancel];
  v2 = *(*(a1 + 32) + 104);

  return [v2 cancel];
}

void sub_1004C6E38(void *a1, double *a2, void *a3)
{
  v6 = objc_opt_class();
  v7 = sub_100013F00(v6, a1);
  v8 = [v7 p_newColorAtFraction:*a2];
  v13 = [v7 p_newColorInShadingColorSpaceFromColor:v8];

  [v13 redComponent];
  *a3 = v9;
  [v13 greenComponent];
  a3[1] = v10;
  [v13 blueComponent];
  a3[2] = v11;
  [v13 alphaComponent];
  a3[3] = v12;
}

void sub_1004C6EEC(void *a1)
{
  v2 = objc_opt_class();
  v3 = sub_100013F00(v2, a1);
}

uint64_t sub_1004C737C(void *a1, void *a2)
{
  if (!a1 || !a2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013837E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013837FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"NSComparisonResult gradientStopCompare(id _Nonnull file:id _Nonnull lineNumber:void * _Nonnull)"] isFatal:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGradientFill.m"] description:1453, 0, "Passing in nil is invalid."];
  }

  v4 = objc_opt_class();
  v5 = sub_100013F00(v4, a1);
  v6 = objc_opt_class();
  v7 = sub_100013F00(v6, a2);
  [v5 fraction];
  v9 = v8;
  [v7 fraction];
  if (v9 >= v10)
  {
    return v10 < v9;
  }

  else
  {
    return -1;
  }
}

void sub_1004C9748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1004C9760(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 fraction];
  v8 = v7;
  result = [*(a1 + 32) fraction];
  if (v8 > v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

BOOL sub_1004CC454(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 > v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

int8x16_t sub_1004CC474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  v3 = *(a2 + 128);
  if (v2 == v3)
  {
    result = vextq_s8(v2[1], v2[1], 8uLL);
    v2[1] = result;
  }

  else
  {
    if (v2)
    {
      v4 = 3;
      if (v2[1].i64[0] == a1)
      {
        v4 = 2;
      }

      v2->i64[v4] = a2;
    }

    if (v3)
    {
      v5 = 3;
      if (v3[1].i64[0] == a2)
      {
        v5 = 2;
      }

      v3->i64[v5] = a1;
    }

    *(a1 + 128) = v3;
    *(a2 + 128) = v2;
  }

  return result;
}

void sub_1004CC4D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if ((v2 & 8) == 0)
  {
    *(a2 + 64) = v2 | 8;
    operator new();
  }
}

void sub_1004CC578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1004CC598(uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_1000C1D48();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      sub_1003131A8(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1004D2908(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t **sub_1004CC698(uint64_t **result)
{
  v1 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v3 = 0;
    do
    {
      v5 = *v1;
      v4 = v1[1];
      v1 += 3;
      v3 -= 1431655765 * ((v4 - v5) >> 4);
    }

    while (v1 != v2);
    if (v3)
    {
      operator new[]();
    }
  }

  return result;
}

uint64_t sub_1004CCA8C(uint64_t a1)
{
  *a1 = off_101868C90;
  sub_1004CCBA8(a1);
  sub_1004CCCF8(a1);
  *(a1 + 80) = *(a1 + 56);
  *(a1 + 32) = 0;
  *(a1 + 220) = 0;
  sub_10041F170(a1 + 248);
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    *(a1 + 176) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    *(a1 + 152) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    *(a1 + 120) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    *(a1 + 96) = v7;
    operator delete(v7);
  }

  v9 = (a1 + 56);
  sub_1004D28B4(&v9);
  return a1;
}

void sub_1004CCB70(uint64_t a1)
{
  sub_1004CCA8C(a1);

  operator delete();
}

void sub_1004CCBA8(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[5] = *(v2 + 144);
    operator delete();
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[19] = a1[18];
  sub_1004CCC34(a1);
  a1[22] = a1[21];
  a1[25] = a1[24];
}

void sub_1004CCC34(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (v1 != *(a1 + 232))
  {
    v2 = (*v1)[4];
    if (v2)
    {
      *(*(v2 + 56) + 48) = 0;
      operator delete();
    }

    sub_1004D2670(*v1);
    operator delete();
  }

  v3 = (a1 + 224);

  sub_100311EA4(v3, 0);
}

uint64_t sub_1004CCCF8(uint64_t a1)
{
  v2 = a1 + 56;
  result = sub_1004D29B0(a1 + 56, *(a1 + 56));
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  if (v4 != v5)
  {
    do
    {
      result = *v4;
      if (*v4)
      {
        operator delete[]();
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = *(a1 + 88);
  }

  *(a1 + 96) = v4;
  return result;
}

void sub_1004CCD70(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    sub_1004D2A18(*(a1 + 56), *(a1 + 64), &v19);
    *(a1 + 32) = 1;
  }

  v2 = *(a1 + 56);
  for (i = *(a1 + 64); i != v2; v2 = *(a1 + 56))
  {
    v4 = *(i - 8);
    i -= 8;
    v5 = *(*v4 + 8);
    v7 = *(a1 + 120);
    v6 = *(a1 + 128);
    if (v7 >= v6)
    {
      v9 = *(a1 + 112);
      v10 = v7 - v9;
      v11 = (v7 - v9) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        sub_1000C1D48();
      }

      v13 = v6 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        sub_1000E7D14(a1 + 112, v14);
      }

      v15 = v11;
      v16 = (8 * v11);
      v17 = &v16[-v15];
      *v16 = v5;
      v8 = (v16 + 1);
      memcpy(v17, v9, v10);
      v18 = *(a1 + 112);
      *(a1 + 112) = v17;
      *(a1 + 120) = v8;
      *(a1 + 128) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 8);
    }

    *(a1 + 120) = v8;
    sub_1004D2624(*(a1 + 112), v8, &v20, (v8 - *(a1 + 112)) >> 3);
  }

  *(a1 + 80) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 221) = 1;
}

uint64_t **sub_1004CCEC4(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  if (a4)
  {
    *(a1 + 220) = 1;
  }

  *(a1 + 32) = 0;
  return sub_1004CC698(a2);
}

BOOL sub_1004CCEF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 == 3)
  {
    if (*(a2 + 116) != -1)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v3 = *(a2 + 116);
    }

    else
    {
      if (v2 != 1)
      {
        goto LABEL_11;
      }

      v3 = *(a2 + 116);
      if (v3 < 0)
      {
        v3 = -v3;
      }
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

LABEL_11:
  v4 = *(a1 + 8);
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v10 = *(a2 + 120);
      v6 = v10 >> 31;
      v11 = v10 == 0;
      v12 = v10 < 0;
      v8 = v10 != 0;
      v13 = !v12 && !v11;
      if (v2 == 2)
      {
        v8 = v13;
      }

      goto LABEL_25;
    }

    if (v4 == 2)
    {
      v5 = *(a2 + 120);
      v6 = v5 >= 0;
      v7 = v5 == 0;
      v8 = v5 < 1;
      if (v2 != 2)
      {
        v8 = v7;
      }

LABEL_25:
      if (v2 == 3)
      {
        return v6;
      }

      else
      {
        return v8;
      }
    }

    return 0;
  }

  if (v4 != 3)
  {
    return v4 == 4;
  }

  v14 = *(a2 + 120);
  v15 = v14 >= 0;
  v16 = v14 == 0;
  v17 = v14 < 1;
  if (v2 != 2)
  {
    v17 = v16;
  }

  if (v2 == 3)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  return v18 ^ (*(*(a2 + 184) + 8) != 0);
}

uint64_t sub_1004CD008(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 184);
  v3 = *(v2 + 8);
  v4 = *(a2 + 136);
  if (v4)
  {
    while (1)
    {
      v5 = *(v4 + 184);
      if (*(v5 + 8) == v3 && *(v5 + 12) != 1)
      {
        break;
      }

      v4 = *(v4 + 136);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    if (*(result + 12))
    {
      v8 = *(v4 + 112);
      v7 = *(v4 + 116);
      if (v8 * v7 < 0 && (v7 >= 0 ? (v9 = *(v4 + 116)) : (v9 = -v7), v9 < 2))
      {
        if (*(v2 + 12))
        {
          v11 = 1;
        }

        else
        {
          v11 = *(a2 + 112);
        }
      }

      else
      {
        v10 = *(a2 + 112);
        if (v10 * v8 < 0)
        {
          v10 = 0;
        }

        v11 = v7 + v10;
      }

      v12 = *(v4 + 120);
      *(a2 + 116) = v11;
      *(a2 + 120) = v12;
      v6 = *(v4 + 144);
      goto LABEL_17;
    }

    v15 = *(v4 + 120);
    *(a2 + 116) = *(a2 + 112);
    *(a2 + 120) = v15;
    v6 = *(v4 + 144);
LABEL_25:
    if (v6 != a2)
    {
      v16 = *(a2 + 120);
      do
      {
        v17 = *(v6 + 184);
        if (*(v17 + 8) != v3 && (*(v17 + 12) & 1) == 0)
        {
          v16 = v16 == 0;
          *(a2 + 120) = v16;
        }

        v6 = *(v6 + 144);
      }

      while (v6 != a2);
    }

    return result;
  }

LABEL_5:
  *(a2 + 116) = *(a2 + 112);
  v6 = *(result + 40);
  if (!*(result + 12))
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v6 != a2)
  {
    v13 = *(a2 + 120);
    do
    {
      v14 = *(v6 + 184);
      if (*(v14 + 8) != v3 && (*(v14 + 12) & 1) == 0)
      {
        v13 += *(v6 + 112);
        *(a2 + 120) = v13;
      }

      v6 = *(v6 + 144);
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t sub_1004CD13C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (*(result + 12))
  {
    if (v2 != a2)
    {
      v3 = *(a2 + 116);
      v4 = *(a2 + 120);
      do
      {
        v5 = *(v2 + 184);
        if (*(v5 + 8) == 1)
        {
          v4 += *(v2 + 112);
          *(a2 + 120) = v4;
        }

        else if ((*(v5 + 12) & 1) == 0)
        {
          v3 += *(v2 + 112);
          *(a2 + 116) = v3;
        }

        v2 = *(v2 + 144);
      }

      while (v2 != a2);
    }
  }

  else
  {
    if (v2 == a2)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + 184);
        if (*(v8 + 8) == 1)
        {
          ++v6;
        }

        else
        {
          v7 += *(v8 + 12) ^ 1;
        }

        v2 = *(v2 + 144);
      }

      while (v2 != a2);
      v9 = v7 & 1;
      v10 = v6 & 1;
    }

    *(a2 + 116) = v9;
    *(a2 + 120) = v10;
  }

  return result;
}

uint64_t sub_1004CD1F4(uint64_t a1, int *a2)
{
  v2 = *(a2 + 12);
  v3 = *(a1 + 96);
  if (v2 != v3)
  {
    return v2 > v3;
  }

  v6 = *a2;
  v5 = *(a2 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a2 + 6);
  v9 = *(a2 + 7);
  v11 = (v9 - v5);
  v12 = (v10 - *a2);
  v13 = (*a2 - v7) * v11 - (v5 - v8) * v12;
  if (v13 == 0.0)
  {
    v15 = *(a1 + 176);
    if ((*(v15 + 64) & 4) != 0 || v8 <= v9)
    {
      v17 = *(a2 + 22);
      if ((*(v17 + 64) & 4) != 0 || v9 <= v8)
      {
        result = *(a2 + 192);
        if (*(a1 + 8) == v5 && *(**(a1 + 184) + 8) == v5 && *(a1 + 192) == result)
        {
          v20 = 48;
          if (*(a1 + 112) > 0)
          {
            v20 = 56;
          }

          v21 = *(*(v15 + v20) + v20);
          v22 = (v5 - v21[1]);
          if ((*a1 - *v21) * (v8 - v5) - v22 * (v7 - *a1) == 0.0)
          {
            return 1;
          }

          else
          {
            v23 = 48;
            if (a2[28] > 0)
            {
              v23 = 56;
            }

            return result == -v22 * (**(*(v17 + v23) + v23) - v6) + (v6 - *v21) * (*(*(*(v17 + v23) + v23) + 8) - v5) > 0.0;
          }
        }
      }

      else
      {
        v18 = 56;
        if (a2[28] > 0)
        {
          v18 = 48;
        }

        return v12 * (*(*(v17 + v18) + 8) - v9) - v11 * (**(v17 + v18) - v10) >= 0.0;
      }
    }

    else
    {
      v16 = 56;
      if (*(a1 + 112) > 0)
      {
        v16 = 48;
      }

      return (v7 - v6) * (*(*(v15 + v16) + 8) - v8) - (v8 - v5) * (**(v15 + v16) - v7) <= 0.0;
    }
  }

  else
  {
    return v13 < 0.0;
  }

  return result;
}

uint64_t sub_1004CD3EC(uint64_t result, uint64_t a2)
{
  v3 = (result + 40);
  v4 = *(result + 40);
  if (v4)
  {
    result = sub_1004CD1F4(*(result + 40), a2);
    if (result)
    {
      while (1)
      {
        v5 = v4;
        v4 = *(v4 + 144);
        if (!v4)
        {
          break;
        }

        result = sub_1004CD1F4(v4, a2);
        if ((result & 1) == 0)
        {
          if (*(v5 + 196) == 2)
          {
            v5 = v4;
          }

          v6 = *(v5 + 144);
          goto LABEL_12;
        }
      }

      if (*(v5 + 196) == 2)
      {
        return result;
      }

      v6 = 0;
LABEL_12:
      *(a2 + 144) = v6;
      v3 = (v5 + 144);
      v7 = *(v5 + 144);
      if (v7)
      {
        *(v7 + 136) = a2;
      }

      *(a2 + 136) = v5;
    }

    else
    {
      *(a2 + 136) = 0;
      *(a2 + 144) = v4;
      *(v4 + 136) = a2;
    }
  }

  else
  {
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
  }

  *v3 = a2;
  return result;
}

uint64_t sub_1004CD4A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  if (v2 != *(result + 64))
  {
    v4 = result;
    do
    {
      v5 = **v2;
      if (*(v5 + 8) != a2)
      {
        break;
      }

      *(v4 + 80) = v2 + 1;
      v6 = *(v5 + 64);
      if ((v6 & 1) == 0)
      {
        operator new();
      }

      if ((v6 & 2) == 0)
      {
        operator new();
      }

      MEMORY[0xC0] = 1;
      sub_1004CD3EC(v4, 0);
      if (*(MEMORY[0xB8] + 12) == 1)
      {
        sub_1004CD13C(v4, 0);
        v7 = *(v4 + 12);
        if (v7 == 3)
        {
          v8 = MEMORY[0x78] >> 31;
          v9 = MEMORY[0x74] >> 31;
        }

        else if (v7 == 2)
        {
          v8 = MEMORY[0x78] > 0;
          v9 = MEMORY[0x74] > 0;
        }

        else
        {
          v8 = MEMORY[0x78] != 0;
          v9 = MEMORY[0x74] != 0;
        }

        v10 = *(v4 + 8);
        v11 = !v9 && !v8;
        if (v10 != 2)
        {
          v11 = !v8;
        }

        result = v10 == 1 ? v8 : v11;
      }

      else
      {
        sub_1004CD008(v4, 0);
        result = sub_1004CCEF0(v4, 0);
      }

      if (result)
      {
        sub_1004CE688();
      }

      if (MEMORY[0x38] == MEMORY[8])
      {
        MEMORY[0xA0] = *(v4 + 48);
        *(v4 + 48) = 0;
      }

      else
      {
        v13 = *(v4 + 120);
        v12 = *(v4 + 128);
        if (v13 >= v12)
        {
          v15 = *(v4 + 112);
          v16 = v13 - v15;
          v17 = (v13 - v15) >> 3;
          v18 = v17 + 1;
          if ((v17 + 1) >> 61)
          {
            sub_1000C1D48();
          }

          v19 = v12 - v15;
          if (v19 >> 2 > v18)
          {
            v18 = v19 >> 2;
          }

          v20 = v19 >= 0x7FFFFFFFFFFFFFF8;
          v21 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v20)
          {
            v21 = v18;
          }

          if (v21)
          {
            sub_1000E7D14(v4 + 112, v21);
          }

          v22 = v17;
          v23 = (8 * v17);
          v24 = &v23[-v22];
          *v23 = MEMORY[0x38];
          v14 = (v23 + 1);
          memcpy(v24, v15, v16);
          v25 = *(v4 + 112);
          *(v4 + 112) = v24;
          *(v4 + 120) = v14;
          *(v4 + 128) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v13 = MEMORY[0x38];
          v14 = (v13 + 8);
        }

        *(v4 + 120) = v14;
        result = sub_1004D2624(*(v4 + 112), v14, &v26, (v14 - *(v4 + 112)) >> 3);
      }

      v2 = *(v4 + 80);
    }

    while (v2 != *(v4 + 64));
  }

  return result;
}

void sub_1004CDCA0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if ((*(*(a2 + 184) + 12) & 1) == 0)
  {
    v5 = *(a2 + 136);
    v6 = !*(a2 + 128) || v5 == 0;
    if (!v6 && (*(*(v5 + 184) + 12) & 1) == 0 && *(v5 + 128))
    {
      if ((v9 = a3[1], v10 = *(a2 + 56), v9 >= v10 + 2) && v9 >= *(v5 + 56) + 2 || *(a2 + 8) <= v9 && *(v5 + 8) <= v9)
      {
        if (a4)
        {
          if (sub_1004D2860(a3, *(a2 + 136), (v5 + 48)) > 0.25)
          {
            return;
          }

          v9 = a3[1];
          v10 = *(a2 + 56);
        }

        else if (*(a2 + 96) != *(v5 + 96))
        {
          return;
        }

        if ((*a3 - *(a2 + 48)) * (*(v5 + 56) - v9) - (v9 - v10) * (*(v5 + 48) - *a3) == 0.0)
        {
          v11 = **(a2 + 128);
          v12 = **(v5 + 128);
          if (v11 == v12)
          {
            sub_1004CE720(a1, v5, a2, a3);
          }

          else
          {
            if (v11 >= v12)
            {
              v13 = v5;
              v14 = a2;
            }

            else
            {
              v13 = a2;
              v14 = v5;
            }

            sub_1004CEA8C(a1, v13, v14);
          }

          *(v5 + 196) = 2;
          *(a2 + 196) = 1;
        }
      }
    }
  }
}

uint64_t sub_1004CDE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  if (*(a1 + 220) == 1)
  {
    if (*(*(a2 + 184) + 12))
    {
      v8 = a2;
      if (*(*(a3 + 184) + 12))
      {
        return 0;
      }

LABEL_7:
      if (*(v5 + 196))
      {
        sub_1004CE920(a1, v5);
      }

      v9 = *(v5 + 116);
      if (v9 >= 0)
      {
        v10 = *(v5 + 116);
      }

      else
      {
        v10 = -v9;
      }

      if (v10 != 1)
      {
        return 0;
      }

      if (*(a1 + 8) == 2)
      {
        if (!*(v5 + 128))
        {
          return 0;
        }
      }

      else if (!*(*(v5 + 184) + 8))
      {
        return 0;
      }

      v28 = *(a1 + 12);
      if (v28 != 3)
      {
        if (v28 == 2 && v9 != 1)
        {
          return 0;
        }

LABEL_74:
        if (*(v8 + 128))
        {
          v23 = sub_1004CE960(a1, v8, a4);
          v31 = *(v8 + 128);
          v32 = 24;
          if (*(v31 + 16) == v8)
          {
            v32 = 16;
          }

          *(v31 + v32) = 0;
          *(v8 + 128) = 0;
          v38 = *(a1 + 272);
          if (v38)
          {
            v39 = *(*v38 + 48);
LABEL_125:
            v39();
            return v23;
          }
        }

        else
        {
          v36 = **(v8 + 184);
          v37 = *a4 == *v36 && a4[1] == *(v36 + 8);
          if (!v37 || (*(v36 + 64) & 3) != 0 || (v41 = sub_1004CF6C0(v8)) == 0 || (v42 = v41[16]) == 0)
          {
            sub_1004CE600();
          }

          *(v8 + 128) = v42;
          v43 = *(v8 + 112);
          v44 = v41[16];
          v45 = v43 <= 0;
          if (v43 <= 0)
          {
            v46 = v41;
          }

          else
          {
            v46 = v8;
          }

          if (v45)
          {
            v47 = v8;
          }

          else
          {
            v47 = v41;
          }

          v44[2] = v46;
          v44[3] = v47;
          return v44[4];
        }

        return v23;
      }

      if (v9 == -1)
      {
        goto LABEL_74;
      }

      return 0;
    }

    if (*(*(a3 + 184) + 12))
    {
      v8 = a3;
      v5 = a2;
      goto LABEL_7;
    }
  }

  if (*(a2 + 196))
  {
    sub_1004CE920(a1, a2);
  }

  if (*(a3 + 196))
  {
    sub_1004CE920(a1, a3);
  }

  v11 = *(*(a2 + 184) + 8);
  v12 = *(*(a3 + 184) + 8);
  v13 = *(a1 + 12);
  if (v11 == v12)
  {
    v14 = *(a2 + 116);
    if (!v13)
    {
      *(a2 + 116) = *(a3 + 116);
      *(a3 + 116) = v14;
      goto LABEL_34;
    }

    if (*(a3 + 112) + v14)
    {
      v15 = *(a3 + 112) + v14;
    }

    else
    {
      v15 = -v14;
    }

    *(a2 + 116) = v15;
    v16 = *(a3 + 116);
    v17 = v16 - *(a2 + 112);
    if (v17)
    {
      *(a3 + 116) = v17;
    }

    else
    {
      *(a3 + 116) = -v16;
    }
  }

  else
  {
    if (!v13)
    {
      *(a2 + 120) = *(a2 + 120) == 0;
      *(a3 + 120) = *(a3 + 120) == 0;
      goto LABEL_34;
    }

    *(a2 + 120) += *(a3 + 112);
    *(a3 + 120) -= *(a2 + 112);
  }

  if (v13 > 1)
  {
    v18 = *(a2 + 116);
    v20 = 0;
    if (v13 == *(a1 + 16))
    {
      v19 = *(a3 + 116);
    }

    else
    {
      v18 = -v18;
      v19 = -*(a3 + 116);
    }

    goto LABEL_39;
  }

  v13 = 1;
LABEL_34:
  v18 = *(a2 + 116);
  if (v18 < 0)
  {
    v18 = -v18;
  }

  v19 = *(a3 + 116);
  if (v19 < 0)
  {
    v19 = -v19;
  }

  v20 = 1;
LABEL_39:
  v21 = *(a2 + 128);
  if (!v21 && v18 > 1)
  {
    return 0;
  }

  v22 = *(a3 + 128);
  if (!v22 && v19 > 1)
  {
    return 0;
  }

  if (!v21)
  {
    if (v22)
    {
      a2 = a3;
      goto LABEL_69;
    }

    if (v20)
    {
      v33 = *(a2 + 120);
      if (v33 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = -v33;
      }

      LODWORD(v35) = *(a3 + 120);
      if (v35 >= 0)
      {
        v35 = v35;
      }

      else
      {
        v35 = -v35;
      }
    }

    else
    {
      v34 = *(a2 + 120);
      if (v13 == *(a1 + 16))
      {
        v35 = *(a3 + 120);
      }

      else
      {
        v34 = -v34;
        v35 = -*(a3 + 120);
      }
    }

    if (v11 == v12)
    {
      v23 = 0;
      if (v18 != 1 || v19 != 1)
      {
        return v23;
      }

      v40 = *(a1 + 8);
      if (v40 != 4)
      {
        if (v40 == 3)
        {
          if (v11 == 1 && v34 >= 1 && v35 > 0)
          {
            goto LABEL_123;
          }

          v23 = 0;
          if (v11)
          {
            return v23;
          }

          goto LABEL_118;
        }

        if (v40 == 2)
        {
          v23 = 0;
LABEL_118:
          if (v34 > 0 || v35 >= 1)
          {
            return v23;
          }

          goto LABEL_123;
        }

        v23 = 0;
        if (v34 < 1 || v35 < 1)
        {
          return v23;
        }
      }
    }

LABEL_123:
    sub_1004CDB54();
  }

  if (!v22)
  {
LABEL_69:
    v23 = sub_1004CE960(a1, a2, a4);
    v30 = *(a1 + 272);
    if (!v30)
    {
LABEL_72:
      sub_1004CC474(v6, v5);
      return v23;
    }

    v27 = *(*v30 + 48);
LABEL_71:
    v27();
    goto LABEL_72;
  }

  if (v18 <= 1 && v19 <= 1 && (v11 == v12 || *(a1 + 8) == 4))
  {
    if (v21 == v22 || *(v21 + 16) == a2)
    {
      sub_1004CE720(a1, a2, a3, a4);
      sub_1004CDB54();
    }

    v23 = sub_1004CE960(a1, a2, a4);
    sub_1004CE960(v23, v5, a4);
    v25 = *(a1 + 272);
    if (!v25)
    {
      goto LABEL_72;
    }

    (*(*v25 + 48))(v25, v6, v6 + 48, v5, v5 + 48, v23);
    v26 = *(a1 + 272);
    if (!v26)
    {
      goto LABEL_72;
    }

    v27 = *(*v26 + 48);
    goto LABEL_71;
  }

  v23 = sub_1004CE720(a1, a2, a3, a4);
  v29 = *(a1 + 272);
  if (v29 && v23)
  {
    v39 = *(*v29 + 48);
    goto LABEL_125;
  }

  return v23;
}

void sub_1004CE488(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if ((*(*(a2 + 184) + 12) & 1) == 0)
  {
    v5 = *(a2 + 144);
    v6 = !*(a2 + 128) || v5 == 0;
    if (!v6 && (*(*(v5 + 184) + 12) & 1) == 0 && *(v5 + 128))
    {
      if ((v9 = a3[1], v10 = *(a2 + 56), v9 >= v10 + 2) && v9 >= *(v5 + 56) + 2 || *(a2 + 8) <= v9 && *(v5 + 8) <= v9)
      {
        if (a4)
        {
          if (sub_1004D2860(a3, *(a2 + 144), (v5 + 48)) > 0.35)
          {
            return;
          }

          v9 = a3[1];
          v10 = *(a2 + 56);
        }

        else if (*(a2 + 96) != *(v5 + 96))
        {
          return;
        }

        if ((*a3 - *(a2 + 48)) * (*(v5 + 56) - v9) - (v9 - v10) * (*(v5 + 48) - *a3) == 0.0)
        {
          v11 = **(a2 + 128);
          v12 = **(v5 + 128);
          if (v11 == v12)
          {
            sub_1004CE720(a1, a2, v5, a3);
          }

          else
          {
            if (v11 >= v12)
            {
              v13 = v5;
              v14 = a2;
            }

            else
            {
              v13 = a2;
              v14 = v5;
            }

            sub_1004CEA8C(a1, v13, v14);
          }

          *(a2 + 196) = 2;
          *(v5 + 196) = 1;
        }
      }
    }
  }
}

uint64_t sub_1004CE720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 196))
  {
    sub_1004CE920(a1, a2);
  }

  if (*(a3 + 196))
  {
    sub_1004CE920(a1, a3);
  }

  v7 = *(a2 + 128);
  v8 = v7[2];
  v9 = *(a3 + 128);
  if ((v8 == a2) == (*(v9 + 16) == a3))
  {
    if ((*(*(a2 + 176) + 64) & 3) == 0)
    {
      if ((*(*(a3 + 176) + 64) & 3) == 0)
      {
        v12 = 0;
        *(a1 + 221) = 0;
        return v12;
      }

      v7 = *(a3 + 128);
      v8 = *(v9 + 16);
    }

    v10 = v7[4];
    v7[2] = v7[3];
    v7[3] = v8;
    v7[4] = *(v10 + 48);
  }

  v11 = sub_1004CE960(a1, a2, a4);
  v12 = v11;
  v13 = *(a2 + 128);
  v14 = *(a3 + 128);
  if (v13 != v14)
  {
    if (*(*(a2 + 184) + 12) == 1)
    {
      if ((*(a2 + 112) & 0x80000000) == 0)
      {
LABEL_13:
        v15 = a3;
        v16 = a2;
LABEL_31:
        sub_1004CEA8C(v11, v15, v16);
        return v12;
      }
    }

    else if (*v13 >= *v14)
    {
      goto LABEL_13;
    }

    v15 = a2;
    v16 = a3;
    goto LABEL_31;
  }

  v13[4] = v11;
  if (*(a1 + 33) == 1)
  {
    v17 = *(a2 + 136);
    if (v17)
    {
      while (1)
      {
        if ((*(v17[23] + 12) & 1) == 0)
        {
          v18 = v17[16];
          if (v18)
          {
            break;
          }
        }

        v17 = v17[17];
        if (!v17)
        {
          goto LABEL_19;
        }
      }

      for (i = v18[1]; i; v18[1] = i)
      {
        if (*(i + 32))
        {
          break;
        }

        i = *(i + 8);
      }

      if (v18 == v13)
      {
        goto LABEL_45;
      }

      v24 = v18;
      do
      {
        v24 = v24[1];
        if (v24)
        {
          v25 = v24 == v13;
        }

        else
        {
          v25 = 1;
        }
      }

      while (!v25);
      if (v24)
      {
LABEL_45:
        v18[1] = v13[1];
      }
    }

    else
    {
LABEL_19:
      v18 = 0;
    }

    v13[1] = v18;
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(v19 + 24);
    *(*(v19 + 16) + 128) = 0;
    *(v20 + 128) = 0;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    v12 = v13[4];
  }

  v21 = v13[1];
  if (v21 && !v21[2])
  {
    do
    {
      if (v21[4])
      {
        break;
      }

      v21 = v21[1];
    }

    while (v21);
    v13[1] = v21;
  }

  return v12;
}

void sub_1004CE920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 196);
  *(a2 + 196) = 0;
  if (v2 == 2)
  {
    *(*(a2 + 144) + 196) = 0;
  }

  else
  {
    *(*(a2 + 136) + 196) = 0;
  }

  sub_1004CDB54();
}

uint64_t sub_1004CE960(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 128);
  v4 = *(v3 + 32);
  v5 = *(v4 + 48);
  v7 = *a3;
  v6 = a3[1];
  if (*(v3 + 16) == a2)
  {
    if (v7 != *v4 || v6 != *(v4 + 8))
    {
LABEL_16:
      operator new();
    }

    v14 = *(a3 + 8);
    if ((v14 & 0x80000000) == 0 && (*(a3 + 4) != v14 || *(a3 + 3) != *(a3 + 5)))
    {
      v15 = *a3;
      v16 = *(a3 + 2);
      *(v4 + 16) = *(a3 + 1);
      *(v4 + 32) = v16;
      *v4 = v15;
    }

    return v4;
  }

  else
  {
    if (v7 != *v5 || v6 != *(v5 + 8))
    {
      goto LABEL_16;
    }

    v9 = *(a3 + 8);
    if ((v9 & 0x80000000) == 0 && (*(a3 + 4) != v9 || *(a3 + 3) != *(a3 + 5)))
    {
      v10 = *a3;
      v11 = *(a3 + 2);
      *(v5 + 16) = *(a3 + 1);
      *(v5 + 32) = v11;
      *v5 = v10;
    }

    return v5;
  }
}

void sub_1004CEA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 128);
  v4 = v3[4];
  v5 = *(a3 + 128);
  v6 = v5[4];
  v7 = *(v4 + 48);
  v8 = *(v6 + 48);
  if (v3[2] != a2)
  {
    *(v7 + 56) = v6;
    *(v6 + 48) = v7;
    *(v4 + 48) = v8;
    *(v8 + 56) = v4;
    v9 = v5[3];
    v3[3] = v9;
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *(v8 + 56) = v4;
  *(v4 + 48) = v8;
  *(v6 + 48) = v7;
  *(v7 + 56) = v6;
  v3[4] = v6;
  v9 = v5[2];
  v3[2] = v9;
  if (v9)
  {
LABEL_3:
    *(v9 + 128) = v3;
  }

LABEL_4:
  v10 = *(a3 + 128);
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = 0;
  v11 = *(a2 + 128);
  for (i = v11[1]; i; v11[1] = i)
  {
    if (*(i + 32))
    {
      break;
    }

    i = *(i + 8);
  }

  if (v11 == v10)
  {
    goto LABEL_15;
  }

  v13 = v11;
  do
  {
    v13 = v13[1];
    if (v13)
    {
      v14 = v13 == v10;
    }

    else
    {
      v14 = 1;
    }
  }

  while (!v14);
  if (v13)
  {
LABEL_15:
    v11[1] = v10[1];
  }

  v10[1] = v11;
  if ((*(*(a2 + 176) + 64) & 3) != 0)
  {
    v10[4] = v11[4];
    v11[4] = 0;
  }

  *(a2 + 128) = 0;
  *(a3 + 128) = 0;
}