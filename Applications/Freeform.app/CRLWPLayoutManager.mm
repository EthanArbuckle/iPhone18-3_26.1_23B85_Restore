@interface CRLWPLayoutManager
+ (void)fixColumnBoundsForTarget:(id)a3 storage:(id)a4 charIndex:(unint64_t)a5 firstColumnIndex:(unint64_t)a6 precedingHeight:(double)a7 height:(double)a8 alreadyHasMargins:(BOOL)a9 styleProvider:(id)a10;
+ (void)setTransformForColumn:(id)a3 andInvalidateWPRect:(CGRect)a4 inTarget:(id)a5;
+ (void)setTransformForColumn:(id)a3 inTarget:(id)a4 metrics:(id)a5;
- (CRLWPCTTypesetterCache)typesetterCache;
- (CRLWPLayoutManager)initWithStorage:(id)a3 owner:(id)a4;
- (CRLWPLayoutOwner)owner;
- (id)styleProvider;
- (unint64_t)p_layoutConfigFlagsForTarget:(id)a3;
- (void)dealloc;
- (void)destroyLayoutState:(void *)a3;
- (void)initialLayoutStateForLayout:(id)a3;
- (void)layOutIntoTarget:(id)a3 withLayoutState:(void *)a4 outSync:(BOOL *)a5;
- (void)p_clearTypesetterCacheForNotification:(id)a3;
@end

@implementation CRLWPLayoutManager

- (CRLWPLayoutManager)initWithStorage:(id)a3 owner:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34.receiver = self;
  v34.super_class = CRLWPLayoutManager;
  v9 = [(CRLWPLayoutManager *)&v34 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    if (!v7)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10130E8E0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130E908();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10130E990();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Cannot initialize with a nil storage.", v23, v24, v25, v26, v27, v28, v29, "[CRLWPLayoutManager initWithStorage:owner:]");
      v30 = [NSString stringWithUTF8String:"[CRLWPLayoutManager initWithStorage:owner:]"];
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutManager.mm"];
      [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:95 isFatal:1 description:"Cannot initialize with a nil storage."];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v32, v33);
      abort();
    }

    objc_storeStrong(&v9->_storage, a3);
    objc_storeWeak(&v10->_owner, v8);
    if (objc_opt_respondsToSelector())
    {
      v12 = [v8 topicNumbersForStorage:v7];
      topicNumbers = v11->_topicNumbers;
      v11->_topicNumbers = v12;
    }

    if (!v11->_topicNumbers)
    {
      v14 = [[_TtC8Freeform17CRLWPTopicNumbers alloc] initWithStorage:v10->_storage];
      v15 = v11->_topicNumbers;
      v11->_topicNumbers = v14;

      if (!v11->_topicNumbers)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10130E79C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130E7C4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10130E874();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v17 = [NSString stringWithUTF8String:"[CRLWPLayoutManager initWithStorage:owner:]"];
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutManager.mm"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:110 isFatal:0 description:"invalid nil value for '%{public}s'", "_topicNumbers"];
      }
    }

    v19 = objc_opt_new();
    dirtyRanges = v11->_dirtyRanges;
    v11->_dirtyRanges = v19;
  }

  return v11;
}

- (void)dealloc
{
  [(CRLWPLayoutManager *)self clearOwner];
  v3.receiver = self;
  v3.super_class = CRLWPLayoutManager;
  [(CRLWPLayoutManager *)&v3 dealloc];
}

- (id)styleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v10 = sub_1003035DC(WeakRetained, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLWPStyleProviding);

  if (v10)
  {
    if ([v10 wantsToProvideStylesForTextLayout:0])
    {
      v11 = [v10 styleProvider];

      goto LABEL_6;
    }
  }

  v11 = [CRLWPStorageStyleProvider styleProviderForStorage:self->_storage];
LABEL_6:

  return v11;
}

