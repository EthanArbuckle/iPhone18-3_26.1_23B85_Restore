@interface BuddyMultilingualDataModelProviderCollection
- (BuddyMultilingualDataModelProviderCollection)initWithKeyboardProvider:(id)a3 withDictationProvider:(id)a4;
@end

@implementation BuddyMultilingualDataModelProviderCollection

- (BuddyMultilingualDataModelProviderCollection)initWithKeyboardProvider:(id)a3 withDictationProvider:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  obj = 0;
  objc_storeStrong(&obj, a4);
  v5 = v12;
  v12 = 0;
  v9.receiver = v5;
  v9.super_class = BuddyMultilingualDataModelProviderCollection;
  v6 = [(BuddyMultilingualDataModelProviderCollection *)&v9 init];
  v12 = v6;
  objc_storeStrong(&v12, v6);
  if (v6)
  {
    objc_storeStrong(v12 + 2, location[0]);
    objc_storeStrong(v12 + 3, obj);
    *(v12 + 8) = 0;
  }

  v7 = v12;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

@end