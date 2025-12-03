@interface PPTStoreDependentTest
- (BOOL)hasHandler;
- (PPTStoreDependentTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test;
@end

@implementation PPTStoreDependentTest

- (PPTStoreDependentTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test
{
  v7.receiver = self;
  v7.super_class = PPTStoreDependentTest;
  return [(PPTBasicTest *)&v7 initWithName:name options:options testDefinition:definition isMainTest:test];
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