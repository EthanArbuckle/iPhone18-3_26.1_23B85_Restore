@interface PKDispatchAfterHandler
+ (id)appLifeCycleHandler;
- (PKDispatchAfterHandler)init;
- (id)identifierForStringIdentifier:(id)identifier;
- (void)cancelAll;
- (void)cancelBlocksWithStringIdentifier:(id)identifier;
- (void)dispatchAfter:(double)after stringIdentifier:(id)identifier withBlock:(id)block;
@end

@implementation PKDispatchAfterHandler

+ (id)appLifeCycleHandler
{
  if (qword_1ED6A5000 != -1)
  {
    dispatch_once(&qword_1ED6A5000, &__block_literal_global_18);
  }

  v3 = _MergedGlobals_125;

  return v3;
}

void __45__PKDispatchAfterHandler_appLifeCycleHandler__block_invoke()
{
  v0 = objc_alloc_init(PKDispatchAfterHandler);
  v1 = _MergedGlobals_125;
  _MergedGlobals_125 = v0;
}

- (PKDispatchAfterHandler)init
{
  v5.receiver = self;
  v5.super_class = PKDispatchAfterHandler;
  v2 = [(PKDispatchAfterHandler *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PKDispatchAfterHandler *)v2 setIdentifierBlockMap:v3];
  }

  return v2;
}

- (id)identifierForStringIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    null = identifierCopy;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v6 = null;

  return v6;
}

- (void)dispatchAfter:(double)after stringIdentifier:(id)identifier withBlock:(id)block
{
  blockCopy = block;
  v8 = [(PKDispatchAfterHandler *)self identifierForStringIdentifier:identifier];
  v9 = objc_opt_class();
  identifierBlockMap = [(PKDispatchAfterHandler *)self identifierBlockMap];
  v11 = [identifierBlockMap objectForKeyedSubscript:v8];
  v12 = PKCheckedDynamicCast(v9, v11);

  if (!v12)
  {
    v12 = [[PKDispatchAfterBlocks alloc] initWithIdentifier:v8];
    identifierBlockMap2 = [(PKDispatchAfterHandler *)self identifierBlockMap];
    [identifierBlockMap2 setObject:v12 forKeyedSubscript:v8];
  }

  [(PKDispatchAfterBlocks *)v12 dispatchAfter:blockCopy withBlock:after];
}

- (void)cancelBlocksWithStringIdentifier:(id)identifier
{
  v8 = [(PKDispatchAfterHandler *)self identifierForStringIdentifier:identifier];
  v4 = objc_opt_class();
  identifierBlockMap = [(PKDispatchAfterHandler *)self identifierBlockMap];
  v6 = [identifierBlockMap objectForKeyedSubscript:v8];
  v7 = PKCheckedDynamicCast(v4, v6);

  [v7 cancelAll];
}

- (void)cancelAll
{
  v16 = *MEMORY[0x1E69E9840];
  identifierBlockMap = [(PKDispatchAfterHandler *)self identifierBlockMap];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [identifierBlockMap countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(identifierBlockMap);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = [identifierBlockMap objectForKeyedSubscript:v7];
        v10 = PKCheckedDynamicCast(v8, v9);

        [v10 cancelAll];
        ++v6;
      }

      while (v4 != v6);
      v4 = [identifierBlockMap countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

@end