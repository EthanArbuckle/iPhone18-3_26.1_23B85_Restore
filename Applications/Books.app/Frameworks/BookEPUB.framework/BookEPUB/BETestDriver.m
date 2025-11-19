@interface BETestDriver
+ (id)shared;
- (BETestDriverTestStateProvider)testStateProvider;
- (void)postEvent:(id)a3 sender:(id)a4;
@end

@implementation BETestDriver

+ (id)shared
{
  if (qword_36AA68 != -1)
  {
    sub_263908();
  }

  v3 = qword_36AA60;

  return v3;
}

- (void)postEvent:(id)a3 sender:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(BETestDriver *)self testStateProvider];
  v8 = [v7 testIsRunning];

  if (v8)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:v10 object:v6];
  }
}

- (BETestDriverTestStateProvider)testStateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_testStateProvider);

  return WeakRetained;
}

@end