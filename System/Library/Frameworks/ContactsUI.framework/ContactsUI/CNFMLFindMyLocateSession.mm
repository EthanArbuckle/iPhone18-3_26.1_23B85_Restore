@interface CNFMLFindMyLocateSession
- (CNFMLFindMyLocateSession)init;
- (void)sendFriendshipOfferTo:(id)a3 end:(int64_t)a4 isFromGroup:(BOOL)a5 completion:(id)a6;
@end

@implementation CNFMLFindMyLocateSession

- (void)sendFriendshipOfferTo:(id)a3 end:(int64_t)a4 isFromGroup:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [(CNFMLFindMyLocateSession *)self session];
  [v12 sendFriendshipOfferTo:v11 end:a4 isFromGroup:v6 completion:v10];
}

- (CNFMLFindMyLocateSession)init
{
  v6.receiver = self;
  v6.super_class = CNFMLFindMyLocateSession;
  v2 = [(CNFMLFindMyLocateSession *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC10ContactsUI19FindMyLocateSession);
    session = v2->_session;
    v2->_session = v3;
  }

  return v2;
}

@end