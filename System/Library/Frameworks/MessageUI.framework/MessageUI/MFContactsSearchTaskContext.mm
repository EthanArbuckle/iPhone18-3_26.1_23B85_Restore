@interface MFContactsSearchTaskContext
+ (id)contextWithConsumer:(id)consumer text:(id)text operations:(id)operations searchQueries:(id)queries;
- (BOOL)consumerRespondsToCallbacks;
@end

@implementation MFContactsSearchTaskContext

+ (id)contextWithConsumer:(id)consumer text:(id)text operations:(id)operations searchQueries:(id)queries
{
  consumerCopy = consumer;
  textCopy = text;
  operationsCopy = operations;
  queriesCopy = queries;
  v15 = objc_alloc_init(self);
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(v15 + 1, consumer);
    v17 = [textCopy copy];
    v18 = v16[2];
    v16[2] = v17;

    if (operationsCopy)
    {
      v19 = operationsCopy;
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v20 = v16[3];
    v16[3] = v19;

    if (queriesCopy)
    {
      v21 = queriesCopy;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v22 = v16[4];
    v16[4] = v21;
  }

  return v16;
}

- (BOOL)consumerRespondsToCallbacks
{
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_opt_respondsToSelector();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

@end