@interface VOTSpringBoardConnection
+ (id)defaultConnection;
- (BOOL)isConnected;
- (void)dealloc;
- (void)informConnectionDied;
- (void)restartConnection;
- (void)sendProgrammaticAppSwitch:(BOOL)a3;
- (void)setInPassthroughMode:(BOOL)a3;
- (void)setScreenCurtainEnabled:(BOOL)a3;
- (void)showElementLabelPanel:(BOOL)a3 currentLabel:(id)a4;
- (void)showSpringBoardVOConfirmation:(BOOL)a3;
- (void)showSpringboardNoHomeButtonGestureAlert;
@end

@implementation VOTSpringBoardConnection

+ (id)defaultConnection
{
  if (AXInPreboardScenario() & 1) != 0 || (AXInCheckerBoardScenario() & 1) != 0 || (AXAssistiveAccessEnabled())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1001FEBD8 != -1)
    {
      sub_100129D70();
    }

    v2 = qword_1001FEBD0;
  }

  return v2;
}

- (void)dealloc
{
  [(VOTSpringBoardConnection *)self informConnectionDied];
  v3.receiver = self;
  v3.super_class = VOTSpringBoardConnection;
  [(VOTSpringBoardConnection *)&v3 dealloc];
}

- (BOOL)isConnected
{
  sbPort = self->_sbPort;
  if (sbPort)
  {
    LOBYTE(sbPort) = CFMachPortIsValid(sbPort) != 0;
  }

  return sbPort;
}

- (void)restartConnection
{
  *sp = 0;
  v3 = bootstrap_look_up(bootstrap_port, "com.apple.SpringBoard.VOT", sp);
  if (v3)
  {
    v4 = v3;
    v5 = +[AXSubsystemVoiceOver sharedInstance];
    v6 = [v5 ignoreLogging];

    if ((v6 & 1) == 0)
    {
      v7 = +[AXSubsystemVoiceOver identifier];
      v8 = AXLoggerForFacility();

      v9 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = AXColorizeFormatLog();
        v28 = v4;
        v11 = _AXStringForArgs();
        if (os_log_type_enabled(v8, v9))
        {
          LODWORD(buf.version) = 138543362;
          *(&buf.version + 4) = v11;
          _os_log_impl(&_mh_execute_header, v8, v9, "%{public}@", &buf, 0xCu);
        }
      }
    }
  }

  v12 = sub_100115EB4(sp[0], 0x3A98u, &sp[1]);
  v13 = +[AXSubsystemVoiceOver sharedInstance];
  v14 = [v13 ignoreLogging];

  if ((v14 & 1) == 0)
  {
    v15 = +[AXSubsystemVoiceOver identifier];
    v16 = AXLoggerForFacility();

    v17 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = AXColorizeFormatLog();
      v28 = v12;
      v19 = _AXStringForArgs();
      if (os_log_type_enabled(v16, v17))
      {
        LODWORD(buf.version) = 138543362;
        *(&buf.version + 4) = v19;
        _os_log_impl(&_mh_execute_header, v16, v17, "%{public}@", &buf, 0xCu);
      }
    }
  }

  [(VOTSpringBoardConnection *)self informConnectionDied];
  if (v12 || !sp[1])
  {
    v21 = +[AXSubsystemVoiceOver sharedInstance];
    v22 = [v21 ignoreLogging];

    if ((v22 & 1) == 0)
    {
      v23 = +[AXSubsystemVoiceOver identifier];
      v24 = AXLoggerForFacility();

      v25 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = AXColorizeFormatLog();
        v27 = _AXStringForArgs();
        if (os_log_type_enabled(v24, v25))
        {
          LODWORD(buf.version) = 138543362;
          *(&buf.version + 4) = v27;
          _os_log_impl(&_mh_execute_header, v24, v25, "%{public}@", &buf, 0xCu);
        }
      }
    }
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
    self->_sbPort = CFMachPortCreateWithPort(0, sp[0], 0, &buf, 0);
    if (mach_port_mod_refs(mach_task_self_, sp[0], 0, 1) == 17)
    {
      mach_port_mod_refs(mach_task_self_, sp[0], 4u, 1);
      sp[0] = 0;
      sbPort = self->_sbPort;
      if (sbPort)
      {
        CFRelease(sbPort);
        self->_sbPort = 0;
      }
    }

    [VOTSharedWorkspace handleRingerSwitchSwitched:0];
  }
}

- (void)informConnectionDied
{
  sbPort = self->_sbPort;
  if (sbPort)
  {
    Port = CFMachPortGetPort(sbPort);
    if (Port)
    {
      mach_port_deallocate(mach_task_self_, Port);
    }

    v5 = self->_sbPort;
    if (v5)
    {
      CFRelease(v5);
      self->_sbPort = 0;
    }
  }
}

- (void)showSpringBoardVOConfirmation:(BOOL)a3
{
  if (a3)
  {
    v3 = +[VOTElement systemAppApplication];
    v4 = [v3 isSystemSleeping];

    if (v4)
    {
      v5 = AXLogSystemApp();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VOT requesting system-app wake-up for VO confirmation", buf, 2u);
      }

      v6 = +[AXSystemAppServer server];
      [v6 wakeUpDeviceIfNecessary];
    }

    v7 = +[AXSpringBoardServer server];
    [v7 showAlert:5 withHandler:&stru_1001C8298];
  }

  else
  {
    v8 = +[AXSpringBoardServer server];
    [v8 hideAlert];
  }
}

- (void)showSpringboardNoHomeButtonGestureAlert
{
  v2 = +[AXSpringBoardServer server];
  [v2 showAlert:12 withHandler:0];
}

- (void)sendProgrammaticAppSwitch:(BOOL)a3
{
  v3 = a3;
  v4 = +[AXSpringBoardServer server];
  v5 = [v4 isGuidedAccessActive];

  if ((v5 & 1) == 0)
  {
    v6 = [objc_allocWithZone(NSNumber) initWithBool:v3];
    sub_10003CA18();
  }
}

- (void)showElementLabelPanel:(BOOL)a3 currentLabel:(id)a4
{
  v4 = &kCFBooleanFalse;
  if (a3)
  {
    v4 = &kCFBooleanTrue;
  }

  v5 = [NSArray arrayWithObjects:*v4, a4, 0];
  sub_10003CA18();
}

- (void)setInPassthroughMode:(BOOL)a3
{
  [NSNumber numberWithBool:a3];

  sub_10003CA18();
}

- (void)setScreenCurtainEnabled:(BOOL)a3
{
  [NSNumber numberWithBool:a3];

  sub_10003CA18();
}

@end