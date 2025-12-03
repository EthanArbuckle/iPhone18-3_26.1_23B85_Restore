@interface MPSignpost
+ (MPSignpost)sharedInstance;
+ (id)keypadToContactsSwitchLog;
- (MPSignpost)init;
- (void)contactsTabViewAppeared;
- (void)keypadTabSwitchStarted;
- (void)reportKeytabToContactsTransistionEvent:(double)event;
@end

@implementation MPSignpost

+ (id)keypadToContactsSwitchLog
{
  if (keypadToContactsSwitchLog_onceToken != -1)
  {
    +[MPSignpost keypadToContactsSwitchLog];
  }

  v3 = keypadToContactsSwitchLog_keypadToContactsSwitchLog;

  return v3;
}

void __39__MPSignpost_keypadToContactsSwitchLog__block_invoke(id a1)
{
  keypadToContactsSwitchLog_keypadToContactsSwitchLog = os_log_create("com.apple.MobilePhone", "keypad_to_contacts_tab_switch");

  _objc_release_x1();
}

+ (MPSignpost)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __28__MPSignpost_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedSignpost;

  return v2;
}

uint64_t __28__MPSignpost_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedSignpost = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (MPSignpost)init
{
  v3.receiver = self;
  v3.super_class = MPSignpost;
  result = [(MPSignpost *)&v3 init];
  if (result)
  {
    result->_signpostIntervalDidBegin = 0;
  }

  return result;
}

- (void)keypadTabSwitchStarted
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = objc_alloc_init(NSDate);
  [v3 timeIntervalSince1970];
  [(MPSignpost *)self setKeypadToContactsSwitchStartTime:?];

  keypadToContactsSwitchLog = [objc_opt_class() keypadToContactsSwitchLog];
  if (os_signpost_enabled(keypadToContactsSwitchLog))
  {
    [(MPSignpost *)self keypadToContactsSwitchStartTime];
    v6 = v5;
    [(MPSignpost *)self keypadToContactsSwitchStartTime];
    v8 = 134218240;
    v9 = v6;
    v10 = 2050;
    v11 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, keypadToContactsSwitchLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keypad_to_contacts_tab_switch_started", "%{signpost.description:begin_time}f keypadTappedAt=%{signpost.telemetry:number1,public}f seconds enableTelemetry=YES ", &v8, 0x16u);
  }

  [(MPSignpost *)self setSignpostIntervalDidBegin:1];
}

- (void)contactsTabViewAppeared
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(MPSignpost *)self signpostIntervalDidBegin])
  {
    v3 = objc_alloc_init(NSDate);
    [v3 timeIntervalSince1970];
    v5 = v4;

    [(MPSignpost *)self reportKeytabToContactsTransistionEvent:v5];
    keypadToContactsSwitchLog = [objc_opt_class() keypadToContactsSwitchLog];
    if (os_signpost_enabled(keypadToContactsSwitchLog))
    {
      [(MPSignpost *)self keypadToContactsSwitchStartTime];
      v8 = 134218240;
      v9 = v5;
      v10 = 2048;
      v11 = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, keypadToContactsSwitchLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keypad_to_contacts_tab_switch_ended", "%{signpost.description:end_time}f %{signpost.description:begin_time}f enableTelemetry=YES ", &v8, 0x16u);
    }

    [(MPSignpost *)self setSignpostIntervalDidBegin:0];
  }
}

- (void)reportKeytabToContactsTransistionEvent:(double)event
{
  if ([(MPSignpost *)self signpostIntervalDidBegin])
  {
    [(MPSignpost *)self keypadToContactsSwitchStartTime];
    v6 = v5;
    keypadToContactsSwitchLog = [objc_opt_class() keypadToContactsSwitchLog];
    if (os_signpost_enabled(keypadToContactsSwitchLog))
    {
      v8 = 134218240;
      v9 = event - v6;
      v10 = 2048;
      v11 = event - v6;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, keypadToContactsSwitchLog, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "keypad_to_contacts_tab_switch", "%{signpost.description:event_time}f tabSwitchDuration=%f enableTelemetry=YES ", &v8, 0x16u);
    }
  }
}

@end