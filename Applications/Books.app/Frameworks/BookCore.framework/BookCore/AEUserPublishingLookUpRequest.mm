@interface AEUserPublishingLookUpRequest
+ (id)_keyProfileFromAEKeyProfile:(id)a3;
- (AEUserPublishingLookUpRequest)initWithAdamIDs:(id)a3 keyProfile:(id)a4;
- (id)resultWithTimeout:(double)a3 Error:(id *)a4;
- (void)cancel;
- (void)startWithLookupBlock:(id)a3;
@end

@implementation AEUserPublishingLookUpRequest

+ (id)_keyProfileFromAEKeyProfile:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"kAEUserPublishingLookProfileURL"])
  {
    v4 = &AMSLookupKeyProfileURL;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"kAEUserPublishingLookProfileProduct"])
  {
    v4 = &AMSLookupKeyProfileProduct;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"kAEUserPublishingLookProfileLockUp"])
  {
    v4 = &AMSLookupKeyProfileLockup;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"kAEUserPublishingLookProfileDescriptionLockUp"])
  {
    v5 = @"description-lockup";
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (AEUserPublishingLookUpRequest)initWithAdamIDs:(id)a3 keyProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEUserPublishingLookUpRequest *)self init];
  if (v8)
  {
    v9 = NSClassFromString(@"AMSLookup");
    if (v9)
    {
      v10 = v9;
      v11 = +[BUBag defaultBag];
      v12 = +[NSBundle mainBundle];
      v13 = [v12 bundleIdentifier];

      v14 = [objc_opt_class() _keyProfileFromAEKeyProfile:v7];
      v15 = [[v10 alloc] initWithBag:v11 caller:v13 keyProfile:v14];
      lookup = v8->_lookup;
      v8->_lookup = v15;

      v17 = [v6 copy];
      itemIdentifiers = v8->_itemIdentifiers;
      v8->_itemIdentifiers = v17;
    }
  }

  return v8;
}

- (void)cancel
{
  v2 = [(AEUserPublishingLookUpRequest *)self lookupResultPromise];
  [v2 cancel];
}

- (void)startWithLookupBlock:(id)a3
{
  v4 = a3;
  v5 = [(AEUserPublishingLookUpRequest *)self lookup];
  v6 = [(AEUserPublishingLookUpRequest *)self itemIdentifiers];
  v7 = [v5 performLookupWithBundleIdentifiers:0 itemIdentifiers:v6];
  [(AEUserPublishingLookUpRequest *)self setLookupResultPromise:v7];

  objc_initWeak(&location, self);
  v8 = [(AEUserPublishingLookUpRequest *)self lookupResultPromise];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5C14C;
  v10[3] = &unk_2C9E50;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [v8 addFinishBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)resultWithTimeout:(double)a3 Error:(id *)a4
{
  v7 = [(AEUserPublishingLookUpRequest *)self lookup];
  v8 = [(AEUserPublishingLookUpRequest *)self itemIdentifiers];
  v9 = [v7 performLookupWithBundleIdentifiers:0 itemIdentifiers:v8];
  [(AEUserPublishingLookUpRequest *)self setLookupResultPromise:v9];

  v10 = [(AEUserPublishingLookUpRequest *)self lookupResultPromise];
  v11 = [v10 resultWithTimeout:a4 error:a3];

  return v11;
}

@end