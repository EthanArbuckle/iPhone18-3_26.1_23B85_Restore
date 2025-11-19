@interface NSOldValueObservationTransformer
+ (id)oldValuesTransformer;
- (void)_receiveBox:(id)a3;
- (void)dealloc;
@end

@implementation NSOldValueObservationTransformer

+ (id)oldValuesTransformer
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)_receiveBox:(id)a3
{
  if (*(a3 + 6) == 1)
  {
    v5 = [a3 value];
    lastValue = self->_lastValue;
    if (lastValue)
    {
      v7 = lastValue;
      self->_lastValue = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"new", v7, @"old", 0}];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"new", 0, v9, v10}];
    }

    [a3 setValue:v8];
    self->_lastValue = v5;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSOldValueObservationTransformer;
  [(NSObservationSource *)&v3 dealloc];
}

@end