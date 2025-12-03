@interface NSSQLFetchCountIntermediate
- (id)generateSQLStringInContext:(id)context;
@end

@implementation NSSQLFetchCountIntermediate

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  if (([objc_msgSend(context objectForKey:{@"storeRequest", "fetchLimit"}] - 10001) > 0xFFFFFFFFFFFFD8EFLL)
  {
    v15 = objc_alloc_init(NSSQLColumn);
    [(NSSQLColumn *)v15 _setColumnName:?];
    if (v15)
    {
      *&v15->super._flags |= 1u;
    }

    v21.receiver = self;
    v21.super_class = NSSQLFetchCountIntermediate;
    selectIntermediate = [(NSSQLFetchIntermediate *)&v21 selectIntermediate];
    if (selectIntermediate)
    {
      selectIntermediate[48] = 1;
    }

    v20.receiver = self;
    v20.super_class = NSSQLFetchCountIntermediate;
    selectIntermediate2 = [(NSSQLFetchIntermediate *)&v20 selectIntermediate];
    -[NSSQLSelectIntermediate setFetchColumns:](selectIntermediate2, [MEMORY[0x1E695DEC8] arrayWithObject:v15]);

    v19.receiver = self;
    v19.super_class = NSSQLFetchCountIntermediate;
    v18 = [(NSSQLFetchIntermediate *)&v19 generateSQLStringInContext:context];
    if (![context objectForKey:@"NSUnderlyingException"])
    {
      v5 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"SELECT COUNT(*) FROM (");
      [v5 appendString:v18];
      [v5 appendString:@""]);

      return v5;
    }

    return 0;
  }

  [(NSSQLStatementIntermediate *)self setLimitIntermediate:?];
  v7 = objc_alloc_init(NSSQLColumn);
  [(NSSQLColumn *)v7 _setColumnName:?];
  if (v7)
  {
    *&v7->super._flags |= 1u;
  }

  selectIntermediate3 = [(NSSQLFetchIntermediate *)self selectIntermediate];
  -[NSSQLSelectIntermediate setFetchColumns:](selectIntermediate3, [MEMORY[0x1E695DEC8] arrayWithObject:v7]);

  selectIntermediate4 = [(NSSQLFetchIntermediate *)self selectIntermediate];
  if (selectIntermediate4)
  {
    selectIntermediate4[48] = 1;
  }

  selectIntermediate5 = [(NSSQLFetchIntermediate *)self selectIntermediate];
  if (selectIntermediate5)
  {
    selectIntermediate5[64] = 1;
  }

  v22.receiver = self;
  v22.super_class = NSSQLFetchCountIntermediate;
  v5 = [(NSSQLFetchIntermediate *)&v22 generateSQLStringInContext:context];
  v11 = [v5 componentsSeparatedByString:@" "];
  if ([v11 count] >= 6 && objc_msgSend(objc_msgSend(v11, "objectAtIndex:", 0), "isEqualToString:", @"SELECT") && objc_msgSend(objc_msgSend(v11, "objectAtIndex:", 1), "isEqualToString:", @"COUNT("))
  {
    v12 = [objc_msgSend(v11 objectAtIndex:{2), "isEqualToString:", @"DISTINCT"}] ? 3 : 2;
    if ([objc_msgSend(v11 objectAtIndex:{v12), "isEqualToString:", @"t0.Z_PK"}]))
    {
      if ([objc_msgSend(v11 objectAtIndex:{v12 + 1), "isEqualToString:", @"FROM"}])
      {
        v13 = [v11 objectAtIndex:v12 + 2];
        if ([objc_msgSend(v11 objectAtIndex:{v12 + 3), "isEqualToString:", @"t0"}])
        {
          v14 = v12 | 4;
          if (v14 >= [v11 count])
          {
LABEL_23:

            return [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT COUNT(*) FROM %@", v13];
          }

          else
          {
            while (([objc_msgSend(v11 objectAtIndex:{v14), "isEqualToString:", &stru_1EF3F1768}] & 1) != 0)
            {
              if (++v14 >= [v11 count])
              {
                goto LABEL_23;
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

@end