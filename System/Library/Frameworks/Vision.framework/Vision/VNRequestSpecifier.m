@interface VNRequestSpecifier
+ (id)_modelEquivalenciesRegistrar;
+ (id)allAvailableRequestClassNames;
+ (id)availablePrivateRequestClassNames;
+ (id)availableRequestClassNames;
+ (id)specifierForRequest:(id)a3;
+ (id)specifierForRequestClass:(Class)a3 revision:(unint64_t)a4 error:(id *)a5;
+ (id)specifierForRequestClassCode:(unsigned int *)a3 revision:(unint64_t)a4 error:(id *)a5;
+ (id)specifierForRequestClassName:(id)a3 revision:(unint64_t)a4 error:(id *)a5;
- (BOOL)hasModelEquivalencyToRequestSpecifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrivate;
- (BOOL)isPublic;
- (BOOL)observationProvidesBoundsNormalizedToROI;
- (BOOL)representsSupportedRequestAndReturnError:(id *)a3;
- (BOOL)specifiesAnyRequestClass:(Class)a3;
- (BOOL)specifiesAnyRequestClassName:(id)a3;
- (BOOL)specifiesRequestClass:(Class)a3 revision:(unint64_t)a4;
- (BOOL)specifiesRequestClass:(Class)a3 withAnyRevision:(unint64_t)a4;
- (BOOL)specifiesRequestClassName:(id)a3;
- (BOOL)specifiesRequestClassName:(id)a3 revision:(unint64_t)a4;
- (BOOL)specifiesRequestClassName:(id)a3 withAnyRevision:(unint64_t)a4;
- (Class)requestClassAndReturnError:(id *)a3;
- (NSArray)allModelEquivalents;
- (VNRequestSpecifier)initWithCoder:(id)a3;
- (VNRequestSpecifier)initWithRequestClass:(Class)a3 name:(id)a4 code:(unsigned int)a5 revision:(unint64_t)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRequestSpecifier

- (unint64_t)hash
{
  v3 = [(VNRequestSpecifier *)self requestClassName];
  v4 = [v3 hash];

  return [(VNRequestSpecifier *)self requestRevision]^ __ROR8__(v4, 51);
}

- (Class)requestClassAndReturnError:(id *)a3
{
  cachedRequestClass = self->_cachedRequestClass;
  if (cachedRequestClass)
  {
    v4 = cachedRequestClass;
  }

  else if (a3)
  {
    v6 = [(VNRequestSpecifier *)self requestClassName];
    *a3 = [VNError errorForUnsupportedRequestClassName:v6];
  }

  return cachedRequestClass;
}

- (VNRequestSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"code"];
  v13 = 0;
  v6 = [VNClassRegistrar classNameForClassCode:v5 error:&v13];
  v7 = v13;
  if (v6)
  {
    v12 = v7;
    v8 = [VNClassRegistrar validateRequestClassName:v6 error:&v12];
    v9 = v12;

    if (v8)
    {
      self = -[VNRequestSpecifier initWithRequestClass:name:code:revision:](self, "initWithRequestClass:name:code:revision:", NSClassFromString(v6), v6, v5, [v4 decodeIntegerForKey:@"rev"]);
      v7 = v9;
      v10 = self;
    }

    else
    {
      [v4 failWithError:v9];
      v10 = 0;
      v7 = v9;
    }
  }

  else
  {
    [v4 failWithError:v7];
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  requestClassCode = self->_requestClassCode;
  v5 = a3;
  [v5 encodeInt32:requestClassCode forKey:@"code"];
  [v5 encodeInteger:self->_requestRevision forKey:@"rev"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNRequestSpecifier *)self requestRevision];
      if (v6 == [(VNRequestSpecifier *)v5 requestRevision])
      {
        v7 = [(VNRequestSpecifier *)self requestClassCode];
        v8 = v7 == [(VNRequestSpecifier *)v5 requestClassCode];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(VNRequestSpecifier *)self requestRevision];
  v5 = [(VNRequestSpecifier *)self requestClassAndReturnError:0];
  if (v5)
  {
    v6 = v5;
    v7 = VNRequestRevisionString(v5, v4);
    if (v7)
    {
      v8 = v7;
      [v3 appendString:v7];
    }

    else
    {
      v11 = NSStringFromClass(v6);
      [v3 appendString:v11];

      v8 = 0;
    }
  }

  else
  {
    v9 = [(VNRequestSpecifier *)self requestClassName];
    v8 = v9;
    v10 = "";
    if (v4 > 0xDECAEFFF)
    {
      v10 = "private ";
    }

    [v3 appendFormat:@"unavailable %@, %srevision %lu", v9, v10, v4];
  }

  return v3;
}

