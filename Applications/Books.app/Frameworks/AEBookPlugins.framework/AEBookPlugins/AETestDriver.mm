@interface AETestDriver
+ (id)getBookKeyWithBook:(id)book style:(id)style geometry:(id)geometry;
+ (id)getContentViewChildren:(id)children;
+ (id)getViewSnapshot:(id)snapshot parent:(id)parent;
+ (id)shared;
+ (void)getWebViews:(id)views result:(id)result;
- (AETestDriver)init;
- (void)bookViewDidAppear:(id)appear;
- (void)bookViewWillDisappear:(id)disappear;
- (void)paginationControllerFinishedBookPagination:(id)pagination;
- (void)paginationControllerFinishedWebkitRendering:(id)rendering renderTree:(id)tree pageCount:(unint64_t)count;
- (void)postEvent:(id)event sender:(id)sender;
- (void)presentationControllerFinishedWebkitRendering:(id)rendering renderTree:(id)tree pageCount:(unint64_t)count;
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

- (void)postEvent:(id)event sender:(id)sender
{
  eventCopy = event;
  senderCopy = sender;
  testStateProvider = [(AETestDriver *)self testStateProvider];
  testIsRunning = [testStateProvider testIsRunning];

  if (testIsRunning)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:eventCopy object:senderCopy];
  }
}

+ (id)getBookKeyWithBook:(id)book style:(id)style geometry:(id)geometry
{
  bookCopy = book;
  styleCopy = style;
  geometryCopy = geometry;
  bookBundlePath2 = +[UIScreen mainScreen];
  [(__CFString *)bookBundlePath2 bounds];
  v14 = v13;
  v16 = v15;

  v93[0] = @"style";
  bookBundlePath = &_s13BookAnalytics9UtilitiesC29cellularRadioAccessTechnologyAA08CellularefG0OyFZTj_ptr;
  if (styleCopy)
  {
    v91[0] = @"fontFamily";
    fontFamily = [styleCopy fontFamily];
    v82 = fontFamily != 0;
    v74 = fontFamily;
    if (fontFamily)
    {
      fontFamily2 = [styleCopy fontFamily];
    }

    else
    {
      fontFamily2 = &stru_1E7188;
    }

    v53 = fontFamily2;
    v92[0] = fontFamily2;
    v91[1] = @"lineHeight";
    [styleCopy lineHeight];
    v73 = [NSNumber numberWithFloat:?];
    v92[1] = v73;
    v91[2] = @"fontSize";
    [styleCopy fontSize];
    v72 = [NSNumber numberWithFloat:?];
    v92[2] = v72;
    v91[3] = @"autoHyphenate";
    v71 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [styleCopy autoHyphenate]);
    v92[3] = v71;
    v91[4] = @"optimizeLegibility";
    v70 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [styleCopy optimizeLegibility]);
    v92[4] = v70;
    v91[5] = @"justification";
    bookBundlePath2 = NSNumber;
    v69 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [styleCopy justification]);
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
  if (geometryCopy)
  {
    v89[0] = @"webViewSize";
    v87[0] = @"width";
    [geometryCopy layoutSize];
    v68 = [NSNumber numberWithDouble:?];
    v87[1] = @"height";
    v88[0] = v68;
    [geometryCopy layoutSize];
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
    [geometryCopy layoutSize];
    v23 = v22;
    [geometryCopy layoutSize];
    v62 = [NSNumber numberWithInt:v23 > v24];
    v90[2] = v62;
    v89[3] = @"hasSpreadPages";
    v61 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [geometryCopy hasSpreadPages]);
    v90[3] = v61;
    v89[4] = @"gutterWidth";
    bookBundlePath2 = NSNumber;
    [geometryCopy gutterWidth];
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
  if (bookCopy)
  {
    v83[0] = @"bookEpubId";
    bookEpubId = [bookCopy bookEpubId];
    v81 = bookEpubId != 0;
    v59 = bookEpubId;
    if (bookEpubId)
    {
      bookEpubId2 = [bookCopy bookEpubId];
    }

    else
    {
      bookEpubId2 = &stru_1E7188;
    }

    v52 = bookEpubId2;
    v84[0] = bookEpubId2;
    v83[1] = @"bookAuthor";
    bookAuthor = [bookCopy bookAuthor];
    HIDWORD(v80) = bookAuthor != 0;
    v58 = bookAuthor;
    if (bookAuthor)
    {
      bookAuthor2 = [bookCopy bookAuthor];
    }

    else
    {
      bookAuthor2 = &stru_1E7188;
    }

    v51 = bookAuthor2;
    v84[1] = bookAuthor2;
    v83[2] = @"bookTitle";
    bookTitle = [bookCopy bookTitle];
    LODWORD(v80) = bookTitle != 0;
    v57 = bookTitle;
    if (bookTitle)
    {
      bookTitle2 = [bookCopy bookTitle];
    }

    else
    {
      bookTitle2 = &stru_1E7188;
    }

    v50 = bookTitle2;
    v84[2] = bookTitle2;
    v83[3] = @"bookLanguage";
    bookLanguage = [bookCopy bookLanguage];
    HIDWORD(v79) = bookLanguage != 0;
    v56 = bookLanguage;
    if (bookLanguage)
    {
      bookLanguage2 = [bookCopy bookLanguage];
    }

    else
    {
      bookLanguage2 = &stru_1E7188;
    }

    v49 = bookLanguage2;
    v84[3] = bookLanguage2;
    v83[4] = @"shortBookTitle";
    shortBookTitle = [bookCopy shortBookTitle];
    LODWORD(v79) = shortBookTitle != 0;
    v55 = shortBookTitle;
    if (shortBookTitle)
    {
      shortBookTitle2 = [bookCopy shortBookTitle];
    }

    else
    {
      shortBookTitle2 = &stru_1E7188;
    }

    v48 = shortBookTitle2;
    v84[4] = shortBookTitle2;
    v83[5] = @"publisherName";
    publisherName = [bookCopy publisherName];
    HIDWORD(v78) = publisherName != 0;
    v54 = publisherName;
    if (publisherName)
    {
      publisherName2 = [bookCopy publisherName];
    }

    else
    {
      publisherName2 = &stru_1E7188;
    }

    v47 = publisherName2;
    v84[5] = publisherName2;
    v83[6] = @"publisherLocation";
    publisherLocation = [bookCopy publisherLocation];
    LODWORD(v78) = publisherLocation != 0;
    if (publisherLocation)
    {
      publisherLocation2 = [bookCopy publisherLocation];
    }

    else
    {
      publisherLocation2 = &stru_1E7188;
    }

    v46 = publisherLocation2;
    v84[6] = publisherLocation2;
    v83[7] = @"publisherYear";
    publisherYear = [bookCopy publisherYear];
    v77 = publisherYear != 0;
    if (publisherYear)
    {
      publisherYear2 = [bookCopy publisherYear];
    }

    else
    {
      publisherYear2 = &stru_1E7188;
    }

    v45 = publisherYear2;
    v84[7] = publisherYear2;
    v83[8] = @"url";
    bookBundlePath = [bookCopy bookBundlePath];
    v29 = bookBundlePath != 0;
    v28 = geometryCopy;
    if (bookBundlePath)
    {
      bookBundlePath2 = [bookCopy bookBundlePath];
    }

    else
    {
      bookBundlePath2 = &stru_1E7188;
    }

    v84[8] = bookBundlePath2;
    v30 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:9];
  }

  else
  {
    v28 = geometryCopy;
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
  if (bookCopy)
  {
  }

  if (v29)
  {
  }

  if (bookCopy)
  {
  }

  if (v77)
  {
  }

  if (bookCopy)
  {
  }

  if (v78)
  {
  }

  if (bookCopy)
  {
  }

  if (HIDWORD(v78))
  {
  }

  if (bookCopy)
  {
  }

  if (v79)
  {
  }

  if (bookCopy)
  {
  }

  if (HIDWORD(v79))
  {
  }

  if (bookCopy)
  {
  }

  if (v80)
  {
  }

  if (bookCopy)
  {
  }

  if (HIDWORD(v80))
  {
  }

  if (bookCopy)
  {
  }

  if (v81)
  {
  }

  if (bookCopy)
  {
  }

  if (v28)
  {
  }

  if (styleCopy)
  {
  }

  if (v82)
  {
  }

  if (styleCopy)
  {
  }

  return v43;
}

