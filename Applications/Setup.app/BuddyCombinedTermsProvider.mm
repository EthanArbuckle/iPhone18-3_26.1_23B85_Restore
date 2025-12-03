@interface BuddyCombinedTermsProvider
- (BuddyCombinedTermsProvider)init;
- (void)fetchTerms:(id)terms;
- (void)fetchTermsFromServer:(id)server;
@end

@implementation BuddyCombinedTermsProvider

- (BuddyCombinedTermsProvider)init
{
  v9 = a2;
  location = 0;
  v8.receiver = self;
  v8.super_class = BuddyCombinedTermsProvider;
  location = [(BuddyCombinedTermsProvider *)&v8 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = dispatch_queue_create("Combined Terms Queue", 0);
    v3 = *(location + 2);
    *(location + 2) = v2;

    v4 = dispatch_queue_create("Combined Terms Request Queue", 0);
    v5 = *(location + 3);
    *(location + 3) = v4;
  }

  v6 = location;
  objc_storeStrong(&location, 0);
  return v6;
}

- (void)fetchTerms:(id)terms
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, terms);
  termsRequestQueue = [(BuddyCombinedTermsProvider *)selfCopy termsRequestQueue];
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1000BA030;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(termsRequestQueue, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchTermsFromServer:(id)server
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, server);
  v25 = MGCopyAnswer();
  v23 = v25;
  if (![v23 length])
  {
    objc_storeStrong(&v23, @"1A001a");
  }

  v22 = &off_10033CF70;
  v21 = &off_10033CF98;
  v20 = &off_10033CFC0;
  v19 = 0;
  if ((+[BYWarranty shouldDisplay]& 1) != 0)
  {
    v32[0] = v22;
    v32[1] = v20;
    v32[2] = v21;
    v3 = [NSArray arrayWithObjects:v32 count:3];
  }

  else
  {
    v31[0] = v22;
    v31[1] = v20;
    v3 = [NSArray arrayWithObjects:v31 count:2];
  }

  v4 = v19;
  v19 = v3;

  v29[0] = @"terms";
  v30[0] = v19;
  v29[1] = @"format";
  v30[1] = kAAProtocolGenericTermsUIBuddyMLKey;
  v18 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v17 = +[BYLicenseAgreement versionOfAcceptedAgreement];
  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100077E48(buf, v17);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Loading generic terms, accepted version = %llu", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v5 = [AAGenericTermsUIRequest alloc];
  v14 = [v5 initWithParameters:v18];
  v26 = @"X-Apple-iOS-SLA-Version";
  v6 = [NSString stringWithFormat:@"%llu", v17];
  v27 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [v14 setCustomHeaders:v7];

  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1000BAAB4;
  v12 = &unk_10032C330;
  v13 = location[0];
  [v14 performRequestWithHandler:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

@end