@interface ASActivitySharingFriendQuery
- (ASActivitySharingFriendQuery)initWithActivitySharingClient:(id)client updateHandler:(id)handler;
@end

@implementation ASActivitySharingFriendQuery

- (ASActivitySharingFriendQuery)initWithActivitySharingClient:(id)client updateHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = ASActivitySharingFriendQuery;
  v8 = [(ASActivitySharingFriendQuery *)&v14 init];
  if (v8)
  {
    v9 = [_ASActivitySharingFriendQuery alloc];
    activitySharingClient = [clientCopy activitySharingClient];
    v11 = [(_ASActivitySharingFriendQuery *)v9 initWithActivitySharingClient:activitySharingClient updateHandler:handlerCopy];
    activitySharingFriendQuery = v8->_activitySharingFriendQuery;
    v8->_activitySharingFriendQuery = v11;
  }

  return v8;
}

@end