@interface _LSAvailableApplicationsForURLQuery
- (_LSAvailableApplicationsForURLQuery)initWithCoder:(id)coder;
- (_LSAvailableApplicationsForURLQuery)initWithURL:(id)l;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)yieldBundles:(const void *)bundles context:(LSContext *)context block:(id)block;
@end

@implementation _LSAvailableApplicationsForURLQuery

- (_LSAvailableApplicationsForURLQuery)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = _LSAvailableApplicationsForURLQuery;
  _init = [(_LSQuery *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 2, l);
  }

  return v7;
}

- (void)yieldBundles:(const void *)bundles context:(LSContext *)context block:(id)block
{
  blockCopy = block;
  v7 = *bundles;
  v8 = *(bundles + 1);
  if (*bundles != v8)
  {
    while (1)
    {
      v9 = *v7;
      v10 = objc_autoreleasePoolPush();
      v11 = [LSApplicationProxy applicationProxyWithBundleUnitID:v9 withContext:context];
      objc_autoreleasePoolPop(v10);
      if (v11)
      {
        if ((blockCopy[2](blockCopy, v11, 0) & 1) == 0)
        {
          break;
        }
      }

      if (++v7 == v8)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v51 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  v8 = [(_LSAvailableApplicationsForURLQuery *)self URL];
  scheme = [v8 scheme];

  if (scheme)
  {
    if ([scheme isEqualToString:@"com-apple-audiounit"])
    {
      v10 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.audioUnit.temp" placeholder:1];
      blockCopy[2](blockCopy, v10, 0);
    }

    else
    {
      v47 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v13 = +[_LSDServiceDomain defaultServiceDomain];
      v14 = LaunchServices::Database::Context::_get(&v44, v13, 0);

      if (v14)
      {
        [_LSCanOpenURLManager bindingEvaluatorForScheme:scheme];
        v41 = 0;
        LaunchServices::BindingEvaluator::evaluateBindings(v50, v14, &v41, &v42);
        v15 = v41;
        v16 = v15;
        v17 = v42;
        v18 = v43;
        if (v42 == v43)
        {
          if (_LSGetOSStatusFromNSError(v15) == -10814)
          {
            v26 = _LSDefaultLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [_LSAvailableApplicationsForURLQuery _enumerateWithXPCConnection:block:];
            }
          }

          else
          {
            (blockCopy)[2](blockCopy, 0, v16);
          }
        }

        else
        {
          v30 = v15;
          v32 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          __p = 0;
          v36 = 0;
          v37 = 0;
          v33 = 0;
          v34 = 0;
          do
          {
            if (__p == v36)
            {
              v19 = &v38;
            }

            else
            {
              v19 = &v32;
            }

            if (*(*(v17 + 8) + 168) == 14)
            {
              p_p = &__p;
            }

            else
            {
              p_p = v19;
            }

            std::vector<unsigned int>::push_back[abi:nn200100](p_p, v17);
            v17 += 56;
          }

          while (v17 != v18);
          v21 = &__p;
          if (__p == v36)
          {
            v21 = &v32;
          }

          if (v38 == v39)
          {
            v22 = v21;
          }

          else
          {
            v22 = &v38;
          }

          [(_LSAvailableApplicationsForURLQuery *)self yieldBundles:v22 context:v14 block:blockCopy, v30];
          v16 = v31;
          if (v32)
          {
            v33 = v32;
            operator delete(v32);
          }

          if (__p)
          {
            v36 = __p;
            operator delete(__p);
          }

          if (v38)
          {
            v39 = v38;
            operator delete(v38);
          }
        }

        v38 = &v42;
        std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v38);

        LaunchServices::BindingEvaluator::~BindingEvaluator(v50);
      }

      else
      {
        v23 = +[_LSDServiceDomain defaultServiceDomain];
        v24 = LaunchServices::Database::Context::_get(&v44, v23, 0);

        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v47;
        }

        (blockCopy)[2](blockCopy, 0, v25);
      }

      if (v44 && v46 == 1)
      {
        _LSContextDestroy(v44);
      }

      v27 = v45;
      v44 = 0;
      v45 = 0;

      v46 = 0;
      v28 = v47;
      v47 = 0;
    }
  }

  else
  {
    v48 = *MEMORY[0x1E696A278];
    v49 = @"invalid URL or scheme";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSAvailableApplicationsForURLQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSCanOpenURLManager.mm", 666);
    (blockCopy)[2](blockCopy, 0, v12);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSAvailableApplicationsForURLQuery;
  [(_LSQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
}

- (_LSAvailableApplicationsForURLQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _LSAvailableApplicationsForURLQuery;
  v5 = [(_LSQuery *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;
  }

  return v5;
}

- (void)_enumerateWithXPCConnection:block:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEBUG, "No bindings found for scheme %{private}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end