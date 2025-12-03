@interface BKBookReader
- (BKBookReader)initWithDelegate:(id)delegate;
- (float)getFloatDefault:(id)default default:(float)a4;
- (void)bookDidAppear;
- (void)decideAboutOpeningTheNextBook;
- (void)doneSleepingBeforeNextBook;
- (void)doneSleepingBeforePagination;
- (void)doneSleepingBeforeSnapshot;
- (void)firstPageRequested;
- (void)libraryDidAppear;
- (void)newPageIsReady;
- (void)pageTurnFailed;
- (void)paginationDidEnd;
- (void)sleepBeforeNextBook;
- (void)sleepBeforePagination;
- (void)sleepBeforeSnapshot;
- (void)start;
@end

@implementation BKBookReader

- (float)getFloatDefault:(id)default default:(float)a4
{
  defaultCopy = default;
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 floatForKey:defaultCopy];
  v8 = v7;

  if (v8 <= 0.0)
  {
    return a4;
  }

  else
  {
    return v8;
  }
}

- (BKBookReader)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = BKBookReader;
  v6 = [(BKBookReader *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v7->_state = 0;
    LODWORD(v8) = 2.0;
    [(BKBookReader *)v7 getFloatDefault:@"BKBookReaderSleepBeforePagination" default:v8];
    v7->_sleepBeforePagination = v9;
    LODWORD(v10) = 1.0;
    [(BKBookReader *)v7 getFloatDefault:@"BKBookReaderSleepBeforeNextBook" default:v10];
    v7->_sleepBeforeNextBook = v11;
    LODWORD(v12) = 0.5;
    [(BKBookReader *)v7 getFloatDefault:@"BKBookReaderSleepBeforeSnapshot" default:v12];
    v7->_sleepBeforeSnapshot = v13;
  }

  return v7;
}

- (void)doneSleepingBeforeNextBook
{
  if (self->_state == 1)
  {
    [(BKBookReaderDelegate *)self->_delegate openNextBook];
    paginationDidEnd = [(BKBookReaderDelegate *)self->_delegate paginationDidEnd];
    bookDidAppear = [(BKBookReaderDelegate *)self->_delegate bookDidAppear];
    if (paginationDidEnd)
    {
      if (bookDidAppear)
      {
        [(BKBookReaderDelegate *)self->_delegate goToFirstPage];
        v5 = 9;
      }

      else
      {
        v5 = 4;
      }
    }

    else if (bookDidAppear)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }

    self->_state = v5;
  }
}

- (void)sleepBeforeNextBook
{
  v3 = dispatch_time(0, (self->_sleepBeforeNextBook * 1000000000.0));
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F158;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, queue, block);
}

- (void)doneSleepingBeforeSnapshot
{
  if (self->_state == 2)
  {
    [(BKBookReaderDelegate *)self->_delegate takeSnapshot];
    [(BKBookReaderDelegate *)self->_delegate goToNextPage];
    self->_state = 7;
  }
}

- (void)sleepBeforeSnapshot
{
  v3 = dispatch_time(0, (self->_sleepBeforeSnapshot * 1000000000.0));
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F264;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, queue, block);
}

- (void)doneSleepingBeforePagination
{
  if (self->_state == 3)
  {
    [(BKBookReader *)self sleepBeforeSnapshot];
    self->_state = 2;
  }
}

- (void)sleepBeforePagination
{
  v3 = dispatch_time(0, (self->_sleepBeforePagination * 1000000000.0));
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F364;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, queue, block);
}

- (void)decideAboutOpeningTheNextBook
{
  if ([(BKBookReaderDelegate *)self->_delegate hasPendingBook])
  {
    [(BKBookReader *)self sleepBeforeNextBook];
    v3 = 1;
  }

  else
  {
    [(BKBookReaderDelegate *)self->_delegate terminateTest];
    v3 = 0;
  }

  self->_state = v3;
}

- (void)start
{
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F444;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)paginationDidEnd
{
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F540;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)libraryDidAppear
{
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F628;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)bookDidAppear
{
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F6CC;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)newPageIsReady
{
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F7B4;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pageTurnFailed
{
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F880;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)firstPageRequested
{
  queue = [(BKBookReaderDelegate *)self->_delegate queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F980;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(queue, block);
}

@end