@interface _AXAssertionServer
- (_AXAssertionServer)init;
- (id)clientsHoldingAssertionOfType:(id)type;
- (id)description;
- (void)addHeldAssertionOfType:(id)type byClient:(id)client;
- (void)removeHeldAssertionOfType:(id)type byClient:(id)client;
@end

@implementation _AXAssertionServer

- (_AXAssertionServer)init
{
  v5.receiver = self;
  v5.super_class = _AXAssertionServer;
  v2 = [(_AXAssertionServer *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(_AXAssertionServer *)v2 setHeldAssertionMap:dictionary];
  }

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"_AXAssertionServer:<%p> Held Assertions:\n", self];
  heldAssertionMap = [(_AXAssertionServer *)self heldAssertionMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33___AXAssertionServer_description__block_invoke;
  v7[3] = &unk_1E71EAE80;
  v5 = v3;
  v8 = v5;
  [heldAssertionMap enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)addHeldAssertionOfType:(id)type byClient:(id)client
{
  typeCopy = type;
  clientCopy = client;
  heldAssertionMap = [(_AXAssertionServer *)self heldAssertionMap];
  v8 = [heldAssertionMap objectForKey:typeCopy];

  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    heldAssertionMap2 = [(_AXAssertionServer *)self heldAssertionMap];
    [heldAssertionMap2 setObject:v9 forKey:typeCopy];
  }

  if ([v9 containsObject:clientCopy])
  {
    v16 = typeCopy;
    v17 = v9;
    v14 = @"Trying to add assertion holder ID:(%@) with type:(%@), but that ID is already in the holders list: (%@). Something is out of wack";
    v15 = clientCopy;
    LOBYTE(v13) = 1;
    _AXLogWithFacility();
  }

  [v9 addObject:{clientCopy, v13, v14, v15, v16, v17}];
  if (!v8)
  {
    assertionWasAcquiredHandler = [(_AXAssertionServer *)self assertionWasAcquiredHandler];

    if (assertionWasAcquiredHandler)
    {
      assertionWasAcquiredHandler2 = [(_AXAssertionServer *)self assertionWasAcquiredHandler];
      (assertionWasAcquiredHandler2)[2](assertionWasAcquiredHandler2, typeCopy);
    }
  }
}

- (void)removeHeldAssertionOfType:(id)type byClient:(id)client
{
  typeCopy = type;
  clientCopy = client;
  heldAssertionMap = [(_AXAssertionServer *)self heldAssertionMap];
  v8 = [heldAssertionMap objectForKey:typeCopy];

  if (([v8 containsObject:clientCopy] & 1) == 0)
  {
    _AXLogWithFacility();
    goto LABEL_6;
  }

  [v8 removeObject:clientCopy];

  if (![v8 count])
  {
    heldAssertionMap2 = [(_AXAssertionServer *)self heldAssertionMap];
    [heldAssertionMap2 removeObjectForKey:typeCopy];

    assertionWasReleasedHandler = [(_AXAssertionServer *)self assertionWasReleasedHandler];

    if (assertionWasReleasedHandler)
    {
      clientCopy = [(_AXAssertionServer *)self assertionWasReleasedHandler];
      (*(clientCopy + 2))(clientCopy, typeCopy);
LABEL_6:
    }
  }
}

- (id)clientsHoldingAssertionOfType:(id)type
{
  typeCopy = type;
  heldAssertionMap = [(_AXAssertionServer *)self heldAssertionMap];
  v6 = [heldAssertionMap objectForKey:typeCopy];

  allObjects = [v6 allObjects];

  return allObjects;
}

@end