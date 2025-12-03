@interface PSViewController
- (void)ic_submitNavigationEventForIdentifier:(id)identifier titleStringKey:(id)key navigationComponents:(id)components;
@end

@implementation PSViewController

- (void)ic_submitNavigationEventForIdentifier:(id)identifier titleStringKey:(id)key navigationComponents:(id)components
{
  identifierCopy = identifier;
  keyCopy = key;
  componentsCopy = components;
  v10 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilenotes"];
  v11 = v10;
  v32 = identifierCopy;
  if (identifierCopy)
  {
    v12 = [v10 URLByAppendingPathComponent:identifierCopy];

    v30 = v12;
  }

  else
  {
    v30 = v10;
  }

  v13 = [_NSLocalizedStringResource alloc];
  v14 = +[NSLocale currentLocale];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v15 bundleURL];
  v31 = keyCopy;
  v29 = [v13 initWithKey:keyCopy table:@"Settings" locale:v14 bundleURL:bundleURL];

  v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(componentsCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = componentsCopy;
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
        bundleURL2 = [v25 bundleURL];
        v27 = [v23 initWithKey:v22 table:@"Settings" locale:v24 bundleURL:bundleURL2];

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