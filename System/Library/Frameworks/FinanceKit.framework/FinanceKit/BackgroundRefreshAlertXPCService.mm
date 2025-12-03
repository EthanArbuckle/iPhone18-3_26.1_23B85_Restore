@interface BackgroundRefreshAlertXPCService
- (void)cancelled;
- (void)failedWith:(id)with;
- (void)updated:(id)updated;
@end

@implementation BackgroundRefreshAlertXPCService

- (void)updated:(id)updated
{
  updatedCopy = updated;

  BackgroundRefreshAlertXPCService.updated(_:)(updatedCopy);
}

- (void)cancelled
{
  v2 = *self->continuationState;
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_1B74B40D4(v2 + v3, 2, 0);
  os_unfair_lock_unlock((v2 + v4));
}

- (void)failedWith:(id)with
{
  v3 = *self->continuationState;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  withCopy = with;

  os_unfair_lock_lock((v3 + v5));
  sub_1B74B4DF4(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
}

@end