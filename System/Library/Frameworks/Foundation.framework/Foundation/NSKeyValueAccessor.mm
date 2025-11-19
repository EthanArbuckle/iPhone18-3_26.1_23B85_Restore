@interface NSKeyValueAccessor
- (NSKeyValueAccessor)initWithContainerClassID:(id)a3 key:(id)a4 implementation:(void *)a5 selector:(SEL)a6 extraArguments:(void *)a7[3] count:(unint64_t)a8;
- (SEL)selector;
- (void)dealloc;
@end

@implementation NSKeyValueAccessor

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueAccessor;
  [(NSKeyValueAccessor *)&v3 dealloc];
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (NSKeyValueAccessor)initWithContainerClassID:(id)a3 key:(id)a4 implementation:(void *)a5 selector:(SEL)a6 extraArguments:(void *)a7[3] count:(unint64_t)a8
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = NSKeyValueAccessor;
  v14 = [(NSKeyValueAccessor *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_containerClassID = a3;
    v16 = [a4 copy];
    v15->_key = v16;
    v15->_implementation = a5;
    if (a6)
    {
      v17 = a6;
    }

    else
    {
      v17 = 0;
    }

    v15->_selector = v17;
    if (v16)
    {
      v16 = CFHash(v16);
    }

    v15->_hash = v16 ^ a3;
    v15->_extraArgumentCount = a8;
    key = *a7;
    if (*a7 == a4)
    {
      key = v15->_key;
    }

    v15->_extraArgument1 = key;
    v19 = a7[1];
    if (v19 == a4)
    {
      v19 = v15->_key;
    }

    v15->_extraArgument2 = v19;
    v15->_extraArgument3 = a7[2];
  }

  return v15;
}

@end