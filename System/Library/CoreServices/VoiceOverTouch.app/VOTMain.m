@interface VOTMain
- (VOTMain)initWithArgc:(int)a3 argv:(const char *)a4;
- (id)_setCommandHelpEnabled:(id)a3;
- (id)_setHintsEnabled:(id)a3;
- (id)_setLogMask:(id)a3;
- (id)_setMuteSound:(id)a3;
- (id)_setMuteSpeech:(id)a3;
- (int)run;
- (void)_registerMachServer;
- (void)dealloc;
- (void)setKeepAlive:(BOOL)a3;
- (void)stop;
@end

@implementation VOTMain

- (VOTMain)initWithArgc:(int)a3 argv:(const char *)a4
{
  v5 = *&a3;
  NSSetUncaughtExceptionHandler(sub_100050604);
  v9.receiver = self;
  v9.super_class = VOTMain;
  v7 = [(VOTMain *)&v9 initWithArgc:v5 argv:a4];
  signal(15, sub_100003BF0);
  if (v7)
  {
    objc_storeStrong(&qword_1001FE970, v7);
    [(VOTMain *)v7 addOption:108 argument:@"logmask" target:v7 action:"_setLogMask:" argumentDescription:@"comma separated list of log masks (mask1 required:mask2, ...).", 0];
    [(VOTMain *)v7 addOption:113 argument:0 target:v7 action:"_setMuteSpeech:" argumentDescription:0 required:0];
    [(VOTMain *)v7 addOption:110 argument:0 target:v7 action:"_setMuteSound:" argumentDescription:0 required:0];
    [(VOTMain *)v7 addOption:104 argument:0 target:v7 action:"_setHintsEnabled:" argumentDescription:0 required:0];
    [(VOTMain *)v7 addOption:99 argument:0 target:v7 action:"_setCommandHelpEnabled:" argumentDescription:0 required:0];
    [SCRCThread setDefaultThreadPriority:47];
  }

  return v7;
}

- (void)dealloc
{
  v3 = qword_1001FE970;
  qword_1001FE970 = 0;

  v4.receiver = self;
  v4.super_class = VOTMain;
  [(VOTMain *)&v4 dealloc];
}

- (void)_registerMachServer
{
  v2 = +[VOTMain processIdentifier];
  v3 = [v2 UTF8String];

  sp = 0;
  bootstrap_look_up(bootstrap_port, v3, &sp);
  if (bootstrap_check_in(bootstrap_port, v3, &sp))
  {
    _AXLogWithFacility();
  }

  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003524;
  block[3] = &unk_1001C7510;
  v6 = sp;
  dispatch_async(v4, block);
}

- (void)setKeepAlive:(BOOL)a3
{
  if (vproc_swap_integer())
  {
    v5 = VOTLogLifeCycle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100127A3C(v5);
    }
  }

  self->_keepAlive = a3;
}

- (int)run
{
  v17.receiver = self;
  v17.super_class = VOTMain;
  v3 = [(VOTMain *)&v17 run];
  if (!v3)
  {
    v4 = VOTLogLifeCycle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(VOTMain *)self appName];
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=== Starting %{public}@ ===", buf, 0xCu);
    }

    v6 = VOTLogElement();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VOT-Startup", "", buf, 2u);
    }

    v7 = objc_autoreleasePoolPush();
    v8 = [objc_allocWithZone(VOTWorkspace) init];
    if (v8)
    {
      [(VOTMain *)self setKeepAlive:1];
      if (self->_speechLogging)
      {
        [v8 setSpeechLogging:1];
      }

      [v8 setSpeechMuted:self->_muteSpeech];
      [v8 setSoundMuted:self->_muteSound];
      if (self->_commandHelpEnabled)
      {
        v9 = +[VOTCommandHelper commandHelper];
        [v9 setHelpEnabled:1];
      }

      if (self->_hintsEnabled || (+[AXSettings sharedInstance](AXSettings, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 voiceOverHintsEnabled], v10, v11))
      {
        [v8 setHintsEnabled:1];
      }

      v12 = +[AXSettings sharedInstance];
      [v8 setNavigateImagesOption:{objc_msgSend(v12, "voiceOverNavigateImagesOption")}];

      [(VOTMain *)self _registerMachServer];
      objc_autoreleasePoolPop(v7);
      [v8 run];
      [(VOTMain *)self setKeepAlive:0];
      v13 = VOTLogLifeCycle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(VOTMain *)self appName];
        *buf = 138543362;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "=== Stopping %{public}@ ===", buf, 0xCu);
      }
    }

    else
    {
      v15 = VOTLogLifeCycle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Workspace refused to start - AX not enabled ===", buf, 2u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  return v3;
}

- (void)stop
{
  v2.receiver = self;
  v2.super_class = VOTMain;
  [(VOTMain *)&v2 stop];
  [VOTSharedWorkspace stop:0];
}

- (id)_setHintsEnabled:(id)a3
{
  NSLog(@"******** HINTS ENABLED ************", a2, a3);
  self->_hintsEnabled = 1;

  return [NSNumber numberWithBool:1];
}

- (id)_setMuteSound:(id)a3
{
  NSLog(@"******** SOUND MUTED ************", a2, a3);
  self->_muteSound = 1;

  return [NSNumber numberWithBool:1];
}

- (id)_setMuteSpeech:(id)a3
{
  NSLog(@"******** SPEECH MUTED ************", a2, a3);
  self->_muteSpeech = 1;

  return [NSNumber numberWithBool:1];
}

- (id)_setLogMask:(id)a3
{
  self->_logMaskSet = 1;
  v3 = [a3 componentsSeparatedByString:{@", "}];
  SCRCLogInitializeWithKeys();
  v4 = [NSNumber numberWithBool:1];

  return v4;
}

- (id)_setCommandHelpEnabled:(id)a3
{
  NSLog(@"******** Entering command help only ************", a2, a3);
  self->_commandHelpEnabled = 1;

  return [NSNumber numberWithBool:1];
}

@end