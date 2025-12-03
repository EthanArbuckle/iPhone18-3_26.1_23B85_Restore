@interface BETestDriver
+ (id)shared;
- (BETestDriverTestStateProvider)testStateProvider;
- (void)postEvent:(id)event sender:(id)sender;
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

- (void)postEvent:(id)event sender:(id)sender
{
  eventCopy = event;
  senderCopy = sender;
  testStateProvider = [(BETestDriver *)self testStateProvider];
  testIsRunning = [testStateProvider testIsRunning];

  if (testIsRunning)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:eventCopy object:senderCopy];
  }
}

- (BETestDriverTestStateProvider)testStateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_testStateProvider);

  return WeakRetained;
}

@end