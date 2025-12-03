@interface AEUserPublishingLookUpRequest
+ (id)_keyProfileFromAEKeyProfile:(id)profile;
- (AEUserPublishingLookUpRequest)initWithAdamIDs:(id)ds keyProfile:(id)profile;
- (id)resultWithTimeout:(double)timeout Error:(id *)error;
- (void)cancel;
- (void)startWithLookupBlock:(id)block;
@end

@implementation AEUserPublishingLookUpRequest

+ (id)_keyProfileFromAEKeyProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy isEqualToString:@"kAEUserPublishingLookProfileURL"])
  {
    v4 = &AMSLookupKeyProfileURL;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if ([profileCopy isEqualToString:@"kAEUserPublishingLookProfileProduct"])
  {
    v4 = &AMSLookupKeyProfileProduct;
    goto LABEL_7;
  }

  if ([profileCopy isEqualToString:@"kAEUserPublishingLookProfileLockUp"])
  {
    v4 = &AMSLookupKeyProfileLockup;
    goto LABEL_7;
  }

  if ([profileCopy isEqualToString:@"kAEUserPublishingLookProfileDescriptionLockUp"])
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

- (AEUserPublishingLookUpRequest)initWithAdamIDs:(id)ds keyProfile:(id)profile
{
  dsCopy = ds;
  profileCopy = profile;
  v8 = [(AEUserPublishingLookUpRequest *)self init];
  if (v8)
  {
    v9 = NSClassFromString(@"AMSLookup");
    if (v9)
    {
      v10 = v9;
      v11 = +[BUBag defaultBag];
      v12 = +[NSBundle mainBundle];
      bundleIdentifier = [v12 bundleIdentifier];

      v14 = [objc_opt_class() _keyProfileFromAEKeyProfile:profileCopy];
      v15 = [[v10 alloc] initWithBag:v11 caller:bundleIdentifier keyProfile:v14];
      lookup = v8->_lookup;
      v8->_lookup = v15;

      v17 = [dsCopy copy];
      itemIdentifiers = v8->_itemIdentifiers;
      v8->_itemIdentifiers = v17;
    }
  }

  return v8;
}

- (void)cancel
{
  lookupResultPromise = [(AEUserPublishingLookUpRequest *)self lookupResultPromise];
  [lookupResultPromise cancel];
}

- (void)startWithLookupBlock:(id)block
{
  blockCopy = block;
  lookup = [(AEUserPublishingLookUpRequest *)self lookup];
  itemIdentifiers = [(AEUserPublishingLookUpRequest *)self itemIdentifiers];
  v7 = [lookup performLookupWithBundleIdentifiers:0 itemIdentifiers:itemIdentifiers];
  [(AEUserPublishingLookUpRequest *)self setLookupResultPromise:v7];

  objc_initWeak(&location, self);
  lookupResultPromise = [(AEUserPublishingLookUpRequest *)self lookupResultPromise];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5C14C;
  v10[3] = &unk_2C9E50;
  objc_copyWeak(&v12, &location);
  v9 = blockCopy;
  v11 = v9;
  [lookupResultPromise addFinishBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)resultWithTimeout:(double)timeout Error:(id *)error
{
  lookup = [(AEUserPublishingLookUpRequest *)self lookup];
  itemIdentifiers = [(AEUserPublishingLookUpRequest *)self itemIdentifiers];
  v9 = [lookup performLookupWithBundleIdentifiers:0 itemIdentifiers:itemIdentifiers];
  [(AEUserPublishingLookUpRequest *)self setLookupResultPromise:v9];

  lookupResultPromise = [(AEUserPublishingLookUpRequest *)self lookupResultPromise];
  v11 = [lookupResultPromise resultWithTimeout:error error:timeout];

  return v11;
}

@end