+ (void)getWebViews:(id)views result:(id)result
{
  resultCopy = result;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subviews = [views subviews];
  v7 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [resultCopy addObject:v11];
        }

        else
        {
          [AETestDriver getWebViews:v11 result:resultCopy];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

+ (id)getContentViewChildren:(id)children
{
  childrenCopy = children;
  v4 = +[NSMutableArray array];
  [AETestDriver getWebViews:childrenCopy result:v4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F587C;
  v7[3] = &unk_1E5D58;
  v8 = childrenCopy;
  v5 = childrenCopy;
  [v4 sortUsingComparator:v7];

  return v4;
}

+ (id)getViewSnapshot:(id)snapshot parent:(id)parent
{
  parentCopy = parent;
  snapshotCopy = snapshot;
  [snapshotCopy bounds];
  v18.width = v7;
  v18.height = v8;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  layer = [snapshotCopy layer];
  [layer renderInContext:CurrentContext];

  [parentCopy bounds];
  [snapshotCopy convertPoint:parentCopy fromView:?];
  v12 = v11;
  v14 = v13;

  CGContextTranslateCTM(CurrentContext, v12, v14);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (void)paginationControllerFinishedWebkitRendering:(id)rendering renderTree:(id)tree pageCount:(unint64_t)count
{
  layoutDelegate = self->_layoutDelegate;
  if (layoutDelegate)
  {
    [(AELayoutTestDelegate *)layoutDelegate paginationControllerFinishedWebkitRendering:rendering renderTree:tree pageCount:count];
  }
}

- (void)paginationControllerFinishedBookPagination:(id)pagination
{
  layoutDelegate = self->_layoutDelegate;
  if (layoutDelegate)
  {
    [(AELayoutTestDelegate *)layoutDelegate paginationControllerFinishedBookPagination:pagination];
  }
}

- (void)presentationControllerFinishedWebkitRendering:(id)rendering renderTree:(id)tree pageCount:(unint64_t)count
{
  layoutDelegate = self->_layoutDelegate;
  if (layoutDelegate)
  {
    [(AELayoutTestDelegate *)layoutDelegate presentationControllerFinishedWebkitRendering:rendering renderTree:tree pageCount:count];
  }
}

- (void)bookViewDidAppear:(id)appear
{
  appearCopy = appear;
  if (self->_delegate)
  {
    objc_opt_class();
    v4 = BUDynamicCast();
    [(AETestDriverDelegate *)self->_delegate bookViewDidAppear:v4];
  }

  eventDispatcher = self->_eventDispatcher;
  if (eventDispatcher)
  {
    [(AETestDriverEventDispatcher *)eventDispatcher notifyBookController:appearCopy];
  }
}

- (void)bookViewWillDisappear:(id)disappear
{
  disappearCopy = disappear;
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