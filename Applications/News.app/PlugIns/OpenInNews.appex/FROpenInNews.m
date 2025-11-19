@interface FROpenInNews
- (FCCoreConfigurationManager)configurationManager;
- (void)_openNewsArticleWithURL:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation FROpenInNews

- (void)beginRequestWithExtensionContext:(id)a3
{
  v17 = a3;
  objc_storeStrong(&self->_extensionContext, a3);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_100001FD8;
  v43[4] = sub_100001FE8;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_100001FD8;
  v41[4] = sub_100001FE8;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100001FD8;
  v39[4] = sub_100001FE8;
  v40 = 0;
  v4 = dispatch_group_create();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [v17 inputItems];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v46 count:16];
  obj = v5;
  if (v6)
  {
    v19 = *v36;
    do
    {
      v7 = 0;
      v20 = v6;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = [v8 attachments];
        v10 = [v9 countByEnumeratingWithState:&v31 objects:v45 count:16];
        v21 = v7;
        if (v10)
        {
          v11 = *v32;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v32 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v31 + 1) + 8 * i);
              if ([v13 hasItemConformingToTypeIdentifier:kUTTypeURL])
              {
                dispatch_group_enter(v4);
                v29[0] = _NSConcreteStackBlock;
                v29[1] = 3221225472;
                v29[2] = sub_100001FF0;
                v29[3] = &unk_10000C330;
                v30[1] = v41;
                v30[0] = v4;
                [v13 loadItemForTypeIdentifier:kUTTypeURL options:0 completionHandler:v29];
                v14 = v30;
              }

              else if ([v13 hasItemConformingToTypeIdentifier:kUTTypePlainText])
              {
                dispatch_group_enter(v4);
                v27[0] = _NSConcreteStackBlock;
                v27[1] = 3221225472;
                v27[2] = sub_100002070;
                v27[3] = &unk_10000C358;
                v28[1] = v43;
                v28[0] = v4;
                [v13 loadItemForTypeIdentifier:kUTTypePlainText options:0 completionHandler:v27];
                v14 = v28;
              }

              else
              {
                if (![v13 hasItemConformingToTypeIdentifier:@"FRRSSFeedURL"])
                {
                  continue;
                }

                dispatch_group_enter(v4);
                v25[0] = _NSConcreteStackBlock;
                v25[1] = 3221225472;
                v25[2] = sub_1000020F0;
                v25[3] = &unk_10000C330;
                v26[1] = v39;
                v26[0] = v4;
                [v13 loadItemForTypeIdentifier:@"FRRSSFeedURL" options:0 completionHandler:v25];
                v14 = v26;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v31 objects:v45 count:16];
          }

          while (v10);
        }

        v7 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v6 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v6);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002170;
  block[3] = &unk_10000C380;
  v24 = v41;
  block[4] = self;
  v23 = v17;
  v15 = v17;
  dispatch_group_notify(v4, &_dispatch_main_q, block);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(v43, 8);
}

- (FCCoreConfigurationManager)configurationManager
{
  FCURLForContainerizedUserAccountCachesDirectory();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000022F0;
  v9 = block[3] = &unk_10000C3A8;
  v3 = qword_100011550;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_100011550, block);
  }

  objc_storeStrong(&self->_configurationManager, qword_100011548);
  configurationManager = self->_configurationManager;
  v6 = configurationManager;

  return configurationManager;
}

- (void)_openNewsArticleWithURL:(id)a3
{
  v4 = a3;
  v5 = [FROpenInNewsManager alloc];
  v6 = [(FROpenInNews *)self configurationManager];
  v7 = +[FCNetworkReachability sharedNetworkReachability];
  v8 = [(FROpenInNewsManager *)v5 initWithConfigurationManager:v6 networkReachability:v7];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002488;
  v9[3] = &unk_10000C3A8;
  v9[4] = self;
  [(FROpenInNewsManager *)v8 openArticleWithURL:v4 completion:v9];
}

@end