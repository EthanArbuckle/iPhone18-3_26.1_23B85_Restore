@interface _LSCurrentBundleProxyQuery
+ (id)currentBundleProxyQuery;
- (BOOL)isEqual:(id)equal;
- (_LSCurrentBundleProxyQuery)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSCurrentBundleProxyQuery

+ (id)currentBundleProxyQuery
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___LSCurrentBundleProxyQuery_currentBundleProxyQuery__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[_LSCurrentBundleProxyQuery currentBundleProxyQuery]::once != -1)
  {
    dispatch_once(&+[_LSCurrentBundleProxyQuery currentBundleProxyQuery]::once, block);
  }

  v2 = +[_LSCurrentBundleProxyQuery currentBundleProxyQuery]::result;

  return v2;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
  if (!connectionCopy)
  {
    v8 = _LSGetMainBundleURL();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -120, 0, "[_LSCurrentBundleProxyQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleQuery.mm", 81);
    goto LABEL_6;
  }

  _xpcConnection = [connectionCopy _xpcConnection];
  v8 = _LSCopyBundleURLForXPCConnection(_xpcConnection, 1);

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 0;
  v9 = [LSBundleProxy bundleProxyForURL:v8 error:&v12];
  v10 = v12;
  v11 = v9;
LABEL_6:
  blockCopy[2](blockCopy, v11, v10);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _LSCurrentBundleProxyQuery;
  if ([(_LSQuery *)&v7 isEqual:equalCopy])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v5.receiver = self;
  v5.super_class = _LSCurrentBundleProxyQuery;
  return [(_LSQuery *)&v5 hash]^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = _LSCurrentBundleProxyQuery;
  [(_LSQuery *)&v3 encodeWithCoder:coder];
}

- (_LSCurrentBundleProxyQuery)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _LSCurrentBundleProxyQuery;
  return [(_LSQuery *)&v4 initWithCoder:coder];
}

@end