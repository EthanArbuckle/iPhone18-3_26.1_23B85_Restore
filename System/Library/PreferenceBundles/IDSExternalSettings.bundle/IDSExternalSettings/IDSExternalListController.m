@interface IDSExternalListController
- (id)niceBasicLogging:(id)a3;
- (id)niceBasicLoggingDefaults;
- (id)specifiers;
- (void)dumpLogs:(id)a3;
- (void)setNiceBasicLogging:(id)a3 specifier:(id)a4;
- (void)setRegistrationLoggingEnabled:(id)a3 forSpecifier:(id)a4;
@end

@implementation IDSExternalListController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    result = [(IDSExternalListController *)self loadSpecifiersFromPlistName:@"IDSExternalSettings" target:self];
    *&self->PSListController_opaque[v3] = result;
  }

  return result;
}

- (void)dumpLogs:(id)a3
{
  [TULogging sendDirectoryToCrashReporter:@"/var/mobile/Library/Logs/Phone" error:0];

  _DLCCollectLogs(@"IDS", @"IDS Log Dump", 2, 7167);
}

- (id)niceBasicLoggingDefaults
{
  result = qword_C268;
  if (!qword_C268)
  {
    v3 = +[NSMutableDictionary dictionary];
    [v3 setObject:+[NSArray arrayWithObjects:](NSArray forKey:{"arrayWithObjects:", @"IDSLogging", @"MadridEventLogging", 0), @"com.apple.logging"}];
    qword_C268 = [NSDictionary dictionaryWithDictionary:v3];
    v4 = qword_C268;
    return qword_C268;
  }

  return result;
}

- (id)niceBasicLogging:(id)a3
{
  v3 = [(IDSExternalListController *)self niceBasicLoggingDefaults];
  if ([v3 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v9 = [v3 objectForKey:{v8, 0}];
          v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v17;
            while (2)
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v17 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                if (!CFPreferencesGetAppBooleanValue(*(*(&v16 + 1) + 8 * j), v8, 0))
                {
                  v14 = 0;
                  return [NSNumber numberWithBool:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v5);
    }

    v14 = 1;
    return [NSNumber numberWithBool:v14];
  }

  else
  {

    return [NSNumber numberWithBool:0];
  }
}

- (void)setNiceBasicLogging:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  sub_1ED8(v5, [(IDSExternalListController *)self niceBasicLoggingDefaults]);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kMarcoSyncLoggingPrefs", 0, 0, 1u);
  v7 = sub_29D4();
  if (!v5)
  {
    v8 = -1;
    goto LABEL_5;
  }

  if (v7 == -1)
  {
    v8 = 0;
LABEL_5:
    sub_2B88(v8);
  }

  sub_263C(v5);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3870;
  block[3] = &unk_8318;
  v11 = v5;
  dispatch_async(global_queue, block);
  sub_2280(v5 - 1);
  sub_2FB8();
  sub_2FD0();
  sub_310C(v5);
}

- (void)setRegistrationLoggingEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  sub_2280(v5 - 1);
  sub_263C(v5);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PCLoggingSettingsDidChangeNotification", 0, 0, 1u);

  [(IDSExternalListController *)self reloadSpecifiers];
}

@end