@interface AFMultiArgumentSafetyBlock
- (AFMultiArgumentSafetyBlock)initWithBlock:(id)block defaultValueArray:(id)array;
- (AFMultiArgumentSafetyBlock)initWithBlock:(id)block defaultValues:(id)values;
- (BOOL)invokeWithValueArray:(id)array;
- (BOOL)invokeWithValues:(id)values;
@end

@implementation AFMultiArgumentSafetyBlock

- (BOOL)invokeWithValueArray:(id)array
{
  arrayCopy = array;
  v6 = [arrayCopy count];
  if (v6 >= [(NSMethodSignature *)self->_blockMethodSignature numberOfArguments])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFSafetyBlock.m" lineNumber:235 description:{@"Number of values for invocation (%lu) is expected to be equal or less than the number of block arguments (%lu).", objc_msgSend(arrayCopy, "count"), -[NSMethodSignature numberOfArguments](self->_blockMethodSignature, "numberOfArguments") - 1}];
  }

  v7 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v7 & 1) == 0 && self->_block)
  {
    v8 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:self->_blockMethodSignature];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__AFMultiArgumentSafetyBlock_invokeWithValueArray___block_invoke;
    v13[3] = &unk_1E7346C60;
    v14 = v8;
    v9 = v8;
    [arrayCopy enumerateObjectsUsingBlock:v13];
    [v9 invokeWithTarget:self->_block];

    block = self->_block;
    self->_block = 0;
  }

  return (v7 & 1) == 0;
}

void __51__AFMultiArgumentSafetyBlock_invokeWithValueArray___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setArgument:&v5 atIndex:a3 + 1];
}

- (BOOL)invokeWithValues:(id)values
{
  valuesCopy = values;
  if (valuesCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v5 addObject:valuesCopy];
    v12 = &v14;
    v6 = v13;
    if (v6)
    {
      v7 = v6;
      do
      {
        [v5 addObject:v7];
        v8 = v12++;
        v9 = *v8;

        v7 = v9;
      }

      while (v9);
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = [(AFMultiArgumentSafetyBlock *)self invokeWithValueArray:v5];

  return v10;
}

- (AFMultiArgumentSafetyBlock)initWithBlock:(id)block defaultValueArray:(id)array
{
  blockCopy = block;
  arrayCopy = array;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AFSafetyBlock.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  if (!_Block_has_signature(blockCopy))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"AFSafetyBlock.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"_Block_has_signature((__bridge void *)block)"}];
  }

  v22.receiver = self;
  v22.super_class = AFMultiArgumentSafetyBlock;
  v9 = [(AFMultiArgumentSafetyBlock *)&v22 init];
  if (v9)
  {
    v10 = [blockCopy copy];
    block = v9->_block;
    v9->_block = v10;

    if (_Block_has_signature(v9->_block))
    {
      v12 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:_Block_signature(v9->_block)];
      blockMethodSignature = v9->_blockMethodSignature;
      v9->_blockMethodSignature = v12;
    }

    if (!v9->_blockMethodSignature)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v9 file:@"AFSafetyBlock.m" lineNumber:207 description:{@"Copied block %@ is expected to have a signature.", v9->_block}];
    }

    v14 = [arrayCopy count];
    if (v14 >= [(NSMethodSignature *)v9->_blockMethodSignature numberOfArguments])
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:v9 file:@"AFSafetyBlock.m" lineNumber:208 description:{@"Number of default values (%lu) is expected to be equal or less than the number of block arguments (%lu).", objc_msgSend(arrayCopy, "count"), -[NSMethodSignature numberOfArguments](v9->_blockMethodSignature, "numberOfArguments") - 1}];
    }

    v15 = [arrayCopy copy];
    defaultValueArray = v9->_defaultValueArray;
    v9->_defaultValueArray = v15;
  }

  return v9;
}

- (AFMultiArgumentSafetyBlock)initWithBlock:(id)block defaultValues:(id)values
{
  blockCopy = block;
  valuesCopy = values;
  if (valuesCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v8 addObject:valuesCopy];
    v15 = &v17;
    v9 = v16;
    if (v9)
    {
      v10 = v9;
      do
      {
        [v8 addObject:v10];
        v11 = v15++;
        v12 = *v11;

        v10 = v12;
      }

      while (v12);
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = [(AFMultiArgumentSafetyBlock *)self initWithBlock:blockCopy defaultValueArray:v8];

  return v13;
}

@end