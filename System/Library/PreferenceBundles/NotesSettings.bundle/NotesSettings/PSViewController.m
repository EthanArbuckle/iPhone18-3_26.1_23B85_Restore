@interface PSViewController
- (void)ic_submitNavigationEventForIdentifier:(id)a3 titleStringKey:(id)a4 navigationComponents:(id)a5;
@end

@implementation PSViewController

- (void)ic_submitNavigationEventForIdentifier:(id)a3 titleStringKey:(id)a4 navigationComponents:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilenotes"];
  v11 = v10;
  v32 = v7;
  if (v7)
  {
    v12 = [v10 URLByAppendingPathComponent:v7];

    v30 = v12;
  }

  else
  {
    v30 = v10;
  }

  v13 = [_NSLocalizedStringResource alloc];
  v14 = +[NSLocale currentLocale];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 bundleURL];
  v31 = v8;
  v29 = [v13 initWithKey:v8 table:@"Settings" locale:v14 bundleURL:v16];

  v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v9;
  v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        v23 = [_NSLocalizedStringResource alloc];
        v24 = +[NSLocale currentLocale];
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 bundleURL];
        v27 = [v23 initWithKey:v22 table:@"Settings" locale:v24 bundleURL:v26];

        if (v27)
        {
          [v17 addObject:v27];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v19);
  }

  if (v29)
  {
    [v17 addObject:v29];
  }

  v28 = ICNotesAppBundleIdentifier();
  [(PSViewController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v28 title:v29 localizedNavigationComponents:v17 deepLink:v30];
}

@end