- (void)layOutIntoTarget:(id)a3 withLayoutState:(void *)a4 outSync:(BOOL *)a5
{
  v7 = a3;
  if (!a4)
  {
    [(CRLWPLayoutManager *)self p_layoutConfigFlagsForTarget:v7];
    operator new();
  }

  self->_layoutFinished = 0;
  self->_isLayingOut = 1;
  v44 = *(a4 + 3);
  if (v44 != self)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130E9B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130E9CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130EA54();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v9 = [NSString stringWithUTF8String:"[CRLWPLayoutManager layOutIntoTarget:withLayoutState:outSync:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutManager.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:404 isFatal:0 description:"Layout manager mismatch"];
  }

  v11 = sub_1001F486C(a4, v7, 3670017);
  dirtyRanges = self->_dirtyRanges;
  v13 = [v7 columns];
  v14 = [CRLWPColumn rangeOfColumns:v13];
  v16 = [(CRLWPDirtyRangeArray *)dirtyRanges dirtyRangesIntersecting:v14, v15];

  if (([v16 isEmpty] & 1) == 0)
  {
    v17 = [v16 superRange];
    v19 = v18;
    v20 = [v7 columns];
    v21 = [v20 lastObject];

    if (v21)
    {
      v22 = [v21 range];
      v24 = &v22[v23];
      if (&v22[v23] > v17)
      {
        v25 = &v17[v19];
        v26 = &v25[-v24];
        if (v25 <= v24)
        {
          [(CRLWPMutableDirtyRangeArray *)self->_dirtyRanges subtract:v16];
          WeakRetained = objc_loadWeakRetained(&self->_owner);
          [WeakRetained layoutManager:self didClearDirtyRangeWithDelta:objc_msgSend(v16 afterCharIndex:{"delta"), v25}];
        }

        else
        {
          v27 = [v16 delta];
          [(CRLWPMutableDirtyRangeArray *)self->_dirtyRanges subtract:v16];
          v28 = self->_dirtyRanges;
          sub_10013CE8C(v24, v26, v27, v45);
          [(CRLWPMutableDirtyRangeArray *)v28 addRange:v45];
          WeakRetained = objc_loadWeakRetained(&self->_owner);
          [WeakRetained didLayoutChangingDirtyRanges];
        }

        v30 = self->_dirtyRanges;
        v31 = [(CRLWPMutableDirtyRangeArray *)v30 copy];
        v32 = *(a4 + 105);
        *(a4 + 105) = v31;

        if (*(a4 + 848))
        {
          v33 = 1;
        }

        else
        {
          v33 = ![(CRLWPDirtyRangeArray *)v30 isEmpty];
        }

        *(a4 + 848) = v33;
      }
    }
  }

  if ((v11 & 1) == 0)
  {
    (*(*a4 + 8))(a4);
    [(CRLWPLayoutManager *)self resetDirtyRange];
    a4 = 0;
  }

  if ([v7 textIsVertical] && (objc_msgSend(v7, "autosizeFlags") & 3) != 0)
  {
    v34 = [v7 columns];
    if ([v34 count] != 1)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10130EA7C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EAA4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10130EB2C();
      }

      v35 = off_1019EDA68;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v36 = [NSString stringWithUTF8String:"[CRLWPLayoutManager layOutIntoTarget:withLayoutState:outSync:]"];
      v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutManager.mm"];
      [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:496 isFatal:0 description:"Autogrow with multiple columns is not supported"];
    }

    v38 = [v34 firstObject];
    v39 = [v7 columnMetricsForCharIndex:objc_msgSend(v38 outRange:{"range"), 0}];
    [CRLWPLayoutManager setTransformForColumn:v38 inTarget:v7 metrics:v39];
  }

  v40 = objc_loadWeakRetained(&self->_owner);
  v41 = objc_opt_respondsToSelector();

  if (v41)
  {
    v42 = objc_loadWeakRetained(&self->_owner);
    [v42 didLayoutWithLayoutManager:self];
  }

  self->_layoutFinished = v11 ^ 1;
  self->_isLayingOut = 0;

  return a4;
}

