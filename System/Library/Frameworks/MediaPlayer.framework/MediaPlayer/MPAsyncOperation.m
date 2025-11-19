@interface MPAsyncOperation
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (ICUserIdentity)userIdentity;
- (MPAsyncOperation)init;
- (NSError)error;
- (void)cancel;
- (void)execute;
- (void)finishWithError:(id)a3;
- (void)setUserIdentity:(id)a3;
- (void)start;
@end

@implementation MPAsyncOperation

- (MPAsyncOperation)init
{
  v3.receiver = self;
  v3.super_class = MPAsyncOperation;
  result = [(MPAsyncOperation *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_lock);
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  return finished;
}

- (void)start
{
  [(MPAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_lock);
  self->_executing = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(MPAsyncOperation *)self didChangeValueForKey:@"isExecuting"];

  [(MPAsyncOperation *)self execute];
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock(&self->_lock);
  executing = self->_executing;
  os_unfair_lock_unlock(&self->_lock);
  return executing;
}

- (NSError)error
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)cancel
{
  [(MPAsyncOperation *)self willChangeValueForKey:@"isCancelled"];
  os_unfair_lock_lock(&self->_lock);
  self->_cancelled = 1;
  os_unfair_lock_unlock(&self->_lock);

  [(MPAsyncOperation *)self didChangeValueForKey:@"isCancelled"];
}

- (ICUserIdentity)userIdentity
{
  userIdentity = self->_userIdentity;
  if (userIdentity)
  {
    v3 = userIdentity;
  }

  else
  {
    v3 = [MEMORY[0x1E69E4680] activeAccount];
  }

  return v3;
}

- (void)setUserIdentity:(id)a3
{
  v4 = a3;
  userIdentity = self->_userIdentity;
  v10 = v4;
  if (userIdentity != v4)
  {
    v6 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v7 = [(ICUserIdentity *)userIdentity isEqualToIdentity:v10 inStore:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [(ICUserIdentity *)v10 copy];
      v9 = self->_userIdentity;
      self->_userIdentity = v8;
    }
  }
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  [(MPAsyncOperation *)self willChangeValueForKey:@"error"];
  [(MPAsyncOperation *)self willChangeValueForKey:@"isFinished"];
  [(MPAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock(&self->_lock);
  error = self->_error;
  self->_error = v4;

  self->_executing = 0;
  self->_finished = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(MPAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
  [(MPAsyncOperation *)self didChangeValueForKey:@"isFinished"];

  [(MPAsyncOperation *)self didChangeValueForKey:@"error"];
}

- (void)execute
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    [v8 handleFailureInMethod:a2 object:self file:@"MPAsyncOperation.m" lineNumber:84 description:{@"Subclass %@ must implement -%@ defined in %@.", v6, v7, @"[MPAsyncOperation class]"}];
  }
}

- (BOOL)isCancelled
{
  os_unfair_lock_lock(&self->_lock);
  cancelled = self->_cancelled;
  os_unfair_lock_unlock(&self->_lock);
  return cancelled;
}

@end