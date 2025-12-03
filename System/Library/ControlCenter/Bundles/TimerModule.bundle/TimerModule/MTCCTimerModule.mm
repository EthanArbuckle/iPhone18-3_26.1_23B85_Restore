@interface MTCCTimerModule
+ (id)firstThatMatches:(id)matches fromTimers:(id)timers;
- (MTCCTimerModule)init;
- (double)defaultDuration;
- (id)launchURLForTouchType:(int64_t)type;
- (id)processChangesForNewState:(id)state;
- (void)setDefaultDuration:(double)duration;
- (void)timerBackgroundViewController:(id)controller timerDidChange:(id)change;
- (void)timerBackgroundViewControllerAddButtonTapped:(id)tapped withEvent:(id)event;
- (void)timerDidChange:(id)change;
- (void)timerViewController:(id)controller timerDidChange:(id)change;
- (void)timerViewControllerButtonTapped:(id)tapped withEvent:(id)event;
@end

@implementation MTCCTimerModule

- (MTCCTimerModule)init
{
  v27 = *MEMORY[0x29EDCA608];
  v24.receiver = self;
  v24.super_class = MTCCTimerModule;
  v2 = [(CCUIAppLauncherModule *)&v24 init];
  if (v2)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v2;
      _os_log_impl(&dword_29C9FA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Initialized", buf, 0xCu);
    }

    v4 = objc_alloc_init(MTCCTimerViewController);
    timerViewController = v2->_timerViewController;
    v2->_timerViewController = v4;

    objc_msgSend_setDelegate_(v2->_timerViewController, v6, v2);
    v7 = objc_alloc_init(MTCCTimerBackgroundViewController);
    timerBackgroundViewController = v2->_timerBackgroundViewController;
    v2->_timerBackgroundViewController = v7;

    objc_msgSend_setDelegate_(v2->_timerBackgroundViewController, v9, v2);
    v10 = objc_opt_new();
    timerManager = v2->_timerManager;
    v2->_timerManager = v10;

    v14 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], v12, v13);
    objc_msgSend_addObserver_selector_name_object_(v14, v15, v2, sel_reloadTimerState, *MEMORY[0x29EDC5D80], 0);

    v18 = objc_msgSend_defaultCenter(MEMORY[0x29EDBA068], v16, v17);
    objc_msgSend_addObserver_selector_name_object_(v18, v19, v2, sel_reloadTimerStateAndUpdateDuration, *MEMORY[0x29EDC5D78], 0);

    objc_msgSend_reloadTimerState(v2, v20, v21);
  }

  v22 = *MEMORY[0x29EDCA608];
  return v2;
}

- (id)launchURLForTouchType:(int64_t)type
{
  if (self->_addButtonTapped)
  {
    v3 = objc_msgSend_URLWithString_(MEMORY[0x29EDB8E70], a2, @"clock-timer:add");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MTCCTimerModule;
    v3 = [(CCUIAppLauncherModule *)&v5 launchURLForTouchType:type];
  }

  return v3;
}

- (void)timerDidChange:(id)change
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Timer did change notification received", &v8, 0xCu);
  }

  objc_msgSend_reloadTimerState(self, v5, v6);
  v7 = *MEMORY[0x29EDCA608];
}

- (void)timerViewController:(id)controller timerDidChange:(id)change
{
  v5 = objc_msgSend_processChangesForNewState_(self, a2, change);
  v8 = objc_msgSend_mtMainThreadScheduler(MEMORY[0x29EDC5E58], v6, v7);
  v10 = objc_msgSend_reschedule_(v5, v9, v8);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = sub_29C9FB528;
  v13[3] = &unk_29F33F818;
  v13[4] = self;
  v12 = objc_msgSend_addSuccessBlock_(v10, v11, v13);
}

- (void)timerViewControllerButtonTapped:(id)tapped withEvent:(id)event
{
  v20 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling start/stop button tapped", &v18, 0xCu);
  }

  v9 = objc_msgSend_allTouches(eventCopy, v7, v8);

  v12 = objc_msgSend_anyObject(v9, v10, v11);

  self->_addButtonTapped = 0;
  v15 = objc_msgSend_type(v12, v13, v14);
  objc_msgSend_handleTapWithTouchType_(self, v16, v15);

  v17 = *MEMORY[0x29EDCA608];
}

- (void)timerBackgroundViewController:(id)controller timerDidChange:(id)change
{
  v5 = objc_msgSend_processChangesForNewState_(self, a2, change);
  v8 = objc_msgSend_mtMainThreadScheduler(MEMORY[0x29EDC5E58], v6, v7);
  v10 = objc_msgSend_reschedule_(v5, v9, v8);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = sub_29C9FB77C;
  v13[3] = &unk_29F33F818;
  v13[4] = self;
  v12 = objc_msgSend_addSuccessBlock_(v10, v11, v13);
}

- (void)timerBackgroundViewControllerAddButtonTapped:(id)tapped withEvent:(id)event
{
  v20 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_29C9FA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling add button tapped", &v18, 0xCu);
  }

  v9 = objc_msgSend_allTouches(eventCopy, v7, v8);

  v12 = objc_msgSend_anyObject(v9, v10, v11);

  self->_addButtonTapped = 1;
  v15 = objc_msgSend_type(v12, v13, v14);
  objc_msgSend_handleTapWithTouchType_(self, v16, v15);

  v17 = *MEMORY[0x29EDCA608];
}

- (double)defaultDuration
{
  v2 = CFPreferencesCopyAppValue(@"MTCCTimerDefaultDuration", @"com.apple.mobiletimer");
  if (!v2)
  {
    return 900.0;
  }

  v3 = v2;
  valuePtr = 0.0;
  if (!CFNumberGetValue(v2, kCFNumberDoubleType, &valuePtr))
  {
    valuePtr = 900.0;
  }

  CFRelease(v3);
  return valuePtr;
}

- (void)setDefaultDuration:(double)duration
{
  valuePtr = duration;
  v3 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberDoubleType, &valuePtr);
  CFPreferencesSetAppValue(@"MTCCTimerDefaultDuration", v3, @"com.apple.mobiletimer");
  if (v3)
  {
    CFRelease(v3);
  }
}

+ (id)firstThatMatches:(id)matches fromTimers:(id)timers
{
  matchesCopy = matches;
  v6 = matchesCopy;
  if (matchesCopy)
  {
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = sub_29C9FBAAC;
    v10[3] = &unk_29F33F840;
    v11 = matchesCopy;
    v8 = objc_msgSend_na_firstObjectPassingTest_(timers, v7, v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)processChangesForNewState:(id)state
{
  stateCopy = state;
  v7 = objc_msgSend_latestDuration(self->_timerManager, v5, v6);
  v10 = objc_msgSend_mainThreadScheduler(MEMORY[0x29EDC5E58], v8, v9);
  v12 = objc_msgSend_reschedule_(v7, v11, v10);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = sub_29C9FBC40;
  v17[3] = &unk_29F33F890;
  v17[4] = self;
  v18 = stateCopy;
  v13 = stateCopy;
  v15 = objc_msgSend_flatMap_(v12, v14, v17);

  return v15;
}

@end