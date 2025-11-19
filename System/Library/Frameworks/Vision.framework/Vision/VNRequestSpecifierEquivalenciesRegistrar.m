@interface VNRequestSpecifierEquivalenciesRegistrar
- (BOOL)isRequestSpecifier:(id)a3 equivalentToRequestSpecifier:(id)a4;
- (BOOL)registerRequestClass:(Class)a3 revision:(unint64_t)a4 equivalencyToRevision:(unint64_t)a5 error:(id *)a6;
- (BOOL)registerRequestClassName:(id)a3 revision:(unint64_t)a4 equivalencyToRequestClassName:(id)a5 revision:(unint64_t)a6 error:(id *)a7;
- (BOOL)registerRequestClassName:(id)a3 revision:(unint64_t)a4 equivalencyToRevision:(unint64_t)a5 error:(id *)a6;
- (BOOL)registerRequestSpecifier:(id)a3 equivalencyToRequestSpecifier:(id)a4 error:(id *)a5;
- (VNRequestSpecifierEquivalenciesRegistrar)init;
- (id)equivalenciesForRequestSpecifier:(id)a3;
@end

@implementation VNRequestSpecifierEquivalenciesRegistrar

- (BOOL)registerRequestSpecifier:(id)a3 equivalencyToRequestSpecifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (([v8 isEqual:v9] & 1) == 0)
  {
    v10 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:v8];
    v11 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:v9];
    v12 = v11;
    if (!(v10 | v11))
    {
      v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v8, v9, 0}];
      [(NSMutableDictionary *)self->_equivalenciesLookup setObject:v13 forKeyedSubscript:v8];
      [(NSMutableDictionary *)self->_equivalenciesLookup setObject:v13 forKeyedSubscript:v9];

      goto LABEL_13;
    }

    if (v10)
    {
      if (v11)
      {
        if (v10 != v11)
        {
          if (a5)
          {
            v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unbalanced equivalencies lookup:\n%@: %@\n%@: %@", v8, v10, v9, v11];
            *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v14];

            LOBYTE(a5) = 0;
          }

          goto LABEL_14;
        }

LABEL_13:
        LOBYTE(a5) = 1;
LABEL_14:

        goto LABEL_15;
      }

      [v10 addObject:v9];
      equivalenciesLookup = self->_equivalenciesLookup;
      v16 = v10;
      v17 = v9;
    }

    else
    {
      [v11 addObject:v8];
      equivalenciesLookup = self->_equivalenciesLookup;
      v16 = v12;
      v17 = v8;
    }

    [(NSMutableDictionary *)equivalenciesLookup setObject:v16 forKeyedSubscript:v17];
    goto LABEL_13;
  }

  LOBYTE(a5) = 1;
LABEL_15:

  return a5;
}

- (BOOL)registerRequestClassName:(id)a3 revision:(unint64_t)a4 equivalencyToRequestClassName:(id)a5 revision:(unint64_t)a6 error:(id *)a7
{
  v12 = a5;
  v13 = [VNRequestSpecifier specifierForRequestClassName:a3 revision:a4 error:a7];
  if (v13)
  {
    v14 = [VNRequestSpecifier specifierForRequestClassName:v12 revision:a6 error:a7];
    if (v14)
    {
      v15 = [(VNRequestSpecifierEquivalenciesRegistrar *)self registerRequestSpecifier:v13 equivalencyToRequestSpecifier:v14 error:a7];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)registerRequestClassName:(id)a3 revision:(unint64_t)a4 equivalencyToRevision:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [VNRequestSpecifier specifierForRequestClassName:v10 revision:a4 error:a6];
  if (v11)
  {
    v12 = [VNRequestSpecifier specifierForRequestClassName:v10 revision:a5 error:a6];
    if (v12)
    {
      v13 = [(VNRequestSpecifierEquivalenciesRegistrar *)self registerRequestSpecifier:v11 equivalencyToRequestSpecifier:v12 error:a6];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)registerRequestClass:(Class)a3 revision:(unint64_t)a4 equivalencyToRevision:(unint64_t)a5 error:(id *)a6
{
  v10 = VNRequestClassFromClientSubclass(a3);
  v11 = [VNRequestSpecifier specifierForRequestClass:v10 revision:a4 error:a6];
  if (v11)
  {
    v12 = [VNRequestSpecifier specifierForRequestClass:v10 revision:a5 error:a6];
    if (v12)
    {
      v13 = [(VNRequestSpecifierEquivalenciesRegistrar *)self registerRequestSpecifier:v11 equivalencyToRequestSpecifier:v12 error:a6];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)equivalenciesForRequestSpecifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allObjects];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (BOOL)isRequestSpecifier:(id)a3 equivalentToRequestSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:v6];
    v10 = v9;
    if (v9)
    {
      v8 = [v9 containsObject:v7];
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:v7];
      v12 = v11;
      if (v11)
      {
        v8 = [v11 containsObject:v6];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (VNRequestSpecifierEquivalenciesRegistrar)init
{
  v6.receiver = self;
  v6.super_class = VNRequestSpecifierEquivalenciesRegistrar;
  v2 = [(VNRequestSpecifierEquivalenciesRegistrar *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    equivalenciesLookup = v2->_equivalenciesLookup;
    v2->_equivalenciesLookup = v3;
  }

  return v2;
}

@end