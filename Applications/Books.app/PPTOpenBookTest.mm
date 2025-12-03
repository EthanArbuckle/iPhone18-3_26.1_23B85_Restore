@interface PPTOpenBookTest
- (void)startTest;
@end

@implementation PPTOpenBookTest

- (void)startTest
{
  asset = [(PPTBasicTest *)self asset];

  if (asset)
  {
    v17.receiver = self;
    v17.super_class = PPTOpenBookTest;
    [(PPTSubtestBasedOpenTest *)&v17 startTest];
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 objectForKey:@"BKPageTurnStyle"];

    if (!v5)
    {
      [v4 setObject:@"slide" forKey:@"BKPageTurnStyle"];
    }

    bookshelf = [(PPTBasicTest *)self bookshelf];
    if (!bookshelf)
    {
      v7 = sub_1001E65B0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Open book test could not find the bookshelf VC", buf, 2u);
      }
    }

    v8 = sub_1001E65B0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      dataSourceAdaptor = [bookshelf dataSourceAdaptor];
      booksDataSource = [dataSourceAdaptor booksDataSource];
      totalNumberOfItems = [booksDataSource totalNumberOfItems];
      *buf = 134217984;
      v19 = totalNumberOfItems;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Bookshelf has %ld books", buf, 0xCu);
    }

    objc_opt_class();
    asset2 = [(PPTBasicTest *)self asset];
    v13 = BUDynamicCast();

    dataSourceAdaptor2 = [bookshelf dataSourceAdaptor];
    booksDataSource2 = [dataSourceAdaptor2 booksDataSource];
    v16 = [booksDataSource2 indexPathForRepresentedObject:v13];

    if (v16)
    {
      [bookshelf bookTapped:v16 completion:0];

      return;
    }

    sub_10078B2F8(v13, bookshelf);
  }

  else
  {
    v4 = sub_1001E65B0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Open book test has no asset to open", buf, 2u);
    }
  }

  [(PPTBasicTest *)self finishPPTTestWithResult:1];
}

@end