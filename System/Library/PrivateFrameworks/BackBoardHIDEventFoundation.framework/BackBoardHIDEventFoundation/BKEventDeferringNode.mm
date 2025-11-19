@interface BKEventDeferringNode
- (BOOL)isEqual:(id)a3;
- (id)succinctDescription;
- (uint64_t)_disconnectSubnode:(uint64_t)result;
- (uint64_t)connectSubnode:(uint64_t)result;
- (uint64_t)hasAncestorNode:(uint64_t)a1;
- (uint64_t)pid;
- (uint64_t)rule;
- (uint64_t)subnodes;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
- (void)disconnectFromGraph;
@end

@implementation BKEventDeferringNode

- (void)disconnectFromGraph
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (!*(a1 + 16))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't disconnect the root"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(sel_disconnectFromGraph);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v28 = v14;
        v29 = 2114;
        v30 = v16;
        v31 = 2048;
        v32 = a1;
        v33 = 2114;
        v34 = @"BKEventDeferringNode.m";
        v35 = 1024;
        v36 = 132;
        v37 = 2114;
        v38 = v13;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CC0228);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = [*(a1 + 24) copy];
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      do
      {
        v6 = 0;
        do
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [(BKEventDeferringNode *)*(*(&v21 + 1) + 8 * v6++) _disconnectSubnode:a1];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v4);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [*(a1 + 32) copy];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(BKEventDeferringNode *)a1 _disconnectSubnode:?];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDeferringRule *)self->_rule hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_pid];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__BKEventDeferringNode_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2784F7270;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

void __50__BKEventDeferringNode_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  if (v3)
  {
    v4 = [v3 identity];
    v5 = [v2 appendObject:v4 withName:0];

    v6 = *(a1 + 40);
    v7 = [*(*(a1 + 32) + 16) predicate];
    v8 = [v6 appendObject:v7 withName:0];

    [*(a1 + 40) appendRightArrow];
    v9 = *(a1 + 40);
    v10 = [*(*(a1 + 32) + 16) target];
    v11 = [v9 appendObject:v10 withName:0];

    if (([*(a1 + 40) hasSuccinctStyle] & 1) == 0)
    {
      v12 = *(a1 + 40);
      v14 = [*(*(a1 + 32) + 16) reason];
      v13 = [v12 appendObject:v14 withName:0];
    }
  }

  else
  {

    [v2 appendString:@"<root>" withName:0];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && *(v9 + 2) == self->_pid)
    {
      v8 = [v9[2] isEqual:self->_rule];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)succinctDescription
{
  v2 = MEMORY[0x277CF0C08];
  v3 = [MEMORY[0x277CF0C10] succinctStyle];
  v4 = [v2 descriptionForRootObject:a1 withStyle:v3];

  return v4;
}

- (uint64_t)connectSubnode:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 32);
    v4 = a2;
    [*(v2 + 32) insertObject:v4 atIndex:{objc_msgSend(v3, "indexOfObject:inSortedRange:options:usingComparator:", v4, 0, objc_msgSend(v3, "count"), 1024, &__block_literal_global)}];
    v5 = v4[3];

    return [v5 addObject:v2];
  }

  return result;
}

uint64_t __39__BKEventDeferringNode_connectSubnode___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (!a2)
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_4;
  }

  v6 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v4[2];
LABEL_4:
  v8 = v6;
  v9 = [v8 weightedDeferringRuleCompare:v7];

  return v9;
}

- (uint64_t)rule
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)_disconnectSubnode:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 32);
    v4 = a2;
    [v3 removeObject:v4];
    v5 = v4[3];

    return [v5 removeObject:v2];
  }

  return result;
}

- (uint64_t)hasAncestorNode:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    if ([*(a1 + 24) containsObject:v3])
    {
      v4 = 1;
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = *(a1 + 24);
      v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        v6 = *v11;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v11 != v6)
            {
              objc_enumerationMutation(v5);
            }

            if (([(BKEventDeferringNode *)*(*(&v10 + 1) + 8 * i) hasAncestorNode:v3]& 1) != 0)
            {
              v4 = 1;
              goto LABEL_14;
            }
          }

          v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)pid
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)subnodes
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

@end