+ (void)fixColumnBoundsForTarget:(id)a3 storage:(id)a4 charIndex:(unint64_t)a5 firstColumnIndex:(unint64_t)a6 precedingHeight:(double)a7 height:(double)a8 alreadyHasMargins:(BOOL)a9 styleProvider:(id)a10
{
  v16 = a3;
  v17 = a4;
  v98 = a10;
  v116 = xmmword_101464828;
  v18 = [v16 columnMetricsForCharIndex:a5 outRange:&v116];
  v110 = [v18 columnsAreLeftToRight];
  if (v18)
  {
    v19 = [v18 columnCount];
  }

  else
  {
    v19 = 1;
  }

  v95 = v19 + a6;
  if (!(v19 + a6))
  {
    v20 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130EB54();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      sub_10130EB7C(v22, v117, v20, v21);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130EC28();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v24 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:]");
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutManager.mm"];
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:562 isFatal:0 description:"newColumnCount shouldn't be 0. %{public}@", objc_opt_class()];
  }

  v26 = [v16 textIsVertical];
  v27 = v116 < a5 || a9;
  v108 = v27;
  v96 = +[CRLWPPadding padding];
  v109 = [v16 columns];
  if (!v109)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130EC50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EC78();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130ED00();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v29 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLWPLayoutManager fixColumnBoundsForTarget:storage:charIndex:firstColumnIndex:precedingHeight:height:alreadyHasMargins:styleProvider:]");
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPLayoutManager.mm"];
    [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:573 isFatal:0 description:"invalid nil value for 'columnsArray'"];
  }

  [v16 currentSize];
  v33 = v31;
  v100 = v32;
  if (v26)
  {
    v31 = v32;
  }

  v102 = v31;
  if (v18)
  {
    [v18 adjustedInsetsForTarget:v16];
    top = v34;
    left = v36;
    bottom = v38;
    right = v40;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v106 = [v109 count];
  v99 = v33;
  v104 = [v16 pageNumber];
  v42 = top + a7;
  v43 = v102 - (right + left);
  v44 = a8 - (bottom + top);
  v45 = v43 < 0.0;
  v46 = left + 0.0 + v43;
  if (v43 < 0.0)
  {
    v43 = 0.0;
  }

  rect = v43;
  if ((v45 & v26) != 0)
  {
    v47 = v46;
  }

  else
  {
    v47 = left + 0.0;
  }

  v101 = 0.0;
  if (v44 >= 0.0)
  {
    v48 = v44;
  }

  else
  {
    v48 = 0.0;
  }

  if (a6)
  {
    if (v108)
    {
      v49 = [v16 columns];
      v101 = 0.0;
      if ([v49 count] <= a6)
      {
        goto LABEL_54;
      }

      v50 = [v49 objectAtIndexedSubscript:?];
      if (!v50)
      {
        goto LABEL_54;
      }

      v118.origin.x = v47;
      v118.origin.y = v42;
      v118.size.width = rect;
      v118.size.height = v48;
      MaxY = CGRectGetMaxY(v118);
      [v50 frameBounds];
      v42 = v52;
      v48 = MaxY - v52;
      v101 = 0.0;
    }

    else
    {
      v53 = a6 - 1;
      while (1)
      {
        v54 = objc_opt_class();
        v55 = [v16 columns];
        v56 = [v55 objectAtIndexedSubscript:v53];
        v49 = sub_100014370(v54, v56);

        v57 = [v49 range];
        if (v58)
        {
          break;
        }

        if (--v53 == -1)
        {
          goto LABEL_55;
        }
      }

      v50 = [v16 columnMetricsForCharIndex:v57 outRange:0];
      v59 = [v50 layoutMargins];
      v60 = v59;
      if (v59)
      {
        [v59 bottomInset];
        v101 = v61;
      }

      else
      {
        v101 = 0.0;
      }
    }

LABEL_54:
  }

LABEL_55:
  if (objc_opt_respondsToSelector())
  {
    [v18 layoutMarginsForTarget:v16];
  }

  else
  {
    [v18 layoutMargins];
  }
  v97 = ;
  v62 = v96;
  if (v97)
  {
    v62 = v97;
  }

  v63 = v62;
  v64 = v63;
  if (v26)
  {
    [v63 topInset];
  }

  else if (v110)
  {
    [v63 leftInset];
  }

  else
  {
    [v63 rightInset];
  }

  v66 = v65;
  if (v95 > a6)
  {
    v67 = 0;
    v68 = a6;
    do
    {
      v115 = rect;
      v114 = 0;
      if (v26)
      {
        [v64 topInset];
        v70 = v69;
        [v64 bottomInset];
        v72 = v100;
      }

      else
      {
        [v64 leftInset];
        v70 = v73;
        [v64 rightInset];
        v72 = v99;
      }

      v74 = v72 - v70 - v71;
      if (![v17 wpKind] || objc_msgSend(v17, "wpKind") == 7)
      {
        v74 = fmax(v74, 36.0);
      }

      if (v18)
      {
        [v18 positionForColumnIndex:v67 bodyWidth:v16 target:&v115 outWidth:&v114 outGap:v74];
      }

      else
      {
        v75 = 0.0;
      }

      if (v110)
      {
        v76 = v66 + v75;
      }

      else
      {
        v76 = v74 - v66 - v75 - v115;
      }

      v113 = v76;
      if ([v17 wpKind] && objc_msgSend(v17, "wpKind") != 7)
      {
        v77 = v115;
      }

      else
      {
        v77 = fmax(v115, 18.0);
        v115 = v77;
        v78 = v102 + (v19 * -18.0);
        v112 = v78;
        if (v110)
        {
          v79 = v78 < v76;
          v80 = &v113;
          v81 = &v112;
        }

        else
        {
          v111 = v102 - v78 + -18.0;
          v79 = v76 < v111;
          v80 = &v113;
          v81 = &v111;
        }

        if (v79)
        {
          v80 = v81;
        }

        v76 = *v80;
        v113 = *v80;
      }

      v82 = v48;
      v83 = v42;
      if (!v108)
      {
        if (v26)
        {
          [v64 rightInset];
          v85 = v84;
          [v16 maxSize];
          v87 = v86;
        }

        else
        {
          [v64 topInset];
          v85 = v88;
          [v16 maxSize];
          v87 = v89;
        }

        v83 = v42 + v101 + v85;
        v119.origin.x = v76;
        v119.origin.y = v83;
        v119.size.width = v77;
        v119.size.height = v48;
        v90 = CGRectGetMaxY(v119);
        if (a6 || v90 <= v87)
        {
          v82 = v48;
        }

        else
        {
          v82 = v87 - v83;
          if ([v17 wpKind] && objc_msgSend(v17, "wpKind") != 7 || v82 >= 36.0)
          {
            if (v82 < 1.0)
            {
              v83 = v87 + -1.0;
              v82 = 1.0;
            }
          }

          else
          {
            v83 = v87 + -36.0;
            v82 = 36.0;
          }
        }
      }

      if (v68 >= v106)
      {
        if (v109)
        {
          v92 = [[CRLWPColumn alloc] initWithStorage:v17 frameBounds:v76, v83, v77, v82];
          [(CRLWPColumn *)v92 setStyleProvider:v98];
          [(CRLWPColumn *)v92 setColumnIndex:v68];
          v91 = v92;
          [v109 addObject:v92];
        }

        else
        {
          v91 = 0;
        }
      }

      else
      {
        v91 = [v109 objectAtIndexedSubscript:v68];
        [v91 setFrameBounds:{v76, v83, v77, v82}];
      }

      [v91 setTextIsVertical:{objc_msgSend(v16, "textIsVertical")}];
      [v91 setPageNumber:v104];
      [a1 setTransformForColumn:v91 inTarget:v16 metrics:v18];

      ++v68;
      ++v67;
      --v19;
    }

    while (v19);
  }

  v93 = [v17 wpKind];
  if (!a6)
  {
    if (v93)
    {
      v94 = [v109 count];
      if (v94 > v95)
      {
        [v109 removeObjectsInRange:{v95, &v94[-v95]}];
      }
    }
  }
}

