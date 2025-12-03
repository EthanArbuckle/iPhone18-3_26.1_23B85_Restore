@interface MTRDelegateInfo
- (BOOL)callDelegateWithBlock:(id)block;
- (MTRDelegateInfo)initWithDelegate:(id)delegate queue:(id)queue;
- (id)delegate;
@end

@implementation MTRDelegateInfo

- (MTRDelegateInfo)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = MTRDelegateInfo;
  v8 = [(MTRDelegateInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_queue, queue);
    v9->_delegatePointerValue = delegateCopy;
    v10 = v9;
  }

  return v9;
}

- (BOOL)callDelegateWithBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_238DB6B50;
    v8[3] = &unk_278A71698;
    v10 = blockCopy;
    v9 = WeakRetained;
    dispatch_async(queue, v8);
  }

  return WeakRetained != 0;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end