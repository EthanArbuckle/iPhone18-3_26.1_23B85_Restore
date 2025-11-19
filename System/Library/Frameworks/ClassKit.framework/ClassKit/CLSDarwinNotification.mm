@interface CLSDarwinNotification
- (CLSDarwinNotification)initWithObserver:(id)a3 name:(id)a4 block:(id)a5;
- (NSObject)observer;
@end

@implementation CLSDarwinNotification

- (CLSDarwinNotification)initWithObserver:(id)a3 name:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CLSDarwinNotification;
  v11 = [(CLSDarwinNotification *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_observer, v8);
    v15 = objc_msgSend_copy(v9, v13, v14);
    name = v12->_name;
    v12->_name = v15;

    v17 = MEMORY[0x2383C3E80](v10);
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