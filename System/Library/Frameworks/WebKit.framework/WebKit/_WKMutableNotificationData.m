@interface _WKMutableNotificationData
- (_WKMutableNotificationData)init;
@end

@implementation _WKMutableNotificationData

- (_WKMutableNotificationData)init
{
  v3.receiver = self;
  v3.super_class = _WKMutableNotificationData;
  return [(_WKNotificationData *)&v3 _init];
}

@end