- (BOOL)isPrivate
{
  if ([(VNRequestSpecifier *)self isPrivateRevision])
  {
    return 1;
  }

  return [(VNRequestSpecifier *)self isPrivateRequestClass];
}

- (BOOL)isPublic
{
  v3 = [(VNRequestSpecifier *)self isPublicRevision];
  if (v3)
  {

    LOBYTE(v3) = [(VNRequestSpecifier *)self isPublicRequestClass];
  }

  return v3;
}

- (BOOL)observationProvidesBoundsNormalizedToROI
{
  v3 = [(VNRequestSpecifier *)self requestClassCode];
  v4 = [(VNRequestSpecifier *)self requestRevision];

  return [VNClassRegistrar observationBoundsAreNormalizedToROIForRequestClassCode:v3 revision:v4];
}

- (BOOL)specifiesAnyRequestClassName:(id)a3
{
  v4 = a3;
  v5 = [(VNRequestSpecifier *)self requestClassName];
  v6 = v4;
  v7 = v6;
  v13 = &v14;
  if (v6)
  {
    v8 = v6;
    do
    {
      v9 = [v5 isEqualToString:v8];
      if (v9)
      {
        break;
      }

      v10 = v13++;
      v11 = *v10;

      v8 = v11;
    }

    while (v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)specifiesRequestClassName:(id)a3
{
  v4 = a3;
  v5 = [(VNRequestSpecifier *)self requestClassName];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)specifiesAnyRequestClass:(Class)a3
{
  v4 = [(VNRequestSpecifier *)self requestClassAndReturnError:0];
  if (!v4)
  {
    return 0;
  }

  v10 = &v11;
  v5 = a3 != 0;
  if (v4 != a3 && a3)
  {
    do
    {
      v6 = v10++;
      v7 = *v6;
      v5 = *v6 != 0;
    }

    while (v7 != v4 && v7 != 0);
  }

  return v5;
}

- (BOOL)specifiesRequestClassName:(id)a3 withAnyRevision:(unint64_t)a4
{
  v6 = a3;
  v7 = [(VNRequestSpecifier *)self requestClassName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(VNRequestSpecifier *)self requestRevision];
    v15 = &v16;
    v10 = a4 != 0;
    if (a4 && v9 != a4)
    {
      do
      {
        v11 = v15++;
        v12 = *v11;
        v10 = v12 != 0;
        if (v12)
        {
          v13 = v9 == v12;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)specifiesRequestClass:(Class)a3 withAnyRevision:(unint64_t)a4
{
  v7 = [(VNRequestSpecifier *)self requestClassAndReturnError:0];
  result = 0;
  if (v7)
  {
    if (v7 == a3)
    {
      v9 = [(VNRequestSpecifier *)self requestRevision];
      v13 = &v14;
      result = a4 != 0;
      if (a4)
      {
        if (v9 != a4)
        {
          do
          {
            v10 = v13++;
            v11 = *v10;
            result = v11 != 0;
            if (v11)
            {
              v12 = v9 == v11;
            }

            else
            {
              v12 = 1;
            }
          }

          while (!v12);
        }
      }
    }
  }

  return result;
}

- (BOOL)specifiesRequestClassName:(id)a3 revision:(unint64_t)a4
{
  v6 = a3;
  if ([(VNRequestSpecifier *)self requestRevision]== a4)
  {
    v7 = [(VNRequestSpecifier *)self requestClassName];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)specifiesRequestClass:(Class)a3 revision:(unint64_t)a4
{
  if ([(VNRequestSpecifier *)self requestRevision]!= a4)
  {
    return 0;
  }

  v6 = [(VNRequestSpecifier *)self requestClassAndReturnError:0];
  return v6 && v6 == a3;
}

- (NSArray)allModelEquivalents
{
  v3 = +[VNRequestSpecifier _modelEquivalenciesRegistrar];
  v4 = [v3 equivalenciesForRequestSpecifier:self];

  return v4;
}

+ (id)_modelEquivalenciesRegistrar
{
  objc_opt_self();
  if (_modelEquivalenciesRegistrar_onceToken != -1)
  {
    dispatch_once(&_modelEquivalenciesRegistrar_onceToken, &__block_literal_global_2759);
  }

  v0 = _modelEquivalenciesRegistrar_modelEquivalenciesRegistrar;

  return v0;
}

void __50__VNRequestSpecifier__modelEquivalenciesRegistrar__block_invoke()
{
  v26 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v0 = objc_alloc_init(VNRequestSpecifierEquivalenciesRegistrar);
  v1 = _modelEquivalenciesRegistrar_modelEquivalenciesRegistrar;
  _modelEquivalenciesRegistrar_modelEquivalenciesRegistrar = v0;

  if (VNRequestClasses::onceToken != -1)
  {
    dispatch_once(&VNRequestClasses::onceToken, &__block_literal_global_118_38123);
  }

  v2 = VNRequestClasses::ourRequestClasses;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v20 = 0;
        v8 = [v7 recordSpecifierModelEquivalenciesInRegistrar:_modelEquivalenciesRegistrar_modelEquivalenciesRegistrar error:&v20];
        v9 = v20;
        if ((v8 & 1) == 0)
        {
          v10 = NSStringFromClass(v7);
          v11 = [v10 UTF8String];
          v12 = [v9 localizedDescription];
          [v12 UTF8String];
          VNValidatedLog(4, @"Failed to record model equivalencies for %s - %s", v13, v14, v15, v16, v17, v18, v11);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)hasModelEquivalencyToRequestSpecifier:(id)a3
{
  v4 = a3;
  if ([(VNRequestSpecifier *)self isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[VNRequestSpecifier _modelEquivalenciesRegistrar];
    v5 = [v6 isRequestSpecifier:self equivalentToRequestSpecifier:v4];
  }

  return v5;
}

- (BOOL)representsSupportedRequestAndReturnError:(id *)a3
{
  v5 = [(VNRequestSpecifier *)self requestClassAndReturnError:?];
  if (v5)
  {
    LOBYTE(v5) = [(objc_class *)v5 supportsAnyRevision:[(VNRequestSpecifier *)self requestRevision]];
    if (a3)
    {
      if ((v5 & 1) == 0)
      {
        v6 = [VNError errorForUnsupportedRequestSpecifier:self];
        v5 = v6;
        LOBYTE(v5) = 0;
        *a3 = v6;
      }
    }
  }

  return v5;
}

- (VNRequestSpecifier)initWithRequestClass:(Class)a3 name:(id)a4 code:(unsigned int)a5 revision:(unint64_t)a6
{
  v10 = a4;
  v16.receiver = self;
  v16.super_class = VNRequestSpecifier;
  v11 = [(VNRequestSpecifier *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_requestClassCode = a5;
    v11->_requestRevision = a6;
    v13 = [v10 copy];
    cachedRequestClassName = v12->_cachedRequestClassName;
    v12->_cachedRequestClassName = v13;

    v12->_cachedRequestClass = a3;
  }

  return v12;
}

+ (id)specifierForRequestClassName:(id)a3 revision:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([VNClassRegistrar validateRequestClassName:v8 error:a5]&& (v13 = 0, [VNClassRegistrar getClassCode:&v13 forClassName:v8 error:a5]))
  {
    v9 = [a1 alloc];
    v10 = NSClassFromString(v8);
    v11 = [v9 initWithRequestClass:v10 name:v8 code:v13 revision:a4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)specifierForRequestClass:(Class)a3 revision:(unint64_t)a4 error:(id *)a5
{
  if (_validateRequestClass(a3, a5))
  {
    v9 = NSStringFromClass(a3);
    v13 = 0;
    if ([VNClassRegistrar getClassCode:&v13 forClassName:v9 error:a5])
    {
      v10 = [a1 alloc];
      v11 = [v10 initWithRequestClass:a3 name:v9 code:v13 revision:a4];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)specifierForRequest:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v12 = 0;
  [VNClassRegistrar getClassCode:&v12 forClassName:v6 error:0];
  v7 = [a1 alloc];
  v8 = v12;
  v9 = [v4 revision];

  v10 = [v7 initWithRequestClass:v5 name:v6 code:v8 revision:v9];

  return v10;
}

+ (id)allAvailableRequestClassNames
{
  if (allAvailableRequestClassNames_onceToken != -1)
  {
    dispatch_once(&allAvailableRequestClassNames_onceToken, &__block_literal_global_39);
  }

  v3 = allAvailableRequestClassNames_allAvailableRequestClassNames;

  return v3;
}

void __51__VNRequestSpecifier_allAvailableRequestClassNames__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VNRequestSpecifier_allAvailableRequestClassNames__block_invoke_2;
  v4[3] = &unk_1E77B68E8;
  v5 = v0;
  v1 = v0;
  [VNClassRegistrar enumerateEntriesUsingBlock:v4];
  v2 = [v1 copy];
  v3 = allAvailableRequestClassNames_allAvailableRequestClassNames;
  allAvailableRequestClassNames_allAvailableRequestClassNames = v2;
}

uint64_t __51__VNRequestSpecifier_allAvailableRequestClassNames__block_invoke_2(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - 1) <= 1)
  {
    return [*(result + 32) addObject:a4];
  }

  return result;
}

+ (id)availablePrivateRequestClassNames
{
  if (availablePrivateRequestClassNames_onceToken != -1)
  {
    dispatch_once(&availablePrivateRequestClassNames_onceToken, &__block_literal_global_37);
  }

  v3 = availablePrivateRequestClassNames_availablePrivateRequestClassNames;

  return v3;
}

void __55__VNRequestSpecifier_availablePrivateRequestClassNames__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__VNRequestSpecifier_availablePrivateRequestClassNames__block_invoke_2;
  v4[3] = &unk_1E77B68E8;
  v5 = v0;
  v1 = v0;
  [VNClassRegistrar enumerateEntriesUsingBlock:v4];
  v2 = [v1 copy];
  v3 = availablePrivateRequestClassNames_availablePrivateRequestClassNames;
  availablePrivateRequestClassNames_availablePrivateRequestClassNames = v2;
}

uint64_t __55__VNRequestSpecifier_availablePrivateRequestClassNames__block_invoke_2(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    return [*(result + 32) addObject:a4];
  }

  return result;
}

+ (id)availableRequestClassNames
{
  if (availableRequestClassNames_onceToken != -1)
  {
    dispatch_once(&availableRequestClassNames_onceToken, &__block_literal_global_33);
  }

  v3 = availableRequestClassNames_availablePublicRequestClassNames;

  return v3;
}

void __48__VNRequestSpecifier_availableRequestClassNames__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__VNRequestSpecifier_availableRequestClassNames__block_invoke_2;
  v4[3] = &unk_1E77B68E8;
  v5 = v0;
  v1 = v0;
  [VNClassRegistrar enumerateEntriesUsingBlock:v4];
  v2 = [v1 copy];
  v3 = availableRequestClassNames_availablePublicRequestClassNames;
  availableRequestClassNames_availablePublicRequestClassNames = v2;
}

uint64_t __48__VNRequestSpecifier_availableRequestClassNames__block_invoke_2(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    return [*(result + 32) addObject:a4];
  }

  return result;
}

+ (id)specifierForRequestClassCode:(unsigned int *)a3 revision:(unint64_t)a4 error:(id *)a5
{
  v9 = [VNClassRegistrar classNameForClassCode:a3 error:a5];
  v10 = v9;
  if (v9 && ((v11 = NSClassFromString(v9), (v12 = v11) == 0) || _validateRequestClass(v11, a5)))
  {
    v13 = [[a1 alloc] initWithRequestClass:v12 name:v10 code:a3 revision:a4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end