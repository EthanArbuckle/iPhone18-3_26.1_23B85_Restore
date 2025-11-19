@interface ASDEphemeralRequest
- (void)startUsingProxy:(id)a3 withErrorHandler:(id)a4;
@end

@implementation ASDEphemeralRequest

- (void)startUsingProxy:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() requestType];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(v6 + 1);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = *(WeakRetained + 1);
      goto LABEL_4;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
LABEL_4:
  v12 = v11;
  v13 = [(ASDEphemeralRequest *)self options];
  v14 = v12;
  v15 = v13;
  switch(v8)
  {
    case 0uLL:
      v16 = AccountLookupRequestTask;
      goto LABEL_20;
    case 1uLL:
      v16 = CompleteCoordinatorsRequestTask;
      goto LABEL_20;
    case 2uLL:
      v16 = CreatePlaceholdersRequestTask;
      goto LABEL_20;
    case 3uLL:
      v16 = ExternalManifestRequestTask;
      goto LABEL_20;
    case 4uLL:
      v16 = IAPInfoRequestTask;
      goto LABEL_20;
    case 5uLL:
      v16 = IAPInfoUpdateRequestTask;
      goto LABEL_20;
    case 6uLL:
      v16 = LegacyManifestRequestTask;
      goto LABEL_20;
    case 7uLL:
      v16 = LaunchableAppRequestTask;
      goto LABEL_20;
    case 8uLL:
      v17 = [[MigrationRequestTask alloc] initForClient:v14 withOptions:v15];
      v21 = [v14 clientID];
      if (v17)
      {
        objc_setProperty_atomic_copy(v17, v20, v21, 64);
      }

      break;
    case 9uLL:
      v16 = PostBulletinRequestTask;
      goto LABEL_20;
    case 0xAuLL:
      v16 = PurchaseRequestTask;
      goto LABEL_20;
    case 0xBuLL:
      v16 = PurgeableAppRequestTask;
      goto LABEL_20;
    case 0xCuLL:
      v16 = PurgeAppsRequestTask;
      goto LABEL_20;
    case 0xDuLL:
      v16 = PushCacheDeleteUpdateRequestTask;
      goto LABEL_20;
    case 0xEuLL:
      v16 = RestoreApplicationsRequestTask;
      goto LABEL_20;
    case 0xFuLL:
      v16 = RestoreDemotedApplicationsRequestTask;
LABEL_20:
      v17 = [[v16 alloc] initForClient:v14 withOptions:v15];
      break;
    default:
      v17 = 0;
      break;
  }

  objc_initWeak(&location, v17);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100403A3C;
  v22[3] = &unk_1005286F8;
  objc_copyWeak(&v25, &location);
  v22[4] = self;
  v18 = v6;
  v23 = v18;
  v19 = v7;
  v24 = v19;
  [v17 setCompletionBlock:v22];
  if (v6)
  {
    v6 = objc_loadWeakRetained(v18 + 1);
  }

  sub_1003ED574(v6, v17);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

@end