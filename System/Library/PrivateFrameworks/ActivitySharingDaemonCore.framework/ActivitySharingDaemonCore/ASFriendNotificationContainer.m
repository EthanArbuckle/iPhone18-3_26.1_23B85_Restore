@interface ASFriendNotificationContainer
+ (id)containerWithNotificationRequest:(id)a3 friendUUID:(id)a4 bulletinType:(int64_t)a5;
- (ASFriendNotificationContainer)initWithNotificationRequest:(id)a3 friendUUID:(id)a4 bulletinType:(int64_t)a5;
@end

@implementation ASFriendNotificationContainer

+ (id)containerWithNotificationRequest:(id)a3 friendUUID:(id)a4 bulletinType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[ASFriendNotificationContainer alloc] initWithNotificationRequest:v8 friendUUID:v7 bulletinType:a5];

  return v9;
}

- (ASFriendNotificationContainer)initWithNotificationRequest:(id)a3 friendUUID:(id)a4 bulletinType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ASFriendNotificationContainer;
  v11 = [(ASFriendNotificationContainer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_notificationRequest, a3);
    objc_storeStrong(&v12->_friendUUID, a4);
    v12->_notificationRequestType = a5;
  }

  return v12;
}

@end