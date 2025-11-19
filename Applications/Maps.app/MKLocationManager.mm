@interface MKLocationManager
+ (id)unretainedUGCInstance;
@end

@implementation MKLocationManager

+ (id)unretainedUGCInstance
{
  WeakRetained = objc_loadWeakRetained(&qword_10195CD90);
  if (!WeakRetained)
  {
    WeakRetained = [[MKLocationManager alloc] initWithCLLocationManager:0];
    [WeakRetained setDesiredAccuracy:6380000.0];
    objc_storeWeak(&qword_10195CD90, WeakRetained);
  }

  return WeakRetained;
}

@end