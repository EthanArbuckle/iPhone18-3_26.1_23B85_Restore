@interface VNRequestSpecifier
+ (id)_modelEquivalenciesRegistrar;
+ (id)allAvailableRequestClassNames;
+ (id)availablePrivateRequestClassNames;
+ (id)availableRequestClassNames;
+ (id)specifierForRequest:(id)request;
+ (id)specifierForRequestClass:(Class)class revision:(unint64_t)revision error:(id *)error;
+ (id)specifierForRequestClassCode:(unsigned int *)code revision:(unint64_t)revision error:(id *)error;
+ (id)specifierForRequestClassName:(id)name revision:(unint64_t)revision error:(id *)error;
- (BOOL)hasModelEquivalencyToRequestSpecifier:(id)specifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPrivate;
- (BOOL)isPublic;
- (BOOL)observationProvidesBoundsNormalizedToROI;
- (BOOL)representsSupportedRequestAndReturnError:(id *)error;
- (BOOL)specifiesAnyRequestClass:(Class)class;
- (BOOL)specifiesAnyRequestClassName:(id)name;
- (BOOL)specifiesRequestClass:(Class)class revision:(unint64_t)revision;
- (BOOL)specifiesRequestClass:(Class)class withAnyRevision:(unint64_t)revision;
- (BOOL)specifiesRequestClassName:(id)name;
- (BOOL)specifiesRequestClassName:(id)name revision:(unint64_t)revision;
- (BOOL)specifiesRequestClassName:(id)name withAnyRevision:(unint64_t)revision;
- (Class)requestClassAndReturnError:(id *)error;
- (NSArray)allModelEquivalents;
- (VNRequestSpecifier)initWithCoder:(id)coder;
- (VNRequestSpecifier)initWithRequestClass:(Class)class name:(id)name code:(unsigned int)code revision:(unint64_t)revision;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRequestSpecifier

- (unint64_t)hash
{
  requestClassName = [(VNRequestSpecifier *)self requestClassName];
  v4 = [requestClassName hash];

  return [(VNRequestSpecifier *)self requestRevision]^ __ROR8__(v4, 51);
}

- (Class)requestClassAndReturnError:(id *)error
{
  cachedRequestClass = self->_cachedRequestClass;
  if (cachedRequestClass)
  {
    v4 = cachedRequestClass;
  }

  else if (error)
  {
    requestClassName = [(VNRequestSpecifier *)self requestClassName];
    *error = [VNError errorForUnsupportedRequestClassName:requestClassName];
  }

  return cachedRequestClass;
}

