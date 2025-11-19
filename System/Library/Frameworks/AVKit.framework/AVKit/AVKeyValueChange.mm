@interface AVKeyValueChange
- (AVKeyValueChange)initWithValue:(id)a3 oldValue:(id)a4 keyPath:(id)a5 observationToken:(id)a6;
@end

@implementation AVKeyValueChange

- (AVKeyValueChange)initWithValue:(id)a3 oldValue:(id)a4 keyPath:(id)a5 observationToken:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = AVKeyValueChange;
  v14 = [(AVKeyValueChange *)&v28 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
    if (v15 == v10)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    objc_storeStrong(&v14->_value, v16);

    v17 = [MEMORY[0x1E695DFB0] null];
    if (v17 == v11)
    {
      v18 = 0;
    }

    else
    {
      v18 = v11;
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

    v23 = [v12 copy];
    keyPath = v14->_keyPath;
    v14->_keyPath = v23;

    v25 = [v13 copy];
    observationToken = v14->_observationToken;
    v14->_observationToken = v25;
  }

  return v14;
}

@end