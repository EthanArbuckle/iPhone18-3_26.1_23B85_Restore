@interface InstallEnterpriseAppsTask
- (void)main;
@end

@implementation InstallEnterpriseAppsTask

- (void)main
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1003BAAD8;
  v17 = sub_1003BAAE8;
  v18 = 0;
  v3 = +[NSMutableArray array];
  apps = self->_apps;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003BAAF0;
  v9[3] = &unk_1005270C8;
  v5 = v3;
  v10 = v5;
  v11 = self;
  v12 = &v13;
  [(NSDictionary *)apps enumerateKeysAndObjectsUsingBlock:v9];
  if ([(NSDictionary *)self->_apps count]> 1 || self->_isXDCRequest || !v14[5])
  {
    v6 = v5;
    [(Task *)self lock];
    v7 = [v6 copy];

    processedExternalIDs = self->_processedExternalIDs;
    self->_processedExternalIDs = v7;

    [(Task *)self unlock];
    [(Task *)self completeWithSuccess];
  }

  else
  {
    [(Task *)self completeWithError:?];
  }

  _Block_object_dispose(&v13, 8);
}

@end