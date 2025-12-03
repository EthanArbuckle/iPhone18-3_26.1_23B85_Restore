@interface MPProtocolProxy
+ (id)proxyForObject:(id)object protocol:(id)protocol;
+ (id)proxyForObjects:(id)objects protocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MPProtocolProxy

+ (id)proxyForObjects:(id)objects protocol:(id)protocol
{
  v23 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  protocolCopy = protocol;
  v8 = [self alloc];
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  [v8 setObjects:weakObjectsHashTable];

  [v8 setProtocol:protocolCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = objectsCopy;
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
        objects = [v8 objects];
        [objects addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v8;
}

+ (id)proxyForObject:(id)object protocol:(id)protocol
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v6 = MEMORY[0x1E695DEC8];
  protocolCopy = protocol;
  objectCopy2 = object;
  v9 = [v6 arrayWithObjects:&objectCopy count:1];

  v10 = [self proxyForObjects:v9 protocol:{protocolCopy, objectCopy, v13}];

  return v10;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (selector == a2)
  {
    v9 = 0;
  }

  else
  {
    protocol = [(MPProtocolProxy *)self protocol];
    types = protocol_getMethodDescription(protocol, selector, 0, 1).types;

    if (types || ([(MPProtocolProxy *)self protocol], v8 = objc_claimAutoreleasedReturnValue(), types = protocol_getMethodDescription(v8, selector, 1, 1).types, v8, types))
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

- (BOOL)respondsToSelector:(SEL)selector
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MPProtocolProxy *)self objects:0];
  allObjects = [v3 allObjects];

  v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        if (objc_opt_respondsToSelector())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)forwardInvocation:(id)invocation
{
  v17 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objects = [(MPProtocolProxy *)self objects];
  allObjects = [objects allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        [invocationCopy selector];
        if (objc_opt_respondsToSelector())
        {
          [invocationCopy invokeWithTarget:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end