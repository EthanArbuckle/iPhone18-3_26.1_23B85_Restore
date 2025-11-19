@interface NSSQLLimitIntermediate
- (NSSQLLimitIntermediate)initWithLimit:(unint64_t)a3 inScope:(id)a4;
- (id)generateSQLStringInContext:(id)a3;
@end

@implementation NSSQLLimitIntermediate

- (NSSQLLimitIntermediate)initWithLimit:(unint64_t)a3 inScope:(id)a4
{
  v6.receiver = self;
  v6.super_class = NSSQLLimitIntermediate;
  result = [(NSSQLIntermediate *)&v6 initWithScope:a4];
  if (result)
  {
    result->_limit = a3;
  }

  return result;
}

- (id)generateSQLStringInContext:(id)a3
{
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v6 = [a3 valueForKey:@"substitutionVariables"];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 valueForKey:@"FETCH_REQUEST_LIMIT_SUBSTITUTION"];
    if (v8)
    {
      v9 = v8;
      if ([v8 expressionType])
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v12 = @"Unable to generate SQL - non-constant expression for limit substitution.";
      }

      else
      {
        v18 = [v9 constantValue];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [objc_msgSend(a3 valueForKey:{@"bindVars", "count"}];
          v20 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v18 inContext:a3];
          if ([objc_msgSend(a3 valueForKey:{@"bindVars", "count"}] - v19 < 2)
          {
            v21 = [a3 valueForKey:@"subOrder"];
            [v21 addObject:@"FETCH_REQUEST_LIMIT_SUBSTITUTION"];
            [v21 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v19)}];
            v22 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" LIMIT %@", v20];

            return v22;
          }

          if (![a3 valueForKey:@"NSUnderlyingException"])
          {
            [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Invalid variable substitution - multiple values not supported for limit %@", v18), 0), @"NSUnderlyingException"}];
          }

          return 0;
        }

        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v12 = @"Unable to generate SQL - non-NSNumber value for limit substitution.";
      }

      [a3 setValue:objc_msgSend(v10 forKey:{"exceptionWithName:reason:userInfo:", v11, v12, v7), @"NSUnderlyingException"}];
      return 0;
    }
  }

  limit = self->_limit;
  if (limit)
  {
    if ((limit & 0x8000000000000000) == 0)
    {
      return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" LIMIT %lu", self->_limit];
    }

    v14 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v25 = 0;
          v16 = "CoreData: error: CoreData: warning: Fetch Limit is too large, please set it to a value less than or equal to NSIntegerMax\n";
          v17 = &v25;
LABEL_33:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v16, v17, 2u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v16 = "CoreData: warning: CoreData: warning: Fetch Limit is too large, please set it to a value less than or equal to NSIntegerMax\n";
          v17 = buf;
          goto LABEL_33;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    _NSCoreDataLog_console(v23, "CoreData: warning: Fetch Limit is too large, please set it to a value less than or equal to NSIntegerMax");
    objc_autoreleasePoolPop(v14);
    return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" LIMIT %lu", self->_limit];
  }

  return [@" LIMIT -1" mutableCopy];
}

@end