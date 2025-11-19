@interface _TUITransactionControllerJSObserver
- (_TUITransactionControllerJSObserver)initWithWillUpdateValue:(id)a3 didUpdateValue:(id)a4;
- (void)transactionControllerDidProcessUpdate:(id)a3;
- (void)transactionControllerWillProcessUpdate:(id)a3;
@end

@implementation _TUITransactionControllerJSObserver

- (_TUITransactionControllerJSObserver)initWithWillUpdateValue:(id)a3 didUpdateValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _TUITransactionControllerJSObserver;
  v8 = [(_TUITransactionControllerJSObserver *)&v14 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [JSManagedValue managedValueWithValue:v6];
    }

    else
    {
      v9 = 0;
    }

    willUpdate = v8->_willUpdate;
    v8->_willUpdate = v9;

    if (v7)
    {
      v11 = [JSManagedValue managedValueWithValue:v7];
    }

    else
    {
      v11 = 0;
    }

    didUpdate = v8->_didUpdate;
    v8->_didUpdate = v11;
  }

  return v8;
}

- (void)transactionControllerWillProcessUpdate:(id)a3
{
  v4 = TUIDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[_TUITransactionControllerJSObserver transactionControllerWillProcessUpdate:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  v5 = [(JSManagedValue *)self->_willUpdate value];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 callWithArguments:0];
  }
}

- (void)transactionControllerDidProcessUpdate:(id)a3
{
  v4 = TUIDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[_TUITransactionControllerJSObserver transactionControllerDidProcessUpdate:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  v5 = [(JSManagedValue *)self->_didUpdate value];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 callWithArguments:0];
  }
}

@end