@interface PPTLibraryDependentTest
- (BOOL)hasHandler;
- (PPTLibraryDependentTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6;
@end

@implementation PPTLibraryDependentTest

- (PPTLibraryDependentTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PPTLibraryDependentTest;
  v11 = [(PPTBasicTest *)&v16 initWithName:a3 options:a4 testDefinition:v10 isMainTest:v6];
  if (v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"library-type"];
    v13 = [v12 isEqualToString:@"list"];
    v14 = 1;
    if (v13)
    {
      v14 = 2;
    }

    v11->_mode = v14;
  }

  return v11;
}

- (BOOL)hasHandler
{
  v3 = [(PPTBasicTest *)self bookshelf];
  [v3 changeViewModeTo:self->_mode];
  v4 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DEE0;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);

  return 0;
}

@end