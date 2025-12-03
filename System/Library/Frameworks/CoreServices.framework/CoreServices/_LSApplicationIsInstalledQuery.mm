@interface _LSApplicationIsInstalledQuery
+ (id)queryWithBundleIdentifier:(id)identifier;
- (_LSApplicationIsInstalledQuery)initWithCoder:(id)coder;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSApplicationIsInstalledQuery

+ (id)queryWithBundleIdentifier:(id)identifier
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

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  bundleIdentifier = [(_LSApplicationIsInstalledQuery *)self bundleIdentifier];

  if (!bundleIdentifier)
  {
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSApplicationIsInstalledQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationIsInstalledQuery.mm", 60);
    blockCopy[2](blockCopy, 0, v14);

    goto LABEL_17;
  }

  v29 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = +[_LSDServiceDomain defaultServiceDomain];
  v10 = LaunchServices::Database::Context::_get(&v26, v9, 0);

  if (v10)
  {
    v25 = 0;
    v24 = 0;
    bundleIdentifier2 = [(_LSApplicationIsInstalledQuery *)self bundleIdentifier];
    v30 = kLSVersionNumberNull;
    v31 = unk_1817E90C0;
    if (_LSBundleFindWithInfo(v10, 0, bundleIdentifier2, 0, &v30, 2, 0, &v25, &v24))
    {
      bundleIdentifier3 = [(_LSApplicationIsInstalledQuery *)self bundleIdentifier];
      v30 = kLSVersionNumberNull;
      v31 = unk_1817E90C0;
      v13 = _LSBundleFindWithInfo(v10, 0, bundleIdentifier3, 0, &v30, 2, 1024, &v25, &v24) == 0;

      if (!v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v18 = [_LSQueryResultWithPropertyList alloc];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:v24 != 0];
    v20 = [(_LSQueryResultWithPropertyList *)v18 initWithPropertyList:v19];

    (blockCopy)[2](blockCopy, v20, 0);
  }

  else
  {
    v15 = +[_LSDServiceDomain defaultServiceDomain];
    v16 = LaunchServices::Database::Context::_get(&v26, v15, 0);

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v29;
    }

    blockCopy[2](blockCopy, 0, v17);
  }

LABEL_13:
  if (v26 && v28 == 1)
  {
    _LSContextDestroy(v26);
  }

  v21 = v27;
  v26 = 0;
  v27 = 0;

  v28 = 0;
  v22 = v29;
  v29 = 0;

LABEL_17:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _LSApplicationIsInstalledQuery;
  [(_LSQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (_LSApplicationIsInstalledQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _LSApplicationIsInstalledQuery;
  v5 = [(_LSQuery *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

@end