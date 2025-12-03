@interface RPStoreManager
+ (id)sharedManager;
- (void)loadItemDetailsForBundleIdentifier:(id)identifier completionHandler:(id)handler;
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

- (void)loadItemDetailsForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
  v40 = identifierCopy;
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
    v35 = identifierCopy;
    allItems = [v18 allItems];
    firstObject = [allItems firstObject];

    bundleIdentifier = [firstObject bundleIdentifier];
    if (bundleIdentifier)
    {
      bundleIdentifier2 = [firstObject bundleIdentifier];
      [(RPStoreInfo *)v7 setBundleID:bundleIdentifier2];
    }

    else
    {
      [(RPStoreInfo *)v7 setBundleID:&stru_1000189F8];
    }

    displayName = [firstObject displayName];
    if (displayName)
    {
      [firstObject displayName];
    }

    else
    {
      [NSBundle _rpLocalizedAppNameFromBundleID:v35];
    }
    v25 = ;
    [(RPStoreInfo *)v7 setAppName:v25];

    artistName = [firstObject artistName];
    if (artistName)
    {
      artistName2 = [firstObject artistName];
      [(RPStoreInfo *)v7 setAuthor:artistName2];
    }

    else
    {
      [(RPStoreInfo *)v7 setAuthor:&stru_1000189F8];
    }

    productPageURL = [firstObject productPageURL];
    [(RPStoreInfo *)v7 setItemURL:productPageURL];

    artwork = [firstObject artwork];
    firstObject2 = [artwork firstObject];
    v31 = [firstObject2 URLWithHeight:128 width:128 cropStyle:AMSLookupItemArtworkCropStyleBoundedBox format:AMSLookupItemArtworkFormatJPG];
    [(RPStoreInfo *)v7 setAppArtworkURL:v31];

    appArtworkURL = [(RPStoreInfo *)v7 appArtworkURL];

    if (!appArtworkURL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000B898();
    }

    identifierCopy = v35;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B300;
  block[3] = &unk_100018888;
  v37 = v7;
  v38 = handlerCopy;
  v33 = v7;
  v34 = handlerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

@end