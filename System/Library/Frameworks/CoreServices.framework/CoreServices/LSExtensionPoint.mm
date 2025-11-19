@interface LSExtensionPoint
+ (id)extensionPointForIdentifier:(id)a3;
+ (id)extensionPointForIdentifier:(id)a3 platform:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (LSExtensionPoint)initWithCoder:(id)a3;
- (NSDictionary)sdkEntry;
- (NSNumber)platform;
- (id)_initWithRecord:(id)a3 resolveAndDetach:(BOOL)a4;
- (id)description;
@end

@implementation LSExtensionPoint

- (NSDictionary)sdkEntry
{
  v2 = [(LSExtensionPointRecord *)self->_record SDKDictionary];
  v3 = [v2 _expensiveDictionaryRepresentation];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

+ (id)extensionPointForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dyld_get_active_platform()];
  v5 = [LSExtensionPoint extensionPointForIdentifier:v3 platform:v4];

  return v5;
}

+ (id)extensionPointForIdentifier:(id)a3 platform:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [LSExtensionPointRecord alloc];
  if (v7)
  {
    v9 = [v7 unsignedLongLongValue];
  }

  else
  {
    v9 = 0;
  }

  v16 = 0;
  v10 = [(LSExtensionPointRecord *)v8 initWithIdentifier:v6 platform:v9 parentAppRecord:0 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [[a1 alloc] _initWithRecord:v10 resolveAndDetach:1];
    v13 = _LSDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(LSExtensionPoint *)v12 extensionPointForIdentifier:v6 platform:v13];
    }
  }

  else
  {
    v13 = _LSDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(LSExtensionPoint *)v6 extensionPointForIdentifier:v11 platform:v13];
    }

    v12 = 0;
  }

  v14 = v12;
  return v12;
}

- (id)_initWithRecord:(id)a3 resolveAndDetach:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = LSExtensionPoint;
  v8 = [(_LSQueryResult *)&v11 _init];
  v9 = v8;
  if (v8)
  {
    if (v4 && _LSDatabaseContextGetDetachProxyObjects(v8))
    {
      [v7 _resolveAllProperties];
      [v7 detach];
    }

    objc_storeStrong(v9 + 1, a3);
  }

  return v9;
}

- (NSNumber)platform
{
  v2 = [(LSExtensionPointRecord *)self->_record platform];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5.receiver = self;
  v5.super_class = LSExtensionPoint;
  if ([(LSExtensionPoint *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [LSExtensionPointRecord instancesRespondToSelector:a3];
  }
}

- (LSExtensionPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LSExtensionPoint;
  v5 = [(_LSQueryResult *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"record"];
    record = v5->_record;
    v5->_record = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = LSExtensionPoint;
  v4 = [(LSExtensionPoint *)&v10 description];
  v5 = [(LSExtensionPoint *)self identifier];
  v6 = [(LSExtensionPoint *)self platform];
  v7 = [(LSExtensionPoint *)self sdkEntry];
  v8 = [v3 stringWithFormat:@"%@ %@ %@ <%@>", v4, v5, v6, v7];

  return v8;
}

+ (void)extensionPointForIdentifier:(os_log_t)log platform:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Found LSExtensionPoint %@ for identifier %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)extensionPointForIdentifier:(os_log_t)log platform:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Failed to find extension point for identifier %{public}@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end