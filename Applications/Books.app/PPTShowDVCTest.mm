@interface PPTShowDVCTest
- (void)startTest;
@end

@implementation PPTShowDVCTest

- (void)startTest
{
  [(PPTBasicTest *)self setRunning:1];
  bookController = [(PPTBasicTest *)self bookController];
  [THTestDriver goToFirstChapterWithController:bookController];

  v4 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014F90C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
}

@end