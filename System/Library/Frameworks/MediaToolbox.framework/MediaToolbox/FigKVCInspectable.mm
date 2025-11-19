@interface FigKVCInspectable
- (BOOL)validateValue:(id *)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)validateValue:(id *)a3 forKeyPath:(id)a4 error:(id *)a5;
- (id)valueForUndefinedKey:(id)a3;
@end

@implementation FigKVCInspectable

- (id)valueForUndefinedKey:(id)a3
{
  v3 = objc_alloc_init(FigUndefinedKeyValueSentry);

  return v3;
}

- (BOOL)validateValue:(id *)a3 forKey:(id)a4 error:(id *)a5
{
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 0;
    }
  }

  v10.receiver = self;
  v10.super_class = FigKVCInspectable;
  return [(FigKVCInspectable *)&v10 validateValue:a3 forKey:a4 error:a5];
}

- (BOOL)validateValue:(id *)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = *a3;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            return 0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        result = 1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = FigKVCInspectable;
    return [(FigKVCInspectable *)&v15 validateValue:a3 forKeyPath:a4 error:a5];
  }

  return result;
}

@end