@interface NSSQLFetchDictionaryCountIntermediate
- (NSSQLFetchDictionaryCountIntermediate)initWithFetchIntermediate:(id)intermediate inScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLFetchDictionaryCountIntermediate

- (void)dealloc
{
  self->_realFetch = 0;
  v3.receiver = self;
  v3.super_class = NSSQLFetchDictionaryCountIntermediate;
  [(NSSQLStatementIntermediate *)&v3 dealloc];
}

- (NSSQLFetchDictionaryCountIntermediate)initWithFetchIntermediate:(id)intermediate inScope:(id)scope
{
  v7.receiver = self;
  v7.super_class = NSSQLFetchDictionaryCountIntermediate;
  v5 = [(NSSQLIntermediate *)&v7 initWithScope:scope];
  if (v5)
  {
    v5->_realFetch = intermediate;
  }

  return v5;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v6 = [(NSSQLFetchIntermediate *)self->_realFetch generateSQLStringInContext:context];
  if (!v6)
  {
    if (![context objectForKey:@"NSUnderlyingException"])
    {
      [context setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unable to generate SQL for fetch", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(context, "objectForKey:", @"outerFetch", @"Bad request", @"NSUnderlyingException"}];
    }

    return 0;
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT COUNT(*) from (%@)", v6];

  return v8;
}

@end