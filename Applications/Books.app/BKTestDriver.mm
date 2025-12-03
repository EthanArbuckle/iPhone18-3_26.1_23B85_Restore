@interface BKTestDriver
+ (BOOL)createPath:(id)path errorLabel:(id)label;
+ (void)prewarm;
- (BKTestDriver)init;
- (BOOL)bookDidAppear;
- (BOOL)createFile:(id)file content:(id)content errorLabel:(id)label;
- (BOOL)createJsonFile:(id)file content:(id)content errorLabel:(id)label;
- (BOOL)hasPendingBook;
- (BOOL)isInLibrary;
- (BOOL)paginationDidEnd;
- (id)createBookDirectory:(id)directory;
- (id)createResultsJsonFile;
- (id)getBookInfo:(id)info errorLabel:(id)label;
- (id)getJsonFrom:(id)from errorLabel:(id)label;
- (void)bookViewDidAppear:(id)appear;
- (void)bookViewWillDisappear:(id)disappear;
- (void)clear;
- (void)deleteFile:(id)file;
- (void)dispatchInQueue:(id)queue async:(id)async;
- (void)goToFirstPage;
- (void)goToNextPage;
- (void)libraryViewDidAppear:(id)appear;
- (void)libraryViewWillDisappear:(id)disappear;
- (void)openNextBook;
- (void)paginationControllerFinishedBookPagination:(id)pagination;
- (void)paginationControllerFinishedWebkitRendering:(id)rendering renderTree:(id)tree pageCount:(unint64_t)count;
- (void)presentationControllerFinishedWebkitRendering:(id)rendering renderTree:(id)tree pageCount:(unint64_t)count;
- (void)processPageTurnResult:(BOOL)result;
- (void)recordPaginationInfo:(id)info info:(id)a4 renderTree:(id)tree pageCount:(unint64_t)count errorLabel:(id)label;
- (void)setLibraryViewController:(id)controller;
- (void)takeSnapshot;
- (void)terminateBookTest;
- (void)terminateTest;
@end

@implementation BKTestDriver

+ (void)prewarm
{
  if (qword_100AF7820 != -1)
  {
    sub_100793A74();
  }
}

- (BKTestDriver)init
{
  v29.receiver = self;
  v29.super_class = BKTestDriver;
  v2 = [(BKTestDriver *)&v29 init];
  v3 = v2;
  if (v2)
  {
    v2->_idSeq = 0;
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 BOOLForKey:@"BKTestEPubLayout"];

    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 BOOLForKey:@"BKTestEPubPowerConsumption"];

    v8 = +[NSUserDefaults standardUserDefaults];
    v3->_loop = [v8 BOOLForKey:@"BKTestEPubLoopFirstBook"];

    v9 = +[NSUserDefaults standardUserDefaults];
    v3->_firstPage = [v9 integerForKey:@"BKTestEPubFirstPage"];

    if (v3->_firstPage <= 0)
    {
      v3->_firstPage = 1;
    }

    [(BKTestDriver *)v3 clear];
    if ((v5 | v7))
    {
      v10 = dispatch_queue_create("com.apple.iBooks.TestDriver", 0);
      queue = v3->_queue;
      v3->_queue = v10;

      v12 = +[NSMutableDictionary dictionary];
      bookMap = v3->_bookMap;
      v3->_bookMap = v12;

      v14 = +[NSURL bu_booksRepositoryURL];
      v15 = [v14 URLByAppendingPathComponent:@"Tests"];
      path = [v15 path];

      v17 = [path stringByAppendingPathComponent:@"Books"];
      booksTestRoot = v3->_booksTestRoot;
      v3->_booksTestRoot = v17;

      v19 = [[BKBookReader alloc] initWithDelegate:v3];
      machine = v3->_machine;
      v3->_machine = v19;

      v21 = +[AETestDriver shared];
      [v21 setDelegate:v3];
    }

    else
    {
      v22 = v3->_queue;
      v3->_queue = 0;

      v23 = v3->_bookMap;
      v3->_bookMap = 0;

      v24 = v3->_booksTestRoot;
      v3->_booksTestRoot = 0;

      path = v3->_machine;
      v3->_machine = 0;
    }

    if (v5)
    {
      v25 = +[AETestDriver shared];
      [v25 setLayoutDelegate:v3];
    }

    machine = [(BKTestDriver *)v3 machine];

    if (machine)
    {
      machine2 = [(BKTestDriver *)v3 machine];
      [machine2 start];
    }
  }

  return v3;
}

