@interface HSPCCHIPPartnerRoomProvider
- (id)loadData;
- (unint64_t)initialRowIndex;
@end

@implementation HSPCCHIPPartnerRoomProvider

- (id)loadData
{
  v3 = objc_opt_class();
  v4 = [(HSPCDataProvider *)self config];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      sub_1000774F0(v4, v3);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 selectedPartnerHome];
  if (v7)
  {
    v8 = [v6 targetEcosystem];
    if (v8)
    {
      objc_initWeak(&location, self);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10005EA5C;
      v17[3] = &unk_1000C6298;
      v8 = v8;
      v18 = v8;
      v19 = v7;
      v9 = [NAFuture futureWithCompletionHandlerAdapterBlock:v17];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10005EACC;
      v15[3] = &unk_1000C5BC8;
      objc_copyWeak(&v16, &location);
      v10 = [v9 flatMap:v15];
      objc_destroyWeak(&v16);

      objc_destroyWeak(&location);
    }

    else
    {
      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10007B478(v12);
      }

      v13 = [NSError hmfErrorWithCode:8];
      v10 = [NAFuture futureWithError:v13];
    }
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007B4BC(v11);
    }

    v8 = [NSError hmfErrorWithCode:8];
    v10 = [NAFuture futureWithError:v8];
  }

  return v10;
}

- (unint64_t)initialRowIndex
{
  v2 = [(HSPCDataProvider *)self items];
  v3 = [v2 count] >> 1;

  return v3;
}

@end