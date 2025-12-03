@interface __CKShareBlockedIdentity
- (__CKShareBlockedIdentity)initWithUserIdentity:(id)identity;
@end

@implementation __CKShareBlockedIdentity

- (__CKShareBlockedIdentity)initWithUserIdentity:(id)identity
{
  v4.receiver = self;
  v4.super_class = __CKShareBlockedIdentity;
  return [(CKShareBlockedIdentity *)&v4 initWithUserIdentity:identity];
}

@end