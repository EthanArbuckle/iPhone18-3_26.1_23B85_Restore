@interface _LSApplicationProxyForIdentifierQuery
+ (NSSet)alwaysAllowedBundleIdentifiers;
+ (id)queryWithIdentifier:(id)a3;
- (BOOL)_requiresDatabaseMappingEntitlement;
- (BOOL)isEqual:(id)a3;
- (_LSApplicationProxyForIdentifierQuery)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSApplicationProxyForIdentifierQuery

+ (id)queryWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[2];
    v5[2] = v6;
  }

  return v5;
}

+ (NSSet)alwaysAllowedBundleIdentifiers
{
  if (+[_LSApplicationProxyForIdentifierQuery alwaysAllowedBundleIdentifiers]::once != -1)
  {
    +[_LSApplicationProxyForIdentifierQuery alwaysAllowedBundleIdentifiers];
  }

  v3 = +[_LSApplicationProxyForIdentifierQuery alwaysAllowedBundleIdentifiers]::result;

  return v3;
}

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];

  if (v8)
  {
    v23 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(&v20, v9, 0);

    if (v10)
    {
      v11 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
      v12 = [LSApplicationProxy applicationProxyForIdentifier:v11 withContext:v10];
      v7[2](v7, v12, 0);
    }

    else
    {
      v15 = +[_LSDServiceDomain defaultServiceDomain];
      v16 = LaunchServices::Database::Context::_get(&v20, v15, 0);

      if (v16)
      {
        v11 = 0;
      }

      else
      {
        v11 = v23;
      }

      (v7)[2](v7, 0, v11);
    }

    if (v20 && v22 == 1)
    {
      _LSContextDestroy(v20);
    }

    v17 = v21;
    v20 = 0;
    v21 = 0;

    v22 = 0;
    v18 = v23;
    v23 = 0;
  }

  else
  {
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"invalid input parameters";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "[_LSApplicationProxyForIdentifierQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleQuery.mm", 582);
    (v7)[2](v7, 0, v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_requiresDatabaseMappingEntitlement
{
  v3 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
  if (v3)
  {
    v4 = [objc_opt_class() alwaysAllowedBundleIdentifiers];
    v5 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
    v6 = [v4 containsObject:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _LSApplicationProxyForIdentifierQuery;
  if ([(_LSQuery *)&v12 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 identifier];
    if (v6)
    {
      v7 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
      if (v7)
      {
        v8 = [v5 identifier];
        v9 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
  v4 = [v3 hash];
  v7.receiver = self;
  v7.super_class = _LSApplicationProxyForIdentifierQuery;
  v5 = [(_LSQuery *)&v7 hash];

  return v5 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _LSApplicationProxyForIdentifierQuery;
  [(_LSQuery *)&v6 encodeWithCoder:v4];
  v5 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (_LSApplicationProxyForIdentifierQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _LSApplicationProxyForIdentifierQuery;
  v5 = [(_LSQuery *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

@end