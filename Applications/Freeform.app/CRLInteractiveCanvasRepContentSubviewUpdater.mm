@interface CRLInteractiveCanvasRepContentSubviewUpdater
+ (id)p_contentPlatformViewForRepContentPlatformViewPile:(id)a3 layerDelegate:(id)a4 reusableMaskView:(id *)a5;
- (CRLInteractiveCanvasRepContentSubviewUpdater)initWithRepContainerView:(id)a3;
- (void)p_backgroundThreadUpdateSubviewsFromRepContentPiles:(id)a3;
- (void)p_mainThreadUpdateSubviewsFromRepContentPiles:(id)a3;
- (void)updateSubviewFrames;
- (void)updateSubviewsFromRepContentPiles:(id)a3;
@end

@implementation CRLInteractiveCanvasRepContentSubviewUpdater

- (CRLInteractiveCanvasRepContentSubviewUpdater)initWithRepContainerView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLInteractiveCanvasRepContentSubviewUpdater;
  v6 = [(CRLInteractiveCanvasRepContentSubviewUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_repContainerView, a3);
  }

  return v7;
}

- (void)updateSubviewsFromRepContentPiles:(id)a3
{
  v4 = a3;
  if (+[NSThread isMainThread])
  {
    [(CRLInteractiveCanvasRepContentSubviewUpdater *)self p_mainThreadUpdateSubviewsFromRepContentPiles:v4];
  }

  else
  {
    [(CRLInteractiveCanvasRepContentSubviewUpdater *)self p_backgroundThreadUpdateSubviewsFromRepContentPiles:v4];
  }
}

- (void)p_mainThreadUpdateSubviewsFromRepContentPiles:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134C680();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134C694();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134C71C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater p_mainThreadUpdateSubviewsFromRepContentPiles:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:86 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  ++self->_lastMainThreadUpdateSeed;
  self->_needsUpdateOnMainThread = 0;
  [(CRLCanvasSubview *)self->_repContainerView frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v4 count];
  v17 = [[NSMutableArray alloc] initWithCapacity:v16];
  v18 = [[NSMutableArray alloc] initWithCapacity:v16];
  v19 = [(CRLCanvasSubview *)self->_repContainerView subviews];
  v20 = [v19 crl_arrayOfObjectsPassingTest:&stru_1018531D8];

  v21 = [v20 count];
  v22 = [(CRLCanvasSubview *)self->_repContainerView subviews];
  v23 = [v22 count];

  if (v21 >= v23)
  {
    v25 = &__NSArray0__struct;
  }

  else
  {
    v24 = [(CRLCanvasSubview *)self->_repContainerView subviews];
    v25 = [v24 crl_arrayOfObjectsPassingTest:&stru_1018531F8];
  }

  v26 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:v16];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1002E05D0;
  v35[3] = &unk_1018532A0;
  v35[4] = v20;
  v35[5] = self;
  v35[10] = v9;
  v35[11] = v11;
  v35[12] = v13;
  v35[13] = v15;
  v35[6] = v17;
  v35[7] = v26;
  v35[8] = v18;
  v35[9] = v21;
  [v4 enumerateObjectsUsingBlock:v35];
  v27 = v17;
  v28 = v27;
  if ([v25 count])
  {
    v28 = [v27 arrayByAddingObjectsFromArray:v25];
  }

  v29 = [(CRLCanvasSubview *)self->_repContainerView subviews];
  v30 = [v28 isEqualToArray:v29];

  if ((v30 & 1) == 0)
  {
    [(CRLCanvasSubview *)self->_repContainerView setSubviews:v28];
  }

  backgroundUpdateSubviewReusers = self->_backgroundUpdateSubviewReusers;
  self->_backgroundUpdateSubviewReusers = v18;
  v32 = v18;

  reusableMaskViewsForRepContainerSubviews = self->_reusableMaskViewsForRepContainerSubviews;
  self->_reusableMaskViewsForRepContainerSubviews = v26;
  v34 = v26;
}