+ (void)setTransformForColumn:(id)a3 inTarget:(id)a4 metrics:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 textIsVertical])
  {
    if (([v8 autosizeFlags] & 3) != 0)
    {
      [v9 adjustedInsetsForTarget:v8];
      v11 = v10;
      [v7 frameBounds];
      v12 = v11 + CGRectGetMaxY(v18);
    }

    else
    {
      [v8 currentSize];
    }

    CGAffineTransformMakeTranslation(&v17, v12, 0.0);
    v15 = v17;
    CGAffineTransformRotate(&v16, &v15, 1.57079633);
    *&v17.a = *&v16.a;
    *&v17.c = *&v16.c;
    v14 = *&v16.tx;
  }

  else
  {
    v13 = *&CGAffineTransformIdentity.c;
    *&v17.a = *&CGAffineTransformIdentity.a;
    *&v17.c = v13;
    v14 = *&CGAffineTransformIdentity.tx;
  }

  *&v17.tx = v14;
  *&v16.a = *&v17.a;
  *&v16.c = *&v17.c;
  *&v16.tx = v14;
  [v7 setTransformFromWP:&v16];
}

+ (void)setTransformForColumn:(id)a3 andInvalidateWPRect:(CGRect)a4 inTarget:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v11 = a5;
  v12 = [v11 columnMetricsForCharIndex:objc_msgSend(v10 outRange:{"range"), 0}];
  [CRLWPLayoutManager setTransformForColumn:v10 inTarget:v11 metrics:v12];
  if (v10)
  {
    [v10 transformFromWP];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v15 = CGRectApplyAffineTransform(v14, &v13);
  [v11 setNeedsDisplayInTargetRect:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];
}

