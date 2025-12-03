@interface VNRequestSpecifierEquivalenciesRegistrar
- (BOOL)isRequestSpecifier:(id)specifier equivalentToRequestSpecifier:(id)requestSpecifier;
- (BOOL)registerRequestClass:(Class)class revision:(unint64_t)revision equivalencyToRevision:(unint64_t)toRevision error:(id *)error;
- (BOOL)registerRequestClassName:(id)name revision:(unint64_t)revision equivalencyToRequestClassName:(id)className revision:(unint64_t)a6 error:(id *)error;
- (BOOL)registerRequestClassName:(id)name revision:(unint64_t)revision equivalencyToRevision:(unint64_t)toRevision error:(id *)error;
- (BOOL)registerRequestSpecifier:(id)specifier equivalencyToRequestSpecifier:(id)requestSpecifier error:(id *)error;
- (VNRequestSpecifierEquivalenciesRegistrar)init;
- (id)equivalenciesForRequestSpecifier:(id)specifier;
@end

@implementation VNRequestSpecifierEquivalenciesRegistrar

- (BOOL)registerRequestSpecifier:(id)specifier equivalencyToRequestSpecifier:(id)requestSpecifier error:(id *)error
{
  specifierCopy = specifier;
  requestSpecifierCopy = requestSpecifier;
  if (([specifierCopy isEqual:requestSpecifierCopy] & 1) == 0)
  {
    v10 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:specifierCopy];
    v11 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:requestSpecifierCopy];
    v12 = v11;
    if (!(v10 | v11))
    {
      v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{specifierCopy, requestSpecifierCopy, 0}];
      [(NSMutableDictionary *)self->_equivalenciesLookup setObject:v13 forKeyedSubscript:specifierCopy];
      [(NSMutableDictionary *)self->_equivalenciesLookup setObject:v13 forKeyedSubscript:requestSpecifierCopy];

      goto LABEL_13;
    }

    if (v10)
    {
      if (v11)
      {
        if (v10 != v11)
        {
          if (error)
          {
            v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unbalanced equivalencies lookup:\n%@: %@\n%@: %@", specifierCopy, v10, requestSpecifierCopy, v11];
            *error = [VNError errorForInternalErrorWithLocalizedDescription:v14];

            LOBYTE(error) = 0;
          }

          goto LABEL_14;
        }

LABEL_13:
        LOBYTE(error) = 1;
LABEL_14:

        goto LABEL_15;
      }

      [v10 addObject:requestSpecifierCopy];
      equivalenciesLookup = self->_equivalenciesLookup;
      v16 = v10;
      v17 = requestSpecifierCopy;
    }

    else
    {
      [v11 addObject:specifierCopy];
      equivalenciesLookup = self->_equivalenciesLookup;
      v16 = v12;
      v17 = specifierCopy;
    }

    [(NSMutableDictionary *)equivalenciesLookup setObject:v16 forKeyedSubscript:v17];
    goto LABEL_13;
  }

  LOBYTE(error) = 1;
LABEL_15:

  return error;
}

- (BOOL)registerRequestClassName:(id)name revision:(unint64_t)revision equivalencyToRequestClassName:(id)className revision:(unint64_t)a6 error:(id *)error
{
  classNameCopy = className;
  v13 = [VNRequestSpecifier specifierForRequestClassName:name revision:revision error:error];
  if (v13)
  {
    v14 = [VNRequestSpecifier specifierForRequestClassName:classNameCopy revision:a6 error:error];
    if (v14)
    {
      v15 = [(VNRequestSpecifierEquivalenciesRegistrar *)self registerRequestSpecifier:v13 equivalencyToRequestSpecifier:v14 error:error];
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

- (BOOL)registerRequestClassName:(id)name revision:(unint64_t)revision equivalencyToRevision:(unint64_t)toRevision error:(id *)error
{
  nameCopy = name;
  v11 = [VNRequestSpecifier specifierForRequestClassName:nameCopy revision:revision error:error];
  if (v11)
  {
    v12 = [VNRequestSpecifier specifierForRequestClassName:nameCopy revision:toRevision error:error];
    if (v12)
    {
      v13 = [(VNRequestSpecifierEquivalenciesRegistrar *)self registerRequestSpecifier:v11 equivalencyToRequestSpecifier:v12 error:error];
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

- (BOOL)registerRequestClass:(Class)class revision:(unint64_t)revision equivalencyToRevision:(unint64_t)toRevision error:(id *)error
{
  v10 = VNRequestClassFromClientSubclass(class);
  v11 = [VNRequestSpecifier specifierForRequestClass:v10 revision:revision error:error];
  if (v11)
  {
    v12 = [VNRequestSpecifier specifierForRequestClass:v10 revision:toRevision error:error];
    if (v12)
    {
      v13 = [(VNRequestSpecifierEquivalenciesRegistrar *)self registerRequestSpecifier:v11 equivalencyToRequestSpecifier:v12 error:error];
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

- (id)equivalenciesForRequestSpecifier:(id)specifier
{
  v3 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:specifier];
  v4 = v3;
  if (v3)
  {
    allObjects = [v3 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

- (BOOL)isRequestSpecifier:(id)specifier equivalentToRequestSpecifier:(id)requestSpecifier
{
  specifierCopy = specifier;
  requestSpecifierCopy = requestSpecifier;
  if ([specifierCopy isEqual:requestSpecifierCopy])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:specifierCopy];
    v10 = v9;
    if (v9)
    {
      v8 = [v9 containsObject:requestSpecifierCopy];
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_equivalenciesLookup objectForKeyedSubscript:requestSpecifierCopy];
      v12 = v11;
      if (v11)
      {
        v8 = [v11 containsObject:specifierCopy];
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