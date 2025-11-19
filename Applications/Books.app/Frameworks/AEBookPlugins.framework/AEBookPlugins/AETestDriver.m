@interface AETestDriver
+ (id)getBookKeyWithBook:(id)a3 style:(id)a4 geometry:(id)a5;
+ (id)getContentViewChildren:(id)a3;
+ (id)getViewSnapshot:(id)a3 parent:(id)a4;
+ (id)shared;
+ (void)getWebViews:(id)a3 result:(id)a4;
- (AETestDriver)init;
- (void)bookViewDidAppear:(id)a3;
- (void)bookViewWillDisappear:(id)a3;
- (void)paginationControllerFinishedBookPagination:(id)a3;
- (void)paginationControllerFinishedWebkitRendering:(id)a3 renderTree:(id)a4 pageCount:(unint64_t)a5;
- (void)postEvent:(id)a3 sender:(id)a4;
- (void)presentationControllerFinishedWebkitRendering:(id)a3 renderTree:(id)a4 pageCount:(unint64_t)a5;
@end

@implementation AETestDriver

+ (id)shared
{
  if (qword_22D280 != -1)
  {
    sub_13928C();
  }

  v3 = qword_22D278;

  return v3;
}

- (AETestDriver)init
{
  v7.receiver = self;
  v7.super_class = AETestDriver;
  v2 = [(AETestDriver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    delegate = v2->_delegate;
    v2->_delegate = 0;

    layoutDelegate = v3->_layoutDelegate;
    v3->_layoutDelegate = 0;
  }

  return v3;
}

- (void)postEvent:(id)a3 sender:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(AETestDriver *)self testStateProvider];
  v8 = [v7 testIsRunning];

  if (v8)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:v10 object:v6];
  }
}

+ (id)getBookKeyWithBook:(id)a3 style:(id)a4 geometry:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[UIScreen mainScreen];
  [(__CFString *)v12 bounds];
  v14 = v13;
  v16 = v15;

  v93[0] = @"style";
  v17 = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
  if (v10)
  {
    v91[0] = @"fontFamily";
    v18 = [v10 fontFamily];
    v82 = v18 != 0;
    v74 = v18;
    if (v18)
    {
      v19 = [v10 fontFamily];
    }

    else
    {
      v19 = &stru_1E7188;
    }

    v53 = v19;
    v92[0] = v19;
    v91[1] = @"lineHeight";
    [v10 lineHeight];
    v73 = [NSNumber numberWithFloat:?];
    v92[1] = v73;
    v91[2] = @"fontSize";
    [v10 fontSize];
    v72 = [NSNumber numberWithFloat:?];
    v92[2] = v72;
    v91[3] = @"autoHyphenate";
    v71 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 autoHyphenate]);
    v92[3] = v71;
    v91[4] = @"optimizeLegibility";
    v70 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 optimizeLegibility]);
    v92[4] = v70;
    v91[5] = @"justification";
    v12 = NSNumber;
    v69 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 justification]);
    v92[5] = v69;
    v20 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:6];
  }

  else
  {
    v82 = 0;
    v20 = &__NSDictionary0__struct;
  }

  v76 = v20;
  v94[0] = v20;
  v93[1] = @"geometry";
  if (v11)
  {
    v89[0] = @"webViewSize";
    v87[0] = @"width";
    [v11 layoutSize];
    v68 = [NSNumber numberWithDouble:?];
    v87[1] = @"height";
    v88[0] = v68;
    [v11 layoutSize];
    v67 = [NSNumber numberWithDouble:v21];
    v88[1] = v67;
    v66 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
    v90[0] = v66;
    v89[1] = @"windowSize";
    v85[0] = @"width";
    v65 = [NSNumber numberWithDouble:v14];
    v85[1] = @"height";
    v86[0] = v65;
    v64 = [NSNumber numberWithDouble:v16];
    v86[1] = v64;
    v63 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
    v90[1] = v63;
    v89[2] = @"isLandscape";
    [v11 layoutSize];
    v23 = v22;
    [v11 layoutSize];
    v62 = [NSNumber numberWithInt:v23 > v24];
    v90[2] = v62;
    v89[3] = @"hasSpreadPages";
    v61 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 hasSpreadPages]);
    v90[3] = v61;
    v89[4] = @"gutterWidth";
    v12 = NSNumber;
    [v11 gutterWidth];
    v60 = [NSNumber numberWithDouble:?];
    v90[4] = v60;
    v25 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:5];
  }

  else
  {
    v25 = &__NSDictionary0__struct;
  }

  v75 = v25;
  v94[1] = v25;
  v93[2] = @"info";
  if (v9)
  {
    v83[0] = @"bookEpubId";
    v26 = [v9 bookEpubId];
    v81 = v26 != 0;
    v59 = v26;
    if (v26)
    {
      v27 = [v9 bookEpubId];
    }

    else
    {
      v27 = &stru_1E7188;
    }

    v52 = v27;
    v84[0] = v27;
    v83[1] = @"bookAuthor";
    v31 = [v9 bookAuthor];
    HIDWORD(v80) = v31 != 0;
    v58 = v31;
    if (v31)
    {
      v32 = [v9 bookAuthor];
    }

    else
    {
      v32 = &stru_1E7188;
    }

    v51 = v32;
    v84[1] = v32;
    v83[2] = @"bookTitle";
    v33 = [v9 bookTitle];
    LODWORD(v80) = v33 != 0;
    v57 = v33;
    if (v33)
    {
      v34 = [v9 bookTitle];
    }

    else
    {
      v34 = &stru_1E7188;
    }

    v50 = v34;
    v84[2] = v34;
    v83[3] = @"bookLanguage";
    v35 = [v9 bookLanguage];
    HIDWORD(v79) = v35 != 0;
    v56 = v35;
    if (v35)
    {
      v36 = [v9 bookLanguage];
    }

    else
    {
      v36 = &stru_1E7188;
    }

    v49 = v36;
    v84[3] = v36;
    v83[4] = @"shortBookTitle";
    v37 = [v9 shortBookTitle];
    LODWORD(v79) = v37 != 0;
    v55 = v37;
    if (v37)
    {
      v38 = [v9 shortBookTitle];
    }

    else
    {
      v38 = &stru_1E7188;
    }

    v48 = v38;
    v84[4] = v38;
    v83[5] = @"publisherName";
    v39 = [v9 publisherName];
    HIDWORD(v78) = v39 != 0;
    v54 = v39;
    if (v39)
    {
      v40 = [v9 publisherName];
    }

    else
    {
      v40 = &stru_1E7188;
    }

    v47 = v40;
    v84[5] = v40;
    v83[6] = @"publisherLocation";
    v5 = [v9 publisherLocation];
    LODWORD(v78) = v5 != 0;
    if (v5)
    {
      v41 = [v9 publisherLocation];
    }

    else
    {
      v41 = &stru_1E7188;
    }

    v46 = v41;
    v84[6] = v41;
    v83[7] = @"publisherYear";
    v6 = [v9 publisherYear];
    v77 = v6 != 0;
    if (v6)
    {
      v42 = [v9 publisherYear];
    }

    else
    {
      v42 = &stru_1E7188;
    }

    v45 = v42;
    v84[7] = v42;
    v83[8] = @"url";
    v17 = [v9 bookBundlePath];
    v29 = v17 != 0;
    v28 = v11;
    if (v17)
    {
      v12 = [v9 bookBundlePath];
    }

    else
    {
      v12 = &stru_1E7188;
    }

    v84[8] = v12;
    v30 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:9];
  }

  else
  {
    v28 = v11;
    v81 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    v77 = 0;
    v29 = 0;
    v30 = &__NSDictionary0__struct;
  }

  v94[2] = v30;
  v43 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:3];
  if (v9)
  {
  }

  if (v29)
  {
  }

  if (v9)
  {
  }

  if (v77)
  {
  }

  if (v9)
  {
  }

  if (v78)
  {
  }

  if (v9)
  {
  }

  if (HIDWORD(v78))
  {
  }

  if (v9)
  {
  }

  if (v79)
  {
  }

  if (v9)
  {
  }

  if (HIDWORD(v79))
  {
  }

  if (v9)
  {
  }

  if (v80)
  {
  }

  if (v9)
  {
  }

  if (HIDWORD(v80))
  {
  }

  if (v9)
  {
  }

  if (v81)
  {
  }

  if (v9)
  {
  }

  if (v28)
  {
  }

  if (v10)
  {
  }

  if (v82)
  {
  }

  if (v10)
  {
  }

  return v43;
}

