@interface TUIMutableDynamicValue
- (void)updateWithTransaction:(id)transaction value:(id)value;
- (void)updateWithTransaction:(id)transaction valueIfChanged:(id)changed;
- (void)updateWithValue:(id)value;
- (void)updateWithValueIfChanged:(id)changed;
@end

@implementation TUIMutableDynamicValue

- (void)updateWithTransaction:(id)transaction valueIfChanged:(id)changed
{
  transactionCopy = transaction;
  changedCopy = changed;
  value = self->super._value;
  if (value != changedCopy && ([value isEqual:changedCopy] & 1) == 0)
  {
    [(TUIMutableDynamicValue *)self updateWithTransaction:transactionCopy value:changedCopy];
  }
}

- (void)updateWithTransaction:(id)transaction value:(id)value
{
  transactionCopy = transaction;
  valueCopy = value;
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  v8 = [transactionCopy tx];
  v9 = [[_TUIDynamicValueUpdate alloc] initWithValue:valueCopy transaction:v8];
  v10 = TUITransactionLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    debugName = [(TUIDynamicValue *)self debugName];
    WeakRetained = objc_loadWeakRetained(&self->super._lastTransactionToken);
    v16 = 134219010;
    selfCopy = self;
    v18 = 2114;
    v19 = debugName;
    v20 = 2112;
    v21 = transactionCopy;
    v22 = 2112;
    v23 = WeakRetained;
    v24 = 2112;
    v25 = valueCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[%p] %{public}@: DynamicValue: updateWithValue (tx=%@, lastToken=%@) value=%@", &v16, 0x34u);
  }

  v13 = objc_loadWeakRetained(&self->super._lastTransactionToken);
  [transactionCopy dependentOn:v13];

  transactionCategory = [(TUIDynamicValue *)self transactionCategory];
  [transactionCopy addCategory:transactionCategory];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->super._lastTransactionToken, dependencyToken);

  [(TUIDynamicValue *)self _enqueueUpdate:v9];
}

- (void)updateWithValue:(id)value
{
  valueCopy = value;
  v5 = +[TUITransaction currentOrImplicitTransaction];
  [(TUIMutableDynamicValue *)self updateWithTransaction:v5 value:valueCopy];
}

- (void)updateWithValueIfChanged:(id)changed
{
  changedCopy = changed;
  v5 = +[TUITransaction currentOrImplicitTransaction];
  [(TUIMutableDynamicValue *)self updateWithTransaction:v5 valueIfChanged:changedCopy];
}

@end