@interface NSKeyValueAccessor
- (NSKeyValueAccessor)initWithContainerClassID:(id)d key:(id)key implementation:(void *)implementation selector:(SEL)selector extraArguments:(void *)arguments[3] count:(unint64_t)count;
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

- (NSKeyValueAccessor)initWithContainerClassID:(id)d key:(id)key implementation:(void *)implementation selector:(SEL)selector extraArguments:(void *)arguments[3] count:(unint64_t)count
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = NSKeyValueAccessor;
  v14 = [(NSKeyValueAccessor *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_containerClassID = d;
    v16 = [key copy];
    v15->_key = v16;
    v15->_implementation = implementation;
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v15->_selector = selectorCopy;
    if (v16)
    {
      v16 = CFHash(v16);
    }

    v15->_hash = v16 ^ d;
    v15->_extraArgumentCount = count;
    key = *arguments;
    if (*arguments == key)
    {
      key = v15->_key;
    }

    v15->_extraArgument1 = key;
    v19 = arguments[1];
    if (v19 == key)
    {
      v19 = v15->_key;
    }

    v15->_extraArgument2 = v19;
    v15->_extraArgument3 = arguments[2];
  }

  return v15;
}

@end