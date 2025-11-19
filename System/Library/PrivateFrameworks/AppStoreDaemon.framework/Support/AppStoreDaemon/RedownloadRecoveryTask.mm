@interface RedownloadRecoveryTask
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation RedownloadRecoveryTask

- (void)mainWithCompletionHandler:(id)a3
{
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100236BB4;
  v18 = &unk_10051B8A8;
  v19 = self;
  v20 = a3;
  v4 = v20;
  v5 = &v15;
  if (self)
  {
    v6 = objc_alloc_init(ASDPurchaseHistoryQuery);
    [v6 setAccountID:{*(&self->super._finished + 1), v15, v16}];
    v25 = *(&self->_externalID + 2);
    v7 = [NSArray arrayWithObjects:&v25 count:1];
    [v6 setStoreIDs:v7];

    v24 = 0;
    v8 = sub_10021CA38();
    v9 = sub_10021CDA0(v8, v6, &v24);
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 redownloadParams];
      if (v11)
      {
        v12 = [*(&self->_accountID + 2) asUpToDateBag];
        if (v12)
        {
          v13 = v12;
          sub_100236CF8(self, v11, v12, v5);
        }

        else
        {
          v14 = +[BagService appstoredService];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100237070;
          v21[3] = &unk_10051E108;
          v21[4] = self;
          v22 = v11;
          v23 = v5;
          [v14 upToDateBagWithCompletionHandler:v21];

          v13 = 0;
        }
      }

      else
      {
        v13 = ASDErrorWithUserInfoAndFormat();
        v17(v5, v13);
      }
    }

    else
    {
      v17(v5, v24);
    }
  }
}

@end