@interface SaveOrderUIXPCService
- (void)failedWith:(id)with;
@end

@implementation SaveOrderUIXPCService

- (void)failedWith:(id)with
{
  v3 = *self->continuationState;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  withCopy = with;

  os_unfair_lock_lock((v3 + v5));
  sub_1B77EAA94(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
}

@end