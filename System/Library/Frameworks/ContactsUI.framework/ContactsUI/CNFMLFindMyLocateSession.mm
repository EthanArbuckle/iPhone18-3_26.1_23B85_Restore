@interface CNFMLFindMyLocateSession
- (CNFMLFindMyLocateSession)init;
- (void)sendFriendshipOfferTo:(id)to end:(int64_t)end isFromGroup:(BOOL)group completion:(id)completion;
@end

@implementation CNFMLFindMyLocateSession

- (void)sendFriendshipOfferTo:(id)to end:(int64_t)end isFromGroup:(BOOL)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  toCopy = to;
  session = [(CNFMLFindMyLocateSession *)self session];
  [session sendFriendshipOfferTo:toCopy end:end isFromGroup:groupCopy completion:completionCopy];
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