@interface NIConfiguration
- (NIConfiguration)initWithCoder:(id)coder;
- (NIConfiguration)initWithConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initInternal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIConfiguration

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = NIConfiguration;
  result = [(NIConfiguration *)&v3 init];
  if (result)
  {
    *(result + 1) = vdupq_n_s64(3uLL);
    *(result + 8) = 0;
  }

  return result;
}

- (NIConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v9.receiver = self;
  v9.super_class = NIConfiguration;
  v6 = [(NIConfiguration *)&v9 init];
  if (v6)
  {
    v6->_suspensionPolicy = [configurationCopy suspensionPolicy];
    v6->_enabledGestures = [configurationCopy enabledGestures];
    v6->_supportsCameraAssistance = [configurationCopy supportsCameraAssistance];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithConfiguration:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_suspensionPolicy forKey:@"suspensionPolicy"];
  [coderCopy encodeInteger:self->_enabledGestures forKey:@"enabledGestures"];
  [coderCopy encodeBool:self->_supportsCameraAssistance forKey:@"supportsCameraAssistance"];
}

- (NIConfiguration)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  initInternal = [objc_alloc(objc_opt_class()) initInternal];

  if (initInternal)
  {
    *__p = xmmword_1BAC848E0;
    v23 = 1;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v18, __p, &v24, 3uLL);
    v21 = xmmword_1BAC848D0;
    __p[1] = 0;
    v23 = 0;
    __p[0] = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, &v21, __p, 2uLL);
    v6 = [coderCopy decodeIntegerForKey:@"suspensionPolicy"];
    v7 = [coderCopy decodeIntegerForKey:@"enabledGestures"];
    v8 = [coderCopy decodeBoolForKey:@"supportsCameraAssistance"];
    initInternal->_suspensionPolicy = 0;
    initInternal->_enabledGestures = 0;
    initInternal->_supportsCameraAssistance = v8;
    v9 = v18;
    v10 = v19;
    if (v18 != v19)
    {
      v11 = 0;
      do
      {
        if ((*v9 & v6) != 0)
        {
          v11 |= *v9;
          initInternal->_suspensionPolicy = v11;
        }

        ++v9;
      }

      while (v9 != v10);
    }

    v12 = __p[0];
    v13 = __p[1];
    if (__p[0] != __p[1])
    {
      v14 = 0;
      do
      {
        if ((*v12 & v7) != 0)
        {
          v14 |= *v12;
          initInternal->_enabledGestures = v14;
        }

        ++v12;
      }

      while (v12 != v13);
    }

    v15 = initInternal;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return initInternal;
}

@end