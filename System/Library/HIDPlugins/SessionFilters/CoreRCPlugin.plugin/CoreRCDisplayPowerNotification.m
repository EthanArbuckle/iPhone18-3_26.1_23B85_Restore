@interface CoreRCDisplayPowerNotification
- (BOOL)registerPowerNotifications:(id)a3 sleepCallback:(id)a4 wakeCallback:(id)a5;
- (void)dealloc;
@end

@implementation CoreRCDisplayPowerNotification

- (BOOL)registerPowerNotifications:(id)a3 sleepCallback:(id)a4 wakeCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CoreRCPluginLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "CoreRCDisplayPowerNotification registering notification", buf, 2u);
  }

  v12 = +[CADisplay displays];
  v13 = +[CAWindowServer serverIfRunning];
  v14 = [v13 displays];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    while (2)
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        if ([v20 displayType] == &dword_0 + 1)
        {
          objc_storeStrong(&self->_brightnessControl, v20);
          brightnessControl = self->_brightnessControl;
          v21 = brightnessControl != 0;
          v23 = CoreRCPluginLog();
          v24 = v23;
          if (brightnessControl)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v25 = self->_brightnessControl;
              *buf = 138412290;
              v41 = v25;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Found external display with brightnessControl %@", buf, 0xCu);
            }

            v26 = [(CABrightnessControl *)self->_brightnessControl uuid];
            v27 = self->_brightnessControl;
            v39[0] = kCABrightnessSyncNotificationWillChangePowerState;
            v39[1] = kCABrightnessSyncNotificationDidChangePowerState;
            v28 = [NSArray arrayWithObjects:v39 count:2];
            v30[0] = _NSConcreteStackBlock;
            v30[1] = 3221225472;
            v30[2] = sub_36C0;
            v30[3] = &unk_8398;
            v30[4] = v20;
            v31 = v26;
            v32 = v8;
            v33 = v9;
            v34 = v10;
            v24 = v26;
            [(CABrightnessControl *)v27 registerForSyncNotifications:v28 withBlock:v30];
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_46B0(v24);
          }

          goto LABEL_19;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_19:

  return v21;
}

- (void)dealloc
{
  [(CABrightnessControl *)self->_brightnessControl unregisterSyncNotificationBlocks];
  v3.receiver = self;
  v3.super_class = CoreRCDisplayPowerNotification;
  [(CoreRCDisplayPowerNotification *)&v3 dealloc];
}

@end