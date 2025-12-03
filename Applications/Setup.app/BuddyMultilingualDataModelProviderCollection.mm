@interface BuddyMultilingualDataModelProviderCollection
- (BuddyMultilingualDataModelProviderCollection)initWithKeyboardProvider:(id)provider withDictationProvider:(id)dictationProvider;
@end

@implementation BuddyMultilingualDataModelProviderCollection

- (BuddyMultilingualDataModelProviderCollection)initWithKeyboardProvider:(id)provider withDictationProvider:(id)dictationProvider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  obj = 0;
  objc_storeStrong(&obj, dictationProvider);
  v5 = selfCopy;
  selfCopy = 0;
  v9.receiver = v5;
  v9.super_class = BuddyMultilingualDataModelProviderCollection;
  v6 = [(BuddyMultilingualDataModelProviderCollection *)&v9 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
    objc_storeStrong(selfCopy + 3, obj);
    *(selfCopy + 8) = 0;
  }

  v7 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end