- (VNRequestSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"code"];
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
      self = -[VNRequestSpecifier initWithRequestClass:name:code:revision:](self, "initWithRequestClass:name:code:revision:", NSClassFromString(v6), v6, v5, [coderCopy decodeIntegerForKey:@"rev"]);
      v7 = v9;
      selfCopy = self;
    }

    else
    {
      [coderCopy failWithError:v9];
      selfCopy = 0;
      v7 = v9;
    }
  }

  else
  {
    [coderCopy failWithError:v7];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  requestClassCode = self->_requestClassCode;
  coderCopy = coder;
  [coderCopy encodeInt32:requestClassCode forKey:@"code"];
  [coderCopy encodeInteger:self->_requestRevision forKey:@"rev"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestRevision = [(VNRequestSpecifier *)self requestRevision];
      if (requestRevision == [(VNRequestSpecifier *)v5 requestRevision])
      {
        requestClassCode = [(VNRequestSpecifier *)self requestClassCode];
        v8 = requestClassCode == [(VNRequestSpecifier *)v5 requestClassCode];
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
  requestRevision = [(VNRequestSpecifier *)self requestRevision];
  v5 = [(VNRequestSpecifier *)self requestClassAndReturnError:0];
  if (v5)
  {
    v6 = v5;
    v7 = VNRequestRevisionString(v5, requestRevision);
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
    requestClassName = [(VNRequestSpecifier *)self requestClassName];
    v8 = requestClassName;
    v10 = "";
    if (requestRevision > 0xDECAEFFF)
    {
      v10 = "private ";
    }

    [v3 appendFormat:@"unavailable %@, %srevision %lu", requestClassName, v10, requestRevision];
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
  isPublicRevision = [(VNRequestSpecifier *)self isPublicRevision];
  if (isPublicRevision)
  {

    LOBYTE(isPublicRevision) = [(VNRequestSpecifier *)self isPublicRequestClass];
  }

  return isPublicRevision;
}

- (BOOL)observationProvidesBoundsNormalizedToROI
{
  requestClassCode = [(VNRequestSpecifier *)self requestClassCode];
  requestRevision = [(VNRequestSpecifier *)self requestRevision];

  return [VNClassRegistrar observationBoundsAreNormalizedToROIForRequestClassCode:requestClassCode revision:requestRevision];
}

- (BOOL)specifiesAnyRequestClassName:(id)name
{
  nameCopy = name;
  requestClassName = [(VNRequestSpecifier *)self requestClassName];
  v6 = nameCopy;
  v7 = v6;
  v13 = &v14;
  if (v6)
  {
    v8 = v6;
    do
    {
      v9 = [requestClassName isEqualToString:v8];
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

- (BOOL)specifiesRequestClassName:(id)name
{
  nameCopy = name;
  requestClassName = [(VNRequestSpecifier *)self requestClassName];
  v6 = [nameCopy isEqualToString:requestClassName];

  return v6;
}

- (BOOL)specifiesAnyRequestClass:(Class)class
{
  v4 = [(VNRequestSpecifier *)self requestClassAndReturnError:0];
  if (!v4)
  {
    return 0;
  }

  v10 = &v11;
  v5 = class != 0;
  if (v4 != class && class)
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

- (BOOL)specifiesRequestClassName:(id)name withAnyRevision:(unint64_t)revision
{
  nameCopy = name;
  requestClassName = [(VNRequestSpecifier *)self requestClassName];
  v8 = [nameCopy isEqualToString:requestClassName];

  if (v8)
  {
    requestRevision = [(VNRequestSpecifier *)self requestRevision];
    v15 = &v16;
    v10 = revision != 0;
    if (revision && requestRevision != revision)
    {
      do
      {
        v11 = v15++;
        v12 = *v11;
        v10 = v12 != 0;
        if (v12)
        {
          v13 = requestRevision == v12;
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

- (BOOL)specifiesRequestClass:(Class)class withAnyRevision:(unint64_t)revision
{
  v7 = [(VNRequestSpecifier *)self requestClassAndReturnError:0];
  result = 0;
  if (v7)
  {
    if (v7 == class)
    {
      requestRevision = [(VNRequestSpecifier *)self requestRevision];
      v13 = &v14;
      result = revision != 0;
      if (revision)
      {
        if (requestRevision != revision)
        {
          do
          {
            v10 = v13++;
            v11 = *v10;
            result = v11 != 0;
            if (v11)
            {
              v12 = requestRevision == v11;
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

- (BOOL)specifiesRequestClassName:(id)name revision:(unint64_t)revision
{
  nameCopy = name;
  if ([(VNRequestSpecifier *)self requestRevision]== revision)
  {
    requestClassName = [(VNRequestSpecifier *)self requestClassName];
    v8 = [nameCopy isEqualToString:requestClassName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)specifiesRequestClass:(Class)class revision:(unint64_t)revision
{
  if ([(VNRequestSpecifier *)self requestRevision]!= revision)
  {
    return 0;
  }

  v6 = [(VNRequestSpecifier *)self requestClassAndReturnError:0];
  return v6 && v6 == class;
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

- (BOOL)hasModelEquivalencyToRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([(VNRequestSpecifier *)self isEqual:specifierCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[VNRequestSpecifier _modelEquivalenciesRegistrar];
    v5 = [v6 isRequestSpecifier:self equivalentToRequestSpecifier:specifierCopy];
  }

  return v5;
}

- (BOOL)representsSupportedRequestAndReturnError:(id *)error
{
  v5 = [(VNRequestSpecifier *)self requestClassAndReturnError:?];
  if (v5)
  {
    LOBYTE(v5) = [(objc_class *)v5 supportsAnyRevision:[(VNRequestSpecifier *)self requestRevision]];
    if (error)
    {
      if ((v5 & 1) == 0)
      {
        v6 = [VNError errorForUnsupportedRequestSpecifier:self];
        v5 = v6;
        LOBYTE(v5) = 0;
        *error = v6;
      }
    }
  }

  return v5;
}

- (VNRequestSpecifier)initWithRequestClass:(Class)class name:(id)name code:(unsigned int)code revision:(unint64_t)revision
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = VNRequestSpecifier;
  v11 = [(VNRequestSpecifier *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_requestClassCode = code;
    v11->_requestRevision = revision;
    v13 = [nameCopy copy];
    cachedRequestClassName = v12->_cachedRequestClassName;
    v12->_cachedRequestClassName = v13;

    v12->_cachedRequestClass = class;
  }

  return v12;
}

+ (id)specifierForRequestClassName:(id)name revision:(unint64_t)revision error:(id *)error
{
  nameCopy = name;
  if ([VNClassRegistrar validateRequestClassName:nameCopy error:error]&& (v13 = 0, [VNClassRegistrar getClassCode:&v13 forClassName:nameCopy error:error]))
  {
    v9 = [self alloc];
    v10 = NSClassFromString(nameCopy);
    v11 = [v9 initWithRequestClass:v10 name:nameCopy code:v13 revision:revision];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)specifierForRequestClass:(Class)class revision:(unint64_t)revision error:(id *)error
{
  if (_validateRequestClass(class, error))
  {
    v9 = NSStringFromClass(class);
    v13 = 0;
    if ([VNClassRegistrar getClassCode:&v13 forClassName:v9 error:error])
    {
      v10 = [self alloc];
      v11 = [v10 initWithRequestClass:class name:v9 code:v13 revision:revision];
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

+ (id)specifierForRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v12 = 0;
  [VNClassRegistrar getClassCode:&v12 forClassName:v6 error:0];
  v7 = [self alloc];
  v8 = v12;
  revision = [requestCopy revision];

  v10 = [v7 initWithRequestClass:v5 name:v6 code:v8 revision:revision];

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

+ (id)specifierForRequestClassCode:(unsigned int *)code revision:(unint64_t)revision error:(id *)error
{
  v9 = [VNClassRegistrar classNameForClassCode:code error:error];
  v10 = v9;
  if (v9 && ((v11 = NSClassFromString(v9), (v12 = v11) == 0) || _validateRequestClass(v11, error)))
  {
    v13 = [[self alloc] initWithRequestClass:v12 name:v10 code:code revision:revision];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end