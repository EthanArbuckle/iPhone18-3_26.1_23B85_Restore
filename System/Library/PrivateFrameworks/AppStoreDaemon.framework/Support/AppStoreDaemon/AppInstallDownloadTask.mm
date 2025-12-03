@interface AppInstallDownloadTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation AppInstallDownloadTask

- (void)mainWithCompletionHandler:(id)handler
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v23 = sub_10027E6B8;
  v24 = &unk_10051F8D0;
  selfCopy = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  v5 = v22;
  if (self)
  {
    v6 = sub_10023E604(*(&self->_installInfo + 2), @"request_count");
    v28 = 0;
    v27 = 0;
    v7 = sub_10027CA88(self, &v28, &v27);
    v8 = v28;
    v9 = v27;
    v10 = v9;
    if (v7)
    {
      v21 = v9;
      v11 = *(&self->_didLoadAssetSize + 2);
      v12 = v7;
      v13 = v8;
      objc_opt_self();
      v14 = sub_10027E7D4([AppInstallDownloadResponse alloc], v11, 0, v13, v12, 0);

      if (BYTE2(self->_coordinator) == 1)
      {
        v15 = sub_10023E51C(*(&self->_installInfo + 2), @"bytes_total");
        databaseID = [*(&self->_installInfo + 2) databaseID];
        v17 = v15;
        if (v14)
        {
          objc_storeStrong((v14 + 16), v15);
          *(v14 + 40) = databaseID;
        }
      }

      databaseID2 = [*(&self->_installInfo + 2) databaseID];
      if (v14)
      {
        *(v14 + 40) = databaseID2;
        *(v14 + 48) = v6 + 1;
      }

      v10 = v21;
    }

    else
    {
      v19 = sub_100305C4C();
      v20 = sub_10023E644(*(&self->_installID + 2), @"bundle_id");
      sub_100307BB8(v19, v20);

      v14 = sub_10027E39C(AppInstallDownloadResponse, [*(&self->_installID + 2) databaseID], v10);
    }

    v23(v5, v14);
  }
}

@end