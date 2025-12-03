@interface BKEventDeferringSelectionPathContainer
- (BOOL)_removeNode:(id)node;
- (id)_keyForNode:(id)node;
- (id)constraintsForNode:(uint64_t)node;
- (id)initWithPathIdentifier:(id *)identifier;
- (id)modalitiesForNode:(uint64_t)node;
- (uint64_t)containsNode:(uint64_t)result;
@end

@implementation BKEventDeferringSelectionPathContainer

- (id)_keyForNode:(id)node
{
  if (node)
  {
    v3 = *(node + 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  identity = [v4 identity];

  if (identity)
  {
    v6 = identity;
  }

  else
  {
    v6 = @"<root>";
  }

  v7 = v6;

  return v6;
}

- (BOOL)_removeNode:(id)node
{
  if (node)
  {
    v4 = *(node + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  identity = [v5 identity];

  if (identity)
  {
    [(NSMutableSet *)self->_includedIdentities removeObject:identity];
  }

  return identity != 0;
}

- (id)initWithPathIdentifier:(id *)identifier
{
  v4 = a2;
  if (identifier)
  {
    v7.receiver = identifier;
    v7.super_class = BKEventDeferringSelectionPathContainer;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    identifier = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return identifier;
}

- (uint64_t)containsNode:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 16);
    if (a2)
    {
      v3 = *(a2 + 16);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    identity = [v4 identity];
    v6 = [v2 containsObject:identity];

    return v6;
  }

  return result;
}

- (id)constraintsForNode:(uint64_t)node
{
  if (node)
  {
    v2 = [*(node + 32) objectForKey:a2];
    v3 = [v2 bs_map:&__block_literal_global_3029];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)modalitiesForNode:(uint64_t)node
{
  if (node)
  {
    v2 = [*(node + 40) objectForKey:a2];
    v3 = [v2 bs_map:&__block_literal_global_6_3032];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end