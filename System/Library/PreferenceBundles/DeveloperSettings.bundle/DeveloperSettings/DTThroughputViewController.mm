@interface DTThroughputViewController
- (id)downloadSpeed:(id)speed;
- (id)latency:(id)latency;
- (id)packetLoss:(id)loss;
- (id)specifiers;
- (id)uploadSpeed:(id)speed;
- (void)cancelSpeedTest:(id)test;
- (void)startSpeedTest;
- (void)startSpeedTest:(id)test;
- (void)updateTestStatus:(int64_t)status;
- (void)viewDidLoad;
@end

@implementation DTThroughputViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DTThroughputViewController;
  [(DTThroughputViewController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RUN_THROUGHPUT_TEST" value:&stru_3E0D8 table:@"DTSettings"];
  [(DTThroughputViewController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = objc_opt_new();
  v39 = [PSSpecifier preferenceSpecifierNamed:&stru_3E0D8 target:self set:0 get:0 detail:0 cell:0 edit:0];
  [v3 addObject:?];
  testStatus = [(DTThroughputViewController *)self testStatus];
  if (testStatus == 2)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CANCELLING_THROUGHPUT_TEST" value:&stru_3E0D8 table:@"DTSettings"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:-1 edit:0];

    goto LABEL_8;
  }

  if (testStatus == 1)
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CANCEL_THROUGHPUT_TEST" value:&stru_3E0D8 table:@"DTSettings"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:15 edit:0];

    v9 = "cancelSpeedTest:";
    goto LABEL_6;
  }

  v5 = 0;
  if (!testStatus)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"START_THROUGHPUT_TEST" value:&stru_3E0D8 table:@"DTSettings"];
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

    v9 = "startSpeedTest:";
LABEL_6:
    v5 = v8;
    [v8 setButtonAction:v9];
  }

LABEL_8:
  v37 = v5;
  [v3 addObject:v5];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"RESULTS" value:&stru_3E0D8 table:@"DTSettings"];
  v38 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v16 = [NSBundle bundleForClass:objc_opt_class()];
  v17 = SFLocalizableWAPIStringKeyForKey();
  v18 = [v16 localizedStringForKey:v17 value:&stru_3E0D8 table:@"DTSettings"];
  [v38 setProperty:v18 forKey:PSFooterTextGroupKey];

  [v3 addObject:v38];
  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"PACKET_LOSS" value:&stru_3E0D8 table:@"DTSettings"];
  v36 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:"packetLoss:" detail:0 cell:4 edit:0];

  [v3 addObject:v36];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"LATENCY" value:&stru_3E0D8 table:@"DTSettings"];
  v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:"latency:" detail:0 cell:4 edit:0];

  [v3 addObject:v23];
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"DOWNLOAD_SPEED" value:&stru_3E0D8 table:@"DTSettings"];
  v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:"downloadSpeed:" detail:0 cell:4 edit:0];

  [v3 addObject:v26];
  v27 = [NSBundle bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"UPLOAD_SPEED" value:&stru_3E0D8 table:@"DTSettings"];
  v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:"uploadSpeed:" detail:0 cell:4 edit:0];

  [v3 addObject:v29];
  v30 = OBJC_IVAR___PSListController__specifiers;
  v31 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v32 = v3;

  v33 = *&self->PSListController_opaque[v30];
  v34 = v33;

  return v33;
}

- (id)packetLoss:(id)loss
{
  testResults = [(DTThroughputViewController *)self testResults];
  if (testResults)
  {
    testResults2 = [(DTThroughputViewController *)self testResults];
    pingResults = [testResults2 pingResults];
    [pingResults percentLost];
    v8 = [NSString stringWithFormat:@"%.2f %%", v7];
  }

  else
  {
    v8 = &stru_3E0D8;
  }

  return v8;
}

- (id)latency:(id)latency
{
  testResults = [(DTThroughputViewController *)self testResults];
  if (testResults)
  {
    testResults2 = [(DTThroughputViewController *)self testResults];
    pingResults = [testResults2 pingResults];
    [pingResults meanLatency];
    v8 = [NSString stringWithFormat:@"%.2f ms", v7 * 1000.0];
  }

  else
  {
    v8 = &stru_3E0D8;
  }

  return v8;
}

- (id)downloadSpeed:(id)speed
{
  testResults = [(DTThroughputViewController *)self testResults];
  if (testResults)
  {
    testResults2 = [(DTThroughputViewController *)self testResults];
    downloadResults = [testResults2 downloadResults];
    [downloadResults speed];
    v8 = [NSString stringWithFormat:@"%.2f Mbps", v7];
  }

  else
  {
    v8 = &stru_3E0D8;
  }

  return v8;
}

- (id)uploadSpeed:(id)speed
{
  testResults = [(DTThroughputViewController *)self testResults];
  if (testResults)
  {
    testResults2 = [(DTThroughputViewController *)self testResults];
    uploadResults = [testResults2 uploadResults];
    [uploadResults speed];
    v8 = [NSString stringWithFormat:@"%.2f Mbps", v7];
  }

  else
  {
    v8 = &stru_3E0D8;
  }

  return v8;
}

- (void)cancelSpeedTest:(id)test
{
  testObject = [(DTThroughputViewController *)self testObject];

  if (testObject)
  {
    [(DTThroughputViewController *)self updateTestStatus:2];
    testObject2 = [(DTThroughputViewController *)self testObject];
    [testObject2 cancelAllNetworking];

    objc_initWeak(&location, self);
    v6 = dispatch_time(0, 5000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_20A3C;
    block[3] = &unk_3D968;
    objc_copyWeak(&v8, &location);
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {

    [(DTThroughputViewController *)self updateTestStatus:0];
  }
}

- (void)startSpeedTest:(id)test
{
  testCopy = test;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"THROUGHPUT_ALERT_TITLE" value:&stru_3E0D8 table:@"DTSettings"];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"THROUGHPUT_ALERT_TEXT" value:&stru_3E0D8 table:@"DTSettings"];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"THROUGHPUT_ALERT_CONTINUE" value:&stru_3E0D8 table:@"DTSettings"];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"THROUGHPUT_ALERT_CANCEL" value:&stru_3E0D8 table:@"DTSettings"];

  v13 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];
  v14 = [UIAlertAction actionWithTitle:v12 style:1 handler:&stru_3D988];
  [v13 addAction:v14];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_20D3C;
  v17[3] = &unk_3D4E8;
  v17[4] = self;
  v15 = [UIAlertAction actionWithTitle:v10 style:0 handler:v17];
  [v13 addAction:v15];
  [v13 setPreferredAction:v15];
  target = [testCopy target];

  [target presentViewController:v13 animated:1 completion:0];
}

- (void)updateTestStatus:(int64_t)status
{
  [(DTThroughputViewController *)self setTestStatus:status];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20E00;
  block[3] = &unk_3D5B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)startSpeedTest
{
  v3 = +[NPTPerformanceTestConfiguration defaultConfiguration];
  [v3 setTestDuration:10];
  [v3 setConcurrentStreams:4];
  [v3 setInterfaceType:3];
  [v3 setUseSecureConnection:1];
  [v3 setClientName:@"DeveloperSettings"];
  [(DTThroughputViewController *)self setTestResults:0];
  v4 = [NPTPerformanceTest performanceTestWithConfiguration:v3];
  [(DTThroughputViewController *)self setTestObject:v4];

  objc_initWeak(&location, self);
  testObject = [(DTThroughputViewController *)self testObject];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_20F74;
  v6[3] = &unk_3D9D8;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [testObject startTestWithCompletion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

@end