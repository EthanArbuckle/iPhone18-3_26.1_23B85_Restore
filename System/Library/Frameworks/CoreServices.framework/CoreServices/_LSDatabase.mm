@interface _LSDatabase
- (BOOL)cryptexContentChanged;
- (id)_init;
- (id)description;
- (uint64_t)accessContext;
- (uint64_t)isSeeded;
- (uint64_t)isSeedingComplete;
- (uint64_t)schema;
- (uint64_t)store;
- (void)dealloc;
- (void)isSeeded;
- (void)setAccessContext:(uint64_t)a1;
- (void)setApplicationsChanged:(_LSDatabase *)a1;
- (void)setDocumentTypesChanged:(_LSDatabase *)a1;
- (void)setSeeded:(_LSDatabase *)a1;
- (void)setSeedingComplete:(_LSDatabase *)a1;
- (void)setTypeDeclarationsChanged:(_LSDatabase *)a1;
- (void)setURLTypesChanged:(_LSDatabase *)a1;
@end

@implementation _LSDatabase

- (uint64_t)store
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)schema
{
  if (a1)
  {
    return a1 + 48;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isSeedingComplete
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    bzero(v4, 0xD0uLL);
    _LSDatabaseGetHeader(v1, v4);
    if ((v5 & 2) != 0)
    {
      v2 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_18162D000, v2, OS_LOG_TYPE_ERROR, "Database seeding is incomplete, need to rebuild", v4, 2u);
      }

      result = 0;
    }

    else
    {
      result = 1;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)isSeeded
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = 0;
    goto LABEL_40;
  }

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  _LSDatabaseGetHeader(a1, v19);
  LSDBHeader::GetCurrentBuildVersion(&__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    _LSDatabaseGetLog();
    objc_claimAutoreleasedReturnValue();
    [_LSDatabase isSeeded];
    v11 = v22;
LABEL_36:

    goto LABEL_37;
  }

  *__dst = 0;
  *&__dst[8] = 0;
  strlcpy(__dst, v20, 0x10uLL);
  std::string::basic_string[abi:nn200100]<0>(&v22, __dst);
  v2 = BYTE7(v23);
  if ((SBYTE7(v23) & 0x80u) == 0)
  {
    v3 = BYTE7(v23);
  }

  else
  {
    v3 = *(&v22 + 1);
  }

  v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = __p.__r_.__value_.__l.__size_;
  }

  if (v3 == v4)
  {
    v5 = (SBYTE7(v23) & 0x80u) == 0 ? &v22 : v22;
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (!memcmp(v5, v6, v3))
    {
      v10 = 0;
      if (v2 < 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (v10)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  if (!v3)
  {
    v10 = 1;
    if (v2 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v7 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v22;
    if (SBYTE7(v23) < 0)
    {
      v8 = v22;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *__dst = 136446466;
    *&__dst[4] = v8;
    *&__dst[12] = 2082;
    *&__dst[14] = p_p;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Local database thinks system build version is %{public}s, but the OS really is %{public}s.", __dst, 0x16u);
  }

  v10 = 1;
  if ((BYTE7(v23) & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  operator delete(v22);
  if (v10)
  {
LABEL_37:
    v14 = 0;
    goto LABEL_38;
  }

LABEL_33:
  _LSGetCurrentSystemVersion(v18);
  v22 = *(v19 + 8);
  v23 = *(&v19[1] + 8);
  *__dst = v18[0];
  *&__dst[16] = v18[1];
  if (_LSVersionNumberCompare(&v22, __dst))
  {
    v11 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v19 + 8);
      v23 = *(&v19[1] + 8);
      v12 = _LSVersionNumberGetStringRepresentation(&v22);
      _LSGetCurrentSystemVersion(&v22);
      v13 = _LSVersionNumberGetStringRepresentation(&v22);
      *__dst = 138543618;
      *&__dst[4] = v12;
      *&__dst[12] = 2114;
      *&__dst[14] = v13;
      _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "Local database thinks system version is %{public}@, but the OS really is %{public}@.", __dst, 0x16u);
    }

    goto LABEL_36;
  }

  v14 = 1;
LABEL_38:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_40:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _LSDatabase;
  if ([(_LSDatabase *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  store = self->_store;
  if (store)
  {
    CFRelease(store);
    self->_store = 0;
  }

  accessContext = self->accessContext;
  if (accessContext)
  {
    CFRelease(accessContext);
    self->accessContext = 0;
  }

  cache = self->_schema._cache;
  if (cache)
  {
    _LSSchemaCache::~_LSSchemaCache(cache);
    MEMORY[0x1865D6250]();
  }

  v6.receiver = self;
  v6.super_class = _LSDatabase;
  [(_LSDatabase *)&v6 dealloc];
}

- (id)description
{
  v3 = [(FSNode *)self->node pathWithError:0];
  v4 = v3;
  v5 = @"?";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  if (self->sessionKey.systemSession)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = @"<LSDatabase %p> { system session, path = '%@' }";
LABEL_7:
    v9 = [v7 stringWithFormat:v8, self, v6];
    goto LABEL_9;
  }

  v7 = MEMORY[0x1E696AEC0];
  if (self->sessionKey.uid == -2)
  {
    v8 = @"<LSDatabase %p> { path = '%@' }";
    goto LABEL_7;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<LSDatabase %p> { userID = %llu, path = '%@' }", self, self->sessionKey.uid, v6];
LABEL_9:
  v10 = v9;

  return v10;
}

- (void)setSeeded:(_LSDatabase *)a1
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(v23, 0, sizeof(v23));
    _LSDatabaseGetHeader(a1, v23);
    if (a2)
    {
      _LSGetCurrentSystemVersion((v23 + 8));
      LSDBHeader::GetCurrentBuildVersion(__p);
      v25 = 0uLL;
      if ((SBYTE7(v11) & 0x80u) == 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      strlcpy(&v25, v4, 0x10uLL);
      if (SBYTE7(v11) < 0)
      {
        operator delete(__p[0]);
      }

      LSDBHeader::GetCurrentModelCode(__p);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      if ((SBYTE7(v11) & 0x80u) == 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      strlcpy(&v26, v5, 0x40uLL);
      if (SBYTE7(v11) < 0)
      {
        operator delete(__p[0]);
      }

      _LSGetCurrentCryptexVersion(__p);
      *(&v23[2] + 8) = *__p;
      *(&v23[3] + 8) = v11;
      LSDBHeader::GetCurrentCryptexVersion(__p);
      *(&v23[4] + 1) = 0;
      *&v24 = 0;
      if ((SBYTE7(v11) & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }
    }

    else
    {
      memset(v23 + 8, 0, 32);
      std::string::basic_string[abi:nn200100]<0>(__p, "");
      v25 = 0uLL;
      if ((SBYTE7(v11) & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      strlcpy(&v25, v7, 0x10uLL);
      if (SBYTE7(v11) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:nn200100]<0>(__p, "");
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      if ((SBYTE7(v11) & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      strlcpy(&v26, v8, 0x40uLL);
      if (SBYTE7(v11) < 0)
      {
        operator delete(__p[0]);
      }

      memset(&v23[2] + 8, 0, 32);
      std::string::basic_string[abi:nn200100]<0>(__p, "");
      *(&v23[4] + 1) = 0;
      *&v24 = 0;
      if ((SBYTE7(v11) & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }
    }

    strlcpy(&v23[4] + 8, v6, 0x10uLL);
    if (SBYTE7(v11) < 0)
    {
      operator delete(__p[0]);
    }

    v20 = v29;
    v21 = v30;
    v22 = v31;
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v12 = v23[2];
    v13 = v23[3];
    v14 = v23[4];
    v15 = v24;
    *__p = v23[0];
    v11 = v23[1];
    _LSDatabaseSetHeader(a1);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (uint64_t)accessContext
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setAccessContext:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_14();
    v4 = *(v3 + 24);
    if (v4 != v5)
    {
      v2[3] = v1;
      if (v1)
      {
        CFRetain(v1);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      v6 = v2;
      v7 = v2[5];

      MEMORY[0x1EEE009A0](v7, v1);
    }
  }
}

- (BOOL)cryptexContentChanged
{
  v1 = a1;
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    bzero(v7, 0xD0uLL);
    _LSDatabaseGetHeader(v1, v7);
    _LSGetCurrentCryptexVersion(v6);
    v5[0] = v8[0];
    v5[1] = v8[1];
    v2 = _LSVersionNumberCompare(v6, v5);
    v1 = v2 != 0;
    if (v2)
    {
      _LSGetCurrentCryptexVersion(v8);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

- (void)setSeedingComplete:(_LSDatabase *)a1
{
  if (a1)
  {
    _LSDatabaseSetHeaderFlag(a1, 2, a2 ^ 1);
  }
}

- (void)setApplicationsChanged:(_LSDatabase *)a1
{
  if (a1)
  {
    _LSDatabaseSetHeaderFlag(a1, 0x1000000, a2);
  }
}

- (void)setDocumentTypesChanged:(_LSDatabase *)a1
{
  if (a1)
  {
    _LSDatabaseSetHeaderFlag(a1, 0x2000000, a2);
  }
}

- (void)setURLTypesChanged:(_LSDatabase *)a1
{
  if (a1)
  {
    _LSDatabaseSetHeaderFlag(a1, 0x4000000, a2);
  }
}

- (void)setTypeDeclarationsChanged:(_LSDatabase *)a1
{
  if (a1)
  {
    _LSDatabaseSetHeaderFlag(a1, 0x8000000, a2);
  }
}

- (void)isSeeded
{
  OUTLINED_FUNCTION_14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_10_0(&dword_18162D000, v3, v4, "Could not get OS build version.", v5, v6, v7, v8, 0);
  }

  *v0 = v1;
}

@end