+ (id)p_contentPlatformViewForRepContentPlatformViewPile:(id)a3 layerDelegate:(id)a4 reusableMaskView:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 contentPlatformView];
  if (v9)
  {
    [v7 contentPlatformViewFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v7 contentPlatformViewMaskRect];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    if (CGRectIsNull(v29))
    {
      goto LABEL_4;
    }

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v33.origin.x = v11;
    v33.origin.y = v13;
    v33.size.width = v15;
    v33.size.height = v17;
    if (CGRectContainsRect(v30, v33))
    {
      goto LABEL_4;
    }

    v23 = *a5;
    if (v23)
    {
      v22 = v23;
      [(CRLCanvasSubview *)v23 setFrame:x, y, width, height];
    }

    else
    {
      v22 = objc_alloc_init(CRLCanvasSubview);
      [(CRLCanvasSubview *)v22 setLayerDelegate:v8];
      [(CRLCanvasSubview *)v22 setClipsToBounds:1];
      v24 = v22;
      *a5 = v22;
      [(CRLCanvasSubview *)v24 setFrame:x, y, width, height];
      if (!v22)
      {
LABEL_4:
        [v9 setFrame:{v11, v13, v15, v17}];
        v22 = v9;
        goto LABEL_10;
      }
    }

    v31.origin.x = v11;
    v31.origin.y = v13;
    v31.size.width = v15;
    v31.size.height = v17;
    v32 = CGRectOffset(v31, -x, -y);
    [v9 setFrame:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
    v27 = v9;
    v25 = [NSArray arrayWithObjects:&v27 count:1];
    [(CRLCanvasSubview *)v22 setSubviews:v25];
  }

  else
  {
    v22 = 0;
  }

LABEL_10:

  return v22;
}

