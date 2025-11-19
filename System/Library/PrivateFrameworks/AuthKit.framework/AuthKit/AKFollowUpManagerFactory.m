@interface AKFollowUpManagerFactory
+ (id)sharedAuthKitFollowupManager;
@end

@implementation AKFollowUpManagerFactory

+ (id)sharedAuthKitFollowupManager
{
  v5 = &unk_100374720;
  location = 0;
  objc_storeStrong(&location, &stru_100321560);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374718;

  return v2;
}

@end