- (void)clear
{
  [(BKTestDriver *)self setCurrentBook:-1];
  [(BKTestDriver *)self setBookList:0];
  [(BKTestDriver *)self setLibraryController:0];
  [(BKTestDriver *)self setBookController:0];

  [(BKTestDriver *)self setPaginationEnded:0];
}

+ (BOOL)createPath:(id)path errorLabel:(id)label
{
  pathCopy = path;
  v5 = +[NSFileManager defaultManager];
  v8 = 0;
  v6 = [v5 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v8];

  return v6;
}

- (BOOL)createFile:(id)file content:(id)content errorLabel:(id)label
{
  contentCopy = content;
  fileCopy = file;
  booksTestRoot = [(BKTestDriver *)self booksTestRoot];
  fileCopy = [NSString stringWithFormat:@"%@/%@", booksTestRoot, fileCopy];

  stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
  v12 = +[NSFileManager defaultManager];
  v15 = 0;
  LODWORD(fileCopy) = [v12 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v15];

  if (fileCopy)
  {
    v13 = [contentCopy writeToFile:fileCopy atomically:1];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)deleteFile:(id)file
{
  fileCopy = file;
  booksTestRoot = [(BKTestDriver *)self booksTestRoot];
  fileCopy = [NSString stringWithFormat:@"%@/%@", booksTestRoot, fileCopy];

  v7 = +[NSFileManager defaultManager];
  v8 = 0;
  [v7 removeItemAtPath:fileCopy error:&v8];
}

- (id)getJsonFrom:(id)from errorLabel:(id)label
{
  v6 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:from options:1 error:&v6];

  return v4;
}