- (void)p_backgroundThreadUpdateSubviewsFromRepContentPiles:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_backgroundUpdateSubviewReusers count];
  v86 = self;
  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134C900();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134C914();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134C99C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater p_backgroundThreadUpdateSubviewsFromRepContentPiles:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:280 isFatal:0 description:"Layout should have run at least once on the main thread."];

    self = v86;
  }

  v9 = objc_alloc_init(NSMutableArray);
  v78 = objc_alloc_init(NSMutableArray);
  v79 = objc_alloc_init(NSMutableArray);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v92 objects:v107 count:16];
  v81 = v5;
  if (v11)
  {
    v18 = v11;
    v82 = 0;
    v19 = 1 - v5;
    v20 = &off_1018DC000;
    v85 = *v93;
    v80 = v10;
    do
    {
      v21 = 0;
      v84 = v18;
      do
      {
        if (*v93 != v85)
        {
          objc_enumerationMutation(v10);
        }

        v22 = *(*(&v92 + 1) + 8 * v21);
        v23 = sub_1003035DC(v22, 1, v12, v13, v14, v15, v16, v17, v20[407]);
        v30 = v23;
        if (v23)
        {
          v31 = [v23 contentLayers];
          [v9 addObjectsFromArray:v31];
        }

        else
        {
          v32 = sub_1003035DC(v22, 1, v24, v25, v26, v27, v28, v29, &OBJC_PROTOCOL___CRLInteractiveCanvasRepContentPlatformViewPile);
          if (v32)
          {
            v31 = v32;
            v33 = v9;
            v34 = objc_alloc_init(NSMutableArray);
            v35 = objc_alloc_init(NSMutableArray);
            if (v82 + 1 >= v81)
            {
              goto LABEL_24;
            }

            v36 = v82 - 0x7FFFFFFFFFFFFFFELL;
            v37 = v82 + 2;
            while (1)
            {
              v38 = [(NSArray *)self->_backgroundUpdateSubviewReusers objectAtIndexedSubscript:v37 - 1];
              v39 = [v38 canReuseForRepContentLayersDuringBackgroundUpdate];
              v40 = v34;
              if ((v39 & 1) == 0)
              {
                v41 = [v38 canReuseUnmodifiedForRepContentPile:v31];
                v40 = v35;
                if (v41)
                {
                  break;
                }
              }

              [v40 addObject:v38];

              ++v36;
              ++v37;
              self = v86;
              if (v19 + v37 == 2)
              {
                goto LABEL_24;
              }
            }

            self = v86;
            if (v36)
            {
              v46 = [(NSArray *)v86->_backgroundUpdateSubviewReusers objectAtIndexedSubscript:v82];
              v47 = v33;
              if (([v46 canReuseForRepContentLayersDuringBackgroundUpdate] & 1) == 0)
              {
                v48 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                v83 = v46;
                if (qword_101AD5A10 != -1)
                {
                  sub_10134C9C4();
                }

                v49 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  v98 = v48;
                  v99 = 2082;
                  v100 = "[CRLInteractiveCanvasRepContentSubviewUpdater p_backgroundThreadUpdateSubviewsFromRepContentPiles:]";
                  v101 = 2082;
                  v102 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m";
                  v103 = 1024;
                  v104 = 338;
                  _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Rep content subviews with platform views should always be sandwiched between rep content subviews with layers", buf, 0x22u);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_10134C9EC();
                }

                v77 = v47;
                v50 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  v57 = v50;
                  v58 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  v98 = v48;
                  v99 = 2114;
                  v100 = v58;
                  _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v51 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater p_backgroundThreadUpdateSubviewsFromRepContentPiles:]"];
                v52 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
                [CRLAssertionHandler handleFailureInFunction:v51 file:v52 lineNumber:338 isFatal:0 description:"Rep content subviews with platform views should always be sandwiched between rep content subviews with layers"];

                v46 = v83;
                v47 = v77;
              }

              [v46 reuseForRepContentLayers:v47];
              v53 = v46;
              v54 = objc_alloc_init(NSMutableArray);

              [v78 addObjectsFromArray:v34];
              [v79 addObjectsFromArray:v35];

              v9 = v54;
              v82 = v37;
              self = v86;
            }

            else
            {
LABEL_24:
              self->_needsUpdateOnMainThread = 1;
              v9 = v33;
            }

            v20 = &off_1018DC000;

            v10 = v80;
            v18 = v84;
          }

          else
          {
            v42 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10134CA14();
            }

            v43 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v98 = v42;
              v99 = 2082;
              v100 = "[CRLInteractiveCanvasRepContentSubviewUpdater p_backgroundThreadUpdateSubviewsFromRepContentPiles:]";
              v101 = 2082;
              v102 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m";
              v103 = 1024;
              v104 = 362;
              v105 = 2112;
              v106 = v22;
              _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Rep content pile did not implement either CRLInteractiveCanvasRepLayerPile or CRLInteractiveCanvasRepContentPlatformViewPile: %@", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10134CA3C();
            }

            v44 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v55 = v44;
              v56 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v98 = v42;
              v99 = 2114;
              v100 = v56;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v31 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater p_backgroundThreadUpdateSubviewsFromRepContentPiles:]"];
            v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
            [CRLAssertionHandler handleFailureInFunction:v31 file:v45 lineNumber:362 isFatal:0 description:"Rep content pile did not implement either CRLInteractiveCanvasRepLayerPile or CRLInteractiveCanvasRepContentPlatformViewPile: %@", v22];

            self = v86;
            v18 = v84;
            v20 = &off_1018DC000;
          }
        }

        v21 = v21 + 1;
      }

      while (v21 != v18);
      v59 = [v10 countByEnumeratingWithState:&v92 objects:v107 count:16];
      v18 = v59;
    }

    while (v59);
  }

  else
  {
    v82 = 0;
  }

  if (v82 >= v81)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    v65 = v78;
    if (qword_101AD5A10 != -1)
    {
      sub_10134CA64();
    }

    v61 = v79;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134CA8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134CB14();
    }

    v66 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v66);
    }

    v60 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater p_backgroundThreadUpdateSubviewsFromRepContentPiles:]"];
    v67 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
    [CRLAssertionHandler handleFailureInFunction:v60 file:v67 lineNumber:368 isFatal:0 description:"There should always be a rep content subview with layers on top."];
  }

  else
  {
    v60 = [(NSArray *)self->_backgroundUpdateSubviewReusers objectAtIndexedSubscript:?];
    v61 = v79;
    if (([v60 canReuseForRepContentLayersDuringBackgroundUpdate] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134CB3C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134CB64();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134CBEC();
      }

      v62 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v62);
      }

      v63 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater p_backgroundThreadUpdateSubviewsFromRepContentPiles:]"];
      v64 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
      [CRLAssertionHandler handleFailureInFunction:v63 file:v64 lineNumber:371 isFatal:0 description:"The topmost rep content subview should always contain layers"];
    }

    [v60 reuseForRepContentLayers:v9];
    v65 = v78;
  }

  v68 = v82 + 1;
  if (v82 + 1 < v81)
  {
    do
    {
      v69 = [(NSArray *)v86->_backgroundUpdateSubviewReusers objectAtIndexedSubscript:v68];
      if ([v69 canReuseForRepContentLayersDuringBackgroundUpdate])
      {
        v70 = v65;
      }

      else
      {
        v70 = v61;
      }

      [v70 addObject:v69];

      ++v68;
    }

    while (v81 != v68);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v71 = v65;
  v72 = [v71 countByEnumeratingWithState:&v88 objects:v96 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v89;
    do
    {
      for (i = 0; i != v73; i = i + 1)
      {
        if (*v89 != v74)
        {
          objc_enumerationMutation(v71);
        }

        [*(*(&v88 + 1) + 8 * i) reuseForRepContentLayers:&__NSArray0__struct];
      }

      v73 = [v71 countByEnumeratingWithState:&v88 objects:v96 count:16];
    }

    while (v73);
  }

  if ([v61 count])
  {
    lastMainThreadUpdateSeed = v86->_lastMainThreadUpdateSeed;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002E1CA4;
    block[3] = &unk_10183C780;
    block[5] = v61;
    block[6] = lastMainThreadUpdateSeed;
    block[4] = v86;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)updateSubviewFrames
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134CC14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134CC28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134CCB0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepContentSubviewUpdater updateSubviewFrames]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentSubviewUpdater.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:418 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLCanvasSubview *)self->_repContainerView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [(CRLCanvasSubview *)self->_repContainerView subviews];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v20 + 1) + 8 * i);
        [v19 setFrame:{v7, v9, v11, v13}];
        [v19 setBounds:{v7, v9, v11, v13}];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }
}

@end