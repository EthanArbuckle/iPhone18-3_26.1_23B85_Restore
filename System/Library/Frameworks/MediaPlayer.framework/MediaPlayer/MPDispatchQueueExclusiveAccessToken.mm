@interface MPDispatchQueueExclusiveAccessToken
+ (id)tokenWithQueue:(id)queue owner:(id)owner;
- (id)_init;
- (void)assertHasExclusiveAccessForOwner:(id)owner;
@end

@implementation MPDispatchQueueExclusiveAccessToken

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPDispatchQueueExclusiveAccessToken;
  return [(MPDispatchQueueExclusiveAccessToken *)&v3 init];
}

- (void)assertHasExclusiveAccessForOwner:(id)owner
{
  dispatch_assert_queue_V2(self->_accessQueue);
  if (self->_owner != owner)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPExclusiveAccessToken.m" lineNumber:37 description:{@"Exclusive access not for this owner %@ != %@", self->_owner, owner}];
  }
}

+ (id)tokenWithQueue:(id)queue owner:(id)owner
{
  queueCopy = queue;
  _init = [[MPDispatchQueueExclusiveAccessToken alloc] _init];
  v7 = _init[1];
  _init[1] = queueCopy;

  _init[2] = owner;

  return _init;
}

@end