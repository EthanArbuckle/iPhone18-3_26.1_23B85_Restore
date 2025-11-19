@interface NSError
+ (id)errorUsingError:(id)a3 withUnderyingError:(id)a4;
@end

@implementation NSError

+ (id)errorUsingError:(id)a3 withUnderyingError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 userInfo];
      if (v8)
      {
        v9 = [v5 userInfo];
        v10 = [NSMutableDictionary dictionaryWithDictionary:v9];
      }

      else
      {
        v10 = objc_opt_new();
      }

      [v10 setObject:v7 forKeyedSubscript:NSUnderlyingErrorKey];
      v13 = [v5 userInfo];
      v14 = [v13 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      if (v14)
      {
        v15 = v14;
        v16 = [v7 userInfo];
        v17 = [v16 objectForKeyedSubscript:NSLocalizedDescriptionKey];

        if (v17)
        {
          v18 = [v5 userInfo];
          v19 = [v18 objectForKeyedSubscript:NSLocalizedDescriptionKey];
          v20 = [v7 userInfo];
          v21 = [v20 objectForKeyedSubscript:NSLocalizedDescriptionKey];
          v22 = [NSString stringWithFormat:@"%@ (due '%@')", v19, v21];
          [v10 setObject:v22 forKeyedSubscript:NSLocalizedDescriptionKey];

          goto LABEL_16;
        }
      }

      else
      {
      }

      v23 = [v7 userInfo];
      v24 = [v23 objectForKeyedSubscript:NSLocalizedDescriptionKey];

      if (!v24)
      {
LABEL_17:
        v25 = [v5 domain];
        v12 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v25, [v5 code], v10);

        goto LABEL_19;
      }

      v18 = [v7 userInfo];
      v19 = [v18 objectForKeyedSubscript:NSLocalizedDescriptionKey];
      v20 = [NSString stringWithFormat:@"due '%@'", v19];
      [v10 setObject:v20 forKeyedSubscript:NSLocalizedDescriptionKey];
LABEL_16:

      goto LABEL_17;
    }

    v11 = v5;
LABEL_8:
    v12 = v11;
    goto LABEL_19;
  }

  if (v6)
  {
    v11 = v6;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

@end