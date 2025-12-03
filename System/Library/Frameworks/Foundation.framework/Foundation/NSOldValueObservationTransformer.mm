@interface NSOldValueObservationTransformer
+ (id)oldValuesTransformer;
- (void)_receiveBox:(id)box;
- (void)dealloc;
@end

@implementation NSOldValueObservationTransformer

+ (id)oldValuesTransformer
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)_receiveBox:(id)box
{
  if (*(box + 6) == 1)
  {
    value = [box value];
    lastValue = self->_lastValue;
    if (lastValue)
    {
      v7 = lastValue;
      self->_lastValue = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{box, @"new", v7, @"old", 0}];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{box, @"new", 0, v9, v10}];
    }

    [box setValue:v8];
    self->_lastValue = value;
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