@interface _LSApplicationIsInstalledQuery
+ (id)queryWithBundleIdentifier:(id)a3;
- (_LSApplicationIsInstalledQuery)initWithCoder:(id)a3;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSApplicationIsInstalledQuery

+ (id)queryWithBundleIdentifier:(id)a3
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

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_LSApplicationIsInstalledQuery *)self bundleIdentifier];

  if (!v8)
  {
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSApplicationIsInstalledQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationIsInstalledQuery.mm", 60);
    v7[2](v7, 0, v14);

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
    v11 = [(_LSApplicationIsInstalledQuery *)self bundleIdentifier];
    v30 = kLSVersionNumberNull;
    v31 = unk_1817E90C0;
    if (_LSBundleFindWithInfo(v10, 0, v11, 0, &v30, 2, 0, &v25, &v24))
    {
      v12 = [(_LSApplicationIsInstalledQuery *)self bundleIdentifier];
      v30 = kLSVersionNumberNull;
      v31 = unk_1817E90C0;
      v13 = _LSBundleFindWithInfo(v10, 0, v12, 0, &v30, 2, 1024, &v25, &v24) == 0;

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

    (v7)[2](v7, v20, 0);
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

    v7[2](v7, 0, v17);
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _LSApplicationIsInstalledQuery;
  [(_LSQuery *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
}

- (_LSApplicationIsInstalledQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _LSApplicationIsInstalledQuery;
  v5 = [(_LSQuery *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

@end