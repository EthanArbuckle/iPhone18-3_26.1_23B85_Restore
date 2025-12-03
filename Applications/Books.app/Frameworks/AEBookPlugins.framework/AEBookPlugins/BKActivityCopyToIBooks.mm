@interface BKActivityCopyToIBooks
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityTitle;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation BKActivityCopyToIBooks

- (id)activityTitle
{
  v2 = AEBundle();
  v3 = [v2 localizedStringForKey:@"Copy to Books" value:&stru_1E7188 table:0];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(itemsCopy);
        }

        objc_opt_class();
        v7 = BUDynamicCast();

        if (v7)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [itemsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)prepareWithActivityItems:(id)items
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  itemsCopy = items;
  v5 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        objc_opt_class();
        v9 = BUDynamicCast();
        if (v9)
        {
          v10 = v9;
          [(BKActivityCopyToIBooks *)self setUrl:v9, v11];

          goto LABEL_11;
        }
      }

      v6 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)performActivity
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(BKActivityCopyToIBooks *)self url];
  v18 = 0;
  v5 = [v3 URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:&v18];
  v6 = v18;

  if (!v6)
  {
    v7 = [(BKActivityCopyToIBooks *)self url];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

    v10 = +[NSFileManager defaultManager];
    v11 = [(BKActivityCopyToIBooks *)self url];
    v17 = 0;
    v12 = [v10 copyItemAtURL:v11 toURL:v9 error:&v17];

    if (v12)
    {
      v19[0] = UIApplicationOpenURLOptionsAnnotationKey;
      v19[1] = @"BKApplicationImportInPlaceKey";
      v20[0] = &__NSDictionary0__struct;
      v20[1] = &__kCFBooleanTrue;
      v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
      v14 = +[UIApplication sharedApplication];
      delegate = [v14 delegate];

      v16 = +[UIApplication sharedApplication];
      [delegate application:v16 openURL:v9 options:v13];
    }
  }

  [(BKActivityCopyToIBooks *)self activityDidFinish:0];
}

@end