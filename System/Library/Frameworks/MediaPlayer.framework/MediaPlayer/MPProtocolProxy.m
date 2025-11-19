@interface MPProtocolProxy
+ (id)proxyForObject:(id)a3 protocol:(id)a4;
+ (id)proxyForObjects:(id)a3 protocol:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation MPProtocolProxy

+ (id)proxyForObjects:(id)a3 protocol:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  [v8 setObjects:v9];

  [v8 setProtocol:v7];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v8 objects];
        [v16 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v8;
}

+ (id)proxyForObject:(id)a3 protocol:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [a1 proxyForObjects:v9 protocol:{v7, v12, v13}];

  return v10;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (a3 == a2)
  {
    v9 = 0;
  }

  else
  {
    v6 = [(MPProtocolProxy *)self protocol];
    types = protocol_getMethodDescription(v6, a3, 0, 1).types;

    if (types || ([(MPProtocolProxy *)self protocol], v8 = objc_claimAutoreleasedReturnValue(), types = protocol_getMethodDescription(v8, a3, 1, 1).types, v8, types))
    {
      v9 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:types];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MPProtocolProxy *)self objects:0];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_respondsToSelector())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)forwardInvocation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MPProtocolProxy *)self objects];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        [v4 selector];
        if (objc_opt_respondsToSelector())
        {
          [v4 invokeWithTarget:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end