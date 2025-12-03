@interface ProcessTerminator
- (void)assertionTargetProcessDidExit:(id)exit;
- (void)dealloc;
@end

@implementation ProcessTerminator

- (void)dealloc
{
  assertion = self->_assertion;
  if (assertion)
  {
    [(RBSTerminationAssertion *)assertion removeObserver:self];
    [(RBSTerminationAssertion *)self->_assertion invalidate];
  }

  v4.receiver = self;
  v4.super_class = ProcessTerminator;
  [(ProcessTerminator *)&v4 dealloc];
}

- (void)assertionTargetProcessDidExit:(id)exit
{
  if ([(NSConditionLock *)self->_condition tryLockWhenCondition:0])
  {
    condition = self->_condition;

    [(NSConditionLock *)condition unlockWithCondition:1];
  }
}

@end