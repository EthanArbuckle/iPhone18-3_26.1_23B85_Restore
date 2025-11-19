@interface _HKCFGNodeCache
- (_HKCFGNodeCache)init;
- (id)nodesForPosition:(unint64_t)a3 nonTerminal:(id)a4 withLengthAllowance:(unint64_t)a5;
- (void)cacheNodes:(id)a3 forPosition:(unint64_t)a4 nonTerminal:(id)a5 lengthAllowance:(unint64_t)a6;
@end

@implementation _HKCFGNodeCache

- (_HKCFGNodeCache)init
{
  v6.receiver = self;
  v6.super_class = _HKCFGNodeCache;
  v2 = [(_HKCFGNodeCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)nodesForPosition:(unint64_t)a3 nonTerminal:(id)a4 withLengthAllowance:(unint64_t)a5
{
  v8 = a4;
  cache = self->_cache;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v11 = [(NSMutableDictionary *)cache objectForKey:v10];

  if (v11)
  {
    v12 = [v11 objectForKey:v8];
    v13 = v12;
    if (v12 && ([v12 objectForKey:@"allowance"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "unsignedIntegerValue"), v14, v15 >= a5))
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

- (void)cacheNodes:(id)a3 forPosition:(unint64_t)a4 nonTerminal:(id)a5 lengthAllowance:(unint64_t)a6
{
  v21 = a5;
  cache = self->_cache;
  v11 = MEMORY[0x1E696AD98];
  v12 = a3;
  v13 = [v11 numberWithUnsignedInteger:a4];
  v14 = [(NSMutableDictionary *)cache objectForKey:v13];

  if (!v14)
  {
    v14 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v15 = self->_cache;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v15 setObject:v14 forKey:v16];
  }

  v17 = [v14 objectForKey:v21];
  if (!v17)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v17 forKey:v21];
  }

  v18 = [v17 objectForKey:@"allowance"];
  v19 = [v18 unsignedIntegerValue];

  if (v19 > a6)
  {
    [_HKCFGNodeCache cacheNodes:forPosition:nonTerminal:lengthAllowance:];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v17 setObject:v20 forKey:@"allowance"];

  [v17 setObject:v12 forKey:@"nodes"];
}

- (void)cacheNodes:forPosition:nonTerminal:lengthAllowance:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"_HKContextFreeGrammar.m" lineNumber:182 description:@"Attempt to cache nodes with length allowance < cached length allowance"];
}

@end