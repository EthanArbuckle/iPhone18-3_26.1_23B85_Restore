@interface MailMenuCommandCollection
+ (id)_gatherShortcuts;
- (MailMenuCommandCollection)init;
@end

@implementation MailMenuCommandCollection

- (MailMenuCommandCollection)init
{
  v6.receiver = self;
  v6.super_class = MailMenuCommandCollection;
  v2 = [(MailMenuCommandCollection *)&v6 init];
  if (v2)
  {
    v3 = +[MailMenuCommandCollection _gatherShortcuts];
    shortcuts = v2->shortcuts;
    v2->shortcuts = v3;
  }

  return v2;
}

+ (id)_gatherShortcuts
{
  v21 = objc_alloc_init(NSMutableArray);
  v2 = +[MailScene menuCommands];
  [v21 addObject:v2];

  v3 = +[MailMainScene menuCommands];
  [v21 addObject:v3];

  v4 = +[DockContainerViewController menuCommands];
  [v21 addObject:v4];

  v5 = +[MailSplitViewController menuCommands];
  [v21 addObject:v5];

  v6 = +[MFComposeWebView menuCommands];
  [v21 addObject:v6];

  v7 = +[MFMailComposeController menuCommands];
  [v21 addObject:v7];

  v8 = objc_alloc_init(NSMutableDictionary);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v21;
  v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v24)
  {
    v23 = *v33;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v11)
        {
          v12 = *v29;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v28 + 1) + 8 * j);
              v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 menu]);
              v16 = [v8 objectForKeyedSubscript:v15];

              if (!v16)
              {
                v16 = objc_alloc_init(NSMutableArray);
                v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 menu]);
                [v8 setObject:v16 forKeyedSubscript:v17];
              }

              [v16 insertObject:v14 atIndex:{objc_msgSend(v16, "indexOfObject:inSortedRange:options:usingComparator:", v14, 0, objc_msgSend(v16, "count"), 1536, &stru_100650C40)}];
            }

            v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v11);
        }
      }

      v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v24);
  }

  +[NSMutableDictionary dictionary];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100120218;
  v18 = v26[3] = &unk_100650CA8;
  v27 = v18;
  [v8 enumerateKeysAndObjectsUsingBlock:v26];
  v19 = [v18 copy];

  return v19;
}

@end