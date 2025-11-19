@interface PPTTestRunner
- (PPTTestRunner)init;
- (id)createSafeBlock:(id)a3;
- (void)prepareTestToStart;
- (void)removeTestFromQueue;
- (void)start;
- (void)stop;
- (void)terminateTest;
@end

@implementation PPTTestRunner

- (void)removeTestFromQueue
{
  v2 = [(PPTTestRunner *)self testQueue];
  [v2 removeObjectAtIndex:0];
}

- (void)start
{
  v2 = [(PPTTestRunner *)self machine];
  [v2 start];
}

- (void)stop
{
  v2 = [(PPTTestRunner *)self machine];
  [v2 stop];
}

- (PPTTestRunner)init
{
  v9.receiver = self;
  v9.super_class = PPTTestRunner;
  v2 = [(PPTTestRunner *)&v9 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_queue, &_dispatch_main_q);
    v4 = +[NSMutableArray array];
    testQueue = v3->_testQueue;
    v3->_testQueue = v4;

    v6 = [[PPTTestRunnerSM alloc] initWithDelegate:v3];
    machine = v3->_machine;
    v3->_machine = v6;

    v3->_testSequence = 0;
  }

  return v3;
}

- (id)createSafeBlock:(id)a3
{
  v4 = a3;
  testSequence = self->_testSequence;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001ABF1C;
  v9[3] = &unk_100A0A478;
  objc_copyWeak(&v11, &location);
  v12 = testSequence;
  v10 = v4;
  v6 = v4;
  v7 = objc_retainBlock(v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (void)prepareTestToStart
{
  v3 = [(PPTTestRunner *)self testQueue];
  v4 = [v3 objectAtIndex:0];
  testDelegate = self->_testDelegate;
  self->_testDelegate = v4;

  v6 = [[PPTTestSM alloc] initWithDelegate:self];
  testMachine = self->_testMachine;
  self->_testMachine = v6;

  v8 = [(PPTTestRunner *)self createSafeBlock:&stru_100A0A4B8];
  [(PPTTestDelegate *)self->_testDelegate setOnTestFinished:v8];

  v9 = [(PPTTestRunner *)self createSafeBlock:&stru_100A0A4D8];
  [(PPTTestDelegate *)self->_testDelegate setOnReceiveHandler:v9];

  v10 = [(PPTTestRunner *)self createSafeBlock:&stru_100A0A4F8];
  [(PPTTestSM *)self->_testMachine setOnTestFinished:v10];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001AC27C;
  v15[3] = &unk_100A0A548;
  v15[4] = self;
  v11 = objc_retainBlock(v15);
  v12 = (v11[2])(v11, @"failed");
  [(PPTTestSM *)self->_testMachine setOnTestError:v12];

  v13 = (v11[2])(v11, @"time out");
  [(PPTTestSM *)self->_testMachine setOnTestTimeout:v13];

  v14 = (v11[2])(v11, @"time out waiting for handler");
  [(PPTTestSM *)self->_testMachine setOnHandlerTimeout:v14];
}

- (void)terminateTest
{
  ++self->_testSequence;
  testMachine = self->_testMachine;
  self->_testMachine = 0;

  [(PPTTestDelegate *)self->_testDelegate setOnTestFinished:0];
  [(PPTTestDelegate *)self->_testDelegate setOnReceiveHandler:0];
  testDelegate = self->_testDelegate;
  self->_testDelegate = 0;
}

@end