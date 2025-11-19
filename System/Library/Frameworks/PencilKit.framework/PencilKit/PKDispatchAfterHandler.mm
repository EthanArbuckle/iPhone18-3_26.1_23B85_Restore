@interface PKDispatchAfterHandler
+ (id)appLifeCycleHandler;
- (PKDispatchAfterHandler)init;
- (id)identifierForStringIdentifier:(id)a3;
- (void)cancelAll;
- (void)cancelBlocksWithStringIdentifier:(id)a3;
- (void)dispatchAfter:(double)a3 stringIdentifier:(id)a4 withBlock:(id)a5;
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

- (id)identifierForStringIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = v5;

  return v6;
}

- (void)dispatchAfter:(double)a3 stringIdentifier:(id)a4 withBlock:(id)a5
{
  v14 = a5;
  v8 = [(PKDispatchAfterHandler *)self identifierForStringIdentifier:a4];
  v9 = objc_opt_class();
  v10 = [(PKDispatchAfterHandler *)self identifierBlockMap];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = PKCheckedDynamicCast(v9, v11);

  if (!v12)
  {
    v12 = [[PKDispatchAfterBlocks alloc] initWithIdentifier:v8];
    v13 = [(PKDispatchAfterHandler *)self identifierBlockMap];
    [v13 setObject:v12 forKeyedSubscript:v8];
  }

  [(PKDispatchAfterBlocks *)v12 dispatchAfter:v14 withBlock:a3];
}

- (void)cancelBlocksWithStringIdentifier:(id)a3
{
  v8 = [(PKDispatchAfterHandler *)self identifierForStringIdentifier:a3];
  v4 = objc_opt_class();
  v5 = [(PKDispatchAfterHandler *)self identifierBlockMap];
  v6 = [v5 objectForKeyedSubscript:v8];
  v7 = PKCheckedDynamicCast(v4, v6);

  [v7 cancelAll];
}

- (void)cancelAll
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(PKDispatchAfterHandler *)self identifierBlockMap];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_opt_class();
        v9 = [v2 objectForKeyedSubscript:v7];
        v10 = PKCheckedDynamicCast(v8, v9);

        [v10 cancelAll];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

@end