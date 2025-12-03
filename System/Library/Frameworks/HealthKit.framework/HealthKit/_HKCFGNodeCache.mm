@interface _HKCFGNodeCache
- (_HKCFGNodeCache)init;
- (id)nodesForPosition:(unint64_t)position nonTerminal:(id)terminal withLengthAllowance:(unint64_t)allowance;
- (void)cacheNodes:(id)nodes forPosition:(unint64_t)position nonTerminal:(id)terminal lengthAllowance:(unint64_t)allowance;
@end

@implementation _HKCFGNodeCache

- (_HKCFGNodeCache)init
{
  v6.receiver = self;
  v6.super_class = _HKCFGNodeCache;
  v2 = [(_HKCFGNodeCache *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cache = v2->_cache;
    v2->_cache = dictionary;
  }

  return v2;
}

- (id)nodesForPosition:(unint64_t)position nonTerminal:(id)terminal withLengthAllowance:(unint64_t)allowance
{
  terminalCopy = terminal;
  cache = self->_cache;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:position];
  v11 = [(NSMutableDictionary *)cache objectForKey:v10];

  if (v11)
  {
    v12 = [v11 objectForKey:terminalCopy];
    v13 = v12;
    if (v12 && ([v12 objectForKey:@"allowance"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedIntegerValue"), v14, v15 >= allowance))
    {
      v16 = [v13 objectForKey:@"nodes"];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)cacheNodes:(id)nodes forPosition:(unint64_t)position nonTerminal:(id)terminal lengthAllowance:(unint64_t)allowance
{
  terminalCopy = terminal;
  cache = self->_cache;
  v11 = MEMORY[0x1E696AD98];
  nodesCopy = nodes;
  v13 = [v11 numberWithUnsignedInteger:position];
  strongToStrongObjectsMapTable = [(NSMutableDictionary *)cache objectForKey:v13];

  if (!strongToStrongObjectsMapTable)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v15 = self->_cache;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:position];
    [(NSMutableDictionary *)v15 setObject:strongToStrongObjectsMapTable forKey:v16];
  }

  dictionary = [strongToStrongObjectsMapTable objectForKey:terminalCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [strongToStrongObjectsMapTable setObject:dictionary forKey:terminalCopy];
  }

  v18 = [dictionary objectForKey:@"allowance"];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  if (unsignedIntegerValue > allowance)
  {
    [_HKCFGNodeCache cacheNodes:forPosition:nonTerminal:lengthAllowance:];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:allowance];
  [dictionary setObject:v20 forKey:@"allowance"];

  [dictionary setObject:nodesCopy forKey:@"nodes"];
}

- (void)cacheNodes:forPosition:nonTerminal:lengthAllowance:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"_HKContextFreeGrammar.m" lineNumber:182 description:@"Attempt to cache nodes with length allowance < cached length allowance"];
}

@end