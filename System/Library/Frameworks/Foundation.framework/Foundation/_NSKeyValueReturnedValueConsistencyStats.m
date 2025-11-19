@interface _NSKeyValueReturnedValueConsistencyStats
- (id)currentValue;
- (void)dealloc;
- (void)setCurrentValue:(id)a3;
@end

@implementation _NSKeyValueReturnedValueConsistencyStats

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_weakCurrentValue, 0);

  v3.receiver = self;
  v3.super_class = _NSKeyValueReturnedValueConsistencyStats;
  [(_NSKeyValueReturnedValueConsistencyStats *)&v3 dealloc];
}

- (id)currentValue
{
  if (self->_copiedCurrentValue)
  {
    return self->_copiedCurrentValue;
  }

  else
  {
    return objc_loadWeak(&self->_weakCurrentValue);
  }
}

- (void)setCurrentValue:(id)a3
{
  v3 = a3;
  copiedCurrentValue = self->_copiedCurrentValue;
  if (copiedCurrentValue)
  {
    if (copiedCurrentValue == a3)
    {
      return;
    }
  }

  else
  {
    v6 = objc_loadWeak(&self->_weakCurrentValue);
    if (v6)
    {
      v7 = v6;

      if (v7 == v3)
      {
        return;
      }
    }
  }

  if ([v3 conformsToProtocol:&unk_1EEF5D7C0])
  {
    v8 = [v3 copy];
    v3 = 0;
  }

  else
  {
    v8 = 0;
  }

  self->_copiedCurrentValue = v8;

  objc_storeWeak(&self->_weakCurrentValue, v3);
}

@end