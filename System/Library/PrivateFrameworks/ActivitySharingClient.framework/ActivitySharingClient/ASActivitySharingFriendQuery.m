@interface ASActivitySharingFriendQuery
- (ASActivitySharingFriendQuery)initWithActivitySharingClient:(id)a3 updateHandler:(id)a4;
@end

@implementation ASActivitySharingFriendQuery

- (ASActivitySharingFriendQuery)initWithActivitySharingClient:(id)a3 updateHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASActivitySharingFriendQuery;
  v8 = [(ASActivitySharingFriendQuery *)&v14 init];
  if (v8)
  {
    v9 = [_ASActivitySharingFriendQuery alloc];
    v10 = [v6 activitySharingClient];
    v11 = [(_ASActivitySharingFriendQuery *)v9 initWithActivitySharingClient:v10 updateHandler:v7];
    activitySharingFriendQuery = v8->_activitySharingFriendQuery;
    v8->_activitySharingFriendQuery = v11;
  }

  return v8;
}

@end