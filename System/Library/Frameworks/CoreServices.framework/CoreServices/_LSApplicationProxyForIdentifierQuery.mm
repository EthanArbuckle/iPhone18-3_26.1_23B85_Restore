@interface _LSApplicationProxyForIdentifierQuery
+ (NSSet)alwaysAllowedBundleIdentifiers;
+ (id)queryWithIdentifier:(id)identifier;
- (BOOL)_requiresDatabaseMappingEntitlement;
- (BOOL)isEqual:(id)equal;
- (_LSApplicationProxyForIdentifierQuery)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSApplicationProxyForIdentifierQuery

+ (id)queryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _init = [[self alloc] _init];
  if (_init)
  {
    v6 = [identifierCopy copy];
    v7 = _init[2];
    _init[2] = v6;
  }

  return _init;
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

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v25[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  identifier = [(_LSApplicationProxyForIdentifierQuery *)self identifier];

  if (identifier)
  {
    v23 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v9 = +[_LSDServiceDomain defaultServiceDomain];
    v10 = LaunchServices::Database::Context::_get(&v20, v9, 0);

    if (v10)
    {
      identifier2 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
      v12 = [LSApplicationProxy applicationProxyForIdentifier:identifier2 withContext:v10];
      blockCopy[2](blockCopy, v12, 0);
    }

    else
    {
      v15 = +[_LSDServiceDomain defaultServiceDomain];
      v16 = LaunchServices::Database::Context::_get(&v20, v15, 0);

      if (v16)
      {
        identifier2 = 0;
      }

      else
      {
        identifier2 = v23;
      }

      (blockCopy)[2](blockCopy, 0, identifier2);
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
    (blockCopy)[2](blockCopy, 0, v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_requiresDatabaseMappingEntitlement
{
  identifier = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
  if (identifier)
  {
    alwaysAllowedBundleIdentifiers = [objc_opt_class() alwaysAllowedBundleIdentifiers];
    identifier2 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
    v6 = [alwaysAllowedBundleIdentifiers containsObject:identifier2] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _LSApplicationProxyForIdentifierQuery;
  if ([(_LSQuery *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    if (identifier)
    {
      identifier2 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
      if (identifier2)
      {
        identifier3 = [v5 identifier];
        identifier4 = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
        v10 = [identifier3 isEqual:identifier4];
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
  identifier = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
  v4 = [identifier hash];
  v7.receiver = self;
  v7.super_class = _LSApplicationProxyForIdentifierQuery;
  v5 = [(_LSQuery *)&v7 hash];

  return v5 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = _LSApplicationProxyForIdentifierQuery;
  [(_LSQuery *)&v6 encodeWithCoder:coderCopy];
  identifier = [(_LSApplicationProxyForIdentifierQuery *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (_LSApplicationProxyForIdentifierQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _LSApplicationProxyForIdentifierQuery;
  v5 = [(_LSQuery *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

@end