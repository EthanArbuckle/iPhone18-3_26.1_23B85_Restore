@interface __CKShareBlockedIdentity
- (__CKShareBlockedIdentity)initWithUserIdentity:(id)a3;
@end

@implementation __CKShareBlockedIdentity

- (__CKShareBlockedIdentity)initWithUserIdentity:(id)a3
{
  v4.receiver = self;
  v4.super_class = __CKShareBlockedIdentity;
  return [(CKShareBlockedIdentity *)&v4 initWithUserIdentity:a3];
}

@end