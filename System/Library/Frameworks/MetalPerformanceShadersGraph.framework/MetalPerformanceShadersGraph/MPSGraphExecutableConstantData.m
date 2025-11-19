@interface MPSGraphExecutableConstantData
- (MPSGraphExecutableConstantData)initWithCoder:(id)a3;
- (id)initForRequest:(id)a3;
- (uint64_t)loadResources:;
- (void)encodeWithCoder:(id)a3;
- (void)extendWithRequest:(id)a3;
- (void)loadIntoResourceManager:(void *)a3;
- (void)loadResources:(id)a3;
@end

@implementation MPSGraphExecutableConstantData

- (MPSGraphExecutableConstantData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPSGraphExecutableConstantData;
  v5 = [(MPSGraphExecutableConstantData *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mpsgraphPackageURL"];
    [(MPSGraphExecutableConstantData *)v5 setMpsgraphPackageURL:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"ioSurfaces"];
    [(MPSGraphExecutableConstantData *)v5 setIoSurfaces:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MPSGraphExecutableConstantData *)self mpsgraphPackageURL];
  [v6 encodeObject:v4 forKey:@"mpsgraphPackageURL"];

  v5 = [(MPSGraphExecutableConstantData *)self ioSurfaces];
  [v6 encodeObject:v5 forKey:@"ioSurfaces"];
}

- (void)loadResources:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v19 resourceOffsets];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_ioSurfaces objectForKeyedSubscript:v9];
        v11 = v10 == 0;

        if (v11)
        {
          v12 = [v19 resourceOffsets];
          v13 = [v12 objectForKeyedSubscript:v9];
          [v4 setObject:v13 forKeyedSubscript:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = [(NSDictionary *)self->_ioSurfaces mutableCopy];
  p_obj = &obj;
  obj = v14;
  mpsgraphPackageURL = self->_mpsgraphPackageURL;
  v16 = +[MPSGraphPackage getResourceFileName];
  v17 = [(NSURL *)mpsgraphPackageURL URLByAppendingPathComponent:v16];

  v20 = 0;
  [MPSGraphPackage readResources:v4 fromURL:v17 error:&v20 usingAllocator:llvm::function_ref<char * ()(llvm::StringRef, unsigned long long, unsigned long long)>::callback_fn<[MPSGraphExecutableConstantData loadResources:]::$_3>, &p_obj];
  v18 = v20;
  objc_storeStrong(&self->_ioSurfaces, obj);
}

- (id)initForRequest:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MPSGraphExecutableConstantData;
  v5 = [(MPSGraphExecutableConstantData *)&v12 init];
  if (v5)
  {
    v6 = [v4 mpsgraphPackageURL];
    mpsgraphPackageURL = v5->_mpsgraphPackageURL;
    v5->_mpsgraphPackageURL = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    ioSurfaces = v5->_ioSurfaces;
    v5->_ioSurfaces = v8;

    [(MPSGraphExecutableConstantData *)v5 loadResources:v4];
    v10 = v5;
  }

  return v5;
}

- (void)loadIntoResourceManager:(void *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_ioSurfaces;
  v3 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v3)
  {
    v4 = *v25;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v7 = [(NSDictionary *)self->_ioSurfaces objectForKeyedSubscript:v6];
        v8 = v7;
        v9 = [v7 baseAddress];
        v10 = [v7 allocationSize];
        v11 = v6;
        v12 = [v6 UTF8String];
        v13 = v12;
        if (v12)
        {
          v14 = strlen(v12);
        }

        else
        {
          v14 = 0;
        }

        v15 = [v7 bytesPerElement];
        *&v31 = v9;
        *(&v31 + 1) = v10;
        v32 = v15;
        v35 = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<[MPSGraphExecutableConstantData loadIntoResourceManager:]::$_4,[MPSGraphExecutableConstantData loadIntoResourceManager:]::$_4,void>::Callbacks + 2;
        v33 = v28;
        v34 = v29;
        v30 = 0;
        v36 = 0;
        mlir::mps::MPSResourceBlobManagerInterface::defineEntryValue(a3, v13, v14, &v31);
        if (v35 >= 8)
        {
          v16 = (v35 & 2) != 0 ? &v33 : v33;
          (*(v35 & 0xFFFFFFFFFFFFFFF8))(v16, v31, *(&v31 + 1), v32);
          v17 = v35;
          if (v35 >= 8)
          {
            if ((v35 & 4) != 0)
            {
              if ((v35 & 2) != 0)
              {
                v18 = &v33;
              }

              else
              {
                v18 = v33;
              }

              (*((v35 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
            }

            if ((v17 & 2) == 0)
            {
              llvm::deallocate_buffer(v33, *(&v33 + 1));
            }
          }
        }

        v19 = v30;
        if (v30 >= 8)
        {
          if ((v30 & 4) != 0)
          {
            if ((v30 & 2) != 0)
            {
              v20 = &v28;
            }

            else
            {
              v20 = v28;
            }

            (*((v30 & 0xFFFFFFFFFFFFFFF8) + 16))(v20);
          }

          if ((v19 & 2) == 0)
          {
            llvm::deallocate_buffer(v28, *(&v28 + 1));
          }
        }
      }

      v3 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v3);
  }
}

- (void)extendWithRequest:(id)a3
{
  v6 = a3;
  [v6 mpsgraphPackageURL];

  v4 = [v6 mpsgraphPackageURL];
  mpsgraphPackageURL = self->_mpsgraphPackageURL;

  if (v4 != mpsgraphPackageURL && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [(MPSGraphExecutableConstantData *)self loadResources:v6];
}

- (uint64_t)loadResources:
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23[0] = *MEMORY[0x1E696CD70];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v24[0] = v9;
  v23[1] = *MEMORY[0x1E696CD78];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5];
  v24[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = [objc_alloc(MEMORY[0x1E696CDE8]) initWithProperties:v11];
  v13 = **a1;
  v14 = MEMORY[0x1E696AEC0];
  if (a2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v22) = a3;
    if (a3)
    {
      memmove(&__p, a2, a3);
    }

    *(&__p + a3) = 0;
    if (v22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }
  }

  else
  {
    __p = 0;
    v21 = 0;
    p_p = &__p;
    v22 = 0;
  }

  v16 = [v14 stringWithUTF8String:{p_p, __p, v21, v22}];
  [v13 setObject:v12 forKeyedSubscript:v16];

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  v17 = v12;
  v18 = [v12 baseAddress];

  return v18;
}

@end