@interface TUICancellable
+ (id)newWithCancelBlock:(id)a3;
- (TUICancellable)initWithCancelBlock:(id)a3;
- (void)cancel;
- (void)dealloc;
@end

@implementation TUICancellable

- (TUICancellable)initWithCancelBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TUICancellable;
  v5 = [(TUICancellable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 copy];
    cancelBlock = v6->_cancelBlock;
    v6->_cancelBlock = v7;
  }

  return v6;
}

- (void)dealloc
{
  [(TUICancellable *)self cancel];
  v3.receiver = self;
  v3.super_class = TUICancellable;
  [(TUICancellable *)&v3 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_retainBlock(self->_cancelBlock);
  cancelBlock = self->_cancelBlock;
  self->_cancelBlock = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

+ (id)newWithCancelBlock:(id)a3
{
  v3 = a3;
  v4 = [[TUICancellable alloc] initWithCancelBlock:v3];

  return v4;
}

@end