@interface MPPThreadKeyExclusiveAccessToken
+ (id)tokenWithKey:(unint64_t)key owner:(id)owner;
- (id)_init;
- (void)assertHasExclusiveAccessForOwner:(id)owner;
@end

@implementation MPPThreadKeyExclusiveAccessToken

- (void)assertHasExclusiveAccessForOwner:(id)owner
{
  if (!pthread_getspecific(self->_key))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPExclusiveAccessToken.m" lineNumber:59 description:@"Exclusive access failed"];
  }

  if (self->_owner != owner)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPExclusiveAccessToken.m" lineNumber:60 description:{@"Exclusive access not for this owner %@ != %@", self->_owner, owner}];
  }
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPPThreadKeyExclusiveAccessToken;
  return [(MPPThreadKeyExclusiveAccessToken *)&v3 init];
}

+ (id)tokenWithKey:(unint64_t)key owner:(id)owner
{
  _init = [[MPPThreadKeyExclusiveAccessToken alloc] _init];
  _init[1] = key;
  _init[2] = owner;

  return _init;
}

@end