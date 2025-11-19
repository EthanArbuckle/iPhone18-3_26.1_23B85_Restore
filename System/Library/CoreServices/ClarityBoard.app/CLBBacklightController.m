@interface CLBBacklightController
+ (id)sharedInstance;
- (CLBBacklightController)init;
- (void)_addSuppressionAssertion:(id)a3;
- (void)_reevaluateBacklightForReason:(int64_t)a3;
- (void)_removeSuppressionAssertion:(id)a3;
- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5;
- (void)backlightHost:(id)a3 willTransitionToState:(int64_t)a4 forEvent:(id)a5;
- (void)dealloc;
- (void)setPreferredFactor:(unint64_t)a3 forReason:(int64_t)a4;
@end

@implementation CLBBacklightController

+ (id)sharedInstance
{
  if (qword_100331028 != -1)
  {
    sub_100283874();
  }

  v3 = qword_100331020;

  return v3;
}

- (CLBBacklightController)init
{
  v8.receiver = self;
  v8.super_class = CLBBacklightController;
  v2 = [(CLBBacklightController *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    suppressionAssertions = v2->_suppressionAssertions;
    v2->_suppressionAssertions = v3;

    v2->_preferredFactor = 0;
    v5 = +[BLSHBacklightHost sharedBacklightHost];
    backlight = v2->_backlight;
    v2->_backlight = v5;

    [(BLSHBacklightHostObservable *)v2->_backlight addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(BLSHBacklightHostObservable *)self->_backlight removeObserver:self];
  v3.receiver = self;
  v3.super_class = CLBBacklightController;
  [(CLBBacklightController *)&v3 dealloc];
}

- (void)setPreferredFactor:(unint64_t)a3 forReason:(int64_t)a4
{
  if (self->_preferredFactor == a3)
  {
    v6 = +[CLFLog backlightLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"off";
      if (a3 == 100)
      {
        v7 = @"max";
      }

      v8 = v7;
      v9 = sub_100003FE8(a4);
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No change to existing preferred backlight factor (%@) for reason: %@", &v15, 0x16u);
    }
  }

  else
  {
    self->_preferredFactor = a3;
    v11 = +[CLFLog backlightLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"off";
      if (a3 == 100)
      {
        v12 = @"max";
      }

      v13 = v12;
      v14 = sub_100003FE8(a4);
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Change to preferred backlight factor (%@) for reason: %@", &v15, 0x16u);
    }

    [(CLBBacklightController *)self _reevaluateBacklightForReason:a4];
  }
}

- (void)_reevaluateBacklightForReason:(int64_t)a3
{
  preferredFactor = self->_preferredFactor;
  v6 = [(NSMutableSet *)self->_suppressionAssertions count];
  v7 = [BLSBacklightChangeRequest alloc];
  v8 = mach_continuous_time();
  if ((a3 - 1) > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_100295DC8[a3 - 1];
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = preferredFactor == 100;
  }

  v11 = v10;
  v14 = [v7 initWithRequestedActivityState:v11 explanation:@"ClarityBoard (Assistive Access)" timestamp:v8 sourceEvent:v9 sourceEventMetadata:0];
  v12 = [(CLBBacklightController *)self backlight];
  v13 = [v12 performChangeRequest:v14];
}

- (void)_addSuppressionAssertion:(id)a3
{
  suppressionAssertions = self->_suppressionAssertions;
  v5 = a3;
  [(NSMutableSet *)suppressionAssertions addObject:v5];
  v6 = [v5 reason];

  [(CLBBacklightController *)self _reevaluateBacklightForReason:v6];
}

- (void)_removeSuppressionAssertion:(id)a3
{
  suppressionAssertions = self->_suppressionAssertions;
  v5 = a3;
  [(NSMutableSet *)suppressionAssertions removeObject:v5];
  v6 = [v5 reason];

  [(CLBBacklightController *)self _reevaluateBacklightForReason:v6];
}

- (void)backlightHost:(id)a3 willTransitionToState:(int64_t)a4 forEvent:(id)a5
{
  v5 = a5;
  v6 = +[CLFLog backlightLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBLSBacklightState();
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Backlight host will transition to state %@ for event %@", &v8, 0x16u);
  }
}

- (void)backlight:(id)a3 didCompleteUpdateToState:(int64_t)a4 forEvent:(id)a5
{
  v5 = a5;
  v6 = +[CLFLog backlightLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBLSBacklightState();
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Backlight did complete update to state %@ for event %@", &v8, 0x16u);
  }
}

@end