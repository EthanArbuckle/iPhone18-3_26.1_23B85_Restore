@interface DADiagnosticsSessionAvailability
- (BOOL)isInternalInstall;
- (id)getSessionID;
- (id)serialNumbers;
- (void)checkAvailabilityWithReply:(id)reply;
- (void)checkAvailabilityWithTicketNumber:(id)number timeout:(double)timeout exitWhenDone:(BOOL)done completion:(id)completion;
- (void)checkAvailabilityWithTicketNumber:(id)number timeout:(double)timeout exitWhenDone:(BOOL)done response:(id)response;
- (void)checkEnhancedLoggingStateWithReply:(id)reply;
- (void)clearASTServerURL;
- (void)rebootIntoCheckerBoard;
- (void)setASTServerURL:(id)l;
@end

@implementation DADiagnosticsSessionAvailability

- (void)checkAvailabilityWithReply:(id)reply
{
  replyCopy = reply;
  xpc_transaction_interrupt_clean_exit();
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_10000CFA4;
  v8[4] = sub_10000CFD0;
  v9 = [replyCopy copy];
  v5 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CFD8;
  block[3] = &unk_1001BC988;
  objc_copyWeak(&v7, &location);
  block[4] = v8;
  dispatch_sync(v5, block);

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

- (void)checkAvailabilityWithTicketNumber:(id)number timeout:(double)timeout exitWhenDone:(BOOL)done response:(id)response
{
  doneCopy = done;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000D3B0;
  v11[3] = &unk_1001BC9B0;
  responseCopy = response;
  v10 = responseCopy;
  [(DADiagnosticsSessionAvailability *)self checkAvailabilityWithTicketNumber:number timeout:doneCopy exitWhenDone:v11 completion:timeout];
}

- (void)checkAvailabilityWithTicketNumber:(id)number timeout:(double)timeout exitWhenDone:(BOOL)done completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  v12 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D4BC;
  block[3] = &unk_1001BCA00;
  block[4] = self;
  v16 = numberCopy;
  timeoutCopy = timeout;
  v17 = completionCopy;
  doneCopy = done;
  v13 = completionCopy;
  v14 = numberCopy;
  dispatch_async(v12, block);
}

- (void)rebootIntoCheckerBoard
{
  if ([(DADiagnosticsSessionAvailability *)self isInternalInstall])
  {

    +[CBSUtilities rebootToCheckerBoard];
  }
}

- (void)setASTServerURL:(id)l
{
  lCopy = l;
  if ([(DADiagnosticsSessionAvailability *)self isInternalInstall])
  {
    v4 = +[DANvramUtil sharedInstance];
    v5 = [off_1001FBD28 copy];
    [v4 _writeNVRamVariable:v5 value:lCopy];
  }
}

- (void)clearASTServerURL
{
  if ([(DADiagnosticsSessionAvailability *)self isInternalInstall])
  {
    v3 = +[DANvramUtil sharedInstance];
    v2 = [off_1001FBD28 copy];
    [v3 _clearNVRamVariable:v2];
  }
}

- (id)getSessionID
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10000DC68;
  v16 = &unk_1001BCA28;
  v18 = &v19;
  v3 = dispatch_semaphore_create(0);
  v17 = v3;
  [(DADiagnosticsSessionAvailability *)self checkAvailabilityWithTicketNumber:0 timeout:0 exitWhenDone:&v13 response:30.0];
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Waiting for response to availability check", buf, 2u);
  }

  v5 = dispatch_time(0, 30000000000);
  v6 = dispatch_semaphore_wait(v3, v5);
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v20 + 24);
    *buf = 134218240;
    v24 = v6;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished waiting for response to availability check. timedOut: %ld validSession: %d", buf, 0x12u);
  }

  if (*(v20 + 24) == 1)
  {
    CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
    v9 = CFPreferencesCopyAppValue(@"InCurrentSession", @"com.apple.Diagnostics");
    if ([v9 BOOLValue])
    {
      v10 = @"IN_CURRENT_SESSION";
    }

    else
    {
      v10 = +[NSString string];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session status: %@", buf, 0xCu);
  }

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (BOOL)isInternalInstall
{
  if (qword_100202D28 != -1)
  {
    sub_1001584AC();
  }

  return byte_100202D20;
}

- (void)checkEnhancedLoggingStateWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[ELSManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DE3C;
  v6[3] = &unk_1001BCA70;
  v7 = replyCopy;
  v5 = replyCopy;
  [v4 refreshWithCompletion:v6];
}

- (id)serialNumbers
{
  v2 = +[NSMutableSet set];
  v3 = [NSMutableSet setWithObjects:objc_opt_class(), 0];
  [v3 addObject:objc_opt_class()];
  v4 = +[CBSUtilities isCheckerBoardActive];
  if ((BYSetupAssistantNeedsToRun() & 1) != 0 || v4 & 1 | ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0))
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Only reporting serial number for local device and physically connected accessories because Buddy is not finished", buf, 2u);
    }
  }

  else
  {
    [v3 addObject:objc_opt_class()];
    [v3 addObject:objc_opt_class()];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [DADeviceObserverAggregator aggregatorWithObserverClasses:v3];
  v8 = dispatch_semaphore_create(0);
  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Discovering devices…", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000E154;
  v14[3] = &unk_1001BCAC0;
  v10 = v2;
  v15 = v10;
  v16 = v8;
  v11 = v8;
  [v7 discoverAllDevicesWithCompletionHandler:v14];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v6);
  v12 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Discovery complete, found: %@", buf, 0xCu);
  }

  return v10;
}

@end