@interface CLSDarwinNotification
- (CLSDarwinNotification)initWithObserver:(id)observer name:(id)name block:(id)block;
- (NSObject)observer;
@end

@implementation CLSDarwinNotification

- (CLSDarwinNotification)initWithObserver:(id)observer name:(id)name block:(id)block
{
  observerCopy = observer;
  nameCopy = name;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = CLSDarwinNotification;
  v11 = [(CLSDarwinNotification *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_observer, observerCopy);
    v15 = objc_msgSend_copy(nameCopy, v13, v14);
    name = v12->_name;
    v12->_name = v15;

    v17 = MEMORY[0x2383C3E80](blockCopy);
    block = v12->_block;
    v12->_block = v17;
  }

  return v12;
}

- (NSObject)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end