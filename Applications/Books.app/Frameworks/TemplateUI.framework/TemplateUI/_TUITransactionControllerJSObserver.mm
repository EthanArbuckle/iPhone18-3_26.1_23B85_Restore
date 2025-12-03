@interface _TUITransactionControllerJSObserver
- (_TUITransactionControllerJSObserver)initWithWillUpdateValue:(id)value didUpdateValue:(id)updateValue;
- (void)transactionControllerDidProcessUpdate:(id)update;
- (void)transactionControllerWillProcessUpdate:(id)update;
@end

@implementation _TUITransactionControllerJSObserver

- (_TUITransactionControllerJSObserver)initWithWillUpdateValue:(id)value didUpdateValue:(id)updateValue
{
  valueCopy = value;
  updateValueCopy = updateValue;
  v14.receiver = self;
  v14.super_class = _TUITransactionControllerJSObserver;
  v8 = [(_TUITransactionControllerJSObserver *)&v14 init];
  if (v8)
  {
    if (valueCopy)
    {
      v9 = [JSManagedValue managedValueWithValue:valueCopy];
    }

    else
    {
      v9 = 0;
    }

    willUpdate = v8->_willUpdate;
    v8->_willUpdate = v9;

    if (updateValueCopy)
    {
      v11 = [JSManagedValue managedValueWithValue:updateValueCopy];
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

- (void)transactionControllerWillProcessUpdate:(id)update
{
  v4 = TUIDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[_TUITransactionControllerJSObserver transactionControllerWillProcessUpdate:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  value = [(JSManagedValue *)self->_willUpdate value];
  v6 = value;
  if (value)
  {
    v7 = [value callWithArguments:0];
  }
}

- (void)transactionControllerDidProcessUpdate:(id)update
{
  v4 = TUIDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[_TUITransactionControllerJSObserver transactionControllerDidProcessUpdate:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  value = [(JSManagedValue *)self->_didUpdate value];
  v6 = value;
  if (value)
  {
    v7 = [value callWithArguments:0];
  }
}

@end