- (BOOL)createJsonFile:(id)file content:(id)content errorLabel:(id)label
{
  fileCopy = file;
  labelCopy = label;
  v10 = [(BKTestDriver *)self getJsonFrom:content errorLabel:labelCopy];
  if (v10)
  {
    v11 = [(BKTestDriver *)self createFile:fileCopy content:v10 errorLabel:labelCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)createBookDirectory:(id)directory
{
  directoryCopy = directory;
  booksTestRoot = [(BKTestDriver *)self booksTestRoot];
  v6 = [BKTestDriver createPath:booksTestRoot errorLabel:directoryCopy];

  if (v6)
  {
    do
    {
      booksTestRoot2 = [(BKTestDriver *)self booksTestRoot];
      v8 = [(BKTestDriver *)self idSeq]+ 1;
      [(BKTestDriver *)self setIdSeq:v8];
      v9 = [NSString stringWithFormat:@"%@/%d", booksTestRoot2, v8];

      v10 = +[NSFileManager defaultManager];
      LODWORD(v8) = [v10 createDirectoryAtPath:v9 withIntermediateDirectories:0 attributes:0 error:0];

      v11 = 0;
      if (v8)
      {
        v11 = [NSString stringWithFormat:@"%d", [(BKTestDriver *)self idSeq]];
      }
    }

    while (!v11);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getBookInfo:(id)info errorLabel:(id)label
{
  infoCopy = info;
  labelCopy = label;
  bookMap = [(BKTestDriver *)self bookMap];
  v9 = [bookMap objectForKey:infoCopy];

  if (!v9)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = [(BKTestDriver *)self createBookDirectory:labelCopy];
    [v9 setObject:v10 forKey:@"path"];
    v20 = [NSString stringWithFormat:@"%@/info.json", v10];
    [v9 setObject:v20 forKey:@"info-path"];
    [(BKTestDriver *)self createJsonFile:v20 content:infoCopy errorLabel:labelCopy];
    [v9 setObject:infoCopy forKey:@"info"];
    v19 = [NSString stringWithFormat:@"%@/pages", v10];
    [v9 setObject:v19 forKey:@"pages-path"];
    v11 = [NSString stringWithFormat:@"%@/pagination", v10];
    [v9 setObject:v11 forKey:@"pagination-path"];
    v12 = [NSString stringWithFormat:@"%@/result.json", v11];
    [v9 setObject:v12 forKey:@"pagination-result-path"];
    v13 = [NSString stringWithFormat:@"%@/presentation", v10];
    [v9 setObject:v13 forKey:@"presentation-path"];
    v14 = +[NSMutableArray array];
    [v9 setObject:v14 forKey:@"pagination-items"];

    v15 = +[NSMutableArray array];
    [v9 setObject:v15 forKey:@"presentation-items"];

    v16 = +[NSMutableArray array];
    [v9 setObject:v16 forKey:@"pages"];

    bookMap2 = [(BKTestDriver *)self bookMap];
    [bookMap2 setObject:v9 forKey:infoCopy];
  }

  return v9;
}

- (void)recordPaginationInfo:(id)info info:(id)a4 renderTree:(id)tree pageCount:(unint64_t)count errorLabel:(id)label
{
  infoCopy = info;
  v13 = a4;
  treeCopy = tree;
  labelCopy = label;
  v16 = [(BKTestDriver *)self getValueForKey:@"fail" from:v13 errorLabel:labelCopy];
  v17 = v16;
  if (v16 && ([v16 BOOLValue] & 1) == 0)
  {
    v18 = [(BKTestDriver *)self getValueForKey:@"book" from:v13 errorLabel:labelCopy];
    if (v18)
    {
      v41 = [(BKTestDriver *)self getValueForKey:@"job.documentOrdinal" from:v13 errorLabel:labelCopy];
      if (v41)
      {
        v19 = [(BKTestDriver *)self getBookInfo:v18 errorLabel:labelCopy];
        if (v19)
        {
          v20 = v19;
          infoCopy = [NSString stringWithFormat:@"%@-path", infoCopy];
          v40 = v20;
          v22 = [(BKTestDriver *)self getValueForKey:infoCopy from:v20 errorLabel:labelCopy];

          v23 = [NSString stringWithFormat:@"%@/result.json", v22];
          if (v23)
          {
            v38 = v23;
            [(BKTestDriver *)self deleteFile:v23];
            v39 = v22;
            v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@/rt_%d.txt", v22, [v41 intValue]);
            v25 = [treeCopy dataUsingEncoding:4];
            v26 = NSStringFromSelector(a2);
            v27 = [(BKTestDriver *)self createFile:v24 content:v25 errorLabel:v26];

            if (v27)
            {
              infoCopy2 = [NSString stringWithFormat:@"%@-items", infoCopy];

              v37 = infoCopy2;
              v43 = [v40 objectForKey:infoCopy2];
              if ([v43 count] >= 1 && (objc_msgSend(v43, "lastObject"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "objectForKeyedSubscript:", @"path"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", v24), v30, v29, v31))
              {
                v32 = v24;
                v33 = [NSNumber numberWithUnsignedLong:count];
                v34 = v43;
                lastObject = [v43 lastObject];
                [lastObject setObject:v33 forKeyedSubscript:@"page-count"];
              }

              else
              {
                v33 = +[NSMutableDictionary dictionary];
                v32 = v24;
                [v33 setObject:v24 forKeyedSubscript:@"path"];
                v36 = [NSNumber numberWithUnsignedLong:count];
                [v33 setObject:v36 forKeyedSubscript:@"page-count"];

                v34 = v43;
                [v43 addObject:v33];
              }

              infoCopy = v37;
            }

            else
            {
              v32 = v24;
            }

            v22 = v39;

            v23 = v38;
          }

          v19 = v40;
        }
      }
    }
  }
}

- (void)presentationControllerFinishedWebkitRendering:(id)rendering renderTree:(id)tree pageCount:(unint64_t)count
{
  renderingCopy = rendering;
  treeCopy = tree;
  queue = [(BKTestDriver *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001C30F8;
  v14[3] = &unk_100A0AAD8;
  v14[4] = self;
  v15 = renderingCopy;
  v16 = treeCopy;
  countCopy = count;
  v18 = a2;
  v12 = treeCopy;
  v13 = renderingCopy;
  [(BKTestDriver *)self dispatchInQueue:queue async:v14];
}

- (void)paginationControllerFinishedWebkitRendering:(id)rendering renderTree:(id)tree pageCount:(unint64_t)count
{
  renderingCopy = rendering;
  treeCopy = tree;
  queue = [(BKTestDriver *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001C3260;
  v14[3] = &unk_100A0AAD8;
  v14[4] = self;
  v15 = renderingCopy;
  v16 = treeCopy;
  countCopy = count;
  v18 = a2;
  v12 = treeCopy;
  v13 = renderingCopy;
  [(BKTestDriver *)self dispatchInQueue:queue async:v14];
}

- (void)paginationControllerFinishedBookPagination:(id)pagination
{
  paginationCopy = pagination;
  queue = [(BKTestDriver *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C3398;
  v8[3] = &unk_100A04CF0;
  v8[4] = self;
  v9 = paginationCopy;
  v10 = a2;
  v7 = paginationCopy;
  [(BKTestDriver *)self dispatchInQueue:queue async:v8];
}

- (void)bookViewDidAppear:(id)appear
{
  appearCopy = appear;
  queue = [(BKTestDriver *)self queue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1001C35E0;
  v11 = &unk_100A03440;
  selfCopy = self;
  v13 = appearCopy;
  v6 = appearCopy;
  [(BKTestDriver *)self dispatchInQueue:queue async:&v8];

  v7 = [(BKTestDriver *)self machine:v8];
  [v7 bookDidAppear];
}

- (void)bookViewWillDisappear:(id)disappear
{
  queue = [(BKTestDriver *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001C3678;
  v5[3] = &unk_100A033C8;
  v5[4] = self;
  [(BKTestDriver *)self dispatchInQueue:queue async:v5];
}

- (void)setLibraryViewController:(id)controller
{
  controllerCopy = controller;
  queue = [(BKTestDriver *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C373C;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  [(BKTestDriver *)self dispatchInQueue:queue async:v7];
}

- (void)libraryViewWillDisappear:(id)disappear
{
  machine = [(BKTestDriver *)self machine];

  if (machine)
  {
    [(BKTestDriver *)self setLibraryViewController:0];
  }

  eventDispatcher = [(BKTestDriver *)self eventDispatcher];

  if (eventDispatcher)
  {
    eventDispatcher2 = [(BKTestDriver *)self eventDispatcher];
    [eventDispatcher2 notifyLibraryController:0];
  }
}

- (void)libraryViewDidAppear:(id)appear
{
  appearCopy = appear;
  eventDispatcher = [(BKTestDriver *)self eventDispatcher];

  if (eventDispatcher)
  {
    eventDispatcher2 = [(BKTestDriver *)self eventDispatcher];
    [eventDispatcher2 notifyLibraryController:appearCopy];
  }

  machine = [(BKTestDriver *)self machine];

  if (machine)
  {
    [(BKTestDriver *)self setLibraryViewController:appearCopy];
    machine2 = [(BKTestDriver *)self machine];
    [machine2 libraryDidAppear];
  }
}

- (void)dispatchInQueue:(id)queue async:(id)async
{
  asyncCopy = async;
  queueCopy = queue;
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C3A74;
  block[3] = &unk_100A04058;
  objc_copyWeak(&v11, &location);
  v10 = asyncCopy;
  v8 = asyncCopy;
  dispatch_async(queueCopy, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)openNextBook
{
  [(BKTestDriver *)self setCurrentBook:[(BKTestDriver *)self currentBook]+ 1];
  [(BKTestDriver *)self setPaginationEnded:0];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001C3C20;
  v3[3] = &unk_100A033C8;
  v3[4] = self;
  [(BKTestDriver *)self dispatchInQueue:&_dispatch_main_q async:v3];
}

- (void)processPageTurnResult:(BOOL)result
{
  queue = [(BKTestDriver *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C3DC4;
  v6[3] = &unk_100A044C8;
  resultCopy = result;
  v6[4] = self;
  [(BKTestDriver *)self dispatchInQueue:queue async:v6];
}

- (void)goToNextPage
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001C3E98;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [(BKTestDriver *)self dispatchInQueue:&_dispatch_main_q async:v2];
}

- (void)goToFirstPage
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001C3F9C;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [(BKTestDriver *)self dispatchInQueue:&_dispatch_main_q async:v2];
}

- (void)takeSnapshot
{
  v4 = +[AETestDriver shared];
  testingLayout = [v4 testingLayout];

  if (testingLayout)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001C415C;
    v6[3] = &unk_100A04DD0;
    v6[4] = self;
    v6[5] = a2;
    [(BKTestDriver *)self dispatchInQueue:&_dispatch_main_q async:v6];
  }
}

- (id)createResultsJsonFile
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableArray array];
  bookMap = [(BKTestDriver *)self bookMap];
  allValues = [bookMap allValues];

  if ([allValues count])
  {
    v7 = 0;
    do
    {
      v8 = [allValues objectAtIndexedSubscript:v7];
      [v4 addObject:v8];

      ++v7;
    }

    while ([allValues count] > v7);
  }

  [v3 setObject:v4 forKey:@"info"];

  return v3;
}

- (void)terminateBookTest
{
  bookController = [(BKTestDriver *)self bookController];

  if (bookController)
  {
    bookController2 = [(BKTestDriver *)self bookController];
    v13 = [AETestDriver getBookKeyWithBookController:bookController2];

    v6 = v13;
    if (v13)
    {
      v7 = NSStringFromSelector(a2);
      v8 = [(BKTestDriver *)self getBookInfo:v13 errorLabel:v7];

      if (v8)
      {
        v9 = NSStringFromSelector(a2);
        v10 = [(BKTestDriver *)self getValueForKey:@"path" from:v8 errorLabel:v9];

        if (v10)
        {
          v11 = [NSString stringWithFormat:@"%@/read-info.json", v10];
          v12 = NSStringFromSelector(a2);
          [(BKTestDriver *)self createJsonFile:v11 content:v8 errorLabel:v12];
        }
      }

      v6 = v13;
    }
  }
}

- (void)terminateTest
{
  createResultsJsonFile = [(BKTestDriver *)self createResultsJsonFile];
  v5 = NSStringFromSelector(a2);
  [(BKTestDriver *)self createJsonFile:@"result.json" content:createResultsJsonFile errorLabel:v5];

  [(BKTestDriver *)self clear];
}

- (BOOL)isInLibrary
{
  libraryController = [(BKTestDriver *)self libraryController];
  v3 = libraryController != 0;

  return v3;
}

- (BOOL)hasPendingBook
{
  bookList = self->_bookList;
  if (bookList)
  {
    currentBook = self->_currentBook;
    LOBYTE(bookList) = currentBook < ([(NSArray *)bookList count]- 1);
  }

  return bookList;
}

- (BOOL)paginationDidEnd
{
  v3 = +[AETestDriver shared];
  if ([v3 testingLayout])
  {
    paginationEnded = [(BKTestDriver *)self paginationEnded];
  }

  else
  {
    paginationEnded = 1;
  }

  return paginationEnded;
}

- (BOOL)bookDidAppear
{
  bookController = [(BKTestDriver *)self bookController];
  v3 = bookController != 0;

  return v3;
}

@end