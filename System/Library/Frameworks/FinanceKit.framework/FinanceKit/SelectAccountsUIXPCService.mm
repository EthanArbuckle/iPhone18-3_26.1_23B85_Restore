@interface SelectAccountsUIXPCService
- (void)cancelled;
- (void)failedWith:(id)with;
- (void)updated:(id)updated;
@end

@implementation SelectAccountsUIXPCService

- (void)updated:(id)updated
{
  v3 = *(updated + OBJC_IVAR___XPCAccountSelectionResult_value);
  v4 = *self->continuationState;
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  updatedCopy = updated;

  sub_1B720A65C(v3);
  os_unfair_lock_lock((v4 + v6));
  sub_1B754B8CC(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));
  sub_1B720A6F0(v3);
}

- (void)cancelled
{
  v2 = *self->continuationState;
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_1B754B8CC(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

- (void)failedWith:(id)with
{
  v3 = *self->continuationState;
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  withCopy = with;

  os_unfair_lock_lock((v3 + v5));
  sub_1B754B8CC(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));
}

@end