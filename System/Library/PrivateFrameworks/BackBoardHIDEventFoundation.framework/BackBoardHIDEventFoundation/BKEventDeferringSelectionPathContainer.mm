@interface BKEventDeferringSelectionPathContainer
- (BOOL)_removeNode:(id)a3;
- (id)_keyForNode:(id)a3;
- (id)constraintsForNode:(uint64_t)a1;
- (id)initWithPathIdentifier:(id *)a1;
- (id)modalitiesForNode:(uint64_t)a1;
- (uint64_t)containsNode:(uint64_t)result;
@end

@implementation BKEventDeferringSelectionPathContainer

- (id)_keyForNode:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 identity];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"<root>";
  }

  v7 = v6;

  return v6;
}

- (BOOL)_removeNode:(id)a3
{
  if (a3)
  {
    v4 = *(a3 + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 identity];

  if (v6)
  {
    [(NSMutableSet *)self->_includedIdentities removeObject:v6];
  }

  return v6 != 0;
}

- (id)initWithPathIdentifier:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = BKEventDeferringSelectionPathContainer;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
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
    v5 = [v4 identity];
    v6 = [v2 containsObject:v5];

    return v6;
  }

  return result;
}

- (id)constraintsForNode:(uint64_t)a1
{
  if (a1)
  {
    v2 = [*(a1 + 32) objectForKey:a2];
    v3 = [v2 bs_map:&__block_literal_global_3029];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)modalitiesForNode:(uint64_t)a1
{
  if (a1)
  {
    v2 = [*(a1 + 40) objectForKey:a2];
    v3 = [v2 bs_map:&__block_literal_global_6_3032];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end