+ (void)getWebViews:(id)a3 result:(id)a4
{
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 subviews];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:v11];
        }

        else
        {
          [AETestDriver getWebViews:v11 result:v5];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

+ (id)getContentViewChildren:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  [AETestDriver getWebViews:v3 result:v4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F587C;
  v7[3] = &unk_1E5D58;
  v8 = v3;
  v5 = v3;
  [v4 sortUsingComparator:v7];

  return v4;
}

+ (id)getViewSnapshot:(id)a3 parent:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 bounds];
  v18.width = v7;
  v18.height = v8;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v10 = [v6 layer];
  [v10 renderInContext:CurrentContext];

  [v5 bounds];
  [v6 convertPoint:v5 fromView:?];
  v12 = v11;
  v14 = v13;

  CGContextTranslateCTM(CurrentContext, v12, v14);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (void)paginationControllerFinishedWebkitRendering:(id)a3 renderTree:(id)a4 pageCount:(unint64_t)a5
{
  layoutDelegate = self->_layoutDelegate;
  if (layoutDelegate)
  {
    [(AELayoutTestDelegate *)layoutDelegate paginationControllerFinishedWebkitRendering:a3 renderTree:a4 pageCount:a5];
  }
}

- (void)paginationControllerFinishedBookPagination:(id)a3
{
  layoutDelegate = self->_layoutDelegate;
  if (layoutDelegate)
  {
    [(AELayoutTestDelegate *)layoutDelegate paginationControllerFinishedBookPagination:a3];
  }
}

- (void)presentationControllerFinishedWebkitRendering:(id)a3 renderTree:(id)a4 pageCount:(unint64_t)a5
{
  layoutDelegate = self->_layoutDelegate;
  if (layoutDelegate)
  {
    [(AELayoutTestDelegate *)layoutDelegate presentationControllerFinishedWebkitRendering:a3 renderTree:a4 pageCount:a5];
  }
}

- (void)bookViewDidAppear:(id)a3
{
  v6 = a3;
  if (self->_delegate)
  {
    objc_opt_class();
    v4 = BUDynamicCast();
    [(AETestDriverDelegate *)self->_delegate bookViewDidAppear:v4];
  }

  eventDispatcher = self->_eventDispatcher;
  if (eventDispatcher)
  {
    [(AETestDriverEventDispatcher *)eventDispatcher notifyBookController:v6];
  }
}

- (void)bookViewWillDisappear:(id)a3
{
  v6 = a3;
  if (self->_delegate)
  {
    objc_opt_class();
    v4 = BUDynamicCast();
    [(AETestDriverDelegate *)self->_delegate bookViewWillDisappear:v4];
  }

  eventDispatcher = self->_eventDispatcher;
  if (eventDispatcher)
  {
    [(AETestDriverEventDispatcher *)eventDispatcher notifyBookController:0];
  }
}

@end