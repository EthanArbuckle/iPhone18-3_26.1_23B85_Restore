@interface RPStoreManager
+ (id)sharedManager;
- (void)loadItemDetailsForBundleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation RPStoreManager

+ (id)sharedManager
{
  if (qword_10001F0D0 != -1)
  {
    sub_10000B800();
  }

  v3 = qword_10001F0D8;

  return v3;
}

- (void)loadItemDetailsForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v39 = 0;
  v7 = objc_alloc_init(RPStoreInfo);
  v8 = +[AMSLookup bagSubProfile];
  v9 = +[AMSLookup bagSubProfileVersion];
  v10 = [AMSBag bagForProfile:v8 profileVersion:v9];

  v11 = +[AMSLookup bagKeySet];
  v12 = +[AMSLookup bagSubProfile];
  v13 = +[AMSLookup bagSubProfileVersion];
  [AMSBagKeySet registerBagKeySet:v11 forProfile:v12 profileVersion:v13];

  v14 = [AMSLookup alloc];
  v15 = [v14 initWithBag:v10 caller:@"com.apple.replayd" keyProfile:AMSLookupKeyProfileProduct];
  v40 = v5;
  v16 = [NSArray arrayWithObjects:&v40 count:1];
  v17 = [v15 performLookupWithBundleIdentifiers:v16 itemIdentifiers:0];

  v18 = [v17 resultWithError:&v39];
  v19 = v18;
  if (v39)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B814(&v39);
    }
  }

  else
  {
    v35 = v5;
    v20 = [v18 allItems];
    v21 = [v20 firstObject];

    v22 = [v21 bundleIdentifier];
    if (v22)
    {
      v23 = [v21 bundleIdentifier];
      [(RPStoreInfo *)v7 setBundleID:v23];
    }

    else
    {
      [(RPStoreInfo *)v7 setBundleID:&stru_1000189F8];
    }

    v24 = [v21 displayName];
    if (v24)
    {
      [v21 displayName];
    }

    else
    {
      [NSBundle _rpLocalizedAppNameFromBundleID:v35];
    }
    v25 = ;
    [(RPStoreInfo *)v7 setAppName:v25];

    v26 = [v21 artistName];
    if (v26)
    {
      v27 = [v21 artistName];
      [(RPStoreInfo *)v7 setAuthor:v27];
    }

    else
    {
      [(RPStoreInfo *)v7 setAuthor:&stru_1000189F8];
    }

    v28 = [v21 productPageURL];
    [(RPStoreInfo *)v7 setItemURL:v28];

    v29 = [v21 artwork];
    v30 = [v29 firstObject];
    v31 = [v30 URLWithHeight:128 width:128 cropStyle:AMSLookupItemArtworkCropStyleBoundedBox format:AMSLookupItemArtworkFormatJPG];
    [(RPStoreInfo *)v7 setAppArtworkURL:v31];

    v32 = [(RPStoreInfo *)v7 appArtworkURL];

    if (!v32 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B898();
    }

    v5 = v35;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B300;
  block[3] = &unk_100018888;
  v37 = v7;
  v38 = v6;
  v33 = v7;
  v34 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

@end