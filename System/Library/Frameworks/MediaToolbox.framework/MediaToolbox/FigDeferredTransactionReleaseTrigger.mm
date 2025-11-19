@interface FigDeferredTransactionReleaseTrigger
- (FigDeferredTransactionReleaseTrigger)initWithReleaseBlock:(id)a3;
- (void)dealloc;
@end

@implementation FigDeferredTransactionReleaseTrigger

- (FigDeferredTransactionReleaseTrigger)initWithReleaseBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigDeferredTransactionReleaseTrigger;
  v4 = [(FigDeferredTransactionReleaseTrigger *)&v6 init];
  if (v4)
  {
    v4->_blockToCallOnRelease = _Block_copy(a3);
  }

  return v4;
}

- (void)dealloc
{
  blockToCallOnRelease = self->_blockToCallOnRelease;
  if (blockToCallOnRelease)
  {
    blockToCallOnRelease[2](blockToCallOnRelease, a2);
    _Block_release(self->_blockToCallOnRelease);
    self->_blockToCallOnRelease = 0;
  }

  v4.receiver = self;
  v4.super_class = FigDeferredTransactionReleaseTrigger;
  [(FigDeferredTransactionReleaseTrigger *)&v4 dealloc];
}

@end