- (CRLWPCTTypesetterCache)typesetterCache
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_useLigatures || v2->_shouldClearTypesetterCache)
  {
    [(CRLWPLayoutManager *)v2 clearTypesetterCache];
    v2->_useLigatures = 1;
    v2->_shouldClearTypesetterCache = 0;
  }

  objc_sync_exit(v2);

  typesetterCache = v2->_typesetterCache;
  if (!typesetterCache)
  {
    v4 = objc_alloc_init(CRLWPCTTypesetterCache);
    v5 = v2->_typesetterCache;
    v2->_typesetterCache = v4;

    typesetterCache = v2->_typesetterCache;
  }

  return typesetterCache;
}

- (unint64_t)p_layoutConfigFlagsForTarget:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 descendersCannotClip])
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  else if ([(CRLWPStorage *)self->_storage wpKind]&& [(CRLWPStorage *)self->_storage wpKind]!= 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4;
  }

  if ([v5 textIsVertical])
  {
    v6 = 20;
  }

  return v6;
}

- (void)p_clearTypesetterCacheForNotification:(id)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldClearTypesetterCache = 1;
  objc_sync_exit(obj);
}

- (void)initialLayoutStateForLayout:(id)a3
{
  v3 = a3;
  v5 = 0uLL;
  v6 = 0;
  sub_10013CE8C(0x7FFFFFFFFFFFFFFFLL, 0, 0, &v5);
  operator new();
}

- (void)destroyLayoutState:(void *)a3
{
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }
}

- (CRLWPLayoutOwner)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end