@interface ASFriendNotificationContainer
+ (id)containerWithNotificationRequest:(id)request friendUUID:(id)d bulletinType:(int64_t)type;
- (ASFriendNotificationContainer)initWithNotificationRequest:(id)request friendUUID:(id)d bulletinType:(int64_t)type;
@end

@implementation ASFriendNotificationContainer

+ (id)containerWithNotificationRequest:(id)request friendUUID:(id)d bulletinType:(int64_t)type
{
  dCopy = d;
  requestCopy = request;
  v9 = [[ASFriendNotificationContainer alloc] initWithNotificationRequest:requestCopy friendUUID:dCopy bulletinType:type];

  return v9;
}

- (ASFriendNotificationContainer)initWithNotificationRequest:(id)request friendUUID:(id)d bulletinType:(int64_t)type
{
  requestCopy = request;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ASFriendNotificationContainer;
  v11 = [(ASFriendNotificationContainer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_notificationRequest, request);
    objc_storeStrong(&v12->_friendUUID, d);
    v12->_notificationRequestType = type;
  }

  return v12;
}

@end