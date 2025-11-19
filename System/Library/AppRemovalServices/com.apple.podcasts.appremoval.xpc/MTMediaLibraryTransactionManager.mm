@interface MTMediaLibraryTransactionManager
- (MTMediaLibraryTransactionManager)init;
- (void)_beginGeneratingLibraryChangeNotifications;
- (void)_endGeneratingLibraryChangeNotifications;
- (void)beginGeneratingLibraryChangeNotifications:(id)a3;
- (void)endGeneratingLibraryChangeNotifications:(id)a3;
- (void)requestMediaLibraryReadTransaction:(id)a3;
- (void)requestMediaLibraryWriteTransaction:(id)a3 completion:(id)a4;
@end

@implementation MTMediaLibraryTransactionManager

- (MTMediaLibraryTransactionManager)init
{
  v5.receiver = self;
  v5.super_class = MTMediaLibraryTransactionManager;
  v2 = [(MTMediaLibraryTransactionManager *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MTMediaLibraryManager", 0);
    [(MTMediaLibraryTransactionManager *)v2 setSerialQueue:v3];

    [(MTMediaLibraryTransactionManager *)v2 setCounterForGeneratingLibraryChangeNotifications:0];
  }

  return v2;
}

- (void)requestMediaLibraryWriteTransaction:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MTMediaLibraryTransactionManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000213C;
  block[3] = &unk_10000C520;
  objc_copyWeak(&v14, &location);
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)requestMediaLibraryReadTransaction:(id)a3
{
  v4 = a3;
  v5 = [(MTMediaLibraryTransactionManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002318;
  block[3] = &unk_10000C468;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)_beginGeneratingLibraryChangeNotifications
{
  v3 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = [(MTMediaLibraryTransactionManager *)self counterForGeneratingLibraryChangeNotifications];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "will beginGeneratingLibraryChangeNotifications: %li", &v7, 0xCu);
  }

  v4 = +[MPMediaLibrary defaultMediaLibrary];
  [v4 beginGeneratingLibraryChangeNotifications];

  [(MTMediaLibraryTransactionManager *)self setCounterForGeneratingLibraryChangeNotifications:[(MTMediaLibraryTransactionManager *)self counterForGeneratingLibraryChangeNotifications]+ 1];
  v5 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(MTMediaLibraryTransactionManager *)self counterForGeneratingLibraryChangeNotifications];
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "did beginGeneratingLibraryChangeNotifications: %li", &v7, 0xCu);
  }
}

- (void)_endGeneratingLibraryChangeNotifications
{
  if (![(MTMediaLibraryTransactionManager *)self counterForGeneratingLibraryChangeNotifications])
  {
    v3 = _MTLogCategoryMediaLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "attempting to endGeneratingLibraryChangeNotifications when already ended -- could result in unbalanced calls", &v9, 2u);
    }
  }

  v4 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(MTMediaLibraryTransactionManager *)self counterForGeneratingLibraryChangeNotifications];
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "will endGeneratingLibraryChangeNotifications: %ld", &v9, 0xCu);
  }

  v6 = +[MPMediaLibrary defaultMediaLibrary];
  [v6 endGeneratingLibraryChangeNotifications];

  [(MTMediaLibraryTransactionManager *)self setCounterForGeneratingLibraryChangeNotifications:[(MTMediaLibraryTransactionManager *)self counterForGeneratingLibraryChangeNotifications]- 1];
  v7 = _MTLogCategoryMediaLibrary();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(MTMediaLibraryTransactionManager *)self counterForGeneratingLibraryChangeNotifications];
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "will endGeneratingLibraryChangeNotifications: %ld", &v9, 0xCu);
  }
}

- (void)beginGeneratingLibraryChangeNotifications:(id)a3
{
  v4 = a3;
  v5 = [(MTMediaLibraryTransactionManager *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000026EC;
  v7[3] = &unk_10000C548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)endGeneratingLibraryChangeNotifications:(id)a3
{
  v4 = a3;
  v5 = [(MTMediaLibraryTransactionManager *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000027E8;
  v7[3] = &unk_10000C490;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end