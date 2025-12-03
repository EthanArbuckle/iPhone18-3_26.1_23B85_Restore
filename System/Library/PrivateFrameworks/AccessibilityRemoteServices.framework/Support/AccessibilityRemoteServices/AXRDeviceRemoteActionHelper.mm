@interface AXRDeviceRemoteActionHelper
+ (id)sharedInstance;
- (float)_getCurrentVolume;
- (id)_init;
- (void)_setVolumeBy:(float)by;
- (void)performAction:(id)action;
@end

@implementation AXRDeviceRemoteActionHelper

+ (id)sharedInstance
{
  if (qword_10000CB28 != -1)
  {
    sub_100003DCC();
  }

  v3 = qword_10000CB20;

  return v3;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = AXRDeviceRemoteActionHelper;
  v2 = [(AXRDeviceRemoteActionHelper *)&v5 init];
  if ((AXDeviceIsAudioAccessory() & 1) == 0)
  {
    v3 = +[AXPISystemActionHelper sharedInstance];
    [v3 warm];
  }

  return v2;
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v5 = ax_remote_daemon_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "performing action: %@", &v15, 0xCu);
  }

  if (([actionCopy isEqualToString:AXRDeviceRemoteActionNone] & 1) == 0)
  {
    if ([actionCopy isEqualToString:AXRDeviceRemoteActionHome])
    {
      v6 = +[AXPISystemActionHelper sharedInstance];
      [v6 activateHomeButton];
LABEL_51:

      goto LABEL_52;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionAppSwitcher])
    {
      v6 = +[AXPISystemActionHelper sharedInstance];
      [v6 toggleAppSwitcher];
      goto LABEL_51;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionNotificationCenter])
    {
      v6 = +[AXPISystemActionHelper sharedInstance];
      [v6 toggleNotificationCenter];
      goto LABEL_51;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionControlCenter])
    {
      v6 = +[AXPISystemActionHelper sharedInstance];
      [v6 toggleControlCenter];
      goto LABEL_51;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionSiri])
    {
      v6 = +[AXPISystemActionHelper sharedInstance];
      [v6 activateSiri];
      goto LABEL_51;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionTVMenu])
    {
      v6 = +[AXPISystemActionHelper sharedInstance];
      [v6 pressTVMenuButton];
      goto LABEL_51;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionTVSelect])
    {
      v6 = +[AXPISystemActionHelper sharedInstance];
      [v6 pressTVSelectButton];
      goto LABEL_51;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionSwitchControlCommandActivate])
    {
      server = +[AXSwitchControlServer server];
      v6 = server;
      v8 = 1;
LABEL_50:
      [server triggerCommand:v8];
      goto LABEL_51;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionSwitchControlCommandMenu])
    {
      server = +[AXSwitchControlServer server];
      v6 = server;
      v8 = 2;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionSwitchControlCommandStartScanning])
    {
      v9 = AXSwitchControlServer;
LABEL_24:
      server = [v9 server];
      v6 = server;
      v8 = 3;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionSwitchControlCommandSelect])
    {
      v10 = AXSwitchControlServer;
LABEL_27:
      server = [v10 server];
      v6 = server;
      v8 = 4;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionSwitchControlCommandMoveNext])
    {
      v11 = AXSwitchControlServer;
LABEL_30:
      server = [v11 server];
      v6 = server;
      v8 = 5;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionSwitchControlCommandMovePrevious])
    {
      v12 = AXSwitchControlServer;
LABEL_33:
      server = [v12 server];
      v6 = server;
      v8 = 6;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionSwitchControlCommandStopScanning])
    {
      server = +[AXSwitchControlServer server];
      v6 = server;
      v8 = 7;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandSimpleTap])
    {
      server = +[AXVoiceOverServer server];
      v6 = server;
      v8 = 19;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandNextElement])
    {
      server = +[AXVoiceOverServer server];
      v6 = server;
      v8 = 9;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandPreviousElement])
    {
      server = +[AXVoiceOverServer server];
      v6 = server;
      v8 = 8;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandNextRotorOption])
    {
      server = +[AXVoiceOverServer server];
      v6 = server;
      v8 = 14;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandPreviousRotorOption])
    {
      server = +[AXVoiceOverServer server];
      v6 = server;
      v8 = 15;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandNextRotorItem])
    {
      server = +[AXVoiceOverServer server];
      v6 = server;
      v8 = 17;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandPreviousRotorItem])
    {
      server = +[AXVoiceOverServer server];
      v6 = server;
      v8 = 16;
      goto LABEL_50;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandScrollUpPage])
    {
      v9 = AXVoiceOverServer;
      goto LABEL_24;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandScrollDownPage])
    {
      v10 = AXVoiceOverServer;
      goto LABEL_27;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandScrollLeftPage])
    {
      v11 = AXVoiceOverServer;
      goto LABEL_30;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionVoiceOverCommandScrollRightPage])
    {
      v12 = AXVoiceOverServer;
      goto LABEL_33;
    }

    if ([actionCopy isEqualToString:AXRDeviceRemoteActionMediaPlayPause])
    {
      v13 = 2;
    }

    else if ([actionCopy isEqualToString:AXRDeviceRemoteActionMediaNextTrack])
    {
      v13 = 4;
    }

    else
    {
      if (![actionCopy isEqualToString:AXRDeviceRemoteActionMediaPreviousTrack])
      {
        if ([actionCopy isEqualToString:AXRDeviceRemoteActionMediaVolumeUp])
        {
          LODWORD(v14) = 1028443341;
        }

        else
        {
          if (![actionCopy isEqualToString:AXRDeviceRemoteActionMediaVolumeDown])
          {
            goto LABEL_52;
          }

          LODWORD(v14) = -1119040307;
        }

        [(AXRDeviceRemoteActionHelper *)self _setVolumeBy:v14];
        goto LABEL_52;
      }

      v13 = 5;
    }

    sub_1000035DC(v13);
  }

LABEL_52:
}

- (float)_getCurrentVolume
{
  sharedAVSystemController = [sub_100003714() sharedAVSystemController];
  v5 = 0.0;
  [sharedAVSystemController getVolume:&v5 forCategory:@"MediaPlayback"];
  v3 = v5;

  return v3;
}

- (void)_setVolumeBy:(float)by
{
  [(AXRDeviceRemoteActionHelper *)self _getCurrentVolume];
  v6 = v5;
  [(AXRDeviceRemoteActionHelper *)self _getCurrentVolume];
  v8 = fmin((v7 + by), 1.0);
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = v8;
  if (vabds_f32(v6, v9) >= 0.00000011921)
  {
    sharedAVSystemController = [sub_100003714() sharedAVSystemController];
    *&v10 = v9;
    [sharedAVSystemController setVolumeTo:@"MediaPlayback" forCategory:v10];
  }
}

@end