@interface _PFBatchHistoryFaultingArray
- (id)transaction;
- (void)_setTransaction:(id)transaction;
@end

@implementation _PFBatchHistoryFaultingArray

- (id)transaction
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->super._moc, a2);
  }

  return self->_transaction;
}

- (void)_setTransaction:(id)transaction
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->super._moc, a2);
  }

  self->_transaction = transaction;
}

@end