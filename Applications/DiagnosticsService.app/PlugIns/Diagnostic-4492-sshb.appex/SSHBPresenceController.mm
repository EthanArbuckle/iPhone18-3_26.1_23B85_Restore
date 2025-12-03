@interface SSHBPresenceController
- (void)setStatusCode:(int64_t)code;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
- (void)turtleCallback:(id)callback;
- (void)turtleWasDisconnected;
@end

@implementation SSHBPresenceController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(SSHBPresenceController *)self setInputs:inputs, responder];
  [(SSHBPresenceController *)self setStatusCodeSet:0];
  v5 = +[NSMutableArray array];
  [(SSHBPresenceController *)self setTurtleData:v5];

  v6 = objc_alloc_init(Turtle);
  [(SSHBPresenceController *)self setTurtle:v6];

  turtle = [(SSHBPresenceController *)self turtle];
  [turtle setDelegate:self];

  CFRunLoopRunInMode(kCFRunLoopDefaultMode, 2.0, 1u);
  inputs = [(SSHBPresenceController *)self inputs];
  frequentSampling = [inputs frequentSampling];

  if (frequentSampling)
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Enabling frequent sampling...", buf, 2u);
    }

    turtle2 = [(SSHBPresenceController *)self turtle];
    v23 = 0;
    v12 = [turtle2 configureFrequentBackgroundScan:1 error:&v23];
    v13 = v23;

    if ((v12 & 1) == 0)
    {
      v14 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100005CA4();
      }

      [(SSHBPresenceController *)self setStatusCode:1];
    }
  }

  else
  {
    v13 = 0;
  }

  inputs2 = [(SSHBPresenceController *)self inputs];
  disableGapSubtraction = [inputs2 disableGapSubtraction];

  if (disableGapSubtraction)
  {
    v17 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Disabling gap subtraction...", buf, 2u);
    }

    turtle3 = [(SSHBPresenceController *)self turtle];
    v22 = v13;
    v19 = [turtle3 gapSubtraction:0 error:&v22];
    v20 = v22;

    if ((v19 & 1) == 0)
    {
      v21 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100005D0C();
      }

      [(SSHBPresenceController *)self setStatusCode:2];
    }
  }

  else
  {
    v20 = v13;
  }

  if ([(SSHBPresenceController *)self statusCodeSet])
  {
    [(SSHBPresenceController *)self setFinished:1];
  }
}

- (void)start
{
  turtle = [(SSHBPresenceController *)self turtle];
  inputs = [(SSHBPresenceController *)self inputs];
  [inputs sampleDuration];
  [turtle waitForDuration:?];

  if (![(SSHBPresenceController *)self statusCodeSet])
  {
    inputs2 = [(SSHBPresenceController *)self inputs];
    frequentSampling = [inputs2 frequentSampling];
    inputs3 = [(SSHBPresenceController *)self inputs];
    [inputs3 sampleDuration];
    v9 = v8;

    v10 = 50.0;
    if (!frequentSampling)
    {
      v10 = 2.0;
    }

    v11 = llround(v9 * v10);

    inputs4 = [(SSHBPresenceController *)self inputs];
    [inputs4 acceptedDeviation];
    v14 = vcvtms_s32_f32(v11 - (v11 * v13));

    turtleData = [(SSHBPresenceController *)self turtleData];
    v16 = [turtleData count];

    v17 = DiagnosticLogHandleForCategory();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16 >= v14)
    {
      if (v18)
      {
        turtleData2 = [(SSHBPresenceController *)self turtleData];
        v28 = 134217984;
        v29 = [turtleData2 count];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SSHB found. (%lu)", &v28, 0xCu);
      }

      v20 = 0;
    }

    else
    {
      if (v18)
      {
        turtleData3 = [(SSHBPresenceController *)self turtleData];
        v28 = 134217984;
        v29 = [turtleData3 count];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SSHB NOT found, or insufficient number of samples. (%lu)", &v28, 0xCu);
      }

      v20 = 900;
    }

    [(SSHBPresenceController *)self setStatusCode:v20];
  }

  turtle2 = [(SSHBPresenceController *)self turtle];
  v23 = [turtle2 criticalErrors:0];
  v24 = [NSMutableDictionary dictionaryWithObject:v23 forKey:@"criticalErrors"];

  inputs5 = [(SSHBPresenceController *)self inputs];
  LODWORD(v23) = [inputs5 sendRawData];

  if (v23)
  {
    turtleData4 = [(SSHBPresenceController *)self turtleData];
    [v24 setObject:turtleData4 forKeyedSubscript:@"rawData"];
  }

  result = [(SSHBPresenceController *)self result];
  [result setData:v24];

  [(SSHBPresenceController *)self setFinished:1];
}

- (void)teardown
{
  turtle = [(SSHBPresenceController *)self turtle];

  if (turtle)
  {
    inputs = [(SSHBPresenceController *)self inputs];
    frequentSampling = [inputs frequentSampling];

    if (frequentSampling)
    {
      v6 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Re-disabling frequent sampling...", buf, 2u);
      }

      turtle2 = [(SSHBPresenceController *)self turtle];
      v19 = 0;
      v8 = [turtle2 configureFrequentBackgroundScan:0 error:&v19];
      v9 = v19;

      if ((v8 & 1) == 0)
      {
        v10 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100005D74();
        }
      }
    }

    else
    {
      v9 = 0;
    }

    inputs2 = [(SSHBPresenceController *)self inputs];
    disableGapSubtraction = [inputs2 disableGapSubtraction];

    if (disableGapSubtraction)
    {
      v13 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Re-enabling gap subtraction...", buf, 2u);
      }

      turtle3 = [(SSHBPresenceController *)self turtle];
      v18 = v9;
      v15 = [turtle3 gapSubtraction:1 error:&v18];
      v16 = v18;

      if ((v15 & 1) == 0)
      {
        v17 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100005DDC();
        }
      }
    }

    else
    {
      v16 = v9;
    }

    [(SSHBPresenceController *)self setTurtle:0];
  }
}

- (void)setStatusCode:(int64_t)code
{
  if (![(SSHBPresenceController *)self statusCodeSet])
  {
    [(SSHBPresenceController *)self setStatusCodeSet:1];
    v6 = [NSNumber numberWithInteger:code];
    result = [(SSHBPresenceController *)self result];
    [result setStatusCode:v6];
  }
}

- (void)turtleWasDisconnected
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100005E44(v3);
  }

  [(SSHBPresenceController *)self setStatusCode:3];
}

- (void)turtleCallback:(id)callback
{
  callbackCopy = callback;
  isCancelled = [(SSHBPresenceController *)self isCancelled];
  if (callbackCopy && (isCancelled & 1) == 0)
  {
    [callbackCopy capValue];
    [callbackCopy gapValue];
    [callbackCopy forceValue];
    turtleData = [(SSHBPresenceController *)self turtleData];
    descriptionDictionary = [callbackCopy descriptionDictionary];
    [turtleData addObject:descriptionDictionary];

    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100005E88(callbackCopy, v8);
    }
  }
}

@end