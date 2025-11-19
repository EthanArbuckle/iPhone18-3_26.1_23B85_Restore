@interface AKNativeAnisetteServiceTrafficManager
+ (id)sharedSigningService;
- (AKNativeAnisetteServiceTrafficManager)init;
@end

@implementation AKNativeAnisetteServiceTrafficManager

+ (id)sharedSigningService
{
  v5 = &unk_100374690;
  location = 0;
  objc_storeStrong(&location, &stru_1003206E8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374688;

  return v2;
}

- (AKNativeAnisetteServiceTrafficManager)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKNativeAnisetteServiceTrafficManager;
  v6 = [(AKNativeAnisetteServiceTrafficManager *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = +[NSMutableArray array];
    pendingSigningRequests = v9->_pendingSigningRequests;
    v9->_pendingSigningRequests = v2;
    _objc_release(pendingSigningRequests);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

@end