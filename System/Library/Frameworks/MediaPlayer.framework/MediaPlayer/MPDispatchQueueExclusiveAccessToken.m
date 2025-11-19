@interface MPDispatchQueueExclusiveAccessToken
+ (id)tokenWithQueue:(id)a3 owner:(id)a4;
- (id)_init;
- (void)assertHasExclusiveAccessForOwner:(id)a3;
@end

@implementation MPDispatchQueueExclusiveAccessToken

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPDispatchQueueExclusiveAccessToken;
  return [(MPDispatchQueueExclusiveAccessToken *)&v3 init];
}

- (void)assertHasExclusiveAccessForOwner:(id)a3
{
  dispatch_assert_queue_V2(self->_accessQueue);
  if (self->_owner != a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPExclusiveAccessToken.m" lineNumber:37 description:{@"Exclusive access not for this owner %@ != %@", self->_owner, a3}];
  }
}

+ (id)tokenWithQueue:(id)a3 owner:(id)a4
{
  v5 = a3;
  v6 = [[MPDispatchQueueExclusiveAccessToken alloc] _init];
  v7 = v6[1];
  v6[1] = v5;

  v6[2] = a4;

  return v6;
}

@end