@interface InstallAppReviewAppsTask
- (void)main;
@end

@implementation InstallAppReviewAppsTask

- (void)main
{
  v22 = sub_10036FDEC(self->_installs, &stru_100524700);
  v3 = sub_1003C27BC();
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100353724;
  v27[3] = &unk_10051D6C8;
  v27[4] = self;
  [v3 modifyUsingTransaction:v27];

  v4 = sub_1002C0D84();
  sub_1002C13BC(v4, 64);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_installs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if (v10)
        {
          v11 = v10[7];
          if (v11)
          {
            v12 = v11;
            v13 = sub_10040908C(v10);

            if (v13)
            {
              v14 = [_TtC9appstored24BackgroundAssetRelayTask alloc];
              v15 = v10[7];
              v16 = [(BackgroundAssetRelayTask *)v14 initWithAppInstall:v10 metadata:v15 shouldSkipTransparencySheet:0 requestToken:0 bag:0];

              v17 = +[_TtC9appstored24BackgroundAssetRelayTask taskQueue];
              v18 = v17;
              if (v17)
              {
                [*(v17 + 8) addOperation:v16];
              }
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v19 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v7 = v19;
    }

    while (v19);
  }

  [(Task *)self lock];
  v20 = [v22 copy];
  processedExternalIDs = self->_processedExternalIDs;
  self->_processedExternalIDs = v20;

  [(Task *)self unlock];
}

@end