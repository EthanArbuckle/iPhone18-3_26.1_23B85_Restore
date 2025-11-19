@interface PPTStoreDependentTest
- (BOOL)hasHandler;
- (PPTStoreDependentTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6;
@end

@implementation PPTStoreDependentTest

- (PPTStoreDependentTest)initWithName:(id)a3 options:(id)a4 testDefinition:(id)a5 isMainTest:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = PPTStoreDependentTest;
  return [(PPTBasicTest *)&v7 initWithName:a3 options:a4 testDefinition:a5 isMainTest:a6];
}

- (BOOL)hasHandler
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100170270;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
  return 0;
}

@end