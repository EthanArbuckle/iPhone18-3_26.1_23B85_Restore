@interface AVKeyValueChange
- (AVKeyValueChange)initWithValue:(id)value oldValue:(id)oldValue keyPath:(id)path observationToken:(id)token;
@end

@implementation AVKeyValueChange

- (AVKeyValueChange)initWithValue:(id)value oldValue:(id)oldValue keyPath:(id)path observationToken:(id)token
{
  valueCopy = value;
  oldValueCopy = oldValue;
  pathCopy = path;
  tokenCopy = token;
  v28.receiver = self;
  v28.super_class = AVKeyValueChange;
  v14 = [(AVKeyValueChange *)&v28 init];
  if (v14)
  {
    null = [MEMORY[0x1E695DFB0] null];
    if (null == valueCopy)
    {
      v16 = 0;
    }

    else
    {
      v16 = valueCopy;
    }

    objc_storeStrong(&v14->_value, v16);

    null2 = [MEMORY[0x1E695DFB0] null];
    if (null2 == oldValueCopy)
    {
      v18 = 0;
    }

    else
    {
      v18 = oldValueCopy;
    }

    objc_storeStrong(&v14->_oldValue, v18);

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v19 = [v14->_value copy];
      value = v14->_value;
      v14->_value = v19;

      v21 = [v14->_oldValue copy];
      oldValue = v14->_oldValue;
      v14->_oldValue = v21;
    }

    v23 = [pathCopy copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v23;

    v25 = [tokenCopy copy];
    observationToken = v14->_observationToken;
    v14->_observationToken = v25;
  }

  return v14;
}

@end