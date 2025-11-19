@interface NSDictionary
- (BOOL)ds_BOOLFromKey:(id)a3 defaultValue:(BOOL)a4 failed:(BOOL *)a5;
- (id)ds_numberFromKey:(id)a3 defaultValue:(id)a4 failed:(BOOL *)a5;
- (id)ds_numberFromKey:(id)a3 lowerBound:(id)a4 upperBound:(id)a5 defaultValue:(id)a6 failed:(BOOL *)a7;
@end

@implementation NSDictionary

- (id)ds_numberFromKey:(id)a3 lowerBound:(id)a4 upperBound:(id)a5 defaultValue:(id)a6 failed:(BOOL *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(NSDictionary *)self objectForKey:a3];
  if (v15)
  {
    v16 = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v17 = [v16 compare:v13], objc_msgSend(v16, "compare:", v12) <= 1) && v17 + 1 < 2)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;

      if (a7)
      {
        *a7 = 1;
      }
    }
  }

  else
  {
    v18 = v14;
  }

  return v18;
}

- (id)ds_numberFromKey:(id)a3 defaultValue:(id)a4 failed:(BOOL *)a5
{
  v8 = a4;
  v9 = [(NSDictionary *)self objectForKey:a3];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;

      if (a5)
      {
        *a5 = 1;
      }
    }
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (BOOL)ds_BOOLFromKey:(id)a3 defaultValue:(BOOL)a4 failed:(BOOL *)a5
{
  v7 = [(NSDictionary *)self objectForKey:a3];
  if (!v7)
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    a4 = [v7 BOOLValue];
LABEL_4:

    return a4;
  }

  if (!a5)
  {
    goto LABEL_4;
  }

  *a5 = 1;

  return a4;
}

@end